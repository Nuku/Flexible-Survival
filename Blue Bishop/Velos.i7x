Version 1 of Velos by Blue Bishop begins here.
[Writing by Blue Bishop, coding and writing assistance by Stripes]
"Adds an opinionated serpent to the Flexible Survival game"

Section 1 - Event

Strange Serpent is a situation. The minscore of Strange Serpent is 200.
The sarea of Strange Serpent is "Mall".

Instead of resolving Strange Serpent:
	if HP of Velos is 0 or HP of Velos is 1:
		say "     As you explore the sewers, you're suddenly jolted to attention when you hear something nearby call for your attention.";
		say "     'Psst, over here!' It remarks, compelling you--once it becomes clear there's no immediate danger--to a nearby wall. Dimly lit against a service light, you can see the silhouette of what appears to be some manner of snake. Sickly pale in its complexion and looking to be in the six foot length range, its surface appears slick as it reflects the light, it's clear level of mental articulation betraying it's otherwise ordinary appearance.";
		if player is not male_vacant and (insectlarva is false or (insectlarva is true and larvaegg is 2)):
			say "     '...Ah, looking at you clearly now, it's probably be wise to ignore me for now. Come back in a couple of days day or so. You already look like you've got your hands full.' A little confused, he might be referring to your unconventional pregnancy, though how that has anything to do with anything right now is beyond you. Urging you away, you depart, back from whence you came.";
			now HP of Velos is 1;
		else:
			say "     'Right, great, you don't look nearly as mentally deranged as the general fare you see down and about this place--though I suppose I could be wrong...' A little ill at ease with this creature, you greet it before it continues. 'I'm really in need of help here; I'm wholly unequipped to depart from this rather unsettling environment, and I need someone to carry me off.'";
			say "     You're not rightfully sure if you can trust the serpent, but for the sake of argument you infer that you might be up to the task, simple as it seems.";
			say "     'Er, right, there's a catch--and before you roll your eyes and silently pat yourself on the back for your clever assumption, it's not as bad as you think... Depending on how you look at it.' Sighing, you decide to let him continue, for now.";
			say "     'Thank you. Sadly, I can't really expose myself to light for more than a number of minutes at a time--Hell, even this dim light here tests me. No, I require a means of... Er... Obfuscation, shall we say?' You're not rightly sure what he's suggesting so you, reasonably enough, ask him to elaborate.";
			if anallevel is 1:
				say "     'Hm... Right...' He seems to stop briefly for a moment. 'There's something about you that suggests I'd get into all sorts of trouble if I beat around the bush with this... Alright, no games, then. I need your ass, in just about the worst way imaginable.'";
				say "     His particular request is clearly incongruous with your general desires. Make him the exception (Y) or rightfully decline (N)?";
			else:
				say "     'Oh, but what would be the fun in that, I really must ask?' He's clearly intent on dancing around the topic, coaxing you to try and get a more appropriate answer. You ask if he means your pack, or under your clothing, 'Oh, something like that wouldn't nearly be as uncomfortable as what I require, but what I require more than that is your consent; I am nothing if not polite.'";
				say "     You're not going to get a straight answer out of this creature, you could agree to his request (Y) or decline it outright (N).";
			if player consents:
				now lastfuck of Velos is turns;
				say "     Deciding to agree in taking him with you, he seems a little taken off guard by this.";
				say "     '--Oh, huh, what a pleasant surprise! Well then, your job is quite simple; could you turn around for me? Yeah, like that, facing the other wall...' A bit unsure of what he exactly plans to do, but you slowly oblige. You're not sure what you're supposed to be waiting for before his plans are made blatantly obvious.";
				say "     Like a bolt of lightning, your struck with the blindingly intense sensation of the serpentine creature worming its way past any attire that might obstruct him, his strangely slicked head driving past your anal ring with surprisingly little resistance, the rest of him soon following";
				If scalevalue of player < 3:
					say ". Your bowels, on the other hand, are another matter altogether regarding these turn of events. There's quite a lot of him, especially when you consider your diminutive size, and your belly bloats almost immediately to abide his slippery frame.";
					if insectlarva is true:
						say "     Even as you fully engulf the serpent, his endeavors fail to relent, as it's made apparent that some manner of conflict is waged within you. Soon, you're wracked with the sensation of another mass passing through your anal ring, soon made apparent to be your previous parasite, who--after leaving your body--is relegated to rolling around in a confused daze before retreating from the sewers. It is a pale creature, looking much like a bloated, insect larva with several tiny legs and phallic back end[if larvaegg is 1]. Its expulsion if followed by that of the unfertilized insect eggs[end if]. You'd imagine that it's kin will find and retrieve the thing, no doubt to be inflicted upon another.";
						say "     Your new resident would only revel in this now-liberated dwelling briefly before you can see the outline of his head emerge from your hole, exposing him just enough to continue the dialogue.";
					else:
						say "     Driven to your knees by this wracking sensation, its raising intensity inevitably relents when he's forcibly trapped the whole of himself inside you. You can barely contain all of him, distended torso strained under such a considerable holding. In due time, you can compel yourself to your feet, your infection twisting these circumstances in such a way that you can move reasonably in spite these circumstances.";
						say "     Bulge twitching as you must content with his irreverent movements, you're forced to illicit a weakened moan as you feel his head retreat from the hole it once invaded, pulling just enough of itself out that you might see himself before you.";
					say "     'Quite the tight fit, if I do say so myself! But I like to think that cozy is often an attribute falsely regarded as poor.' He seems rather pleased with himself, try pulling him out?";
				else if scalevalue of player > 3:
					say ". Struck with twisted pleasure as his form floods your bowels, and though you're more than large enough to handle him that doesn't quite change the fact that he's got a fair amount of himself to put into you, forcing you onto your knees and, inevitably, to roll over onto your back.";
					if insectlarva is true:
						say "     Even as you fully engulf the serpent, his endeavors fail to relent, as it's made apparent that some manner of conflict is waged within you. Soon, you're wracked with the sensation of another mass passing through your anal ring, soon made apparent to be your previous parasite, who--after leaving your body--is relegated to rolling around in a confused daze before retreating from the sewers. It is a pale creature, looking much like a bloated, insect larva with several tiny legs and phallic back end[if larvaegg is 1]. Its expulsion if followed by that of the unfertilized insect eggs[end if]. You'd imagine that it's kin will find and retrieve the thing, no doubt to be inflicted upon another.";
						say "     Your new resident would only revel in this now-liberated dwelling briefly before you can see the outline of his head emerge from your hole, exposing him just enough to continue the dialogue.";
					else:
						say "     Weakly prodding your slightly bloated belly, now having fully engulfed the serpent, you're met with the strong pangs of his irreverent movement. He would only hide in his dwelling briefly before you can see the outline of his head emerge from your hole, exposing him just enough to continue the dialogue.";
					say "     'Oh, quite the roomy fare, I'm surprised if I even phase you in the slightest! I certainly hope I don't get lost in here...' He seems rather pleased with himself, try pulling him out?";
				else:
					say ". Taken aback by these sudden turn of events, you can find that you can tolerate him flooding your bowels only momentarily. There's quite a lot of him, and you're forced to watch as your belly bloats further and further to abide his slippery frame.";
					if insectlarva is true:
						say "     Even as you fully engulf the serpent, his endeavors fail to relent, as it's made apparent that some manner of conflict is waged within you. Soon, you're wracked with the sensation of another mass passing through your anal ring, soon made apparent to be your previous parasite, who--after leaving your body--is relegated to rolling around in a confused daze before retreating from the sewers. It is a pale creature, looking much like a bloated, insect larva with several tiny legs and phallic back end[if larvaegg is 1]. Its expulsion if followed by that of the unfertilized insect eggs[end if]. You'd imagine that it's kin will find and retrieve the thing, no doubt to be inflicted upon another.";
						say "     Your new resident would only revel in this now-liberated dwelling briefly before you can see the outline of his head emerge from your hole, exposing him just enough to continue the dialogue.";
					else:
						say "     Driven to your knees by this wracking sensation, its raising intensity inevitably relents when he's forcibly trapped the whole of himself inside you. Even finished as he is now it's a struggle for clarity, weighty and distended torso strained to abide its occupancy. In due time, you can compel yourself to your feet, your infection twisting these circumstances in such a way that you can move reasonably in spite of these circumstances.";
						say "     Bulge twitching with his irreverent movements, you're forced to illicit a weakened moan as you feel his head retreat from the hole it once invaded, pulling just enough of itself out that you might see himself one more before you.";
					say "     'Doubtlessly you play victim to this praise all the time, but it'd be rude of me to not highlight the quality of this dwelling! What's your secret?' He seems rather pleased with himself, try pulling him out?";
				if insectlarva is true:			[freed from parasite]
					now insectlarva is false;
					now larvacounter is 0;
					now larvaegg is 0;
					increase humanity of player by 10;
					if humanity of player > 100, now humanity of player is 100;
					now libido of player is libido of player / 2;
					now preghijack is false;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Black Wasp":
							now area entry is "nowhere";
							now non-infectious entry is true; [Wasps locked again]
							break;
				if player consents:
					say "     Quickly, you grab a hold of him, much to his surprise, and start trying to pull him free of you. Sadly, his form is too slick for you to get a good grip, and even when it seems you might even have some grip he doesn't budge, instead eliciting jolts of twisted pleasure across your form, until you inevitably relent.";
					say "     'Ach, don't do that! I don't like this arrangement any more than you do, so let's please refrain from such ill-treatment. Maybe we should start on better footing, my name is Velos. Think of this as a great opportunity to make a new friend! ...Else I fear this arrangement might end up less comfortable than it could be.'";
					increase libido of player by 15;
					if libido of player > 100, now libido of player is 100;
				else:
					say "     'My apologies for the deception, it was quite necessary, I'm afraid.' You can determine a subtle frown from him under this faint light. 'My name is Velos, and I do hope you don't take this too personally, I'm as much a prisoner here as you are.' There's a slight sour tinge to that last statement, though at this point you're not sure if that's just another ruse on his part.";
					increase libido of player by 10;
					if libido of player > 100, now libido of player is 100;
				say "     'I doubt I will prove as much a burden as you would worry yourself over, but whilst you're running around it only seems fair to show me some of the sights. If you run into others, perhaps you should let me [link]muse[as]muselist[end link] over them? But otherwise, I'll mind my own business in here. And with that...' He retreats once more into your bowels, leaving you to your own devices and the occasional irreverent twitching of your occupant. You slowly gather your thoughts as you return from whence you came.";
				now level of Velos is 1;
				now HP of Velos is 3;
				now mpreghijack is true;
			else:
				say "     You decide not to help the bizarre creature, stepping away. Thankfully, annoyed as he may appear, it doesn't seem to challenge you for the gesture.";
				say "     'Right, very well, I'm sure you have more pressing matters to attend to; places to go, eldritch monstrosities to be buggered by, all that sort.' You turn to depart, leaving the serpent in your wake.";
				now HP of Velos is 2;
			now Strange Serpent is resolved;


Section 2 - Velos the AssSSSSssserpent

