Version 1 of Hellfire Club by Gherod begins here.

"Adds the Hellfire Club to the game."

[Version 1 - File created, moved from Mogdraz file - Gherod]

Section 1 - Intro

Table of GameEventIDs (continued)
Object	Name
Burns Like Hell	"Burns Like Hell"

Burns Like Hell is a situation.
ResolveFunction of Burns Like Hell is "[ResolveEvent Burns Like Hell]".
Sarea of Burns Like Hell is "Red".

a postimport rule:
	if Hellfire Club is known:
		now Burns Like Hell is resolved;

to say ResolveEvent Burns Like Hell:
	if Resolution of Burns Like Hell is 0:
		say "     The streets of Red Light District are never dull, and today is no exception. A few sex workers here and there offering anyone who passes by a good time, others actually enforcing their services on their potential clients, and more of the general depravity that seems to take place everyday around here. This is why you take an especially cautious path, through some alleys and around some buildings that don't attract as much attention, staying quiet as you try to walk by unnoticed. Your choice takes you through a relatively calm way into other parts of the District, and everything seems to go fairly fine as you finished your attempt at exploring this place a bit more...";
		WaitLineBreak;
		if daytimer is night:
			say "     This time, however, as you walk down a corner and follow down the road, you notice some strange movement. A couple of especially tall horned figures are seen taking a turn towards the Crimson Street, a place you have thought to be mostly empty. The most impressive thing is that one of them seems to be carrying a body across his shoulder, all tied up, which, as far as you could tell, was alive and kicking with a hood covering their head.";
			say "     You manage to get close enough to identify these men as possibly two demons, quite muscular, big and... well-endowed, and they seem to be kidnapping someone!";
			say "     [bold type]Do you want to investigate?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - A kidnapping?! You need to do something!";
			say "     ([link]N[as]n[end link]) - Perhaps you should not. Who knows if they kidnap you too...";
			if player consents:
				Linebreak;
				BurnsLikeHell1;
				now Resolution of Burns Like Hell is 2;
			else:
				Linebreak;
				say "     Sometimes it is best to keep your nose out of matters that do not concern you, and you think this is one of those. So, you back off and continue sneaking your way through the Red Light District into relative safety.";
				now Resolution of Burns Like Hell is 1;
		else:
			say "     You did not get much out of this particular run. Perhaps [bold type]during the night[roman type] things will be a bit different...?";
	else if Resolution of Burns Like Hell is 1:
		say "     The streets of Red Light District are never dull, and today is no exception. A few sex workers here and there offering anyone who passes by a good time, others actually enforcing their services on their potential clients, and more of the general depravity that seems to take place everyday around here. This is why you take an especially cautious path, through some alleys and around some buildings that don't attract as much attention, staying quiet as you try to walk by unnoticed. Your choice takes you through a relatively calm way into other parts of the District, and everything seems to go fairly fine as you finished your attempt at exploring this place a bit more...";
		WaitLineBreak;
		if daytimer is night:
			say "     This time, however, as you walk down a corner and follow down the road, you notice some strange movement. A couple of especially tall horned figures are seen taking a turn towards the Crimson Street and... Wait, you have seen this before! It is a couple of demons kidnapping someone, again! What do they do with all the people they keep on collecting...?";
			say "     [bold type]Do you want to investigate, this time?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Another kidnapping? Surely something is going on...";
			say "     ([link]N[as]n[end link]) - Maybe you really should not...";
			if player consents:
				Linebreak;
				BurnsLikeHell1;
				now Resolution of Burns Like Hell is 2;
			else:
				Linebreak;
				say "     Sometimes it is best to keep your nose out of matters that do not concern you, and you think this is one of those. So, you back off and continue sneaking your way through the Red Light District into relative safety.";
		else:
			say "     You did not get much out of this particular run. Perhaps [bold type]during the night[roman type] things will be a bit different...?";
	else if Resolution of Burns Like Hell is 2: [continuation]
		BurnsLikeHell2;
		wait for any key;

to BurnsLikeHell1: [first stage]
	say "     There is no way you will leave things as they are, you have to know what is going on! Without any further ado, using the best of your sneaking abilities, you stalk the two demons, who seem like hellfire ones, through the alley that leads deeper into the Crimson Street. Using the tip of your feet with each careful step, you tread gingerly as you listen to their deep and masculine voices speaking to each other, as you are given a view of their exposed butts, due to the fact they are wearing only a leather jockstrap and their own choice of harnesses and straps... 'You think boss would be mad if he knows we went really rough on this one?' says the carrier, holding the now exhausted person across his shoulder with one of his strong arms wrapped around their waist. 'Well, it's been a while since we spitroasted one like that, was totally worth it, even if boss gets mad at us for, uh... the temporary stretch.' replies the other, walking by his side while throwing a short laughter at his partner.";
	say "     It does not take much for you to realize what happened to the person they are bringing along. In fact, you know very well what happened, judging by the tone of their conversation. The demons seem to take great joy on speaking about their sexual adventures with other district dwellers they catch during the night. They only seem to roam around at that time, when they are given freetime from their boss, who seems to be someone called [']Mogdraz['], from what you hear the demons talking. 'All Master Mogdraz wants is more profit, so if they come prepared, that's less time spent training them, right? He should thank us! We're happy to do the part!' says the demon carrying their victim as they disappear from view, into what seems like some stairs going down. You follow...";
	WaitLineBreak;
	say "     ... But before you make it midway into the Crimson Street, a red light flashes into your eyes, dazzling you for a brief time. Once you are able to recollect your senses, you realize the demons have disappeared! As you investigate the way ahead, you see that things do not look as you imagined. This area seems as abandoned as before, without anything new to note. There is no sign of any demons, nor any clue left by their existence. You could swear they were just in front of you a while ago... Could you possibly have imagined all of this? It gets very hard to think after a while, and your mind feels more and more smudgy... This place is not doing you any good.";
	say "     Without being able to reach any conclusion, you decide to simply leave the area. It seems like this was a waste of time...";
	move player to Crimson Street;
	wait for any key;

to BurnsLikeHell2: [mid stage]
	if daytimer is night:
		say "     Your exploration efforts has you walking across a few roads that seem quite empty in comparison with the other areas, fairly in the center of Red Light District. It is smart to usually avoid this area, as it is quite an open one, where anyone would be easily spotted and draw unwanted attention.";
		say "     But what is this? You can hear a lot of noise coming from this section, which seems to be a plaza ahead, and a faint scent of brimstone assaults your nostrils by the time you stop walking towards the source of the chaos.";
		if demonologist is listed in companionList of Player:
			say "     [italic type]Xaedihr, who is trailing right behind you, whispers 'Demons... I recognize this smell from miles away. And they seem to be having their fun, too. Now, if you want to investigate, that's on you. I'll try another path so we don't both run into the same issues and can actually discover something worth of our time.'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Investigate.";
		say "     ([link]N[as]n[end link]) - You would rather stay away from trouble.";
		if player consents:
			Linebreak;
			if demonologist is listed in companionList of Player:
				say "     [italic type]Noting your intention, your half-demon companion nods and splits from you, disappearing into a different road around the plaza. Now you will have to be extra careful...[roman type][line break]";
			say "     Having decided to take the risk, you proceed further into the plaza, hiding yourself in the shadows where nobody can see you. Of course, this would be easy because it is during the night, but unfortunately, there is a lot of fire lighting up the stage. Yes, you saw it right... Fire.";
			WaitLineBreak;
			BurnsLikeHell3;
		else:
			say "     This really smells like big trouble for you. Deciding to stay out of it, you walk back to where you came from as silently and quietly as possible...";
	else:
		say "     Your exploration efforts has you walking across a few roads that seem quite empty in comparison with the other areas, fairly in the center of Red Light District. It is smart to usually avoid this area, as it is quite an open one, where anyone would be easily spotted and draw unwanted attention. It seems like this is a plaza, and while it is not too big, it still is somewhat dangerous to walk through carelessly. So you stick to the walls of the buildings, avoiding shattered glass, empty cans of sodas and other drinks, a multitude of stains along the pavement and... What just happened here?! The whole place looks like a huge mess! What seemed to be a sculpture at the middle of the plaza is now broken and barely standing, and every store in the vicinity seems to have been looted long ago, but not unvisited.";
		say "     Was this the place of some sort of party? Or is there more to it...? Looks like you won't discover a lot more in here at this time of the day. Perhaps it would be for the best to just scramble your way out of this chaos before you touch anything you should not.";
		WaitLineBreak;
		say "     Although, maybe you could find something different [bold type]during the night[roman type]...? It is when demons roam the streets more frequently, so it might also be [bold type]risky[roman type]... Make sure you are prepared for such a thing.";

to BurnsLikeHell3: [final stage]
	say "     It all looks like a battlefield, filled with numerous types of demons fighting each other. A closer and more careful look allows you to distinguish two very different forces at play, ones who can bend fire at will and are overall bigger and sturdier, and others who are more nimble and agile, featuring more charming attributes and, apparently, the ability to use dark magic... you think, or at least, that is what it looks like. An even more attentive look and you can conclude that, effectively, there are several red-colored demons fighting against paler ones, some even more human-looking. You really say [']fighting['], but not all seem to be hitting each other with violent strikes. While some indeed fight, others prefer different ways of getting their way through.";
	say "     Amidst grunts and screams of war, there are also moans of pleasure from those who get dirty with one anothers, between demons from different factions. They are mostly hellfire demons and demonesses with incubi and succubi, among many other types that you actually have never seen before! A four-armed brute with burning fists and a pair of erect monster cocks, a large half-snake demoness with supple breasts, as well as male one (without the breasts), a seemingly very attractive succubus, all female except for the dandling meatlog between her legs... There is also a cuntboy incubus, and... imps! Tiny little imps around the bigger demons, trying to distract them from the fights and sexual duels! You are not quite sure whose side they are fighting for...";
	WaitLineBreak;
	say "     Many other types soon arrive into view, like flying demons with draconic wings, tail, arms and legs who can breathe fire, and others who look like some dark vampiric figure with sharp fangs and bat-like wings... The combats seem unending. It looks like not many dare to venture these grounds during this time of the night for good reason! Nobody would want to be caught in this mess if they fear for their sanity and integrity, not to mention the sheer size and strength of some of the demonic creatures you manage to take a glimpse of...! Some are able to handle multiple enemies at once all by themselves! And some inevitably attempt to tire others off by relentlessly rubbing and stroking their enemies.";
	say "     It looks like you have seen enough, and you definitely should not press on any further than you need. Slowly making your way back where you came from, you step into the darkness, away from the chaotic mess.";
	WaitLineBreak;
	say "     ... But suddenly, a red flash attacks your eyes, and a quite familiar one as well. You are left, once more, dazzled and confused, unable to see nor think for several seconds. Then, you look behind you, and everything is gone. There is absolutely no sign of any fight. The plaza is empty and abandoned, as expected under normal circumstances.";
	say "     Just what the hell is happening? You identified this as the same flash you experienced in the Crimson Street...";
	WaitLineBreak;
	say "     'Don't you think you've seen enough, [if player is female]young lady[else if player is male]young man[else]young pal[end if]? You gotta pay if you want a VIP seat for the show...' a rather deep and masculine voice speaks behind you, and soon, there are two Hellfire Demons surrounding each opposite side of you, [if scalevalue of player < 4]towering over you menacingly[else]standing at your already considerable height[end if] while looking at you in the eye, though something is quite different about them when compared to the common street ones. 'So first you follow us, and now you got curious enough to walk the entire way down to our combat zone? You seem to be looking for trouble...' says the other demon, who arrives in last. It jumps to your eyes that he has got a scar across his right eye, a quite distinguishing feature. It looks like you have no way out of this situation, and in your current state, your movements do not seem to respond well. You feel sluggish, and it gets hard to think, just like the previous times you have encountered this same duo.";
	say "     'Boss says we should take what we find interesting. I find this cute [boygirl] interesting. What do you say, brother? Should we?' asks the demon in front of you to the scarred one, as the latter puts a large hand over your shoulder from behind you, a fiery touch that nearly burns your skin. 'Well, I suppose [SubjectPro] was already interested in seeing our nice hideout, and [SubjectPro] almost got there, were it not for the trick Mogdraz taught us to deceive stalkers. Illusion magic! One snap of fingers and bam, nothing is as it was! Pretty cool, right?' You believe that question was directed at you, but the uncertainty of it left you speechless as they continued to speak. 'Well, now...'";
	WaitLineBreak;
	say "     The demon in front of you steps towards you as he lays a finger below your chin, then trailing down over to your chest... 'We'll have to tie you up and cover your head with something. Doesn't mean you can't come willingly, though. Mogdraz ordered us to take you in, and we have the means to subdue you, so you have no choice but to come. Still, how unpleasant it would be if we had to force you...!' As he glares at you, an extremely burning feeling forms on top of your spine, as if threatening to run down and drop you numb to the ground. There really is no way out of this, as you were ambushed and caught off guard by the demons. Any attempts to fight them would result in ultimate failure. But if you do not wish to come willingly, you will have to risk it.";
	say "     [bold type]Do you wish to come with the demons willingly?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Tell them you consent.";
	say "     ([link]N[as]n[end link]) - Look for an opportunity and try to run away.";
	if player consents:
		BurnsLikeHell4;
	else:
		BurnsLikeHell99;

to BurnsLikeHell99:
	say "     There is no way you are going to comply to what some random demons tell you to do, even if you have to fight at your weakened state! You do not answer for a while, and for brief seconds, they are caught by a distraction... 'Oh, come on, we don't have all the patience in the world to...' And that is where you start running away from them. It looks like they took enough time to react before...! Before... that burning sensation spreads through your body and erases any output from your brain to your muscles. You fall face-first onto the floor, your arms and legs having been left completely numb and without responding. What have they done to you...?! 'Well, this is what I feared. Which is why we come prepared for those pesky ones who think they can outrun us. Too bad for you, right?'";
	say "     The duo throws a laugh at you as you remain completely helpless, collapsed on the ground, and without being able to move, mocking your pathetic attempt at escaping. It looks like you failed.";
	say "     'Now, be a good [boygirl] and let us tie up you nice and tight, while we prepare you for the trip. Not like you have a choice now, right?' says one of them, laughing as they painfully tie your arms and legs together before covering your head with a hood. The next thing you perceive is you being raised and thrown across one of their shoulders, as they start walking away with you.";
	now Stamina of Arad is 1; [Player ran away...]
	now Stamina of Egran is 1; [...so both will remember that]
	say "[MogdrazIntro]";

to BurnsLikeHell4: [very final stage]
	say "     Since you really do not have any other choice, and do not see any harm in doing what they say, you say yes, that you will come willingly. 'Oh, good choice! Now that is someone with proper manners, not refusing an invitation!' Well, it would be a kidnapping, otherwise. 'Very well... How about you follow us into this alley over here? We will... prepare you for the trip, there.' one of them tells you, and as you have already decided to do what they say, you simply walk with them towards the very somber alley they indicated. The demons remain close to you, so close that their arms are touching you, not giving you any chance to bail, even if you wanted to. Then, you make a stop, and naturally, you wonder why.";
	say "     'Maybe we started this off with the wrong foot. Me and my friend are merely doing community service.' one of them says, putting his hand over your shoulder again, but this time, without the burning palm. 'Yeah...' says the other, as he continues 'We are simply clearing the district off any potential threats to the business, you know? It's not good to have so many sex addicts out here... We can hide ourselves from them, but we can't hide our patrons... They inevitably stumble across these predators and then... no money for us.' Then, it is the other speaking. 'We just need to take you like that because we don't know what Mogdraz wants to do with you, and in case he didn't want you to know where we were based, then we wouldn't have to do anything... less pleasant to you.'";
	WaitLineBreak;
	say "     'Are we cool?' they ask, and you give them a nod... for now, at least. 'Alright! So, stay put while we get this done. You're a cool person! I think boss will like you.' With this said, the demons carefully tie your arms and legs together before covering your head with a hood. The next thing you perceive is you being raised and thrown across one of their shoulders, as they start walking away with you.";
	say "[MogdrazIntro]";

[---]

Table of GameEventIDs (continued)
Object	Name
Hellish Introduction	"Hellish Introduction"

Hellish Introduction is a situation.
ResolveFunction of Hellish Introduction is "".
Sarea of Hellish Introduction is "Nowhere".

when play begins:
	add Hellish Introduction to badspots of DemonList;

[ Resolution stages                          ]
[   0: Mogdraz not met                       ]
[   1: Met Mogdraz                           ]
[   2: Mogdraz met Xaedihr                   ]

to say MogdrazIntro:
	WaitLineBreak;
	say "     The next moments are spent swinging around slightly while positioned across his shoulder. It doesn't seem that the demon carried you around for a long distance, but you're unable to perceive your current location. You begin to hear your surroundings closing in, as if you have entered an interior, going downwards by what seems to be stairs, and then there's music playing. Reminds you of a lounge, or some sort of nightclub with easy listening sounds, and some people on the background. But you don't seem to get past the center of the noise, instead it looks like you were brought through another passage into the back of the building. This is just you trying to guess where you are being taken, things could be very different by the time your hood is removed...";
	WaitLineBreak;
	project figure of Mogdraz_clothed_icon;
	say "     Then, you are hurled into something soft. Feels like a bed of some sort, and you feel someone, or something... pulling your hood out. Your eyes take time to get used to the light, and only then you can check your surroundings. A bedroom of some sort, painted and decorated in black and red, with all kinds of... Tools and ropes, sex toys... and someone watching you. At first glance, it seems like a demon similar to the others you have encountered, except... when your vision focuses on him, you realize he is somewhat different. His dark crimson visage stands at a significant higher height, sporting a very muscular body, and his horns shift directions more often before attaining the tauric shape, being also sharper and looking frightening, with a floating fireball between them defying all the laws of physics. As he stands closer to you, there is a heating sensation reminding you of the hottest flames, and you realize that the name [']Hellfire['] must have some meaning to it, after all...";
	say "     It does not take much to conclude that this demon is the so often mentioned Master Mogdraz, the Demon Lord of the Hellfire Demons. 'And so, another soul is brought into my humble home. Why, we must have seen something in you... you wonder?' he says, a clearly masculine but very deep voice which certainly has a demonic tone to it. 'Pardon the eagerness of my minions, but they are always seeking new additions to our little... family, by my order. I suppose you've had the chance to get [italic type]intimate[roman type] with some of them? If not, well... it is always as good a time as any to get started... I suppose.' His tone does not strike you as threatening nor intimidating, but it is certainly odd. You are not quite sure what to think of this, just yet, but it looks like you have no way out until he allows.";
	WaitLineBreak;
	say "     'But one must not forget their manners. My name is Mogdraz, as you may have already concluded. I am the owner of this establishment, the Hellfire Club... named after my own demon class, in case you didn't get it. Well, I suppose there are more original names but, seriously, who has time for that...?' You blink, as he continues speaking. 'The Hellfire Demons are under my command, and I may have instructed them to collect someone with certain... skills. I would even say traits, or, well... aspirations...' he crouches down to keep his head at the same level as yours, and puts one of his long clawed fingers below your chin. 'Perhaps even, deepest desires...?' Your heart jumps as he looks into your eyes, and your attention span dillutes into the impossibly deep gaze of those yellow orbs, drawing your senses into a whirl.";
	if player is dominant:
		WaitLineBreak;
		say "     'So... you seek power over others. One slave, a couple, or a full harem of them, independently of their own willingness, it doesn't really matter to you as long as your pleasure is achieved... Or perhaps there is something deep down within you that seeks unconditional adoration, someone whose mind would be solely focused on you... no matter their state of sanity. Well, [bold type]Dominants[roman type] are not always like this, however, some may also simply crave to give affection and security to a more submissive lover... Which are you[if player is not defaultnamed], dear [name of player][else], I wonder[end if]...? Well, I know... but... do you?' He gives you a grin that sends shivers down your spine, and you feel like he knows your deepest darkest secrets, even those you don't remember you have.";
	else if player is submissive:
		WaitLineBreak;
		say "     'You have the urge to worship and serve another person, or be tossed around, used and abused by the most eager to claim you...? Or is it simply the lack of willingness to make decisions by yourself, so you would rather rely on someone else to do the thinking? Oh, to let your mind break in favor for someone much more powerful, much more worthy, in exchange of eternal servitude... Is that what you crave for? Or are you simply looking for a lover who would make you feel comfortable and safe in their embrace...? All the bitches are submissives, but not all the [bold type]Submissives[roman type] desire to become someone else's bitch... So, which are you[if player is not defaultnamed], dear [name of player][else], I wonder[end if]...? Well, I know... but... do you?' He gives you a grin that sends shivers down your spine, and you feel like he knows your deepest darkest secrets, even those you don't remember you have.";
	else:
		WaitLineBreak;
		say "     'Neither dominant nor submissive... No inclination towards any of the two? That may mean a lot of things. Either you are a versatile, and do not mind being in either sides of the power game, or you don't really know what you want! Let us hope that it's the first[if player is not defaultnamed], dear [name of player][else], my dear[end if], and not the last... Because that would be shameful.' You feel like he is judging you, but you clearly do not want to contest his words. The grin he gives you sends shivers down your spine, and you feel like he knows your deepest darkest secrets, even those you don't remember you have.";
	if player is kinky:
		WaitLineBreak;
		say "     He does not stop there, locking his gaze with yours once again. 'Oh, there is more... A very long list of special... hm... tastes.' he gives you a smirk as he slowly strokes your cheek. 'I totally understand you. Why would one stick to vanilla practices if... There is so much more to be had? I admit, this is my favorite trait. Always a good surprise to encounter someone [bold type]Kinky[roman type], such as yourself.'";
	if "MPreg" is listed in feats of Player and player is male and player is not female:
		WaitLineBreak;
		say "     His eyes open wide once again, to notice something else in you. 'Now, how peculiar. You are a [bold type]male[roman type], yet... You have the inner desire to [bold type]bear the children[roman type] of other men, or... well, something with the ability to breed. Are you trying to tell me something?' he asks, laughing in the end. 'Ahh... I jest, I jest. Although I think the orcs are well aware of the perks of having dedicated breeders... Perhaps I should consider, given my most recent acquisitions...' he then also gives you a wide grin with his sharp teeth of his as he takes a glance at you with obvious mischievous intent.";
	if "Curious" is listed in feats of Player:
		WaitLineBreak;
		say "     Yet, his gaze remains locked in yours, and widen at his new discovery. 'Well well well! A [bold type]Curious[roman type] fellow, too? My... I can only [italic type]imagine[roman type] the troubles you have ran into during your adventures. Remember that, as you mortals love to say... the curiosity... killed the cat. So[if BodyName of Player is listed in infections of FelineList], given your particularly feline appearance, I would, perhaps, double my efforts, kitten[else], I would be very careful if I were you and was given the choice to dive into the unknown[end if]... We never know what we are ought to find.' His voice sounds cryptic, dark and even quite unsettling, but you feel inclined to consider his words, nonetheless.";
	if "Horny Bastard" is listed in feats of Player:
		WaitLineBreak;
		say "     'And obviously, the audacity of a [bold type]Horny Bastard[roman type]...! Did this turn you on, at all?! I should throw you into the dungeons already, but I'm afraid you would enjoy that a bit too much. So, instead, I'll proceed to ignore that little fact. Or perhaps consider its existence for a later purpose, given the fact it might prove useful... Oh, the insatiable deviants would definitely appreciate someone who never gets sick of carnal pleasures...'";
	else if "Cold Fish" is listed in feats of Player:
		WaitLineBreak;
		say "     'Oh, I see I see... You hold a peculiar, yet quite fascinating hold of your own libido, very much like a [bold type]Cold Fish[roman type]... That actually might be good for you... Boring, but... good, I suppose. If you intend to not have any kind of sexual intercourse, that is. Well, it might keep you safe out there. Better not touch anything strange, still...'";
	WaitLineBreak;
	say "     The demon pulls away from you, returning to stand in front of you, then walks around the room slowly as he speaks. 'You see, I do run a business, and there is one thing I am looking for. Two, in fact! Patrons and Escorts! If you fancy demons, you can pay upfront, and I will provide you with a professional one of your choice... Or, if you wish to be on the other side, taking your clients and getting paid a share, you can do so too, and I would be very, very grateful... My clientele can be quite demanding, as expected from void travelers...! However, if your only desire is matching up with other patrons, you may do so for free at the lounge. Such a fine deal, is it not?' He accompanies you out of the room and into the lounge he mentioned. 'Anything else you want to discuss, I will be... around. Someone has to keep an eye open... And you now know that mine can see very well.'";
	say "     As he finishes explaining things, he proceeds to show the space around. It is a fairly normal looking nightclub, at first glance, but you know it hides more than what meets the eye, especially the fact actual void travelers seem to visit this place. 'I am not going to keep you here, obviously. But you are welcome anytime... You, and anyone you desire to bring along.' Mogdraz shows you the remote location of the Hellfire Club within the Red Light District, and you now know how to arrive at the this location by yourself. Hopefully, you haven't made a deal with the wrong devil...";
	now resolution of Hellish Introduction is 1;
	now Burns Like Hell is resolved;
	move player to Hellfire Club;
	AddNavPoint Hellfire Club;
	connect Hellfire Club;
	say "     If you wish to start any job, speak to [bold type]Mogdraz[roman type] in the club. The club's bartender [bold type]Toron[roman type] will be able to provide special drinks for your adventures.";
	WaitLineBreak;
	if demonologist is listed in companionList of Player:
		say "     Just as you're about to leave, a familiar silhouette shows up by the entrance, walking towards you. Judging from the absence of guards, you come to a pretty obvious conclusion of who it is. Your companion Xaedihr has followed you back here, and he made sure to clear his own way...";
		WaitLineBreak;
		MogdrazXaedihr;

instead of going north from Crimson Street while (resolution of Hellish Introduction is 1 and demonologist is listed in companionList of Player):
	say "     Just as you're about to make an entrance, your sorcerer friend immediately bends the will of the hellfire demons standing as guards, forcing them to collapse on the ground with powerful magic. 'I knew something was going on here.' You try to stop him, to no avail, as he charges ahead into the club. There is nothing you can do but to follow after him, hoping he doesn't make any further trouble...";
	WaitLineBreak;
	MogdrazXaedihr;

to MogdrazXaedihr:
	say "     'So this is where they take the kidnapped victims. Thank you for showing me.' he says, as the club goes into an uproar about an intruder having made it through. Mogdraz storms out of his corner with several demons accompanying him towards you both as he shouts 'What is the meaning of this?!' inquisitively. You urge to tell him Xaedihr is your friend and that he means no harm, looking back at the mage with a pleading look to not cause any trouble here. Although you're surprised by the sorcerer's reaction... His eyes widen and he's speechless for a moment, Mogdraz's expression also changing abruptly once they see each other. You have no idea what is going on, but surely this must be something important, so you do not interfere.";
	say "     'Mogdraz?! Is that really you?!' asks the half-demon, taking a step towards the towering hellfire master. 'Xaedihr...! What a surprise, I wasn't expecting to see you...! What are you doing here, didn't you have business back in the...?' Mogdraz doesn't finish the sentence, being instead hushed by the sorcerer's gestures, seemingly asking for silence. 'Not... Here. I... I'd prefer to talk in private.' Xaedihr gestures to you meanwhile 'You can come too. Since I have already dragged you into this...' It looks like they know each other already, which is intriguing, to say the least. Mogdraz signals both of you to follow him into a private room not far deep into the back corridors, taking a turn left into some sort of fancy office. Looks like you'll have your answers soon enough, however they both remain silent as the club owner indicates two seats, for you and Xaedihr, and takes his own on a grand velvet red chair on the other side of the desk.";
	WaitLineBreak;
	say "     Finally, the silence is broken. Xaedihr speaks first. 'So... Mogdraz was...' - he pauses, his words coming difficult - '... My father's personal assistant. He... He's the reason I managed to cross over from my realm to yours.' You don't quite know what that means, but it is surely an indication that Mogdraz is more than what he seems. The hellfire master explains himself shortly after. 'Yes, well... Master Viel was a bit of a nutjob. I couldn't stand him. Then I discovered his son was plotting against him, and had to take a side. Obviously, I chose his son's, and sent him to this realm to start anew. To save him from the horrid life he would have under that maniac's influence.' He turns to the sorcerer afterwards. 'But I wouldn't know he'd be HERE, in this exact realm! And with a crimson ruby, no less!' he adds, making a rather inquisitive tone as his piercing fiery gaze is fixated on Xaedihr. 'You know I had to try! There's no way I could just let him win... Not like this. One day I will make justice. I will stop that fiend.'";
	say "     Xaedihr's voice shows anger and revolt for the man who put him in the universe, and you see him clenching his fists. 'I will make sure he's turned into nothing but demonic waste, one day.' Mogdraz leans back on his chair, tilting his head while looking at the sorcerer with an intrigued look. 'Well, it seems like you're finding it a bit difficult to just move on, hm... I guess all I can do is offer my help, if you need. Although I don't intend to return to that doomed place, I can send scouts and provide information, if that helps. The calm life I lead here is everything I could ask for.' Facing Mogdraz's generosity, Xaedihr nods politely. 'Thank you. That would mean a lot to me. Though... I must ask something.' Mogdraz patiently awaits for his question, then the half-demon follows. 'What are all these kidnappings for? Why did you order your lackeys to capture my friend?'";
	WaitLineBreak;
	say "     He does not take long to answer that. 'One has to make a living. You, of all people, should know what being a demon entails.' Xaedihr's gaze shifts away from the Demon Lord's, and there is some tension in the air. You are not quite sure of what this means, but the sorcerer cuts the silence briefly enough. 'Not my friend. I owe him, as well.' Mogdraz nods, and looks at you. 'I would never... [SubjectPro] is only a good friend I wish to keep on my side, that's all.' A chill runs down your spine as his fiery eyes lock on yours. 'I don't intend to make the same mistakes your father did.' he says, turning his head back to Xaedihr. 'His actions show weakness. A Demon Lord should be better than that. He should've known better...'";
	WaitLineBreak;
	say "     After this intriguing conversation, Mogdraz accompanies both you and Xaedihr towards the exit. The sorcerer makes a polite bow as the Club's owner responds in the same manner. 'I shall send you what I learn, Xaedihr. Just be careful and don't do anything you'd regret.' says Mogdraz, as you and Xaedihr take your leave.";
	say "     The mage now turns to you with a somewhat concerned expression. 'Tread carefully with Mogdraz. While I may owe him my life and freedom, he is a demon, after all. I suppose I benefit more from keeping him as an ally, but you should never, in any circumstance, trust demons completely. They always have something up their sleeve.' he says, in the tone of a warning. Clearly, he does not trust Mogdraz completely, but does not actually dislike him. Given the sorcerer's general feeling towards hellspawns, this feels like a very contrasting exception.";
	say "     You suppose you could try asking Mogdraz a bit more about his relationship with Xaedihr and try to understand this matter a little better. It is clear their relationship is far more complex than it seems.";
	now resolution of Hellish Introduction is 2;

[***********************************************************]
Section 2 - Hellfire Club
[***********************************************************]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Club	"Hellfire Club"

Hellfire Club is a room. It is a fasttravel. Hellfire Club is private.
The earea of Hellfire Club is "Red".
Description of Hellfire Club is "[HellfireClubDesc]".

to say HellfireClubDesc:
	say "     You're standing outside of the Hellfire Club, a place hidden from the common eyes, owned by the infamous Master Mogdraz so referred by the demons which the club is named after. They seem to have acquired their own source of energy, which you do not care to get an explanation from, since it's probably demonic stuff. Inside, [if daytimer is night]the party seems to be ongoing, a barely audible sound of lounge music playing[else]things seem pretty calm, not an audible sound coming from there[end if]. It's quite an infernal-themed club, great for the kinky and for the curious about the occult people, like demons. Guarding the entrance are two burly hellfire demons, eyeing you with a smirk, but they do not stop you thanks to the order given by Mogdraz himself to allow you free entry. You could head further inside the club, or head back south into the ominous and oddly clean Crimson Street.";

