Version 3 of Araqiel by Gherod begins here.

"Adds Araqiel, a powerful angel, to the game."

[Version 2 - Added an eavesdropping opportunity for Corrupted path]
[Version 3 - Araqiel reworked slightly, Dungeon Master content added]

[ STAT CHANGES                                            ]
[  - - - - - - - - - - - - - - - - - - - - - - - - - - -  ]
[ HP                                                      ]
[ 0: Doesn't know Araqiel, not actively hunting him       ]
[ 1: Has seen this strange Angel                          ]
[ 2: Actively hunting for Araqiel                         ]
[ 3: Corrupted                                            ]
[ 49: Corrupted Path Resolved                             ]
[ 50: Pure                                                ]

[ NOTES                                                   ]
[ Purifier One: In the College                            ]
[ Purifier Two: In Red Light                              ]
[ Purifier There: In the Mall                             ]

Section 1 - Pre-events

Table of GameEventIDs (continued)
Object	Name
Purifier One	"Purifier One"

Purifier One is a situation.
ResolveFunction of Purifier One is "[ResolveEvent Purifier One]".
Sarea of Purifier One is "Campus".

Table of GameEventIDs (continued)
Object	Name
Purifier Two	"Purifier Two"

Purifier Two is a situation.
ResolveFunction of Purifier Two is "[ResolveEvent Purifier Two]".
Sarea of Purifier Two is "Red".

Table of GameEventIDs (continued)
Object	Name
Purifier Three	"Purifier Three"

Purifier Three is a situation.
ResolveFunction of Purifier Three is "[ResolveEvent Purifier Three]".
Sarea of Purifier Three is "Mall".

Table of GameEventIDs (continued)
Object	Name
Ambush The Purifier	"Ambush The Purifier"

Ambush The Purifier is a situation.
ResolveFunction of Ambush The Purifier is "".
Sarea of Ambush The Purifier is "Nowhere".

AraqielTrackerCollege is a number that varies. AraqielTrackerCollege is usually 1. [@Tag:NotSaved]
AraqielTrackerRedLight is a number that varies. AraqielTrackerRedLight is usually 0. [@Tag:NotSaved]
AraqielTrackerMall is a number that varies. AraqielTrackerMall is usually 0. [@Tag:NotSaved]
AraqielCaptureTimer is a number that varies. AraqielCaptureTimer is usually 20000. [@Tag:NotSaved]

Section 1-0 - Toron Talks

Section 1-0-1 - Toron During Pre-Events

to say ToronTalkPurifier:
	if Resolution of Ambush The Purifier is 0:
		say "     With the thought of a curious sighting occurring in your mind, you bring the subject of the angelic demon hunter to the bartender, explaining what happened once you have encountered the burly seraphim. 'Oh, my... Now that sounds... Hot. Care to go into detail?' Following his request, you tell him everything you know so far. 'Very, very interesting... An angel with a dick, dominating demons on his very own initiative... My, what an interesting find! I must say, I am quite intrigued.' Looks like Toron is very happy that you brought this to him. 'To be honest, I had my suspicions... If the angel is as you described, we already had a few situations with him. Perhaps you could do something for us...?' he asks, before explaining his reasons.";
		say "     'I'm sure Mogdraz would not only appreciate the addition, but would also be very happy to know that you assisted us. One thing he doesn't like is angels, says they're full of gibberish. Too arrogant, too full of themselves, and have a literal lack of sex that makes them simply unbearable... That is, until they're corrupted, then they become interesting. Heaven has such a way to make everything seem boring, if you ask me... No dick or cunt between your legs?! Bullocks.' You take a moment to consider this, as Toron might be about to ask you to lead this attempt at corrupting the angel. 'Well, I would like you to... [bold type]Observe him. From beginning to end. This means you'll have to track him down to his usual hunting grounds[roman type] and be on the lookout. I want to know exactly how he makes the first contacts, how he acts, which powers he has... Everything. It is of utmost importance if we're going to try to pull this plan off'.";
		WaitLineBreak;
		say "     Corrupting an angel may be a cruel act to some, or a delightful pleasure for others... but Toron assures you with a few last words 'And... don't worry about this whole corruption thing. If what you said is true, he's beyond repair. All we'll do is ease his pain and remove the existential crisis that torments him... while benefitting from it, of course. After all, we are running a business, here.'";
		say "     [bold type]You don't have to agree on corrupting the angel or, in Toron's words, ease his pain, but you doubt there's a better way to get closer to him if not with his help.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go along with the plan, at least for now.";
		say "     ([link]N[as]n[end link]) - Tell him you don't want to do this.";
		if player consents:
			Linebreak;
			say "     You nod, agreeing to help the process of corrupting the angel for the time being. 'Excelent. Alright, then, look around these three areas: [bold type]College Campus, Mall Sewers, and here around the Red Light District[roman type]. You will surely be able to find him before he starts the action knowing beforehand where to find him. My scouts will be ready and communicating with me, so feel free to ask me for information.' he informs you of his usual roaming spots and lets you know of his current location.";
			if AraqielTrackerCollege is 1:
				say "     'He's been seen lurking around the [bold type]College Campus[roman type]' last time I checked. Yes, I know, I'm quick. Just go look for him there and hopefully you will find him. If not, come back to me and I'll give you an update.'";
			else if AraqielTrackerRedLight is 1:
				say "     'He must be currently here, in the [bold type]Red Light District[roman type]' last time I checked. Yes, I know, I'm quick. Just go look for him there and hopefully you will find him. If not, come back to me and I'll give you an update.'";
			else if AraqielTrackerMall is 1:
				say "     'He should be hunting for brutes in the [bold type]Mall Sewers[roman type]' last time I checked. Yes, I know, I'm quick. Just go look for him there and hopefully you will find him. If not, come back to me and I'll give you an update.'";
			now Resolution of Ambush The Purifier is 1;
			now HP of Araqiel is 2;
		else:
			Linebreak;
			say "     You have to be sincere and tell him you're not interested in hurting an angel. 'Hurting?! You wound me... I never mentioned hurting, did I? But well, maybe if he doesn't mess with our boys and girls, we won't have to watch out for him at all. I would have liked to give him a better ending, though...' he replies, showing a big disappointment in you, but lets you walk away. Well, you have no other way of approaching the angel, now. Toron was the only one who had the means to track him down easily.";
			now Resolution of Ambush The Purifier is 99;
	else if Resolution of Ambush The Purifier > 0 and Resolution of Ambush the Purifier < 3:
		say "     Regarding your hunt for the Purifier, you update Toron on your progress...";
		WaitLineBreak;
		if Resolution of Purifier One is 0:
			say "     'You have yet to observe him at the [bold type]College[roman type]. Make sure you're on the lookout next time you're there if he's hunting.'";
		else if Resolution of Purifier One is 1:
			say "     Following what you've witnessed at the College, you let the bartender know about every single detail that you could take from your observation. 'Oh. He really likes to crush his... targets with raw and rough sex. Kinky... I wouldn't see an angel doing that. I mean, as oppressive as their so blessed Order is, actually it doesn't really surprise me that they're as oppressive in sex as well. Oh, nevermind me, I'm just babbling. Although I must say, good job...' he says, commending you for an accomplished task. 'Now we've confirmed that he is, indeed, a very physically powerful individual, and doesn't use any special power to subdue his targets. It's only sheer size and intimidation. Well, and I suppose having a big dick helps. Nonetheless, fighting him using physical methods would be dumb. I'll have to think of something around the lines of... dark magic.' he adds, while looking into the void just behind you.";
			now Resolution of Purifier One is 2;
		if Resolution of Purifier Two is 0:
			say "     'You have yet to observe him here, in the [bold type]Red Light District[roman type]. Make sure you're on the lookout next time you're here if he's hunting.'";
		else if Resolution of Purifier Two is 1:
			say "     Following what you've witnessed near the chapel, you let the bartender know about every single detail that you could take from your observation. 'He was staring at the chapel? And mentioned a mistress... Right after he gave in to the succubus taunting him... Interesting. Seems like his fall was previously enforced by other demons, perhaps? That would explain why he's such an angry angel.' says Toron, wondering to himself. 'So... he thinks that he can fuck all demons into submission, and that it will be enough to exact his revenge on them... while being particularly vulnerable to lust, since obviously having a dick is fairly new to him. We're dealing with a fairly more vulnerable seraphim than what I initially thought. Perhaps this one will be easy to... convert. His newfound strength is, simultaneously, his greatest weakness. A couple strokes and his dick takes over his brain. Enhance that, and he will... Hmmm... I'm having lots and lots of ideas... Thank you, once more.'";
			now Resolution of Purifier Two is 2;
		if Resolution of Purifier Three is 0:
			say "     'You have yet to observe him in the sewers, at the [bold type]Mall[roman type]. Make sure you're on the lookout next time you're there if he's hunting.'";
		else if Resolution of Purifier Three is 1:
			say "     Following what you've witnessed in the mall sewers, you let the bartender know about every single detail that you could take from your observation. 'Three?! Are you sure you counted them well?' You nod, confirming, with absolute certainty, that there were, indeed, three demon brutes. No more, and no less. 'That's crazy! How powerful is he?! Having dominated three of the burliest wandering demons, they're even a challenge to beat for the more intelligent hellfire demons... Indeed, subduing him physically won't be the answer!' You also remember the [bold type]Purifier Feather[roman type] you have collected from his wings as he walked past you. Toron seems particularly stunned by all the information you've just fed him with, so he doesn't even notice anything strange about you, namely that you didn't tell him everything, which he could at any point..";
			say "     [bold type]This is a very important decision regarding this angel's fate[roman type]. Handing over the feather would most certainly [bold type]guarantee a success in corrupting the seraphim[roman type]. Do you wish to give Toron a feather from the Purifier's wings?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, you want to give them all the means to corrupt this angel.";
			say "     ([link]N[as]n[end link]) - Keep it to yourself.";
			if player consents:
				Linebreak;
				say "     Recalling your extra spoils, you take the feather out of your pockets and just give it to Toron, whose eyes shine with joy. 'You managed to... By the hellfires, this is... This is just what I needed! Your efforts will be rewarded, I will assure you. What a great addition to my enchantments...' he says, commending you for a job well done. Now you will have to live with the fact that you most certainly guaranteed the success of the efforts made by the demons to corrupt an angel. 'I'll provide you with a [bold type]whole new drink[roman type] to choose from, just for you... Though you will still have to pay it, of course. A... mere symbolic sum.' Well, at least if you regret this decision, you may drink to forget it in an entirely different way... but that angel was beyond help, right?";
				add "Created Heaven's Kiss" to traits of Toron;
			else:
				Linebreak;
				say "     This is the chance to quietly forfeit this plan without making the demons mad, at least for now. You're too deep in it to completely abandon it, but this is perhaps enough to sabotage their efforts. 'Thank you so much for the work you've been doing. I will have to come up with a plan to ensure we can capture this angel... Knowing this, it will be difficult.' says Toron, who fortunately did not notice your second thoughts. You better keep it that way.";
				now Resolution of Ambush The Purifier is 2; [Araqiel will NOT be corrupted]
			now Resolution of Purifier Three is 2;
		WaitLineBreak;
		if Resolution of Purifier One is 2 and Resolution of Purifier Two is 2 and Resolution of Purifier Three is 2:
			say "     Having visited all the locations where the Purifier hunts and reported all the information you could find, Toron informs you that your job is complete. 'Good, I believe everything is in order, now. We'll handle things from here, with discretion. If you want to come back and check on how it went, I'll be happy to inform you. In the meantime, take a rest, enjoy a drink or two...' Seems like he won't let you participate in the ambush, but is happy to provide you information on if they were successful or not. It shouldn't take long, as he is very fast and efficient, usually. Now all that remains for you to do is to hope for the best as you sit and wait...";
			WaitLineBreak;
			say "     You see Toron taking a leave through the staff door, and you don't see him again for a good couple of hours...";
			follow the turnpass rule;
			WaitLineBreak;
			say "     Eventually he returns to his post, resuming his duties as normal, and gestures you to come to him. Perhaps you could [bold type]ask Toron for an update regarding the Purifier[roman type] by now, or at least to know how long it will take until they have results?";
			now ToronDoneTalking is true;
			if Resolution of Ambush The Purifier is 1: [gave the feather, so...]
				now Resolution of Ambush The Purifier is 3; [he WILL be captured]
			else if Resolution of Ambush The Purifier is 2: [didn't give the feather, so...]
				now Resolution of Ambush The Purifier is 4; [he WON'T be captured]
			now AraqielTrackerRedLight is 0;
			now AraqielTrackerMall is 0;
			now AraqielTrackerCollege is 0;
			now AraqielCaptureTimer is turns;
		else:
			if AraqielTrackerCollege is 1:
				say "     'Carry on, then. He's been seen lurking around the [bold type]College Campus[roman type]' last time I checked. Just go look for him there and hopefully you will find him. If not, come back to me and I'll give you an update.'";
			else if AraqielTrackerRedLight is 1:
				say "     'Carry on, then. He must be currently here, in the [bold type]Red Light District[roman type]' last time I checked. Just go look for him there and hopefully you will find him. If not, come back to me and I'll give you an update.'";
			else if AraqielTrackerMall is 1:
				say "     'Carry on, then. He should be hunting for brutes in the [bold type]Mall Sewers[roman type]' last time I checked. Just go look for him there and hopefully you will find him. If not, come back to me and I'll give you an update.'";
	else if Resolution of Ambush The Purifier > 2 and Resolution of Ambush the Purifier < 5:
		say "     You've waited around for long enough, and Toron is back into business as nothing happened, so you figure it should be a good time to ask how things are going. Bringing up the subject, you ask the question directly.";
		if AraqielCaptureTimer - turns < 8:
			say "     He leans over to you, speaking in a low tone 'I have mobilized a few demons to lure him into the District, where we can safely attempt to capture him. It will take some time, so I suggest you go do something else and check back after twenty four hours or so. Might have news for you. then.' With this information, you nod to him as you move onto something else.";
		else:
			if Resolution of Ambush The Purifier is 3: [he WAS captured]
				say "     He leans over to you, speaking in a low tone 'A success, thanks to your efforts. From now on, everything will be handled with Mogdraz. He might let you into some of the more juicy details.' he says, with a big smile on his face. Looks like they have [bold type]successfully captured the Purifier, and Mogdraz is taking things into his own hands.[roman type][line break]";
				now HP of Araqiel is 3; [Corrupted Araqiel]
				now Resolution of Ambush The Purifier is 5; [Ambush Successful]
			else if Resolution of Ambush The Purifier is 4: [he ESCAPED]
				say "     He leans over to you, speaking in a low tone 'Well... I'm embarrassed to say this. Right when we attempted to capture him, he brought all of our best demon fighters down, then a blinding light just... shone from his wings, and the entire ambush team was stunned as he flew away. Nothing we could do to predict that, unfortunately. I am terribly sorry that your work was in vain, but we won't give up. We will find this angel, eventually. It's even more imperative, now that he knows about us...' he says, clearly disappointed on the turn his efforts took. But obviously, you hold full responsibility on his failure for not giving him that feather, and your instincts proved you right. You saved this angel from permanent, irreversible corruption, but if the demons find out that you're at fault, they might not be happy...";
				say "     But the question remains... Did you... really... save him?";
				LineBreak;
				say "[italic type]<<Pure Route ends here, for now. His pre-events will be restored and cycle through accordingly (College > Red Light > Mall) >>[roman type][line break]";
				now HP of Araqiel is 50; [Pure Araqiel]
				now Resolution of Ambush The Purifier is 99; [Ambush failed]
				now AraqielTrackerCollege is 1; [events restored]

Section 1-0-2 - Toron During Corrupted Path

to say ToronTalkMogdrazAraqiel:
	if Resolution of Ambush The Purifier is 8:
		say "     Out of hope that he will shed some light into this matter, you discretely ask Toron what he knows about the big demon boss and the perverted angel's relationship with one another. He hesitates before speaking, but as you have heard their conversation before, he probably decides that there is no purpose in hiding anything else from you. 'I am sorry for deceiving you, but trust must go for both ways. We couldn't just let you know about everything and risk our own safety for being too careless. I hope you understand.' he says to you with an apologetic bow and tone.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Reassure him. They must certainly have had their reasons.";
		say "     ([link]N[as]n[end link]) - Tell him that, honestly, you don't understand. You'd rather have known the truth from the beginning.";
		if player consents:
			LineBreak;
			say "     With a nod, you show empathy for him, and let him know that everything is good on your end. You understand their reasons and why they had done things the way they did. 'Much appreciated. I may have misjudged you at the beginning, as well, so apologies for that, too.' He shows a genuine smile, one that you've never seen him making before. 'We are not evil, by any means. We simply care for ourselves. It might sound selfish to some, but who doesn't have flaws?'";
		else:
			LineBreak;
			say "     He lowers his head, and takes a moment of silence before he resumes speaking. 'You could have also not given me that feather. It was the key component that allowed us to liberate him from Heaven's influence. Yet you did... You knew what that meant, didn't you? You must have had your own reasons to act the way you did, yet you never revealed them to me. You simply continued to do so. Perhaps out of good will, or simply a selfish goal... I guess I would never know.' Despite what he just said, he extends his reply to say one more thing. 'I understand your frustration, regardless, but I must ask you to not misjudge our caution as lack of faith in you. We simply did what had to be done.' With that, he finishes explaining himself.";
	else:
		say "     Curious about the big demon boss and the perverted angel's relationship with one another, you ask Toron to remind you of the story that he told you when you first asked him about this matter. He agrees to do it, once he finds the chance to sit down with you.";
	WaitLineBreak;
	say "     'Regarding Master Mogdraz and Araqiel... They... were old rivals. While Mogdraz was merely a High Demon, and a manservant to another Demon Lord, Araqiel served an Archangel. As you may already know, the purifier was called as such because he could subdue most demons with his much superior might. By mixing elements from the demons into a newborn seraphim, Araqiel was born, with free will and the equipment to engage in sex, two things most, if not all, pure angels lack.' You already had the feeling Araqiel was not a pure angel from the beginning, judging by what Mogdraz said in the dungeon. 'As such, Araqiel earned his title as one of the most powerful angels ever created, a power that could compete with Mogdraz's, and commanding a force of his own. One day, their ways clashed.'";
	say "     You take a seat by the stool as you listen to Toron. 'Araqiel wasn't always so given to carnal pleasure. There was once a time his convictions resided exclusively in Heaven's best interests of supremacy over our world. The Demon Lord Mogdraz served was the main beacon of Hell's position, who claimed to be growing day by day. It was only natural that, eventually, Araqiel would attempt to strike down the Demon Lord, and that is when Mogdraz met the purifier. It was a harsh battle, and I witnessed it all, offering Mogdraz all the backup support I could, but indeed, the angel was incredibly powerful. They fought until both of them were forcingly disarmed and had to wrestle, using their entire bodies in an attempt to emerge victorious. By then, the battlefield was filled with flames and steam, with both taking hits so powerful that even the ground shaked beneath us.'";
	WaitLineBreak;
	say "     'I do not know what happened, but eventually they stopped. Both were panting hard, bruised and exhausted, lying down naked as what remained of their clothes was shredded to many pieces, hugging eachother. No, not in that way, they simply had their arms wrapped around eachother's bodies, but so exhausted they couldn't move an inch. In all my life, I have never seen such a ferocious battle. Then... something happened, as they looked into eachother's eyes. Once they managed to get up, they simply parted ways. No words spoken. Mogdraz remained silent through the entire way back home.' You blink and nod, as if encouraging Toron to continue. 'That is when Mogdraz began questioning his own Lord's ideals, and the way he treated his son. We thought he was simply a demanding man, but the poor boy was forced to train and study hard, without the chance to make any choices by himself. Mogdraz told me that he had the boy crying in his arms, one day. And that was the day everything changed.'";
	say "     'When Mogdraz rebelled against the Demon Lord, he took his son with him, and some of the demons that were loyal to Mogdraz followed, including myself. And amidst our journey, I was amazed to find Araqiel asking Mogdraz to join the resistance force. And that is when I knew. The deal was struck right there and then, at the battle, before they parted ways. It happened within the blink of an eye, in their minds. As you should already know, our Lord is very proficient in the arts of mind reading and telepathy, a gift I also possess. It must have happened that way so nobody would be able to discover this, and this explains Mogdraz's silence. Araqiel's motives, however, remain a mystery to me until this day. He sold his soul to a demon, however... He must have had a strong cause.'";
	WaitLineBreak;
	say "     'Eventually, the Demons gained influence over our world, and we were forced into exile. Recently, Heaven also went through an augmentation in power, and that is the reason of what happened to Araqiel. They managed to reach him and threw an attempt at converting him back to their side, but they did not succeed completely. This was just before we managed to escape, so Mogdraz felt he was in a pinch. Between having Araqiel betray him inevitably and leaving him back, our big boss decided to keep the angel in a chamber, hidden within the void, where they could not reach. However, he seemingly escaped on his own and followed us through the void, even in his conflicted state, and by the time he arrived, he was fully converted... So, when you discovered him.'";
	say "     'What you did for us was the only way we had to bring him back, and I'm glad you helped. You were the only one who could get close enough to him in order to obtain something that carried his essence.' He finishes the tale with a long pause before resuming his duties.";
	if Resolution of Ambush The Purifier is 8:
		now Resolution of Ambush The Purifier is 9;
	WaitLineBreak;

Section 1-0-3 - Toron During Pure Path

Section 1-1 - Purifier One

to say ResolveEvent Purifier One:
	if HP of Araqiel is 0 or HP of Araqiel is 1 or HP of Araqiel >= 50 or (HP of Araqiel is 2 and Resolution of Purifier One > 0): [normal cycling event for Pure Araqiel]
		say "     While you're wandering around the College Campus, you come across a rather quiet area, just around the corner of one of the blocks, with the way leading into a narrow alley. You know for a fact that this is one of the spots where Incubi from all around the campus come to do whatever they have in mind with someone they [']invited['] for a good time.";
		WaitLineBreak;
		if AraqielTrackerCollege is 1:
			say "     Carefully taking your steps through this particular zone, you begin hearing moaning coming from near your position. Which isn't unusual per se, but this time it isn't just sexual grunting. Right against the wall, there's one of these demons being pinned down by[if PlayerMet of Araqiel is true]... Araqiel[else] a very large... Angel[end if]? Short white hair, bright blue eyes, a clean face and fully equipped for the occasion, unlike pure angels, this one is capable of literally fucking anyone into submission. You catch them right when the enormous seraphim is shooting his holy seed - if that's even a thing at this point - inside the hell creature, his massive muscles keeping the incubus in place, smothered against the hard wall. You can barely see him through the angel's vast wings and hulking frame.";
			say "     'You're gonna stop being a naughty boy now, aren't you? Or I'll have to come and punish you again in the only way you understand!' he says, his voice deep and a little bit raspy, what you'd expect from a man of his size, a seasoned warrior perhaps, but clearly not from an angel. Surprisingly, the incubus cowers and lowers his head, replying in an almost whispering tone 'Y-yes, sir...' The winged holyness notices your presence shortly after, gives you a big smile and a wink, then flies away like a movie superhero. The demon doesn't even look at you, though you can't help but notice his still raging boner. He really tamed another incubus...";
			now AraqielTrackerCollege is 0;
			now AraqielTrackerMall is 0;
			now AraqielTrackerRedLight is 1; [he moves to Red Light]
			if HP of Araqiel is 0:
				now HP of Araqiel is 1;
		else:
			say "     Nothing out of the ordinary happens, however, so you simply walk past this area. Fortunately, no incubi or any other kind of wandering creature bothered you in the process.";
	else if HP of Araqiel is 2 and Resolution of Purifier One is 0: [actively hunting]
		say "     You have arrived at the College Campus a while ago, in search for the Purifier, in order to observe his encounter detailedly. Though that also means you will have to find him before he's ballsdeep on a demon's ass, or you might miss a perfect opportunity to observe the powerful Seraphim. Without any further ado, you search the most probable places that he would be in, without skipping any corner preferred by the Incubi. You will have to rely on Toron's instructions and your own senses to hope for a chance to find him...";
		WaitLineBreak;
		if AraqielTrackerCollege is 1:
			let bonus be (( perception of player minus 5 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Perception Check):[line break]";
			if diceroll + bonus >= 10: [player finds Araqiel]
				say "     And just your luck, you find the angel, on the roof, observing an incubus harassing a helot, inside one of the alleys between building blocks. Immediately, you take cover to hide yourself from view, before you could be detected right away, and position yourself from a perspective that allows you a clear view of the winged man and the scene happening below. Glancing over the bulky seraphim, you notice him building a rather sizable erection, and even giving it a gentle stroke as he observes the demon thoroughly caressing the poor helot, who squirms around in both revolt and lust, helpless to the lusty devil's touch. You don't see the angel acting right away, though. He seems to be enjoying the scene, rather than condemning it. Judging by his extra equipment, you can conclude that he must have fallen a good way already from getting too close with demons.";
				say "     It's not long, however, until he descends to meet the incubus half way over his generous handjob session. 'Look at what we've got here! Brought a friend before I could join in for the fun? Naughty little devil, aren't you?' he says, taunting the demon who seems as terrified as he's horny. Looks like the angel has been bullying him for a while, now, though that doesn't stop the purifier from getting closer and liberating the helot from the demon's hands, who seems rather confused, like most helots look all the time when they're being saved from something. As the human runs away, to probably his master, it's now time to witness some angelical punishment. 'You keep doing this, and I'll have to keep coming to punish you. That's how it works.' he says to the incubus, grabbing him by the head and pushing down to meet his raging hard-on, throbbing with anticipation.";
				WaitLineBreak;
				say "     The handsome devil can't really fight back, as the angel is so much bigger and more powerful than what the incubus could ever aspire to. Shifting the lusty demon's back towards the wall, the seraphim starts to outright facefuck the hell creature so deep and hard, that you can't help but wonder how he's not breaking his jaw. He's barely visible between the angel's trunk thighs and massive width, his hands attempting to offer resistance, but to no avail. You don't think, even, that the incubus is not mildly enjoying this, though judging by the wide smile on the angel's expression, at least one of them is really liking this encounter. Intimidating and imposing, it's not difficult for the winged man to get what he wants from the devil, pushing his long and thick manhood all the way down the demon's throat. You can even see it obscenely bulging from within his neck.";
				say "     They got at it for a while, each pound somehow stronger and harder than the last, until the angel finally pulls out, his tool eagerly pulsing for more. Without any other word, he grabs the demon without any apparent physical effort, turns him around and shoves it in his ass, smothering the poor devil against the wall as he whispers something in his ear. You can't hear it, but it makes the incubus moan and arch his back. He's actually giving his best to please the angel, as much as he can, while his entire body is squeezed and nearly crushed by the bulky seraphim's massive muscles. Indeed, you can barely see what or who's the winged man pounding so hard, and you wouldn't know if you didn't already.";
				WaitLineBreak;
				say "     After a good while, you can hear the big guy grunting with all his might as he finishes off inside the incubus, shooting all of his holy seed inside the abused devil's ass, then he quickly pulls his cock off and shoots a couple more spurts over his back, the angel's heavy meat slapping and bouncing off the incubus['] glutes as his orgasm subsides. 'Now you won't be bothering anyone else for a good time, right? You're gonna be a good boy, now... or I'll have to come back and teach you some manners, devil boy.' he says, as he prepares to take flight... until he looks in your direction, then stops, while giving his huge dong a slight stroke. It's rather hard to tell if he spotted you, but since he's very keen on keeping at looking, he probably did, and that probably excited him.";
				say "     Perhaps it's a good time to leave and [bold type]check with Toron[roman type] for your next destination, or you'll be the next getting punished.";
				now Resolution of Purifier One is 1;
			else:
				say "     But you're out of luck, unable to find him anywhere, It's possible that he already came and left, or you simply couldn't spot him in time. Maybe you should [bold type]check with Toron[roman type] and see where else he might be. Or just keep looking if this is the only place you haven't seen him in action, yet.";
			if Resolution of Purifier Two > 0 and Resolution of Purifier Three > 0:
				now AraqielTrackerCollege is 1; [just to make sure he stays in the College]
			else if Resolution of Purifier Two > 0 and Resolution of Purifier Three is 0:
				now AraqielTrackerCollege is 0;
				now AraqielTrackerMall is 1; [moves to Red Light, instead]
				now AraqielTrackerRedLight is 0;
			else:
				now AraqielTrackerCollege is 0;
				now AraqielTrackerMall is 0;
				now AraqielTrackerRedLight is 1; [he moves to Red Light as normal]
		else:
			say "     Though there is absolutely no sign of him. Are you sure he's currently hunting around here? Perhaps you should confirm that with Toron, as Araqiel may very well be elsewhere.";

Section 1-2 - Purifier Two

to say ResolveEvent Purifier Two:
	if HP of Araqiel is 0 or HP of Araqiel is 1 or HP of Araqiel >= 50 or (HP of Araqiel is 2 and Resolution of Purifier Two > 0): [normal cycling event for Pure Araqiel]
		say "     Making your way through the streets of Red Light District, you take a turn around a commercial block, or what remains of it. Seems like it was a [one of]simple clothing store[or]gift store[or]jewelery[or]small sex shop[at random] and you don't pay much attention to it, except when you hear some really loud moaning from inside. This particular area is known for its many sexual predators and fetishists, but even this much vocal intensity leaves you curious. Carefully, you sneak inside to try and see what's the source of such sounds.";
		WaitLineBreak;
		if AraqielTrackerRedLight is 1:
			say "     One of the voices is female, with a rather sexy deep tone, which you can almost guess whom it belongs to. When yours eyes meet the scene, you encounter [if PlayerMet of Araqiel is true]Araqiel[else]a very large angel[end if] absolutely dominating a succubus, his enormous bulk pinning her down underneath him as he pounds her pussy into submission. The size difference is so big that you feel she could come close to be torned apart, but pain is the thing you don't see in her face. By the time you arrive, her womb is getting filled with holy seed as the hulking seraphim holds her down, looking into her eyes. 'Don't go out there seducing innocents and tricking them into giving you their souls. That's very naughty behavior... Next time, I might have to go rougher...'";
			say "     She gulps down, nodding and replying 'Y-yes... Sir...' with a breathy voice, panting with a swollen tummy. Once more, the angel notices you coming closer, and his more than a foot-long of a holy dick gives out a tingle as soon as your gaze lays on it. 'Gotta pack a big gun to handle these creatures.' He says, with a friendly chuckle, before he flies away through the window. For someone his size, he sure looks lightweight, judging by how well he travels through air. As for the succubus, she doesn't even pay attention to you, as cock-drunk as she is. She won't bother anyone anytime soon.";
			now AraqielTrackerCollege is 0;
			now AraqielTrackerMall is 1; [he moves to Mall]
			now AraqielTrackerRedLight is 0;
		else:
			say "     What you find is, however, just a succubus messing around with a local creature, so nothing out of the ordinary. You better make your leave quickly before they notice your presence.";
	else if HP of Araqiel is 2 and Resolution of Purifier Two is 0: [actively hunting]
		say "     As you've been exploring the Red Light District in hopes of finding the hulking angel before he gets into any trouble, you've traveled through countless streets looking for signs of the seraphim. Between places frequently roamed by demons such as the succubi, to other types of perverts, even risking yourself into troublesome situations, you just keep looking, carefully, aware of your surroundings and anything that might lead you to a possible encounter with the purifier and his next punishment target...";
		if AraqielTrackerRedLight is 1:
			let bonus be (( perception of player minus 5 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Perception Check):[line break]";
			if diceroll + bonus >= 10: [player finds Araqiel]
				say "     It is right in this moment that you see something flying over the sky, someone big with large white feathered wings. Looks like you've found the seraphim, who seems to be heading directly towards something, or someone... You better rush. Following him, you take a turn into the street with the chapel, and your heart races. He's by the roof, facing the entrance while lost in thought, or so it seems. You have a feeling he can't really approach that place, perhaps because it has been burned out, or something else... A demonic aura, perhaps, or enchantment. So he simply stays put, like a lynx hidden within the tall grass, awaiting an opportunity to strike... But what is he looking for, or who?";
				say "     Suddenly, he bursts out flying towards a succubus who's leaving the chapel and into the neighboring street, and you follow with the best of your ability. You actually need to run in order to keep up with the seraphim, as he's a quite fast flier! Then, out of nowhere, you could swear the ground beneath your feet trembled as he landed, nearly throwing you off balance, and he's still several meters ahead of you! Just how heavy is he?! Nonetheless, that doesn't stop you from quietly making your approach, and what you see his a mix between shocking, terrifying... and possibly really hot. The fully naked, hulking beast of an angel is literally sitting above a clueless succubus, adjusted right after her chest - so those are not absolutely smothered by his sheer size - as the rest of him is bending forward, both his fists on the ground at each side of her head, as he's looking deeply into her eyes.";
				WaitLineBreak;
				say "     'You're not her. But you're not innocent either.' he says, as the demoness remains pinned down underneath him. 'Neither are you... Certainly not when you're carrying that between your legs... And look at it, it's so... big!' is what he gets as a reply from the bold succubus, who bites her lips as she eyes the half-hard holy rod, growing at mere inches away from her face. She doesn't seem to mind her predicament, at all. 'You cursed demons, all of you. You did this to me. Now I'll fuck every last one of you until you learn submission. Turning the tables just like you wanted to do with me.' The angel's voice gets deeper as his tone lowers, but his erection only rises harder. 'Oh, but I'd happily take it, big guy...' teases the succubus, as the winged man, helpless to his increasing lust, begins to rub his shaft between the demoness['] voluptuous breasts.";
				say "     She moans as he does so, continuing to hump against her chest, followed by some deep, and almost angry, grunting, as he keeps up with the titfuck in desperation for some release. His cock is of a monstrous size compared to her average frame, and can reach her face once her boobs rest against the base of his shaft, a chance she takes to give it a kiss, then a lick, all before accepting the occasional leaking tip past her lips, only making the angel want to thrust harder... And it is once he's giving in that his length begins to thicken and his balls raise, a sign that he's getting near the edge. With a gentle touch, he grabs the demoness['] head and pulls her, to allow his cock to go all the way inside her throat as he slides himself just a little forward.";
				WaitLineBreak;
				say "     Going from a breastfuck to a facefuck, the seraphim keeps thrusting in hard, deep and mercilessly, his own moaning getting louder and angrier as he lets out a final grunt before he unloads his entire holy seed down her mouth, making her nearly choke while swallowing all of that cum he generously deposits inside of her. 'Hope you've had enough of it for a lifetime, fiend. I should just make you swallow my load until you can't move anymore, if that's what you vile creatures crave for.' he says with contempt, getting up and leaving a few leftover drops fall right on her eyes, which she closes almost too late, while shaking his dick. She says nothing, only looking at him while panting, with cum all over her face and mouth. 'Tell your mistress I'll be coming for her. She's a threat that must be dealt with.' he warns, before taking flight over to somewhere else.";
				say "     As there's nothing left to see here, you move along. You should probably [bold type]check with Toron[roman type] on your way out, as this is possibly very important news.";
				now Resolution of Purifier Two is 1;
			else:
				say "     But you're out of luck, unable to find him anywhere, It's possible that he already came and left, or you simply couldn't spot him in time. Maybe you should [bold type]check with Toron[roman type] and see where else he might be. Or just keep looking if this is the only place you haven't seen him in action, yet.";
			if Resolution of Purifier Three > 0 and Resolution of Purifier One > 0:
				now AraqielTrackerRedLight is 1; [just to make sure he stays in the Red Light District]
			else if Resolution of Purifier Three > 0 and Resolution of Purifier One is 0:
				now AraqielTrackerCollege is 1; [moves to College, instead]
				now AraqielTrackerMall is 0;
				now AraqielTrackerRedLight is 0;
			else:
				now AraqielTrackerCollege is 0;
				now AraqielTrackerMall is 1; [he moves to Mall as normal]
				now AraqielTrackerRedLight is 0;
		else:
			say "     Though there is absolutely no sign of him. Are you sure he's currently hunting around here? Perhaps you should confirm that with Toron, as Araqiel may very well be elsewhere.";

Section 1-3 - Purifier Three

to say ResolveEvent Purifier Three:
	if HP of Araqiel is 0 or HP of Araqiel is 1 or HP of Araqiel >= 50 or (HP of Araqiel is 2 and Resolution of Purifier Three > 0): [normal cycling event for Pure Araqiel]
		say "     While exploring the sewers, in the middle of the dark, you hear some really intense grunting coming from nearby. Judging by the large quantity of demon brutes inhabiting the area, it doesn't surprise you, but you keep your presence as quiet as possible. In fact, the noise is quite the distraction to help you cross this area undetected.";
		WaitLineBreak;
		if AraqielTrackerMall is 1:
			say "     However, as you gain vision of what's happening, there's actually a very curious thing going on. It's [if playermet of Araqiel is true]Araqiel[else]that big angel[end if] with, indeed, a demon brute. This time, they're even on size, and you can imagine the hell brute actually posed a challenge for this strong seraphim. But in the end, as far as you can see, the angel was victorious, as he's pounding the brute hard in the ass, his grunting audibly echoing through the place, with the sound of skin on skin clashing. You can see they're both slightly bruised, as it must have been an intense fight before the winged man managed to pin the brute down under his muscle bulk and finally subdue him. Despite the demon's protests, he has no other choice but to get his ass fucked until the angel shoots his seed inside him.";
			say "     'Ohh... That was a good workout. Looks like I won, again! And you've learned your lesson, brute!' he says, as the demon lies down, seemingly exhausted. You keep yourself hidden in the darkness as the angel walks away with a half-erection, leaving the demon covered in cum, collapsed on the floor, grunting with discontent. He surely loves to wrestle the big hell boys...";
			now AraqielTrackerCollege is 1; [he moves to College]
			now AraqielTrackerMall is 0;
			now AraqielTrackerRedLight is 0;
		else:
			say "     Looks like a couple of demon brutes are having a fist argument. You won't complain, as you managed to go past them without bringing any kind of trouble for yourself.";
	else if HP of Araqiel is 2 and Resolution of Purifier Three is 0: [actively hunting]
		say "     While wandering around the mall sewers, you keep close attention to the noise around you in hopes to catch the purifier before he gets into anything, since you won't be able to have an ample vision of his whereabouts while in here. Like any other place with the same characteristics, the sewers are a dark labyrinth situated underground, so you won't see him simply flying above you. Instead, you need to keep your ears up and try to detect any strange sound that might give clues about where he's located, if he's even here right now. So, you walk around for a while...";
		WaitLineBreak;
		if AraqielTrackerMall is 1:
			let bonus be (( perception of player minus 5 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Perception Check):[line break]";
			if diceroll + bonus >= 10: [player finds Araqiel]
				say "     And you begin to hear something, or someone, violently grunting in an actual non-sexual manner. This is something quite rare around here, as you're usually expecting some sort of tainted scene starred by a pervert, a sexual beast, or well, anything but literal sounds of smashing and shouting. Could this be a sign of the seraphim you're looking for? The only way to get an answer is to investigate, and that's exactly what you do. Taking a turn on the next corner towards the source of the noise, you continue through a barely illuminated corridor - with the undesired and familiar stench of dirty waters keeping you company - and you almost can't believe what your eyes catch. Not one, not even two, but a whole trio of demon brutes, getting absolutely destroyed in a fight against the hulking angel.";
				say "     He's panting, and very bruised, but with a big smile on his face as one of the demons remains pinned down under his foot, with the other two's heads being held in place by the angel's massive muscular arms wrapped around their necks. 'Thought you could defeat me by outnumbering me, huh?! I'm not so easy to bring down!' You remain there, eyes wide open, can't even feel your jaw dropping, while facing the tremendous physical strength this winged man is displaying. Usually a demon brute is strong enough to deal with groups of average humans for being so huge and ripped, but not for the purifier. He's about their size, and apparently, [italic type]thrice[roman type] as strong! What's more interesting, however, is that during all this time, the angel has one massive hard-on while laughing on their faces.";
				WaitLineBreak;
				say "     'I thought about letting you go if you serviced me, but... your ugly faces would probably hurt my dick. So you better go, or I'll smash all of you badly!' he warns the group of brutes, who grasp around his arms and legs, desperate to break free. The powerful angel then flickers his wings to gain a tiny bit of altitude, while keeping his foot still on the face of the brute lying down on the floor, then throws the other two right towards him while levitating backwards. Then he lands and bypasses them, walking triumphantly in your direction. His erection bouncing from one side to another against his trunk thighs as he walks is rather distracting, though you realize... if you stay here, he will see you!";
				say "     Quickly, you retreat to a place where you won't be caught, and gladly he just gets past you, disappearing into the shadows. The demons only grunt while they're slowly getting up... or trying to. When the purifier is gone, you notice that one of his feathers found its way over to your feet. You rush you catch it, and it feels incredibly soft in your hand, making you feel deemed unworthy of even taking hold of one. It simply feels that your mere touch could corrupt its purity, as it even dims a little light that manages to pierce through your fingers. This is something you feel like you should keep.";
				say "     You have obtained a [bold type]Purifier's Feather[roman type], a key item that you should probably [bold type]bring to Toron[roman type], together with a report on your progress. He may find it useful.";
				now Resolution of Purifier Three is 1;
			else:
				say "     But you're out of luck, unable to find him anywhere, It's possible that he already came and left, or you simply couldn't spot him in time. Maybe you should [bold type]check with Toron[roman type] and see where else he might be. Or just keep looking if this is the only place you haven't seen him in action, yet.";
			if Resolution of Purifier One > 0 and Resolution of Purifier Two > 0:
				now AraqielTrackerMall is 1; [just to make sure he stays in the Mall]
			else if Resolution of Purifier One > 0 and Resolution of Purifier Two is 0:
				now AraqielTrackerCollege is 0;
				now AraqielTrackerMall is 0;
				now AraqielTrackerRedLight is 1; [moves to Red Light, instead]
			else:
				now AraqielTrackerCollege is 1; [he moves to College as normal]
				now AraqielTrackerMall is 0;
				now AraqielTrackerRedLight is 0;
		else:
			say "     Though there is absolutely no sign of him. Are you sure he's currently hunting around here? Perhaps you should confirm that with Toron, as Araqiel may very well be elsewhere.";

Section 1-4 - CORRUPTED Intro

to say MogdrazTalkPurifier:
	say "     Since everything has been taken care of and moved onto Mogdraz's responsibility, you're on about to ask him what have they done to the angel. He smiles, then begins to explain. 'Well, you will like to know that it was thanks to that feather you gave Toron that we found his weakness. Also, it allowed us to discover a way to block one of his most troublesome abilities, an escape trick that he would have most certainly used to break free. With those off, he fell easily. Poor winged bastard couldn't resist the sight of a group of horny sexy red devils and the feelings they gave him once they started to touch him all over. Hell, he grew a really hard boner and stopped fighting immediately once they got their hands on his shaft. That was some sight to see.'";
	say "     So it appears the angel was caught successfully and brought somewhere, so you inquire him about that. 'Since you have helped us during all this process and seen none of the action, I could take you there. You see the [bold type]staff door[roman type]? Yeah, the one right next to Toron and the bar. Let him know that you have my authorization to go in and head into the dungeons underground. I'll meet you there, shortly.' he informs you. Looks like he's trusting you enough to let you in his dungeon all by yourself...";
	if demonologist is listed in companionList of Player:
		WaitLineBreak;
		say "     'Looks like your efforts were successful' says Xaedihr, tagging right behind you. 'I don't oppose this, I know Mogdraz knows what he's doing, and he wouldn't use this angel for any selfish means. This is just a way to protect himself. Heaven is no better than Hell, if you ask me. Now, just... don't leave me out of the fun if you intend to get to know this big guy, alright?'";
		if Loyalty of Xaedihr < 30:
			say "     [bold type]Looks like he approved of your help towards Mogdraz substantially.[roman type][line break]";
			increase loyalty of Xaedihr by 2;
	now Resolution of Ambush The Purifier is 6;
	connect Hellfire Corridor;

instead of going down from Hellfire Corridor while (Resolution of Ambush The Purifier is 6):
	say "     As you approach the dungeon, just like Mogdraz told, you wait before going in. It's not long until the big demon boss appears right behind you, his footsteps heavy and audible as he walks down the stairs. 'Thank you for waiting.' he says, as he then proceeds to walk towards the door ahead of you. Though he stops, with a brief pause before starting to speak again. 'I must tell you that... Well. What you did was a tremendous help to our business. In fact, Araqiel was already... bound to me, before all this began. It's a long story... But know that you've done the right thing.' It is rather intriguing that he feels the need to tell you this, but you're listening to whatever he has to say.";
	say "     'We do this to protect ourselves, and this angel was already on the brink of falling completely. I have no idea what he would do if his corruption came from the influence of Hell, rather than from us. Like this, we are able to take hold of his unpredictability, without completely losing what makes him... who he is. I hope you understand that I am not, by any means, one like the Hell's lackeys, and in what depends of me, I shall make him our ally, not our slave. This arrangement is merely a safety measure.' Done with the explanation, he now asks you to come with him, inside the dungeon... As he pushes the door open, he tells you one final thing. 'It is probably best that you keep your distance, too. He must spend a really long time with my hellfire demons to consolidate his... conversion safely.'";
	WaitLineBreak;
	say "     As you head in deeper, Mogdraz leads you to a specific room, past all the others, in which the angel is being held. Seriously though, you can't help but wonder how can there be so many different rooms and places inside this club, and if it may even be a product of demon magic... Either way, you finally arrive at the supposed room. The red devil pushes the door open quietly, and lets you watch...";
	say "     By now, the angel is only slightly different than what he was back when you were looking out for him. His body frame remains wide and hulking, his skin has gotten a bit paler in color, and his vast wings, while not as shiny as before, maintain their white color. His hair is still very short and blonde, but his eyes turned into a crimson red that pierces through your soul and beyond. Obviously, however, what jumps into your eyes is that his cock has a grown an additional couple of inches, even bigger than before, together with the massive orbs hanging underneath having been augmented into providing heavier and significantly more overwhelming loads each time the fallen angel hits his climax. Or was it always like this?";
	WaitLineBreak;
	say "     Even Mogdraz can't help himself but give his own jockstrap covered bulge a little stroke at the sight of his boys swarming the large fallen seraphim. The hulking ex-purifier is lying down on the floor, with one demon riding his enormous cock, another humping his face, one holding his legs and fucking his ass from behind, and still another two on each side getting handjobs from the horny corrupted angel. It nearly looks like a train of hellfire demons all clustered on top of the winged man with their sexy red bodies as they deposit their loads, one after the other, deep inside the former holyness. You are only allowed to watch it happen before your eyes, knowing this was possible thanks to you.";
	if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
		say "     The demon boss stands still next to you, trying his best to not start jerking off right in this moment as the great businessman of a demon that he is. But the whole setting is quite inviting, if you wanted to use this opportunity to get closer to Mogdraz in this way...";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Make a move and rub his crotch yourself.";
		say "     ([link]N[as]n[end link]) - Try to make some conversation.";
		if player consents:
			Linebreak;
			say "     As he's standing right next to you, his crotch is pretty much within your reach. You're able to stretch your arm in his direction and gently place your hand around his warm throbbing bulge, which is already taking from underneath the leather. The fat, engorged meat fills your grasp with each second you spend stroking it, and while he says nothing to your advances, he lets out a soft, approving moan as you cup his voluminous bump. The view you both have of the fallen angel and the group of five hellfire demons, all clustered together fucking non-stop, is enough to set the mood for some jerking off, so why not providing your big devil friend a good time that he would certainly appreciate?";
			say "     Mogdraz grins, with only a few words escaping his lips 'Consider it your reward, if you wish for it so badly.' Taking you in for an embrace that you're not expecting at first, your body brushes against his, your skin rubbing against his hairy torso as his thick arms hold you tight, then he leans in for a kiss, holding the back of your head and keeping you in place as he explores your mouth with his long demon tongue. A kiss that overwhelms you in so many ways, brutal in a way, but mindwrecking. You feel your mind burn to ashes as you fall into a magnetic trance, his fiery eyes looking into your soul as lust takes over you.";
			say "     After pushing you towards the wall, he slowly pulls his tongue out, tugging on your lips playfully, before leaning his head to the side of yours and turning just enough so that both you and him can have a look at the scene that is still happening right next to you. You don't even take in the effort to process what is happening to you, your whole body seems to be bursting in sexual desire...";
			WaitLineBreak;
			if player is male: [frotting]
				say "     You can feel his lust-driven breath tickling your forehead as the towering devil pushes his leather jockstrap down, his erection so rock hard that it jumps right out of its former prison and hitting you quite heavily. You can see how really enormous it is, even by a hellfire demon's standards, and it's pulsing and leaking by the time your gaze lands on it. He looks into your eyes, and reflexively, you nod while looking back at his, a second later feeling his hand reaching down for your [cock of player] member, all ready to be caressed and brought in for the pleasure. Mogdraz presses his crimson rod against your manhood, enveloping both with his large hand and stroking them at the same time, allowing you to feel his own throb against yours in a pleasurable frotting action.";
				say "     The grunting from the group of demons and the fallen seraphim continues as their climaxes keep following in sequence, the smell of demon cum so intense that makes you feel slightly lightheaded, a sensation that complements the overwhelming state Mogdraz threw you into. Turned on as you both are, it doesn't take long until you begin to hump against eachother, or bringing your lips together for a rather sloppy tongue-wrestling in eachothers['] mouths. You can feel his powerful and intense heartbeat together with his deep breathing reaching a new level, indicative of a steady approach to his climax. Slipping your hand over his heavy orbs, you know he'll deliver a very messy load, and he really loves when you grope and rub him down there.";
				WaitLineBreak;
				say "     However, he is not the only one. The sensation provided by the friction of his throbbing hard meat against yours also brings you near the edge, and he stops as soon as you give signs that you're about to cum. Taking hold of everything now, he then resumes, rubbing you both as slowly as possible, and looking back at him, you notice he's not even paying attention to what's happening around you anymore. He's focusing on you, bringing you just behind the point of no return, only a rub away from letting out all your jizz... It's so intoxicating, almost like a torture, and he does this so well, with such great control, that you feel you are just about to helplessly beg him to cum.";
				say "     Though it seems he is waiting for something, and you see what. His demons are now going all deep on the former angel, by either shoving their lengths fully inside his holes, or taking hold of his hands, or even the one on top of his dick completely taking in the seraphim's cock ballsdeep, and you know he's aiming to share this moment with when they make the now corrupted holyness reach his ultimate climax. Shifting your eyes to what's now happening there, it doesn't take long as that happens, his muffled grunting going loud and intense as the ex-purifier loses himself in an almost never-ending orgasm, the display itself enough to let you loose as well, biting your underlip and helplessly moaning as Mogdraz strokes both you and himself.";
				WaitLineBreak;
				say "     Your loads get mixed together as they land all over you and him, painting your bodies in white as it all begins to immediately form a puddle right by your feet, all while the demon boss plants another kiss on you until both your climaxes begin to subside... But it feels like it isn't enough for you. Soon, your begin to crave more, your lust intensifying, almost as if you were addicted to the sensation. Your mind goes way and beyond thinking about the endless possible ways of further reaching pleasure satisfaction...!";
				WaitLineBreak;
				clear the screen;
				say "     Then, you hear a snap of fingers. You find yourself looking at Mogdraz, naked, covered in cum, without any memory of what happened. 'It was just a small demonstration.' he says, and he could not sound any more cryptic about that.";
			else: [he jerks off and slides a hand over the player's privates]
				Linebreak;
				say "     You can feel his lust-driven breath tickling your forehead as the towering devil pushes his leather jockstrap down, his erection so rock hard that it jumps right out of its former prison and hitting you quite heavily. You can see how really enormous it is, even by a hellfire demon's standards, and it's pulsing and leaking already. He looks into your eyes, He looks into your eyes, and reflexively, you nod while looking back at his, a second later feeling his hand reaching down for your crotch, all ready to be caressed and brought in for the pleasure. While Mogdraz tugs on his own length, throbbing hard by now, his nimble fingers find a way to slip between your legs, grabbing your [if player is female]feminine bits gently[else]sensitive areas[end if] and playing around them as he masturbates you both.";
				say "     The grunting from the group of demons and the fallen seraphim continues as their climaxes keep following in sequence, the smell of demon cum so intense that makes you feel slightly lightheaded, a sensation that complements the overwhelming state Mogdraz threw you into, providing you with joyful sensations as he lets you look at him stroke his dick. Turned on as you both are, it doesn't take long until you begin to hump against eachother, or bringing your lips together for a rather sloppy tongue-wrestling in eachothers['] mouths. You can feel his powerful and intense heartbeat together with his deep breathing reaching a new level, indicative of a steady approach to his climax. Slipping your hand over his heavy orbs, you know he'll deliver a very messy load, and he really loves when you grope and rub him down there.";
				WaitLineBreak;
				say "     However, he's not the only one. The sensation provided by his caressing around your [if player is female]by now leaking and moist pussy, as he slips a finger or two between your lower lips, which sends lusty shivers all through your body[else]genderless pleasure spots, pressing all over them with his expert fingers[end if] also brings you near the edge, and he stops as soon as you give signs that you're about to hit your orgasm. Taking hold of everything now, he then resumes, caressing you both as slowly as possible, and looking back at him, you notice he's not even paying attention to what's happening around you anymore. He's focusing on you, bringing you just behind the point of no return, only a rub away from making you hit your climax. It's so intoxicating, almost like a torture, and he does this so well, with such great control, that you feel you are just about to helplessly beg him to let it happen.";
				say "     Though it seems he's waiting for something, and you see what. His demons are now going all deep on the former angel, by either shoving their lengths fully inside his holes, or taking hold of his hands, or even the one on top of his dick completely taking in the seraphim's cock ballsdeep, and you know he's aiming to share this moment with when they make the now corrupted holyness reach his ultimate climax. Shifting your eyes to what's now happening there, it doesn't take long as that happens, his muffled grunting going loud and intense as the ex-purifier loses himself in an almost never-ending orgasm, the display itself enough to let you loose as well, biting your underlip and helplessly moaning as Mogdraz masturbates both you and himself.";
				WaitLineBreak;
				say "     Your orgasms mix up together as his cum lands all over you, painting your body in white as it all begins to immediately form a puddle right by your feet, all while the demon boss plants another kiss on you until both your climaxes begin to subside... But it feels like it isn't enough for you. Soon, your begin to crave more, your lust intensifying, almost as if you were addicted to the sensation. Your mind goes way and beyond thinking about the endless possible ways of further reaching pleasure satisfaction...!";
				WaitLineBreak;
				clear the screen;
				say "     Then, you hear a snap of fingers. You find yourself looking at Mogdraz, naked, covered in cum, without any memory of what happened. 'It was just a peek.' he says, and he could not sound any more cryptic about that.";
			WaitLineBreak;
			say "     'And just in time. I think we exhausted the poor guy.' he says, as his demon lackeys look in disappointment, still with their erections throbbing and ready, facing an unconscious fallen angel covered in and leaking cum everywhere. They look at their master for further instructions. 'Uh... well, I guess you could go play outside now, your job is complete.' He tells them, and happy to obey their lord, they disperse, running off to unknown parts. 'I ask you to return upstairs and give Araqiel a moment. Ah, yes, that's his name, by the way.' He tells you, and you nod. He then lets you go as you immediately return to the lounge.";
			now PlayerMet of Araqiel is true;
			say "     Perhaps it won't be long until he tends to the fallen angel's condition.";
		else:
			say "     Things were getting a little awkward there, so you figure it should be for the best if you started asking questions about the angel, such as what is going to happen to him after this. He clears his throat as he turns to you. 'Oh, well... I haven't decided, yet. I guess I'll address the state of his mind once this session ends, and see what he could be doing around here. I'm not letting him out after this, it would be even more dangerous. To us and to him.' A few moments pass, and it's just the gangbang scene that you observe all this time in silence, until the devil turns to you. 'Alright, I guess I'm going to ask you to wait upstairs. I will have to tend to Araqiel once they're done with him... Ah, yes, that's his name, by the way' He tells you, and you nod. He then lets you go as you immediately return to the lounge.";
			now PlayerMet of Araqiel is true;
			say "     Perhaps it won't be long until he tends to the fallen angel's condition.";
	else:
		say "     As the demon boss was standing still next to you, things were getting a little awkward there, so you figure it should be for the best if you started asking questions about the angel, such as what is going to happen to him after this. He clears his throat as he turns to you. 'Oh, well... I haven't decided, yet. I guess I'll address the state of his mind once this session ends, and see what he could be doing around here. I'm not letting him out after this, it would be even more dangerous. To us and to him.' A few moments pass, and it's just the gangbang scene that you observe all this time in silence, until the devil turns to you. 'Alright, I guess I'm going to ask you to wait upstairs. I will have to tend to Araqiel once they're done with him... Ah, yes, that's his name, by the way' He tells you, and you nod. He then lets you go as you immediately return to the lounge.";
		now PlayerMet of Araqiel is true;
		say "     Perhaps it won't be long until he tends to the fallen angel's condition.";
	now Resolution of Ambush The Purifier is 7;
	move Player to Hellfire Lounge;
	move Araqiel to Hellfire Dungeon;
	connect Hellfire Cell One; [Araqiel is now a Dungeon Master, so Hellfire Dungeon is now functional. Cells are unlocked and prisoners added.]

Section 1-5 - PURE Intro

[TBA]

Section 2 - Araqiel NPC

Table of GameCharacterIDs (continued)
object	name
Araqiel	"Araqiel"

Araqiel is a man.
ScaleValue of Araqiel is 4. [DB sized]
Body Weight of Araqiel is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Araqiel is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Araqiel is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Araqiel is 9. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Araqiel is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Araqiel is 6. [length in inches]
Breast Size of Araqiel is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Araqiel is 2. [count of nipples]
Asshole Depth of Araqiel is 15. [inches deep for anal fucking]
Asshole Tightness of Araqiel is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Araqiel is 1. [number of cocks]
Cock Girth of Araqiel is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Araqiel is 16. [18 if corrupted] [length in inches]
Ball Count of Araqiel is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Araqiel is 4. [5 if corrupted] [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Araqiel is 0. [number of cunts]
Cunt Depth of Araqiel is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Araqiel is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Araqiel is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Araqiel is false.
PlayerRomanced of Araqiel is false.
PlayerFriended of Araqiel is false.
PlayerControlled of Araqiel is false.
PlayerFucked of Araqiel is false.
OralVirgin of Araqiel is false.
Virgin of Araqiel is false.
AnalVirgin of Araqiel is false.
PenileVirgin of Araqiel is false.
SexuallyExperienced of Araqiel is true.
TwistedCapacity of Araqiel is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Araqiel is true. [steriles can't knock people up]
MainInfection of Araqiel is "".
Description of Araqiel is "[Araqieldesc]".
Conversation of Araqiel is { "<This is nothing but a placeholder!>" }.
The scent of Araqiel is "     Araqiel smells [if HP of Araqiel is 3]almost like a demon, having lost his purity to the hellfires, sharing some of their masculine musk that faintly resembles brimstone and fire[else]masculine, sweet and pure, though all of this still manages to be slightly arousing thanks to him having fallen a bit, already[end if]. Though there's always still a hint of his characteristic minty scent".

to say AraqielDesc:
	if HP of Araqiel is 3: [Corrupted]
		say "     Araqiel is one of a kind, an extremely powerful Purifier seraphim with features that would cause the other angels to be considered puny in comparison. The towering fallen angel is a heavily muscular man with vast, white feathered wings adorning his back, blonde short hair with crimson eyes, a clear face and a rosy pale skintone. Though the one thing that sets him apart from the heavenly creatures is the existence of a sizable cock below his ripped midriff, big even for his overall hulking frame, with a set of already full ostrich-egg sized gonads hanging underneath that seem to fill up even more at the mere sign of slight arousal. He alwaysh as a mischievous and inviting smile, enticing anyone, including you, to come very, very close to him.";
		if purifier seraphim is listed in companionList of Player:
			say "     [bold type]He is currently following you as your battle companion.[roman type][line break]";
	else: [Pure]
		say "     Araqiel is one of a kind, an extremely powerful Purifier seraphim, with features that would cause the other angels to be considered puny in comparison. The towering holy warrior is a heavily muscular man with vast, white feathered wings gleaming with their very own unique light adorning his back, blonde short hair with bright blue eyes, a clear face and a peachy skintone. Though the one thing that sets him apart from the pure heavenly creatures is the existence of a sizable cock below his ripped midriff, big even for his overall hulking frame, with a set of full goose-egg sized gonads hanging underneath. He wears nothing but his own skin, with his privates exposed to everyone's eyes. He always has that welcoming and friendly smile whenever you come visit him.";

Section 2.1 - Araqiel as a Companion

Table of GameCharacterIDs (continued)
object	name
purifier seraphim	"purifier seraphim"

purifier seraphim is a pet.
NPCObject of purifier seraphim is Araqiel.
understand "Araqiel" as purifier seraphim.
IDList of purifier seraphim is { "Araqiel", "araqiel", "purifier" }.
printed name of purifier seraphim is "Araqiel".
Description of purifier seraphim is "[AraqielDesc]".
Weapon Damage of purifier seraphim is 20.
The level of purifier seraphim is 1.
Dexterity of purifier seraphim is 10.
The summondesc of purifier seraphim is "[SummonAraqiel]".
The dismissdesc of purifier seraphim is "[DismissAraqiel]".
The assault of purifier seraphim is "[one of]Araqiel body slams your enemy with his incredible weight, nearly crushing them. He then rolls over and stands up, avoiding any retribution.[or]The seraphim takes flight, then delivers a swift kick on your enemy as he passes by, continuing on harassing them as the fight goes by.[or]Applying one of his best cock-fu moves, the fallen angel manages to swing his heavy and thick meatlog against the enemy's face, shouting 'Bullseye!' as he flies away to prepare for the next strike.[or]The purifier jumps on top of your enemy and delivers a powerful punch.[or]The purifier jumps on top of your enemy and delivers a mega powerful smash with both his hands, then flies away.[or]Spreading his vast bright wings, Araqiel creates a way to conceal his next attack, delivering a surprise strike on the enemy's face as he laughs about it.[at random]".
the fuckscene of purifier seraphim is "[SexWithAraqiel]".

to say SummonAraqiel:
	if Araqiel is visible: [summoning while standing next to him]
		say "     You call out Araqiel, inviting him to join you on your day outside. 'Bodyguard duty? I'm glad! Can't wait to get some fresh air and stretch my wings!' He walks up to you, ready to leave.";
	else: [regular summoning]
		say "     You really cannot summon Araqiel like that. He has a job in the dungeons of the Hellfire Club when he is not busy being your bodyguard. You should come recruit him personally.";
		now SummonFailure is true;

to say DismissAraqiel:
	if Player is in Hellfire Dungeon or Player is in Hellfire Club or Player is in Hellfire Lounge or Player is in Hellfire Corridor or Player is in Crimson Street or Player is in Hellfire Cell One:
		say "     You tell Araqiel that you don't need him right now. 'Heh, it was good while it lasted... Back to the dungeons, it seems!' he says before taking his post back in the Club.";
		move Araqiel to Hellfire Dungeon;
	else:
		say "     You really should not dismiss Araqiel here, as you are supposed to keep an eye on him, and leaving him alone might be irresponsible. Pass by the Club's door or head inside to dismiss him.";
		now DismissFailure is true;

Section 3 - Araqiel Talk

instead of conversing Araqiel:
	if HP of Araqiel is 3: [Corrupted]
		say "     As you approach the fallen angel, he makes space for you, which in truth is just to bring his muscled arm around your shoulder and bring you to rest against his side. 'Well, hello there! Came for just a talk? Alright, that's fine, too. I'll try not to jump on top of you or anything, unless that's what you want...' He gives you a charming wink as he flexes his chest. 'Now, have you been eating well? Drinking up plenty of that manly thick juice to make you strong and healthy? Just reminding you that I can provide lots and lots of it, if you want to get big like me before I bend you ov...! Ah-... that's right! Just talking! Okay, I can do that.'";
		say "[CAraqielTalkMenu]";
	[else: [Pure]
		say "     As you approach the hulking seraphim, he makes space for you, allowing you to take a seat right next to him as he gives you a friendly pat on the shoulder. 'Well, hello there! Came for just a talk? I'm happy to oblige! I admit, sometimes it's nice to have someone talk to...' he says, smiling at you before he lets out a chuckle. 'Hope you've been taking good care of yourself! That's always important. Eating well, too, if you want to be as strong as me! Or... well, just stronger, in general. I know I pack a good punch.'";
		say "[PAraqielTalkMenu]";]

Section 3-1 - CORRUPTED Araqiel Talk

to say CAraqielTalkMenu:
	say "     [bold type]What do you want to talk to Araqiel about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Araqiel to tell you more about himself";
	[]
	if Energy of Araqiel > 0:
		choose a blank row in table of fucking options;
		now title entry is "His process of corruption";
		now sortorder entry is 2;
		now description entry is "Knowing you were the responsible for his current state...";
	[]
	if Energy of Araqiel > 1:
		choose a blank row in table of fucking options;
		now title entry is "About having sex";
		now sortorder entry is 3;
		now description entry is "Have a good sex talk with the hulking fallen seraphim";
	[]
	if Energy of Araqiel > 1 and demonologist is listed in companionList of Player and "Met Xaedihr" is not listed in traits of Araqiel:
		choose a blank row in table of fucking options;
		now title entry is "Introduce him to Xaedihr";
		now sortorder entry is 4;
		now description entry is "Have Araqiel meet your half-demon companion";
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
				if (nam is "Himself"):
					say "[CAraqielTalkHimself]";
				if (nam is "His process of corruption"):
					say "[CAraqielTalkCorruption]";
				if (nam is "About having sex"):
					say "[CAraqielTalkSex]";
				if (nam is "Introduce him to Xaedihr"):
					say "[CAraqielTalkXaedihr]";
				wait for any key;
				say "[CAraqielTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you have to take your leave. Araqiel smiles to you, though he can't hide the disappointment in seeing you go.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say CAraqielTalkHimself:
	say "     Curious about this enigmatic fallen seraphim, you ask him to tell you more about himself. He takes your interest in him as a compliment and puffs his chest out, proud of being a target of your attention. 'So you want to know more about me? Oh, that's so wholesome of you!' His embrace around you tightens for a while as the touchy big man thinks of what to tell you. Projecting his powerful and masculine voice, some words manage to come out of his mouth. 'Uhm... Well, Ah... I'm afraid there's not much to tell, is there? I'm what you see! A big, hung former warrior of the heavens who descended down to earth to punish evil makers into submission! I still love doing that, by the way, but Mogdraz tells me to keep a low profile, so no more hunting for me! Isn't that a letdown?! Didn't you enjoy spying on me kicking some brutes['] asses or making little puny incubi choke on my dick? It was funnnn!' You nod, encouraging him to keep talking.";
	say "     'Now Mogdraz tells me I have to stay here and watch after the prisoners, while providing the big dick lovers a good time. Do I look like a man whore?! Wait, don't answer that, because I probably do. But the point is, I want to stretch my wings and fly around like I used to! And fuck all the demons I find in the way until they beg me to stop! Which they never do, by the way. Horny little critters.' And yet he keeps talking, while all you can do is nod. 'You know, I enjoy the size difference. I like being huge! I wish I was even bigger, sometimes, although that would be troublesome. You think my wings would be able to carry me if I was even bigger? Yeah, probably not... Hm, gotta think about my priorities. Truth is, I don't know what I want! Do you know what you want?' You simply nod, once more, though not really answering. 'It's hard, isn't it?! Knowing what we want! Well, I know I want to fuck! A lot! And that's... hot, but why do I want to fuck so much? I'm horny all the time! I also need to learn how to live with an even bigger dick, now... Not sure this change was necessary, I was already hung as fuck...'";
	WaitLineBreak;
	say "     Sounds like Araqiel has a lot to talk about, and he could keep you [']entertained['] for hours. Sadly, you can't stay here forever, so you thank him for sharing this little bit of personal input about himself. 'Oh, anytime! I don't talk much to people around here. I just mainly fuck... It feels good talking to people, sometimes. But we can also do it while fucking, maybe? I've got a big dick and it loves being touched and licked and worshi-... Y-yeah, I should probably just... I'm sorry, I did it again, didn't I? Hard to keep quiet about it, honestly.' It seeems he's still getting used to his new, over the top levels of sex drive, but you seem to tickle his fancy a lot.";
	if Energy of Araqiel is 0:
		now Energy of Araqiel is 1;

to say CAraqielTalkCorruption:
	say "     Well, it was indeed because of you that he ended up being [']corrupted['] and being held inside the dungeon of a club managed by demons, and he must know that by now... So you swallow your angsty and ask him if he's okay with that. 'Hm... I have to say... you were quite a naughty [boygirl]. You see that incubus I facefucked against the wall? That would easily be you... times ten. Tied up and helpless, forced to swallow my cum for every time I shot, and yeah, you'd have to take every inch of my dick down your throat. And then I'd leave you there, bound and exposed, leaking my juices, hoping some roaming creatures would pick up the smell and have their way with you.' Your eyes widen as he grins mischievously. 'Then I'd be back, and repeat the whole process, over and over, for days, until I broke you completely. Maybe get you on a leash and have you walk on fours like a doggy bitch for the rest of your life.'";
	say "     As he was telling you this, his cock got to a full sized erection that he was unconsciously stroking all this time. 'Oops, I think I got a little excited...' he says, becoming aware of the gigantic boner between his legs. 'So yeah, that's what I'd do to you... to thank you! Lucky you, huh? So I guess we can be friends. I definitely didn't want to see myself back to my oh so heavenly ways... Tsc, boring.' Well, he actually seems cool with the fact that you were the one responsible for his current predicament. 'However, I do still want some compensation. I get really horny down here, and I just don't have enough people to fuck! They break so easily, some want big dicks and they can't even take the tip! No no, we can't have that. I need someone who can handle me, and I'm hoping you're that kind of person. Say... Wanna ride me to [italic type]heaven[roman type] one of these days? Not literally, though. I'm done with the fancy fliers.' he asks you, chuckling, his dick throbbing as he swings it around a bit, making sure your eyes are following.";
	if Energy of Araqiel is 1:
		now Energy of Araqiel is 2;

to say CAraqielTalkSex:
	say "     Since he wants it so badly, you might as well ask him what he enjoys doing. He raises his eyebrows in interest, bringing you even closer to him as he leans his head to your side. 'Oh, what I enjoy doing? I'm flattered you ask. That means you want to please me better, right? Hah, that's what communication is for! Mogdraz tells me, nothing better than keeping open with your partner so you learn more about eachother! And... well, they pay more that way.' he says, making a pause. 'Though is it bad that if I sometimes just want to fuck them, regardless of their permission? In Heaven, the mere thought of that would guarantee you a kick in the ass, which is why I hated that place... But nothing gets me off more than overpowering someone. I'm just so fucking horny I wouldn't think twice, I'd destroy them! Male, female, both, of any shape and size, oh I so would absolutely ruin them.'";
	say "     Although, you have a feeling that this is what he obviously likes, so you ask him about other things that he doesn't talk as much. 'Hm, you mean other tastes, too? Well, uh... I guess I could experiment. Mogdraz's dick makes me curious, too... he's got a big one, actually about the size of mine. We actually never fucked, he instead had his lackeys touch me all over. Y'know what, it kinda felt good, then! Uh, I wasn't very aware of what was happening, but... It felt good. Though I wonder how it feels to get fucked by a really big dick? Hm... But now that I think of it, I think I'd like riding a smaller dude, too. Milk him until he's got nothing left. Eh, I guess I'm open to anything as long as it's sex. What about you?' he asks you, finally making a pause and waiting for an answer.";
	WaitLineBreak;
	if player is dominant:
		say "     To give him a reply, you go on about your preferred role as a dominant, wanting to have control of situations. 'Oh. Ooooh... Okay. You like dominating, then? Not sure how this would work... Uh, maybe... Maybe I could try let you take the reins, but I hope you know what you're doing! You're sure you can handle me?' he asks, a little hesitant to let you take a more dominant role towards him, but not saying no to the possibility. 'Okay, hit me up whenever you want to try some stuff, I'm down for it.' he adds. Maybe you could try some things with the fallen angel in the future.";
	else if player is submissive:
		say "     To give him a reply, you go on about your preferred role as a submissive, wanting to be taken control of and serving others. His eyes gleam with excitement as you talk about it. 'Oh, a cute little submissive all for myself? I hope you're not kidding... You'd worship me...? Serve me...? You'd be my slave?' All his questions awaken your submissive instincts, and you find yourself reflexively nodding. 'You won't regret it. But I'm a big guy with big needs... Are you sure you're up for the task?' He gives you a grin as he reaches for your head, patting you on the top by the time you're saying yes. 'That's a good [boygirl]. Let me know whenever you want me to service me. It will be my pleasure, and yours by extension. Guaranteed.' he adds as he chuckles.";
	else: [player is neither, so still exploring]
		say "     To give him a reply, you tell him you really don't know what you like the most, and that right now you're still only exploring. 'That's great! Why limit ourselves to one thing, right? You can get the best from every world! Hey, I can teach you lots of stuff. If you've never been with a strong and powerful angel with a big dick, I could be the one! I know I'm not as big as those centaur stallions - and gosh, I wish I was! - I still pack a good one, don't you think?' He makes eye movement towards his manhood, showing it off to you by grabbing it and giving it a few swings, which is enough to cause it to harden before your gaze. 'Fuck, I really just have to touch it a little to make it hard. Well, if you're down for some sex right now, let me know. I'm happy to explore with you.' he adds, as he chuckles.";
	if Libido of Araqiel is 0:
		now Libido of Araqiel is 1;

to say CAraqielTalkXaedihr:
	say "     Since your demonologist companion is already widely known around the club, you figure it's for the best that you introduce him to Araqiel. Calling the half-demon over, you tell him that you'd like them to get to know eachother. Xaedihr chuckles at your request, though he shows himself as a polite gentleman, greeting the fallen angel most appropriately. 'Greetings, my name is Xaedihr. I assume you've already heard of me.' he says, the winged man raising an eyebrow, then nodding as he was listening. 'Xaedihr... Xae... Oh! Aren't you... Aah... a patron! Or was that from the cleaning service? I... I don't remember. Anyway, I'm Araqiel! Very nice to meet you!' The half-demon sighs, looking frustrated, before he whispers to you 'I'm having second thoughts about this. I thought Mogdraz would leave his intellectual capabilities mostly intact. That or he was never that much mentally bright, to begin with... Probably the latter.'";
	say "     'Uh... Is there any problem?' Araqiel asks, trying to keep his friendly smile, despite his confusion. 'No, none at all. I'm just wondering... Did you have any, uhm... What was your life back in Heaven? What were you trained for, or... created for? It's just curiosity, because I'm a researcher and I love knowing these things.' asks Xaedihr, who immediately takes a small notepad with a pen, ready to write everything down. The fallen seraphim doesn't take this as anything weird, and is happy to talk about his past... Surprisingly?";
	WaitLineBreak;
	say "     'Oh, well I'm a seraphim! Or was! Maybe not anymore so, though I still... feel like one? Kind of... Anyway, I was created with one objective in mind, which is purifying the lands of all evil and corruption, by any means necessary! Which is why we're given these strong muscles to pin down the naughties and teach them unforgettable lessons! Though all this started when I got too close with an harem of them and I... uh... well I... Really liked it, okay? I-it was new to me! All that... touching and... those tiny red hands, rubbing all over my muscles, so fascinated about my size and strength... There were so many, and they were so little and puny...! I could crush them so easily...' As Araqiel keeps talking, his manhood continues to harden, while Xaedihr notes everything down frantically. 'Imps. You were swarmed by imps. Typical.' the half-sorcerer makes the obvious remark, though his eyes widen as he notices the tip of the former heavenly man's cock bumping against his leg.";
	say "     'Ah, shit! Sorry! I... T-This is difficult!' he apologizes to the sorcerer, who chuckles in response. 'Well I know I'm handsome, you didn't need to be so obvious.' says the sorcerer, though you feel like it's just to lighten the mood, as it actually makes Araqiel smile. 'Hah! I like you. Humorous! Heh...' His dick just seems to get harder the more he talks, throbbing every second, and you can see some embarrassment in the big guy. 'Well, then. I believe you should take care of him now. He seems like he needs a helping hand or two.' says the sorcerer to you, as he puts back his notepad and bows goodbye to Araqiel. 'You will get used to being a horny boy, I'm certain. Perhaps in the future we might share an intimate session, if I am allowed.' The hulking winged man is left blushing, with the biggest hard-on ever, as Xaedihr takes his leave. 'Did I screw it up? I can never keep [italic type]him[roman type] down... Ugh! Please tell me I'm allowed to fuck him? He's so damn hot...!'";
	WaitLineBreak;
	say "     It seems Xaedihr caused a good impression on Araqiel. Maybe in the future you can invite the half-demon for a duo activity with the fallen angel...";
	add "Met Xaedihr" to traits of Araqiel;
	add "Met Araqiel" to traits of Xaedihr;

Section 3-2 - CORRUPTED Araqiel Sex

Instead of fucking Araqiel:
	say "[SexWithAraqiel]";

to say SexWithAraqiel:
	if Libido of Araqiel is 0:
		say "     Maybe you should talk and get to know him before you jump right into sex...";
	else if Libido of Araqiel > 0:
		if lastfuck of Araqiel - turns < 4:
			say "     You show your interest in having sex with the fallen seraphim. Though he looks at you with a receptive expression, he stops you there. 'I would love that, but... give me some time to refill, okay?' he says, giving you a suggestive smile.";
		else:
			say "     You show your interest in having sex with the fallen seraphim, which he gladly reciprocates. 'Oh yes? Well, pick your options... I'm sure there's plenty we can do.' he says, his massive cock slowly rising to attention.";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			if player is not dominant:
				choose a blank row in table of fucking options;
				now title entry is "Worship his cock";
				now sortorder entry is 1;
				now description entry is "Service the fallen angel with the best of your oral skills as he only observes you";
			[]
			if player is not submissive and player is male:
				choose a blank row in table of fucking options;
				now title entry is "Get him to blow you";
				now sortorder entry is 2;
				now description entry is "Make him get on his knees and suck your dick";
			[]
			if player is not submissive and player is male and (player is in Hellfire Dungeon or player is in Hellfire Cell One):
				choose a blank row in table of fucking options;
				now title entry is "Spitroast the incubus prisoner";
				now sortorder entry is 3;
				now description entry is "Get the Dungeon Master to show you some fun with Eranyd, the incubus cuntboy prisoner";
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
						if (nam is "Worship his cock"):
							say "[CAraqielCockWorship]";
						if (nam is "Get him to blow you"):
							say "[CAraqielSuckDick]";
						if (nam is "Spitroast the incubus prisoner"):
							say "[CAraqielSpitroastEranyd]";
						wait for any key;
				else if calcnumber is 0:
					now sextablerun is 1;
					say "     You excuse yourself as you have to take your leave. Araqiel smiles to you, though he can't hide the disappointment in seeing you go.";
					wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;

to say CAraqielCockWorship:
	say "     Knowing how much he likes a dedicated mouth around his rod, you let the fallen angel know that you'd like to get on your knees and service him down below, while he simply lays back, relaxing, and sees you pleasuring him. 'Oh, fuck that's hot! Yeah, come over here... And worship this cock...' he answers, and his meaty prick is already growing to a full erection as soon as you finish speaking. Now that he's more than ready to receive your attention, you kneel before him, placing your hand around his balls at first, and feeling the entire area around his junk. You nearly can't believe how good he smells down here, a mix of manly musk and still a hint of heavenly freshness, which makes it feel as sweet as candy. He tastes like one, too, as you put your tongue to work all over his sack, with your other hand slowly stroking around the base of his shaft.";
	say "     'Mmph... You know what I like... Slowly at first...' he says, as his manhood throbs with eagerness, '... hard and deep later... Fuck... Yes! Keep going... be a good [boygirl] for me...' Your eyes meet when you look at his face, only to see him biting his lip already, panting in need, all while you tease the hell out of him with slight fondling, licking and kissing, his nuts growing fuller by the second, the best way to measure how excited you're getting the hulking winged man. Then, you're about to slide your tongue from the base all the way to the tip through the underline of his shaft, when he moves a hand over the back of your head. He fights it, the temptation of grabbing you and having his way with you, and simply gives you a gentle tap, a stroke on the cheek, and slides it down over your shoulder affectionately.";
	WaitLineBreak;
	say "     There's nothing stopping you from licking around the large tip, the glans already slick with precum. You actually have to use both your hands to get your grasp around his girth entirely, and it throbs so hard you're wondering how long he will last through your servicing. 'Why do you do this so well, it shouldn't be allowed by any natural law...' he comments, ending in a moan which he rushes to hold, trying to keep focus on observing you worshipping his cock. Though his jaw drops immediately once you get your lips around the tip, and start pushing it a little. It's a huge one, very hard to open your mouth so wide in order to take all that meat, which is constantly pulsing and begging for your attention. With so much to handle, you keep your hands working on his shaft and balls, which are growing heavier by the time.";
	say "     You keep giving him the look, the eyecontact that drives him absolutely crazy. Often you're seeing him lifting his hands, as if going to grab you, then stopping in mid-air as he clenches his fists, sometimes bringing them over to his head instead in completely desperate lust. He's fighting himself so hard, punching the wall behind him slightly, his hips trying their best to not start thrusting and turn this into a hard facefucking session. 'You're driving me crazy... I can't stand this... This is torture... Too fucking GOOD torture...' He pants slightly, letting some breathy moans escape his mouth as he squirms about, all while you suck on how deep you can get of his dong past your lips. Your tongue doesn't stop for a rest, either, you make it wiggle and caress all the sensitive spots when you pull back, before letting it in again, keeping the steady momentum as you stroke his shaft...";
	WaitLineBreak;
	say "     'I just want to grab you... fucking use your throat... stretch it all over my dick... make you choke... make you beg for it... F-fuck you until you pass out...' He's closing his eyes, almost crying out of the torturous pleasure you're giving him. Though figuring you're done with going slow, you proceed to pick up the pace, stroking him quicker, sucking him faster, reaching more of his dick with both your mouth and hands, and giving his massive balls a good squeeze once in a while. His precum tastes amazing, a mix of sweet and salty that makes you want more, and even you find it difficult to resist any of the large seraphim's inner desires, the ones you hear as he talks about them out loud.";
	say "     'Oh fuck, you're going to make me cum so much... My balls are aching...' he warns you, and all you can do for now is stroke his poor, distended orbs that his corruption twisted into growing indefinitely bigger the more he holds his orgasm in. There should to be a cap, but you don't intend to find that out this time. You're keen on making his blow his load as he's getting closer and closer to cumming... The question is, [bold type]how do you want to do it?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Try your best to swallow his load.";
	say "     ([link]N[as]n[end link]) - Make him cum all over himself.";
	if player consents:
		LineBreak;
		say "     With your mind set on attempting to swallow what you can from the ridiculously huge load stored in his twitching balls, you keep your mouth firmly attached around the tip, flicking your tongue around his slit and over his sensitive glans, while stroking his shaft the fastest you can. 'Shit, I'm gonna... cuuum...!' he shouts, grunts and moans as all the heavy cargo inside his gonads is shot at a tremendous force right into your mouth. One spurt is enough to give you a mouthful of cum, and he just keeps shooting faster than you can swallow! All of his creamy load eventually drops out of your lips after making you choke, completely absurd amounts of it being splattered onto you. The force is so much and the floor gets so slippery that it knocks you back, having you have to move your arms to the front of your face in order to not let his jizz blind you!";
		say "     Though as you fall on your back, the corrupted seraphim follows you, collapsing on his knees right on top of you as the sudden impact makes the ground around you tremble. He's still jerking his dick, right above your face, which is spewing cum for like nearly another half a minute, completely covering your face and chest, and he can't help himself but to keep on coming, unaware of the huge mess he's making and how much you're dangerously close to drown under thick layers of twisted holy cum. You struggle to keep it out of your nose, and the more you clean up, more falls over you, and if you try to touch his thigh to warn him, he just gets more excited...! Though all the crazyness eventually ends, as his climax begins to subside. 'Holy shit... Fuck... I-I think that's over...' He's panting, and you still managed to get a full belly, despite the disastrous mess.";
		WaitLineBreak;
		say "     'Oh no! Are you alright?!' he urges to help you get up, wiping off a still handful of cum off your face and bringing you close to him for a hug. No, he's not just using his hands to [']save['] you from choking out, he's literally licking your cheeks, lips and nose for any leftovers of his own jizz. It still takes a while until you can open your eyes, the first thing you see being his smile... and his enormous pecs squishing your neck. Maybe that's why it's still hard to breathe. He then plants a kiss on your forehead and lets you catch your breath on top of his muscular body, your head resting against his manly pillows. 'Have a rest before you go... You'll be feeling better in no time!' The cuddly angel keeps stroking your ear, and you nearly feel like taking a nap...";
	else:
		LineBreak;
		say "     An idea comes to your mind, and with that, you begin to slowly lean his throbbing member upwards, and push it in his direction as you shift your mouth over to the underline of his shaft, licking his glans and stroking the rest of his cock as fast as you can. 'Shit, I'm gonna... cuuum...!' he shouts, grunts and moans as all the heavy cargo inside his gonads is shot at a tremendous force right towards himself, one spurt enough to make an absurd amount of cum rain all over his muscular pecs, abs, and slipping onto his thighs. You don't escape the shower, though, getting some of it on your face, and obviously running down your hands as you keep stroking him for the duration of his orgasm.";
		say "     It still takes him an additional half a minute for his climax to give signs of subsiding, but not before his entire body gets covered in his own thick layers of twisted holy cum, some having landed on his face as a result of the force he's shooting at. By the time it finally starts to wane down, he's breathing hard and deep, looking over at you. 'Holy shit... I think that's over... Fuck! You just made me cum all over myself! I should be making you lick it all off, now...' he says, rubbing his creamy jizz all over his muscular pecs, bulging biceps, down his rippling abs... down his still half-hard shaft and his powerful thighs... You nearly can't believe how much of his body he managed to bathe with a single load, but you could think about [bold type]obliging his indirect request and lick his cum off his body...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Lick him clean.";
		say "     ([link]N[as]n[end link]) - Just laugh about it.";
		if player consents:
			LineBreak;
			say "     That's the least you can do, and don't pretend you don't want it, either. Leaning over the towering angel's body, you put your tongue to work, starting with his powerful legs, licking off any thick drop that's still making its way to the ground. 'Oooh... what a good [boygirl] you are... This is better than Toron's way of cleaning up... I want no trace left, so you better clear your schedule for today.' If he's serious, you're going to be spending a long, long time to lick his whole body clean, with the amount of muscles he has and the corners you have to cover with your mouth. You're still only on his legs and this is looking like an eternally long task...! He just puts his hands over the back of his head, takes a seat on the ground and leans back against the wall, letting you get every inch of him with relative ease. 'Fuck yes... I might get hard again during this... Don't do too well unless you want to lick off a second load...'";
			WaitLineBreak;
			say "     It takes really long, but you eventually manage to get through his abs, his pecs, go up his neck, and even his face he makes you lick clean. Though before you pull out, he grabs you for a kiss, pulling you and taking you in for a full body embrace. 'You're such a sweet. Here, take a rest over my pecs before you go, you'll be feeling so much better after...' As you lean your head on top of his manly pillows, you almost feel like taking a nap while he keeps stroking your ear...";
		else:
			LineBreak;
			say "     You give him a chuckle as you admire his cum-covered muscles. He's clearly teasing you with the view! 'So no licking? Aw, too bad... but since you did such a great job, I'm letting it slide this time... You were a very good [boygirl].' he tells you, with a grin and a wink, letting you go without having to clean him all up. Sure that wonderful smell of his jizz will only make his [']fans['] more crazy about him, so if anything, you did him a favor.";
	now lastfuck of Araqiel is turns;
	NPCSexAftermath Player receives "OralCock" from Araqiel;

to say CAraqielSuckDick:
	say "     Approaching him with one intention in your mind, you give him a mischievous grin as you look into his face, walking closer to him... 'So... that means you have you decided how you want to spend your time with me? Hmm... O-oh...?' he stops, surprised, as he sees you placing your hand over his broad shoulder, pushing him down rather gently at first, and slowly moving your touch to the back of his neck. He drops to his knees, a little out of reaction, though you're sure he gets what you're thinking when you go for your [cock of player] dick, [if player is not naked]whipping it out into freedom[else]grabbing it[end if] as it quickly rises to an erection. The sight of the towering, powerful and enormous fallen seraphim on his knees in front of you, looking up at your face as if about to question his predicament, is all it takes to have you hard as a rock. With a helping pull of your hand, he leans his head forward and begins to kiss your cock.";
	say "     He's just looking at you, as if about to ask you something, all while your dick keeps bumping against his lips, and seeing you as hard as you are, he feels like he has no other option but to grab your member and put his oral skills to work. With that obviously remarked, you being to feel his tongue reaching over your nutsack, his large hand wrapped around your dick, stroking you. Feeling the warmth of his mouth all over your balls nearly makes you moan, the sensation so good while his thumb rubs against the underside of your cock's tip, that you move your hand over the back of his head and begin to slowly pull him up. His soft lips meet your shaft, moving towards the tip, and soon, he's parting them open to accept your manhood in. He still has that uncomfortable look in his eyes, as he's not really used to this position, but doesn't seem to be complaining... In fact, he's putting an effort at pleasing you.";
	WaitLineBreak;
	say "     You can hear - and feel - him moaning as he gets a taste of your cock, then takes it as deep as he possibly can, rather too easily for someone who's used to being on top. Though there's no reason to question his skill, he's wiggling his tongue all over your prick, sucking your dick all the way in, then pulling out, coating your shaft completely with his saliva, as he squeezes and fondles your balls. He even tilts his head slightly as he goes in, making you feel the insides of his mouth rub against your shaft and sensitive tip, providing you all kinds of joyful sensations that you're glad to take from him. With one hand on your balls and the other on your shaft, he pulls out for a second, stroking your dick for you, and simply maintaing eyecontact in silence.";
	say "     Once he's done with the stroking, he returns his mouth to your cock, slowly with a tongue under the tip first, then letting it bury itself down his mouth as his crimson red eyes pierce through yours, only closing back when he has you ballsdeep inside his mouth. Continuing with the blowjob, he twirls and slips his tongue all over your length while applying just enough sucking force to have you feel yourself getting closer to the edge. Knowing how well he's performing, you don't see a need to guide him. Instead, you let him work your cock the way he thinks it would please you the best, and you're not disappointed so far. Giving him some encouraging words, he puts more and more effort into it, starting to suck your dick rather hungrily, more than anything. It almost looks like he's enjoying himself...";
	WaitLineBreak;
	say "     You really don't have to do anything else other than watching the big angel working your manhood, stroking and sucking you faster and faster, sliding one of his strong hands all over your legs and butt, moving his head back and forth as quick as he can, only to bring you closer and closer to cumming... And you don't resist for long with a mouth like his. Tongue wrapped around your shaft, rubbing against the entirety of your cock as he sucks on it harder and deeper, you find yourself being overtaken by a wave of pleasure that sends your load out right then. Shooting inside Araqiel's mouth, he only moans as he gets a taste of your man juice, swallowing drop after drop until the very last leaves your body.";
	say "     Then, he pulls out your dong with a loud pop, licking any leftovers that you may still be leaking right through your cum slit. Giving you an affectionate rubbing around your waist and abs, he smiles, looking into your eyes. 'That was... different. I liked it... It's actually fun bringing pleasure to someone, for a change. And... your dick tastes good.' he comments, planting a kiss on your tip and licking his lips. 'Really good.' He adds, while making a pause to observe your still half-hard member, slowly softening... 'If you want to do this again, I'm game... Anytime...!' You could certainly get used to have the big fallen angel at your disposal every time you wanted a blowjob, and he doesn't sound so opposed to the idea. Perhaps you're be able to tame his horny and dominant tendencies...";
	now lastfuck of Araqiel is turns;
	NPCSexAftermath Araqiel receives "OralCock" from Player;

to say CAraqielSpitroastEranyd:
	say "     Bringing the subject of some group action this time, the buff angel shows great interest, leaning forward in order to hear you attentively. 'Some group fun, you say? What do you have in mind?' he asks, and then you explain that you would like to share one of the prisoners with him, namely Eranyd, as you are in the mood to dominate someone with the master at that art, him. He throws a flattered chuckle. 'You know... That's why I like you! The idea of fucking an altered incubus together surely makes my dick hard!' he says, your eyes effectively being drawn to his enormous cock which begins to harden before you. 'Well, he's just by that cell, so... care to walk there together with me?' he says with a gentleman-like bow done in a playful manner, as he lets you walk ahead of him towards the Cell One.";
	say "     The cell's door is unlocked, so you are free to walk inside. Greeted by its luxurious decoration and crimson ambience, you see Eranyd lying down on the bed, coyly flipping over to face you both as you arrive, as naked as your angelical friend. There is a soft and sweet scent in the air, which seems to be some sort of perfume, probably used by the incubus. 'Oh, Master... I didn't see you coming...!' he says, meaning it towards Araqiel. 'Sure you didn't. Getting yourself all nice and smelling good, flipping around on that bed as soon as we arrive, looking all sexy and fuckable right as we land our eyes on you...' replies the angel, as his cock grows into a full erection. One could think that, perhaps, the handsome demon heard you talk outside... 'Yeah, I'm hard, now. Let's fuck.' says the big seraphim, eager to get started. 'You're going to be both fucking me? Oh, my...!' he exclaims, as you both approach his bed.";
	WaitLineBreak;
	say "     The incubus is totally eager to get started, and the big winged man doesn't make him wait too long. 'Though not here. There's a little structure back there that looks more fitting for your delicate ass, princess.' he says, grabbing the incubus and throwing him over the shoulder with spectacular ease. 'Oww, a little rough aren't we? What do you think I am, a sack of potatoes?!' the cuntboy complains, but Araqiel just rolls his eyes as he carries him over a rack back at the main dungeon area. He then ties him down, with his butt pushed backwards and his head brought to crotch level, as his hands are held tight within the contraption with his arms stretched to either side. You see the large angel slap one of Eranyd's buttocks, and the latter lets out a loud, lustful moan as his assigned master rubs his already moist curls with some of his thick fingers. 'I suppose you haven't missed your cock at all... Like being a girl, after all?' Araqiel asks, teasing the cuntboy by misgendering him. Though it angers the incubus, it also seems to turn him on. Naturally, the angel knows this.";
	say "     'You better take his mouth. He's a great cocksucker... And his pussy is more used to my dick, anyway. He can never get enough of it, always begging me for more... Isn't that right, little bitch?' he tells you, winking mischievously before turning to Eranyd. The cute devil makes no comment other than showing a very flustered face as you position yourself in front of him, and he immediately looks up at you with that suggestive gaze, already opening his mouth and showing off his skillful tongue. 'Mmmh... It seems you're packing something I like... That brute gets my pussy but it's you I'll make an effort to please.' he says... and then, he quivers painfully as Araqiel shoves his massive dong right inside him, causing the devil to let out a loud moan. You get the feeling the angel did that on purpose, as he draws a mischievous grin when he looks back at you.";
	WaitLineBreak;
	say "     Unable to wait any further, [if player is not naked]you whip out your cock[else]you grab your cock[end if] and rub it across the demon's face, whose joy is obvious as soon as your shaft comes in contact with his cheek. The boy is already trying to taste your meat, moaning each time Araqiel pounds him deeper and harder. 'You better get that dick in your mouth before mine starts feeling [italic type]too good[roman type] for you, cunty bitch.' he says, once more teasing Eranyd, who actually rushes to grab your [cock of player] shaft and shove it all in his mouth. After a good while worshipping your manhood, he then lets it hit his throat and lets you do the thrusting, in order to enjoy his time being double fucked by two horny and rock hard cocks. Naturally, you use this opportunity to start facefucking the cuntboy.";
	say "     With your own member already throbbing and pulsing inside his mouth, you hold his head and begin to pound him, slowly at first, while his nimble tongue caresses your penis in all the right ways. This is one skillful demon, able to make you feel so good with that tongue of his twirling and circling around your glans and shaft, just making you want to facefuck him harder once you get the chance. For now, you are merely warming up, while Araqiel is still taking it slow. Though, once he begins to pick up the pace, the incubus only moans with your dick in his mouth, his voice vibrating through your shaft as he attempts to withstand the seraphim's merciless pounding.";
	WaitLineBreak;
	say "     'Oh fuck yeah...' moans the angel, making the hell boy nearly collapse in lust, numb with pleasure. 'He really likes a good filling... make sure you fuck him as hard from that side.' he adds with a wink, and you are so ready to grab his head and start pounding his throat like there is no tomorrow. Following this, you begin to jerk your hips back and forth, feeling your length sliding past the incubus['] soft lips repeatedly as his tongue is now merely attempting to curl around your shaft... While he takes a huge cock in his hungry pussy, ballsdeep. His throat feels like just what it is, a tight and welcoming flesh tunnel clenching around your dick so good that it sends you shivers of pleasure bursting all through your body.";
	say "     You both keep pounding the incubus from both sides for a good while, the sounds of flesh on flesh clashing rhythmically, audible throughout the entire dungeon area. 'Fuck yes... look at who's gonna get a huge load from big sexy Araqiel here and his good friend for being such a good little girl...' says the seraphim to the cuntboy, who responds with only a lustful moan. All this time you have spent double tagging the demon has driven both of you close to the edge, so you start to slow down as you see yourself almost cumming. Panting, and also having slowed down his intense thrusting, Araqiel locks his gaze on yours with those crimson bedroom eyes of his as you both catch each other's pacing. He licks his lips, maintaining this eye contact with you while giving the devil a few additional pounds, then grins suggestively before he takes the initiative to speed up, as you do the same. The incubus['] throat just feels so good on your dick, and his tongue is so eagerly wiggling around your shaft that you can't help but to give in to the urge...";
	WaitLineBreak;
	say "     'Ready to get a belly full of angel babies, little cunty imp?' The big, muscular angel lets out a grunt of pleasure as he and you reach your climaxes. Burying his entire length in Eranyd's cunt, he cums with you, both cocks shooting all the spunk that has been long begging to leave right inside the incubus, hard. On your end, the cuntboy slurps all of your seed to the last drop, while he takes Araqiel's in his pussy, and by the looks of it, Eranyd shivering and squirming that much can only mean he also had a really good orgasm. 'Fuuuck, my balls sure grew heavy...!' the angel exclaims, as his load lasts for about a minute, until he finally pulls out of the cuntboy's abused vulva. A thick stream of creamy sperm follows Araqiel's cock before it falls down on the floor. Your dick is still getting licked off any traces of your load before you pull away.";
	say "     'What a fucking good release... I'm happy to have shared this with you, bud.' he says to you, as you help him free the incubus from the contraption. 'We can totally repeat this later, if you want! Just let me know. I'm sure our little bitch wouldn't mind.' Eranyd only takes this time to catch his breath, not even adding anything to the conversation. But looking at him, it is clear that he really enjoyed this as well.";
	NPCSexAftermath Eranyd receives "OralCock" from Player;
	NPCSexAftermath Eranyd receives "PussyFuck" from Araqiel;

Section 4 - CORRUPTED Events

instead of going down from Hellfire Corridor while (Resolution of Ambush The Purifier is 7 and Energy of Araqiel > 1): [Will only trigger after player has spoken with Araqiel about most subjects]
	say "     As you were on your way down the dungeons and go for the door's handle, you notice that it won't budge. It seems to have been locked for some reason, and since you don't have the keys, your best bet is to ask Toron what is going on... But before you decide to walk up the stairs, you heard some voices, very muffled and hard to understand from where you're standing. You manage to recognize one of them, an unmistakable deep and solid tone, a little graspy and tough, yet noble vocabulary... Undoubtedly, it is Mogdraz, and he has locked himself in with Araqiel. Now, one could ask what would they be doing which is so important that the door must be locked for that effect... Perhaps you could lean closer to have a listen of what they are saying? Or what they are actually [italic type]doing[roman type]... providing that it is some sort of activity, someone could wonder...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Eavesdrop on them.";
	say "     ([link]N[as]n[end link]) - Some things are better left alone.";
	if player consents:
		Linebreak;
		say "     If you lean your head over the door, perhaps you could hear them more clearly... Though this seems wrong, somehow. You feel like you're wronging Mogdraz by doing this, but... There is certainly more than meets the eye between these two. Carefully, you approach the door, place your hands over the wooden surface, then your ears, and very quietly, you listen...";
		WaitLineBreak;
		say "     '... You have risked too much in following me here, you know that.' - that's Mogdraz speaking. Fortunately, you can hear them well - 'I only needed more time before I could reestablish our link.' The angel follows up with 'Aw... Must we talk about this again? Here? What if your special guest decides to come visit me...?' His voice sounds lighter and clearer than Mogdraz's, so they can be distinguished well. 'Don't worry about [ObjectPro], [SubjectPro] is merely a special guest. I'm sure knowing about our deal would not sever any ties nor pose any problems.' Mogdraz confirmed they were talking about [italic type]you[roman type]... But why are they, in such manner? And what is this deal he is talking about?";
		say "     'Well, whatever you say. Although this job seems to be a tad bit annoying, at best! I would prefer to be roaming the streets, trying to gather some new acquisitions for your business, or crushing some rival demons into submission. Instead, I am locked in a dungeon, to serve the bottom bitches you throw at me! As if I could even be considered a decent Dungeon Master in these conditions, I cannot even go outside!' Araqiel continues to speak, clearly unhappy about his fate, or so it seems. 'At the very least, I would like permission to play with your special guest, and if [SubjectPro] ended up helping you so much, maybe you could allow [ObjectPro] to take me for a walk or so! I will get crazy if I remain here for too long...!'";
		WaitLineBreak;
		say "     Mogdraz replies after a while, the source of his voice having seemingly changed. He seems to be walking while talking. 'Well, of course you are free to [']play['] with my guest, and I might reconsider your situation once the dust settles. But, and I must emphasize this, remember you are under a contract. Which, by the way, it is what truly saved you from falling into Heaven's chains again. I told you, I would not enforce my will upon you, but if it has to come to that...' Now, Mogdraz is sounding very intimidating. What was that, Araqiel is bound by a contract? Does that mean Mogdraz owns Araqiel's soul...? From the very beginning, it seems. The demon lord finishes his sentence with a heavy tone. 'I will not hesitate.'";
		say "     The fallen angel urges to talk. 'Whoa, okay, no need for that. I'll behave... and do as you say. I'll run this dungeon for you and make everyone feel reeeally good under my care, satisfy their desires and all that, bringing you the income and the information, take care of the prisoners... I know the rules. I'm just asking for a bit of... comprehension, you know? You wouldn't like to be locked in a room forever, would you?! The void was driving me insane! And that is, by the way, why I decided to get out. I just... thought I would fare better.' The Demon Lord does not say anything but 'You have been warned.'. All this is before he walks towards the door, which you can clearly conclude by the sound of his closer footsteps.";
		say "     It is time for you to scramble out of here...";
		WaitLineBreak;
		say "     You make your way quietly up through the stairs before he can see you, and then return to the lounge, passing by the bar counter. However, a voice startles you as you are trying to catch your breath in relief of making it back undetected. 'Heard anything you shouldn't?' asked Toron as he was cleaning a glass. You made the mistake of looking at him in the eyes, and now he totally knows what you've done. You have a feeling you shouldn't lie to him... not that you were given a chance to do it. 'Don't worry. I'm sure Mogdraz would know you eventually figured it out on your own. Yes, Araqiel is bound to Master Mogdraz through a contract that liberates him from full obedience to the Heavens['] Lords. It is how it is. The choice was his.' With that, he nods as he dismisses you, allowing you to go without any further explanations.";
		say "     Now, those... were some revelations. There is definitely a lot more to know about the relationship between Mogdraz and Araqiel. Maybe Toron will know more, if he is willing to share?";
		now Resolution of Ambush the Purifier is 8;
	else:
		Linebreak;
		say "     Maybe you should not. They have their own affairs, and you have meddled in them way too much, already. You'd rather just enjoy the hospitality Mogdraz provided you, and whatever problems they may have, it should be their responsibility, not yours. At least, that is what you could be thinking right now, though you cannot shake away the feeling of uncertainty. What if there is more than meets the eye between these two...? Well, you guess you will never know, but maybe you should not even care.";
		say "     You head back to the lounge and wait. The dungeons should be free for now.";
		now Resolution of Ambush the Purifier is 49;
	move Player to Hellfire Lounge;

Section 5-1 - PURE Araqiel Talk

Section 5-2 - PURE Araqiel Sex

Araqiel ends here.