Velos is a person.
The description of Velos is "[velosdesc]".
The conversation of Velos is { "Snipe." }.
velospostmusings is a list of numbers that varies. velospostmusings is usually {}.
vpostmusenum is a number that varies.
velosfleepenalty is a truth state that varies. velosfleepenalty is usually false.
velossavedtalk is a truth state that varies. velossavedtalk is usually false.
velosparasitetalk is a truth state that varies. velosparasitetalk is usually false.
velosapology is a truth state that varies. velosapology is usually false.
velosheadstalk is a truth state that varies. velosheadstalk is usually false.


the scent of Velos is "[one of]Velos, thankfully, has little odor about him.[or]The strange serpent doesn't have much of a scent, surprisingly.[or]Velos, thankfully, has little odor about him.[or]The strange serpent doesn't have much of a scent, surprisingly.[or]He smells slightly of discomfort, incited by you always sniffing at him.[stopping]".

instead of linkactioning Velos:
	say "Possible Actions: [link]talk[as]talk Velos[end link], [link]smell[as]smell Velos[end link], [link]fuck[as]fuck Velos[end link], [link]muse[as]muselist[end link][line break]";


to say velosdesc:
	say "     Inspecting the serpent, he would appear to look much like your standard fare snake. His facial features are subtly more humanized, making his appearance slightly less alienating, possibly even a necessity in order for him to more easily communicate. As well, he has a striking set of green eyes, decidedly not slitted as his kin would have.";
	say "     A pure, pearl white in color, his form seems scaled, though you're not sure if the scales are false, as you've never seen him shed them, to say nothing of the difficulty in determining its proper texture, given his perpetually slick frame. Thankfully, the odorless lubricant is not overly abundant, and only becomes a slight mess around where it accumulates--particularly, your anal ring.";
	say "     He generally doesn't like being touched all that much, but your occasional prodding does seem to offer a reciprocal sensation onto you, inferring that your senses are tied--at least at the base level. This would also infer that any harm done to him would be received in kind, and it's unclear if it works both ways; that he feels what you feel.";
	if level of velos is 1:
		say "[italic type]Demeanor-wise, he doesn't seem to regard you all that well, and is otherwise a little belligerent towards you.[roman type]";
	if level of velos is 2:
		say "[italic type]Demeanor-wise, he seems to regard you fairly well, and is a bit less perturbed by having himself be summoned before you.[roman type]";
	if level of velos is 3:
		say "[italic type]Demeanor-wise, he seems to put you in high regard, more than happy to be on the receiving end of your attention.[roman type]";