to connect Hellfire Club:
	change the south exit of Hellfire Club to Crimson Street;
	change the north exit of Crimson Street to Hellfire Club;
	AddNavPoint Hellfire Club;

a postimport rule: [bugfixing rules for players that import savegames]
	if resolution of Hellish Introduction > 0: [event resolved the right way, room not connected yet]
		connect Hellfire Club;

instead of smelling Hellfire Club:
	say "     It must be the hellfire demons['] musk, but everything smells so delightfully devilish in here that just makes you want to stay. The sweet and masculine musk of attractive demonic creatures is enough to send you into a brief lightheaded state, taking you some time to shake it off.";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Lounge	"Hellfire Lounge"

Hellfire Lounge is a room.
Hellfire Lounge is inside of Hellfire Club. It is sleepsafe.
The earea of Hellfire Lounge is "Red".
Description of Hellfire Lounge is "[HellfireLoungeDesc]".

to say HellfireLoungeDesc:
	say "     The lounge of the Hellfire Club is a spatious environment, with a bar counter on one side and many chairs and seats scattered around, screaming lush and delight wherever you look. Here, [if daytimer is night]the noise isn't unbearable, you're even able to have a normal conversation with anyone without having to raise your voice too much, and the bartender is serving drinks as usual[else]some demon lackeys are cleaning up the seats, tables and corners from the previous night, while the bartender is polishing the drinking glasses[end if]. At the upper floor, the VIP spot, with a complete vision towards the entire lounge is a large and luxurious red velvet sofa, where the owner of the club, the Demon Lord Mogdraz, usually takes his seat, simply observing. Behind the bar counter, to the west, there's a door to the back rooms with a signal prominently saying [']STAFF ONLY[']. To the south is the entrance, where you will be able to find the twin guards.";

instead of smelling Hellfire Lounge:
	say "     It must be the hellfire demons musk, but everything smells so delightfully devilish in here that just makes you want to stay. The sweet and masculine musk of attractive demonic creatures is enough to send you into a brief lightheaded state, taking you some time to shake it off. There are also other creatures' scents getting mixed together, but you can barely notice them.";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Storage	"Hellfire Storage"

Hellfire Storage is a room.
Hellfire Storage is east of Hellfire Lounge. It is sleepsafe.
The earea of Hellfire Storage is "Red".
Description of Hellfire Storage is "[HellfireStorageDesc]".

to say HellfireStorageDesc:
	say "     This is a more quiet and less visited room located to the right when arriving at the Club from the front entrance, and underneath the VIP floor and Mogdraz's Chambers. It seems to serve simultaneously as a storage room, a crafting room and a place to purchase some demonic, void-related or other exotic items. There are boxes filled with a vast assorted set of different objects, materials, artifacts, equipment and even weapons. Currently, there is only one person in here, a tall draconic demoness watching after the place. She is also the one you should go to if you are interested in spending your [bold type]Obsidian Coins[roman type] in exchange for stuff you may only be able to find here.";

instead of smelling Hellfire Storage:
	say "     This room's smell doesn't strike you as anything particularly significant. There is only a faint scent of brimstone which is barely noticeable.";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire VIP Floor	"Hellfire VIP Floor"

Hellfire VIP Floor is a room.
Hellfire VIP Floor is above Hellfire Lounge. It is sleepsafe.
The earea of Hellfire VIP Floor is "Red".
Description of Hellfire VIP Floor is "[HellfireVIPFloorDesc]".

to say HellfireVIPFloorDesc:
	say "     The upper floor, reserved for the VIPs, is the place where Mogdraz spends most of his time watching over the club and trading messages with his imp messengers, among other special patrons who occasionally come up to see him. Right at the center, you can see his red velvet sofa, looking very comfortable and offering a broad vision over the entire lounge. Looking down, you can see everything that happens across every corner, and there is an especially direct line of sight towards Toron and Jyneth. Towards east, there is a closed door that would lead to Mogdraz's chambers, and for obvious reasons, it does not seem like you can go in there.";

instead of smelling Hellfire VIP Floor:
	say "     Curiously, the VIP floor does not smell like the rest of the place. It is, instead, perfumed with a kind of an incense that softly tingles your nostrils, its scent similar to some sort of plant you cannot quite identify. It actually feels very pleasant...";
	if Perception of Player >= 15:
		say "     [bold type]Perception Bonus (15)[roman type]: [italic type]Mogdraz must have quite refined tastes.[roman type][line break]";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Corridor	"Hellfire Corridor"

Hellfire Corridor is a room. Hellfire Corridor is private. It is sleepsafe.
The earea of Hellfire Corridor is "Red".
Description of Hellfire Corridor is "[HellfireCorridorDesc]".

to say HellfireCorridorDesc:
	say "     Past the Staff door, there is a long and dark corridor, leading to lots of different rooms. Some have their lights lit from inside, and you can hear a few grunts and moans occasionally coming from behind the walls. Apart from these sounds, there's only silence. You can only head down a stairway that seems to lead to the dungeon where captives are held, but there is a door that spells 'TO THE UNKNOWN' north of your current position.";

to connect Hellfire Corridor:
	change the west exit of Hellfire Lounge to Hellfire Corridor;
	change the east exit of Hellfire Corridor to Hellfire Lounge;

a postimport rule: [bugfixing rules for players that import savegames]
	if resolution of Ambush The Purifier > 5 and resolution of Ambush The Purifier < 99: [event resolved this way, room not connected yet]
		connect Hellfire Corridor;

instead of smelling Hellfire Corridor:
	say "     It smells strongly of sex, and especially demonic musk. This is a place only the trusted clientele and staff members are allowed, so that is to be expected.";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Unknown	"Hellfire Unknown"

Hellfire Unknown is a room.
Hellfire Unknown is north of Hellfire Corridor. It is sleepsafe.
The earea of Hellfire Unknown is "Red".
Description of Hellfire Unknown is "[HellfireUnknownDesc]".

to say HellfireUnknownDesc:
	say "     This is a place of the unknown, where emptyness meets reality. It is no longer the Club, but it is the only safe spot before you dive into uncertainty. You better [bold type]proceed with caution[roman type] before you end up losing yourself. To the [bold type]North lies the Void Realm[roman type], where not even the most experienced travelers dare to venture within without a destination.";

instead of smelling Hellfire Unknown:
	say "     It smells of nothing.";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire VR	"Hellfire VR"

Hellfire VR is a room.
Hellfire VR is north of Hellfire Unknown.
The earea of Hellfire VR is "Red".
Description of Hellfire VR is "[HellfireVRDesc]".

to say HellfireVRDesc:
	say "     Into the Unknown...";

instead of smelling Hellfire VR:
	say "     It smells of nothing.";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Dungeon	"Hellfire Dungeon"

Hellfire Dungeon is a room.
Hellfire Dungeon is below Hellfire Corridor. It is sleepsafe.
The earea of Hellfire Dungeon is "Red".
Description of Hellfire Dungeon is "[HellfireDungeonDesc]".

to say HellfireDungeonDesc:
	say "     One of the darkest places in the entire Hellfire Club establishment, the dungeon is where Mogdraz's most valuable slaves are kept, among others that he personally fancies. Though this isn't what you expect from a regular dungeon. The place has little light, but the cells behind the obsidian bars are actually rooms with good conditions for the captives to inhabit. Over a specific area, however, there are racks and other mechanisms that serve to bind and tie, together with a variety of sex toys and tools for a complete BDSM session, if one ever wanted. This definitely seems to be the place to enact some very kinky fun, ";
	if Resolution of Ambush The Purifier >= 7 and Resolution of Ambush The Purifier < 99:
		say "and you can occasionally hear someone moaning from inside the rooms.";
	else:
		say "but right now, it is empty and not serving any purpose.";

instead of smelling Hellfire Dungeon:
	say "     It smells strongly of sex, and especially demonic musk. This is a place only the trusted clientele and staff members are allowed, so that is to be expected.";

[--------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Cell One	"Hellfire Cell One"

Hellfire Cell One is a room. It is sleepsafe.
The earea of Hellfire Cell One is "Red".
Description of Hellfire Cell One is "[HellfireCellOneDesc]".

to connect Hellfire Cell One:
	change the east exit of Hellfire Dungeon to Hellfire Cell One;
	change the west exit of Hellfire Cell One to Hellfire Dungeon;

to say HellfireCellOneDesc:
	say "     The Cell One is a quite luxurious bedroom with a large bed covered with velvet red sheets, and the dimly illuminated walls are adorned with lots of different artworks depicting sexual acts between demonic entities, humans and everything in between. You can see plenty of tools and sex toys scattered around the area as well, and the entire place has a sort of a lusty aura about it.";

instead of smelling Hellfire Cell One:
	say "     It smells strongly of sex, and especially demonic musk. This is a place only the trusted clientele and staff members are allowed, so that is to be expected.";

[--------------------------------------------------------------------------]

[***********************************************************]
Section 3 - Escort Services
[***********************************************************]

HCEClientSatisfaction is a number that varies. HCEClientSatisfaction is usually 0. [@TagNotSaved]
HellfireEscortCooldown is a number that varies. HellfireEscortCooldown is usually 20000. [@TagNotSaved]

Table of GameEventIDs (continued)
Object	Name
HellfireEscort	"HellfireEscort"

HellfireEscort is a situation.
ResolveFunction of HellfireEscort is "".
Sarea of HellfireEscort is "Nowhere".

a postimport rule:
	if Resolution of HellfireEscort is 0:
		now Libido of Mogdraz is 0;

[ RESOLUTION STAGES ]
[ 99 - Escort is locked forever ]

[---]

to say HellfireClubEscort:
	if Resolution of HellfireEscort is 0: [first timer]
		if player is purehuman:
			say "     'Impressive. Charmingly human, despite the days that run by. I am certain that it will please most of my clients, if not all of them...' he says, pleased with what he sees.";
		else:
			say "     'You've gathered a few transformations here and there, but I suppose you're good enough. Would be better if you were fully human looking, though... And I know there are ways you can achieve that. We don't have to let them know you were always purely a human, either way...' he says with a mischievous smile.";
			WaitLineBreak;
		say "     He then starts explaining what would working for him mean. 'Very well, the rules are quite simple. Don't piss anyone off, do what you are told, and you get paid in the end. We don't talk about anything that happens while in the VIP rooms. If someone gets too abusive, however... Let me know. I have better uses for those who mess with my employees.' The instructions seem clear enough, so far, so you let him continue. 'You will be assigned a room where you shall be staying, then someone will come to you once they are sorted. Your job is to give them the best time of their life, if possible. If not, well, just make them feel... not bad. But I'm sure you can do better than that.' After listening to all the observations Mogdraz made, you are prompted with another question...";
		Linebreak;
		say "     'Do you have any [bold type]gender preference[roman type] for your clients? Best I not assume that you would know how to work with everything...'";
		say "     [link](1)[as]1[end link] - Tell him you have a preference for males.";
		say "     [link](2)[as]2[end link] - Tell him you have a preference for males and wink at him.";
		say "     [link](3)[as]3[end link] - State your preference for females.";
		say "     [link](4)[as]4[end link] - Let him know you can work with everything.";
		say "     [link](5)[as]5[end link] - Let him know you can work with everything and eye the demon from head to feet.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 5:
			say "Choice? (1-5)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] for male preference, [link]2[end link] for male preference and a flirt with Mogdraz, [link]3[end link] to say you prefer females, [link]4[end link] for no preference, or [link]5[end link] for no preference and a flirt with Mogdraz.";
		if calcnumber is 1:
			say "     You answer his question by stating your preference over masculine encounters. 'I see, I see. I will take that into account when sending them over to you.' he says, with an understanding nod.";
			now HP of Mogdraz is 1;
		else if calcnumber is 2:
			say "     You answer his question by stating your preference over masculine encounters. Big, tough and strong, just like the powerful demon in front of you, as you make that obvious when running your eyes all over his towering frame, ending with your best attempt at a charming wink. He takes a moment to process, then places his hand over your shoulder as he throws a laughter. 'Oh! Really...?' he exclaims as he gently leans towards you. Then, he places his lips very close to your ear, and you hear his deep voice whispering... 'Be careful with what you wish for, though...' For some reason, you felt a chill running down your spine, and something tells you that you should probably take his words seriously.";
			if Libido of Mogdraz is 0:
				now Libido of Mogdraz is 1;
			if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
				increase Lust of Mogdraz by 1;
			say "     The demon lets go of you at this point, returning a devilish grin to his face as he stands up straight once more. 'I see, I see. I will take that into account when sending them over to you.' he says, with an understanding nod.";
			now HP of Mogdraz is 1;
		else if calcnumber is 3:
			say "     You answer his question by stating your preference over feminine encounters. 'I see, I see. I will take that into account when sending them over to you.' he says, with an understanding nod.";
			now HP of Mogdraz is 2;
			now Libido of Mogdraz is 99;
		else if calcnumber is 4:
			say "     You answer his question by letting him know you don't mind anyone of any gender and are ready for anyone, or anything, that comes your way. 'Ah, I appreciate your versatility... And, of course, I shall take that into account.' he says, with an approving nod.";
			now HP of Mogdraz is 3;
		else if calcnumber is 5:
			say "     You answer his question by letting him know you don't mind anyone of any gender and are ready for anyone, or anything, that comes your way... including big, tough and strong demons such as the powerful one in front of you, as you run your eyes all over his towering frame, ending with your best attempt at a charming wink. He takes a moment to process, then places his hand over your shoulder as he throws a laughter. 'Oh! Really...?' he exclaims as he gently leans towards you. Then, he places his lips very close to your ear, and you hear his deep voice whispering... 'Be careful with what you wish for, though...' For some reason, you felt a chill running down your spine, and something tells you that you should probably take his words seriously.";
			if Libido of Mogdraz is 0:
				now Libido of Mogdraz is 1;
			if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
				increase Lust of Mogdraz by 2; [he does like it better when the player is more profitable, so here is a little starting bonus]
			say "     The demon lets go of you at this point, returning a devilish grin to his face as he stands up straight once more. 'I very much appreciate your versatility... And, of course, I shall take that into account.' he says, with an approving nod.";
			now HP of Mogdraz is 3;
		WaitLineBreak;
		now Resolution of HellfireEscort is 1;
	else: [ not the first time -------------------------------------------------------------------------------------------------------------- ]
		if player is purehuman:
			say "     'A bonus for staying human, as I have previously stated. They certainly will pay more if they like what they see...' he says with an approving tone.";
		else:
			say "     'You've gathered a few transformations here and there, but I suppose you're good enough. Would be better if you were fully human looking, though... And I know there are ways you can achieve that. We don't have to let them know you were always purely a human, either way...' he says with a mischievous smile.";
			WaitLineBreak;
	say "     'So, [bold type]are you ready to begin[roman type]? Can be anytime, void travelers pay no mind to schedules...'";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Tell Mogdraz you shall get started.";
	say "     ([link]N[as]n[end link]) - Say you're not interested, for now.";
	if player consents:
		Linebreak;
		say "     Claiming that you are fully available to take an escort job, Mogdraz smiles at you, nodding as he urges you to follow after him. Into the inner side of the club, you head through the back corridors, only illuminated by a dim light that is just enough to allow some vision, passing through many other bedrooms with their doors closed, until you arrive at the only one that is still open. The demon has you enter that room, and you are presented with a bed covered in crimson red sheets, an also red lighting illuminating the space and dark walls with several tools hanging, including sex toys and quite a few other kinky assets. You can hear absolutely nothing from the outside while in here, the sound isolation being extremely good.";
		if Resolution of HellfireEscort is 1: [first time]
			say "     'It should be a fairly normal shift for you, today. Check around the wardrobe, wear something enticing and take the opportunity to get used to how things work... But as I said, if at any point you feel like this isn't for you, or if anyone does anything... well, physically damaging to you, just have me know. A broken employee is of no use, naturally. Though be prepared for some especially demanding clients.' he says, ending with a polite bow as he takes his leave.";
			WaitLineBreak;
			say "[HellfireClubEscortNormal]";
		else:
			say "     'It should be a fairly normal shift for you, today. Hope everything goes well.' he says, ending with a wink as he takes his leave.";
			WaitLineBreak;
			say "[HellfireClubEscortNormal]";
		WaitLineBreak;
		if HCEClientSatisfaction is -2: [a little exception here]
			say "     And indeed, you encounter Mogdraz after running through the lounge, upstairs and directly towards his usual hanging spot. He sees you, and his eyes are wide open in... you really cannot understand if that is an expression of shock, surprise or anger.";
		else:
			say "     Since your shift is over, Mogdraz returns to your room within impeccable punctuality, and waits until you are ready to leave. Once you are, he accompanies you out to overview your performance...";
		wait for any key;
		if HCEClientSatisfaction >= 10: [perfect!]
			say "     'I... am... speechless. And that is a rare thing, I'll let you know. Your stellar performance has definitely been noted. You know what? I will even give you a bigger share, for encouragement. I think you deserve it... But that means you have to keep it up.' he says, a tone of great appreciation obvious in his voice. Is it right to say you might even have [italic type]pleased[roman type] the demon lord? Well, you might have.";
			ItemGain obsidian coin by 7;
			if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
				increase Lust of Mogdraz by 3;
		else if HCEClientSatisfaction >= 7 and HCEClientSatisfaction < 10: [great]
			say "     'I've heard good things about you. I like when I hear good things about my employees, and I usually pay them more. Good work... Make sure you keep that up.' he says, showing good appreciation for how well you have performed.";
			ItemGain obsidian coin by 5;
			if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
				increase Lust of Mogdraz by 2;
		else if HCEClientSatisfaction >= 4 and HCEClientSatisfaction < 7: [average]
			say "     'Here's your share. Much appreciated.' he says, keeping a smile on his face as he hands you a fair payment.";
			if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
				increase Lust of Mogdraz by 1;
			ItemGain obsidian coin by 3;
		else if HCEClientSatisfaction <= 3 and HCEClientSatisfaction > 0: [poor]
			say "     'I've heard you could have done better... but I guess it wasn't [italic type]too[roman type] bad... Just remember that the better you perform, the more they pay, so... I'm afraid this is all I can give you.' he says, his tone being a little condescendent... It seems you were not on your best.";
			ItemGain obsidian coin by 1;
		else if HCEClientSatisfaction is 0: [terrible!]
			say "     'Well... I didn't know someone could be this bad. I mean... Well, there is no payment for you. And please, whatever you did... don't do it again, ever.' While Mogdraz attempts to look as polite as possible, you know you might have made him a bit angry... That will certainly not go in your favor. Perhaps next time, you should think more carefully about your moves.";
			if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
				decrease Lust of Mogdraz by 1;
		else if HCEClientSatisfaction < 0: [you really have done something bad...]
			say "[MogdrazIsVeryUnhappy]";
		say "     You have scored [bold type][HCEClientSatisfaction][roman type]/[italic type]10[roman type]![line break]";
		now HCEClientSatisfaction is 0; [reset]
		now HellfireEscortCooldown is turns;
		if Resolution of HellfireEscort < 2:
			now Resolution of HellfireEscort is 2;
	else:
		Linebreak;
		say "     You thank him for the briefing, but excuse yourself, as you are not quite ready for this task, yet, or take no interest in doing so, at least for now.";

to say MogdrazIsVeryUnhappy:
	if HCEClientSatisfaction is -1: [an incident with one of his lackeys, Hellfire Demon or Demoness]
		say "     'Tell me one good reason I should still let you work for me.' Well, you explain yourself and that the client was just being too forceful, without even letting you know what you would be doing. The only way you had to call for attention was to bite their tongue, though perhaps you did it a bit too hard. 'You physically attacked one of my clients. That's unnacceptable. And obviously, that means you're fired. This is definitely not the right job for you, as you cannot follow simple instructions. I'm sad to say, but... you're a disappointment.'";
		say "     Well, he made his verdict clear. It seems you [bold type]will not be able to work as an Escort ever again[roman type], and that might have ruined any chances you could have had of getting closer to Mogdraz.";
		now Libido of Mogdraz is 99;
		now Resolution of HellfireEscort is 99;
	else if HCEClientSatisfaction is -2: [you ran away from the void goo]
		say "     'What are you... doing here?! You are not supposed to leave your post until...!' You interrupt him, without realizing that is an extremely inpolite thing to do, and rush to explain the situation. 'Oh...' he just says that. He literally only says that interjection as he eyes you with a very, very serious look. Then, he bursts out a laughter. 'Poor Foosablub! I know he isn't the best looking guy, and... well, his physiology really doesn't help him, but there is no need to fear him! He just likes to come over and play with my escorts, that's all... Well, I am not even sure if it's a [']he['], but he didn't seem to mind the pronoun.'";
		say "     So... He was not a wild void beast, as you thought. 'Of course not! Do you think I would let anything in here through that door? The seal is strong, no unregistered void beast would be able to enter my establishment without permission.' You feel like a fool right now, so all you do is apologize to Mogdraz. 'You made me laugh, so I'll forgive you. Although, do be sure to be gentle to Foosablub next time he visits, yes? Usually the other employees find him rather pleasant once they let him touch them. I've heard he has quite the expertise...' he says, grinning in the end, before he dismisses you.";
		WaitLineBreak;
		say "     That... was definitely peculiar. You will receive no payment for this one, but at least you know, what was his name... Fussablob? Foos... whatever, is just a very normal client, and all you have got to do is to be gentle with him... her... or well, it.";

to say HellfireClubEscortNormal: [A roll on various possible encounters]
	let randomnumber be a random number from 1 to 4; [adjust the latter number for the number of options]
	if randomnumber is:
		-- 1:
			if player is dominant:
				if a random chance of 4 in 6 succeeds: [more chance to get a submissive client]
					say "[HellfireClubEscortNormal1LustDemon]"; [Incubus or Succubus]
				else: [one in the dominant clientele is picked instead]
					say "[HellfireClubEscortNormal1HellDemon]"; [Hellfire Demon or Demoness]
			else if player is submissive:
				if a random chance of 4 in 6 succeeds: [more chance to get a dominant client]
					say "[HellfireClubEscortNormal1HellDemon]"; [Hellfire Demon or Demoness]
				else: [one in the submissive clientele is picked, instead]
					say "[HellfireClubEscortNormal1LustDemon]"; [Incubus or Succubus]
			else: [player is versatile (neither submissive nor dominant)]
				if a random chance of 1 in 2 succeeds: [Equal chance of either]
					say "[HellfireClubEscortNormal1LustDemon]"; [Incubus or Succubus]
				else: [one in the dominant clientele is picked instead]
					say "[HellfireClubEscortNormal1HellDemon]"; [Hellfire Demon or Demoness]
		-- 2:
			say "[HellfireClubEscortNormal2]"; [a dark goo demon (genderless, special)]
		-- 3:
			say "[HellfireClubEscortNormal3NightmareHorse]"; [A Nightmare Stallion or Herm Mare (always a top and dominant)]
		-- 4:
			say "[HellfireClubEscortNormal4Lizard]"; [A lizardman or lizardwoman who are oral enthusiasts]

to say HellfireClubEscortNormal1LustDemon:
	if HP of Mogdraz is 1: [player prefers males...]
		say "[HellfireClubEscortNormal1a]"; [a shy incubus (submissive)]
	else if HP of Mogdraz is 2: [player prefers females...]
		say "[HellfireClubEscortNormal1b]"; [a shy succubus (submissive)]
	else: [no gender preference]
		if a random chance of 1 in 2 succeeds:
			say "[HellfireClubEscortNormal1a]"; [a shy incubus (submissive)]
		else:
			say "[HellfireClubEscortNormal1b]"; [a shy succubus (submissive)]

to say HellfireClubEscortNormal1HellDemon:
	if HP of Mogdraz is 1: [player prefers males...]
		say "[HellfireClubEscortNormal1c]"; [an eager Hellfire Demon (dominant)]
	else if HP of Mogdraz is 2: [player prefers females...]
		say "[HellfireClubEscortNormal1d]"; [an eager Hellfire Demoness (dominant)]
	else: [no gender preference]
		if a random chance of 1 in 2 succeeds:
			say "[HellfireClubEscortNormal1c]"; [an eager Hellfire Demon (dominant)]
		else:
			say "[HellfireClubEscortNormal1d]"; [an eager Hellfire Demoness (dominant)]

to say HellfireClubEscortNormal3NightmareHorse:
	if HP of Mogdraz is 1: [player prefers males...]
		say "[HellfireClubEscortNormal3a]"; [a dominant nightmare stallion]
	else if HP of Mogdraz is 2: [player prefers females]
		say "[HellfireClubEscortNormal3b]"; [a dominant nightmare herm mare]
	else: [no gender preference]
		if a random chance of 1 in 2 succeeds:
			say "[HellfireClubEscortNormal3a]"; [a dominant nightmare stallion]
		else:
			say "[HellfireClubEscortNormal3b]"; [a dominant nightmare herm mare]

to say HellfireClubEscortNormal4Lizard:
	if HP of Mogdraz is 1: [player prefers males]
		say "[HellfireClubEscortNormal4a]"; [a lizardman]
	else if HP of Mogdraz is 2: [player prefers females]
		say "[HellfireClubEscortNormal4b]"; [a lizardwoman]
	else: [no gender preference]
		if a random chance of 1 in 2 succeeds:
			say "[HellfireClubEscortNormal4a]"; [a lizardman]
		else:
			say "[HellfireClubEscortNormal4b]"; [a lizardwoman]


[***********************************************************]
Section 3-1 - Escort Normal Scenes
[***********************************************************]

[ NORMAL 1 A - SHY INCUBUS ---------------------------------------------------- ]

to say HellfireClubEscortNormal1a: [a shy incubus]
	project figure of Incubus_clothed_icon;
	say "     After some time readying yourself for what is to come, someone arrives at your room. Surprisingly, it is someone... seemingly shy. As you get a better view at your client, you notice a very handsome man, tall and lean, with plenty of demonic attributes, strongly resembling an incubus, pretty much like the ones normally seen roaming the college. But, as opposed to most who would be more than ready to provoke and seduce you, this one seems particularly faltering. He stands at the door, examining you. By the looks of it, he definitely seems to be a submissive. It appears you will have to take the lead[if player is dominant], which should be very easy for someone as dominant as you are...[else if player is submissive], despite your submissive tendencies...[else]...[end if][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Go to him.";
	say "     ([link]N[as]n[end link]) - Let him come to you.";
	if player consents: ['taking the initiative' path, leads to anal fuck if male, dom pussy ride if female (more points if dominant), starts higher on satisfaction]
		Linebreak;
		now HCEClientSatisfaction is 2;
		say "(+2)[line break]";
		say "     Noticing his hesitation, you decide to step forward and help him come your way, receiving him with a sensual embrace. He freezes for a moment, but is receptive to it, as you have him sit besides you on the bed. He shows a smile that, despite looking devilish, you still perceive it as a quite reserved one. Knowing better than to wait for him to say or do anything, you plant your lips on his, assaulting his mouth with a deep tongue kiss as you pin him down below your [bodydesc of player] body. It does not take long until you start noticing a bump in his crotch, a clear sign of his arousal as you both continue to make out.";
		say "     To further excite him, you grind your sex against his, taking hold of his arms as you hold him in place, the incubus letting out a moan in appreciation, one you feel through your lips as the sound vibrates through the touch of your mouths as tongues are still wrestling with each other";
		if player is male:
			say ". You notice the handsome demon wrapping his legs around you, a certain area of his body becoming more in contact with your growing [cock size desc of player] penis, clearly asking for a certain type of attention[if cock length of player > 9]. He seems particularly enthusiasmed once he realizes how hung you are, pressing his buttocks against the bulge your dick is making as your erection only stiffens[else]. He continues to tempt you to hump against his rear the more your erection stiffens[end if]...";
			if cock length of player > 9: [he likes dicks bigger than his]
				increase HCEClientSatisfaction by 1;
				say "(+1)[line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Proceed to fuck his ass.";
			say "     ([link]N[as]n[end link]) - Suck his cock, instead.";
			if player consents: [male anal fuck]
				Linebreak;
				if player is dominant: [Dominant bonus]
					say "     [italic type]Because you're Dominant, you feel particularly confident about this...[roman type][line break]";
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				else if player is submissive: [Submissive penalty]
					say "     [italic type]Because you're Submissive, you will probably have an issue, here...[roman type][line break]";
					decrease HCEClientSatisfaction by 1;
					say "(-1)[line break]";
				HellfireClubEscortNormal1aFuck;
			else:
				Linebreak;
				HellfireClubEscortNormal1aGiveOral;
		else if player is female:
			increase HCEClientSatisfaction by 1; [having a pussy is an automatic like]
			say ". You notice the handsome demon do some tentative humps against your womanhood, his own erection stiffening as you continue to tease him, while the poor devil remains helplessly turned on. The more you grind your cooch against his junk, the more desperate he sounds for a tight wet cunt wrapped around his demonic dong, a thing only you could provide right now.";
			say "(+1)[line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Give him what he wants, but while you remain in charge.";
			say "     ([link]N[as]n[end link]) - Suck his cock, instead.";
			if player consents: [female pussy catch]
				Linebreak;
				if player is dominant: [Dominant bonus]
					say "     [italic type]Because you're Dominant, you feel particularly confident about this...[roman type][line break]";
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				else if player is submissive: [Submissive penalty]
					say "     [italic type]Your submissive instincts are going to be an issue, here...[roman type][line break]";
					decrease HCEClientSatisfaction by 1;
					say "(-1)[line break]";
				HellfireClubEscortNormal1aGetFucked;
			else:
				Linebreak;
				HellfireClubEscortNormal1aGiveOral;
	else: [Player hasn't taken initiative]
		Linebreak;
		say "     Deciding not to press him, you simply wait for him in the bed. He is still watching you from his position, silently.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Begin to undress and tease him.";
		say "     ([link]N[as]n[end link]) - Do nothing.";
		if player consents: ['letting him come to you' path, starts lower on satisfaction]
			Linebreak;
			say "     Perhaps you should show him some of your attributes to encourage him to come touch you. Trying your best to motivate the shy incubus, you reveal your [if Breast Size of player > 0][breast size desc of player] breasts to him, grabbing and playing with them by yourself for a while[else]chest to him, rubbing your pecs all over with one of your hands for a while[end if] as you lock your gaze on his eyes. You notice a bump on the incubus['] pants, and it becomes obvious that he is turned on by you, as you see go for his crotch to start rubbing at his junk, albeit cautiously.";
			WaitLineBreak;
			say "     This exchange lasts for about a minute, but you manage to capture his interest by continuing to remove more of your attire of choice, revealing more of your [bodydesc of player] body to the handsome devil, and showing off your [bodytype of player] characteristics just to send him the clear message that he is welcome to approach you. At some point, the demon gives in and starts walking towards you as you watch him come, tentatively spreading your legs with your feet still touching the floor, exposing the [if player is male][cock size desc of player] bulge building up in your crotch[else]diminutive underwear that barely covers your already moist labia[end if]. He bites his lip as he gets close to touch you, but instead of actually doing so, he looks up shyly at you, as if awaiting an instruction.";
			now HCEClientSatisfaction is 1;
			say "(+1)[line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Direct him towards your crotch.";
			say "     ([link]N[as]n[end link]) - Simply expose your privates.";
			if player consents: [took initiative + satisfaction]
				Linebreak;
				say "     You look at him, the handsome devil's eyes shifting towards yours, and you place your hand underneath his perfect chin, sliding it gently across his cheek towards his ear, then onto the back of his head in a very tender manner. Then, once you have got a good grip within his soft hair, you carefully pull him towards you and your crotch, having him face your sex from close and in reach of his sweet lips. Slowly, you let him take a good look at your [if player is male]now throbbing erection[else]moist labia[end if], and let him know that you want him to put his best efforts at pleasing you down there with his mouth and tongue. The incubus['] expression is one of thirst for your joy, and while he massages your thighs, he gets ready to give you the best oraljob he is able to.";
				increase HCEClientSatisfaction by 1;
				say "(+1)[line break]";
				HellfireClubEscortNormal1aReceiveOral;
			else: [lacked initiative - satisfaction, but...]
				Linebreak;
				say "     As he stares at you, your hands simply move to take whatever is left of your clothes surrounding your junk, and slide them down. Slowly, [if player is male]your [cock of player] penis jumps out of its confines in a growing, throbbing erection[else]your dripping cunt is revealed to your sweet demon, engorged and ready to be taken in action, which he really seems to like[end if]. Given the fact the incubus still didn't take any move, but appears to be dying to do so, perhaps you could encourage him...";
				if player is male and cock length of player > 9: [he likes dicks bigger than his]
					say "     [italic type]He seems quite entranced by the size of your dick, sticking his eyes onto it for a long, long while... You can only imagine it must be bigger than what he's carrying down there.[roman type][line break]";
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				else if player is female: [having a pussy is an automatic like for the incubus]
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Direct him towards your crotch.";
				say "     ([link]N[as]n[end link]) - Play with yourself until he decides to service you.";
				if player consents: [still gained satisfaction point]
					Linebreak;
					say "     With your sexual organs now in display, you proceed to slip your hand over the back of the incubus['] head and pull it towards your groin, to which he responds by kneeling in front of you and eagerly allow himself to be led. His lips collide against your [if player is male]shaft[else]lower ones[end if] as he takes a moment to put his tongue to work...";
					say "(+1)[line break]";
					increase HCEClientSatisfaction by 1;
				else:
					Linebreak; [lost satisfaction opportunity, he prefers initiative]
					say "     You begin touching yourself in front of the incubus, getting yourself to a higher state of arousal as you feast your eyes on his sublime demonic, yet fairly human looking, body. Despite the fact he is clearly enjoying the view, he still seems to be looking at you, not moving an inch. He seeks your eyes, your hands, your lips, and just doesn't do anything. However, a simple gaze shifting on your behalf from his face to your [if player is male][cock size desc of player] cock[else]womanhood[end if] sends him the right message, as you are greeted by his mouth that so hungrily collides with your junk, even startling you at its sudden nature. However, his soft hands massaging your thighs are an indicative that the devil boy is simply eager to please you.";
				WaitLineBreak;
				HellfireClubEscortNormal1aReceiveOral;
		else:
			say "     You decide to simply stay put until he decides to make a move. A move that he never makes, and soon, the incubus is turning his back and leaving faster than he arrived, leaving you alone in the bedroom. This one didn't go so well...";
			now HCEClientSatisfaction is 0;

to HellfireClubEscortNormal1aReceiveOral:
	WaitLineBreak;
	project figure of Incubus_naked_icon;
	if player is male: [dick]
		say "     The sexy devil boy is already hard at working with your cock and balls, softly massaging your sack with his very soft hand as he runs his lips around your shaft, seeking each throbbing vein and sensitive area with his masterful tongue. He maintains eye contact with you, his crimson demon eyes locked into yours as he teases your manhood with all the expertise he knows, twirling his tongue all over your wet cockhead before he wraps his lips around your shaft, letting it sink in his mouth. His hands continue to massage your balls as he takes your whole length in like a skilled cocksucker, sliding his lips up and down as he focuses on your pulsing erection, sucking it at an increasingly higher pace.";
		say "     He seems hooked up on your dick, given the way he sucks it, so glad to be pleasing you with his mouth, licking it all over and sucking it as far as it goes into his throat, without gagging nor choking on it even once, a truly skilled devil. Twisting his head ever so slightly to provide you with additional stimulation as the insides of his mouth and tongue rub around your glans, whenever he pulls up and slides down your shaft, he gives you one of the best blowjobs you have ever received, at least from a demon boy. You begin to feel a heavy tension in your balls and your lust grows, your cock throbbing harder and harder as he continues to suck you at a rhythm that starts feeling monotonous for a while... Then, he looks at you in the eye.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Grab his head and facefuck him.";
		say "     ([link]N[as]n[end link]) - Lean back and order him to service you.";
		if player consents: [+1 Satisfaction Point]
			Linebreak;
			say "     You put both your hands on each side of his head and pull it all the way down your length, making him take your whole cock inside as you take charge. Well, it seems [bold type]he likes this[roman type], as a glance over his bits allows you to see his throbbing erection as well, which keeps on jumping as you thrust into his mouth. With several more poundings, you feel yourself coming closer to the point of no return, so you shift towards deeper and slower motions as your load continues to build up, right until the last second...";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		else:
			Linebreak;
			say "     With some impatience, you order him to continue and pick up the pace, and he does so eagerly. Sinking his mouth deeper on your shaft, he continues to suck you with diligence, pushing your dick deeper down his throat with each move. The incubus himself seems to have built a sizable erection of his own, which keeps on jumping as he blows you. After a good amount of sucking and slurping, you feel yourself coming closer to the point of no return, so you try to hold his eagerness by encouraging slower movements, which turns out to be such a horribly delightful tease for you right until the last second, as your load continues to build up...";
		if "Horny Bastard" is listed in feats of Player:
			say "     [italic type]You're such a horny bastard and your dick stood so hard that the devil boy was delighted during the whole process.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		say "     Then, you burst out a joyful load that coats the insides of the devil boy's mouth. He happily slurps and swallows everything he can as you continue to pump your jizz inside him, loving every second of your thick blasts with audible gulps, then... You are left in a post-sex bliss, looking down at the incubus who is still on his knees between your legs, tasting his well-deserved meal. He smiles - or rather, grins - at you as he gets up, and somehow you feel really, really tired...";
		HCEFinalSatisfactionBonus;
	else if player is female: [pussy]
		say "     The sexy devil boy is already hard at working with your womanhood, softly massaging your thighs with his very soft hands as he runs his lips around your moist labia, seeking the pleasure spots with care as he delivers masterful, gentle kisses. He maintains eye contact with you, his crimson demon eyes locked into yours as he teases your sex with all the expertise he knows, twirling his tongue all over your wet cooch before he slips it deeper, his lips now fully embracing your yearning cunt as he proceeds to make out with it. You feel his tongue in you after a while, licking at the right places and providing you enough stimulation to drive you wild in pleasure.";
		say "     He seems hooked up on your pussy, given the way he licks it, so glad to be pleasing you with his mouth as he pushes his tongue deeper inside your wet curls, effectively tonguefucking you while moving it in circles and wiggling all over. Not one time he has to stop nor interrupt this process, he does everything like a trully skilled devil, even twisting his head ever so slightly to get better angles in order to provide you with additional stimulation. This has to be one of the best cunnilingus you have ever had, at least from a demon boy, who certainly seems to know what he is doing. There is a heavy tension building in your groin and spreading all over your body, something urging you to go harder on the handsome incubus... And him looking at you in the eye really helps that feeling.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Grab his head and take charge.";
		say "     ([link]N[as]n[end link]) - Lean back and order him to service you.";
		if player consents: [+1 Satisfaction Point]
			Linebreak;
			say "     You put both your hands on each side of his head and pull it against your groin, almost smothering the demon's face with your pussy as you grind it all over, soaking him in your juices as he does his best to continue to lick you.  Well, it seems [bold type]he likes this[roman type], as a glance over his bits allows you to see his throbbing erection as well, which keeps on jumping as he tastes your womanhood with all the eagerness he can bolster. After a while, the pleasure begins to take over your body, senses and thoughts, inevitably approaching you close to that sweet desired climax...";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		else:
			Linebreak;
			say "     With some impatience, you order him to continue and pick up the pace, and he does so eagerly. Sinking his mouth deeper in your sex, he proceeds to deeply kiss it and shove his tongue as deep as he can, trying his very best to shake the lust inside you and throw it over the edge. He does not seem to mind this, as you have given him all the freedom he could ever wanted, while the incubus himself seems to have built a sizable erection of his own, which keeps on jumping as he eats your cunt. After a good amount of time down there, you feel yourself coming closer to the point of no return, so you try to hold his eagerness by encouraging slower movements, which turns out to be such a horribly delightful tease for you right until the last second, as your climax treads close...";
		if "Horny Bastard" is listed in feats of Player:
			say "     [italic type]You're such a horny bastard and your cunt remained so wet that the devil boy was delighted during the whole process.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		say "     Then, you burst out a joyful orgasm in the form of a wave of hot pleasure that runs down your whole body, making you twitch in bliss. The handsome devil also seems pleased that you have hit the edge, and continues to stroke you until it subsides, leaving only a grin on his face as you attempt to catch your breath. Somehow, you feel very, very tired as he gets up to leave...";
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1aGiveOral:
	project figure of Incubus_naked_icon;
	say "     But you do not intend to give him what he is trying to get. Instead, you push him over to the bed and flip around to stand in front of him, kneeling down between his legs as you handle his nine incher of a dong, already throbbing hard at the mere hint of your touch, which then becomes more than that and, then, your hands are placed around his shaft, stroking it gently. You want to take his cock in your mouth, and you will do so, diving deep into it by leaning your head over so your lips touch that glistening head, and putting your tongue around it for a taste. It is surprisingly sweet, delightfully so, that it only encourages you to continue your work, and soon you are wrapping your lips around his cock and letting it in your mouth.";
	say "     You feel it throb with desire as you press it in deeper towards your throat, giving him your best deepthroat skills in about a few moments, after feeling his whole pulsing rod with all the required tenderness to make him rock hard. He responds favorably, leaning his head back and enjoying the sensations you are providing him with, a soft moan escaping the demon boy's lips as you keep blowing his manhood. With one hand on his full sack, you proceed to massage his orbs at the same time, while your free hand helps with additional stroking around his shaft when there is space for it. The sweet taste of his precum is enough to drive you a bit wilder in lust...";
	WaitLineBreak;
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]For someone who is always horny such as you, it is easy to keep your enthusiasm about blowing a sexy incubus such as him, which has positive effects on him.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	say "     As you continue your work, you notice that the demon's balls begin to contract, moving up as his boner feel like a hard stone, throbbing and pulsing like mad. You know this to be the inevitable sign that he is about to orgasm, so you shift to only using your hands as you pull your lips off his dick. Naturally, you continue to stroke faster and faster, and as he twitches and squirms around, he delivers a hard and generous load that coats his abs and spreads towards the bedsheets for the next seconds. More and more of that sweet demonic seed keeps pumping out while you jerk him off, until it finally subsides. He looks at you with a mischievous grin, then stands up and leaves...";
	say "     Naked, soaked in his own cum and with his dandling half-erection swinging with each step he takes forward. You are simply given an opportunity to eye his bubble butt as he walks away. Hopefully, that satisfied him. You do begin to feel very tired all of the sudden, though...";
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1aFuck: [males only]
	project figure of Incubus_naked_icon;
	say "     With him already in position, you flip him over and throw him onto the bed as you take your [cock of player] penis out, throbbing with all the eagerness it needs to be put to work.";
	WaitLineBreak;
	say "     Pressing the tip of your [cock size desc of player] dong against the demon's asshole, you are met with the softest sensation, as his pucker feels receptive right away, without the need for any previous action. Still, out of cortesy, you decide to slide a few fingers in and massage his hole as you let him your manhood rubbing close to his entrance. Once you know he is yearning for it, you replace your hand with your cock, this time going in as you thrust into that hole, tight enough to send you a very pleasurable sensation without offering you much resistance. By the looks of the incubus['] face, he is thoroughly enjoying your arrival at his rear, so you push all the way and let him feel your entire length...";
	say "     His legs are at your reach, so you grab them and pull him to you in order to get a better grasp of his body, then proceed to slowly thrust in deep and out of his hole, keeping your gaze locked on his crimson eyes as he beckons you to fuck him harder. Not intending to deny such a request, you pick up the pace and fuck him a bit faster, the inner walls of his ass hugging your shaft and pulsing around it as you move it, its softness even sending you the good kind of shivers up your spine, which tempts you to let out a few moans. As you catch up with your own desire to claim his butt, it is easy to just embrace the feeling and pound him harder, each movement becoming faster than the last at a steady pacing, all while the handsome demon encourages you to continue, his own nine incher hard and swinging around before your eyes with each thrust you give into him.";
	WaitLineBreak;
	say "     Without any further ado, you decide to give him your all, fucking him faster and harder, deeper and rougher... To achieve this, you lift your leg and place your knee at the edge to get a better position as you lean the rest of your body towards the incubus, almost pinning him down, and let your hips and glutes do the rest by pounding him mercilessly. Your own lust is increasingly higher and is just telling you to destroy that ass as much as possible, ";
	if player is kinky and player is not submissive:
		say "[italic type]and it gets the best of you, as you find yourself aggressively humping the demon, grabbing his neck to a point he is almost choking, probably calling him all sorts of filthy names as you remind him that you own him with a few another slaps around his buttocks. But he really, really seems to like this rough, dominant and kinky attitude of yours.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say "fucking him deeper, thrusting in harder, let your body move on its own as you claim that ass with all your might. There is definitely not a point where you feel you should slow down or stop, as the incubus only moans and begs you to continue...";
	say "     Finally, your orgasm seems to be knocking on the door of release, and you don't even hold it. After a while, you are simply letting it all into the devil boy's ass, spurt after spurt coating his insides as you give him a couple of final thrusts, have him take the entirety of it. The whole action also caused the incubus to cum all over himself as you continued to hump at him for the last moments...";
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]But you still have enough in yourself for round two. Your cock does not go soft and you are still horny... So you go for a bit of a messy play, embracing the handsome demon's cum soaked body and rubbing yours against his, making out with him as you keep your dong inside him. Slowly, you begin to thrust in again, giving him the sign that you want to fuck him again. As a true demon of lust that he is, he obviously does not oppose to this... And moments later, you are fucking his ass as hard as before until you give him your load a second time.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	WaitLineBreak;
	say "     After you have had your fun together, you let the incubus get up, naked and drenched in his own load as yours slowly drip down his winking hole, and walks away with his own cock half-hard and swinging against his thighs with each step he takes forward. You watch him go, and for some reason, you feel very tired all of the sudden...";
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1aGetFucked: [females only]
	project figure of Incubus_naked_icon;
	say "     Given how badly he wants it, you push the demon onto the bed as you climb on top of him, ready with your moistened privates exposed for him. Without hesitation, you grab his nine incher of a dong and proceed to tease him by rubbing it around your labia, which has him taking deep breaths and soft moans, almost as if about to beg you to simply let him feel your warm insides. Naturally, you do not give that to him immediately, and instead, you make him want it more and more, until you are certain he is going to enjoy every precious second his dick is going to be inside your pussy. You can tell he feels in bliss once you bury his manhood inside you, which feels good to you as well once your feminine bits wrap around it properly and slide down carefully.";
	say "     As you are riding him, you make sure he stays powerless as you assume control, never letting him touch or grab you in any way. You slowly raise yourself and crouch back down, letting him feel your moist tunnel around his shaft deeper and deeper, eventually picking up the pace so that you can freely jump on his cock and give his much awaited pleasure. Now, as you are doing it, you feel the incubus wanting to move his hips to thrust into you himself, and this time, you allow him the freedom. After all, he waited for this, and he has to get some work done as well... He does it quite hard, pounding at your cunt in a way you can even feel his balls hitting you with each thrust.";
	WaitLineBreak;
	say "     Though as you see him get too enthusiasmed, you order him to slow down... And then you make him do so, as he seems to take some time to obey you. You do not think he is ready to reach his climax so soon, and you want to tease him for a while, to feel his throbbing cock inside you begging for your mercy while you take a moment to enjoy yourself. Your own lust is increasingly higher and is just telling you to edge the handsome devil as much as you can, ";
	if player is kinky and player is not submissive:
		say "[italic type]and it gets the best of you, as you find yourself grabbing his nuts and squeeze them just enough to make him squirm while probably calling him all sorts of filthy names as you remind him that you own him, with a few another slaps around his face and cheeks. But he really, really seems to like this rough, dominant and kinky attitude of yours.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say "giving him an almost agonizing slow humping on his cock that drives him wild. You bet the incubus wants to fuck your pussy so hard and breed you so full of his demonic seed, but you won't let him. You are simply riding him as slowly as possible until you decide it is time to give him his sweet release.";
	say "     Finally, your own orgasm seems to seems to be knocking on the door of release, and you don't intend to stop it. Figuring it is time to pick up the pace, you start to ride the incubus as fast as possible while giving yourself the pleasure you are owed, your whole body throbbing with pleasure as your feminine bits contract with each pulse of joy around the devil boy's cock. He too is close, and then you think it is time to give him his reward... let him cum. Not inside you, however... but you let him burst as you rub his dong between your asscheeks. He actually cums so hard that he manages to coat your whole butt with his sweet demonic load, but once his climax subsides, you have no issue getting up to let him go away.";
	WaitLineBreak;
	say "     He eventually gets up, naked and undisturbed with a few drops of his own cum and your feminine juices all over his crotch and thighs, and a half-hard cock swinging from one side to the other and against his legs with each step he takes forward. You watch him go, and for some reason, you feel very tired all of the sudden...";
	HCEFinalSatisfactionBonus;

