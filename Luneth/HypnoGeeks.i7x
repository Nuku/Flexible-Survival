Version 1 of HypnoGeeks by Luneth begins here.
[ Version 1.0 - Original File by Wasp ]
[ Version 1.1 - reworked the original content for character development - Luneth]
[ Version 1.2 - added flashbacks if Player got zapped by hypno ray - Luneth]

"Adds a pair of geeks with a hypno ray to the campus area of Flexible Survival."

[ Resolution of HypnoGeeks                                             ]
[   0 = event not started yet                                          ]
[   1 = player saved Landon                                            ]
[  10 = player watched and followed, knowing where the mice live       ]
[  70 = player got zapped, flashback start                             ]
[  98 = player got involved, then ran                                  ]
[  99 = something happened, break off for the chain                    ]
[ 100 = player ignored things                                          ]

HG_Flashback_Turns is a number that varies. HG_Flashback_Turns is usually -1. [inactive]

Section 1 - Character Information

Part 1 - Arthur
[For Arthur information check Arthur file in Luneth folder.]

Part 2 - Reece
[For Reece information check Reece file in Luneth folder.]

Part 3 - Landon
[For Landon information check Landon file in Luneth folder.]

Section 2 - Intro Event

Table of GameEventIDs (continued)
Object	Name
HypnoGeeks	"HypnoGeeks"

HypnoGeeks is a situation.
The level of HypnoGeeks is 5. [minimum level to find the event]
The sarea of HypnoGeeks is "Campus".

when play begins: [flags for blocking this event]
	add HypnoGeeks to BadSpots of MaleList;
	add HypnoGeeks to BadSpots of FurryList;