Instead of conversing the Velos:
	if facename of player is "Cerberus" or skrp > 0 and velosheadstalk is false:		[multiple heads]
		add -3 to velospostmusings, if absent;
	else if velospostmusings is not empty:		[remove if unused and doesn't apply]
		if -3 is listed in velospostmusings, remove -3 from velospostmusings;
	if insectlarva is true and velosparasitetalk is false:					[parasite]
		add -1 to velospostmusings, if absent;
	if level of velos > 1 and velosapology is false:						[apology]
		add -2 to velospostmusings, if absent;
	if velossavedyes is true and velossavedtalk is false:						[guardian angel]
		add -4 to velospostmusings, if absent;
	if velospostmusings is not empty:
		sort velospostmusings in random order;
		now vpostmusenum is entry 1 of velospostmusings;
		postmuse vpostmusenum;
	else if a random chance of 2 in 5 succeeds:
		say "     '[one of][if location of player is Volcanic Cave]Ughh... it's terribly hot in here!'[else if location of player is Volcanic Crater]Now the temperature almost bearable, but these wretched fumes are getting to me!'[else if location of player is SlutRat Den]With you to support me, this place is almost comfortable. But now we're back into the sewers again. How is that progress?'[else]It's right freezing out here!'[end if][or]I'm feeling queasy already...'[or]What's that over there? Bring me a little closer... Yeah, nevermind, it was nothing. My apologies.'[or]You're probably curious as to how I can anchor myself within you and yet still hang out like this... a magician never shares his secrets!'[or]I sometimes long to eat on my own again...'[or]Oh, I think I see a quarter on the ground! Though I wager it'll be of little use.'[or]Wait... Did you hear something? Hm... Probably nothing.'[or]Why is it that I sometimes feel like I'm the only sane person here?'[at random]";
	else if level of Velos is 1:
		say "     '[one of]Hope you're fond of playing tour guide, because I would very much prefer you take me around the place, perhaps letting me muse over other people--assuming they don't flee in terror, of course.'[or]Don't give me that look. What do you want?'[or]I assure you, if you're just going to stare at me, I'm just going to go right back in.'[or]What?'[or]No, I won't go away, stop asking.'[or]If you gaze long into an abyss, the abyss will gaze back into you.'[or]You have the worst eating habits. Do you know that?'[or]Try not to get raped too much; it's very disconcerting for me when it happens!'[or]Can I go back in now?'[or]I'm sorry, I don't like this arrangement as much as you do.'[or]You're stuck with me, so you'll just have to learn to deal with me.'[at random]";
	else if level of Velos is 2:
		say "     '[one of]Things look like they're rubbish all over. What are your plans?'[or]I'm fairly certain things couldn't get any worse around here.'[or]What do you wager is taking the military?'[or]I really do wish I didn't need someone to carry me around, but I suppose my predicament could be worse...'[or]You're not a bad kid... Unless you're doing something you shouldn't be when I'm not looking?'[or]Try to stay out of trouble, please?'[or]You have any idea how infuriating it is for me to watch all this happening and not be able to do anything about it?'[or]Such desolation...'[at random]";
	else if level of Velos is 3:
		say "     '[one of]I hate to admit it, but I don't think I was going to linger on for much longer until you came along.'[or]I'm glad it was you who found me.'[or]Take care of yourself out there, and I'm not saying that because I must share your pain.'[or]I don't care what you look like, I appreciate you for what's inside. ... Heh, sorry, that was quite the bad joke.'[or]I'd try to make less of a mess of things if I could, really.'[or]I'll probably be able to find someone else to have me carry around when this is through. I-If that's what you want, I mean.'[or]I feel a bit ill at ease when outside like this; I feel a lot safer when I'm inside...'[or]Try to stay out of the sewers, terrible things scheme at its deepest depths.'[or]I wish I could protect you as well as you for me.'[at random]";


instead of fucking the Velos:
	say "[one of]I don't think you two have that kind of relationship at this point.[or]Isn't that what he's doing to you already?[or]I don't think you two have that kind of relationship at this point.[or]Isn't that what he's doing to you already?[or]You try to bring this topic up to him, but he doesn't seem even remotely interested, in spite his peculiar circumstances.[stopping]";


Section 3 - Dragging him Around + Effects

Every turn while HP of Velos > 2:
	if Velos is not in the location of the player:		[traveling w/player]
		Now Velos is in the location of the player;
		say "[one of][link]Velos[as]look Velos[end link] shifts around inside you slightly.[or]You arrive here with [link]Velos[as]look Velos[end link].[or][link]Velos[as]look Velos[end link], roused by you moving about, shifts his position.[or]Your travels illicit some shifting from [link]Velos[as]look Velos[end link].[or][link]Velos[as]look Velos[end link] twitches in response to your travels.[or]You're forced to contend with [link]Velos[as]look Velos[end link][']s subtle protests in lieu of your movement.[cycling]";


an everyturn rule:
	veloslevelcheck;
	if HP of Velos > 2 and HP of Velos < 8:			[daily favor growth]
		if lastfuck of velos - turns >= 8:
			now lastfuck of Velos is turns;
			increase HP of Velos by 1;
			increase XP of Velos by 1;
			veloslevelcheck;
			if HP of Velos is 8, now lastfuck of Velos is turns + 40;
		if a random chance of 3 in 10 succeeds:
			increase libido of player by 8;
			if libido of player > 100, now libido of player is 99;
			if velospostmusings is not empty and a random chance of 2 in 3 succeeds:
				say "[one of]Struck with the pangs of rather ponderous prodding by [link]Velos[as]talk Velos[end link], you get the impression that he may want to talk to you, likely preferring not to just pop out when you might be in the middle of something.[or]You find yourself infrequently pestered by your occupant in a rather deliberate manner, giving you the impression that [link]Velos[as]talk Velos[end link] might want to talk to you.[or]You're forced to contend with [link]Velos[as]talk Velos[end link][']s attempts to draw your attention, maybe he has something to talk to you about?[at random]";
			if HP of Velos < 9 and a random chance of HP of velos in 10 succeeds:
				increase score by 0; [skipping message]
			else:
				if a random chance of 1 in 3 succeeds:
					say "     [one of]Quizzically, you prod your stomach, eliciting an occasional twitch from your passenger, who's probably resting right now[or]Your stomach twitches slightly with the shifting of your residence, such activity relenting as quickly as it started[or]You're forced to contend with slight discomfort as your resident twists and writhes within your confines--perhaps out of boredom--forcing you to prod him in discontent until he relents[cycling].";
				else if scalevalue of player is 3:				[avg sized player]
					say "     [one of]You're briefly distracted by your excessively pregnant-looking belly, your occupant's irreverent movements sending bolts of twisted pleasure across your diminutive frame[or]Suddenly, you're jolted with a pangs of perverse bliss. Apparently, the serpent had to push some of itself out of you for a moment to shift positions within your tiny frame[or]You're forced to sit down for a moment, resting from the ponderous weight of your inhabitant[cycling].";
				else if scalevalue of player < 3:		[small player]
					say "     [one of]You're briefly distracted by your somewhat pregnant-looking belly, your occupant's irreverent movements sending bolts of twisted pleasure across your form[or]You're forced to tense a bit as your distended torso twitches with a sudden jolt of movement by your residence[or]Though you can handle your inhabitant's weight far better than any normal person rightly should, you're occasionally forced to catch your breath before moving on[cycling].";
				else:							[large player]
					say "     [one of]You tense slightly as your occupant makes a rather sudden jolt within your confines, though it's not enough to be a substantial distraction[or]Your briefly forced to grit your teeth in a wave of tense, twisted pleasure, the serpent readjusting himself a fair bit. A little embarrassed afterwards, you hope nobody saw that, as his occupancy isn't made outwardly apparent[or]You're lightly assaulted with some rather erratic movement by your resident. Aimless as it is, you get the impression he's lost track of his orientation[cycling].";
	if level of velos > 2:
		now velossaved is false; [reset velos's fight saving feature]

Section 4 - Musing w/Velos

Chapter 0 - Mechanics of Musing

to veloslevelcheck:
	if XP of Velos < 8:
		now level of Velos is 1;
	else if XP of Velos < 17:
		now level of Velos is 2;
	else:
		now level of Velos is 3;

a person has a text called vmusings. vmusings is usually "".
a person has a truth state called vmusedone. vmusedone is usually false.
a person can be mused.

definition: A person (called x) is mused:
	if vmusedone of x is true, yes;
	no;

Understand the command "muselist" as something new.
Understand the command "muse" as something new.

Muselisting is an action applying to nothing.

understand "muselist" as muselisting.
understand "muse" as muselisting.

check muselisting:
	if Velos is not visible, say "Do what now?" instead;

carry out muselisting:
	let L be a list of people;
	repeat with Q running through visible people:
		if q is not mused and vmusings of q is not "":
			add q to L;
	say "The following individuals can be mused upon here: [line break]";
	if the number of entries in L is 0:
		say "There is no one Velos is interested in talking with here.";
	else:
		sort L;
		repeat with q running through L:
			say "[link][Q][as]muse [Q][end link]   ";
		LineBreak;

Musing is an action applying to one thing.

understand "muse [any person]" as musing.
understand "muse with [any person]" as musing.
understand "muse upon [any person]" as musing.
understand "muse about [any person]" as musing.
understand "muse to [any person]" as musing.
understand "muse on [any person]" as musing.

check musing someone (called x):
	if Velos is not visible, say "Do what now?" instead;
	if x is not visible, say "I don't see them here." instead;
	if x is not a person, say "I don't think that'd be very talkative." instead;
	if x is mused, say "Velos has spoken to this individual and he seems to have nothing else to talk to them about." instead;
	if vmusings of x is "", say "It would appear that [if level of Velos is 1]the freeloading serpent[else if level of Velos is 2]the serpent[else]your friend[end if] has nothing to say to this individual." instead;

carry out musing someone (called x):
	say "[vmusings of x]";
	now vmusedone of x is true;
	increase XP of Velos by 1;


Chapter 1 - Musings

Part 1 - Sgt Alexander

the vmusings of Sergeant Alexander is "[sgtalexmusing]";

to say sgtalexmusing:
	say "     You're just about certain that this will be the dumbest thing you've ever done, but Alexander might be more 'open-minded' of the military fare around here. Looking around, you check to see if no one else is watching before you conjure Velos from his confines. The sergeant, well, um...";
	say "     'Oh god, what the hell is that!?' Immediately reeling back in terror at the sight of what has just come to pass. He's struck rigid, eyes darting around, possibly looking for a weapon to defend himself. You try to calm him down, but he is decidedly uncooperative, made worse by the fact that your resident is absolutely frightened by these circumstances as well.";
	say "     'No, this is bad thing!' Even Tiny Tim, the minotaur Alex tends to, is relegated to hiding behind his hitching post at the sight of the serpent. Thankfully before the man can find a gun, you calm them down, the snake hesitantly starting up his conversation.";
	say "     'W-what is going on here, if you don't mind me asking?'";
	say "     'Well, I take care of Tiny--Patient Zero here--since he carries the cure to this plague.' The hardened soldier can't help but remain a little shaken by the fact that he's even talking to a creature like this.";
	say "     'Oh--wait, the what?'";
	say "     'The cure. Well, he hope to make a cure out of it. But it has to be transported at body temperature so, uh...' He gestures to a nearby set of anal plugs, then to a set of soldiers in the distance, 'carrying' said 'cure'.";
	say "     '...What? Who told you this?'";
	say "     'One of our top scientist in the area. I believe Padgett said it was Dr. Garcia... Er... Dr. Diego Garcia--that was it. Weren't you brief--forget I said that.' The serpent requires a moment to really calculate what has transpired here and, well, um...";
	if vmusedone of diego is true:
		say "     'W--... Y--... Ah--... Oooh--... DIEGOOOOOOOOOO!' Such a yell is enough to send a jolt down everyone's spine.";
		say "     'What? Who? Calm down, er... Sir?'";
		say "     'I can't--... How coul--... No words! You know how hard it is for me to have no--... Why--...?' The serpent, apoplectic with rage, almost ties himself into knots before managing to spit out the question.";
		say "     'Are... Are you alright?' the soldier asks cautiously.";
		say "     'YOU'VE BEEN DUPED! THE INFECTION'S MELTED YOUR BRAIN, YOU FOOL!' You try really hard to calm Velos down, seeing as how his screaming is bound to attract unwanted attention. 'That dog doesn't want us to leave, I'll be trapped in this hellhole forever--This must be their most elaborate hallucination yet, if they're trying to break me this time it might just be working!'";
		say "     'Oh god, I've seen faces like that before. He's losing it. Maybe I should get a gun?'";
		say "     'Yessss, get a gun. I'm going to need it when I see that mangy mutt again.' Velos is about to go completely off the deep end by this point, white snake blatantly red with impotent rage, and you eventually have no choice but to force the serpent back inside you before other soldiers--doubtlessly drawn over by the sudden yelling--come to see what is up. You wave them off, trying to be innocuous before you return to Alexander again.";
	else:
		say "     'W--... Y--... Ah--... Oooh--... AAAAAAAAAUGH!' Such a yell is enough to send a jolt down everyone's spine.";
		say "     'What the? Calm down, er... Sir?'";
		say "     'I can't--... How coul--... No words! You know how hard it is for me to have no--... Why--...?'";
		say "     'Are... Are you alright?'";
		say "     'YOU'VE BEEN DUPED! THE INFECTION'S MELTED YOUR BRAIN, YOU FOOL!' You try really hard to calm Velos down, seeing as how his screaming is bound to attract unwanted attention. 'They don't want us to leave, I'll be trapped in this hellhole forever--This must be their most elaborate hallucination yet, if they're trying to break me this time it might just be working!'";
		say "     'Oh god, I've seen faces like that before. He's losing it. Maybe I should get a gun?'";
		say "     'I'd dare you to find one, but clearly you're all so thick that you'd probably shoot yourself by accident.' Velos is about to go completely off the deep end by this point, white snake blatantly red with impotent rage, and you eventually have no choice but to force the serpent back inside you before other soldiers--doubtlessly drawn over by the sudden yelling--come to see what is up. You wave them off, trying to be innocuous before you return to Alexander again.";
	say "     'I think I might be going crazy... I'm going to pretend I didn't see what I just saw. But if what I saw did just happen, I urge you not to show it to anyone else.' Nodding silently, Tiny Tim just gazes at you, still horror-struck, as you depart.";
	add 1 to velospostmusings;

Part 2 - Candy

the vmusings of Candy is "[candymusing]";

to say candymusing:
	say "     'I'm not sure why you're so tense like that, hon. Maybe you should--Oh geez!' Candy bounces backwards at the sight of Velos emerging from your behind.";
	say "     '...Surprise!' The serpent seems to revel in the raccoon's shock, who is relegated into cowering in his presence. He does eventually calm down, and rather sheepishly moves closer when it becomes clear that he's not about to get attacked.";
	say "     'That would explain the bulge. I just assumed you were pregnant, or something.'";
	say "     'Who's to say I'm not your child? Hello, father!' Candy regards this joke with a slight scowl.";
	say "     'That's not funny! So, like, why is he hiding in there?' he asks, waggling his finger at you.";
	say "     'I can't really stay outside for very long; thusly, I need someone to carry me around,' Velos says, jumping in.";
	say "     'So... does that mean you can hide in anyone?' Candy asks politely, though you notice his tail lower for the first time in forever.";
	say "     'Hm... Oh!' Velos grins rather deviously and stretches out a little further. 'Are you afraid I might sneak up on you when you're not looking?'";
	say "     'It's not like that! ...Okay, maybe a little.'";
	say "     'Don't worry about it then,' the serpent states, slipping back towards you and curving into an S-shape. 'I generally don't like company and one look at you suggests I'd get that in spades.'";
	say "     'Oh, you!' Candy giggles, seeming rather amused by this jab, picking up on Velos's sardonic inflection, by now a fair bit more at ease with his presence.";
	say "     'You're a nice kid. Try to stay out of trouble.'";
	say "     'I'd say the same to you, hon, but I doubt you could, with that mouth of yours.' This is enough to elicit a slight chuckle from Velos, and he decides to conclude the conversation at that, letting you return to your own matters.";


Part 3 - Dr Moffatt

the vmusings of Doctor Moffatt is "[drmoffattmusing]";

to say drmoffattmusing:
	say "     Drawing Velos out from his place of hiding, Moffatt is a bit taken aback by this particular sight from behind her desk before she regards this turn of events with slight amusement.";
	say "     'I suppose I shouldn't be surprised, the way things are. I assume you're looking for a way to remove him?' A query by the voluptuous skunk easily eliciting a scoff from the serpent, who was--up to this point--relegated to curiously looking over this particular environment.";
	say "     'To what end, that I might be in you instead?' It is here that he gives her his proper attention.";
	say "     'What makes you assume I want you?'";
	say "     'Fair enough...' Velos gravitates towards the desk, his slick frame twisting around one of her skunk statues. 'Given your decor, I wager you would prefer I dip myself in a bucket of black paint first, yes? No, that'd be silly, I suppose I'd not be the same thing. Shall I dip myself into a vat of rotten eggs then? I assume that might rightly approximate the odor for you.'";
	say "     Scowling, and with some disdain, she carefully pulls the statue from him, finding some cloth to clean it before she places it on the other side of the desk, offering up her retort.";
	say "     'That's quite a taunt from someone relegating themselves to the inside of another person's ass.'";
	say "     'Who wouldn't hide in someone's ass around here, the way this room smells?'";
	say "     'I resent that claim; I keep myself very clean.'";
	say "     'Perhaps somewhat in body, though I very much doubt in mind. Tell me--for I am quite curious--how many of your patients have you slept with so far?' he asks, gesturing towards the crayon graffiti. 'I'm fairly certain they don't teach that in medical school.'";
	say "     'Watch yourself, mister!' By this point she's doubled over the desk, with a glare that could melt most people on the spot, which is really starting to make you regret this decision.";
	say "     'Heavens, for a psychologist you're quite easy to manipulate into anger. I'm beginning to think your credibility might be compromised.' His final remark causes her to retreat back to her seat with an overly exasperated sigh, no doubt giving up on this whole argument altogether. Pleased with himself, and a little embarrassed yourself, you start pushing the snake back from whence it came, to which he complies.";
	add 3 to velospostmusings;


Part 4 - Dr Mouse

the vmusings of Doctor Mouse is "[drmousemusing]";

to say drmousemusing:
	say "     You call out Velos[if level of Velos < 3]--at least part of you hoping the doctor might be able to help you deal with him--[else] [end if]and with a moment of slight fidgeting, you present him to Doctor Mouse. Keeping his distance, he seems to ponder the creature for a moment.";
	say "     'Hmm, what a peculiar specimen. A symbiote, then?'";
	say "     'I guess you could say that...' The serpent doesn't rightly know how to regard the doctor's demeanor at this moment, perhaps made worse by the fact that he's completely unphased by this revelation.";
	say "     'So then I'd conjecture that you're mentally linked, perhaps improving your host's intellectual fidelity?'";
	say "     'Er, no... To be quite frank I'd rather not guess what's going on in my friend's mind right about now...'";
	say "     'Organ redundancy, then? For better stamina?'";
	say "     'It'd be remiss of me to not point out that I can barely maintain my own form, let alone two.' This forces the doctor to stop for a moment and think, returning to this discussion with a frown.";
	say "     '...You're a parasite, then?'";
	say "     'Hey! I offer exceptional moral support, I would have you know.'";
	say "     'That's not much of a practical application for such an unusual symbiosis.'";
	say "     'You -really- have a one-track mind, don't you?' The scientist doesn't regard that statement, and is already mumbling to himself, scribbling notes on a mess of papers. 'Hmpf, even a pragmatic approach can become unreasonable, at a point...' When the mouse doesn't regard this remark either, instead reaching for a syringe, Velos concedes to retreating from the discussion altogether, leaving you to your own business here.";
	add 4 to velospostmusings;


Part 5 - Brian

the vmusings of Brian is "[brianmusing]";

to say brianmusing:
	say "     Approaching Brian, ever determined to break down that wall, you decide to conjure up Velos to illicit a discussion. Your timing is a bit off, though, as when the rhino becomes aware of what is transpiring he's already mid-charge and hits the wall at a bad angle, sending him tumbling backwards in a daze. This, undoubtedly, amuses the serpent.";
	say "     'Hey, big guy. What'd that wall ever do to you?'";
	say "     'W-What...?' Still a little dizzy, he gets back to his feet, cautiously stepping close. 'What are you doing in... there?'";
	say "     'Uh, it's a long story; matters are all weird here. Keep up.'";
	say "     'Okay.' Brian seems to recover relatively quickly in spite the botch. 'And I'm breaking the wall to escape.'";
	say "     'Why?'";
	say "     'What?'";
	say "     'Why? Why do you want to escape?' Velos suddenly seems rather insistent on this line of enquiry.";
	say "     'Uh, who wants to stay around here?'";
	say "     'But what would you even do out there? Are you just going to assume that people will take a rhino-man walking around in stride? I can imagine you'd get quite the irreverent glances at the nearest coffee shop.'";
	say "     'But, I don't drink coffee.' By this point Brian looks right confused.";
	say "     'And what makes you think the guards haven't noticed the growing crack from the other side of the wall, and the constant thumping of your thick head?'";
	say "     'I wish my head was a bit thicker...' Velos could probably revel in that statement, but he's just too fixated on illuminating the ludicracy of his endeavors.";
	say "     'What I'm trying to say is that you have no plan and no goals, you're just hitting a wall and hoping that resolves all your problems for you.' This finally does sink into the rhino, who stops and is stricken with a rare instance of contemplation. His increasingly troubled expression seems to infer that he's on the cusp of an existential breakdown before he yells out in blind rage, charging the wall once more, so hard that he bounces back a few feet and falls right over. Possibly blacking out for a few seconds, he eventually does crawl back up on his feet, before looking at Velos with abject confusion.";
	say "     'What... What are you doing in... there?' It would seem Brian completely lost his memory of the last minute, doubtlessly annoying the serpent to no end.";
	say "     'Ugh, you know what? Never mind me, that wall isn't going to topple itself.' The rhino slowly nods in agreement before he returns to charging the wall, Velos mumbling to himself, 'Sometimes I wonder why I even bother...' before retreating once more inside you.";


Part 6 - Alex

the vmusings of Alex is "[alexmusing]";

to say alexmusing:
	say "     Alex is his usual distracted fare when you bring up Velos. He glances at the serpent once it emerges from hiding for a second before looking at what he was handling prior. It takes him a moment for what he saw to register, but when it does he nearly falls on his behind, manic twitches abound as he starts eyeing for an escape, perhaps afraid he might get attacked.";
	say "     'Hi, hello! What delightful attire, bit seemingly subversive against that form, though.' Clearly the serpent is trying to put the [if alexbrunch < 4]partial [end if]ferret at some ease, to limited effect.";
	say "     'W-What do you want?'";
	say "     'My needs are irrelevant right now, and I think you'd make for a much more interesting line of discussion.' Alex still seems a little sheepish at these turn of events, but regains a measure of his composure.";
	say "     'I'm looking for something to say but all I can find is more questions. What are you doing like that?'";
	say "     'That's not an unreasonable query. I need a place to stay... It's fairly complicated.'";
	say "     'And you're okay with that?' He directs that query at you, specifically, though Velos steps in to interrupt.";
	say "     'We have an agreement, you could say.'";
	say "     '...You're holding him at ransom?'";
	say "     'Now, what makes you think that? Frankly, I'm offended you'd assume such things!' He exacerbates his claim to offense through expression.";
	say "     'I've done plenty of dealings in my time, I can tell.'";
	say "     'It's not like that; he consented to have me.'";
	say "     'For how long?'";
	say "     'Ah... For as long as it's necessary.'";
	say "     'Which is...? I'm getting the impression that this contract was made deliberately vague for your sake. And what happens if someone tries to remove you?' Velos seems a little ill at ease regarding this discussion now.";
	say "     'I can't be removed.'";
	say "     'Ah, so you're getting a free ride and there's nothing my client can do about it. And without any form of compensation either.'";
	say "     'Oh? So my friend's your client now?'";
	say "     'Someone has to look out for their best interests.'";
	say "     'And I'm not? It'd be pretty distressing for me if something bad happened to the person I'm dependent on.'";
	say "     'Very well. How's that working out for you so far?'";
	say "     'I'll have you know that I offer the best advice! ...That nobody happens to listens to.'";
	say "     'Isn't that always the way?' Alex responds with a chuckle, who now seems a bit more comfortable with this situation.";
	say "     'Anyways, as pleasant as your home and company is, I can't stay. Farewell.' The snake retreats back into your hole, leaving the ferret to straighten himself out and nod you off in departure.";


Part 7 - Frank

the vmusings of Frank is "[frankmusing]";

to say frankmusing:
	say "     Calling Velos out from his confines, Frank is immediately pinned to a nearby wall, struck by his own shock.";
	say "     'Oh no, this is like that one manga I read, please don't rape me!' Velos, perhaps feeling a bit playful right now, decides to play along with the skunk's present fear. He extends himself out a little further, leaning in towards the plump skunk.";
	say "     'Ooooooh...! Bring me a virgin, I huuuunger...!' Frank, decidedly, does not perceive the disingenuous manner in which the serpent expresses his farcical request.";
	say "     'B-but, around here? That's impossible!'";
	say "     '--Oh? In that case, never mind.' Dropping his previous persona, Velos winds himself back and looks around the cramped room. The poor skunk is rendered briefly confused before he starts to get the hint that Velos means no harm, slowly easing up. 'So, comic shop, eh? Looks fairly well-kept, in spite of how things are now.'";
	say "     'Uh... Yeah.' Frank seems to be a bit calmer now, but relegates himself to keeping his distance.";
	say "     'Not much of a comic guy, myself--though I think it's only fair to admit my claim is slightly tinged with embarrassment in the presence of someone who would seem to be. I suppose my lack of familiarity is rather conventional; all this continuity baffles me and I wouldn't know where to start.'";
	say "     'W-well, most people just say to start wherever you feel like. Though I'd suggest you pick a hero you liked when you were a kid so you know who you're reading about.'";
	say "     'Fair enough... Slightly less conventional problem: I have no hands for which to pick up a comic.'";
	say "     'Yeah, I can see that. Why not have our friend here hold them for you?'";
	say "     'I can't stay out for very long, and I'd also likely make a bit of a mess over the paper. I guess you don't really regard what you haven't done until you can't do them anymore.'";
	say "     'I suppose you could say that.' Leaning against the shop counter, he shrugs, perhaps still a bit at odds with the circumstances at play.";
	say "     'But I digress. What about you? Is there anything you didn't do before all this started that you wish you did?'";
	say "     'Well, I kinda wish I did my laundry.' The skunk offers up a slightly nervous chuckle, but continues, 'I... really don't know. I didn't have all that many plans, y'know? Life was pretty sweet. Comics and my own business. All I thought I needed. I guess I didn't give too much thought to the real world, more interesting things were happening on paper for me.'";
	say "     'And now that things are as strange as they are?'";
	say "     'Well, things were simpler before; I didn't have to worry about being attacked by some random monster-of-week every time I walked down the street.' He takes this moment to reflect on the matter in greater depth, before continuing. 'Frankly, though... I kinda like the way things are now.'";
	say "     '...Care you elaborate?' Velos seems a bit confused by the skunk's admission.";
	say "     '--Well, I mean, okay, it's a tragedy for most, but there's nothing I can do about that. Isn't it better to just make the most of way things are now?'";
	say "     'So, you don't regret the way things have turned out for you?'";
	say "     'Regret's always easy. The harder thing is to move forward with what you've got... Though, that's easier for me to say at someone like you.'";
	say "     '--No, no, that's... A very reasonable observation, and I'm no exception. I just needed to be sure you weren't mistaking complacency for optimism.'";
	say "     'I hope things will clear up just as soon as everyone else. For now though, I'll be fine. I've got plenty of ramen.'";
	say "     'Fair enough, try to stay out of trouble. I should leave you to your own matters.'";
	say "     'Yeah...' Velos retreating from whence he came, Frank still seems a little shaken by what just happened, though you'll imagine he'll be fine. 'That's one strange familiar you've got,' he mumbles.";


Part 8 - Valerie

the vmusings of Valerie is "[valeriemusing]";

to say valeriemusing:
	say "     You illicit Velos's attention, drawing him out before Valerie. The sphinx is briefly taken aback by this but calms down when you make it clear that there's no danger.";
	say "     'That would explain all that... Twitching, and I guess I shouldn't be surprised, the way things are.'";
	say "     'That's the right attitude--Oh, I know what you are! Hit me with a riddle!'";
	say "     'Very well... Dark attire blemished by shed fur. My acts are unseen save for ruined furniture. And though my martial prowess is impeccable, I am defeated with but a red dot. What am I?'";
	say "     'Hmm...' The serpent takes but a brief moment to consider his choice, 'I would wager it's some manner of ninja feline.'";
	say "     'Correct!'";
	say "     'Bah, that was an easy one!'";
	say "     'The first one's always easy, that's how I draw you in. Someone really should do something about those cats, though.'";
	say "     'Do you worry about this museum?'";
	say "     'A bit, yes.'";
	say "     'Then I'm correct to guess you worked here before things went awry?'";
	say "     'Of course. My memory... Is a bit hazy, though. Certainly part of me wants to stay here and guard this place.'";
	say "     'Your infection, perhaps?'";
	say "     'Yeah, I think it might be some of that, but... there's fragments of my past, a strange awe for these exhibits--though those same exhibits might run around now and give me nothing but trouble.' Valerie's expression shifts to one of contemplation, you can see that she struggles to grasp what memories of her prior life that remain.";
	say "     'So, you like history, then?'";
	say "     'That'd probably be putting it lightly. This is place is one of struggle, a struggle to piece together stories of lives, places, and ideas long since passed. There is a certain nobility in striving to uncover and preserve it, that--without us--this forgotten past would be all in vain.'";
	say "     'And you think that leaving it behind would betray all that work?'";
	say "     'Sure... Though I think this disaster does so much to deface this place that there's little point.' The sphinx's contemplative state seems decidedly more sullen in the observation of this fact, an expression Velos is quick to pick up on.";
	say "     'There's no question in my mind that this place needs you. I shudder to think how worse it might be off otherwise.' This does seem to brighten her mood a bit. 'And with that I should probably go. Take care, okay?' And with a nod by Valerie, the serpent retreats back within you, leaving you and the lady to your own matters.";


Part 9 - Fang

the vmusings of Fang is "[fangmusing]".
fangvelos1 is a truth state that varies. fangvelos1 is normally false.

to say fangmusing:
	if HP of Fang is 1 or HP of Fang is 2:		[Beta-Fang message]
		say "     Calling Velos before your lupine watchdog, Fang can't help but lower his head in apparent bafflement at the scene which transpires before him, exacerbated when your passenger speaks.";
		say "     'Oh hello, pooch.' The serpent is a bit distant from the wolf, perhaps not sure what sort of discourse he might engage with him. Fang, meanwhilst, is actually rather intimidated by the creature and gives quite the sullen look, his form set low and defensive.";
		say "     'Huh, okay, so you're scared by me? That's... Quite reasonable, to be honest. I'd scratch you behind the ears and tell you to the contrary, but as you can tell I have none for which to do so.' Velos's attempt to put the lupine at ease does seem to work a bit, and when it's clear that the serpent isn't planning anything, he does seem to calm down a bit. 'That's better. I doubt you can offer much in terms of dialogue, I wager?'";
		say "     Fang howls briefly in response, and the snake concedes that such is about the sum of what he's going to get out of him, saying his farewell and returning from whence he came. The wolf tilts his head at you, no doubt a little confused about what has just transpired here.";
		now Fangvelos1 is true;
	else:
		say "     [if fangvelos1 is true]Once more[else]Reluctantly[end if], you conjure up Velos from his confines, Fang snorting a little at his appearance[if fangvelos1 is false], strange that he would be so fine with his presence, perhaps he already knew the snake was in there, or maybe he's just keeping his composure[end if].";
		say "     'Oh, hello[if fangvelos1 is true] again[end if], little doggie. Who's a cute pooch? You are!' Velos's attempt at condescension is met with a low growl in discontent.";
		say "     '[if fangvelos1 is true]Oh, what's this? You were frightened by me a whilst ago. Have you undergone some manner of change when I wasn't looking[else]Oh, you're just scared I might bite you when you're having your fun, is that it[end if]?'";
		say "     'Talk too much.' Velos is a bit at odds with the wolf's curt response, but ultimately attempt to coax more out of him.";
		say "     'Oh, that's right rude! Surely you could offer me a more elaborate response? I wouldn't want to make you too uncomfortable, and we're all frie--what is that you're doing? Cut it out!' By this point Fang has chosen to make a whining sort of howl-noise, head bouncing slightly in faux discussion, his tone a clear illustration that he seeks to parody Velos's voice in a rather juvenile fashion. When the lupine is done, Velos looks a bit cross.";
		say "     '...You won't get the luxury of knowing when I'll strike.' Fang makes a sound akin to what you assume is a chuckle as Velos retreats. You're not rightly sure if Velos is actually offended by your lupine companion's mocking or if he's just playing the part, though the wolf seems plenty happy with himself, letting you go off to your own matters.";


Part 10 - Harold

the vmusings of Harold is "[haroldmusing]";

to say haroldmusing:
	say "     Looking around to ensure that nobody's looking at you before you summon Velos before Harold. You can imagine his endeavors to clean a glass are a bit impeded when he's distracted with the sight of the serpent.";
	say "     'Dare I ask what you plan to do with that?'";
	say "     'Oh, don't mind that person, they just help me get around.' Offering up the sly remark, the unicorn seems to be put a bit at ease when it's made clear that he's not about to get attacked.";
	say "     'Huh, dare I ask...?' He leans over the bar, getting a better view of where Velos is coming from, before he pulls back. 'Ah, that must be a little embarrassing.'";
	say "     'I wouldn't worry about it, my friend doesn't talk all that much.' You can't help but glare a little at him and his jabs, and Harold can only chuckle.";
	say "     'Very well, what would you like to drink, then?'";
	say "     'I'd much rather drink in dialogue, more than anything else.'";
	say "     'Oh? I assume you must get thirsty sometimes.'";
	say "     'Er... My friend here helps me with that, in a way. Really, I -can- drink and eat, but it doesn't do a whole lot for me and eating is... Uegh, no.'";
	say "     'Problem?'";
	say "     'You ever see a snake chew? I would think not, and the weird bulging is as uncomfortable as it is unsettling. I figure you're supposed to get used to it, but I never can.'";
	say "     'That's quite a shame.'";
	say "     'I suppose I could say that I enjoy food vicariously through my host, but I don't want to weird you out any more than you already are.'";
	say "     'That's probably for the best... You'll have to excuse me, I'll need to take that.' Harold, gesturing to the other side of the bar, goes off to deal with another patron.";
	say "     'I should probably go off, too, these lights are making me dizzy...--Hey, try not to get -too- drunk now, okay?' Velos prods you, a little teasingly, before he retreats back from whence he came, leaving you to attend to yourself.";
	add 10 to velospostmusings;


Part 11 - Hadiya

[Note: Does not open until the player's been fucked by Hadiya.]

to say hadiyamusing:
	say "     Hadiya regards you with an appropriately cross expression until you summon Velos, eliciting a frown of slight disdain, mixed with a dash of confusion.";
	say "     'What are you showing me right now?' Her stern query is met with a slight grin by the serpent.";
	say "     'Are you my mother?'";
	say "     'I have half a mind to rip you right from MY toy's hole and use you as rope for a joke like that.'";
	say "     'I'm sorry, but the joke wasn't -that- bad.'";
	say "     'Don't tempt me--'";
	say "     'Okay, okay! I'd say that you can't remove me but I worry you might perceive that as a challenge.' This seems to calm Hadiya down a bit, for now at least.";
	say "     'What do you want?'";
	say "     'So utilitarian in your dialogue, tsk! Don't you ever wish to make small talk?'";
	say "     '...'";
	say "     'So, how have you been? Not too much trouble, I wager? You look like you can take care of yourself.'";
	say "     '...I'll admit, for a snake hiding in someone's ass, you've got balls.'";
	say "     'Er, thank you--'";
	say "     'But you come out here again and ask me a dumbass question like that and you'll see just how quickly I can break you.' Velos seems to pause at this, inevitably conceding to urging your retreat, but she stops you just before the two of you depart. '...And I'm fine, thank you for asking.' The serpent regarding her final remark with a slight grin, she then lets you off. Discourse concluded, your resident returns back from whence he came, letting you go about your business.";
	add 11 to velospostmusings;


Part 12 - Philip

the vmusings of Philip is "[philipmusing]";

to say philipmusing:
	say "     Conjuring Velos from his confines, he immediate seems to regard the situation with a measure of disdain.";
	say "     'Uegh, what is that smell[if vmusedone of Doctor Moffatt is true]? I joked about that so-called doctor's scent but this is outright offensive to my senses.' [else]?' [end if]The pig snorts, mostly oblivious whilst he stuffs his face, which is enough to illicit a sigh from the serpent. 'Really? Is this the company you keep? Nothing good can come of this.'";
	say "     'Who are you?' The swine finally realizes the snake's there, oinking quizzically at him.";
	say "     'Someone wishing he was the fare of snake that could hypnotize people, because right about now I'd be ordering you to take a bath!'";
	say "     '*Snort* You just wish you could have as much fun as I am having.'";
	say "     'Yeah, sure. I wager setting oneself on fire would illicit all sorts of dazzling awe if one were numb to any sort of pain.'";
	say "     'You're not very smart; I'm rolling in mud, not setting myself on fire.' This gives Velos pause, and he's appears to be sizing up Philip, perhaps determining if he's being challenged.";
	say "     '...Okay. Would you agree that the escapist's digression into the surreal has merit only in the realm of simulacrum? This is under the impression that such digressions, when attempted in the real world, would be unhealthy at its best and morally reprehensible at its worst.'";
	say "     'I'm hungry, [if philip is not bunkered]maybe you could get me something to eat?[else]I think I'll go find some food.[end if]'";
	say "     'That question was asked completely straight!'";
	say "     'You asked me something?'";
	say "     'Oooh, you're good. You may have won this time, fiend, but you haven't heard the last of me!'";
	say "     'Bye!' The snake grumbles as he retreats back to his home, leaving you to ponder what just happened, and Philip goes back to his own business.";
	add 12 to velospostmusings;


Part 13 - Sandra

the vmusings of Sandra is "[sandramusing]";

to say sandramusing:
	say "     Going over to Sandra you coax Velos from hiding and show her him, doubtlessly taking her a bit by surprise.";
	say "     'Oh, that's so... kinky! Are you going to share him?' She makes a move for the serpent, something he's quick to reel back from.";
	say "     'Er, ma'am, I'm glad that your first response isn't [']Oh god, what eldritch horror spawned this monstrosity['] but I'm not here as a toy for your rampant libido.' She seems a little off-put by such ill regard for her desires, quick to retort.";
	say "     'But you're here for my friend's?'";
	say "     'Anything our friend might get out of this is largely incidental; frankly, everyone's obsession with sex bothers me to no end.'";
	say "     'Not a fan?'";
	say "     'Not a gender, would be more appropriate.'";
	say "     'Oh... I'm sorry, then.'";
	say "     'Nonsense. Everyone here has such excessive regard for the depraved that my more restrained perspective has become the minority.'";
	say "     'What's wrong with a little fun? And coming from someone's ass, you can't really say much.'";
	say "     'How many here have lost so much in the name of that 'fun'? And if people knew how comfortable this was, I can--most assuredly--tell you I wouldn't be the minority in -that- regard.'";
	say "     'Are you suggesting I'm no better than those outside?' The rabbit looks somewhat cross at such an accusation, in spite the serpent's attempt to inject a bit of levity into his last statement.";
	say "     'Certainly not, but it's easy to lose perspective; you might be fine with what's happened to you now, but a lot of people have paid too steep a price. Do you think that makes it worth it?' Sandra shrugs, but before she can come up with a response Velos moves to depart. 'You'll have to excuse me. Consider my argument, if you will.'";
	say "     Retreating back inside you, it takes you a moment to adjust yourself. Still a little lost in thought, Sandra moves back to where she was, letting you return to your own matters at hand.";


Part 14 - Diego

the vmusings of Diego is "[diegomusing]";

to say diegomusing:
	say "     Conjuring Velos from his confines, Diego is only briefly taken aback, but soon finds [if diegochanged > 0]she[else]he[end if] can't help but laugh a bit at the circumstances at play.";
	say "     'Ha, that's quite the impressive trick!'";
	say "     'That's nothing, you'd be surprised how many things my friend can fit in their pockets!'";
	say "     'I'm talking to you, actually.' [if diegochanged > 0]She[else]He[end if] points to the serpent. 'How did you manage to get your friend to carry you around like this?'";
	say "     'Good sir! Frankly, I'm quite offended you would assume deception on my part.' He feigns insult, no doubt a little bit amused by the coyote's cordial composure.";
	say "     'Well, it's either that or your host is a massive weirdo.' [if diegochanged > 0]She[else]He[end if] briefly grins directly at you before returning his focus to the center of attention here.";
	say "     'Fair enough. I guess you could say I wasn't... explicit... in describing our arrangement.'";
	say "     'And I bet that means you can't be removed?'";
	say "     'More or less.'";
	say "     'Ha, that's amazing! I could really use someone like you.--Though not for me, of course.'";
	say "     'I don't catch your drift.' Velos previous jovial regard is tinged with slight confusion at the coyote's claim. '--I mean, I'm glad you're not completely weirded out by me, but I think you're inferring I'm some weapon you can thrust on people.'";
	say "     'It's not like that, but it pays to be a bit pragmatic in my line of work.'";
	say "     'Which is?'";
	say "     'Causing all sorts of trouble, it's in my nature! Oh boy, I can't wait to see your face when you see what I have planned for the military.' The snake is struck silent, his expression now wholly baffled, and he apparently requires a moment to really take in that statement. With a jolt, however, he suddenly reverts to normal.";
	say "     'I see. So, I assume you're what's giving the military trouble around here, yes?'";
	say "     'Of course. You must have seen some of my work, then?'";
	say "     'Maybe; might have heard about it.'";
	say "     'Well, what do you think?'";
	say "     'Sir...' And Velos's expression turns darker than anything you've seen up to this point, 'if I were to suggest that you 'go fuck yourself' I'm afraid it would be quite redundant as your head's already so far up your own ass that you give yourself a rimjob every time you talk.'";
	say "     'Heh... What?'";
	say "     'What gives you the bright idea to think that harming the people trying to help our sorry lot is even a remotely smart thing to do?'";
	say "     'W-what?--It's not my fault they're so dense they fall for my tricks! How else are they gonna learn?' The coyote's taken a bit off guard by this sudden shift in tone.";
	say "     'You've got men, leaving their wives and children to protect the people they love, only to succumb to a fate worst than death. I feel sorry for the poor sap who has to walk up to that same wife and tell her that--no--she's not a widow, but instead her husband is now a sex-craved monstrosity with no memory of her or his kin, and if he were to encounter them again he would attempt to inflict the same fate as his own.'";
	say "     'Don't you start preaching to me, you tricked a person into carrying you around like that!' By this point Diego is beginning to fume, Velos not relenting for a second.";
	say "     'I did what I had to survive. You, on the other hand? You had a choice. And if you--for a second--even begin to repeat that it's in your nature then you only prove you're no better than an animal; a mangy dog.'";
	say "     'Come out here and say that to my face you--' By this point the both of them look like they're about to fight, with you stuck in the middle. You're ultimately forced to end the conversation, splitting the two of them, and they do eventually recede back to their opposing corners, both visibly livid with the circumstances that just played out.";
	say "     With Velos, grumbling to himself all along the way, returning back inside you, you find yourself not quite sure what had just transpired here--given how rapidly things descended into the way they became.";
	add 14 to velospostmusings;


Part 15 - Leonard

the vmusings of Leonard is "[Leonardmusing]";

to say Leonardmusing:
	say "     You decide to reveal your occupant to Leonard, who has [if HP of Leonard >= 16]asked one of his feline maids to grab him a drink[else]moved to prepare a drink at his bar[end if]. Doubtlessly, when Velos emerges from your hole, even the lion's exceptional composure begins to crack under the pressure of such a peculiar sight.";
	say "     'Oh, no, this really won't do at all...' Disregarding Leonard's distress, the serpent finds himself instead distracted by the rather cultured decorum. Thankfully, it's not long before he makes an effort to clear the tension in the air.";
	say "     'Oh? My apologies. As you can imagine, my circumstances are ill-suited to present myself in any manner more dignified than this.'";
	say "     'I see...' Velos's appeal to him seems to put the feline at some ease. 'I suppose anything's possible here, though you can imagine that your portrayal conjures... What is the word? A measure of cognitive dissonance, I think is right.'";
	say "     'And right you are. We don't all have the luxury of fates well-suited to our better tastes.' By now Leonard would--at least outwardly--appear fine with this peculiar revelation, a doubtless product of the serpent's eloquence, of which he seems to have ramped up for some reason.";
	if HP of Leonard >= 4:
		say "     'Regardless, I'm not sure this will do for me. What might it take to have you vacate my [if HP of Leonard >= 16]mate's[else if HP of Leonard >= 9]precious lover's[else]mate's[end if], er... [']premises[']?' This request is enough to illicit a slight frown from Velos.";
	else:
		say "     'Ultimately, I don't think this will benefit me in the long run... Might I request that you vacate your host's, er... [']Premises[']?' This request is enough to illicit a slight frown from Velos.";
	say "     'Sadly, I can't be removed.' Velos's response, oddly enough, elicits a brief streak of confusion from the lion, before this expression is promptly obfuscated and he goes on.";
	say "     'Hm, you are sure of this? I'm generally not one to make compromises.'";
	say "     'I'm afraid that there is no one in these blasted lands that might replace our friend here.'";
	say "     'Very well, I suppose I'll have to leave that matter at that, for now.'";
	if HP of Leonard >= 16:
		say "     'Moving along, I would assume your friends here are of their own volition?' Velos gestures to his feline maids.";
		say "     'You would infer that I keep them captive? No, they're quite free to leave on their own, if they had any will to. They were plucked from my more feral kin.' He calls over one of his maids, drink in tow. Taking the beverage in one hand, his other would pull the feline to his lap, her reciprocation a show of affection. 'They're much more well-off here, under my care.'";
		say "     'Hm...' Velos seems to internalize this statement for a moment before nodding--though somewhat dismissively--to Leonard. 'I suppose I have to agree with you, you are correct in your assessment as the lesser of two evils.'";
		say "     'Ah, well--Wait, I'm sorry, could you repeat that?' The lion nearly spills his drink, taken off guard by how nonchalant this accusation is laid upon him.";
		say "     'Oh. These ladies are certainly better off in your hands, their prior captors far less equipped to care for them as you would. Though they are still slaves, and not simply by virtue of their infection commanding it.'";
		say "     'What are you insinuating, 'sir'?' Fur transparently ruffled, he hands his glass to the feline and lets her off, standing up from his comfortable seat.";
	else:
		say "     'But enough of me. Stranger though my circumstances, I wager you're--quite substantially--more interesting an individual.' Buttering up Leo, he seems to take this regard quite well, Velos continuing. 'I'm very curious as to how you've acquired all this impressive decor.'";
		say "     'You have a good eye! I have a fair number of consorts--None of which are present right now[if HP of Leonard >= 4] save for my love here[end if]--who are more than happy to offer up these gifts as thanks for my... company.'";
		say "     'Oh? Such a company as yours must be quite exceptional for these consorts to brave this wasteland in obtaining all these niceties.'";
		say "     'Oh, it would be rude of me to brag, now...'";
		say "     'Think nothing of it! Your trespass is substantially more unconventional.'";
		say "     'Ah, well--Wait, I'm sorry, could you repeat that?' The lion nearly chokes on his drink, taken off guard by how nonchalant this accusation is laid upon him.";
		say "     'Honestly, I mostly assumed you just found a truck and hauled this all yourself, but this much better explains what you've been trying to attempt on me for the past minute.'";
		say "     'What are you insinuating, 'sir'?' Fur transparently ruffled, he puts down his glass and is drawn away from the bar to better face the serpent.";
	say "     'At first it wasn't immediately clear to me; a strange artifice that constantly tugged at my better judgment, but you've made it very apparent what that is now: You possess some power of coercion.' Leonard is a bit taken aback by this reveal, clearly not prepared for it, and subsequently going on the defensive.";
	say "     'That claim is preposterous! Do you dare take me as some manner of... snake!?'";
	say "     'You're doing it right now! Maybe you have no control over it, hm? I'd tell you that such outside influence has no power over me, if it'd dissuade you from committing this rather bothersome distraction.' The pressure of these circumstances crack his composure further with each inch gained, the lion's posture devolving into something increasingly feral and desperate.";
	if HP of Leonard >= 4:
		say "     'Ah, [if HP of Leonard >= 16]mate[else if HP of Leonard >= 9]love[else]my pet[end if]--love...' He attempts to circumnavigate Velos's position in the argument by vying for your favor, moving to you, though trying to keep his distance from your occupant. 'Don't listen to this... ludicrous creature's deception. He cannot even conceive my feelings for you.'";
		say "     Staring into his eyes, you can't help but be pulled along by his words; however, before he can go any further, you're hit with a sharp jolt that tremors through your spine, Velos pulling you away from the lion's influence. Your attention drawn from Leonard, he moves to pull the lion's attention from you, prodding the feline in the torso, smearing his immaculate fur with the serpent's bodily lubricant.";
		say "     'Ah, ah, now. Quite telling that you'd try to find someone else to do your job for you at a moment's difficulty.' Chastising him, Leonard backs away from you, instinctually trying to rub off the smear, and beginning to look quite cross.";
	else:
		say "     'You come into MY home and accuse ME of deception? What right have you to challenge me, parasite?'";
		say "     'Oh, I wouldn't be so rude as to claim you -deceived- anyone. I'm certain you were completely honest when you compelled your victims into fetching these baubles.' Maintaining his composure in spite of Leonard's rapidly diminishing, this only seems to anger him further.";
		say "     'And what of your deception? Would you suggest that -your- victim was wholly complicit in carrying something like you around?";
		say "     'I'm quite ashamed, actually; I'm just not as good as you are. I have yet to convince them to shove a bar and couch up their ass--Quite dreadful, I'll just have to concede to life in the least dignified way possible.' Deflecting his argument entirely, Leonard seems at a loss to find decent ground in this discourse.";
	say "     'I think I've had enough of this argument, I'm going to have to ask you to leave.'";
	say "     'Argument? And you haven't even offered me a drink! It pains me that I have to offer criticism against your hosting prowess.'";
	say "     'No, no. I won't be insulted in my own home, good day now...' Leonard begins pushing you lightly, urging you out of the cave, though a little awkwardly as he's still intent on keeping as much distance away from the serpent as he possibly can. Eventually, you find yourself outside the lion's abode, Velos scoffing in feigned disdain.";
	say "     'How rude of him!' He offers up a slight remark before retreating back inside you, leaving you to your own matters. Hopefully, Leonard'll cool down, and it's probably best that you don't bring up Velos to him again.";
	add 15 to velospostmusings;


Part 16 - Lisa

the vmusings of Lisa is "[lisamusing]";

to say lisamusing:
	say "     Conjuring Velos before the mouse-taur, Lisa's expression is one of slight bemusement. The serpent opens the dialogue.";
	say "     'Porn Store? You'd think this would be the most worse off of locations, but it's actually quite well kept!'";
	say "     'Thank you. Trouble does sometimes come, but I can handle it. I guess you could say that--the way things are--the real thing's more popular right now.' The lady's regards the snake surprisingly well, perhaps she is not so easily intimidated?";
	say "     'Fair enough.'";
	say "     'I might have a toy like you, but now I'm beginning to wish all my toys complimented me, too! I can look for it if you want...?' She gestures to the back, Velos shaking his head.";
	say "     'Please don't.'";
	say "     'In any case, how can I help you?'";
	say "     'Oh, I don't need anything! But perhaps you'd like to talk a bit.'";
	say "     'I'm not sure what's weirder, the way you are or that you're not looking for any action.'";
	say "     'That's how the dice falls, I suppose. Anyways, I assume you worked here before all this happened?' The serpent gestures to the nearby portrait, compelling Lisa to pull it over and look over it a bit.";
	say "     'Yeah. Mostly part-time, to pay off student loans between classes.'";
	say "     'Oh? What were you learning to become?'";
	say "     'I... wanted to be a teacher.' She appears a bit lost in thought, Velos continues.";
	say "     'Do you think you'll ever go back to that?'";
	say "     'I don't think so, no.--I mean, look at me. I'm fine with how I am now, but I don't think anyone would let me anywhere near a school.' She gestures over her form, a slight sullen tinge in her voice.";
	say "     'I think you'd be a great teacher. Those of far less a strange form bear a much weaker grasp on their humanity and composure than you would appear.'";
	say "     'I know...' She puts the portrait back, 'Thank you. I can see you're trying your best in far worse circumstances than mine.'";
	say "     'Oh, it's not as bad as you think it is. Anyways, I need to depart. Take care.' Saying her farewells, she waves the two of you off before attending to another matter, letting Velos recede back into the depths of your bowels. Looking at Lisa again, she seems a bit lost in thought in the wake of the recent discussion.";


Part 17 - Sven

the vmusings of Sven is "[svenmusing]";

to say svenmusing:
	say "     Clearing any obtrusive attire that might bar him, Velos emerges before Sven, who's undoubtedly quite uncomfortable with this revelation.";
	say "     [if HP of Sven >= 6 and HP of Sven < 30]'W-what are you going to do to me with that[else]'W-what is that[end if]?' He seems to shift away a bit, perhaps afraid that Velos might pounce on him at any moment, a fear the serpent is quick to try quelling.";
	say "     'Oh, I'm not here to do anything to you, that'd be rather rude of me, now wouldn't it?' Thankfully, the snow leopard does seem to calm--if only by a little bit. 'You don't sound like you're from here, would you elucidate on it for me?'";
	say "     'Well...' He takes a deep, calming breath, 'I was born in Norway, and I came down here as part of an international scholarship.'";
	say "     'Huh. I bet you wish you stayed home now.'";
	say "     'Heh, yeah, a little. And it is so hot here,' he adds, brushing his tail nervously.";
	say "     'You lost me there; seems quite cold actually. But I digress, don't let it get to you too much. There's always somebody who's got it worse.'";
	say "     'Like you?'";
	say "     'I don't know what you're talking about. I don't have to walk anywhere or find my own food; I'm the luckiest guy here!' This is enough to illicit a slight grin from the feline, encouraging Velos to continue. 'Think you'll go back to school after all this is done?'";
	say "     'I do not know. You think things can go back to normal after this[if HP of Sven >= 3]? I would not like to give up my lovely tail,' he adds, nuzzling it for comfort.[else]?'[end if]";
	say "     'Perhaps not completely, maybe not at all. But I wonder, what dreams carried you this far from home? Quick as one may be inclined to drop them in favor of pure survival, what meaning can we impart on our lives in their absence?'";
	say "     'I do not understand what you mean by that.'";
	say "     'Many of the monsters beyond these walls are about as happy as they'll ever be, but it's a fate still reviled by most, even when we toil and struggle in here. Is the ability to truly appreciate your happiness really better than the ease of blissful ignorance?'";
	say "     'For a weird snake you really like to talk philosophy.'";
	say "     'My apologies, in that case. When you're in a dark tunnel most of the time it gives you a great opportunity to think about things...'";
	say "     'Just another perk of being you, yes?'";
	say "     'Now you're getting it! I think that's enough rambling from me, I'll leave you at that.' Sven, nodding, says his farewell before Velos returns back within your depths. You go back to moving on your own, Sven himself a bit lost in thought.";


Part 18 - Beverly

the vmusings of Beverly is "[beverlymusing]";

to say beverlymusing:
	say "     You decide to conjure up your friend from hiding, calling Beverly over. The second she sees Velos coming from you, as he does, her eyes immediately go wide and she screams out.";
	say "     'Oh, god! Back, back you!' Out of nowhere, she's grabbed a particularly heavy-looking book and is immediately swinging it at him, forcing him to dodge in a desperate attempt to avoid the gerbil's wrath.";
	say "     'Lady, watch where you're swinging that thing!' She doesn't seem to regard his pleas, forcing you, snake compelling you in tow, to try and flee her assault. Endeavors somewhat impeded by the awkward nature of such a retreat, you do eventually make it outside the bookstore and close the door behind you. Catching your breath, you decide to apologize to Velos for the sudden attack.";
	say "     'No, no, it's fine. That's probably the most reasonable response I've got to date. I think I can take comfort in knowing some people still have a right head between their shoulders... Problematic as it may prove for me.' With that he slides back into your depths. Hopefully Beverly will get over the whole thing.";
	add 18 to velospostmusings;


Part 19 - Christy

the vmusings of Christy is "[christymusing]";

to say christymusing:
	say "     Calling Velos out, Christy is immediately taken aback by your now-apparent resident, though her large scale likely prevents her from being really all that intimidated by its presence, soon moving closer to investigate.";
	If dragontype > 0:
		say "     'Oh, you naughty little thing, you wanted to see what it was like from my perspective, didn't you?' The dragoness's query eliciting a curious look from the serpent.";
		say "     'I'm sorry, you lost me there, madam. If our friend here's predicament were yours then you'd not be able to remove them.'";
		say "     'Oh, well, sometimes I think of finding some way to do something like--Wait, no, naughty thoughts, bad!' The serpent can't help but furrow his brow at the dragoness's presently conflicted state.";
		say "     'You're quite the twisted lady, perhaps you should consider a hobby? Knitting, maybe? I'm sure we could find some rope and a pair of street lamps...?'";
		say "     'I wasn't all that good with knitting at the nunnery.' Velos seems a little perturbed that his joke flew right over her head. '...Wait, so, you're stuck to each other?'";
		say "     'I suppose you could say that.'";
		add 19 to velospostmusings;
	else:
		say "     'Oh, that's so very naughty, maybe I could borrow him for a--no, no! Nevermind what I said.' The serpent can't help but furrow his brow at the dragoness's presently conflicted state.";
		say "     'You're quite the twisted lady, perhaps you should consider a hobby? Knitting, maybe? I'm sure we could find some rope and a pair of street lamps...?'";
		say "     'I wasn't all that good with knitting at the nunnery.' Velos seems a little perturbed that his joke flew right over her head.";
		say "     'I... suppose I might as well address your first point by highlighting the fact that our friend is pretty much stuck with me.'";
		say "     'How? Are you attached to each other?'";
		say "     'I suppose you could say that.'";
	say "     'Hmm...' She seems to ponder this predicament for a moment before abruptly grabbing the serpent by his slippery frame, and with a firm grip she starts yanking the poor thing free of you, much to his clear distress. She goes so far as lift you [if scalevalue of player > 3]partially[else]clean off[end if] the ground, bouncing you up and down until his cries of protest become your own, as each successive bounce sends bolts of harsh pleasure across your form.";
	say "     'Oh, hm!' She relent at the sound of your discontent, letting you down and releasing the beleaguered and rather dizzied serpent from her grasp. Panting as he might be, he hasn't budged an inch.";
	say "     'Heavens, madam, you're right nuts!'";
	say "     'Sorry, I was helping!'";
	say "     'Then I wager you're ill-suited for any manner of aid--Hell, if I were any such creature to merit a lawn you'd be the last person I'd come for weed-related help, lest my entire property be torched.'";
	say "     'You're comparing yourself to a weed, then?'";
	say "     'You sting me! Though I suppose I set myself up for that one... I should probably go now, I feel like I've been stretched a couple inches longer after all this, uegh.'";
	say "     And with that, your companion departs back inside you, shifting uncomfortably in the wake of Velos's retreat. Christy simply offers you a shrug before letting you off.";


Part 20 - Nermine

the vmusings of Nermine is "[nerminemusing]";

to say nerminemusing:
	say "     Calling Nermine over, you prod yourself until Velos concedes to your request. The jackal is obviously a little disturbed by the serpent, but isn't particularly surprised.";
	say "     'I see many maladies in my time, few so strange.'";
	say "     'Hey, rude! I know my my appearance isn't the least bit flattering, but double check who you're calling a malady!'";
	say "     'Stranger... I go in back, I might have book for this.' The snake grumbles a bit as the jackal leaves, looking around the strange shop.";
	say "     'What tacky fare... Did that statue just wink at me back there? I'm really not sure we should be here.' He clams up when Nermine returns, this time with some dusty tome.";
	say "     'Okay, let Nermine see if she can fix your problem.'";
	say "     'Problem? Lady, I'm standing right here! Well, okay, admittedly our friend is standing for me...' She waves off the Velos's complaints, and begins to list off various strange afflictions, none of which seem to really match the circumstances you're currently subject to, Velos grumbling discontent made apparent throughout until she's at odds with finding anything else that might be remotely related before she's hit with a possible revelation.";
	say "     '...Wait, maybe looking at this wrong way?'";
	say "     'You go about this whole matter like I'm some sort of curse you can wave a magic wand at and make disappear.'";
	say "     'No... Maybe you not one who is cursed, yes? I think snake bigger victim here, probably.'";
	say "     'This is beyond ridiculous. I think we're done here.' He, rather curtly, makes his exit, leaving you with Nermine, who briefly looks over her book a second time before giving you her attention once more.";
	say "     'I cannot help you. If snake is cursed, curse is unique; beyond my knowledge.' Nermine returns to her own business, leaving you on your own once more.";
	add 20 to velospostmusings;


Part 21 - Onyx

[Do not open until rescued to Library]

to say onyxmusing:
	say "     Summoning Velos, Onyx is--reasonably so--a bit displeased by this revelation, though he is at least a bit restrained in expressing it.";
	say "     'Ah, [if onyxdma > 0 or onyxdmc > 0]and here I thought I might have fucked you too hard!' he says, attempting levity in hopes to assuage his apparent discomfort[else]that would explain that, then...' he offers up in admission[end if].";
	say "     'I'd humor you, but I'm struck with a moment's confusion. Aren't you cold?'";
	say "     'W-What?' His subsequent query seems more elicited by the apparent confusion towards the serpent's apparent capacity for speech than his actual query.";
	say "     'Aren't you cold? You're wearing practically nothing, a stiff breeze must give you quite the chills!'";
	say "     'W... We're in California.'";
	say "     'But what about at night?'";
	say "     'It's a humid heat. How wouldn't you know this?'";
	say "     'Hm... It might just be that I spend most of my time inside, and since I'm constantly wet it feels frigid most everywhere.'";
	say "     'I'm not even going to ask why you're in there.'";
	say "     'What, you don't like me?'";
	say "     'It's hard for me not to say that you're a bit repulsive...'";
	say "     'Oh, you sting me, saying things like that!' Velos clearly feigns insult, perhaps to ensure the equine doesn't worry about making the offense.";
	say "     'Well, it's kinda true! You're... Dripping. A little bit, see that on the floor?'";
	say "     'Huh? Oh, that'll evaporate fairly quickly, don't mind it.'";
	say "     'You're at least not some mindless animal. How can you handle being like that?'";
	say "     'With how much tail I get, who -wouldn't- want to be like this?'";
	say "     'I mean, seriously.'";
	say "     'Trust me when I recommend you take the silly answer instead.' His otherwise cordial demeanor shifts slightly into something more serious, an illustration showing that he means what he says, and a gesture Onyx picks up on. 'You'll have to forgive me, but this is where I have to depart.'";
	say "     'Whew...' the equine breaths a sigh of relief once the serpent has returned to its confines within you. 'I'm sure has hell glad I don't go out there nearly as much as you do.' Acknowledging his parting words, you let him off to his own matters for now.";


Part 22 - Boris

the vmusings of Boris is "[borismusing]";

to say borismusing:
	say "     Moving over to Boris, you summon Velos from his confines, and bit of adjustment and fidgeting on your part, the faux lion is sent reeling back.";
	say "     'Heavens! I generally don't care to have people show me their snake, but this is just ridiculous.'";
	say "     'Hey, only I get to make the jokes around here!' The serpent feigns anger in the wake of Boris's attempt at humor.";
	say "     'Sorry. I wish I could say that you're the weirdest thing I've seen happen around here, but I've not been so lucky.'";
	say "     'Right. No doubt you're stuck in that attire?'";
	say "     'Stuck in the same way you're stuck in your own skin.'";
	say "     'Must be a bit embarrassing, wouldn't you think?'";
	say "     'No less embarrassing than being a snake inside a person's ass.'";
	say "     'Touche. What's your plans for dealing with this?'";
	say "     'What do you mean? Where would I even go?'";
	say "     'Well, staying here can't be any good for you.'";
	say "     'I don't know. Sometimes I try to leave, but then my mind starts to wander and back here I am.' Boris shrugs, a little dismissively. 'What's your excuse?'";
	say "     'I don't do outside too well, let's keep it at that.'";
	say "     'Alright. Anyways, I might be able to do some help by warding people off from this place.'";
	say "     'Trust me when I say it's not a picnic out there either.' Boris nods to this claim before spacing out for a moment, he then jolts to attention.";
	say "     'Hey, have you seen Arthur?'";
	say "     'Who?' Velos gives the plush feline a confused look.";
	say "     'Arthur the Antelope! I bet he's plotting his next scheme right now, but what could it be...?'";
	say "     'What? You've lost me--oh, now you're rambling to yourself. You're doing a thing, aren't you? Snap out of it! Bad, bad lion!'";
	say "     'What, huh? Oh, er... Sorry, sometimes I go off track like that.' Boris does seem a little embarrassed, to which Velos rolls his eyes in response.";
	say "     'Right. In any case, I'm afraid I have to depart. Try to keep your head together.'";
	say "     'Yeah...' The mascot returns to where he was standing, lost in thought. With a sigh, Velos retreats back within your depths, leaving you to go on your way.";


Part 23 - Athanasia

the vmusings of Athanasia is "[athanasiamusing]";

to say athanasiamusing:
	say "     'Where have you brought me? This place is sweltering! Is... Is that lava? Why are we even here?' Velos line of enquiry elicited by his summoning, he seems a little more distressed by the apparent scenery, and is doubtlessly a bit surprised when Athanasia approaches.";
	say "     'Hello... What strange creature have you brought here?'";
	say "     'Ah, that would explain it, and I could easily reflect that question back at you, bird who also appears to be on fire.'";
	say "     'You are one of few manners. I can tell.'";
	say "     'You'll have to forgive me, then, the heat has me a bit at odds right now.'";
	say "     'Would a snake not prefer the heat?'";
	say "     'If my current residence is to be any indication, I'd rather avoid this sort of exposure.'";
	say "     'But your home--twisted though it is--must be warmer than the outside.'";
	say "     'Your assessment, whilst reasonably astute, lacks perspective; you're ultimately trying to draw a similarity between body temperature and molten rock.'";
	say "     'My apologies, I am not quite as troubled by the heat as others would be.'";
	say "     'Without a doubt. Admittedly, I don't get out much, but I don't think I've ever seen or heard of an infected like yourself before.'";
	say "     'What makes you assume that I am such?'";
	say "     'Well, granted, it's generally safe to assume that a more feral creature would be less articulated than what you are, but how else would you be that way?'";
	say "     'We all have our secrets. A serpent like yourself can appreciate that sentiment.' The avian seems to shift to a slight defensive stance, perhaps inferring that this is a subject that could be pressed against her, but Velos seems to not pursue it.";
	say "     'Very well--I think we'll cut this short, this place puts an even larger strain on me than usual. Take care.' Ending his discussion on a more polite note, Athanasia seems to calm a bit down as he retreats back into your hole, leaving you to your own matters.";


Part 23 - Dr Matt

the vmusings of Doctor Matt is "[drmattmusing]";

to say drmattmusing:
	say "     'You wanted to show me something?' Doctor Matt queries you as you approach, somewhat sheepishly summoning Velos from his hiding place. Matt is, undoubtedly, a little off put by that. 'How unpleasant...'";
	say "     'Yeah, I'd say the same thing if I was you and I just saw my face's reflection from inside that suit.' The serpent doesn't seem to take the doctor's regard all that well.";
	say "     'And it talks, huh.' He quickly grabs a swab and rubs it against the snake, damping it with his slick lubricant, much to his apparent discomfort. He takes the swab and starts to examine it. 'Well, that's odd. He's not infectious, by the looks of it.'";
	say "     'Why would I ever want more of me around?'";
	say "     'It's rarely ever that simple.'";
	say "     'I don't know, if I turned my friend into me that'd make my occupancy rather ill-fitting...[run paragraph on][if scalevalue of player < 3] I mean, more than it already is now.[end if]'";
	say "     'Could you say [']Aaah['] for me?'";
	say "     'Say wha--ghft' Velos is interrupted as the scientist assails the serpent with another swab, this time for his saliva, before retreating and looking into it as well, much to the snake's apparent disdain.";
	say "     'Fascinating...'";
	say "     'I seriously doubt I'm going to get much in terms of scintillating dialogue from you, now am I?'";
	say "     'Now, could you stay very still? I'm going to bombard you with a stream of microwaves here. Shouldn't hurt a bit.'";
	say "     'Nope; no. I'm gone. It's been fun, bye!' He, rather urgently, retreats back from whence he came, much to your fidgeting discontent given the fervor at which he does this. Matt seems a little disappointed by this, but inevitably concedes to leaving you to your own matters once more.";


Chapter 2 - Post-Musings

to postmuse (x - a number ):
	if x is -4:				[***Establish combat boon (Requires high favor)]
		say "     'Hey... Freeloader as I am, I might be able to help you in a pinch if you get in a fight. I guess I could play as a last line of defense, but I'm not a very good fighter, and taking your enemy by surprise is about the most I can do.'";
		now velossavedtalk is true;
		remove -4 from velospostmusings;
	else if x is -3:		[***If player has multiple heads]
		say "     'Hey, your other head there's giving me a dirty look. Cut that out, you!'";
		now velosheadstalk is true;
		remove -3 from velospostmusings;
	else if x is -2:		[***Random Elaboration (Req. Medium+ favor)]
		say "     'Okay, I'm sorry that I more or less tricked you into having me. But if I told you explicitly, you'd either refuse outright, or your judgment might be twisted by your libido and thusly render your consent useless.'";
		now velosapology is true;
		remove -2 from velospostmusings;
	else if x is -1:		[***If player has Reg. parasite in cunt:]
		say "     'Hey, could you tell the guy in the other room to keep it down? I'm not even going to ask where you got them; you have quite the peculiar luck.'";
		now velosparasitetalk is true;
		remove -1 from velospostmusings;
	else if x is 1:		[Sgt Alexander]
		say "     'I have to apologize about before, really. I've never been so angry in my life. It's stupid nonsense like this that ensures the continued chaos... Uh, also, forget what I said about hallucinations, it's not important. Regardless, it looks like we're on our own here for a while.'";
		remove 1 from velospostmusings;
	else if x is 3:		[Dr. Moffatt]
		say "     'You can--no doubt--imagine that I find it hard to trust a doctor whose desk is redundant to their chest. I don't know, maybe she has good intent, but this blight has a habit of perverting even the best of intents.'";
		remove 3 from velospostmusings;
	else if x is 4:		[Dr. Mouse]
		say "     'I find it hard to trust anyone who's first question in the face of such a blight as this is [']How might I make use of this?['] I'd exercise caution around that mouse fellow.'";
		remove 4 from velospostmusings;
	else if x is 10:		[Harold]
		say "     'We should go to that bar more often! Though I hate to admit it, the music feels kinda nice from the inside...' You can see a slight tinge of embarrassment across the serpent's face when he asks that.";
		remove 10 from velospostmusings;
	else if x is 11:		[Hadiya]
		say "     'What was up with that cross-looking hyena-lady? You keep some strange company... I kinda like her.'";
		remove 11 from velospostmusings;
	else if x is 12:		[Philip]
		say "     'Maybe I was a bit too hard on that swine fellow? I'm sorry... I guess it's a bit distracting when -my- circumstances appear substantially cleaner than someone else's.'";
		remove 12 from velospostmusings;
	else if x is 14:		[Diego]
		say "     'I'm still right steamed over that coyote. Who does he think he is? You know...' his expression shifts into something more sullen, 'I sometimes wonder if just rotting in that sewer was the better thing to do. Maybe he's right, and I'm in no position to condemn him? Bah, nevermind me...'";
		remove 14 from velospostmusings;
	else if x is 15:		[Leonard]
		say "     'You don't need me to warn you against that feline chap. You might spend time with him and it might be fun for now, but you may someday find yourself doing something you regret--if you even have the will to feel it by then.'";
		remove 15 from velospostmusings;
	else if x is 18:		[Beverly]
		say "     'You think that Gerbil-lady just has an inherent fear of snakes? Bah, maybe just talking ones that pop out of people's rear. I won't contest that.'";
		remove 18 from velospostmusings;
	else if x is 19:		[Christy w/UB]
		say "     'You have some strange friends--myself notwithstanding--though I suppose that dragoness would explain some peculiar sensations that have been coming from you...'";
		remove 19 from velospostmusings;
	else if x is 20:		[Nermine]
		say "     'I'm sorry if I was grumpy when you were talking to that jackal-lady, and as much as I wish weren't this way there's no easy fix to my problem. No book might contain what I've gone through...'";
		remove 20 from velospostmusings;
	else if x is 24:		[Doran]
		say "     Summoning Velos, you immediately query him regarding the instance with Doran.";
		say "     'I... It's almost impossible to describe, what I saw--I'm surprised you can even look at it, I was almost completely overtaken by it.' Since you can't push him to describe any exact details, you at least ask if what he saw is dangerous, to which he scoffs, 'How do I explain it... Countless questions are invoked when one stares into the vastness of space, none of which relating to whether or not it means you harm--in any immediate sense, at least. The fact that you're still standing is indication enough that it doesn't intend any overt ill, but hell if I know what is going on in it.' Sadly, this seems like all you can get out of him.";
		remove 24 from velospostmusings;


[	HP of Velos			]
[ 0 - not met			]
[ 1 - met, unresolved		]
[ 2 - refused			]
[ 3 - accepted Velos		]
[ 3-7 - earning daily favor	]
[ 8 - max daily favor		]


[	XP of Velos (amount of favor)	]
[ 0 = starting (low favor)			]
[ <# = medium favor				]
[ <# = high favor				]

[	level of Velos (degree of favor)	]
[ 1 - low favor					]
[ 2 - medium favor				]
[ 3 - high favor					]
[ ...							]

[	list of Velos musings	]
[					]
[ 0 - PALOMINO bonus		]
[ 1 - Sgt Alexander		]
[ 2 - Candy				]
[ 3 - Dr. Moffatt			]
[ 4 - Dr. Mouse			]
[ 5 - Brian				]
[ 6 - Alex				]
[ 7 - Frank				]
[ 8 - Valerie			]
[ 9 - Fang				]
[ 10 - Harold			]
[ 11 - Hadiya			]
[ 12 - Philip			]
[ 13 - Sandra			]
[ 14 - Diego			]
[ 15 - Leonard			]
[ 16 - Lisa				]
[ 17 - Sven				]
[ 18 - Beverly			]
[ 19 - Christy			]
[ 20 - Nermine			]
[ 21 - Onyx				]
[ 22 - Boris			]
[ 23 - Athanasia			]
[ 24 - Dr. Matt			]
[ 25 - Doran				]
[ 26 - xxx				]
[ 27 - xxx				]
[ 28 - xxx				]
[ 29 - xxx				]
[ 30 - xxx				]
[ 31 - xxx				]
[ 32 - xxx				]
[ 33 - xxx				]
[ 34 - xxx				]
[ 35 - xxx				]
[ 36 - xxx				]
[ 37 - xxx				]
[ 38 - xxx				]
[ 39 - xxx				]
[ 40 - xxx				]


Section 3 - Endings

[to come later]

Velos ends here.