[ NORMAL 1 B - SHY SUCCUBUS ---------------------------------------------------- ]

to say HellfireClubEscortNormal1b: [a shy submissive succubus]
	project figure of Succubus_clothed_icon;
	say "     After some time readying yourself for what is to come, someone arrives at your room. Surprisingly, it is someone... seemingly shy. As you get a better view at your client, you notice a very beautiful woman, tall and slim, with plenty of demonic attributes, strongly resembling a succubus, pretty much like the ones normally seen roaming this district. But, as opposed to most who would be more than ready to provoke and seduce you, this one seems particularly faltering. She stands at the door, examining you. By the looks of it, She definitely seems to be a submissive. It appears you will have to take the lead[if player is dominant], which should be very easy for someone as dominant as you are...[else if player is submissive], despite your submissive tendencies...[else]...[end if][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Go to her.";
	say "     ([link]N[as]n[end link]) - Let her come to you.";
	if player consents: ['taking the initiative' path, leads to anal fuck if male, dom pussy ride if female (more points if dominant), starts higher on satisfaction]
		Linebreak;
		now HCEClientSatisfaction is 2;
		say "(+2)[line break]";
		say "     Noticing her hesitation, you decide to step forward and help her come your way, receiving her with a sensual embrace. She freezes for a moment, but is receptive to it, as you have her sit besides you on the bed. She shows a smile that, despite looking devilish, you still perceive it as a quite reserved one. Knowing better than to wait for her to say or do anything, you plant your lips on hers, assaulting her mouth with a deep tongue kiss as you pin her down below your [bodydesc of player] body. It does not take long until you start noticing a wet stain by her crotch as you slide your hand down there, a clear sign of her arousal as you both continue to make out.";
		say "     To further excite her, you grind your sex against her, taking hold of her arms as you hold her in place, the succubus letting out a moan in appreciation, one you feel through your lips as the sound vibrates through the touch of your mouths as tongues are still wrestling with each other";
		if player is male:
			say ". You notice the gorgeous demoness wrapping her legs around you, a certain area of her body becoming more in contact with your growing [cock size desc of player] penis, clearly asking for a certain type of attention[if cock length of player > 9]. She seems particularly enthusiasmed once he realizes how hung you are, pressing her groin against the bulge your dick is making as your erection only stiffens[else]. She continues to tempt you to hump against her sex the more your erection stiffens[end if]...";
			if cock length of player > 9: [she likes dicks bigger than her counterpart]
				increase HCEClientSatisfaction by 1;
				say "(+1)[line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Proceed to fuck her.";
			say "     ([link]N[as]n[end link]) - Lick her pussy, instead.";
			if player consents: [pussy fuck]
				Linebreak;
				if player is dominant: [Dominant bonus]
					say "     [italic type]Because you're Dominant, you feel particularly confident about this...[roman type][line break]";
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				else if player is submissive: [Submissive penalty]
					say "     [italic type]Because you're Submissive, you will probably have an issue, here...[roman type][line break]";
					decrease HCEClientSatisfaction by 1;
					say "(-1)[line break]";
				HellfireClubEscortNormal1bFuck;
			else:
				Linebreak;
				HellfireClubEscortNormal1bGiveOral;
		else if player is female:
			increase HCEClientSatisfaction by 1; [having a pussy is an automatic like]
			say ". You notice the gorgeous demoness touching your womanhood, this time, and she seems quite entertained with the fact that you, too, are as wet and aroused as she is. That look on her face is probably trying to tell you something, as she licks her own soft lips in the most sexy manner.";
			say "(+1)[line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Sit on her face.";
			say "     ([link]N[as]n[end link]) - Lick her pussy, instead.";
			if player consents: [female pussy catch]
				Linebreak;
				if player is dominant: [Dominant bonus]
					say "     [italic type]Because you're Dominant, you feel particularly confident about this...[roman type][line break]";
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				else if player is submissive: [Submissive penalty]
					say "     [italic type]Because you're Submissive, you will probably have an issue, here...[roman type][line break]";
					decrease HCEClientSatisfaction by 1;
					say "(-1)[line break]";
				HellfireClubEscortNormal1bFaceSit;
			else:
				Linebreak;
				HellfireClubEscortNormal1bGiveOral;
	else: [Player hasn't taken initiative]
		Linebreak;
		say "     Deciding not to press her, you simply wait for her in the bed. She is still watching you from her position, silently.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Begin to undress and tease her.";
		say "     ([link]N[as]n[end link]) - Do nothing.";
		if player consents: ['letting him come to you' path, starts lower on satisfaction]
			Linebreak;
			say "     Perhaps you should show her some of your attributes to encourage her to come touch you. Trying your best to motivate the shy succubus, you reveal your [if Breast Size of player > 0][breast size desc of player] breasts to her, grabbing and playing with them by yourself for a while[else]chest to her, rubbing your pecs all over with one of your hands for a while[end if] as you lock your gaze on her eyes. You notice some discomfort on the demoness as she watches you, trying to cover up the fact she is getting turned on by you, as you see her go for her crotch to start fondling at her sex, albeit cautiously.";
			WaitLineBreak;
			say "     This exchange lasts for about a minute, but you manage to capture her interest by continuing to remove more of your attire of choice, revealing more of your [bodydesc of player] body to the gorgeous deviless, and showing off your [bodytype of player] characteristics just to send her the clear message that she is welcome to approach you. At some point, the demoness gives in and starts walking towards you as you watch her come, tentatively spreading your legs with your feet still touching the floor, exposing the [if player is male][cock size desc of player] bulge building up in your crotch[else]diminutive underwear that barely covers your already moist labia[end if]. She bites her lip as she gets close to touch you, but instead of actually doing so, she looks up shyly at you, as if awaiting an instruction.";
			now HCEClientSatisfaction is 1;
			say "(+1)[line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Direct her towards your crotch.";
			say "     ([link]N[as]n[end link]) - Simply expose your privates.";
			if player consents: [took initiative + satisfaction]
				Linebreak;
				say "     You look at her, the gorgeous deviless['] eyes shifting towards yours, and you place your hand underneath her perfect chin, sliding it gently across her cheek towards her ear, then onto the back of her head in a very tender manner. Then, once you have got a good grip of her silky hair, you carefully pull her towards you and your crotch, having her face your sex from close and in reach of her sweet lips. Slowly, you let her take a good look at your [if player is male]now throbbing erection[else]moist labia[end if], and let her know that you want her to put her best efforts at pleasing you down there with her mouth and tongue. The succubus['] expression is one of thirst for your joy, and while she massages your thighs, she gets ready to give you the best oraljob she is able to.";
				increase HCEClientSatisfaction by 1;
				say "(+1)[line break]";
				HellfireClubEscortNormal1bReceiveOral;
			else: [lacked initiative - satisfaction, but...]
				Linebreak;
				say "     As she stares at you, your hands simply move to take whatever is left of your clothes surrounding your junk, and slide them down. Slowly, [if player is male]your [cock of player] penis jumps out of its confines in a growing, throbbing erection[else]your dripping cunt is revealed to your sweet demoness, engorged and ready to be taken in action, which she really seems to like[end if]. Given the fact the succubus still didn't take any move, but appears to be dying to do so, perhaps you could encourage her...";
				if player is male and cock length of player > 9: [she likes dicks bigger than her counterpart]
					say "     [italic type]She seems quite entranced by the size of your dick, sticking her eyes onto it for a long, long while... You can only imagine it must be bigger than what she is used to see among her counterparts.[roman type][line break]";
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				else if player is female: [having a pussy is an automatic like for the succubus]
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Direct her towards your crotch.";
				say "     ([link]N[as]n[end link]) - Play with yourself until she decides to service you.";
				if player consents: [still gained satisfaction point]
					Linebreak;
					say "     With your sexual organs now in display, you proceed to slip your hand over the back of the succubus['] head and pull it towards your groin, to which she responds by kneeling in front of you and eagerly allow herself to be led. Her lips collide against your [if player is male]shaft[else]lower ones[end if] as she takes a moment to put her tongue to work...";
					increase HCEClientSatisfaction by 1;
					say "(+1)[line break]";
				else:
					Linebreak; [lost satisfaction opportunity, she prefers initiative]
					say "     You begin touching yourself in front of the succubus, getting yourself to a higher state of arousal as you feast your eyes on her sublime demonic, yet fairly human looking, body. Despite the fact she is clearly enjoying the view, she still seems to be looking at you, not moving an inch. She seeks your eyes, your hands, your lips, and just doesn't do anything. However, a simple gaze shifting on your behalf from her face to your [if player is male][cock size desc of player] cock[else]womanhood[end if] sends her the right message, as you are greeted by her mouth that so hungrily collides with your junk, even startling you at its sudden nature. However, her soft hands massaging your thighs are an indicative that the devil girl is simply eager to please you.";
				WaitLineBreak;
				HellfireClubEscortNormal1bReceiveOral;
		else:
			say "     You decide to simply stay put until she decides to make a move. A move that she never makes, and soon, the succubus is turning her back and leaving faster than she arrived, leaving you alone in the bedroom. This one didn't go so well...";
			now HCEClientSatisfaction is 0;

to HellfireClubEscortNormal1bReceiveOral:
	WaitLineBreak;
	project figure of Lilith_naked_icon;
	if player is male: [dick]
		say "     The sexy devil girl is already hard at working with your cock and balls, softly massaging your sack with her very soft hand as she runs her lips around your shaft, seeking each throbbing vein and sensitive area with her masterful tongue. She maintains eye contact with you, her crimson demon eyes locked into yours as she teases your manhood with all the expertise she knows, twirling hers tongue all over your wet cockhead before she wraps her lips around your shaft, letting it sink in her mouth. Her hands continue to massage your balls as she takes your whole length in like a skilled cocksucker, sliding her lips up and down as she focuses on your pulsing erection, sucking it at an increasingly higher pace.";
		say "     She seems hooked up on your dick, given the way she sucks it, so glad to be pleasing you with her mouth, licking it all over and sucking it as far as it goes into her throat, without gagging nor choking on it even once, a truly skilled deviless. Twisting her head ever so slightly to provide you with additional stimulation as the insides of her mouth and tongue rub around your glans, whenever she pulls up and slides down your shaft, she gives you one of the best blowjobs you have ever received, at least from a demon girl. You begin to feel a heavy tension in your balls and your lust grows, your cock throbbing harder and harder as she continues to suck you at a rhythm that starts feeling monotonous for a while... Then, she looks at you in the eye.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Grab her head and facefuck her.";
		say "     ([link]N[as]n[end link]) - Lean back and order her to service you.";
		if player consents: [+1 Satisfaction Point]
			Linebreak;
			say "     You put both your hands on each side of her head and pull it all the way down your length, making her take your whole cock inside as you take charge. Well, it seems [bold type]she likes this[roman type], as a glance over her bits allows you to see her fondling herself, one hand busy stimulating her womanhood. With several more poundings, you feel yourself coming closer to the point of no return, so you shift towards deeper and slower motions as your load continues to build up, right until the last second...";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		else:
			Linebreak;
			say "     With some impatience, you order her to continue and pick up the pace, and she does so eagerly. Sinking her mouth deeper on your shaft, she continues to suck you with diligence, pushing your dick deeper down his throat with each move. The succubus herself seems to have built a great amount of excitement of her own, as she keeps one hand busy stimulating her womanhood while blowing you. After a good amount of sucking and slurping, you feel yourself coming closer to the point of no return, so you try to hold his eagerness by encouraging slower movements, which turns out to be such a horribly delightful tease for you right until the last second, as your load continues to build up...";
		if "Horny Bastard" is listed in feats of Player:
			say "     [italic type]You're such a horny bastard and your dick stood so hard that the devil girl was delighted during the whole process.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		say "     Then, you burst out a joyful load that coats the insides of the devil girl's mouth. She happily slurps and swallows everything she can as you continue to pump your jizz inside her, loving every second of your thick blasts with audible gulps, then... You are left in a post-sex bliss, looking down at the succubus who is still on her knees between your legs, tasting her well-deserved meal. She smiles - or rather, grins - at you as she gets up, and somehow you feel really, really tired...";
		HCEFinalSatisfactionBonus;
	else if player is female: [pussy]
		say "     The sexy devil girl is already hard at working with your womanhood, softly massaging your thighs with her very soft hands as she runs her lips around your moist labia, seeking the pleasure spots with care as she delivers masterful, gentle kisses. She maintains eye contact with you, her crimson demon eyes locked into yours as she teases your sex with all the expertise she knows, twirling her tongue all over your wet cooch before she slips it deeper, her lips now fully embracing your yearning cunt as she proceeds to make out with it. You feel her tongue in you after a while, licking at the right places and providing you enough stimulation to drive you wild in pleasure.";
		say "     She seems hooked up on your pussy, given the way she licks it, so glad to be pleasing you with her mouth as she pushes her tongue deeper inside your wet curls, effectively tonguefucking you while moving it in circles and wiggling all over. Not one time she has to stop nor interrupt this process, she does everything like a trully skilled deviless, even twisting her head ever so slightly to get better angles in order to provide you with additional stimulation. This has to be one of the best cunnilingus you have ever had, at least from a demon girl, who certainly seems to know what she is doing. There is a heavy tension building in your groin and spreading all over your body, something urging you to go harder on the beautiful succubus... And her looking at you in the eye really helps that feeling.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Grab her head and take charge.";
		say "     ([link]N[as]n[end link]) - Lean back and order her to service you.";
		if player consents: [+1 Satisfaction Point]
			Linebreak;
			say "     You put both your hands on each side of her head and pull it against your groin, almost smothering the demoness['] face with your pussy as you grind it all over, soaking her in your juices as she does her best to continue to lick you.  Well, it seems [bold type]she likes this[roman type], as a glance over hers bits allows you to see fondling herself, one hand busy stimulating her womanhood as she tastes your cunt with all the eagerness she can bolster. After a while, the pleasure begins to take over your body, senses and thoughts, inevitably approaching you close to that sweet desired climax...";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		else:
			Linebreak;
			say "     With some impatience, you order her to continue and pick up the pace, and she does so eagerly. Sinking her mouth deeper in your sex, she proceeds to deeply kiss it and shove her tongue as deep as she can, trying her very best to shake the lust inside you and throw it over the edge. She does not seem to mind this, as you have given her all the freedom she could ever wanted, with the succubus herself fondling her own womanhood as she eats your cunt. After a good amount of time down there, you feel yourself coming closer to the point of no return, so you try to hold her eagerness by encouraging slower movements, which turns out to be such a horribly delightful tease for you right until the last second, as your climax treads close...";
		if "Horny Bastard" is listed in feats of Player:
			say "     [italic type]You're such a horny bastard and your cunt remained so wet that the devil girl was delighted during the whole process.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		say "     Then, you burst out a joyful orgasm in the form of a wave of hot pleasure that runs down your whole body, making you twitch in bliss. The gorgeous deviless also seems pleased that you have hit the edge, and continues to stroke you until it subsides, leaving only a grin on her face as you attempt to catch your breath. Somehow, you feel very, very tired as she gets up to leave...";
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1bGiveOral:
	project figure of Lilith_naked_icon;
	say "     But you do not intend to give her what she is trying to get. Instead, you push her over to the bed and flip around to stand in front of her, kneeling down between her legs as you handle her sweet smelling wet cooch, already engorged and leaking at the mere hint of your touch, which then becomes more than that and, then, your hands are placed around her labia, stroking her gently. You want to bring your mouth to her pussy, and you will do so, diving deep into it by leaning your head over so your lips touch her lower ones, and putting your tongue around it for a taste. It is surprisingly sweet, delightfully so, that it only encourages you to continue your work, and soon you are stretching your tongue towards her opening and pressing it in.";
	say "     You feel her sex pulse with desire as you continue to push your tongue in, giving her your best cunnilingus skills in about a few moments, after feeling her whole warm sex with all the required tenderness to make her soaking wet. She responds favorably, leaning her head back and enjoying the sensations you are providing her with, a soft moan escaping the demon girl's lips as you keep licking her cunt. With both hands on her perky tits, you proceed to massage her breasts at the same time, while giving her nipples their share of attention. The sweet taste of her feminine juices is enough to drive you a bit wilder in lust...";
	WaitLineBreak;
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]For someone who is always horny such as you, it is easy to keep your enthusiasm about servicing a sexy succubus['] such as her, which has positive effects on her.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	say "     As you continue your work, you notice that the demoness begins to squirm a little as her curls moisten up even more, warm with pleasure, moaning more eagerly. You know this to be the inevitable sign that she is about to orgasm, so you put your full effort at licking her cunt, wiggling your tongue inside her and all over as much as you can. You continue to deeply stimulate her in such a manner that she twitches and squirms around in complete joy, an overwhelming climax being delivered to her for the next seconds. She moans loudly until it finally subsides, finally looking at you with a mischievous grin. Then, she stands up and leaves...";
	say "     Naked, she graciously walks away like a sensual passerelle model, looking at you over her shoulder. You are simply given an opportunity to eye her marvelous butt before she walks away and out of view. Hopefully, that satisfied her. You do begin to feel very tired all of the sudden, though...";
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1bFuck: [males only]
	project figure of Lilith_naked_icon;
	say "     With her already in position, you flip her over and throw her onto the bed as you take your [cock of player] penis out, throbbing with all the eagerness it needs to be put to work.";
	WaitLineBreak;
	say "     Pressing the tip of your [cock size desc of player] dong against the demoness['] wet curls, you are met with the softest sensation, as his pucker feels receptive right away, without the need for any previous action. Still, out of cortesy, you decide to slide a few fingers in and massage his hole as you let him your manhood rubbing close to his entrance. Once you know he is yearning for it, you replace your hand with your cock, this time going in as you thrust into that hole, tight enough to send you a very pleasurable sensation without offering you much resistance. By the looks of the incubus['] face, he is thoroughly enjoying your arrival at his rear, so you push all the way and let him feel your entire length...";
	say "     His legs are at your reach, so you grab them and pull him to you in order to get a better grasp of his body, then proceed to slowly thrust in deep and out of his hole, keeping your gaze locked on his crimson eyes as he beckons you to fuck him harder. Not intending to deny such a request, you pick up the pace and fuck him a bit faster, the inner walls of his ass hugging your shaft and pulsing around it as you move it, its softness even sending you the good kind of shivers up your spine, which tempts you to let out a few moans. As you catch up with your own desire to claim his butt, it is easy to just embrace the feeling and pound him harder, each movement becoming faster than the last at a steady pacing, all while the handsome demon encourages you to continue, his own nine incher hard and swinging around before your eyes with each thrust you give into him.";
	WaitLineBreak;
	say "     Without any further ado, you decide to give him your all, fucking him faster and harder, deeper and rougher... To achieve this, you lift your leg and place your knee at the edge to get a better position as you lean the rest of your body towards the incubus, almost pinning him down, and let your hips and glutes do the rest by pounding him mercilessly. Your own lust is increasingly higher and is just telling you to destroy that ass as much as possible, ";
	if player is kinky and player is not submissive:
		say "[italic type]and it gets the best of you, as you find yourself aggressively humping the demon, grabbing his neck to a point he is almost choking, probably calling him all sorts of filthy names as you remind him that you own him with a few another slaps around his buttocks. But he really, really seems to like this rough, dominant and kinky attitude of yours.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say "fucking him deeper, thrusting in harder, let your body move on its own as you claim that ass with all your might. There is definitely not a point where you feel you should slow down or stop, as the incubus only moans and begs you to continue...";
	say "     Finally, your orgasm seems to be knocking on the door of release, and you don't even hold it. After a while, you are simply letting it all into the devil boy's ass, spurt after spurt coating his insides as you give him a couple of final thrusts, have him take the entirety of it. The whole action also caused the incubus to cum all over himself as you continued to hump at him for the last moments...";
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]But you still have enough in yourself for round two. Your cock does not go soft and you are still horny... So you go for a bit of a messy play, embracing the handsome demon's cum soaked body and rubbing yours against his, making out with him as you keep your dong inside him. Slowly, you begin to thrust in again, giving him the sign that you want to fuck him again. As a true demon of lust that he is, he obviously does not oppose to this... And moments later, you are fucking his ass as hard as before until you give him your load a second time.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	WaitLineBreak;
	say "     After you have had your fun together, you let the incubus get up, naked and drenched in his own load as yours slowly drip down his winking hole, and walks away with his own cock half-hard and swinging against his thighs with each step he takes forward. You watch him go, and for some reason, you feel very tired all of the sudden...";
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1bFaceSit: [females only]
	project figure of Lilith_naked_icon;
	say "     Given how badly she wants it, you push the demoness onto the bed as you climb on top of her, ready with your moistened privates exposed for her. Without hesitation, you raise yourself above her head and proceed to sit on top of it, with your moist cunt over her lips in order to have the succubus lick you. You do not show any mercy, either. You want to sit on her face hard, grind your privates against her and feel her tongue wiggling deep inside your cunt as long as you are in charge. This seems to excite the deviless, as she puts her best effort at providing you with joyful pleasure, kissing and making out with your feminine organ with all the tenderness and dedication you would expect from a sex expert demoness.";
	say "     As you are riding her, you make sure she stays powerless as you assume control, never letting her touch or grab you in any way. You slowly raise yourself and crouch back down, letting her catch some air before feeling your moist lower lips descending upon her face once more, and have her return to her duty of licking and kissing your pussy thoroughly. She lets you have all the control, indeed, as she does not even fight you once you get rougher about it. You doubt you could go this hard on her face if she wasn't a demoness, but she seems to love every second of it as she continues to tonguefuck your demanding cunt at an increasingly higher pace, wiggling and licking at your most sensitive areas to send you shivers of pleasure all over your body.";
	WaitLineBreak;
	say "     Though as you see her get too enthusiasmed, you order her to slow down... And then you make her do so, as she seems to take some time to obey you. In fact, it is just feeling too good, and you do not think you are ready to hit your climax just yet. You want to play with her a while more, make her lick you for a while longer";
	if player is kinky and player is not submissive:
		say "[italic type]... and it gets the best of you, as you find yourself grabbing her head and pulling it into your cunt while probably calling her all sorts of filthy names as you remind him that you own her, with a few another slaps around her face, body and ass. But she really, really seems to like this rough, dominant and kinky attitude of yours.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say " as you feel that expert tongue please you from down below. You just want to enjoy this a little longer, and you have got the chance to do so right now.";
	say "     Finally, your own orgasm seems to seems to be knocking on the door of release, and you don't intend to stop it. Figuring it is time to pick up the pace, you start to grind your pussy against the succubus['] face as hard as possible while giving yourself the pleasure you are owed, your whole body throbbing with pleasure as your feminine bits contract with each pulse of joy around the devil girl's mouth. She too is close, as she has been playing with herself all this time, and then you think it is time to give her her reward... let her orgasm. She actually feels it so hard that you feel it below you, but once her climax subsides, you have no issue getting up to let her go away.";
	WaitLineBreak;
	say "     She eventually gets up, naked and undisturbed with a few drops of your feminine juices all over her face, walking away like a sensual passerelle model. You watch her go, and for some reason, you feel very tired all of the sudden...";
	HCEFinalSatisfactionBonus;