Instead of resolving a HypnoGeeks:
	say "     Making your way through the campus grounds isn't as difficult as the rest of the city, but you make sure to keep your guard up. A couple of half-dressed stags stumble out of a nearby building, antlers locking together as they wrestle for dominance and move onto the front lawn. It's a situation that isn't exactly strange these days, but two bucks in rut is still something that you'd rather avoid. Crossing the street, you plan to keep moving forward, but you pause when you hear a loud yelp and a short scuffle. Something's going on around the back side of the building, and unless the collectively sixteen points of buck back there lose interest in each other long enough to hear what's going on, you're the only one that might be able to help.";
	LineBreak;
	say "     [bold type]Someone could be in serious danger. Do you want to investigate?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take a look and see if there's anything you can do to help.";
	say "     ([link]N[as]n[end link]) - Stay on the safe side. They're probably too far gone already.";
	if Player consents: [INVESTIGATE]
		LineBreak;
		say "     Crouching low and getting ready for a fight, you creep around the building into a back alley, where you find quite the scene. Two short brown mice stand leering over a muscled hunk of a golden retriever with a letterman jacket slumped against a dumpster. One of the mice is clothed in a graphic tee and baggy jeans while the other is wearing glasses and a cute little suit that has definitely seen better days. You stop, hesitating. Even two-on-one, this dog should have knocked these little guys senseless, but the mice don't even look winded. In fact, they look positively pumped, practically bouncing with excitement. The jock, however, appears a bit... spaced out, almost like he is lost in a daydream. You sneak in closer, hiding behind a broken-down car in order to hear their quiet murmurs.";
		say "     'Perfectus, you were right! Look, he's practically drooling! Oh, Arthur, I knew you had the brains for this operation!' the mouse on the left pushes up his glasses as he squeaks with giddiness to his companion. The second one proudly hoists a small box-shaped device with a grin. 'I told you it would work! Dad was a genius! Now... what shall we do with our old friend Landon, hmm?' Both of the rodents turn their attention back to their quarry, and with a dark chuckle, the one with the device hands it over to the spectacled mouse and crouches down in front of the golden retriever. Reaching out, he begins to shimmy down the retriever's pants and jockstrap, revealing the canine's sheath. With one hand kneading the dog's balls, he speaks softly enough that you have to crane out from your cover to hear, 'Yeah, that's a good boy... Just focus on how awesome your master is gonna make you feel...'";
		WaitLineBreak;
		say "     The retriever slowly nods in response, beginning to pant as his sheath swells up and his red prick slowly rises from its furry pouch. The standing mouse looks slightly uncomfortable at this turn of events as he wrings his paws together, 'Umm, Arthur, what are you doing? I thought that we were just going humiliate him...' From your hiding place, you can see that the mouse whose name you've learned is Arthur roll his eyes. 'Don't worry, Reece. We will, but you need to think about this in the long term. We could totally have our own personal servant. I mean, shouldn't this mutt have to answer for all of the shit he put you through?' This seems to give the other mouse, Reece, pause. 'Well I guess that makes sense, but we aren't going to actually hurt him or anything, right?'";
		say "     Arthur seems to be getting more and more frustrated with Reece's questions. 'Of course not, bro. It would be pretty stupid to damage our own property, don't ya think?' Judging by his mouth falling open, this comment shocks the spectacled mouse. 'Arthur... I can't believe that you would say something like that about Landon. I mean, I know that he has been giving me a hard time lately, but the two of you used to be best friends!' Without contemplating his brother's words for even a second, Arthur immediately responds with a relaxed, 'Things change.' A grin spreading over his features, he continues to molest the dazed dog while Reece begins to pace around the alley, apparently trying to figure out what to make of the situation.";
		WaitLineBreak;
		say "     Pretty soon though, your ears pick up some soft whispers from your vantage point, 'Time to play with that noob's morality crap.' With that, Arthur leans in close to Landon and starts to mutter something into his ear that you can't quite make out. After pulling away, the look on the goldie's muzzle changes, where before he appeared to have a vacant look on his face, now it is replaced with a huge grin. The one thing that hasn't changed though are his eyes. They still have that... empty look to them, almost like a doll's or maybe even a puppet's. 'Hey, squirt, what's the matter?' Landon's voice shocks Reece from his pacing, actually causing the small rodent to jump into the air. 'L-landon? How are you... ahem, you haven't called me that in years.'";
		say "     A strange sounding bark of laughter erupts from the canine's throat. 'I had always looked forward to seein['] ya whenever I visited your guys['] place. You were always so sweet, trying to make sure that I was taken care of.' This seems to have the opposite effect on the mouse than was intended, his whole body beginning to shake, and you can clearly see the rage behind his spectacles. 'Then why have you been making my life a living nightmare lately?!' The dog doesn't seem fazed at all by the sudden outburst. 'Ya know I saw ya, squirt. Whenever I stayed the night to hang out with your bro, I knew that you would watch me in the shower.' The anger that the smaller mouse had been exuding quickly dissipates, and Reece looks incredibly guilty for the moment.";
		WaitLineBreak;
		say "     Something seems off though about the way that Landon is talking, almost as if he was just repeating a script, his voice having no inflection to it. 'Did ya like watching me naked and wet, lil['] dude? How is this any different? Why don't you touch yourself like you used to whenever you watched me?' The spectacled mouse can't help but moan at this and gives in to lust, his own hand diving into his slacks. 'Landon, I couldn't help myself. That charming face and all of those muscles!' Arthur quickly grabs the retriever's bone and begins to excitedly jerk the dog off. Surprisingly, despite the apparent signs of him being lost in pleasure, the jock looks to be barely conscious, lazily staring into the distance, drool dripping from his panting muzzle. These mice must have drugged the poor retriever, which explains why he didn't do more damage to the much smaller rodents.";
		say "     With Arthur busy jerking off the muscled hunk and Reece busy jerking off himself, you could rush in there and take them both by surprise, freeing the hunk and allowing him to shake off whatever influence he is under. Or, thinking about it, if you stayed back and afterwards followed them back to their hideout, you might be able to obtain whatever it is that they are using for your own ends, not to mention that you'd get the benefit of watching these two nerds finish doing their thing.";
		LineBreak;
		say "     [bold type]Do you rescue the golden retriever jock, or let the nerdy mice continue and follow them afterwards?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Be a hero and save the dog!";
		say "     ([link]N[as]n[end link]) - Watch the show and follow the mice to their hole.";
		if Player consents: [SAVE]
			LineBreak;
			let GroupFightCounter be 0;
			now fightoutcome is 0; [reset]
			while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
				now inasituation is true; [suppresses the standard texts for the creature - be sure to set that up in the creature file too]
				challenge "Nerdy Mouse";
				increase GroupFightCounter by 1;
			now inasituation is false; [back to standard scenes]
			if fightoutcome < 20: [player won]
				say "     You stand triumphantly over the two mice, which isn't exactly saying much. [if HP of Player > MaxHP of Player / 2]For all of the effort that they pulled, you're not even winded. [end if]You step over their bodies and move to the retriever's side. Being careful not to get the jock's drool on you, you give him a few slaps on the face to wake him up. Thankfully, the big lug soon blinks a couple of times and sits up, startled and confused. Looking down to find his pants at his ankles and his dick hard, with you leaning over him, the muscular dog's brows draw together, and his lips pull back from his sharp teeth, so you throw your hands up in a consoling gesture and explain what happened. A couple more blinks and some glances to the unconscious mice, and he nods his head, believing your story. He does however seem startled when told the names of the mice. 'That's crazy, bro. Did you get a load of whatever they used to make me all dumb?'";
				say "     Resisting the urge to joke about 'making' him dumb, you quickly scan the scene of the fight. Meanwhile, Landon gets to his feet and wanders after you as if to help looking. It doesn't take long to spot the device that Reece was holding before your surprise attack. You walk over and pick it up, giving it a quick inspection. The black box features a cracked lens at one end and a small button keypad on the other. You push a couple of buttons to test it and are rewarded with a loud spark and plume of black smoke in your face. Yeah, you think that you aren't getting anything out of that. It must have broken in the fight, but at least the mice won't be able to use it either, once they finally wake up. However, it might come in handy to hold onto it. You never know if you could find a way to repair it.";
				WaitLineBreak;
				say "     'Killer, dude! Can't believe these dumb losers have stuff like this,' the canine you saved says as he steps up beside you and looks down at the broken device in your hands. He laughs and puts his arm around your shoulders. 'Who knows what they would've have done to me had you not showed up. My girl would've probably been really mad if they were making me screw other chicks.' He stops and gets a horrified look on his face, prompting you to ask what he's thinking. 'Aw, man, just... what if they wanted me to screw other bros? Do you think 'No Homo' counts when you're bein['] brainwashed or whatever? That is not what Landon does.' The jock shudders before he lets go of you. You make a mental note that Landon has yet to zip up his pants, nor has his raging erection subsided since your rescue, but you don't say anything, letting him continue, 'Anyways, bro, you helped me out, so I'll help you out. I got some supplies that I can share with ya to show my thanks.' He collects a bottle of water and a packet of food from a nearby dropped backpack that apparently is his, which you graciously accept.";
				say "     Landon stands close to you as you pack the reward for his rescue away. You don't see when the mice scamper off, but sure enough, as soon as you lift your head, the nerds have vanished. Your saved muscled hunk also starts to walk off, but he turns around and gives you a wink. 'Maybe I'll see you around, bro?' You nod, and have to wonder if maybe that little box did more damage than he realizes. Either way, you pack the supplies away and make your way back onto the road where you entered. Out of curiosity, you look back to where those stags were fighting before, but all you see is a single cum-stained varsity jacket, lying forgotten on the lawn. Must have gotten hot and heavy. You shrug and continue onwards, happy that you could help at least one person out in this crazy mouse-zap-dog world.";
				LineBreak;
				say "[bold type]You gain 1 food![roman type][line break]";
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				now Stamina of Landon is 1;
				increase carried of defective device by 1;
				increase carried of food by 1;
				increase carried of water bottle by 1;
				now Resolution of HypnoGeeks is 1; [saved the dog, saved the world]
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     With one last blow, you crumple backwards next to the very retriever that you meant to save. You look up and see the bare-assed hunk, his pants still at his ankles ever since you interrupted the nerds['] fun. Refusing to become their next plaything, you struggle to push yourself up, but pause when you come face to face with the hunk's rock hard cock. You're surprised to find it still holding strong and leaking precum profusely while you were fighting for his honor. Taking advantage of your distraction, a small foot plants into your battered side, and, without any energy to resist, you collapse on your side, staring up at the winners of the fight. Looking up into Arthur's face, the mouse says, 'Look at this little twerp! Did you actually think that you could beat [']me[']? I'm way too high a level for some crappy noob like you to beat!' Reece picks this moment to also pipe up, 'Guess we're superior to them in mind [italic type]and[roman type] in body!'";
				say "     That gets a laugh out of his companion, but before you can come up with a witty retort, the other one, Arthur, hushes you. There's a glint of unbridled lust and maybe something worse, unhinged even, in his eyes as the geek leans in close. 'Don't worry, you'll be nice and obedient like our other pet over here.' Spotting a moment to get in a jab, you spit in the mouse's face, blood and saliva globbing into his short whiskers. Arthur's smile is wiped from his face and replaced with a cruel smirk as he straightens back up and looks to the mouse with the black box. 'Reese, hit this loser with the ray. I'm tired of it being able to think.' With a worried expression on his snout, the spectacled mouse quickly nods to Arthur and points the box at you, allowing you to see the lens rotating as it focuses on your defiant sneer, and with a --";
				LineBreak;
				LineBreak;
				say "     [bold type][italic type]FLASH![roman type]";
				WaitLineBreak;
				say "     ...Your eyes flutter open. That... was odd. You aren't sure what happened, but you're lying, groggily, on some grassy field just outside of the dorms, a thick string of drool connecting the corner of your mouth to the ground below. Wiping it off with the back of your hand, you stand up and that's when you notice a wet sensation between your [if Player is female]thighs[else]buttocks[end if]. Looking around and seeing no immediate witnesses, you reach back and feel around, encountering something sticky leaking out of your hole. Bringing your hand around to look at some of the goop, you see its creamy white appearance. Even as your mind reels to remember how that cum got there, your hand subconsciously keeps moving, bringing the finger closer and closer to your face. As soon as the rich, musky smell of semen hits your nostrils, you can't help but pop it into your mouth, savoring the mousey taste. Then you freeze. What the hell are you doing? Thinking right now is like swimming through a murky jello. Remembering how exposed you are, you quickly grab your gear and do your best to scurry back to safety.";
				now HG_Flashback_Turns is a random number between 5 and 10;
				now Resolution of HypnoGeeks is 70; [player got zonked, yo]
				if Player is naked:
					add "PlayerHypnoIntro_Naked" to Traits of Reese;
				else:
					add "PlayerHypnoIntro_Clothed" to Traits of Reese;
			else if fightoutcome is 30: [fled]
				say "     You just cannot deal with this right now, so after feinting to the side, you make your break from the two mice and escape back down the road where you came from, without looking back. Abandoning the golden retriever jock to his fate with those two mice may seem a bit cold, but who knows? Maybe the next time you come across a dude in distress, you'll be able to actually help. For now, however, you keep your sanity to fight another day.";
				now Resolution of HypnoGeeks is 98; [player ran off, mice still armed with hypno ray]
		else: [FOLLOW]
			LineBreak;
			say "     Deciding to let this play out for a better deal, you sit back and watch as the mice continue to play with their prize. Unzipping your pants, you get to work taking care of your own [if Player is male]dick[else if Player is female]vagina[else]crotch[end if]. The one named Arthur speeds up his manhandling of the jock, paying special attention to his balls and his growing knot. The spaced-out retriever's panting quickly becomes more rapid, his thick dog paws curling in rapture as his body shudders with lust and, of course, whatever is coursing through his system. 'Yeah, that's it,' Arthur leans in to murmur into his victim's ear, forcing you to perk your ears to catch the words. 'Good boys can't help but feel this way around their mousey master, isn't that right?'";
			say "     You're distracted by a moan, which turns out to be the other mouse, his hand quickly pumping in his own slacks as he watches the scene. Arthur's low droning continues in the background as you focus on the one hanging back closer to you. Just before you turn your attention back to watching as the dog unwittingly becomes these mice's slut, you stop when you notice the masturbating nerd pull up the box he's been holding, pointing it at the jock. As he pushes a button, a flash erupts from the other end. Pausing your own self-help, you quickly look to Arthur and the dog, trying to see what exactly the device did. You're not sure if it was the flash or simply Arthur knowing his way around a dog's knot, but all you see is the retriever finally bursting as thick ropes of canine cum pulse from his lengthy prick.";
			WaitLineBreak;
			say "     Now that the show is over, you quickly finish up your business, [if Player is male]splattering your own cum onto the ground in front of you[else if Player is female]splattering your own juices onto the ground in front of you[else]bringing yourself to your own orgasm[end if], biting your finger to avoid making any sound. Spent, you take a moment to recover, shaking your head as the adrenaline dies down. A scoff breaks you from your thoughts, and you look up in time to watch Arthur laugh at his partner, 'You just freaking creamed your own pants, bro! I can't believe it!' Reece blushes a deep shade of red underneath his short fur.";
			say "     'Wha- We're... out in the middle of the alley. I didn't want to be caught with my pants down. Literally.' Arthur chuckles, a smug grin on his muzzle. 'Look, man, you could have [italic type]literally[roman type] gone on the ground just like this sack of meat over here, but you went in your own pants. I think that you just wanted to smell like yourself.' Reece shakes his head, stammering as he adjusts his glasses, 'J-Just get him up so we can take him back to the dorms, okay?' Getting ready to move, you watch as the two mice spend some time just trying to figure out how to pick up the heavy jock in the first place, before Arthur finally decides to get the bright idea of stealing a wheelbarrow from the campus gardening club and rolling the still-drooling mutt into it. You shake your head in disbelief. While Arthur seems to be in charge, he definitely didn't think this through properly.";
			WaitLineBreak;
			say "     Eventually, the two mice are ready to move on, and as you follow them out of the alley and toward their destination, you listen to the verbal jabs Arthur hurls at Reece as well as forcing the timid mouse to push wheelbarrow. While you know they are brothers, the things that Arthurs says makes it apparent that this is at the very least an abusive relationship or possibly just the way they have always been. Either way, once you arrive behind what you think is the building for the male dorms, you're forced to hang back as they push the hunk through the back door. You spend some time thinking of how exactly you're going to find out which room they went to, when fortune strikes, and you see none other than Arthur himself opening the curtains of one of the windows on the third floor. Quickly counting along the back of the building, you think that you've figured out which dorm is theirs, or at the very least, which one they're keeping the retriever in. Resolving to come back once you've prepared yourself, you head back out into the campus proper. Those mice won't know what hit them.";
			now Resolution of HypnoGeeks is 10; [player followed them and knows where they live]
	else: [LEAVE]
		LineBreak;
		say "     Sure enough, a couple of seconds later, and the only noises you hear are the wet slaps of mating deer across the street behind you. Shaking your head, you turn around just in time to watch as the buck that ended up on the bottom of the wrestling match loses his antlers and gains new breasts. Looks like that particular doe will be joining the women's division. You continue onwards, thinking about how much has changed since all of this went down.";
		now Resolution of HypnoGeeks is 100; [player ignored them]
	now HypnoGeeks is resolved;

Section 3 - Flashback Events

an everyturn rule:
	if HG_Flashback_Turns > 0:
		decrease HG_Flashback_Turns by 1;
	else if HG_Flashback_Turns is 0:
		if Resolution of HypnoGeeks is 70: [player got zapped]
			say "     As you continue to make your way through the city, your head erupts in stinging pain from one moment to the next. You grab the sides of your skull in an effort to dull the throbbing that you feel, however rather than the pain dulling, instead it begins to get worse. From behind your scrunched up eyelids, you see flashes of images. They go by far too fast for you to track them, and all you can clearly see is two brown mice laughing, but you honestly can't remember where you could have seen them. Is your mind trying to remember something, or could you simply be starting to lose it after all of your experiences inside this city?";
			LineBreak;
			say "     [bold type]Do you want to attempt to remember whatever you may have forgotten?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Yes, if you have forgotten something then it should be faced head on.";
			say "     ([link]N[as]n[end link]) - No, whatever this is, it's not real and should be suppressed.";
			if Player consents: [remember it]
				say "     Deciding that it's better to try and remember, you close your eyes and focus in an attempt to bring the memories forward. While everything does go by as if it were on fast forward, you can see an incredibly buff anthro golden retriever laying against a wall, his eyes looking seriously messed up, almost as if he's drunk. From behind your own eyes, you see yourself lunge forward, initiating a fight with the two brown mice, only to be knocked to the floor. The rodents then look down at you laying on the ground and then raise some sort of device, aiming it directly at you.";
				LineBreak;
				say "     [bold type][italic type]FLASH![roman type]";
				say "     While still wrapped within the memory, time starts to slow down all around you. Whatever that bright light was, it must be the catalyst for whatever it is that you may have forgotten. Still trapped inside of your own mind, you can't move any part of your body, almost as if they had somehow paralyzed you. The small brown mice watch you intently and finally one of them begins to casually walk up to you, however the mouse still holding the device seems wary. 'Wait, Arthur, are you sure that it's safe? I mean Landon was pretty stupid already, so it was easier to break him, but we don't really know anything about this one.' The one you now know to be Arthur turns his head to look back at the mouse wearing glasses. 'Don't worry so much, Reese. Compared to us, they're all pretty much neanderthals, right?'";
				say "     As you watch the two rodents interact, you are now able to make a few assumptions about their dynamic. Arthur seems to be the one that is in charge and has the braver personality while Reese on the other hand appears to be the complete opposite. Just going by appearances, the only way that you can tell the difference between the two mice is by what they are wearing. Reese has a slightly worn little suit and glasses that keep falling down his snout, and Arthur has a graphic tee showcasing some sort of giant robot destroying a city with baggy jeans covering his lower half. While you attempt to take in every detail that you can, you have to keep telling yourself that none of this is really happening. Instead of being like a normal memory, all of this feels as if you're really here, even up to the scents and the feel of the breeze on your face.";
				WaitLineBreak;
				say "     Finally, Reese gives a tentative nod in response to Arthur's question while pushing his thick framed glasses back up his snout. 'I guess that's true, just... be careful, okay?' As soon as Arthur's face turns back towards you, he rolls his eyes in annoyance, before a sadistic smile forms on his lips. ";
				if "PlayerHypnoIntro_Naked" is listed in Traits of Reese: [player was naked in the first meeting]
					say "Sauntering over to you, Arthur allows his clawed hand to graze across your bare arm. 'The best part about you coming along is that you're already naked. No unnecessary wait time on undressing needed, haha!' While Arthur looks thrilled and takes in every inch of your body that he can, Reece looks slightly embarrassed and strains to look you in the eyes rather than indulging in your form. 'Not bad, but still could use some work... which we'll do on you soon. Yeah you're gonna be perfect! Now, why don't you turn around and bend over and show off that ass for your new master?' The last bit is whispered, almost as if Arthur didn't want the other mouse to overhear.";
				else if "PlayerHypnoIntro_Clothed" is listed in Traits of Reese: [player was dressed in the first meeting]
					say "Sauntering over to you, Arthur allows his clawed hand to graze across the fabric of your clothes. 'Alright, slave, take this stuff off. I shouldn't have to be bothered undressing you myself, now should I?' Having no control over your own body, you slowly begin to remove your clothing piece by piece. You [Selfstripcrotch]. Eventually you are naked and on full display for both of the brown mice. While Arthur looks thrilled and takes in every inch of your body that he can, Reece looks slightly embarrassed and strains to look you in the eyes rather than indulging in your form. 'Not bad, but still could use some work... which we'll do on you soon. Yeah you're gonna be perfect! Now, why don't you turn around and bend over and show off that ass for your new master?' The last bit is whispered, almost as if Arthur didn't want the other mouse to overhear.";
				LineBreak;
				say "     [bold type][italic type]FLASH![roman type]";
				if Player is naked: [in the present]
					say "     Without warning, you are suddenly ripped out of the memory. Still feeling naked and embarrassed, you quickly check yourself out. While still naked, you can't feel Arthur's tiny claws on your body anymore. Calming down, you attempt to come to grips with what you had just experienced. Taking a deep breath, you decide that there is no point in freaking out over what happened. The only thing to do is wait and see if any other memories will crop up.";
				else: [clothed in the present]
					say "     Without warning, you are suddenly ripped out of the memory. Still feeling naked and embarrassed, you quickly check yourself out, making sure that you're still clothed. Calming down, you attempt to come to grips with what you had just experienced. Taking a deep breath, you decide that there is no point in freaking out over what happened. The only thing to do is wait and see if any other memories will crop up.";
				SanLoss 5;
				now Resolution of HypnoGeeks is 71; [first flashback remembered]
				now HG_Flashback_Turns is a random number between 5 and 10;
			else: [suppress it]
				say "     Holding your head even tighter, you attempt to fight off whatever it is trying to enter your thoughts. As a last ditch effort, you slap yourself across the face in the hopes that it will pull you out of the moment, and thankfully, it does. Shaking your head quickly, you straighten your back and decide to try and forget whatever you had just experienced. No matter what it was, all it could have done is further damage your psyche.";
				SanBoost 15;
				now Resolution of HypnoGeeks is 99; [something happened, player doesn't want to know, break off for the chain]
		else if Resolution of HypnoGeeks is 71: [second flashback time]
			say "     As you continue to make your way through the city, your head suddenly erupts in an all too familiar burst of pain. You grab the sides of your skull in an effort to dull the throbbing that you feel, however rather than the pain fading, instead it begins to get worse.";
			LineBreak;
			say "     [bold type][italic type]FLASH![roman type]";
			say "     Opening your eyes, you see Arthur look down at you with a manic smile on his face. 'Ready to play a fun little game, hypnoslut?' As quickly as the mouse's face enters your vision, his image begins to fade back into the real world. Once again, your memories are attempting to resurface, but the real question is, [italic type]do you want them to[roman type]?";
			LineBreak;
			say "     [bold type]Do you want to find out what happened next with the two mice?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Yes, you deserve to know exactly what happened to you!";
			say "     ([link]N[as]n[end link]) - No, after what you observed before, you don't want any part of those memories!";
			if Player consents: [remember it]
				say "     Deciding to face the truth, the world almost seems to melt away, leaving the appearance of everything around you looking like a bleeding watercolor painting.";
				LineBreak;
				say "     [bold type][italic type]FLASH![roman type]";
				say "     Blinking the glare from the light out of your eyes, the first thing you see is Arthur's smile and just beyond him, Reece's curious gaze. The mouse in the graphic tee begins to walk in circles around your bent over form, chuckling to himself as he strokes your head as if you're some sort of pet. It's the spectacled mouse that speaks up first, 'Arthur, what are you doing? Shouldn't we just grab Landon and go? I mean, they don't have anything to do with this!' With his back still to his brother, Arthur rolls his eyes in agitation, but quickly plasters a fake smile on his snout. 'Bro, this is one of that mutt's friends that were making fun of you! I thought that you wanted revenge for being bullied, and here you are wanting to let one of them go?'";
				say "     Reece stops for a moment, apparently in thought. 'Well, I suppose that makes sense, but I'm just not sure...' The dominate mouse then steps away from you with a dark chuckle and walks over to his brother. Pulling a water bottle out of the back pocket of his baggy jeans, Arthur offers it to Reece. 'Here, why don't you take a drink? You know that you always think clearer when hydrated.' The suited rodent smiles at the other, thanking him before swiftly chugging the water bottle. At first, nothing happens, but eventually, Reece takes off his glasses and pinches the bridge of his snout. 'Thank you, Arthur. I think that I needed that. I can already feel one of my headaches creeping up.'";
				WaitLineBreak;
				say "     The geeky mouse puts his arm around his nerdy brother's shoulder. 'Of course, bro. You know that I will always look out for you, right?' Not sure what exactly is going on at the moment, you are shocked out of your thoughts by the sound of a belch coming from the second, usually prim and proper mouse. Looking at Reece, it appears as if he is slightly intoxicated, and he lets out a bark of seemingly random laughter. 'Alright, bro, let's fuck this slut!' Something is definitely wrong, not just with the way Reece is acting, but also by his speech. He almost seems like a completely different person than the meek being you have seen so far. Arthur chuckles maniacally. 'Only if you're sure, buddy. I mean, I wouldn't want[']cha to do anything you would regret later.'";
				say "     The two mice walk up to you, Reece with an odd swagger to his steps. 'So, Reece, what are you in the mood for? Head or tails?' The suited mouse shakes his head side to a side a bit. 'Does it matter? We can always just switch if we get bored, right, bro?' Whatever was in that bottle that Arthur gave his brother, it either lowered his intelligence, or just majorly reduced his inhibitions. The dominant mouse walks up to your backside and roughly smacks your backside, causing it to jiggle a bit from the impact. 'I will be taking this end first. You use its mouth first, bro!' Reece, while looking a bit stoned, hobbles over to your face and begins to undo his dress pants. 'Wait, Reece!' For a moment, you actual think that Arthur is going to call this whole messed up thing off, but instead he says to you, 'I want you to beg me to stop, plead with everything you have for me to let you go!'";
				WaitLineBreak;
				say "     Your mind is reeling from this turn of events, but your body acts on command. 'Don't do this! I'm begging you, please let me go. I promise that I will never bother you again!' The words are in your voice, but there is an underlying hollow effect. Without warning or prep, Arthur slams balls deep inside of your [if Player is female]pussy[else]ass[end if]. You want to yell out, but all you can do is lay there like a doll that is waiting for someone to pull their strings as your hole is stretched wide. 'Now I want you to tell me how great you feel and how much you love my cock, ya little slut!' Inside of your mind, you're screaming and cursing the twisted vermin, but unfortunately, your mouth has other plans. 'I feel so good! Please don't stop pounding my [if Player is female]pussy[else]ass[end if]! This slut is in love with your perfect cock!'";
				say "     Arthur groans at your response. 'Alright, Reece, try and choke this bitch with your lil['] dick!' The mouse in front of your mouth stops for a moment, and you can only assume that he reacting to what his brother just said. 'Fuck you, Arthur! We both know that my dick's bigger than the one you're wielding, haha.' Going by how brutal the one behind you begins to pummel your insides, he is none to pleased by what he was just told, but you hardly have time to think on that before a rock-hard cock is rammed down your throat. While you don't have any control over your body, your body still has natural functions, and your eyes begin to water. Tears begin to fall down your face from the assault that you're receiving from both ends.";
				WaitLineBreak;
				say "     This goes on for a while, your body being abused by both murids with no end in sight. Eventually, the brothers switch places, laughing and making degrading comments towards you. Arthur finishes first, filling your mouth with his salty load before pulling his prick out of your stretched lips and pushing your head to the ground. From this angle, you have a clear view of the golden retriever. He's just sitting there with his tongue lolling out of his mouth, a vacant expression on his muzzle. With one final slam, Reece begins to release his seed deep inside of your [if Player is female]pussy[else]ass[end if], before also pulling out. You are left there feeling dirty and used, and Arthur comes over to grab you by the jaw, forcing you to look him in the eye. 'Oh, have I got plans for you, bitch...'";
				LineBreak;
				say "     [bold type][italic type]FLASH![roman type]";
				say "     Without warning, you are suddenly ripped out of the memory. Still feeling naked and embarrassed, you quickly check yourself out. You can't feel the brothers' cum anywhere on your body anymore. Calming down, you attempt to come to grips with what you had just experienced. Taking a deep breath, you decide that there is no point in freaking out over what happened. The only thing to do is wait and see if any other memories will crop up.";
				SanLoss 5;
				now Resolution of HypnoGeeks is 72; [second flashback remembered]
				now HG_Flashback_Turns is a random number between 5 and 10;
			else: [suppress it]
				say "     Holding your head even tighter, you attempt to fight off any thoughts involving the two mice. As a last ditch effort, you slap yourself across the face in the hopes that it will pull you out of the moment, and thankfully, it does. Shaking your head quickly, you straighten your back and decide to try and forget all about whatever it is that those weirdos did to you.";
				SanBoost 15;
				now Resolution of HypnoGeeks is 99; [something happened, player doesn't want to know, break off for the chain]
		else if Resolution of HypnoGeeks is 72: [third time]
			say "     As you continue to make your way through the city, out of nowhere your head erupts in an all too familiar burst of pain. You grab the sides of your skull in an effort to dull the throbbing that you feel, however rather than the pain fading, instead it begins to get worse.";
			LineBreak;
			say "     [bold type][italic type]FLASH![roman type]";
			say "     Opening your eyes, you're face to face with the geeky mouse Arthur. 'Oh, have I got plans for you, bitch...' Watching as his golden eyes begin to dilate, a shudder of dread goes through your whole body. As the mouse's face enters your vision, his image doesn't fade like it has before. Perhaps your mind has begun to accept the fact that you want to know the truth and no longer feels the need to protect you.";
			WaitLineBreak;
			say "     Arthur lets your head fall to the ground as he gets up. Walking back over to where the machine that you were zapped with was set down, Arthur picks it up, and with a swagger in his step, he comes back toward you. From behind, you're able to hear what you can only assume is Reece vomiting. 'Arthur, I don't feel so good. Are you sure that water was okay?' A snicker escapes Arthur's throat. 'Yeah, the water was fine, bro. You prolly just ate something that didn't agree with ya. Why don't you go puke somewhere else? The sight of you right now is gonna make [']me['] sick!' After a few moments, the mouse in front of you grabs hold of your cum-stained face, forcing you to look him in the eye once more. With a mocking smile on his snout, he points the device at your face once more.";
			LineBreak;
			say "     [bold type][italic type]FLASH![roman type]";
			LineBreak;
			say "     [bold type][italic type]FLASH![roman type]";
			WaitLineBreak;
			say "     After the two quick bursts of light, your vision is starting to feel blurred, almost as if your equilibrium is just completely shot. 'Alright, why don't we have a lil['] chat now that my lame-ass brother isn't around, huh? The fact of the matter is that I've decided that I'm going to be the king of this city. I mean, it shouldn't be that hard. If you saw how good I am at [']FlexCity['], you would know that I was born for this, haha. But anyway, back on point, every king needs serfs that will serve under him, and I'm thinking that you would be a decent match-up for me.' As the geeky mouse says this, he starts to smear the cum further, making sure that your whole face is covered.";
			say "     'Now I'm gonna tell you how to find me again, but you will only remember it when I think that you would be ready to be of use.' Leaning in close, you can hear Arthur whispering something to you, but it sounds garbled, like how things sound when you're underwater. 'There, that should do it. Now you just have to remember two numbers, two and three. I know that prolly seems like a lot of work for someone as inferior as you, but trust me, you can do it, haha. Oh, and one more thing, don't you even dare try to tell my brother about any little secrets you think that you may have learned. I mean, accidents can happen to anyone, ya'know.' Arthur gives you a simple wink before everything turns black.";
			move Player to Tenvale College Male Dorms;
			say "     As the memory fades, you actually find yourself laying on the ground in the college dormitory without any memory how you got here. You look around and see nothing but closed doors... each with a number on them.";
			SanLoss 15;
			now Resolution of HypnoGeeks is 73; [third flashback remembered]

Section 4 - Items

Table of Game Objects (continued)
name	desc	weight	object
"defective device"	"The strange device that those weird mice had, unfortunately now damaged. While for the most part it appears to be a black camera of some sort, it has a strange wheel around the lens that has wires and crystals in a spiral pattern. Upon closer inspection, the crystals are cracked and the wires that are weaved into them and the camera portion are all burnt. You can't say for sure what this devices purpose really was, but if you could find a way to repair it then you might get some answers."	1	defective device

the scent of defective device is "The device smells like burnt metal.".

defective device is a grab object. defective device is not temporary.
the usedesc of defective device is "[DefectiveDeviceUse]";

to say DefectiveDeviceUse:
		say "     You attempt to make use of the device, pushing some buttons. Sadly, the only result is a bit of a burned smell and a strange sound from inside the box.";

Section 5 - Notes&Comments
[WARNING SPOILERS!]


[Expansion Plans:

Arthur- Expand on the sadistic gamer who wants the player all to themselves. The older brother of the two, but he is not nearly as "smart" as his younger brother Reece, thus he needs him for tech stuff that comes with the hypno ray. I would like to show exactly how dark he can be when his brother isn't around. The route I'm thinking is the "gamer with a god complex". Basically he believes that everyone and everything should bow down and serve him in any way he sees fit. He will also serve as the more brutal dom, meaning he will enjoy doing whatever he wants to the player and seeing them as nothing more than a toy and property.

Reece- Expand on the shy nerd who just wants to make a stand. The younger brother of the two, he is the "brains" of the team, while not nearly as cruel and power hungry as his brother, he does desire to be a dominant male. For the most part he doesn't actually realize how twisted his brother is. He will also serve as the more chivalrous dom, meaning that he has a dominant heart, but has never had the opportunity to let it loose. The player will have the option to help him assert himself. His form of dominance would be more akin to a knight saving the prince/princess and claiming them, with the intent of pushing them over the edge and getting off on blowing the other persons mind.

Landon- Expand on the childhood friend of Arthur. The two of them lost touch long ago, that is until he decided to make bullying Reece one of his favorite pastimes. The very definition of a "dumb jock", Landon's only concern is for himself and he's far from being a true victim.

Routes:

Arthur- The player will have to deal with giving into their new master, or possibly fighting back to either enslave him or merely end his "reign".

Reece- The player will have to decide whether to get close to Reece or push him away, if you get close then prove to be a trusted friend or a loving partner.

Landon- The player will have to decide whether they should try to free him or not, you will also have to decide how you're relationship with him should progress.

These are some simple route combination ideas. Keep in mind these are the basic ideas, meaning that there will be more deciding factors including feats and choices. The characters will also act different depending on the various roles, for example, Arthur will overall act different in hypnoslut than he will in fallen savior since he longer has to keep up his image with Reece and so on.

Hypnoslut- The player basically stays as a hypno toy for the two brothers, but is owned by Arthur. A good way to look at this combination would be as follows from the above list. The player gave in to Arthur, did not romance/friendzone Reece, and did not bother to connect with Landon or free him.

Fallen Savior- Reece attempts to free the player, but ends up being hypnotized and enslaved by Arthur as well. A good way to look at this combination would be as follows from the above list. The player gave in to Arthur, did romance/friendzone Reece, and did not bother to connect with Landon or free him.

Big Mistake- The player ends up trying to free Landon from the brothers way to early, but the favor is returned by being enslaved along with the brothers by Landon who now wants to be a king. A good way to look at this combination would be as follows from the above list. The player gave in to Arthur, did not romance/friendzone Reece, and did not bother to connect with Landon but did free him.

Large and in charge- the player romances/friendzones Reece and in secret hypnotizes both Arthur and Landon into their toys. A good way to look at this combination would be as follows from the above list. The player did not give in to Arthur, did romance/friendzone Reece, and did connect with Landon but didn't free him.

Hypnoking- Player turns all three into hypnoslaves. A good way to look at this combination would be as follows from the above list. The player did not give in to Arthur, did not romance/friendzone Reece, and did not bother to connect with Landon or free him.

]



HypnoGeeks ends here.