[ NORMAL 1 C - DOM MALE HELLDEMON ---------------------------------------------------- ]

to say HellfireClubEscortNormal1c:
	project figure of HellfireDemon_softnoharness_icon;
	say "     After some time readying yourself for what is to come, someone arrives at your room. And whoever this is makes a huge ruckus as he walks inside, naked and proud. 'Heyo, cutie! I heard Mogdraz employed his most recent special guest here? Well, nothing else would please me more than spend my whole salary just to fuck you my way for the next few hours!' It is not a strange creature, by any means, but one of the Hellfire lackeys, a crimson demon like those who roam the streets at night. This one seems to have paid his boss to have some quality time with you, and he seems to want to have things his way. Hellfire demons are large and muscular, and the same goes for their dicks, thick and long by about nearly a foot and half!";
	say "     He closes the door behind him and walks towards you, slowly and eyeing you from head to feet, as if... appreciating you, or maybe he is just considering what he wants to do with you. Perhaps his hardening shaft, which is raising up intimidatingly with each second, is a sign of his current intentions... Or maybe the demon has something entirely different in mind. Whatever he picks, [if player is submissive]your submissive tendencies will, for sure, be useful here[else]you should do what he tells you, or you might end up pissing him off... And Mogdraz wouldn't be happy about it[end if].";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 3; [adjust the latter number for the number of options]
	if randomnumber is:
		-- 1: [he demands foot worship]
			say "     The demon places his hand under your chin and gently leads you towards him, so you get off the bed and walk closer to him. Then, his grasp around your jaw tightens as he plants a kiss on your lips, his long nimble tongue licking at your mouth's insides with its overwhelming presence. He then pulls out, slowly. 'Mmmh... Your mouth feels good... Perhaps I have a use for it.' he says, as he commands you to lie down on the floor in front of him. 'Come on, now. My feet need attention.' His clawed toes seem to be moving impatiently, despite his calm posture. It seems he wants you to worship his feet.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - You oblige.";
			say "     ([link]N[as]n[end link]) - Feet? Eww!";
			if player consents: [He's pleased to know of your eagerness]
				Linebreak;
				say "     Of course, you will do as he says. Without any further ado, you begin to lie down on the floor by his request, your head ending up in the space between his feet as he positions himself above you. 'Ahh, that's a really good [boygirl] if I see one.'";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1cFeet;
			else:
				Linebreak;
				say "     Okay, you really are not into this, and you won't do what he asks... So you tell him that. 'What the fuck? You're going to refuse to pleasure me? Well, if that's so, I'll have boss know that you're not performing adequately. Refusing your clients like this... What a shameful conduct. I'm in my right to not pay any extra, too, so you won't see a coin. Not to mention, boss hates losers, so forget any chance you have with him if you screw this up.'";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - On second thought... Maybe you'll do what he asks.";
				say "     ([link]N[as]n[end link]) - There's no way you're going to put his feet in your mouth.";
				if player consents: [Reconsidering earns you partial satisfaction]
					Linebreak;
					say "     Well, maybe you should reconsider and obey his request. 'Well, that's better. Should've done that in the first place instead of wasting my time.' Without any further ado, you begin to lie down on the floor by his request, your head ending up in the space between his feet as he positions himself above you. 'That's a much better place for you now, cute face.'";
					if player is dominant: [A dominant player will pass on a much harsher attitude to the demon, and he won't like it]
						say "     [italic type]Because you're Dominant, your client disliked your hesitation even more...[roman type][line break]";
						now HCEClientSatisfaction is 0;
						say "(+0)[line break]";
					else:
						now HCEClientSatisfaction is 1;
						say "(+1)[line break]";
					HellfireClubEscortNormal1cFeet;
				else:
					Linebreak;
					say "     You stand your ground, and you won't do what he asks. 'Your choice, then. I'll just let boss know you've been a bad [boygirl].' he says, before turning around and walking away, leaving you alone in the room. That could definitely have gone better...";
					now HCEClientSatisfaction is 0;
		-- 2: [his cock to be serviced]
			say "     The demon places his hand under your chin and gently leads you towards him, so you get off the bed and walk closer to him. Then, his grasp around your jaw tightens as he plants a kiss on your lips, his long nimble tongue licking at your mouth's insides with its overwhelming presence. He then pulls out, slowly. 'Mmmh... Your mouth feels good... Perhaps I have a use for it.' he says, as he commands you to lie down on the bed, pushing you towards it while he nearly tramples you.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - You oblige.";
			say "     ([link]N[as]n[end link]) - Question him.";
			if player consents:
				Linebreak;
				say "     Leaning back onto the bed, you let the demon climb on top of you, his thick muscular legs ending up on each side of your torso as he rests his considerable weight on top of you. He really is heavy, though he makes sure he does not crush you. Giving his cock a few stroke as he looks at you in the eye, you have an idea of what he wants...";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1cCockSuck;
			else:
				Linebreak;
				say "     Well, you have to know what you will be doing before you are actually doing it, so you question him before doing anything he says. He is not happy. 'For starters, you are supposed to do what I say. Then, you do whatever the fuck I tell you to do. Do I need to repeat myself a third time, or is it clear enough?'";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Apologize and let him continue.";
				say "     ([link]N[as]n[end link]) - You don't like his attitude.";
				if player consents:
					Linebreak;
					say "     You apologize to the demon, and proceed to lean back onto the bed. 'That's better. Next time, don't question me. This might be even something you'd enjoy!' he says as he climbs on top of you, his thick muscular legs ending up on each side of your torso as he rests his considerable weight on top of you. He really is heavy, though he makes sure he does not crush you. Giving his cock a few stroke as he looks at you in the eye, you have an idea of what he wants...";
					if player is dominant: [A dominant player will pass on a much harsher attitude to the demon, and he won't like it]
						say "     [italic type]Because you're Dominant, your client disliked your hesitation even more...[roman type][line break]";
						now HCEClientSatisfaction is 0;
						say "(+0)[line break]";
					else:
						now HCEClientSatisfaction is 1;
						say "(+1)[line break]";
					HellfireClubEscortNormal1cCockSuck;
				else:
					Linebreak;
					say "     You shake your head and get away from his reach, telling him that you don't like his attitude and you won't have any of this. Then, you tell him about your rights as a worker and that Mogdraz told you to stop things if they got too abusive. 'Oh, abusive?! You really don't know what abusive means, do you?! Obviously, boss doesn't like when his clients literally ruin his employees and makes it impossible for them to work again. That's what he means! Do you think I'd be stupid enough to break you in some way?!' he explains, quite loudly. 'Fucking Hell, you really think you're something special, huh? Well, my dick's gone soft, so I'll leave. You're not worth the coins.'";
					say "     Then, he angrily walks away, without looking behind. He definitely did not seem happy...";
					now HCEClientSatisfaction is 0;
		-- 3: [he wants to fuck your ass (both genders)]
			say "     The demon places his hand under your chin and gently leads you towards him, so you get off the bed and walk closer to him. Then, his grasp around your jaw tightens as he plants a kiss on your lips, his long nimble tongue licking at your mouth's insides with its overwhelming presence. As you both make out, he goes for a good grab of your asscheeks, squeezing them nicely as his kissing intensifies, almost passionately. He holds you so tightly and his cock gets so hard in the process that you really feel the demon is getting into it, though as his careful finger feels your pucker, you start getting an idea of what he truly wants...";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - You oblige.";
			say "     ([link]N[as]n[end link]) - You won't allow it. But you might have to get violent to stop him.";
			if player consents:
				Linebreak;
				say "     It really feels good, the way he caresses your ass and spreads your cheeks around, showing how much he wants to claim it for today's session. 'Yeah, that's what I'm gonna do... Fuck that ass until you beg me to stop... Well, I lie, I wouldn't stop even if you begged me.' he says, teasing you some more, before he gives the order 'Now, bend over for me.'";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1cAssFuck;
			else:
				Linebreak;
				say "     You really don't like the idea, so you try to stop him... though it is quite difficult. He is a big guy, and he is clearly enjoying kissing you and feeling you up. Then, you figure that the only way to catch his attention is to... bite his tongue.";
				say "     'WHAT THE FUCK?!' he lets go of you, pushing you against the bed violently as he steps back, furious. You were lucky to have escaped an enraged swipe of his clawed hand. 'Are you fucking retarded, you fucking idiot?! You're lucky you're under boss['] protection, or I would set your shitty ass on fire and let you burn until there was nothing left of that bitch face!' He is shouting at you, absolutely mad. 'Boss will know of this. I'm sure he won't be happy, either. You fucking pile of waste.'";
				say "     It seems you really infuriated him! That will for sure get you in trouble. Whatever the circumstances are, you should [bold type]never attack your clients![roman type][line break]";
				now HCEClientSatisfaction is -1; [You should never hit this value...]
		-- 4: [he feels generous enough to let you pick]
			say "     The demon places his hand under your chin and gently leads you towards him, so you get off the bed and walk closer to him. Then, his grasp around your jaw tightens as he plants a kiss on your lips, his long nimble tongue licking at your mouth's insides with its overwhelming presence. He then pulls out, slowly. 'Mmmh... I feel generous today. How about I let you pick what we do?' he says, and as such, you are left with some choices to make.";
			LineBreak;
			say "     [bold type]What is your suggestion for the demon?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Worship his feet.";
			say "     [link](2)[as]2[end link] - Suck his cock.";
			say "     [link](3)[as]3[end link] - Bend over for him.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to pick feet, [link]2[end link] to pick cock or [link]3[end link] to pick ass fuck.";
			if calcnumber is 1:
				LineBreak;
				say "     You decide to pick the foot worship option, ";
				if a random chance of 1 in 2 succeeds: [he might really like it, or just be 'meh' about it but do it anyway]
					say "to which the demon grins eagerly. 'Yeah, great idea. How about you lie down on the floor and let me give it to you, eh?' he orders you, and since the idea was yours, you do not really have any issue with obliging his request.";
					if player is submissive: [this nets the player a good bonus start for choosing well]
						say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
						now HCEClientSatisfaction is 3;
						say "(+3)[line break]";
					else:
						now HCEClientSatisfaction is 2;
						say "(+2)[line break]";
					HellfireClubEscortNormal1cFeet;
				else:
					say "to which the demon seems hesitant, at first. 'Heh... Not quite what I had in mind for now, but... I suppose we could do that. How about you lie down on the floor and let me give it to you, then?' he orders, and since the idea was yours, you do not really have any issue with obliging his request.";
					now HCEClientSatisfaction is 1;
					say "(+1)[line break]";
					HellfireClubEscortNormal1cFeet;
			else if calcnumber is 2:
				Linebreak;
				say "     You decide to pick the cock suck option, ";
				if a random chance of 1 in 2 succeeds: [he might really like it, or just be 'meh' about it but do it anyway]
					say "to which the demon grins eagerly. 'Ohhh, I could really use a blowjob right now, actually... Yeah, that sounds great! Lie down on the bed and let me claim that mouth.' he orders you, and since the idea was yours, you do not really have any issue with obliging his request.";
					if player is submissive: [this nets the player a good bonus start for choosing well]
						say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
						now HCEClientSatisfaction is 3;
						say "(+3)[line break]";
					else:
						now HCEClientSatisfaction is 2;
						say "(+2)[line break]";
					HellfireClubEscortNormal1cCockSuck;
				else:
					say "to which the demon seems hesitant, at first. 'Hm... I suppose I wouldn't refuse a blowjob. I guess we'll go with that. Now, how about you lie down on the bed and let me claim that mouth?' he orders you, and since the idea was yours, you do not really have any issue with obliging his request.";
					now HCEClientSatisfaction is 1;
					say "(+1)[line break]";
					HellfireClubEscortNormal1cCockSuck;
			else if calcnumber is 3:
				Linebreak;
				say "     You decide to pick the ass fuck option, to which the demon grins eagerly. 'Fuck yeah! I never say no to fucking some ass! Good that you're eager to do that for me, too... Now, bend over while I prepare you for this big bad boy here...' he orders you, and since the idea was yours, you do not really have any issue with obliging his request.";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1cAssFuck;

to HellfireClubEscortNormal1cFeet:
	project Figure of HellfireDemon_hardnoharness_icon;
	WaitLineBreak;
	say "     'Hehe, you look good from here... Though I think you'll look better with one of my feet down your cute face.' he taunts you, as he raises one of his clawed crimson feet over your head, namely his right one. Then, you see it slowly descending upon your face, to cover you with its great size under the rough sole. These demons walk barefoot, so it is only natural that their feet are calloused and thick-skinned. While he is standing, he presses his foot against your face, almost stomping you, though of course that would crush your head, so he keeps it light and gentle...-ish. 'I want to feel your tongue running down all over this, you understand?' he lets you know, as he brings himself some sweet pleasure by jerking his big cock while appreciating the view.";
	say "     Once in a while, he grinds it against you, then makes you lick his sole from every angle, including his heel, which he absolutely insists on pushing it down your mouth to feel your lips part around it. 'That feels fucking good... You're good at this, eh? I gotta let boss know you like worshipping demon feet...' he taunts you, as you are forced to merely withstand his will and oblige his desire. The red devil really seems to enjoy this, as well, as you often catch him moaning while he strokes his own dick, giving you quite a view whenever his foot isn't covering your eyes. 'Oh... you wanna see me for a bit?' he asks you, noticing your interest in watching him from below. Though he has an interesting way of letting you watch... by still covering your whole face with his large foot and letting you peek between his toes. 'Yeah, you can take a break now and look...'";
	WaitLineBreak;
	say "     His dong looks massive from your perspective, as well as his heavy sack, which he handles with care. Rubbing each orb across with his thick clawed fingers from one hand, while the other strokes his long and thick shaft up and down, almost hypnotically, as he keeps his gaze locked on your barely visible eye... He grins, as a thick drop of precum oozes from the tip of his meatlog, then falling all the way onto one of his toes. 'Aww... You've got me so excited that you made me leak... Would you mind cleaning that off for me?' he asks, which you know it is more like an order, as he directs his wet toe over to your mouth. Naturally, you let it in, wrapping your lips around the toe - carefully though, since there is a sharp black claw at the tip - and suck off the sweet precum droplet.";
	if player is kinky and player is not dominant:
		say "     [italic type]Although as a little bonus for him, and due to your love for kinky stuff, you give him an especially dedicated sucking all over his toes equally, putting each and every single one of them in your mouth, one at a time, to provide them with your share of tongue love. 'Damn... Now aren't you a good little bitch, too? I love it...'[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	say "     'You want more of that?' he asks, as now you are made to suck on this big toe while he continues to jerk off, and you get an idea of what he meant with that question. As his stroking motions become faster, the red demon quickly approaches the point of no return, looking at you with a devilish smile. He takes his foot off your face, and aims his sizable dong at it instead. 'Here you go, your reward for being such a good [boygirl]...' he says, seconds before a massive splash of demonic warm cum hits you right in the eyes, nose and mouth, followed by a lot more of it that covers your whole head in just mere seconds. 'Ohh fuck yes!' he moans as he lets the last drops of his load fall onto your body, then removes himself from the scene... but not without admiring his [']work['].";
	WaitLineBreak;
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]You can't help but feel physically turned on at the sweet aroma and taste of demon cum, and it has an extra effect on you. Clearly aroused, you proceed to attempt to push what you can of his load into your mouth and savoring it for the demon's pleasure. 'Damn... Wow... Fuck, that's hot.' he says, and you could even see his dick twitch as he observes you for a while longer. He really enjoyed that![roman type][line break]";
		increase HCEClientSatisfaction by 2;
		say "(+2)[line break]";
	say "     'Thank you for your service. Have fun eating my cum... and think of me a lot, yeah?' he says, as he walks out of the room with his cock still half-hard and as naked as he arrived. As for you, you are simply left alone, with a demon's load covering your whole face and some splattered onto your torso. It would be good if you cleaned up before Mogdraz arrives.";
	say "     Damned demon cum, though... It really left you horny.";
	increase libido of player by 15;
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1cCockSuck:
	project Figure of HellfireDemon_hardnoharness_icon;
	WaitLineBreak;
	say "     Groping on his ever growing cock as he rubs it to a full erection, you then feel his strong hand slide onto the back of your head, offering it some needed support, as he directs his dong towards your lips. 'Open wide, babe... I want it all in.' There is just something about his genitals that smell so good, and it gets harder to think the more you take this odd scent in through your nostrils. You're naturally compelled to just open your mouth and gobble up on the sizable cock he has got, as he repositions himself just above your head, looking down on you, holding your skull up and pressing his dick down your throat. 'Look at me while you're swallowing that dick...' he demands, and you do your best to not shift your eyes away from his fiery orange ones.";
	say "     His throbbing meat is pulsing harder than ever as you put your best effort at sucking his dick, though he does most of the work. You simply wiggle your tongue all over it to give him additional stimulation and hold off your breath whenever his cock nearly chokes you. It is more a matter of endurance, in this case, but he enjoys the control he has over you, grabbing your head and make your lips slide down his shaft and back up, all while he makes you look at his face. After brief moments, he makes you take his log deeper, nearly dislocating your jaw, and deeper... one time further than the last, testing your limits as you are left with no other choice but to take it. Something, however, must have removed your gag reflex, as he is able to continue pushing his cock in without you feeling the need to cough.";
	WaitLineBreak;
	say "     'Sometimes I feel like going slower... Lucky you, this is one of those days. Or I'd have you over the edge of the bed facefucking you like the bitch you are.' he teases you, as he accelerates the pace just a bit more, even thrusting back and forth against your mouth, but not roughly, respecting his word.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - A facefuck over the edge of the bed? You would actually like that. Find a way to let him know that...";
	say "     ([link]N[as]n[end link]) - Just remain still and do whatever he says.";
	if player consents:
		Linebreak;
		say "     In an attempt to show your approval for that idea, you give him your best hopeful glare, moaning appreciatively with his cock in your mouth, and give him a gentle thigh rub in the area your hands are able to reach - since his legs are essentially around your neck, blocking any arm movement past your shoulders - in order to tell him that, at least, you wouldn't mind that. He ends up not really understanding what you are trying to say, so he pulls out and lets you speak. 'Oh, I see.' he answers, then puts his cock back in your mouth. 'I'm glad you think so. Though I never said I wouldn't fuck your face... But your eagerness has been noted.'";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say "     Though he goes slow for a while, it does not really last. Eventually, he is picking up the pace, sliding his cock in and out of your mouth a little harder than before, holding your head in the angle that would allow him to easily shove his length down your throat. 'I never said I wouldn't facefuck you, though... I can't resist that cute face of yours.' he says with a toothy grin.";
	say "     Now, he looks more than ready to give your face the pounding he thinks it deserves. By holding your head still and bringing you up just a bit, he has the freedom to jerk his hips and thrust into your throat like he would fuck a hole, pulling his cock back and shoving it right in, each thrust harder than the last, making your neck bulge with how he assaults your throat. His demon dick seems almost painfully hard, pulsing and throbbing inside your mouth, leaking like mad as it coats your insides with precum";
	if "Horny Bastard" is listed in feats of Player:
		say ". [italic type]Naturally, given your immense sex drive and vulnerability to aphrodisiacs, you really, really get enthusiasmed by sucking all the man juice off his drooling beast of a cock. This makes him feel especially good as he continues on facefucking you, as you can tell from how he is grunting. 'Fuck yes... you're really enjoying that taste, huh... wait until I unload my balls in you...!'[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say ". Naturally, you drink it all up, as you doubt the demon would be happy to see some of his precious seed leak out of your mouth, but he does not seem to pay much attention to how messy it is getting for you.";
	WaitLineBreak;
	say "     Eventually, the red devil comes close to shooting... and it does not take long for him to actually reach past that phase. As he continues to thrust into your throat, his big balls raise and ready themselves for the deluge of cum you are about to get. Out of mercy, or something else entirely, he pulls out and begins to stroke his dick, directing it towards your mouth. 'It would be a waste to just... make it go down your throat, right? You wouldn't get to taste it at all...' he lets you know, so indeed, it wasn't out of mercy, but out of a great desire to see you get hooked up on the taste of his sweet demonic seed. Without any further ado, he brings himself closer and closer to orgasm, and then, within a matter of seconds, he explodes into your open mouth.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Hurry up and swallow it all!";
	say "     ([link]N[as]n[end link]) - Let it coat your face.";
	if player consents:
		Linebreak;
		say "     You stretch your neck to bring your head closer to the tip of his dick and circle your lips around his glans, sucking up all the cum before it has any chance to splatter in your face. The demon is surprised by this, but the way he just happens to moan much louder with several 'Ohhh fuck yeah!' shouts as his climax goes on and on, he must have liked your initiative. You then proceed to audibly gulp down his whole load, which he truly, truly seems to love. His orgasm then subsides, dropping its last spurts of that delicious spunk on your tongue, which you only swallow after savoring them. 'I could kiss you right now... Yeah, actually, you earned that.' he lets you know, as he urges to plant his lips on yours to tongue wrestle you for the next minute... and the minute after that. Actually, you don't know how long it has been, but his kisses are... delightful.";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say "     You at least decide to get your tongue out, and there it goes, a massive amount of demon cum surging through his throbbing meat and ending up in your face, eyes, nose, mouth, cheeks, neck, and still dripping onto the sheets. He gives you a wide toothy smile as he rubs his cock against your soaked skin, admiring the work he has done on your face.";
		if "Horny Bastard" is listed in feats of Player:
			say "     [italic type]You cannot really help yourself at this point, however. Bringing your hands over to wherever his load ended up landing on, you hungrily slurp it off your fingers and lick your lips, regretting not having just swallowed everything from his cock when you had the chance. This gives the crimson hellspawn such a show that his dick twitches. 'Should have shoved my cock in your mouth if I knew you were going to be that hungry...' - he comments, observing you - 'Here, there's still some left on my dick...' and he adds, letting you lick his cock clean, as it still has a few droplets oozing. This delights you a lot... and so does the demon.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
	say "     Done with the deed, the hellfire demon gets up in order to leave, but not without giving you a smirk as he walks away, looking over his shoulder. 'See you, cute face. Think about my dick and cum a lot while I'm gone, yeah?' he says, his last words before he leaves you alone in the room. Now, you should clean up before Mogdraz arrives.";
	say "     Damned demon cum, though... It really left you horny.";
	increase libido of player by 15;
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1cAssFuck:
	project Figure of HellfireDemon_hardnoharness_icon;
	WaitLineBreak;
	say "     In order to position yourself, you bend over the bed with your ass towards the demon while he watches you from close, his hands then landing on each of your buttocks and squeezing them firmly. 'Now this is a good one...' he comments, appreciating your rear like a true connoisseur of butts, making remarks about its shape and size. You get the feeling he just likes ass, in general, from any creature and gender[if player is female], given the fact he doesn't show any signs of wanting to fuck you in the front door[end if]. 'Looks like you could use some help to relax...' he says, giving your ass a sudden slap that comes out harder than you would expect, startling you into a silent moan. You can [italic type]feel[roman type] him grinning.";
	say "     He moves towards you, groping on his ever growing dong as he approaches, just bringing himself a little of eager pleasure as he appreciates your butt. Then, you feel your cheeks being pushed apart by his strong hands as his face dives between them, his long pointy tongue licking your pucker and pressing in deep. All you feel is this nimble extension of himself wiggling and squeezing itself inside, deeper than you could imagine he could reach, delivering a lot of pleasurable sensations that truly help you feel more relaxed, tempting you to give in to the sensation. You do not see any issue in just going with it, and eventually, you simply start to enjoy it. Though, oddly, after a while, you feel your ass much less tight... As if you could take anything in it, now.";
	WaitLineBreak;
	say "     'Mmmh... you taste good. I could eat you for hours.' he says, and that receptive feeling in your ass becomes more of a warm itch, increasingly sensitive in a very good way... It feels like it is starting to get hungry for something, eager to be stretched and filled by a big and hard cock... Well, whatever he is doing, it is working. The way his tongue reaches just the right spots inside your ass, with perhaps some demonic magic involved, just keeps on arousing you and make you all the much eager to get fucked by him. You are here to please him, anyway, so that is a welcome feeling to you, who just needs to satisfy the crimson devil. 'Well, you should be ready for a good fuck now... You'd better take my whole dick inside, babe.'";
	say "     As soon as he says this, you feel that thick tip of his penis rubbing across your pucker, which seems to immediately yearn for an intrusion. He obliges soon enough, pushing his length inside you with surprising tenderness, but also with quite the expected depth. He just keeps on pushing and pushing until he is ballsdeep inside your ass, and despite his enormous size, you take it like it was nothing. It just keeps on filling you with such a burning desire for more that you are very unsure on how to deal with it. 'Enjoying that, cute face? Boss said I shouldn't put you into a trance, but he never said anything about a partial one... Love making an ass eager for my cock...' he tells you, and that might have been what just happened. It just feels so good that you cannot help but crave for more...";
	WaitLineBreak;
	say "     He pounds slowly at first, only for a few moments, before he starts to raise the rhythm, making his heavy sack swing back and forth with powerful momentum. 'Hope it feels as good as it feels for me, cutie.' he keeps taunting you, fucking your ass relentlessly with slow and deeper thrusts. Your ass feels delightfully filled, every inner wall of flesh and muscles throbbing and pulsing around his shaft, sending waves of pleasure through your whole body as his meatlog [if player is male]keeps hitting your prostate with vigor. The red demon, out of a merciful act, decides to step up and provide you some stroking on your [cock of player] throbbing cock, which drives you absolutely mad with lust[else]keeps striking you with bliss around your belows. The red demon, driven by the action, decides to step up and grab your [breast size desc of player] breasts, rubbing around your nipples as he pins you down on the bed, which drives you absolutely mad with lust[end if].";
	say "     As he gets harder and rougher with you, his grunting continues, louder than before, his grip around your body almost painfully tight, and soon he is fucking you so hard and deep you feel like you are going to get split in two. He continues, encouraged by your squirming, your own moaning bringing him pleasure and the will to give it all into you. 'Ohh yeah... I'm gonna fill you up. I have to.' You have no other choice but to wait for him to reach his climax, and soon enough, you're feeling an absurd amount of cum being delivered inside you, almost too hot for you to endure as your bowels are flooded with the hottest and thickest demonic seed for a long minute. He rests his length fully inside you, throbbing to the very last drop of cum, making your belly swell with the enormous amount of jizz sloshing inside.";
	WaitLineBreak;
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]He is still holding you underneath him, with his cock buried deep inside your ass, enjoying these last moments of warmth around his sizable erection. Though you feel him still throbbing and hard, as if ready for another round. You delight the hellfire demon by letting him know that he can do it again, and no additional words are necessary. He gives you a toothy grin as he whispers 'Horny little shit, you... Mind if I try to find out how many more loads you can take?' Following this, you withstand round two, and even a three, of intense assfucking until you can barely move your legs...[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
		if player is kinky:
			say "     [italic type]During the whole process, he finds rougher ways to get [']playful['] with you, by either putting his muscular arm around your neck and choke you, or spanking your ass as he keeps on fucking you relentlessly, or even making you swallow his own spit as he kisses you. You are kinky enough to encourage him to continue doing all of this, which only makes him throb harder.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		if player is submissive:
			say "     [italic type]Obviously, during the next few moments, you have no problem with keeping on saying that he owns you, that you are his little bitch, and to claim you, to make you his, to enslave you for all eternity and even take your soul along... You are not careful with your words, but in this case, that is not a problem. You really push the demon's dominant buttons to the maximum, and he fucks you so good that you will, most definitely, dream about it for the next few nights.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		WaitLineBreak;
	say "     With the deed done, the red devil leaves you on the bed, his demonic seed leaking out of your ass as he takes just one more time to appreciate the view. 'Make sure you keep thinking of me entering your ass like that again, yeah?' he says in a tease, as he proceeds to leave the room, as naked as he arrived. Now, you should clean yourself off before Mogdraz arrives, as it would be very embarassing to meet him while you make a trail of cum with all that is leaking out of it.";
	HCEFinalSatisfactionBonus;

[ NORMAL 1 D - DOM FEMALE HELLDEMON ---------------------------------------------------- ]

to say HellfireClubEscortNormal1d:
	say "     After some time readying yourself for what is to come, someone arrives at your room. And whoever this is makes a huge ruckus as she walks inside, naked and proud. 'Heyo, cutie! I heard Mogdraz employed his most recent special guest here? Well, nothing else would please me more than spend my whole salary just to use you for the next few hours!' It is not a strange creature, by any means, but one of the Hellfire lackeys, a crimson demoness like those who roam the streets at night. This one seems to have paid his boss to have some quality time with you, and she seems to want to have things her way. Hellfire demonesses are large and muscular, with quite perky tits and a big ego to go with it all.";
	say "     She closes the door behind him and walks towards you, slowly and eyeing you from head to feet, as if... appreciating you, or maybe she is just considering what she wants to do with you. Whatever she picks, [if player is submissive]your submissive tendencies will, for sure, be useful here[else]you should do what she tells you, or you might end up pissing her off... And Mogdraz wouldn't be happy about it[end if].";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 3; [adjust the latter number for the number of options]
	if randomnumber is:
		-- 1: [she demands foot worship]
			say "     The demoness places her hand under your chin and gently leads you towards her, so you get off the bed and walk closer to her. Then, her grasp around your jaw tightens as she plants a kiss on your lips, her long nimble tongue licking at your mouth's insides with its overwhelming presence. She then pulls out, slowly. 'Mmmh... Your mouth feels good... Perhaps I have a use for it.' she says, as she commands you to lie down on the floor in front of her. 'Come on, now. My feet need attention.' Her clawed toes seem to be moving impatiently, despite her calm posture. It seems she wants you to worship her feet.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - You oblige.";
			say "     ([link]N[as]n[end link]) - Feet? Eww!";
			if player consents: [She's pleased to know of your eagerness]
				Linebreak;
				say "     Of course, you will do as she says. Without any further ado, you begin to lie down on the floor by her request, your head ending up in the space between her feet as she positions himself above you. 'Ahh, that's a really good [boygirl] if I see one.'";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1dFeet;
			else:
				Linebreak;
				say "     Okay, you really are not into this, and you won't do what she asks... So you tell her that. 'Ohhh really? You're going to refuse to pleasure me? Well, if that's so, I'll have boss know that you're not performing adequately. Refusing your clients like this... What a shameful conduct. I'm in my right to not pay any extra, too, so you won't see a coin. Not to mention, boss hates losers, so forget any chance you have with him if you screw this up.'";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - On second thought... Maybe you'll do what she asks.";
				say "     ([link]N[as]n[end link]) - There's no way you're going to put her feet in your mouth.";
				if player consents: [Reconsidering earns you partial satisfaction]
					Linebreak;
					say "     Well, maybe you should reconsider and obey her request. 'Well, that's better. Should've done that in the first place instead of wasting my time.' Without any further ado, you begin to lie down on the floor by herrequest, your head ending up in the space between her feet as she positions himself above you. 'That's a much better place for you now, cute face.'";
					if player is dominant: [A dominant player will pass on a much harsher attitude to the demoness, and she won't like it]
						say "     [italic type]Because you're Dominant, your client disliked your hesitation even more...[roman type][line break]";
						now HCEClientSatisfaction is 0;
						say "(+0)[line break]";
					else:
						now HCEClientSatisfaction is 1;
						say "(+1)[line break]";
					HellfireClubEscortNormal1dFeet;
				else:
					Linebreak;
					say "     You stand your ground, and you won't do what she asks. 'Your choice, then. I'll just let boss know you've been a bad [boygirl].' she says, before turning around and walking away, leaving you alone in the room. That could definitely have gone better...";
					now HCEClientSatisfaction is 0;
		-- 2: [She wants to sit on player's face]
			say "     The demoness places her hand under your chin and gently leads you towards her, so you get off the bed and walk closer to her. Then, her grasp around your jaw tightens as she plants a kiss on your lips, her long nimble tongue licking at your mouth's insides with its overwhelming presence. She then pulls out, slowly. 'Mmmh... Your mouth feels good... Perhaps I have a use for it.' she says, as she commands you to lie down on the bed, pushing you towards it while she nearly tramples you.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - You oblige.";
			say "     ([link]N[as]n[end link]) - Question her.";
			if player consents:
				Linebreak;
				say "     Leaning back onto the bed, you let the demoness climb on top of you, her thick muscular legs ending up on each side of your torso as she rests her considerable weight on top of you. She really is heavy, though she makes sure she does not crush you. Giving her already soaking wet vulva a few stroke as she looks at you in the eye, you have an idea of what she wants...";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1dFaceSit;
			else:
				Linebreak;
				say "     Well, you have to know what you will be doing before you are actually doing it, so you question her before doing anything she says. She is not happy. 'For starters, you are supposed to do what I say. Then, you do whatever the fuck I tell you to do. Do I need to repeat myself a third time, or is it clear enough?'";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Apologize and let her continue.";
				say "     ([link]N[as]n[end link]) - You don't like her attitude.";
				if player consents:
					Linebreak;
					say "     You apologize to the demoness, and proceed to lean back onto the bed. 'That's better. Next time, don't question me. This might be even something you'd enjoy!' she says as she climbs on top of you, her thick muscular legs ending up on each side of your torso as she rests her considerable weight on top of you. She really is heavy, though she makes sure she does not crush you. Giving her already soaking wet vulva a few stroke as she looks at you in the eye, you have an idea of what she wants...";
					if player is dominant: [A dominant player will pass on a much harsher attitude to the demoness, and she won't like it]
						say "     [italic type]Because you're Dominant, your client disliked your hesitation even more...[roman type][line break]";
						now HCEClientSatisfaction is 0;
						say "(+0)[line break]";
					else:
						now HCEClientSatisfaction is 1;
						say "(+1)[line break]";
					HellfireClubEscortNormal1dFaceSit;
				else:
					Linebreak;
					say "     You shake your head and get away from her reach, telling her that you don't like her attitude and you won't have any of this. Then, you tell her about your rights as a worker and that Mogdraz told you to stop things if they got too abusive. 'Oh, abusive?! You really don't know what abusive means, do you?! Obviously, boss doesn't like when his clients literally ruin his employees and makes it impossible for them to work again. That's what he means! Do you think I'd be stupid enough to break you in some way?!' she explains, quite loudly. 'Fucking Hell, you really think you're something special, huh? Well, you've got me in a bad mood, so I'll leave. You're not worth the coins.'";
					say "     Then, she angrily walks away, without looking behind. She definitely did not seem happy...";
					now HCEClientSatisfaction is 0;
		-- 3: [she wants to peg you, on the ass (both genders)]
			say "     The demoness places her hand under your chin and gently leads you towards her, so you get off the bed and walk closer to her. Then, her grasp around your jaw tightens as she plants a kiss on your lips, her long nimble tongue licking at your mouth's insides with its overwhelming presence. As you both make out, she goes for a good grab of your asscheeks, squeezing them nicely as her kissing intensifies, almost passionately. She holds you so tightly that you really feel the demoness is getting into it, though as her careful finger feels your pucker, you start having questions... Does she, by any chance, wants to fuck your ass with a strap-on?!";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - You oblige.";
			say "     ([link]N[as]n[end link]) - You won't allow it. But you might have to get violent to stop her.";
			if player consents:
				Linebreak;
				say "     It really feels good, the way she caresses your ass and spreads your cheeks around, showing how much she wants to claim it for today's session. 'Now, wouldn't it be fun to play with your ass, this time? There are so many fun tools around here... How about a strap-on?' she says, before she gives the order 'Now, bend over for me.'";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1dPegging;
			else:
				Linebreak;
				say "     You really don't like the idea, so you try to stop her... though it is quite difficult. She is a big girl, and she is clearly enjoying kissing you and feeling you up. Then, you figure that the only way to catch his attention is to... bite her tongue.";
				say "     'WHAT THE FUCK?!' she lets go of you, pushing you against the bed violently as she steps back, furious. You were lucky to have escaped an enraged swipe of her clawed hand. 'How dare you attack me like that?! You're lucky you're under boss['] protection, or I would set your shitty ass on fire and let you burn until there was nothing left of that bitch face!' She is shouting at you, absolutely mad. 'Boss will know of this. I'm sure he won't be happy, either. You fucking pile of waste.'";
				say "     It seems you really infuriated her! That will for sure get you in trouble. Whatever the circumstances are, you should [bold type]never attack your clients![roman type][line break]";
				now HCEClientSatisfaction is -1; [You should never hit this value...]
		-- 4: [she feels generous enough to let you pick]
			say "     The demoness places her hand under your chin and gently leads you towards her, so you get off the bed and walk closer to her. Then, her grasp around your jaw tightens as she plants a kiss on your lips, her long nimble tongue licking at your mouth's insides with its overwhelming presence. She then pulls out, slowly. 'Mmmh... I feel generous today. How about I let you pick what we do?' she says, and as such, you are left with some choices to make.";
			LineBreak;
			say "     [bold type]What is your suggestion for the demon?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Worship her feet.";
			say "     [link](2)[as]2[end link] - Have her sit on your face.";
			say "     [link](3)[as]3[end link] - Get pegged with a strap-on.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to pick feet, [link]2[end link] to pick a facesit or [link]3[end link] to pick ass fuck.";
			if calcnumber is 1:
				LineBreak;
				say "     You decide to pick the foot worship option, ";
				if a random chance of 1 in 2 succeeds: [he might really like it, or just be 'meh' about it but do it anyway]
					say "to which the demoness grins eagerly. 'Yesss, great idea. How about you lie down on the floor and let me give it to you, eh?' she orders you, and since the idea was yours, you do not really have any issue with obliging her request.";
					if player is submissive: [this nets the player a good bonus start for choosing well]
						say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
						now HCEClientSatisfaction is 3;
						say "(+3)[line break]";
					else:
						now HCEClientSatisfaction is 2;
						say "(+2)[line break]";
					HellfireClubEscortNormal1dFeet;
				else:
					say "to which the demoness seems hesitant, at first. 'Heh... Not quite what I had in mind for now, but... I suppose we could do that. How about you lie down on the floor and let me give it to you, then?' she orders, and since the idea was yours, you do not really have any issue with obliging her request.";
					now HCEClientSatisfaction is 1;
					HellfireClubEscortNormal1dFeet;
			else if calcnumber is 2:
				Linebreak;
				say "     You decide to pick the facesit option, ";
				if a random chance of 1 in 2 succeeds: [he might really like it, or just be 'meh' about it but do it anyway]
					say "to which the demoness grins eagerly. 'Ohhh, my pussy could use the love, actually... Yes, that sounds great! Lie down on the bed and let me claim that whole face.' she orders you, and since the idea was yours, you do not really have any issue with obliging her request.";
					if player is submissive: [this nets the player a good bonus start for choosing well]
						say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
						now HCEClientSatisfaction is 3;
						say "(+3)[line break]";
					else:
						now HCEClientSatisfaction is 2;
						say "(+2)[line break]";
					HellfireClubEscortNormal1dFaceSit;
				else:
					say "to which the demoness seems hesitant, at first. 'Hm... I suppose I wouldn't refuse a chance to sit on your face. I guess we'll go with that. Now, how about you lie down on the bed and let me claim that mouth?' she orders you, and since the idea was yours, you do not really have any issue with obliging her request.";
					now HCEClientSatisfaction is 1;
					say "(+1)[line break]";
					HellfireClubEscortNormal1dFaceSit;
			else if calcnumber is 3:
				Linebreak;
				say "     You decide to pick the ass pegging option, to which the demoness grins eagerly. 'Oh yes... Delightful! I never say no to some anal play! Good that you're eager to do that for me, too... Now, bend over while I prepare you for the biggest strap-on size...' she orders you, and since the idea was yours, you do not really have any issue with obliging her request.";
				if player is submissive: [this nets the player a good bonus start for choosing well]
					say "     [italic type]Because you're Submissive, you feel particularly comfortable with this situation...[roman type][line break]";
					now HCEClientSatisfaction is 3;
					say "(+3)[line break]";
				else:
					now HCEClientSatisfaction is 2;
					say "(+2)[line break]";
				HellfireClubEscortNormal1dPegging;

to HellfireClubEscortNormal1dFeet:
	WaitLineBreak;
	say "     'Hehe, you look good from here... Though I think you'll look better with one of my feet down your cute face.' she taunts you, as she raises one of her clawed crimson feet over your head, namely her right one. Then, you see it slowly descending upon your face, to cover you with its great size under the rough sole. These demons walk barefoot, so it is only natural that their feet are calloused and thick-skinned. While she is standing, she presses his foot against your face, almost stomping you, though of course that would crush your head, so she keeps it light and gentle...-ish. 'I want to feel your tongue running down all over this, you understand?' she lets you know, as she brings herself some sweet pleasure by rubbing herself while appreciating the view.";
	say "     Once in a while, she grinds it against you, then makes you lick her sole from every angle, including her heel, which she absolutely insists on pushing it down your mouth to feel your lips part around it. 'That feels really good... You're good at this, eh? I gotta let boss know you like worshipping demon feet...' she taunts you, as you are forced to merely withstand her will and oblige her desire. The red deviless really seems to enjoy this, as well, as you often catch her moaning while she fondles her wet cunt, giving you quite a view whenever her foot isn't covering your eyes. 'Oh... you wanna see me for a bit?' she asks you, noticing your interest in watching her from below. Though she has an interesting way of letting you watch... by still covering your whole face with her sizable foot and letting you peek between her toes. 'Yeah, you can take a break now and look...'";
	WaitLineBreak;
	say "     She really looks powerful from your perspective, her vast and supple breasts bouncing around as she caresses them with one hand while the other is kept rubbing at her vulva and clit, occasionally sinking into her curls whenever she wants to finger herself. During all this time she keeps her gaze locked on your barely visible eye, grinning, as a drop of her own juices, leaking from her soaking cunt, falls all the way onto one of her toes. 'Aww... You've got me so excited that my pussy's just leaking, now... Would you mind cleaning that off for me?' she asks, which you know it is more like an order, as she directs her wet toe over to your mouth. Naturally, you let it in, wrapping your lips around the toe - carefully though, since there is a sharp black claw at the tip - and suck off the sweet precum droplet.";
	if player is kinky and player is not dominant:
		say "     [italic type]Although as a little bonus for her, and due to your love for kinky stuff, you give her an especially dedicated sucking all over her toes equally, putting each and every single one of them in your mouth, one at a time, to provide them with your share of tongue love. 'Damn... Now aren't you a good little bitch, too? I love it...'[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	say "     'You want more of that?' she asks, as now you are made to suck on this big toe while she continues to fondle herself, and you get an idea of what she meant with that question. As her stroking motions become faster, the red demoness looks at you with a devilish smile. She takes her foot off your face, and makes a brief pause... as she kneels above you, strokes your cheeks and repositions herself so that her engorged labia hover right above you... 'Here you go, your reward for being such a good [boygirl]...' she says, seconds before your world goes pitch black as she drops herself on your face, her wet curls kissing it whole while being grinded against you. 'Ohh fuck yes!' she moans as she brings yourself to orgasm, her womanhood quivering on top of your face as you feel all her juices coming to cover you in them, tasting sweet but offering you quite a nearly suffocating experience.";
	say "     She then removes herself from your head by standing back up... but not without admiring her [']work['] as you attempt to catch your breath, your skin glistening and drenched with her sex juice.";
	WaitLineBreak;
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]You can't help but feel physically turned on at the sweet aroma and taste of her lady spazzle, and it has an extra effect on you. Clearly aroused, you proceed to attempt to push what you can of it into your mouth and savoring it for the demoness['] pleasure. 'Damn... Wow... Fuck, that's hot.' she says, and you could even see biting her lip as she observes you for a while longer. She really enjoyed that![roman type][line break]";
		increase HCEClientSatisfaction by 2;
		say "(+2)[line break]";
	say "     'Thank you for your service. Have fun thinking about the taste of my pussy a lot, yeah?' she says, as she walks out of the room as naked as she arrived. As for you, you are simply left alone, soaking wet and out of breath. It would be good if you cleaned up before Mogdraz arrives.";
	say "     That taste and scent, though... It really left you horny.";
	increase libido of player by 15;
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1dFaceSit:
	WaitLineBreak;
	say "     As you lie down on the bed before her, she climbs on top of you, offering you a view of herself from below as the muscular demoness positions her cooch above your head. With a grin, she says 'I want your tongue all the way in there, cute face.' before she smothers your face with her womanhood, already wet and engorged with desire. There is just something about her bits that smell so good, and it gets harder to think the more you take this odd scent in through your nostrils. You are naturally compelled to just open your mouth and gobble up on all those juices, sticking your tongue in as much as you can, as she looks down on you, holding your skull up and pressing your face against her pussy. 'Ohhh yes, that feels good... I could hump your face all day...' she says while, indeed, humping and grinding her parts on your face, soaking it in the process.";
	say "     In order to perform your job adequately, you simply wiggle your tongue all over, as you push it inside her, to give her additional stimulation while you are essentially smothered by her. It is more a matter of endurance, in this case, but she enjoys the control she has over you, grabbing your head and make your whole face dive into her sex up between breaks to make sure she does not suffocate you. On the occasion, she lets you give her a good lick around her privates instead, which means her labia on the outside and around her clit. She seems to enjoy it a lot, as she orders you to do it often while you are supposed to be catching your breath, instead, but obviously, you oblige her request which makes her happy.";
	WaitLineBreak;
	say "     She gets to be very rough with you on the next few moments. Riding your face, pushing it against her vulva, slapping it, among other places, calling you names and continuing to remember that you are her bitch as she continues her relentless humping. A heavy girl she is, effectively pinning you down against her with no other choice but to endure her harsh treatment, which she seems to be enjoying profoundly, moaning louder as time goes by";
	if player is kinky and player is not dominant:
		say ". But [italic type]your love for the kinkiness and submission is noted, leaving you almost as aroused as her, which only encourages her to continue to fully enjoy this moment as she sees fit.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	else:
		say ". You, of course, endure it as much as you can and let her have her fun, which only ends up encouraging her to continue to fully enjoy this moment as she sees fit.";
	say "     It is hard to not enjoy it yourself, either, as her sweet scent overwhelms your senses, as well as the delightful taste of her pussy flaming in your tongue like an insistent drug. It feels like there is some demonic magic at play, almost addictive, as she keeps having you lick her juicy cunt. But all things have to come to their inevitable end, and indeed, she quickly approaches her climax, helped by the fact she is rubbing herself all over while planting her pussy on your mouth for the longest time. You feel it quiver right in your face as the already drenched curls soak it even more, her moans intensify and your head is nearly minced into pieces by her surprising force when humping you. Luckily, you survive, as she lets you go before you pass out.";
	say "     She then sits by your waist, [if player is male]too close to have smothered your erection[else]past your chest[end if] and gets a good look at you as you catch your breath, having barely choked on her pussy.";
	WaitLineBreak;
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]You can't help but feel physically turned on at the sweet aroma and taste of her lady spazzle, however, and it has an extra effect on you. Clearly aroused, you proceed to attempt to push what you can of it into your mouth and savoring it for the demoness['] pleasure. 'Damn... Wow... Fuck, that's hot.' she says, and you could even see biting her lip as she observes you for a while longer. She really enjoyed that! So much that she helps you get off as well, by providing you some stimulation. One hand on your [if player is male]cock is all you need to cum all over yourself[else]pussy is all you need to start squirming and twitching in response of an overwhelming climax[end if], as she barely needs to do any rubbing. 'You really enjoyed being used as a pussy seat, hm...?' she teases you, caressing your bits gently until your orgasm subsides.[roman type][line break]";
		increase HCEClientSatisfaction by 2;
		say "(+2)[line break]";
	say "     Done with the deed, the hellfire demoness gets up in order to leave, but not without giving you a smirk as she walks away, looking over her shoulder. 'See you, cute face. Think about me and my cunt a lot while I'm gone, yeah?' she says, her last words before she leaves you alone in the room. Now, you should clean up before Mogdraz arrives.";
	say "     That taste and scent, though... It really left you horny.";
	increase libido of player by 15;
	HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal1dPegging:
	WaitLineBreak;
	say "     In order to position yourself, you bend over the bed with your ass towards the demoness while she watches you from close, her hands then landing on each of your buttocks and squeezing them firmly. 'Now this is a good one...' she comments, appreciating your rear like a true connoisseur of butts, making remarks about its shape and size. You get the feeling she just likes ass, in general, from any creature and gender[if player is female], given the fact she does not show any signs of wanting to peg you in the front door[end if]. 'Looks like you could use some help to relax...' she says, giving your ass a sudden slap that comes out harder than you would expect, startling you into a silent moan. You can [italic type]feel[roman type] her grinning.";
	say "     She moves to put a black colored strap-on on its due place, a quite sizable one... Probably just slightly below the size of her male counterparts, which would be nearly a foot and half of a cock. This one is just barely above one foot long, though, but it is as thick. Then, you feel your cheeks being pushed apart by her powerful hands as her face dives between them, her long pointy tongue licking your pucker and pressing in deep. All you feel is this nimble extension of herself wiggling and squeezing itself inside, deeper than you could imagine she could reach, delivering a lot of pleasurable sensations that truly help you feel more relaxed, tempting you to give in to the sensation. You do not see any issue in just going with it, and eventually, you simply start to enjoy it. Though, oddly, after a while, you feel your ass much less tight... As if you could take anything in it, now.";
	WaitLineBreak;
	say "     'Mmmh... you taste good. I could eat you for hours.' she says, and that receptive feeling in your ass becomes more of a warm itch, increasingly sensitive in a very good way... It feels like it is starting to get hungry for something, eager to be stretched and filled by... something big. Well, whatever she is doing, it is working. The way her tongue reaches just the right spots inside your ass, with perhaps some demonic magic involved, just keeps on arousing you and make you all the much eager to get fucked by her. You are here to please her, anyway, so that is a welcome feeling to you, who just needs to satisfy the crimson deviless. 'Well, you should be ready for a good fuck now... You'd better take this whole thing in, cutie.'";
	say "     As soon as she says this, you feel that thick tip of her attached dildo rubbing across your pucker, which seems to immediately yearn for an intrusion. She obliges soon enough, pushing her strapped length inside you with surprising tenderness, but also with quite the expected depth. She just keeps on pushing and pushing until she is all the way inside your ass, and despite the fake dick's considerable size, you take it like it was nothing. It just keeps on filling you with such a burning desire for more that you are very unsure on how to deal with it. 'Enjoying that, cute face? Boss said I shouldn't put you into a trance, but he never said anything about a partial one... Love making an ass eager to be destroyed...' she tells you, and that might have been what just happened. It just feels so good that you cannot help but crave for more...";
	WaitLineBreak;
	say "     She pounds slowly at first, only for a few moments, before she starts to raise the rhythm, making her strap-on travel back and forth with powerful momentum. 'Hope it feels good for you, cutie. I enjoy this a lot.' she keeps taunting you, fucking your ass relentlessly with slow and deeper thrusts. Your ass feels delightfully filled, every inner wall of flesh and muscles throbbing and pulsing around the shaft structure, sending waves of pleasure through your whole body as the fake meatlog [if player is male]keeps hitting your prostate with vigor. The red demones, out of a merciful act, decides to step up and provide you some stroking on your [cock of player] throbbing cock, which drives you absolutely mad with lust[else]keeps striking you with bliss around your belows. The red demoness, driven by the action, decides to step up and grab your [breast size desc of player] breasts, rubbing around your nipples as she pins you down on the bed, which drives you absolutely mad with lust[end if].";
	say "     As she gets harder and rougher with you, her grip around your body gets almost painfully tight, and soon she is fucking you so hard and deep you feel like you are going to get split in two. She continues, encouraged by your squirming, your own moaning bringing her the pleasure she seeks and the will to give it all into you. 'Ohh yeah... You really like this, don't you? Hmm maybe I should get you to cum... Have you fully enjoy what it is like getting fucked in the ass by a big girl, yeah?' she taunts and teases, accelerating her pace as she [if player is male]strokes your cock as fast as she can[else]fondles your feminine bits as much as she can[end if]. You have no choice but to give in to this pleasure, and eventually, you hit your climax in such an overwhelming way that you end up moaning loudly, making a mess with your [if player is male]cum all over the bed sheets[else]feminine spazzle over the bed sheets[end if] underneath you.";
	WaitLineBreak;
	if "Horny Bastard" is listed in feats of Player:
		say "     [italic type]She is still holding you underneath her, with her strap-on buried deep inside your ass, as you get to enjoy these last moments with her. Though she feels you still craving for more, ready for another round. You delight the hellfire demoness by letting her know that she can do it again, and no additional words are necessary. She gives you a toothy grin as she whispers 'Horny little shit, you... Mind if I try to find out many more times I can throw you over the edge?' Following this, you withstand round two, and even a three, of intense assfucking until you can barely move your legs...[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
		if player is kinky:
			say "     [italic type]During the whole process, she finds rougher ways to get [']playful['] with you, by either putting her muscular arm around your neck and choke you, or spanking your ass as she keeps on fucking you relentlessly, or even making you swallow her own spit as she kisses you. You are kinky enough to encourage her to continue doing all of this, which only makes her go harder on you.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		if player is submissive:
			say "     [italic type]Obviously, during the next few moments, you have no problem with keeping on saying that she owns you, that you are her little bitch, and to claim you, to make you hers, to enslave you for all eternity and even take your soul along... You are not careful with your words, but in this case, that is not a problem. You really push the demoness['] dominant buttons to the maximum, and she fucks you so good that you will, most definitely, dream about it for the next few nights.[roman type][line break]";
			increase HCEClientSatisfaction by 1;
			say "(+1)[line break]";
		WaitLineBreak;
	say "     With the deed done, the red deviless leaves you on the bed, your asshole twitching from all the abuse it suffered, she takes just one more time to appreciate the view. 'Make sure you keep thinking of me entering your ass like that again, yes?' she says in a tease, as she proceeds to leave the room, as naked as she arrived. Now, you should make sure you look as presentable as possible once Mogdraz comes to get you.";
	HCEFinalSatisfactionBonus;

[ NORMAL 2 - DEMON GOO ---------------------------------------------------- ]

to say HellfireClubEscortNormal2:
	say "     Once you are fully ready, you wait for your client...";
	if a random chance of 1 in 5 succeeds: [player has to wait or not... Just some variation on the introduction.]
		WaitLineBreak;
		HellfireClubEscortNormalWaiting;
		WaitLineBreak;
	say "     And before you is a purple hued, almost transparent being. It gurgles and bubbles out what you can only guess are comments on you, but there is little to nothing discernable about any of what it says. It looks and behaves like a wild void beast, and it seems to be moving towards you.";
	Linebreak;
	say "     [bold type]Will you let it touch you?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes, it must be one of Mogdraz's exquisite clients.";
	say "     ([link]N[as]n[end link]) - Is it possible that a creature from the void could have invaded the club?! Run!!!";
	if player consents:
		Linebreak;
		if player is male:
			say "     You settle into the idea of having no real way to know its plans, and accept its form as it crawls up to your feet. The warm, yet slick surface of the thing sends goosebumps along your body, and as it begins to grip and crawl up your legs, a twisted feeling of excitement shoots through you. It's almost like a slug in its movements, and as it grows ever closer to your groin, you can't help but pop up a boner. Blood rushes straight to your groin as this creature rubs at your thighs with a kind of gooey, slimy touch. Then, seconds later, it lurches forward, its front point latching to your stomach as it arches over your [cock of player] cock. Then it seems to stop for a brief moment... at least until it suddenly suctions itself to your groin, shoving all of your length straight inside it within half a second.";
			say "     It feels as if your whole manhood just went balls deep inside of an ass, vagina and mouth all at once. It writhes and laps at your penis as it pulses up and down, it's slick body tight around your entire length. The demon even begins to almost vacuum seal itself to you, leaving you with this purple mass encircling your meat. You can even see a hint of your length lurching and throbbing inside it. There's no doubt that you will fail to last long, but you are guessing that will not be enough for this odd beast. So you settle back, your hands clenching as you fight the urge to grab at the goo. It's doing everything on its own, and your interference could cause some issues. For now, it's keeping you building up towards what you know will be a mind-blowing orgasm. However, right as you reach the edge, it dials back.";
			WaitLineBreak;
			say "     With that dropped effort, you fall back just below the edge and just behind orgasm. You try to hump at the thing, but its seal is complete, and no movement on your part does a thing. Only its desire is what you'll get, and as you get back to almost cumming, your eyes roll back. Once again, it stops right there, leaving you flustered and frustrated. You're dribbling like a madman, and you can even see a swirl of your precum drifting about inside of the purple mass. It is feeding off you, and it will get what it came for! Just as you begin to feel regrets over letting this thing near you, there is a surge in movement, and you feel like you are about to cum. The feeling builds up... and higher... and even higher... until your balls pull into your groin, feeling a buildup of warmth between your legs. And then the creature forms a tight seal around the base and squeezes your cock tip.";
			say "     It ruined your orgasm, prevented you from doing much more than firing out a bit of cum. Your mind is lost in pure flaming madness, and there is nothing to fight against. The blob simply goes back to milking you as your eyes drift closed, forcing you to withstand a nearly painfully, but definitely unbearable edging session. It's not for several minutes that you even get close again, and your mind knows not to hope, at least until you feel your cock painfully fire out what feels like pounds of cum. Each shot is molten hot, singeing your cock as the blob vacuums up all your seed, leaving your senses in overwhelming ecstasy.";
			if "Horny Bastard" is listed in feats of player:
				WaitLineBreak;
				say "     [italic type]But the creature feels it in you, a sex drive higher than most... And your eyes cry as you see that it is still on you, trying to milk you for even longer, more insistingly that before. It knows you can cum more, and it will make you give everything you possibly can to it. You spend the next rounds sweating and crying out of frustration as it keeps on making you cum until there is absolutely nothing left in your aching balls. The worst thing is, you seem to be... somehow exciting the creature with your reactions, as it begins getting even more active the more you grunt and moan...![roman type][line break]";
				increase HCEClientSatisfaction by 2;
				say "(+2)[line break]";
			WaitLineBreak;
			say "     It is not until you are completely dry, and almost crying from the pleasure, that the blob drops from your form, then simply leaves the room a little heavier and fuller than before. Did it really just come here to feed from you?!";
			increase HCEClientSatisfaction by 3;
			say "(+3)[line break]";
			HCEFinalSatisfactionBonus;
		else if player is female:
			say "     You settle into the idea of having no real way to know its plans, and accept its form as it crawls up to your feet. The warm, yet slick surface of the thing sends goosebumps along your body, and as it begins to grip and crawl up your legs, a twisted feeling of excitement surges through you. It is almost like a slug in its movements, and it grows ever closer to your groin, causing your crotch to glisten with excitement. Your lips quiver and twitch as you think about what will come next... or what this blob can do. You get your answer as it brushes up your thighs, grazes your clit, and sends your body shuttering with sparks of pleasure. However, as soon as it begins to push scant inches of itself inside your pussy, those sparks feel more like lightning strikes. You almost jolt in sudden pleasure as it presses more and more of itself inside you.";
			say "     The purple mass then shoves half of itself in you, suddenly filling even your womb, pressing against your insides with insistent care. It's not painful, it's not forceful, at least not all the way inside. Your womb is treated with care and caution as it lightly vibrates, but the tunnel leading to the womb is treated with less concern. The thing twirls and gyrates around, thrusting in and out as it does so. It even feels like it is sucking your insides into it, forcing your walls to grind against the mass as it moves in circles. It pulls your walls with it, moving your insides all over the place as it keeps barely a centimeter of separation between itself and your slick tunnel. You feel like there are thousands of tiny suction cups along this blob, keeping your pussy in constant stimulation as it moves and wiggles around.";
			WaitLineBreak;
			say "     It has not even done much thrusting inside you, and it merely keeps you on constant edge. Its body even grinds against your clit as it plays along your innards. There's nothing to do but let yourself lean back and enjoy the efforts of this strange creature. Still, all things eventually pick up in effort, and all feeding soon gets glutinous. The thrusting goes savage, the part of its body inside you pulling and pushing in rapid beats, not slowing or stopping, as if it was trying to render your insides numb through such fast movements. There's nothing to do but grip at this thing as it fucks you with wild abandon, the entire structure of the blob undulating as it pummels you. Hell, the suction does not even stop, and it feels so weird, and yet so good. There's nothing else like it, and you feel so desperately close to the edge.";
			say "     You cannot even imagine anything feeling this good, this tantalizing, and as it begins to vibrate against your clit, your eyes roll up and stare at the ceiling as your orgasm begins. The pleasure shoots through you like a bullet. It builds up in your thighs, and then your pussy quivers with ecstasy as it fires through your entire body. The feeling keeps growing and going, spreading to your nipples and breasts before reaching your neck. Your entire body is so full of molten hot pleasure that you feel light-headed. It then finally slows down, recedes back, leaving you with a steady and lingering buzz.";
			if "Horny Bastard" is listed in feats of player:
				WaitLineBreak;
				say "     [italic type]But the creature feels it in you, a sex drive higher than most... And your eyes cry as you see that it is still on you, trying to milk you for more orgasms, more insistingly that before. It knows you can give it more, and it will try everything it possibly can to achieve that. You spend the next rounds sweating and crying out of frustration as it keeps on making you burst in forced pleasure, a desperate feeling of helplessness sticking to you as you squirm and wiggle under the goo beast's power. The worst thing is, you seem to be... somehow exciting the creature with your reactions, as it begins getting even more active the more you grunt and moan...![roman type][line break]";
				increase HCEClientSatisfaction by 2;
				say "(+2)[line break]";
			say "     Finally, the blob pulls away. You barely even notice that it is gone by the time you fully shake off the ecstatic orgasm, and cannot even move your legs on the first minutes. Hopefully, Mogdraz will only arrive once you have recovered from that.";
			increase HCEClientSatisfaction by 3;
			say "(+3)[line break]";
			HCEFinalSatisfactionBonus;
	else:
		Linebreak;
		say "     Yes, you just run. You run as fast as you can from that room and lock the creature inside of it. Then you go meet Mogdraz.";
		now HCEClientSatisfaction is -2; [this one is not a bad end to the escort scenes. A very unique exception.]

[ NORMAL 3 - NIGHTMARE HORSES ---------------------------------------------------- ]

HCEscort3NightmareHorseSexRounds is a number that varies. HCEscort3NightmareHorseSexRounds is usually 0. [@TagNotSaved]

to say HellfireClubEscortNormal3a: [Stallion Nightmare]
	say "     Once you are fully ready, you wait for your client to arrive at your room. Though you immediately hear something, some [']click clock['] sounds echoing through the corridors behind the door. They are steady and heavy, like if whoever is coming for you was marching towards your door mounted in a horse...";
	WaitLineBreak;
	say "     Except when the door is open, there is no horse. At least, not the kind of horse you were expecting. This one is a very tall anthro horse, muscular with a flaming mane, dark fur, thick and powerful legs ending in hooves just like a horse's, and one massive equine dong already standing up, above a sack filled with two very sizable orbs. He is clearly excited to see you, as the most prevalent thing that jumps to your eye is, indeed, the throbbing long and rock hard shaft that only slightly swings sideways as he walks towards you. Then, once he is in the room, he closes the door behind him and begins to address you. 'Pardon me for my rudeness. I appear to have built quite a sizable erection on my way here out of excitement. I suppose you are the one assigned to keep me company?' he asks, with a fairly deep masculine voice clearly of demonic nature, yet soft and polite. A nightmare horseman with good manners, who would say? Well, given the circumstances.";
	say "     You assure him that you are, indeed, his escort for the following time. 'Oh, I see. Now, that is quite a treat. I find myself rather lonely during my trips through the Void, and I never find any suitable lover to spend a good time with. I'm so glad there are generous Demon Lords like Mister Mogdraz to aid us in these precarious times... Do you mind if I sit next to you?' There does not seem to be a problem with a little chatting before the action, so you allow him to come over to you and sit on the bed, right by your side. 'Thank you. You are quite [if player is male]the gentleman[else]the gentle person[end if]. Troublesome be the days I spend roaming through the darkness of the Void, finding things that want to eat your soul or claim you as a slave to the unknown... None are quite as friendly as you.'";
	WaitLineBreak;
	say "     Well, surely you cannot seem to ignore that his equine shaft is still standing up, hard as rock, while he is sitting right next to you, just talking. But, sure, why would all your sessions be just about sex? Some people might simply feel lonely. You are here to see their needs satisfied...";
	LineBreak;
	say "     [link](1)[as]1[end link] - Keep it clean and just make some conversation.";
	say "     [link](2)[as]2[end link] - Might as well grab his throbbing rod right now while you talk.";
	say "     [link](3)[as]3[end link] - Ask him if he could use your mouth on his cock as you converse.";
	say "     [link](4)[as]4[end link] - You don't care about conversations, your job is to fuck.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to choose conversation only, [link]2[end link] to grab his dick, [link]3[end link] to offer a kind of different oral services or [link]4[end link] to tell him you just fuck and don't talk.";
	if calcnumber is 1: [Clean Conversation]
		Linebreak;
		now HCEClientSatisfaction is 3; [you are so nice!]
		say "(+3)[line break]";
		say "     Surely this flaming man horse is just lonely, and you can provide him the company. As the ice has been broken, you are now free to ask questions and push some subjects, namely to keep your client entertained. You start with showing him some empathy regarding his loneliness in the void. 'Oh it is a sad place. Have you been there? It's just... darkness everywhere, and you can't trust what you see. Never! There was one time I was caught in a forest of funny looking plants. As you must have realized, I get quite horny and very frequently, so I've decided to shove my dong inside a pussy-shaped flower because it looked so fun! To my horror, they turned out to be maneater plants with vines thrashing all over the place, trying to grab me and, certainly, do horrible things to me! I barely escaped without being eaten by one. Never more!'";
		say "     It must have been rough, you say. Trying to relief yourself with some innocent looking plants only to find out that they are creatures who want to eat you must be such a pain... You sympathize with the nightmare stallion. 'I was left with my cock hard and unsatisfied... It was so sad, I had to jerk it off myself while trying not to fall into any dimensional traps, or finding myself inside one of those preposterous giant snakes. It would have been such a waste, a specimen like me consumed by such a primitive and horrible creature.' Indeed, it would have been a waste, you agree. He is a very handsome stallion, shiny and silky smooth fur, glorious flames covering what would be his mane, and a respectable sizable cock that is still throbbing before your very eyes.";
		WaitLineBreak;
		say "     'Pardon me for my holewrecker. It is as stubborn as a mule! I guess I do find your attention quite pleasurable. Would love to take you as my slave, you are so entertaining...' Slave, of course. Were you thinking you were talking to something else other than a full-fledged demon? He is a nightmare horse! But, you do appreciate the compliment and thank him in the process. However, you also have to inform him that while you are under Mogdraz's employment, you would have to deny any requests for willing enslavement. 'I am aware, my dear. It was just a genuine compliment, nothing more. Although, I... Do have a request, if you may indulge me.' You let him know you are all ears as you do your best to pay attention to his next words.";
		say "     'Could you provide me the pleasure of inserting my long manhood inside you? Preferably in your anus? I long to breed someone the good old way...' he asks, as his horsecock continues to pulse in eagerness.";
		LineBreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please him.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny his request.";
		if player consents:
			Linebreak;
			say "     You tell the horseman that it would be your pleasure, and he only has to say how he wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, he will be careful, so all you have to do is trust him. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3aFuck;
		else:
			Linebreak;
			say "     You tell him that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse man. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     [link](1)[as]1[end link] - You can work his cock with your hands.";
			say "     [link](2)[as]2[end link] - Suggest a blowjob.";
			say "     [link](3)[as]3[end link] - Offer a nice massage.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to choose conversation only, [link]2[end link] to grab his dick or [link]3[end link] to offer a different kind of services.";
			if calcnumber is 1: [Handjob]
				Linebreak;
				say "     Considering your options, you suggest a handjob would do the trick, as you are quite good with your hands. 'Hm... I suppose. A pair of hands other than mine would definitely feel better, and I don't risk choking or impaling you on my sizable manhood. You may touch it, then.' he [italic type]declares[roman type] as he gives you full freedom to proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3aHandjob;
			else if calcnumber is 2: [Blowjob]
				Linebreak;
				say "     Considering your options, you suggest a blowjob would do the trick, as you are quite an expert with the oral pleasures. 'A warm mouth would be most pleasurable, indeed. I do hope you don't have much of a gag reflex, though. I would hate to have you puke and cry all over my beautiful shaft. Play around it and don't shove it in too deep, if that's the case.' Having his advice taken into account, you proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3aBlowjob;
			else if calcnumber is 3: [Massage]
				Linebreak;
				say "     Perhaps a relaxing massage would be in order? 'Ohhh, a body massage? Well, but I'm afraid that would leave me even more horny! I do like the idea, though. Perhaps... We could give it a try?' says the horseman, as you consider your next moves.";
				WaitLineBreak;
				HellfireClubEscortNormal3aMassage;
	else if calcnumber is 2: [Jump into a handjob]
		Linebreak;
		now HCEClientSatisfaction is 2; [you are... quite eager to please]
		say "(+2)[line break]";
		say "     As he takes his seat, you reach for his cock gently with one of your hands. The anthro nightmare horse stutters at this, and immediately releases a soft moan. 'Oh, my... Ohh... Uh... I see you are quite forward with all of this. V-very well, you may... handjob me. In fact, I do believe I need that more than anything.' he says, giving you permission to proceed as you see fit.";
		WaitLineBreak;
		HellfireClubEscortNormal3aHandjob;
	else if calcnumber is 3: [Jump into a blowjob]
		Linebreak;
		now HCEClientSatisfaction is 2; [you are... quite eager to please]
		say "(+2)[line break]";
		say "     As he takes his seat, you lick your lips as you begin to lean over his massive dong, with the intent to lay your lips on that veiny shaft. He stops you, however. 'My...! How rude! Did you intend to start sucking my cock without permission?!' You urge to tell him it is nothing like that, you merely wanted to provide him some pleasure while you converse. 'Ah, you had the best intentions, then. I apologize, some creatures seem to eager to kneel before me and take my member inside their mouths, then realize it is too much for them as they so quickly indulge them into the practice. I hate cocksuckers with a gag reflex, or those who are rather unskilled and cannot work with the fact they have one. A terrible turn-off, as you must comprehend.'";
		say "     You simply look at him and request his permission, since you were already on your way. 'If you tend to my needs in the right ways, then I suppose you may have my permission. Go on ahead and put your mouth to good use.' he says, allowing you to proceed as you see fit.";
		WaitLineBreak;
		HellfireClubEscortNormal3aBlowjob;
	else if calcnumber is 4: [Well...]
		Linebreak;
		say "     You tell him that you have no interest in conversing, and your services are strictly kept to physically pleasuring someone. 'How... rude! I paid for company, not for a sex doll! If I wanted to fuck an empty sack of organs I would have done so for free! Preposterous. I shall take my leave, then. You have offended me for thinking so lowly of my person.'";
		say "     He does not even give you a chance to apologize, even if you wanted to. He gets off the bed like a thunder spark as he walks away, leaving you alone in the room. And of course, with a terrible review on your record. Looks like someone is not going to get paid for this one...";
		now HCEClientSatisfaction is 0;

to HellfireClubEscortNormal3aHandjob:
	say "     Placing both your hands around his already rock hard and throbbing dark equine cock, you give him a gentle rub across the shaft, keeping the solid meatstick between your palms as you take a good grasp of it, then begin to slide them up and down, all very gently at first. The polite horseman is quite pleased at your initial approach, as he only observes you working his cock without interfering, silently admiring your dedication. The expression [']hung like a horse['] clearly fits the stallion. He is already a very tall and overall large anthro nightmare horse, which makes the fact of him being [']hung['] even more true, and of course, a lot bigger. You think his cock can reach his chest in length, and you would clearly have a lot of trouble handling it in any other way.";
	say "     As horny as the stallion was, it does not take long for him to start leaking some precum, which combined with his darkened flesh makes it look like a very tall volcano oozing lava. But you know this to be clearly a much more harmless liquid, as it only lays warm in your fingers, still slippery and somewhat sticky. He continues to watch you stroke him, patiently, enjoying your caress and touch as he takes the chance to relax and let his guard down, allowing himself to fully enjoy your treat. Such a lovely horseman would have a hard time traversing the void without finding some good company along the way, and you happen to be his relief, stroking his big long equine shaft with all the tenderness you can muster.";
	WaitLineBreak;
	say "     Though, quickly enough, you feel his cock pulse more and more, the nightmare stallion beginning to show signs of nearing the edging point. You are not surprised this came along so early, given how he was so horny since the first second you landed your eyes on him. His enormous dong throbs and pulses at each motion you do with your hands, and the horseman lets out a few moans as you bring him closer to his yearning release. 'Ohhh... I might be nearing my limit... If you keep stroking me, that is...' he warns you, but this really is not a sign that you should stop. Driven by lust as your client is, you make sure you continue your steady motions, stroking the equine shaft at a good pace, not too fast nor too slow, and eventually, your efforts are rewarded.";
	say "     Soon, there is cum being shot everywhere, and you are unable to escape the deluge that comes raining on top of you. Not daring to let go of that big horsecock, you continue to stroke it until the stallion reaches his last spurts, which still looks comparable to an average person's load. 'Ohhh... Yes! That was splendid! You've got good hands...!' he compliments you, as you realize he made a huge mess all over the bed, the floor and yourselves.";
	increase HCEClientSatisfaction by 1;
	say "(+1)[line break]";
	WaitLineBreak;
	if HCEscort3NightmareHorseSexRounds is 0:
		now HCEscort3NightmareHorseSexRounds is 1;
		say "     To your shock, however, the nightmare stallion's cock does not seem to have gone soft. It is still throbbing at a full erection, and his balls still feel quite full. 'Good foreplay, I must admit. Though for someone with my drive for sex, I usually need to cum a second time... Do you think I could use your anus to pleasure myself? I long to breed someone the good old way...' he asks, as his horsecock continues to pulse in eagerness.";
		Linebreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please him.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny his request.";
		if player consents:
			Linebreak;
			say "     You tell the horseman that it would be your pleasure, and he only has to say how he wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, he will be careful, so all you have to do is trust him. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3aFuck;
		else:
			Linebreak;
			say "     You tell him that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse man. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Consider sucking his cock.";
			say "     ([link]N[as]n[end link]) - Suggest a relaxing massage.";
			if player consents:
				Linebreak;
				say "     Considering your options, you suggest a blowjob would do the trick, as you are quite an expert with the oral pleasures. 'A warm mouth would be most pleasurable, indeed. I do hope you don't have much of a gag reflex, though. I would hate to have you puke and cry all over my beautiful shaft. Play around it and don't shove it in too deep, if that's the case.' Having his advice taken into account, you proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3aBlowjob;
			else:
				Linebreak;
				say "     Perhaps a relaxing massage would be in order? 'Ohhh, a body massage? Well, but I'm afraid that would leave me even more horny! I do like the idea, though. Perhaps... We could give it a try?' says the horseman, as you consider your next moves.";
				WaitLineBreak;
				HellfireClubEscortNormal3aMassage;
	else:
		say "     'Ahh, well... I feel relieved. Thank you for your service. I shall take my leave now, and... perhaps deliver a little bonus to Mister Mogdraz as an incentive for your improvement. I'm sure he will also appreciate it.' With that said, the nightmare stallion leaves the room, with a half-hard cock this time, and leaves you there, in the middle of all the mess. There is no way you will be able to clean everything on your own, but at least you can do something for yourself before the Demon Lord comes to fetch you from your room.";
		now HCEscort3NightmareHorseSexRounds is 0;
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal3aBlowjob:
	say "     Placing both your hands around his already rock hard and throbbing dark equine cock, you give him a gentle rub across the shaft, keeping the solid meatstick between your palms as your mouth begins to descend upon his member. Such a massive rod would certainly prove a challenge to even the most expert cocksuckers, but you are determined to accomplish your task with efficiency. Putting your tongue to work, you give the tip a lick, then have it run around his girth as you prepare to wrap your soft lips around it. The stallion observes you with quite a lot of interest, watching your every move around his long horsedick, throbbing and pulsing as it keeps on leaking. The taste of his precum is incredibly sweet and warm, so demonic in nature that you just feel compelled to take more and more...";
	say "     Though that is something you were going to do, anyway, taking more of his shaft inside your mouth, letting it fill you with bliss. He lets out a moan as he otherwise silently appreciates your efforts, allowing you to service his throbbing manhood as you please. Twirling your tongue all around the girth of his cock, twisting your head everytime you slide your mouth down and back up, and sucking him good as you seal your lips around the shaft, their softness rubbing against the rock hard, warm pulsing surface of his dong... You do it all, while your hands provide enough support for the areas you cannot reach. Stroking and sucking him seems to be the answer to satisfy that massive horsecock...";
	WaitLineBreak;
	say "     It must be your good work that seems to get the nightmare horseman going, as you cannot help but notice that his hips have become stiff, as well as his abs, while he keeps on taking deep breaths. Looking at how his balls have raised, you go for a gentle grab as you fondle them tenderly, with your remaining hand stroking his cock while your mouth remains attached to the tip of his penis. Further jerkings, strokings and suckings quickly send him closer to the edge, and he urges you to push your head away. 'I'm really, really close... Y-you'd better just...' he tries to warn you, without finishing his sentence, but you realize that it must be because he is about to cum, and given the fact he is a demon carrying a massive load in his balls, you would probably want to play safe.";
	say "     But this means you are close to satisfy the stallion. A few more strokes, quickly, while standing at a safe distance, is enough to set him off the edge. Soon, there is cum being shot everywhere, and you are unable to escape the deluge that comes raining on top of you. Not daring to let go of that big horsecock, you continue to stroke it until the stallion reaches his last spurts, which still looks comparable to an average person's load. 'Mmmy... Your mouth is so soft inside, I could keep you there for hours and hours... Servicing me to no end like a good little slave... Ohh, this was most satisfying.' he compliments you, as you realize he made a huge mess all over the bed, the floor and yourselves.";
	increase HCEClientSatisfaction by 1;
	say "(+1)[line break]";
	WaitLineBreak;
	if HCEscort3NightmareHorseSexRounds is 0:
		now HCEscort3NightmareHorseSexRounds is 1;
		say "     To your shock, however, the nightmare stallion's cock does not seem to have gone soft. It is still throbbing at a full erection, and his balls still feel quite full. 'Good foreplay, I must admit. Though for someone with my drive for sex, I usually need to cum a second time... Do you think I could use your anus to pleasure myself? I long to breed someone the good old way...' he asks, as his horsecock continues to pulse in eagerness.";
		Linebreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please him.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny his request.";
		if player consents:
			Linebreak;
			say "     You tell the horseman that it would be your pleasure, and he only has to say how he wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, he will be careful, so all you have to do is trust him. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3aFuck;
		else:
			Linebreak;
			say "     You tell him that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse man. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Consider using just your hands.";
			say "     ([link]N[as]n[end link]) - Suggest a relaxing massage.";
			if player consents:
				Linebreak;
				say "     Considering your options, you suggest a handjob would do the trick, as you are quite good with your hands. 'Hm... I suppose. A pair of hands other than mine would definitely feel better, and I don't risk impaling you on my sizable manhood. You may touch it, then.' he [italic type]declares[roman type] as he gives you full freedom to proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3aHandjob;
			else:
				Linebreak;
				say "     Perhaps a relaxing massage would be in order? 'Ohhh, a body massage? Well, but I'm afraid that would leave me even more horny! I do like the idea, though. Perhaps... We could give it a try?' says the horseman, as you consider your next moves.";
				WaitLineBreak;
				HellfireClubEscortNormal3aMassage;
	else:
		say "     'Ahh, well... I feel relieved. Thank you for your service. I shall take my leave now, and... perhaps deliver a little bonus to Mister Mogdraz as an incentive for your improvement. I'm sure he will also appreciate it.' With that said, the nightmare stallion leaves the room, with a half-hard cock this time, and leaves you there, in the middle of all the mess. There is no way you will be able to clean everything on your own, but at least you can do something for yourself before the Demon Lord comes to fetch you from your room.";
		now HCEscort3NightmareHorseSexRounds is 0;
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal3aMassage:
	say "     You intend to give him something different, more relaxing and less sexual than just going straight into the core of the subject. Meaning, you want to give the big stallion a massage instead of grabbing his cock right away, and that is exactly what you go for. How convenient it is that your room has a large bed where the horseman can lie down and enjoy your work! First, you get him to lie down on the comfortable sheets with his belly down, so you can attend to his back first. You are aware of the massive hard-on he has to be basically squashing down underneath his muscular body, but it should not be too much of a problem. If anything, it will only throb harder as you climb on top of him and place your hands over his shoulders, tenderly massaging the tense area which causes him to immediately relax.";
	say "     With the help of your own weight, you apply pressure where it is most needed, over to his neck then back to his shoulder blades, though [bold type]very[roman type] carefully. His mane is still fire, after all! He lets out a moan of pleasure as you continue your way down, covering every muscle from the right angles with your gentle, yet precise and steady touch. 'I didn't expect this to feel... so good...!' he comments, as you proceed lower, over to the area surrounding his ribs, towards his lower back and waist, then back up again, with ample movements first before you shorten the scope, when you detect local tension in order to relieve it. Once you are finished here, you go even lower, down to his waist and below... pleased to realize the large stallion has a really nice butt, filled with plump muscle nice to the touch.";
	WaitLineBreak;
	say "     'I... normally don't allow anyone to touch me down there, but... It does feel relaxing...' he says, as you grab each glute and squeeze them underneath your palms, giving them a generous grabbing and rubbing all over. But you dare to venture in deeper, as you slide your fingers between his buttocks, not all at once, but slowly, only rubbing at the inner side of his asscheeks. Then, your finger happens to brush against his pucker, then again... and again... and each time making the stallion raise his ass up just a little more... 'That feels so good...' he says, as now you find your fingers rubbing at his dark hole, tentatively at first, but more deeply later on, the tip of your thumb circling around his pucker tenderly.";
	say "     It does look very tight, and you feel it clenched as you rub at it. It shows that the stallion never had anyone fuck him from behind, but he does not seem to mind you touching and caressing it. In fact, he seems particularly aroused at this. 'A... Ahh... Uhh... I...' You dismiss these as simply moans, but for some reason, it feels like he is trying to tell you something. Nevertheless, you continue your anal massage, providing him with a very good moment that sends him moaning loudly for the next minute... Wait a second. Why is he moaning so much and jerking his hips like... Oh, you see. You made the stallion cum all over the sheets as you continued to pleasure his backdoor. It goes on and on for a good long minute!";
	say "     'O-oh, no... I... I'm so embarassed. I'm not used to sensations focused on my... rear. T-that was most unexpected!' he says, as he turns around and away from the messy puddle of spunk and drenched sheets. 'You are really good at that. I... I may have to... request your services more often. This one will, most certainly, keep me... thinking.'";
	increase HCEClientSatisfaction by 2;
	say "(+2)[line break]";
	WaitLineBreak;
	if HCEscort3NightmareHorseSexRounds is 0:
		now HCEscort3NightmareHorseSexRounds is 1;
		say "     To your shock, however, the nightmare stallion's cock does not seem to have gone soft. It is still throbbing at a full erection, and his balls still feel quite full. 'Good foreplay, I must admit. Though for someone with my drive for sex, I usually need to cum a second time... Do you think I could use your anus to pleasure myself? I long to breed someone the good old way... and after the amazing job you have done, I... really want to give you something special.' he asks, as his horsecock continues to pulse in eagerness.";
		Linebreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please him.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny his request.";
		if player consents:
			Linebreak;
			say "     You tell the horseman that it would be your pleasure, and he only has to say how he wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, he will be careful, so all you have to do is trust him. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3aFuck;
		else:
			Linebreak;
			say "     You tell him that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse man. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Consider using just your hands.";
			say "     ([link]N[as]n[end link]) - Perhaps he would like a blowjob.";
			if player consents:
				Linebreak;
				say "     Considering your options, you suggest a handjob would do the trick, as you are quite good with your hands. 'Hm... I suppose. A pair of hands other than mine would definitely feel better, and I don't risk impaling you on my sizable manhood. You may touch it, then.' he [italic type]declares[roman type] as he gives you full freedom to proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3aHandjob;
			else:
				Linebreak;
				say "     Considering your options, you suggest a blowjob would do the trick, as you are quite an expert with the oral pleasures. 'A warm mouth would be most pleasurable, indeed. I do hope you don't have much of a gag reflex, though. I would hate to have you puke and cry all over my beautiful shaft. Play around it and don't shove it in too deep, if that's the case.' Having his advice taken into account, you proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3aBlowjob;
	else:
		say "     'Ahh, well... I feel relieved. Thank you for your service. I shall take my leave now, and... perhaps deliver a little bonus to Mister Mogdraz as an incentive for your improvement. I'm sure he will also appreciate it.' With that said, the nightmare stallion leaves the room, with a half-hard cock this time, and leaves you there, in the middle of all the mess. There is no way you will be able to clean everything on your own, but at least you can do something for yourself before the Demon Lord comes to fetch you from your room.";
		now HCEscort3NightmareHorseSexRounds is 0;
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal3aFuck:
	say "     Following his request, you bend over the bed with your relevant parts exposed, so that the stallion can position himself right behind you and prepare you for what is to come. He has the kindness to begin to rub at your pucker in slow, tender ways, in order to help you relax and open yourself for his big horsecock, yearning for a tight place to be shoved into. His size is very, very big, and there are not many who would take it comfortably, not even the most experienced bottoms and cock riders. You do not feel his dick rubbing against your asshole yet, but instead, another organ. A slick, nimble and wet one, his tongue, licking at your entrance with utmost tenderness, only to moisten up your hole before he finally stands back up.";
	say "     It is then that you feel his other organ, a much bigger and harder one, namely his long and thick horsecock, poking at your ass and rubbing all over it. Glancing over your shoulder, you see the tall stallion grabbing your hips and gently begin to push his erection inside you. With that size, you brace for any stretchy pain, but... There really seems to be none. 'Gently, I said, and I shall do it. A little magic and I fit anywhere, my dear. But worry not, I won't go any deeper than I have to.' he says, and indeed, he takes only a slow, gentle thrust inside your butthole, which fills your merrily with his throbbing meat.";
	WaitLineBreak;
	say "     You cannot help but feel glad he is not impaling you, but the whole feeling is rather strange the more he pushes in. While he clearly is not using his whole length, you feel your insides stretch around his girth to the limit, a point you think to be your maximum. Once he discovers this, however, he stops, and pulls back, only to thrust back inside just a little behind that point, and then it only feels good. Very good. The nightmare horseman drills you with precision and calm, which is something he enjoys himself, feeling his cock entering you slowly and steadily with each motion, sending you into a bliss that catches you off guard very quickly. There is no way of knowing why or what is causing this, but your rear feels so oversensitive and pleasant that you cannot help but give in.";
	say "     'Enjoying it? I know you would... Most seem to. You'd really make a good slave...' he says, picking up the pace as he continues to pound at you, a bit faster this time, but still without any pain. There is a feeling of safety when with him, something that strikes you as an uncontrollable tendency to... submit... 'You feel so good, my dear... Indulge my fantasy... Become my slave and you shall be well rewarded.' You really have no choice in the matter [if player is dominant]. Even as a dominant person, the spell you were put under is too powerful, and you find yourself receptive to him, in more ways than just one[else]. The spell you were put under just makes you be receptive to him, in more ways than just one...[end if].[line break]";
	WaitLineBreak;
	say "     Now, he thrusts in deeper... impossibly deep. You actually have no idea how you can take it all, but you can. There is strangeness about all of this, but it all feels too good for your mind to even care about reasons. 'Give it all to me, slave. I own you, now.' he commands, and you arch your back, giving him more to work with. His cock would have damaged you under normal circumstances, but every possibility is instead replaced with pure bliss and pleasure. 'Beg for more... Crave my seed...' you hear his deep voice entering your mind like a tantalizing temptation, forcing you to let out the words he wishes to hear. Your actions are quite not your own, but your mind is fogged by the state of ecstasy you are being pushed into.";
	say "     'That's it... good [boygirl]... You shall have my precious load, then. All... inside you.' he says, words filling you with a surge of excitement you cannot quite explain, but your body begs to be filled with his warm cum. You give in to it as he fucks you faster, his massive horsecock penetrating you in impossible manners, even feeling its tip at the back of your throat, defying every law of the universe... It is something like you never experienced before, and soon, his dong begins to tremble, pulse and throb so much... so, so much... to the point he... absolutely drowns you from inside out with his cum. Your whole body is filled with his creamy hot load that you even spit out of your mouth, coming out of your throat, running down your tongue and lips as if you were puking it, and your belly begins to swell...";
	say "     'Take it all... All of it... to the last drop...' You make a huge mess as his orgasm, seemingly endless, continues to fill your every space inside your being, leaking from your mouth and ass as its impossibly overwhelming quantity cannot be contained inside you. But yet, it continues, more and more cum being pumped into you without cease as your senses begin to fade...";
	increase HCEClientSatisfaction by 2;
	say "(+2)[line break]";
	if player is submissive:
		WaitLineBreak;
		say "     [italic type]Your submissive instincts greatly pleased the nightmare stallion.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	WaitLineBreak;
	say "     You wake up later, a huge mess all over the sheets and the floor as you are simply lying down on top of it all, the horseman having disappeared. You are left confused and wondering if part of you is still you, or if you are a whole right now... Upon checking yourself, you seem to be okay, unharmed and still in control of your decisions, but something strange definitely happened here...";
	now HCEscort3NightmareHorseSexRounds is 0;
	HCEFinalSatisfactionBonus;

[ --- ]

to say HellfireClubEscortNormal3b: [Herm Mare Nightmare]
	say "     Once you are fully ready, you wait for your client to arrive at your room. Though you immediately hear something, some [']click clock['] sounds echoing through the corridors behind the door. They are steady and heavy, like if whoever is coming for you was marching towards your door mounted in a horse...";
	WaitLineBreak;
	say "     Except when the door is open, there is no horse. At least, not the kind of horse you were expecting. This one is a very tall anthro horse, muscular with a flaming mane, dark fur, ample hips, thick and powerful legs ending in hooves just like a horse's, and one massive equine dong already standing up, above a sack filled with two very sizable orbs. But his one is... not a he. There is also a very perky pair of tits hanging around, completetely exposed. She would be a herm mare, you wonder, and clearly excited to see you, as the most prevalent thing that jumps to your eye is, indeed, the throbbing long and rock hard shaft that only slightly swings sideways as she walks towards you. Then, once she is in the room, she closes the door behind him and begins to address you. 'Pardon me for my rudeness. I appear to have built quite a sizable erection on my way here out of excitement. I suppose you are the one assigned to keep me company?' she asks, with a fairly deep but still feminine voice, clearly of demonic nature, yet soft and polite. A nightmare horsewoman with good manners, who would say? Well, given the circumstances.";
	say "     You assure her that you are, indeed, her escort for the following time. 'Oh, I see. Now, that is quite a treat. I find myself rather lonely during my trips through the Void, and I never find any suitable lover to spend a good time with. I'm so glad there are generous Demon Lords like Mister Mogdraz to aid us in these precarious times... Do you mind if I sit next to you?' There does not seem to be a problem with a little chatting before the action, so you allow her to come over to you and sit on the bed, right by your side. 'Thank you. You are quite [if player is male]the gentleman[else]the gentle person[end if]. Troublesome be the days I spend roaming through the darkness of the Void, finding things that want to eat your soul or claim you as a slave to the unknown... None are quite as friendly as you.'";
	WaitLineBreak;
	say "     Well, surely you cannot seem to ignore that her equine shaft is still standing up, hard as rock, while she is sitting right next to you, just talking. But, sure, why would all your sessions be just about sex? Some people might simply feel lonely. You are here to see their needs satisfied...";
	LineBreak;
	say "     [link](1)[as]1[end link] - Keep it clean and just make some conversation.";
	say "     [link](2)[as]2[end link] - Might as well grab her throbbing rod right now while you talk.";
	say "     [link](3)[as]3[end link] - Ask her if she could use your mouth on her cock as you converse.";
	say "     [link](4)[as]4[end link] - You don't care about conversations, your job is to fuck.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to choose conversation only, [link]2[end link] to grab her dick, [link]3[end link] to offer a kind of different oral services or [link]4[end link] to tell her you just fuck and don't talk.";
	if calcnumber is 1: [Clean Conversation]
		Linebreak;
		now HCEClientSatisfaction is 3; [you are so nice!]
		say "(+3)[line break]";
		say "     Surely this flaming woman horse is just lonely, and you can provide her the company. As the ice has been broken, you are now free to ask questions and push some subjects, namely to keep your client entertained. You start with showing her some empathy regarding her loneliness in the void. 'Oh it is a sad place. Have you been there? It's just... darkness everywhere, and you can't trust what you see. Never! There was one time I was caught in a forest of funny looking plants. As you must have realized, I get quite horny and very frequently, so I've decided to shove my dong inside a pussy-shaped flower because it looked so fun! To my horror, they turned out to be maneater plants with vines thrashing all over the place, trying to grab me and, certainly, do horrible things to me! One of them even shoved itself up my own pussy, to my shock... I barely escaped without being eaten by a plant. Never more!'";
		say "     It must have been rough, you say. Trying to relief yourself with some innocent looking plants only to find out that they are creatures who want to eat you must be such a pain... You sympathize with the nightmare herm mare. 'I was left with my cock hard, my cunt dripping and unsatisfied... It was so sad, I had to finish myself while trying not to fall into any dimensional traps, or finding myself inside one of those preposterous giant snakes. It would have been such a waste, a specimen like me consumed by such a primitive and horrible creature.' Indeed, it would have been a waste, you agree. She is a very beautiful mare, shiny and silky smooth fur, glorious flames covering what would be her mane, and a respectable sizable cock that is still throbbing before your very eyes, paired with a pussy just behind her balls.";
		WaitLineBreak;
		say "     'Pardon me for my holewrecker. It is as stubborn as a mule! I thought it would be fun to have one, in addition to my womanhood. I guess I do find your attention quite pleasurable, however. Would love to take you as my slave, you are so entertaining...' Slave, of course. Were you thinking you were talking to something else other than a full-fledged demoness? She is a nightmare horse! But, you do appreciate the compliment and thank her in the process. However, you also have to inform her that while you are under Mogdraz's employment, you would have to deny any requests for willing enslavement. 'I am aware, my dear. It was just a genuine compliment, nothing more. Although, I... Do have a request, if you may indulge me.' You let her know you are all ears as you do your best to pay attention to her next words.";
		say "     'Could you provide me the pleasure of inserting my long dong inside you? Preferably in your anus? I long to breed someone the good old way...' she asks, as her horsecock continues to pulse in eagerness.";
		LineBreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please her.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny her request.";
		if player consents:
			Linebreak;
			say "     You tell the horsewoman that it would be your pleasure, and she only has to say how she wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, she will be careful, so all you have to do is trust her. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3bFuck;
		else:
			Linebreak;
			say "     You tell her that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse woman. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     [link](1)[as]1[end link] - You can work her cock with your hands.";
			say "     [link](2)[as]2[end link] - Suggest a blowjob.";
			say "     [link](3)[as]3[end link] - Offer a nice massage.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to choose conversation only, [link]2[end link] to grab her dick or [link]3[end link] to offer a different kind of services.";
			if calcnumber is 1: [Handjob]
				Linebreak;
				say "     Considering your options, you suggest a handjob would do the trick, as you are quite good with your hands. 'Hm... I suppose. A pair of hands other than mine would definitely feel better, and I don't risk choking or impaling you on my sizable cock. You may touch it, then.' she [italic type]declares[roman type] as she gives you full freedom to proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3bHandjob;
			else if calcnumber is 2: [Blowjob]
				Linebreak;
				say "     Considering your options, you suggest a blowjob would do the trick, as you are quite an expert with the oral pleasures. 'A warm mouth would be most pleasurable, indeed. I do hope you don't have much of a gag reflex, though. I would hate to have you puke and cry all over my beautiful shaft. Play around it and don't shove it in too deep, if that's the case.' Having her advice taken into account, you proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3bBlowjob;
			else if calcnumber is 3: [Massage]
				Linebreak;
				say "     Perhaps a relaxing massage would be in order? 'Ohhh, a body massage? Well, but I'm afraid that would leave me even more horny! I do like the idea, though. Perhaps... We could give it a try?' says the horse herm, as you consider your next moves.";
				WaitLineBreak;
				HellfireClubEscortNormal3bMassage;
	else if calcnumber is 2: [Jump into a handjob]
		Linebreak;
		now HCEClientSatisfaction is 2; [you are... quite eager to please]
		say "(+2)[line break]";
		say "     As she takes her seat, you reach for her cock gently with one of your hands. The anthro nightmare horse stutters at this, and immediately releases a soft moan. 'Oh, my... Ohh... Uh... I see you are quite forward with all of this. V-very well, you may... handjob me. In fact, I do believe I need that more than anything.' she says, giving you permission to proceed as you see fit.";
		WaitLineBreak;
		HellfireClubEscortNormal3bHandjob;
	else if calcnumber is 3: [Jump into a blowjob]
		Linebreak;
		now HCEClientSatisfaction is 2; [you are... quite eager to please]
		say "(+2)[line break]";
		say "     As she takes her seat, you lick your lips as you begin to lean over her massive dong, with the intent to lay your lips on that veiny shaft. She stops you, however. 'My...! How rude! Did you intend to start sucking my cock without permission?!' You urge to tell her it is nothing like that, you merely wanted to provide her some pleasure while you converse. 'Ah, you had the best intentions, then. I apologize, some creatures seem to eager to kneel before me and take my member inside their mouths, then realize it is too much for them as they so quickly indulge them into the practice. I hate cocksuckers with a gag reflex, or those who are rather unskilled and cannot work with the fact they have one. A terrible turn-off, as you must comprehend.'";
		say "     You simply look at her and request her permission, since you were already on your way. 'If you tend to my needs in the right ways, then I suppose you may have my permission. Go on ahead and put your mouth to good use.' she says, allowing you to proceed as you see fit.";
		WaitLineBreak;
		HellfireClubEscortNormal3bBlowjob;
	else if calcnumber is 4: [Well...]
		Linebreak;
		say "     You tell her that you have no interest in conversing, and your services are strictly kept to physically pleasuring someone. 'How... rude! I paid for company, not for a sex doll! If I wanted to fuck an empty sack of organs I would have done so for free! Preposterous. I shall take my leave, then. You have offended me for thinking so lowly of my person.'";
		say "     She does not even give you a chance to apologize, even if you wanted to. She gets off the bed like a thunder spark as she walks away, leaving you alone in the room. And of course, with a terrible review on your record. Looks like someone is not going to get paid for this one...";
		now HCEClientSatisfaction is 0;

to HellfireClubEscortNormal3bHandjob:
	say "     Placing both your hands around her already rock hard and throbbing dark equine cock, you give her a gentle rub across the shaft, keeping the solid meatstick between your palms as you take a good grasp of it, then begin to slide them up and down, all very gently at first. The polite horse woman is quite pleased at your initial approach, as she only observes you working her cock without interfering, silently admiring your dedication. The expression [']hung like a horse['] clearly fits the mare. She is already a very tall and overall large anthro nightmare horse, which makes the fact of her being [']hung['] even more true, and of course, a lot bigger. You think her cock can reach her chest in length, and you would clearly have a lot of trouble handling it in any other way.";
	say "     As horny as the mare was, it does not take long for her to start leaking some precum, which combined with her darkened flesh makes it look like a very tall volcano oozing lava. But you know this to be clearly a much more harmless liquid, as it only lays warm in your fingers, still slippery and somewhat sticky. She continues to watch you stroke her, patiently, enjoying your caress and touch as she takes the chance to relax and let her guard down, allowing herself to fully enjoy your treat. Such a lovely horse woman would have a hard time traversing the void without finding some good company along the way, and you happen to be her relief, stroking her big long equine shaft with all the tenderness you can muster.";
	WaitLineBreak;
	say "     Though, quickly enough, you feel her cock pulse more and more, the nightmare herm mare beginning to show signs of nearing the edging point. You are not surprised this came along so early, given how she was so horny since the first second you landed your eyes on her. Her enormous dong throbs and pulses at each motion you do with your hands, and the horse woman lets out a few moans as you bring her closer to her yearning release. 'Ohhh... I might be nearing my limit... If you keep stroking me, that is...' she warns you, but this really is not a sign that you should stop. Driven by lust as your client is, you make sure you continue your steady motions, stroking the equine shaft at a good pace, not too fast nor too slow, and eventually, your efforts are rewarded.";
	say "     Soon, there is cum being shot everywhere, and you are unable to escape the deluge that comes raining on top of you. Not daring to let go of that big horsecock, you continue to stroke it until the herm mare reaches her last spurts, which still looks comparable to an average person's load. 'Ohhh... Yes! That was splendid! You've got good hands...!' she compliments you, as you realize she made a huge mess all over the bed, the floor and yourselves.";
	increase HCEClientSatisfaction by 1;
	say "(+1)[line break]";
	WaitLineBreak;
	if HCEscort3NightmareHorseSexRounds is 0:
		now HCEscort3NightmareHorseSexRounds is 1;
		say "     To your shock, however, the nightmare herm mare's cock does not seem to have gone soft. It is still throbbing at a full erection, and her balls still feel quite full. 'Good foreplay, I must admit. Though for someone with my drive for sex, I usually need to cum a second time... Do you think I could use your anus to pleasure myself? I long to breed someone the good old way...' she asks, as her horsecock continues to pulse in eagerness.";
		Linebreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please her.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny her request.";
		if player consents:
			Linebreak;
			say "     You tell the horse woman that it would be your pleasure, and she only has to say how she wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, she will be careful, so all you have to do is trust her. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3bFuck;
		else:
			Linebreak;
			say "     You tell her that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse woman. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Consider sucking his cock.";
			say "     ([link]N[as]n[end link]) - Suggest a relaxing massage.";
			if player consents:
				Linebreak;
				say "     Considering your options, you suggest a blowjob would do the trick, as you are quite an expert with the oral pleasures. 'A warm mouth would be most pleasurable, indeed. I do hope you don't have much of a gag reflex, though. I would hate to have you puke and cry all over my beautiful shaft. Play around it and don't shove it in too deep, if that's the case.' Having her advice taken into account, you proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3bBlowjob;
			else:
				Linebreak;
				say "     Perhaps a relaxing massage would be in order? 'Ohhh, a body massage? Well, but I'm afraid that would leave me even more horny! I do like the idea, though. Perhaps... We could give it a try?' says the horse woman, as you consider your next moves.";
				WaitLineBreak;
				HellfireClubEscortNormal3bMassage;
	else:
		say "     'Ahh, well... I feel relieved. Thank you for your service. I shall take my leave now, and... perhaps deliver a little bonus to Mister Mogdraz as an incentive for your improvement. I'm sure he will also appreciate it.' With that said, the nightmare herm mare leaves the room, with a half-hard cock this time, and leaves you there, in the middle of all the mess. There is no way you will be able to clean everything on your own, but at least you can do something for yourself before the Demon Lord comes to fetch you from your room.";
		now HCEscort3NightmareHorseSexRounds is 0;
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal3bBlowjob:
	say "     Placing both your hands around her already rock hard and throbbing dark equine cock, you give her a gentle rub across the shaft, keeping the solid meatstick between your palms as your mouth begins to descend upon her member. Such a massive rod would certainly prove a challenge to even the most expert cocksuckers, but you are determined to accomplish your task with efficiency. Putting your tongue to work, you give the tip a lick, then have it run around her girth as you prepare to wrap your soft lips around it. The herm mare observes you with quite a lot of interest, watching your every move around her long horsedick, throbbing and pulsing as it keeps on leaking. The taste of her precum is incredibly sweet and warm, so demonic in nature that you just feel compelled to take more and more...";
	say "     Though that is something you were going to do, anyway, taking more of her shaft inside your mouth, letting it fill you with bliss. She lets out a moan as he otherwise silently appreciates your efforts, allowing you to service her throbbing dong as you please. Twirling your tongue all around the girth of her cock, twisting your head everytime you slide your mouth down and back up, and sucking her good as you seal your lips around the shaft, their softness rubbing against the rock hard, warm pulsing surface of her dick... You do it all, while your hands provide enough support for the areas you cannot reach. Stroking and sucking her seems to be the answer to satisfy that massive horsecock...";
	WaitLineBreak;
	say "     It must be your good work that seems to get the nightmare horseman going, as you cannot help but notice that her hips have become stiff, as well as her abs, while she keeps on taking deep breaths. Looking at how her balls have raised, you go for a gentle grab as you fondle them tenderly, with your remaining hand stroking her cock while your mouth remains attached to the tip of her penis. Further jerkings, strokings and suckings quickly send her closer to the edge, and she urges you to push your head away. 'I'm really, really close... Y-you'd better just...' she tries to warn you, without finishing her sentence, but you realize that it must be because she is about to cum, and given the fact she is a demon carrying a massive load in her balls, you would probably want to play safe.";
	say "     But this means you are close to satisfy the herm mare. A few more strokes, quickly, while standing at a safe distance, is enough to set her off the edge. Soon, there is cum being shot everywhere, and you are unable to escape the deluge that comes raining on top of you. Not daring to let go of that big horsecock, you continue to stroke it until the stallion reaches her last spurts, which still looks comparable to an average person's load. 'Mmmy... Your mouth is so soft inside, I could keep you there for hours and hours... Servicing me to no end like a good little slave... Ohh, this was most satisfying.' she compliments you, as you realize she made a huge mess all over the bed, the floor and yourselves.";
	increase HCEClientSatisfaction by 1;
	say "(+1)[line break]";
	WaitLineBreak;
	if HCEscort3NightmareHorseSexRounds is 0:
		now HCEscort3NightmareHorseSexRounds is 1;
		say "     To your shock, however, the nightmare herm mare's cock does not seem to have gone soft. It is still throbbing at a full erection, and her balls still feel quite full. 'Good foreplay, I must admit. Though for someone with my drive for sex, I usually need to cum a second time... Do you think I could use your anus to pleasure myself? I long to breed someone the good old way...' she asks, as her horsecock continues to pulse in eagerness.";
		Linebreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please her.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny her request.";
		if player consents:
			Linebreak;
			say "     You tell the horse woman that it would be your pleasure, and she only has to say how she wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, she will be careful, so all you have to do is trust her. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3bFuck;
		else:
			Linebreak;
			say "     You tell her that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse woman. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Consider using just your hands.";
			say "     ([link]N[as]n[end link]) - Suggest a relaxing massage.";
			if player consents:
				Linebreak;
				say "     Considering your options, you suggest a handjob would do the trick, as you are quite good with your hands. 'Hm... I suppose. A pair of hands other than mine would definitely feel better, and I don't risk impaling you on my sizable cock. You may touch it, then.' she [italic type]declares[roman type] as she gives you full freedom to proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3bHandjob;
			else:
				Linebreak;
				say "     Perhaps a relaxing massage would be in order? 'Ohhh, a body massage? Well, but I'm afraid that would leave me even more horny! I do like the idea, though. Perhaps... We could give it a try?' says the horse woman, as you consider your next moves.";
				WaitLineBreak;
				HellfireClubEscortNormal3bMassage;
	else:
		say "     'Ahh, well... I feel relieved. Thank you for your service. I shall take my leave now, and... perhaps deliver a little bonus to Mister Mogdraz as an incentive for your improvement. I'm sure he will also appreciate it.' With that said, the nightmare herm mare leaves the room, with a half-hard cock this time, and leaves you there, in the middle of all the mess. There is no way you will be able to clean everything on your own, but at least you can do something for yourself before the Demon Lord comes to fetch you from your room.";
		now HCEscort3NightmareHorseSexRounds is 0;
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal3bMassage:
	say "     You intend to give her something different, more relaxing and less sexual than just going straight into the core of the subject. Meaning, you want to give the big herm mare a massage instead of grabbing her cock right away, and that is exactly what you go for. How convenient it is that your room has a large bed where the horse woman can lie down and enjoy your work! First, you get her to lie down on the comfortable sheets with her back down, so you can attend to her front first. Her massive hard-on is clearly a distraction, but it should not be too much of a problem for you. If anything, it will only throb harder as you climb on top of her and place your hands over her shoulders, tenderly massaging the tense area which causes her to immediately relax.";
	say "     With the help of your own weight, you apply pressure where it is most needed, at the same time you kind of stimulate her dong, which she seems to be enjoying a lot. You press over her neck then back to her shoulder blades, and se lets out a moan of pleasure as you continue your way down, covering every muscle from the right angles with your gentle, yet precise and steady touch. 'I didn't expect this to feel... so good...!' she comments, as you proceed lower, over to the area surrounding her ribs, towards her lower back and waist, then back up again, with ample movements first before you shorten the scope, when you detect local tension in order to relieve it. Once you are finished here, you get bolder... reaching your hands over her sizable breasts.";
	WaitLineBreak;
	say "     'I... normally don't allow anyone to touch me there, but... It does feel relaxing...' she says, as you grab each boob and squeeze them underneath your palms, giving them a generous grabbing and rubbing all over. In the meantime, you grind your rear against her cock, throbbing underneath you with desire. Your fingers happen to brush against her nipples, tentatively at first, but then circling around them... again... and again... each time harder than the last, going for a good nipple rubbing. 'That feels so good...' she exclaims, the more you rub her tits and grind against her cock, harder and with increasingly more enthusiasm. She seems to be wild in lust and ecstasy...";
	say "     'Oh... sweet... yes...! I'm... I'm so close...! She tries to warn you as she jerks her hips against you, but it is too late. She makes a huge mess all over her chest and your hands as she begins to cum all over, nearly drowning herself in her own load as you simply watch, feeling the throbbing meat underneath you going wild with each spurt of demonic seed leaving through. The creamy hot liquid simply coats every angle of her torso and down onto the sheets, even your hands as you continue to feel up her boobs. It takes her a long minute to finally begin to calm down, as her orgasm subsides...";
	WaitLineBreak;
	say "     'O-oh, no... I... I'm so embarassed. I'm not used to... do it like this. T-that was most unexpected!' she says, as she turns her face around and away from you, shying away. You get up to let her get off the messy puddle of spunk and drenched sheets. 'You are really good at that. I... I may have to... request your services more often. This one will, most certainly, keep me... thinking.'";
	increase HCEClientSatisfaction by 2;
	say "(+2)[line break]";
	WaitLineBreak;
	if HCEscort3NightmareHorseSexRounds is 0:
		now HCEscort3NightmareHorseSexRounds is 1;
		say "     To your shock, however, the nightmare herm mare's cock does not seem to have gone soft. It is still throbbing at a full erection, and her balls still feel quite full. 'Good foreplay, I must admit. Though for someone with my drive for sex, I usually need to cum a second time... Do you think I could use your anus to pleasure myself? I long to breed someone the good old way... and after the amazing job you have done, I... really want to give you something special.' she asks, as her horsecock continues to pulse in eagerness.";
		Linebreak;
		say "     [bold type]How will you respond?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - But of course! You are here to please her.";
		say "     ([link]N[as]n[end link]) - Fearing death by impalement, or for some other reason, you deny her request.";
		if player consents:
			Linebreak;
			say "     You tell the horse woman that it would be your pleasure, and she only has to say how she wants it. 'Splendid! Don't worry, I will go in gently. I am fully aware of my monstrous size and I definitely would not want to lethally impale you on my cock. That would be a waste of such a beautiful soul like yours!' At least, she will be careful, so all you have to do is trust her. 'Bend over the bed, please. I shall try to make this pleasurable for us both.'";
			WaitLineBreak;
			HellfireClubEscortNormal3bFuck;
		else:
			Linebreak;
			say "     You tell her that, unfortunately, you would have to refuse, as provide the excuse that you have a limit on how much you can take, by Mogdraz's recommendation. Technically, you are recalling your right to back off if something is ought to damage you physically, which turns out to be a compelling argument for the horse woman. 'I see. It is no trouble, then. You have offered me a good time, already. Is there another way we can get this cursed hard-on taken care of, though? I would very much appreciate that.'";
			LineBreak;
			say "     [bold type]What do you recommend?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Consider using just your hands.";
			say "     ([link]N[as]n[end link]) - Perhaps she would like a blowjob.";
			if player consents:
				Linebreak;
				say "     Considering your options, you suggest a handjob would do the trick, as you are quite good with your hands. 'Hm... I suppose. A pair of hands other than mine would definitely feel better, and I don't risk impaling you on my sizable cock. You may touch it, then.' he [italic type]declares[roman type] as she gives you full freedom to proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3bHandjob;
			else:
				Linebreak;
				say "     Considering your options, you suggest a blowjob would do the trick, as you are quite an expert with the oral pleasures. 'A warm mouth would be most pleasurable, indeed. I do hope you don't have much of a gag reflex, though. I would hate to have you puke and cry all over my beautiful shaft. Play around it and don't shove it in too deep, if that's the case.' Having her advice taken into account, you proceed as you see fit.";
				WaitLineBreak;
				HellfireClubEscortNormal3bBlowjob;
	else:
		say "     'Ahh, well... I feel relieved. Thank you for your service. I shall take my leave now, and... perhaps deliver a little bonus to Mister Mogdraz as an incentive for your improvement. I'm sure he will also appreciate it.' With that said, the nightmare herm mare leaves the room, with a half-hard cock this time, and leaves you there, in the middle of all the mess. There is no way you will be able to clean everything on your own, but at least you can do something for yourself before the Demon Lord comes to fetch you from your room.";
		now HCEscort3NightmareHorseSexRounds is 0;
		HCEFinalSatisfactionBonus;

to HellfireClubEscortNormal3bFuck:
	say "     Following her request, you bend over the bed with your relevant parts exposed, so that the mare can position herself right behind you and prepare you for what is to come. She has the kindness to begin to rub at your pucker in slow, tender ways, in order to help you relax and open yourself for her big horsecock, yearning for a tight place to be shoved into. Her size is very, very big, and there are not many who would take it comfortably, not even the most experienced bottoms and cock riders. You do not feel her dick rubbing against your asshole yet, but instead, another organ. A slick, nimble and wet one, her tongue, licking at your entrance with utmost tenderness, only to moisten up your hole before she finally stands back up.";
	say "     It is then that you feel her other organ, a much bigger and harder one, namely her long and thick horsecock, poking at your ass and rubbing all over it. Glancing over your shoulder, you see the tall mare grabbing your hips and gently begin to push her erection inside you. With that size, you brace for any stretchy pain, but... There really seems to be none. 'Gently, I said, and I shall do it. A little magic and I fit anywhere, my dear. But worry not, I won't go any deeper than I have to.' she says, and indeed, she takes only a slow, gentle thrust inside your butthole, which fills your merrily with her throbbing meat.";
	WaitLineBreak;
	say "     You cannot help but feel glad she is not impaling you, but the whole feeling is rather strange the more she pushes in. While she clearly is not using his whole length, you feel your insides stretch around her girth to the limit, a point you think to be your maximum. Once she discovers this, however, she stops, and pulls back, only to thrust back inside just a little behind that point, and then it only feels good. Very good. The nightmare horse woman drills you with precision and calm, which is something she enjoys herself, feeling her cock entering you slowly and steadily with each motion, sending you into a bliss that catches you off guard very quickly. There is no way of knowing why or what is causing this, but your rear feels so oversensitive and pleasant that you cannot help but give in.";
	say "     'Enjoying it? I know you would... Most seem to. You'd really make a good slave...' she says, picking up the pace as she continues to pound at you, a bit faster this time, but still without any pain. There is a feeling of safety when with her, something that strikes you as an uncontrollable tendency to... submit... 'You feel so good, my dear... Indulge my fantasy... Become my slave and you shall be well rewarded.' You really have no choice in the matter [if player is dominant]. Even as a dominant person, the spell you were put under is too powerful, and you find yourself receptive to her, in more ways than just one[else]. The spell you were put under just makes you be receptive to her, in more ways than just one...[end if].[line break]";
	WaitLineBreak;
	say "     Now, she thrusts in deeper... impossibly deep. You actually have no idea how you can take it all, but you can. There is strangeness about all of this, but it all feels too good for your mind to even care about reasons. 'Give it all to me, slave. I own you, now.' she commands, and you arch your back, giving her more to work with. Her cock would have damaged you under normal circumstances, but every possibility is instead replaced with pure bliss and pleasure. 'Beg for more... Crave my seed...' you hear her deep voice entering your mind like a tantalizing temptation, forcing you to let out the words she wishes to hear. Your actions are quite not your own, but your mind is fogged by the state of ecstasy you are being pushed into.";
	say "     'That's it... good [boygirl]... You shall have my precious load, then. All... inside you.' she says, words filling you with a surge of excitement you cannot quite explain, but your body begs to be filled with her warm cum. You give in to it as she fucks you faster, her massive horsecock penetrating you in impossible manners, even feeling its tip at the back of your throat, defying every law of the universe... It is something like you never experienced before, and soon, her dong begins to tremble, pulse and throb so much... so, so much... to the point she... absolutely drowns you from inside out with her cum. Your whole body is filled with her creamy hot load that you even spit out of your mouth, coming out of your throat, running down your tongue and lips as if you were puking it, and your belly begins to swell...";
	say "     'Take it all... All of it... to the last drop...' You make a huge mess as her orgasm, seemingly endless, continues to fill your every space inside your being, leaking from your mouth and ass as its impossibly overwhelming quantity cannot be contained inside you. But yet, it continues, more and more cum being pumped into you without cease as your senses begin to fade...";
	increase HCEClientSatisfaction by 2;
	say "(+2)[line break]";
	if player is submissive:
		WaitLineBreak;
		say "     [italic type]Your submissive instincts greatly pleased the nightmare herm mare.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	WaitLineBreak;
	say "     You wake up later, a huge mess all over the sheets and the floor as you are simply lying down on top of it all, the herm horse having disappeared. You are left confused and wondering if part of you is still you, or if you are a whole right now... Upon checking yourself, you seem to be okay, unharmed and still in control of your decisions, but something strange definitely happened here...";
	now HCEscort3NightmareHorseSexRounds is 0;
	HCEFinalSatisfactionBonus;

to say HellfireClubEscortNormal4a: [Male Lizardman]
	say "     Once you are fully ready, you wait for your client...";
	if a random chance of 1 in 5 succeeds: [player has to wait or not... Just some variation on the introduction.]
		WaitLineBreak;
		HellfireClubEscortNormalWaiting;
		WaitLineBreak;
	say "     You hear a triple knock on the door to your room. Even with it being left ajar, your client seems not to dare entering without your consent. A polite one, you wonder?";
	say "     They do not enter just yet. It seems you really are expected to do something. Maybe give them permission to come to you? Or... just... stay silent?";
	Linebreak;
	say "     [bold type]What will you do?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Tell your client to enter.";
	say "     ([link]N[as]n[end link]) - Keep your eyes peeled.";
	if player consents:
		Linebreak;
		say "     You tell your client to just come in as soon as you hear the knocking. Now, you hear some movement, as you hear a quite ominous voice speaking...";
		WaitLineBreak;
		say "     'May I come in?' a red lizard face comes peeking through the door, his tongue waving like a snake's as he hisses. Is he some kind of demonic lizardman mixed with a snake of some sort? His eyes are, indeed, reptile in appearance, with a fiery yellow tone, and the rest of his body is tall and fit, covered in dark red scales and shaped into an anthropomorphic form of a lizardman. He stands completely naked as he walks in, with only a slit resting between his legs, where you would expect something dandling. Not the case for the lizard people. 'Ssss... Oh, this is most pleasant. I like a discrete encounter in a cozy establishment. Are you to be my escort for tonight?'";
	else:
		Linebreak;
		say "     You keep sitting on the bed. Your eyes are fixated on the door. Nothing else moves nor makes a noise, except... the three knocks, again, at the exact same pace as before.";
		Linebreak;
		say "     [bold type]What will you do?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Just tell your client to enter.";
		say "     ([link]N[as]n[end link]) - Keep your eyes peeled, yet again.";
		if player consents:
			Linebreak;
			say "     You tell your client to just come in as soon as you hear the knocking. Now, you hear some movement, as you hear a quite ominous voice speaking...";
			WaitLineBreak;
			say "     'May I come in?' a red lizard face comes peeking through the door, his tongue waving like a snake's as he hisses. Is he some kind of demonic lizardman mixed with a snake of some sort? His eyes are, indeed, reptile in appearance, with a fiery yellow tone, and the rest of his body is tall and fit, covered in dark red scales and shaped into an anthropomorphic form of a lizardman. He stands completely naked as he walks in, with only a slit resting between his legs, where you would expect something dandling. Not the case for the lizard people. 'Ssss... I apologize for taking so long to enter. I prefer a safe entry rather than being seen as impolite. Are you to be my escort for tonight?'";
		else:
			Linebreak;
			say "     And once more, you await. Your eyes are still fixated on the door, and there is absolutely nothing going on...";
			say "     Until...";
			WaitLineBreak;
			say "     'May I come in?' a red lizard face comes peeking through the door, his tongue waving like a snake's as he hisses. Is he some kind of demonic lizardman mixed with a snake of some sort? His eyes are, indeed, reptile in appearance, with a fiery yellow tone, and the rest of his body is tall and fit, covered in dark red scales and shaped into an anthropomorphic form of a lizardman. He stands completely naked as he walks in, with only a slit resting between his legs, where you would expect something dandling. Not the case for the lizard people. 'Ssss... I apologize for taking so long to enter. I prefer a safe entry rather than being seen as impolite. Are you to be my escort for tonight?'";
	WaitLineBreak;
	say "     Certainly, his most prevalent feature is the constant hissing through his words, which gives him an even more ominous feeling. But as the situation stands, you are to be, indeed, his escort, so you let him know that he is correct. 'I see... Sss...! I do have a few requests... regarding what we should be doing together... I'm a big fan of the oral activities, as they are the most pleasurable while simultaneously relaxing, a fine way to enjoy the luxuries of good company.' - he says, pausing with another hiss - 'Would it be appropriate if we shared a long time indulging ourselves in the art that makes most use of our mouths and tongues? I would be delighted... And would make sure your superior gets a fair payment for your s-ssservice...'";
	say "     Either you are going to be putting your mouth on him, or he will want to put that long tongue of his to work on your privates, most likely. It is not a choice that will fall on your shoulders, but you are expected to perform stellarly and respect his wishes.";
	Linebreak;
	say "     [bold type]Do you accept these terms?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Sure thing, you are here to please.";
	say "     ([link]N[as]n[end link]) - His hissing creeps you out. Send him away and call it a day.";
	if player consents:
		Linebreak;
		now HCEClientSatisfaction is 2;
		say "(+2)[line break]";
		say "     Of course, he is the one whose whims you must satisfy, and so, you tell him you are ready for anything he desires. 'Perfect. Then I would like to get started on something...'";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 2; [adjust the latter number for the number of options]
		if randomnumber is:
			-- 1: [he wants the player to blow him]
				HellfireEscortNormal4aSuckCock;
			-- 2: [he wants to blow the player if male, or lick the player's pussy if female]
				HellfireEscortNormal4aGetOral;
		HCEFinalSatisfactionBonus;
	else:
		Linebreak;
		say "     Just why does he keep doing it?! It sounds ominous and sends you chills down your spine. You do not want to work with this client, and so, you send him away in the most polite manner possible. 'Oh, I... I do apologize, I thought I asked for a professional... What kind of people does Master Mogdraz employ, these days-sss...? This is such a big disappointment! Hopefully he will have another much more compliant servant to sate my needs, or he won't see any coin from me ever again. Ssss!!'";
		say "     After his aggressive hissing at you, he leaves the room without looking behind. At least you got rid of him, but Mogdraz certainly is not going to hand you any payment. Someone else will have the coins you could have.";
		now HCEClientSatisfaction is 0;

to HellfireEscortNormal4aSuckCock:
	say "     He comes to you, slowly and gently, sitting next to you by the bed as he puts a hand over your thigh. 'I find myself in need of a warm mouth. A skilled one, though...' he says, exposing his slit to you, which seems to show the pointy tip of his lizard cock beginning to emerge. One of his fingers slip underneath your chin, and he makes you look into his eyes, very tenderly. For moments, you feel lost in his gaze, as if your whole being just sank within a bright orange sea, enveloping you in a warm embrace as your mind becomes lighter, free of worries and needless thoughts. It's as if a strange influence took over you, which you really cannot find the will to fight. In fact, it feels like an eternity of joyful bliss... 'Yesss... Let it all go... focus on me...'";
	say "     Before you notice, you are already kneeling before him and between his scaly legs, your lips kissing the entirety of his slick shaft as his pointy manhood fully reveals itself, hard and pulsing with need that only you can sate. The sensitive surface of his member feels like the sweetest thing you have ever tasted, and it makes you want more. You are quick to wrap your lips around its whole girth, to then slide it into your mouth as your tongue wiggles all over it, taking his cock inside you with all the enthusiasm he deserves. 'Sss... That's it... Take it all in...' the lizardman says to you, passing his hand over your head and praising you like you were his pet, with no resistance whatsoever from you. In fact, it just leaves you more excited.";
	WaitLineBreak;
	say "     Servicing him with your best efforts, he makes you look at him again as you take his cock deep into your throat. He tells you to hold it a few times, the whole thing throbbing in your mouth, filling it and blocking your breathing, but only his eyes matter to you... It is just impossible to look away. 'My... so talented...' the lizardman comments, and then has you let go, returning to the tip of his dick in order for your to catch your breath, keeping your tongue wiggling around its pointy head. 'Again... Come here...' he orders, and you immediately obey, letting his member sink into your mouth and deep down your throat once more, holding it inside as you lock your gaze on his. 'Yesss... You know how to please me properly...'";
	say "     This happens a few times more, with each being faster and slightly harder, but never losing its tenderness. Eventually, however, it comes to an end, as the demon lizardman nears the point of no return. 'Ready to swallow my seed, good servant? It shall be your reward...' he asks, and you nod instinctively, not being able to help yourself but to feel excited for his offering. And so, you continue your motions around his cock, sucking him eagerly as you bring him closer and closer... And then, finally, he bursts into your mouth, rich and creamy cum filling your senses just by its sweet flavor as the lizardman hisses in pleasure, finishing his entire load past your lips and down into your throat. You swallow every single drop, and still feel like you are craving for more...";
	WaitLineBreak;
	clear the screen;
	say "     You suddenly hear a snap of fingers and shake your head, only finding yourself in confusion as nobody is in the room with you. There is this... strange taste in your mouth, somewhat sweet and quite intriguing, and you are naked. The sheets over your bed are wrinkled, and the door was left ajar. You try to remember what happened, but you are not able to. It is as if someone was here and then left... and with them, they took your memories. Well, it does look like you have done your job, but you have no idea how your performance was.";
	if player is submissive:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, and that it was a very praised aspect of your behavior...[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	if player is dominant:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, which... seems odd, given how dominant you are. Something broke in your mind, and you cannot tell what... But there is a certainty that your client thoroughly enjoyed this.[roman type][line break]";
		increase HCEClientSatisfaction by 3;
		say "(+3)[line break]";
	if player is kinky:
		WaitLineBreak;
		say "     [italic type]The way you were so receptive to the charms of his strange client was also noted, thanks to your kinkiness. Something tells you that it could only be beneficial.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";

to HellfireEscortNormal4aGetOral:
	say "     He comes to you, slowly and gently, sitting next to you by the bed as he puts a hand over your thigh. 'I find myself wanting to provide someone a great deal of pleasure...' he says, sliding it closer and closer to your crotch, but without touching it, still. 'Might you allow me to do it for you? I promise, it will feel very, very good...' One of his fingers slip underneath your chin, and he makes you look into his eyes, very tenderly. For moments, you feel lost in his gaze, as if your whole being just sank within a bright orange sea, enveloping you in a warm embrace as your mind becomes lighter, free of worries and needless thoughts. It's as if a strange influence took over you, which you really cannot find the will to fight. In fact, it feels like an eternity of joyful bliss... 'Let me show you... It will leave you craving for more...'";
	if player is male:
		say "     Before you notice, he is already kneeling before you and between your legs, his lips kissing the entirety of your shaft as it only grows harder under his care, throbbing impossibly hard as he keeps his gaze locked on yours. There is a feeling of intense pleasure in every movement he makes with his long tongue, wrapped around your member with such nimbleness that it blows your mind. It then sinks into his mouth, so warm and hot that it only makes your manhood more sensitive, together with the sensation of his entire tongue stroking it with the same dexterity as a hand. Feels like you are being given a blowjob and a handjob simultaneously, combined into much a stronger and pleasant stimulation...";
		WaitLineBreak;
		if cock length of player < 12:
			say "     He takes it all in, deep into his throat even,";
		else:
			say "     He takes all he can inside, working with your big size without hesitation, ";
		say "simply doing his best at providing you the highest amount pleasure he possibly can. Nothing really is a challenge for him, as you are kept in a highroad of blissful joy under the whole entirety of his care, every inch, corner and sensitive spot of your cock, lavished in good sensations. It only leaves you wanting more and more... and even more when you are soon to hit the point of no return. He keeps you there, however... Around the edge, circling around your tip, until you are on the verge of begging him... Right there... almost to the brink of exploding right in his mouth, but he does not let you. The lizardman says 'Beg me for it...' and you mutter the words he wants to hear. Then, a bit louder... And even louder...!";
		say "     He makes you repeat them until he is satisfied, and then he gives is all, making you burst in absolute orgasm inside his mouth as he swallows your offering, shooting hard against the back of his mouth so eagerly that the whole world around you disappears for a moment. This good feeling of cumming continues to cycle for a long, long time, never subsiding, melting your mind with each passing second...";
	else if player is female:
		say "     Before you notice, he is already kneeling before you and between your legs, his lips kissing your wet curls and his tongue being slowly pushed inside, a wiggling you really appreciate as your depths are thoroughly stimulated. He shows such nimbleness that it blows your mind, the way he reaches so far inside you with only his slick organ slipping deeper, really making use of his lizard-like nature. The blissful sensations are tremendous, shaking your mind with more and more pleasure as he feasts on your feminine juices, continuing to pleasure you in your womanhood until you are squirming and moaning with each tongue movement he makes.";
		WaitLineBreak;
		say "     As he wiggles his tongue inside you, his hands begin to feel your body, complementing his oral efforts with a lot of tender touching, giving your breasts a nice lovely squeeze. Not only your sex is overwhelmed with stimulation, the rest of you falls in the same direction, and none of it takes too long to bring you closer to the edge as he continues to eat your pussy so masterfully, with length no human nor any ordinary creature could reach, stimulating you from the inside... and soon, a surge of massive pleasure takes you as your bottom quivers in ecstasy, a feeling that continues on for a long, long time, never subsiding, melting your mind with each passing second...";
	WaitLineBreak;
	clear the screen;
	say "     You suddenly hear a snap of fingers and shake your head, only finding yourself in confusion as nobody is in the room with you. There is this... odd warm sensation down your groin... and you are naked. The sheets over your bed are wrinkled, and the door was left ajar. You try to remember what happened, but you are not able to. It is as if someone was here and then left... and with them, they took your memories. Well, it does look like you have done your job, but you have no idea how your performance was.";
	if player is submissive:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, and that it was a very praised aspect of your behavior...[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	if player is dominant:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, which... seems odd, given how dominant you are. Something broke in your mind, and you cannot tell what... But there is a certainty that your client thoroughly enjoyed this.[roman type][line break]";
		increase HCEClientSatisfaction by 3;
		say "(+3)[line break]";
	if player is kinky:
		WaitLineBreak;
		say "     [italic type]The way you were so receptive to the charms of his strange client was also noted, thanks to your kinkiness. Something tells you that it could only be beneficial.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";

[ --- ]

to say HellfireClubEscortNormal4b: [Female Lizardman]
	say "     Once you are fully ready, you wait for your client...";
	if a random chance of 1 in 5 succeeds: [player has to wait or not... Just some variation on the introduction.]
		WaitLineBreak;
		HellfireClubEscortNormalWaiting;
		WaitLineBreak;
	say "     You hear a triple knock on the door to your room. Even with it being left ajar, your client seems not to dare entering without your consent. A polite one, you wonder?";
	say "     They do not enter just yet. It seems you really are expected to do something. Maybe give them permission to come to you? Or... just... stay silent?";
	Linebreak;
	say "     [bold type]What will you do?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Tell your client to enter.";
	say "     ([link]N[as]n[end link]) - Keep your eyes peeled.";
	if player consents:
		Linebreak;
		say "     You tell your client to just come in as soon as you hear the knocking. Now, you hear some movement, as you hear a quite ominous voice speaking...";
		WaitLineBreak;
		say "     'May I come in?' a red lizard face comes peeking through the door, her tongue waving like a snake's as she hisses. Is she some kind of demonic lizardwoman mixed with a snake of some sort? Her eyes are, indeed, reptile in appearance, with a bright purple tone, and the rest of her body is tall and fit, covered in dark red scales and shaped into an anthropomorphic form of a lizardwoman. She stands completely naked as she walks in, swaying her long scaly tail sensually as she approaches you. 'Ssss... Oh, this is most pleasant. I like a discrete encounter in a cozy establishment. Are you to be my escort for tonight?'";
	else:
		Linebreak;
		say "     You keep sitting on the bed. Your eyes are fixated on the door. Nothing else moves nor makes a noise, except... the three knocks, again, at the exact same pace as before.";
		Linebreak;
		say "     [bold type]What will you do?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Just tell your client to enter.";
		say "     ([link]N[as]n[end link]) - Keep your eyes peeled, yet again.";
		if player consents:
			Linebreak;
			say "     You tell your client to just come in as soon as you hear the knocking. Now, you hear some movement, as you hear a quite ominous voice speaking...";
			WaitLineBreak;
			say "     'May I come in?' a red lizard face comes peeking through the door, her tongue waving like a snake's as she hisses. Is she some kind of demonic lizardwoman mixed with a snake of some sort? Her eyes are, indeed, reptile in appearance, with a bright purple tone, and the rest of her body is tall and fit, covered in dark red scales and shaped into an anthropomorphic form of a lizardwoman. She stands completely naked as she walks in, swaying her long scaly tail sensually as she approaches you. 'Ssss... I apologize for taking so long to enter. I prefer a safe entry rather than being seen as impolite. Are you to be my escort for tonight?'";
		else:
			Linebreak;
			say "     And once more, you await. Your eyes are still fixated on the door, and there is absolutely nothing going on...";
			say "     Until...";
			WaitLineBreak;
			say "     'May I come in?' a red lizard face comes peeking through the door, her tongue waving like a snake's as she hisses. Is she some kind of demonic lizardwoman mixed with a snake of some sort? Her eyes are, indeed, reptile in appearance, with a bright purple tone, and the rest of her body is tall and fit, covered in dark red scales and shaped into an anthropomorphic form of a lizardwoman. She stands completely naked as she walks in, swaying her long scaly tail sensually as she approaches you. 'Ssss... I apologize for taking so long to enter. I prefer a safe entry rather than being seen as impolite. Are you to be my escort for tonight?'";
	WaitLineBreak;
	say "     Certainly, her most prevalent feature is the constant hissing through her words, which gives her an even more ominous feeling. But as the situation stands, you are to be, indeed, her escort, so you let her know that she is correct. 'I see... Sss...! I do have a few requests... regarding what we should be doing together... I'm a big fan of the oral activities, as they are the most pleasurable while simultaneously relaxing, a fine way to enjoy the luxuries of good company.' - she says, pausing with another hiss - 'Would it be appropriate if we shared a long time indulging ourselves in the art that makes most use of our mouths and tongues? I would be delighted... And would make sure your superior gets a fair payment for your s-ssservice...'";
	say "     Either you are going to be putting your mouth on her, or she will want to put that long tongue of his to work on your privates, most likely. It is not a choice that will fall on your shoulders, but you are expected to perform stellarly and respect her wishes.";
	Linebreak;
	say "     [bold type]Do you accept these terms?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Sure thing, you are here to please.";
	say "     ([link]N[as]n[end link]) - Her hissing creeps you out. Send her away and call it a day.";
	if player consents:
		Linebreak;
		now HCEClientSatisfaction is 2;
		say "(+2)[line break]";
		say "     Of course, she is the one whose whims you must satisfy, and so, you tell her you are ready for anything she desires. 'Perfect. Then I would like to get started on something...'";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 2; [adjust the latter number for the number of options]
		if randomnumber is:
			-- 1: [she wants the player to lick her pussy]
				HellfireEscortNormal4bLickPussy;
			-- 2: [she wants to blow the player if male, or lick the player's pussy if female]
				HellfireEscortNormal4bGetOral;
		HCEFinalSatisfactionBonus;
	else:
		Linebreak;
		say "     Just why does she keep doing it?! It sounds ominous and sends you chills down your spine. You do not want to work with this client, and so, you send her away in the most polite manner possible. 'Oh, I... I do apologize, I thought I asked for a professional... What kind of people does Master Mogdraz employ, these days-sss...? This is such a big disappointment! Hopefully he will have another much more compliant servant to sate my needs, or he won't see any coin from me ever again. Ssss!!'";
		say "     After her aggressive hissing at you, she leaves the room without looking behind. At least you got rid of her, but Mogdraz certainly is not going to hand you any payment. Someone else will have the coins you could have.";
		now HCEClientSatisfaction is 0;

to HellfireEscortNormal4bLickPussy:
	say "     She comes to you, slowly and gently, sitting next to you by the bed as she puts a hand over your thigh. 'I find myself in need of a warm mouth. A skilled one, though...' she says, exposing her womanhood to you, which seems to show a drop of her juices just emerging from the slit. One of her fingers slip underneath your chin, and she makes you look into her eyes, very tenderly. For moments, you feel lost in her gaze, as if your whole being just sank within a bright purple sea, enveloping you in a warm embrace as your mind becomes lighter, free of worries and needless thoughts. It's as if a strange influence took over you, which you really cannot find the will to fight. In fact, it feels like an eternity of joyful bliss... 'Yesss... Let it all go... focus on me...'";
	say "     Before you notice, you are already kneeling before her and between her scaly legs, your lips kissing her womanly entrance as your tongue beings to slip inside, feeling like the sweetest thing you have ever tasted, and it only makes you want more. You are quick to practically make out with her vulva before you slide your tongue fully inside, just past her soaked labia, wiggling it frantically with all the enthusiasm she deserves. 'Sss... That's it... deeper...' the lizardwoman moans to you, passing her hand over your head and praising you like you were her pet, with no resistance whatsoever from you. In fact, it just leaves you more excited.";
	WaitLineBreak;
	say "     Servicing her with your best efforts, she makes you look at her again, taking a short break before sinking your mouth once more in her womanhood. She tells you to keep licking her very deep, her whole bottom nearly grinding against your face, covering it and blocking your breathing, but only her words matter to you... It is just impossible to shove her voice away. 'My... so talented...' the lizardwoman comments, and then has you let go, only keeping the very tip of your tongue around her moist cunt as you attempt to catch your breath, keeping it wiggling around her clit. 'Again... Come here...' she orders, and you immediately obey, sinking into her pussy once more, holding your tongue inside as you lose yourself in her sweet juices. 'Yesss... You know how to please me properly...'";
	say "     This happens a few times more, with each being faster and slightly harder, but never losing its tenderness. Eventually, however, it comes to an end, as the demon lizardwoman nears the point of no return. 'Ready to bring me to my orgasm, good servant? Licking more of my juices shall be your reward...' she asks, and you nod instinctively, not being able to help yourself but to feel excited for her offering. And so, you continue your motions against her sex, eating her out eagerly as you bring her closer and closer... And then, finally, she squirts into your mouth, quivering and squirming around, her taste filling your senses just by its sweet flavor as the lizardwoman hisses in ecstasy. You swallow every single drop of her lady liquids, and still feel like you are craving for more...";
	WaitLineBreak;
	clear the screen;
	say "     You suddenly hear a snap of fingers and shake your head, only finding yourself in confusion as nobody is in the room with you. There is this... strange taste in your mouth, somewhat sweet and quite intriguing, and you are naked. The sheets over your bed are wrinkled, and the door was left ajar. You try to remember what happened, but you are not able to. It is as if someone was here and then left... and with them, they took your memories. Well, it does look like you have done your job, but you have no idea how your performance was.";
	if player is submissive:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, and that it was a very praised aspect of your behavior...[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	if player is dominant:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, which... seems odd, given how dominant you are. Something broke in your mind, and you cannot tell what... But there is a certainty that your client thoroughly enjoyed this.[roman type][line break]";
		increase HCEClientSatisfaction by 3;
		say "(+3)[line break]";
	if player is kinky:
		WaitLineBreak;
		say "     [italic type]The way you were so receptive to the charms of his strange client was also noted, thanks to your kinkiness. Something tells you that it could only be beneficial.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";

to HellfireEscortNormal4bGetOral:
	say "     She comes to you, slowly and gently, sitting next to you by the bed as she puts a hand over your thigh. 'I find myself wanting to provide someone a great deal of pleasure...' she says, sliding it closer and closer to your crotch, but without touching it, still. 'Might you allow me to do it for you? I promise, it will feel very, very good...' One of her fingers slip underneath your chin, and she makes you look into her eyes, very tenderly. For moments, you feel lost in her gaze, as if your whole being just sank within a bright purple sea, enveloping you in a warm embrace as your mind becomes lighter, free of worries and needless thoughts. It's as if a strange influence took over you, which you really cannot find the will to fight. In fact, it feels like an eternity of joyful bliss... 'Let me show you... It will leave you craving for more...'";
	if player is male:
		say "     Before you notice, she is already kneeling before you and between your legs, her lips kissing the entirety of your shaft as it only grows harder under her care, throbbing impossibly hard as she keeps her gaze locked on yours. There is a feeling of intense pleasure in every movement she makes with her long tongue, wrapped around your member with such nimbleness that it blows your mind. It then sinks into her mouth, so warm and hot that it only makes your manhood more sensitive, together with the sensation of her entire tongue stroking it with the same dexterity as a hand. Feels like you are being given a blowjob and a handjob simultaneously, combined into much a stronger and pleasant stimulation...";
		WaitLineBreak;
		if cock length of player < 12:
			say "     She takes it all in, deep into her throat even,";
		else:
			say "     She takes all she can inside, working with your big size without hesitation, ";
		say "simply doing her best at providing you the highest amount pleasure she possibly can. Nothing really is a challenge for her, as you are kept in a highroad of blissful joy under the whole entirety of her care, every inch, corner and sensitive spot of your cock, lavished in good sensations. It only leaves you wanting more and more... and even more when you are soon to hit the point of no return. She keeps you there, however... Around the edge, circling around your tip, until you are on the verge of begging her... Right there... almost to the brink of exploding right in her mouth, but she does not let you. The lizardwoman says 'Beg me for it...' and you mutter the words she wants to hear. Then, a bit louder... And even louder...!";
		say "     She makes you repeat them until she is satisfied, and then she gives is all, making you burst in absolute orgasm inside her mouth as she swallows your offering, shooting hard against the back of her mouth so eagerly that the whole world around you disappears for a moment. This good feeling of cumming continues to cycle for a long, long time, never subsiding, melting your mind with each passing second...";
	else if player is female:
		say "     Before you notice, she is already kneeling before you and between your legs, her lips kissing your wet curls and her tongue being slowly pushed inside, a wiggling you really appreciate as your depths are thoroughly stimulated. She shows such nimbleness that it blows your mind, the way she reaches so far inside you with only her slick organ slipping deeper, really making use of her lizard-like nature. The blissful sensations are tremendous, shaking your mind with more and more pleasure as she feasts on your feminine juices, continuing to pleasure you in your womanhood until you are squirming and moaning with each tongue movement she makes.";
		WaitLineBreak;
		say "     As she wiggles her tongue inside you, her hands begin to feel your body, complementing her oral efforts with a lot of tender touching, giving your breasts a nice lovely squeeze. Not only your sex is overwhelmed with stimulation, the rest of you falls in the same direction, and none of it takes too long to bring you closer to the edge as she continues to eat your pussy so masterfully, with length no human nor any ordinary creature could reach, stimulating you from the inside... and soon, a surge of massive pleasure takes you as your bottom quivers in ecstasy, a feeling that continues on for a long, long time, never subsiding, melting your mind with each passing second...";
	WaitLineBreak;
	clear the screen;
	say "     You suddenly hear a snap of fingers and shake your head, only finding yourself in confusion as nobody is in the room with you. There is this... odd warm sensation down your groin... and you are naked. The sheets over your bed are wrinkled, and the door was left ajar. You try to remember what happened, but you are not able to. It is as if someone was here and then left... and with them, they took your memories. Well, it does look like you have done your job, but you have no idea how your performance was.";
	if player is submissive:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, and that it was a very praised aspect of your behavior...[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";
	if player is dominant:
		WaitLineBreak;
		say "     [italic type]A lingering thought in the back of your head reminds you of obedience, which... seems odd, given how dominant you are. Something broke in your mind, and you cannot tell what... But there is a certainty that your client thoroughly enjoyed this.[roman type][line break]";
		increase HCEClientSatisfaction by 3;
		say "(+3)[line break]";
	if player is kinky:
		WaitLineBreak;
		say "     [italic type]The way you were so receptive to the charms of his strange client was also noted, thanks to your kinkiness. Something tells you that it could only be beneficial.[roman type][line break]";
		increase HCEClientSatisfaction by 1;
		say "(+1)[line break]";

[ ESCORT WAITING SCENES ]

to HellfireClubEscortNormalWaiting:
	let randomnumber be a random number from 1 to 2; [adjust the latter number for the number of options]
	if randomnumber is:
		-- 1:
			say "     And you still seem to be waiting, after a couple of minutes. Someone will have to arrive through that door, eventually, but this time it seems to be taking longer than normal. That is okay, you get the time to look around your room and study some of the possibilities for your attire, as well as contemplating the vast assorted variety of sex toys and tools to assist you in an especially hot session. Wow, there is a very massive dildo in a box underneath the bed, like about two feet and something long and very flexible... Oh, it seems to be shaped like a dick on the other end, as well! A double-dildo, this seems to be. There is also something else here... Like... Some... weird-looking googles. They have got spirals on the lenses, reminding you of one of those swirly lollipops. Just looking at them makes your eyes feel... uneasy.";
			say "     Enough lollygagging, though. You hear noise outside. It seems your client is here, so you return to the bed and wait for their arrival.";
		-- 2:
			say "     You continue on waiting for a while now, and your client seems to be taking some time.";

[ ESCORT FINAL BONUS ]

to HCEFinalSatisfactionBonus:
	wait for any key;
	say "     In the end, you had a few things about you that helped improve your client's satisfaction...";
	let bonus be (( charisma of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Charisma Check):[line break]";
	if diceroll + bonus >= 25:
		say "     [italic type]Are you some kind of god? How come you are so impossibly, irresistibly and ridiculously attractive?![roman type](+5)[line break]";
		increase HCEClientSatisfaction by 5;
	else if diceroll + bonus >= 22:
		say "     [italic type]How can someone resist an escort as hot as you? Definitely not them! You are so attractive that your client paid a hefty extra sum![roman type](+3)[line break]";
		increase HCEClientSatisfaction by 3;
	else if diceroll + bonus >= 18:
		say "     [italic type]The client found you so attractive that they thought you had a stellar performance.[roman type](+2)[line break]";
		increase HCEClientSatisfaction by 2;
	else if diceroll + bonus >= 15:
		say "     [italic type]Your charisma helps your attractiveness, and that definitely improved things.[roman type](+1)[line break]";
		increase HCEClientSatisfaction by 1;
	else if diceroll + bonus >= 10:
		say "     [italic type]Your general attractiveness didn't do much for your cause.[roman type](+0)[line break]";
	else if diceroll + bonus < 10:
		say "     [italic type]It looks like the client was disappointed about the way you looked... Perhaps if you were more charismatic, things would have been better?[roman type](-1)[line break]";
		decrease HCEClientSatisfaction by 1;
	if player is purehuman:
		say "     [italic type]It seems pure humans are considered a popular fetish for many demons and void travelers, and that has definitely increased their satisfaction.[roman type](+2)[line break]";
		increase HCEClientSatisfaction by 2;
	wait for any key;

[***********************************************************]
Section 3-2 - Escort Special Scenes
[***********************************************************]

[***********************************************************]
Section X - Currency
[***********************************************************]

Table of Game Objects (continued)
name	desc	weight	object
"obsidian coin"	"A pentagonal piece of black stone, fairly thin and light. On one side, you see a symbol of a flame, and on the flip side, there is a single glyph of the demonic tongue. Its inscriptions glow in the dark with a slight scarlet tone"	0	obsidian coin

obsidian coin is a grab object. It is not temporary.
Usedesc of obsidian coin is "[obsidian coin use]";

to say obsidian coin use:
	say "     You throw the coin into the air, watching it tumble end over end a few times before you catch it again and slap it on the back of your hand:[line break]";
	if a random chance of 1 in 2 succeeds:
		say "     [bold type]Flame![roman type][line break]";
	else:
		say "     [bold type]Glyph![roman type][line break]";

instead of sniffing gryphon coin:
		say "The coin has a faint smell of volcanic sulfur to it. Definitely not the most pleasant scent.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section Y - Dev Cheats
[***********************************************************]
[***********************************************************]
[***********************************************************]

Hellfire Club ends here.
