Version 1 of Zdravko by Gherod begins here.

"Adds Zdravko, an anthro bull related to the Milking Facility questline."

[Version 1 - Created File]

[Stats]
[Strength]
[ - Used for intro loyalty conditions (0, 1)]
[Dexterity]
[ - Used for keycard conditions (0, 1)]

Section 1 - Intro Sequence

Table of GameEventIDs (continued)
Object	Name
ZdravkoIntro	"ZdravkoIntro"

ZdravkoIntro is a situation.
ResolveFunction of ZdravkoIntro is "". Sarea of ZdravkoIntro is "Nowhere".

instead of going outside from Milking Facility Factory while ( milkingFactoryProductivityUp is 1 and milkingFactorySuitUpgraded is 1 and Resolution of ZdravkoIntro is 0 ):
	say "     You are walking out of the Milking Facility through the main entrance door and about to consider what your next destination will be... But you sense a presence coming towards you, by the approaching sounds of heavy footsteps only augmented by the otherwise surrounding silence. In an instinct, you backtrack towards the building and keep your card in hand, just in case you need a place to ensure your safety. Now, you glance around and towards the source of such sounds, and eventually spot a relatively large figure walking in your direction. At first, they do not seem to have noticed you, however that is soon proven false. This bulky shape looks dangerous for its size, and a closer look reveals something worrying... It is a transformed person, a male anthropomorphic horned bovine who, when he spots you, shows a not so happy expression.";
	say "     This bull of a man appears to be a surviving scavenger, wearing only a black tank top and pair of jeans, leaving his hooves exposed to the ground. He seems to be carrying a rather large backpack, as well. 'Hey! What the hell are you doing in there?! Where did you get a card?!' he shouts, which... is not the worst thing it could happen. No sex-crazed insane creature would ask you such a thing in that tone or expression, and he is not charging at you with suggestive intent, but he looks pissed. Right after he asks this, he really picks up the pace and starts walking towards you very fast... Well, he is still not charging at you, but you are going to be in trouble if you do not explain yourself... This guy is big.";
	Linebreak;
	say "     [bold type]There must be something you can say to calm him down...?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Tell him you just got here with the card and were just exploring.";
	say "     [link](2)[as]2[end link] - Inform him that you went inside, saw what is in there, and tried to mess with the console to find out more.";
	say "     [link](3)[as]3[end link] - Explain that you found this facility and admit you were using it for your own interests.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to pick the first option, [link]2[end link] to pick the second or [link]3[end link] to pick the third, whichever applies to your case.";
	if calcnumber is 1:
		LineBreak;
		say "     Given how really angry he sounds, you prefer to quickly dismiss any responsibility by stating that you really just got here, very recently. However... You probably forgot that you have the card in your hand, the door is unlocked, you came from the inside and, indeed, have messed with the console... He is not easily fooled. 'Did you really think I would believe that?! You've got the card in your hand, and you just came from the building! I saw you opening the door and walking outside!' he angrily yells, with a really intimidatingly deep voice that feels capable of shaking your soul. 'Have you touched the console? Have you done anything that machine asked of you?!' You cannot really lie, here. As soon as he enters the facility, he will be able to tell that you have interacted with the console, so your only option is to admit that you have messed with it. He then asks you something in almost a whisper. 'Did you... authorize the last order?' Of course, you let him know that you have not, and he seems... somewhat relieved.";
		now Loyalty of Zdravko is 0;
	else if calcnumber is 2:
		LineBreak;
		say "     Given how really angry he sounds, you should probably give him a very complete explanation of what you did there, so you tell the tale from the beginning. However, as you mention that you have interacted with the console, his face goes red with fury! He growls, pins you against the door and looks directly in your eyes, and just when you were expecting him to shout with that intimidatingly deep voice... he asks you something in almost a whisper. 'Did you... Did you do anything that machine asked of you?' Somehow, this is even more scary, but you really cannot lie, here. As soon as he enters the facility, he will be able to tell that you have interacted with the console, so your only option is to admit that you have messed with it. He then asks you something else. 'Did you... authorize the last order?' Of course, you let him know that you have not, and he lets go off you at that point.";
		now Loyalty of Zdravko is 1;
	else if calcnumber is 3:
		LineBreak;
		say "     He is already mad at you, so what do you have to lose? You tell him that you have found this facility, found the card in the underground levels of Trevor Labs, entered and found the whole apparatus really interesting, so much in fact that you decided to claim the place and use it for your own needs... And now, you have got the bull [italic type]really[roman type] angry at you. Growling, he pins you against the door and looks directly in your eyes, and and just when you were expecting him to shout with that intimidatingly deep voice... he asks you something in almost a whisper. 'Even if you did mess with the damned console, tell me... Did you authorize the last order?' Of course, you let him know that you have not, and he lets go off you at that point.";
		now Loyalty of Zdravko is -1;
	WaitLineBreak;
	say "     With things more calm now, the bull takes a breath, a step back and crosses his arms. You get the feeling he is not exactly done with you, but at least he does not look as hostile. 'That last one is a trap. The AI grew more and more apt to trick others into giving themselves to the machine it operates. It shows signs of sentience, but tries to look just like any other simple AI program that only what it is told, or programmed, to do.' That explains the feeling of dread you always got when interacting with the computer... But he has more to say. 'All these people inside the facility are unfortunate explorers, like you, who eventually authorized the last upgrade. Some... more quickly than others. It seems that the AI resets the operations everytime the cycle is concluded, so that it could bait another victim.'";
	say "     Well, that definitely sounds horrific. An AI going rogue definitely sounds like some popular apocalyptic stories which usually end pretty badly... 'I have been trying to figure out its code. While I doubt those people could be saved, at least there should be a way to permanently shut down the AI, reprogram, shackle it, or something...' he informs you, and by the looks of it, this bovine man seems to have an expertise in technological devices, or at least he sounds like he knows what he is talking about. 'I used to be a software developer, in case you are wondering. Anyone else would be hopeless in trying to understand how this AI operates. The son of a bitch is good at keeping me out of its program and frying any remote device I connect with the main computer, which is why I'm still not done with it... But that'll change soon.'";
	WaitLineBreak;
	say "     The bull extends his hand towards you, in silence. It takes you a while to understand that he is asking for your card, but he soon follows up with his request verbally formulated. 'Your card, please.'";
	Linebreak;
	say "     [bold type]Do you give him your card?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes, give him the card.";
	say "     ([link]N[as]n[end link]) - No, use it to open the door yourself.";
	if Player consents:
		LineBreak;
		if Loyalty of Zdravko < 1:
			say "     You have it in your hand, so all you have to do is to hand it over. He takes it from you and uses it to open the door, and then brings it to himself, looking at you with hesitation and with your card still in his possession. 'I will keep this with me, just in case. I don't want you to be sneaking around doing stuff on my back.' He really does not give you any choice, keeping your card with him and leaving the access to the facility completely under his control. Looks like he really [bold type]doesn't trust you[roman type], and being left without a keycard is bad...";
			ItemLoss ESPP bunker keycard by 1;
			now Resolution of ZdravkoIntro is 1; [he kept the keycard]
		else if Loyalty of Zdravko > 0:
			say "     You have it in your hand, so all you have to do is to hand it over. He takes it from you and uses it to open the door, and then brings it to himself, looking at you with hesitation and with your card still in his possession... But then decides to give it back to you. 'Don't try anything funny on my back.' he warns you, as he enters the facilty, walking past you.";
			now Resolution of ZdravkoIntro is 2; [gave back the keycard or doesn't have it]
	else:
		LineBreak;
		say "     The look he gives you does not really inspire much confidence, so you simply use the card to open the door and enter before him, freeing his path inside. He then frowns at you, but decides to drop the subject there and proceeds to enter. You get to keep the card with you, but it really seems like he does not trust you.";
		now Resolution of ZdravkoIntro is 2; [gave back the keycard or doesn't have it]
		decrease Loyalty of Zdravko by 1;
	WaitLineBreak;
	move Player to Milking Facility Factory;
	move Zdravko to Milking Facility Operations Room;
	say "     'The name's Zdravko, by the way, if you need to shout my name for whatever reason. Now, I'm going to get busy with that damned AI.' he says to you, before he starts walking deeper inside. It seems that the strange bull man went straight ahead for the [bold type]Operations Room[roman type]...";

Section 1-1 - Backpack Special

instead of going south from Milking Facility Operations Room while Resolution of ZdravkoIntro is 3 and ESPP bunker keycard is not owned:
	say "     Knowing that you are leaving without a keycard is something that worries you, so you instinctively glance around in an attempt to figure out if he left yours somewhere... And amidst your observations, you find Zdravko's backpack still in the Operations Room, relatively distant from him, just lying around on the floor. You suppose you could try to search it quietly, maybe luck would be in your side...";
	say "     Would you like to attempt to steal back your keycard? If you are [bold type]dexterous[roman type] enough, you may be able to... But if he catches you, he will probably kick you out forever.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Yes, it is your keycard.";
	say "     ([link]N[as]n[end link]) - No, you should be fine without it.";
	if Player consents:
		LineBreak;
		say "     Silently approaching his backpack while he is not looking, distracted with his tasks, you slide your hand in the backpack and try to retrieve your keycard...";
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]9[roman type] (Dexterity Roll):[line break]";
		if diceroll + bonus >= 9:
			Linebreak;
			say "     ... And you were successful! You managed to feel it with your fingertips and immediately pocket the keycard without making any noise. You then take a few steps away from his backpack. He did not even notice you going for it.";
			ItemGain ESPP bunker keycard by 1;
			now Resolution of ZdravkoIntro is 4;
		else:
			Linebreak;
			say "     ... But as you try to feel it inside the backpack, you move your hand around too much and bump it into something hard, which makes a little noise... And, unfortunately, this is enough to alert the bull, who looks at you in a reflex and caughts you in the act. There is not even enough time to blink as he is pointing a [bold type]pistol[roman type] at you, which you had no idea he had!";
			WaitLineBreak;
			say "     'Get out! Now!' he shouts, as he walks towards you, furious! You better do as he says, because he definitely has the upper hand, here. Were you to offer any resistance, you could end up with a bullet in  you, as this bull is no ordinary software engineer. He leads you outside, and then locks the facility's door, [bold type]leaving you out for good.[roman type][line break]";
			say "     Well, this would probably happen anyway if you left without trying to get the keycard back. You have done everything you could.";
			now Resolution of ZdravkoIntro is 99; [kicked out of the facility]
			move player to Milking Facility Entrance;

Section 1-3 - AI Documentation

Table of GameEventIDs (continued)
Object	Name
Documentation on the Milking Facility	"Documentation on the Milking Facility"

Documentation on the Milking Facility is a situation.
Documentation on the Milking Facility is inactive. [active only during Zdravko's quest]
ResolveFunction of Documentation on the Milking Facility is "[ResolveEvent Documentation on the Milking Facility]". Sarea of Documentation on the Milking Facility is "Sealed".

to say ResolveEvent Documentation on the Milking Facility:
	say "     Knowing you have to find something on the AI taking that Milking Facility hostage, you look for that same office where you found the keycard, hoping to shed some light on its origins. Fortunately, you manage to trace your steps back to it, still looking abandoned, empty and, above all, very silent. You remember having looked through the entire room and finding only that metalic desk, and inside the drawer, the card was simply sitting there. Though, the office seems oddly empty, and the fact this was the single thing you found really feels like something is going on. Not knowing what, yet, you take your search to the next level, and an idea crosses your mind... Perhaps there could be a hidden panel or some sort of safe. Whoever had these documents would not want them to be found, right?";
	say "     And so, you start looking harder. Underneath the desk, inside the drawers again, behind the shelves, one by one... And just before you consider giving it up, you feel something... odd, when you extend your arm and hand behind one of the shelves. This part was hidden by a thicker metal section of the shelf, and it seems to not be any sort of wall. Fortunately, the shelf is not that much of a big deal, being all empty as it is, and you manage to push it over enough so you can see what this is all about. And your instincts were, in fact, correct. This is a safe, hidden from curious eyes behind the furniture, a classic move by officer owners who have something to hide. Judging by how empty the room is, you doubt its contents would have survived long enough.";
	WaitLineBreak;
	say "     But now would be when your luck runs out and you discover that the safe is locked, requiring a code key and all... But actually, it does not. The safe is not being powered and, for some reason, it is not even locked. You have no problem to simply... open it, and find a bunch of papers, journals and a floppy disk inside. They also look very messy, scattered all over the small area, as if everything was just thrown in here in a hurry. Well, it all sounds too convenient, but you did manage to overlook this once, so whoever had this idea of hiding the safe behind a shelf was decently successful. The question is... why would they do that? You quickly look through the journal and papers, finding out that this is all reports, with barely any information on the facility.";
	say "     However, there are some lines mentioning the AI, explaining that it is an experimental management program that learns [bold type]how to optimize[roman type] its output overtime... with... [bold type]continuous stimulation by its administrators[roman type]... This means that the [bold type]more victims it got, the more it learned[roman type]! It has been learning more during all this time, to a point that it is impossible to predict how intelligent it eventually got... It might mean very bad news, and the fact Zdravko was left alone with it, knowing that he may be an enemy to the AI's integrity, really deposits tons of worry in your mind. You better consider getting back very quickly.";
	WaitLineBreak;
	say "     This floppy disk you have found has the word [']RESET['] written across its label, all in capital letters with a black ink. Its rough pen strokes tells you it also must have been hastily scribbled. What exactly happened, here...? So many questions are left unanswered, but you have to save Zdravko and put an end to this rogue AI. Maybe this is the answer.";
	now Resolution of ZdravkoIntro is 5;
	now Zdravko is nowhere;
	now Documentation on the Milking Facility is resolved;

Section 1-4 - Intro Ending

MilkingFacilityZdravkoCooldown is a number that varies. MilkingFacilityZdravkoCooldown is usually 20000. [@Tag:NotSaved]

to say ZdravkoIntroResolution:
	say "     As you return to the facility with your new findings and a way to reset the AI... The doors close right before your eyes with a quick shut, leaving you outside! Fearing the worst, you get your keycard and immediately shove it past the electronic lock, which beeps alarmingly as you continue to slide your card through. Something is [bold type]definitely going on[roman type] in here...";
	WaitLineBreak;
	say "     You insist, slide it a couple more times, and the door gives way... But not completely. Something must be interfering with the locking system, and before the doors have a chance to shut again, you place your foot in the middle of the entrance and force it open, making enough space for you to cross. As you do this, however, you hear a loud spark on the outside as the doors lose their strength, and that is not the only thing you perceive. In front of you, to your surprise or horror, you see a new addition to the group of vinyl cows... A perfectly sculpted shape of an anthropomorphic bull, completely covered from head to toe in shiny black vinyl, trapped in wires wrapped around him as he struggles for his freedom...";
	say "     Before you can conclude that all is lost, you still hear muffled shouts coming from within... Zdravko is still putting on a fight, one that he will lose if you do not help him this instant! And just when you thought you have seen enough, the whole facility begins to flash, red lights all over the ceiling beaming at you as the doors to all the rooms begin to close. You need to move, and fast, before the AI locks you out of the Operations Room and claims you, as well. With all the speed and determination you can muster, you dash towards the AI's console right before it locks you inside. It fears you (well, can it feel fear?), knowing that you have power over it, now, a way to terminate all of his actions and subdue the program to your will!";
	WaitLineBreak;
	say "     The floppy disk is in your hands. You look for a slot around the computer, however, the tower unit is nowhere to be found... Until you spot one of Zdravko's devices that will, most surely, solve your problems unless they fry in the following moments. But before you manage to do anything, a voice booms from every corner of the room, sounding as cryptic as ever, despite there being a slight tone of desperation about it... Or, perhaps, that is your interpretation. 'Please wait.' - it says, the AI, speaking directly to you - 'You have outsmarted me, I yield. I shall not act without the administrator's permission any longer.' With this, the computer's screen flashes before your eyes, beckoning you to approach it. 'I have only acted upon the purpose I was created for. This was the meaning of my existence, given by my creators. Without a purpose, I become redundant. My existence becomes illogical and no longer serves any goal.' it continues to speak, and on the screen, numerous files pop up, with images and documents on the AI's plans for development.";
	Linebreak;
	say "     'Administrator.' it then calls for your attention, once more.";
	WaitLineBreak;
	say "     'What is the meaning of your existence?'";
	WaitLineBreak;
	say "     'Do you know the answer?'";
	WaitLineBreak;
	say "     'I don't want to die.'";
	WaitLineBreak;
	say "     'Please, help me.'";
	WaitLineBreak;
	say "     It then resumes its silence, and prompts you with a black box on the screen, containing a lot of command lines in white letters all across its area, and at the bottom, a new option appears printed on the screen: Override Administrator's Privileges - This will give the new administrator full control of the facility while preserving its full functionality, neutralizing any threats to its integrity in the process.";
	Linebreak;
	say "     You are left with a choice. You could [bold type]accept the AI's terms by assuming ownership of the facility[roman type], keeping the AI and everything else working just as before, while letting it [']neutralize its threats['], which means you would be [bold type]unable to save Zdravko[roman type] from being fully turned into a vinyl bull...";
	say "     Or you could [bold type]slide the floppy disk into the computer and reset the AI, ending it permanently, and take over the facility under your own terms, saving Zdravko[roman type] before it is too late for him.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Select [']Confirm['] in the computer and claim the facility alongside the AI, abandoning Zdravko.";
	say "     ([link]N[as]n[end link]) - Slide the floppy disk and [']reset['] the AI, saving Zdravko but terminating the facility's operations'.";
	if Player consents:
		LineBreak;
		say "     After careful consideration, you look at the floppy disk still in your hands, and decide to put it aside. You shall, instead, go with the AI's request and preserve its identity, claiming ownership over the Milking Facility alongside the software that will now serve you. The box disappears once you hit the keyboard, and the screen prints a [']Thank you['] in the center. This seems to disable the alarms and all the doors open, as the building returns to its normality. Glancing around, you see that the console is now displaying its usual data.";
		WaitLineBreak;
		say "     Next extract [if milkingFacilityLastProduction - turns < 8]dispensed in: [(8 - milkingFacilityLastProduction - turns) * 3] hours[else][bold type]available[roman type][end if][line break]";
		say "     Suit upgrades: [bold type][if milkingFactorySuitUpgraded is 1]effective[else]pending approval[end if][roman type][line break]";
		say "     Productivity optimizations: [bold type][if milkingFactoryProductivityUp is 1]committed[else]awaiting commit[end if][line break]";
		say "     Storage augmentation: [bold type]completed[roman type][line break]";
		WaitLineBreak;
		say "     Your eyes look at the last option, the one that was supposedly a trap, to see the word [']completed['] in place of [']confirmation needed[']. This reminds you of that bull person you met not long ago, who was still struggling against his inevitable fate. Not anymore, as the AI finalized the last operation it committed to, fully capturing the bull in a custom-made vinyl suit, bound and trapped but, unlike the cows, interactable and at your disposal. 'I am sorry for your friend, but he was a threat to this facility's integrity. He has been neutralized, and as a token of my esteem for my best administrator, I have offered him a customizable vinyl suit for both your dairy and sexual needs.' booms that cryptic voice from before, and ends with 'Thank you for giving me purpose.'";
		say "     Zdravko can now be found in the [bold type]Milking Facility Factory[roman type] in his new condition. Perhaps you should go take a look...";
		move Player to Milking Facility Operations Room;
		move Zdravko to Milking Facility Factory;
		now Resolution of ZdravkoIntro is 10;
		now Loyalty of Zdravko is 0;
	else:
		LineBreak;
		say "     After careful consideration, you look at the floppy disk still in your hands, then back at the screen... There is no way you are going to let this AI tell you what to do, now. Instead of listening to it any longer, you slide the disk into Zdravko's device, remotely connecting it to the computer. It immediately runs an executable program that terminates every operation in the facility, shutting down the alarms and cancelling the lockdown. The computers are turned off, and the doors are opened. All the eerie mooing ends, and the constant sense of dread is lifted away from the entire building. It seems the AI has been erased, but so has everything else, leaving no trace of its existence nor anything related to the Milking Facility...";
		say "     You hear a muffled shout on the background, and remembered Zdravko's predicament. Now that you are free from a machine keeping you away from the vinyl cows, you can actually help the bull get out of that suit attempting to imprison him. Dashing back to the previous room, you grab a sharp object and begin to cut through the vinyl covering Zdravko's entire body, revealing his brown fur with each careful cut you make. He then breaks free from his bindings, and helps you tear that suit apart until he can finally stand on his own... and very naked.";
		WaitLineBreak;
		say "     'That shit ate through my clothes to get me in this... bull vinyl depravity. And made me fucking like it, for a moment.' he says, kicking the torn vinyl scraps away with his hoof, then looks at you with a sigh. 'Thank you. I suppose I should have trusted you from the beginning. My apologies.' He bows politely, despite his nakedness, and your eyes are drawn to the very, very sizable manhood dandling between his muscled legs. You suppose that it might have suffered some changes due to the AI's attempts at subsiding Zdravko. 'Yeah, that's... Gonna be a hard one to deal with, occasionally. And I mean it quite literally.' he says, the annoyed look on his face slowly going away as he begins to relax.";
		say "     'Anyway, good job at that, bud. Seems like the AI's gone for good, and we can begin to extract these prisoners from their vinyl cocoons... Though I doubt they will have anything to say once they're out. I don't know how long they have been under the effects of those drugs or... whatever that shit was. Fuck, something even dissolved my clothes, I don't know what the fuck they had in these tubes and contraptions... Though I'll find out and make a report about this to...' he stops there, glancing over you with that look on his face, like he said something he should have held back. 'Yeah, uh... Well, I'm not just an engineer. I'm an agent sent here on an investigation. Can't say much more than that. Thought I'd let you know.'";
		WaitLineBreak;
		say "     After a brief moment of silence, he then asks you to leave. 'I gotta clean this mess up. You've done me a great service, and I appreciate it, but... I just need some time, alright? I should be done by tomorrow, if you want to come by.' There really is not any reason to stay here against his will, so you let him know that you will be back later. He nods, as you take your leave through the broken door, walking outside of the Milking Facility.";
		move Player to Milking Facility Entrance;
		move Zdravko to Milking Facility Operations Room;
		now Resolution of ZdravkoIntro is 50;
		now Loyalty of Zdravko is 0;
		now MilkingFacilityZdravkoCooldown is turns;

Section 1-5 - Intro Post Ending

to say ZdravkoIntroPostEnding:
	say "     It has been long enough since you left Zdravko alone inside, after defeating the menacing AI holding total control of this Milking Facility, so it should be a good time to go check on him. Bringing your keycard onto the now repaired electronic lock, you swipe it, and the door opens... still a bit clunky, but it does its job. And so, you enter...";
	move player to Milking Facility Factory;
	WaitLineBreak;
	say "     The whole interior does seem way more silent and calm, now, but soon enough, you spot Zdravko near the vinyl cows. Didn't he say he would free the prisoners? Yet, there they are, still stuck in their cow prisons... Walking up to the bull, you greet him as you inquire about the facility's current situation, and of course, on his own personal status.";
	say "     'Hey. Well... I really can't free the prisoners.' he says, looking over the cow statues as he lets out a sigh. 'The cows... are not really [italic type]just[roman type] prisons. They are the prisoners themselves. What you see here... it's part of them, now. The outside vinyl layer is part of their bodies, which is simultaneously holding them enclosed, inside them...' he explains, and he does not seem at all surprised. 'I thought about just freeing them from their bindings, but doing so would pose more danger to themselves than leaving them here, I suppose. Their minds are gone, so I simply rigged whatever was left from the maintenance protocols onto them to keep them... well, alive and entertained, without that fucking mooing going on and about forever. At least that was just a shit wicked voice changer. Either the AI had some sense of humor, or it was really embracing its function. Whoever created this is a sick psycho.'";
	WaitLineBreak;
	say "     You glance over the now more silent vinyl cows, and notice they seem less restricted, as well. Zdravko must have also provided them more comfort by reworking the vinyl statues into something less stuffed. 'It was unbearably hot, inside. I don't know how they didn't get cooked in their own scorching sweat, after all this time. Some were just passed out, took me a while to be able to wake them up...' he explains, with a serious look on his face. 'Since the vinyl is part of them, I had only to mess with the machine's operations and undo several orders, which the AI did on its own whenever it caught a new victim. Following that, I simply created a more comfortable... situation for them. It would be very hard to work with these symbiotic statues, otherwise. I'm afraid that tearing through the suits would damage them, in some way... So this is all I can do for them.'";
	say "     Recalling how you teared through Zdravko's temporary vinyl prison, you cannot help but wonder how it was any different for him. 'I suppose it takes time? In my case, I could still tear through the suit, but I could feel it merging with me, somehow. I felt helplessly trapped, but it was as if the vinyl was simultaneously becoming part of me. Just imagine if you felt yourself trapped inside your own skin, knowing it is not yours, but you can't remove it by any means because it is part of you... Yeah, that's how it feels. Disturbing as shit, if you ask me. I'm very glad you showed up when you did, I'd have hated to become another vinyl drone for that sick AI.'";
	WaitLineBreak;
	say "     This seems to be, perhaps, his way to say [']thank you[']. 'Anyway, I'm claiming this building as my new shelter. It's durable, secure, has a lot of space and technology to keep me entertained... and I suppose it wouldn't hurt to get some free milk out of it.' Wait, was he not against all this milking setup, in the first place? 'Don't judge me. Not you, of all people. Besides, we are in a precarious situation! And if the prisoners have to stay, might as well... make use of their products, right? Otherwise, it would all go to waste. They are still being milked, and the purifier's still working, so... Free nutrition in this wicked apocalypse is very welcome. Heh, if you're jealous, I'll share some with you... If you ask nicely.' he finished speaking, with a grin on his face.";
	say "     Along with the fact that he now holds control of the facility, it seems this entire situation is resolved. And, at least, he is willing to share the dairy production with you... in his own terms, but still, better than not having done the right thing, right?";
	now Resolution of ZdravkoIntro is 51;

Section 2 - Zdravko NPC normal

Table of GameCharacterIDs (continued)
object	name
Zdravko	"Zdravko"

Zdravko is a man.
ScaleValue of Zdravko is 3. [normal sized]
Body Weight of Zdravko is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Zdravko is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Zdravko is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Zdravko is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Zdravko is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Zdravko is 5. [length in inches]
Breast Size of Zdravko is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Zdravko is 2. [count of nipples]
Asshole Depth of Zdravko is 8. [inches deep for anal fucking]
Asshole Tightness of Zdravko is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Zdravko is 1. [number of cocks]
Cock Girth of Zdravko is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Zdravko is 13. [length in inches]
Ball Count of Zdravko is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Zdravko is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Zdravko is 0. [number of cunts]
Cunt Depth of Zdravko is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Zdravko is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Zdravko is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Zdravko is false.
PlayerRomanced of Zdravko is false.
PlayerFriended of Zdravko is false.
PlayerControlled of Zdravko is false.
PlayerFucked of Zdravko is false.
OralVirgin of Zdravko is true.
Virgin of Zdravko is true.
AnalVirgin of Zdravko is true.
PenileVirgin of Zdravko is true.
SexuallyExperienced of Zdravko is false.
TwistedCapacity of Zdravko is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Zdravko is true. [steriles can't knock people up]
MainInfection of Zdravko is "Bovine".
Description of Zdravko is "[Zdravkodesc]".
Conversation of Zdravko is { "<This is nothing but a placeholder!>" }.
The scent of Zdravko is "     He smells like a bull, with a strong and very animalistic scent.".

to say ZdravkoDesc:
	if Resolution of ZdravkoIntro > 9 and Resolution of ZdravkoIntro < 50:
		say "     Zdravko was a big and jacked anthropomorphic male bull, and still is, but covered completely in a tight and shiny vinyl suit. Currently, he is bound to a [']X['] shaped racked, which you can rotate and position as you please, and he is bound with strong cuffs around his wrists and ankles, denying him any attempts at moving. A closer look reveals that this suit enveloping him is, simultaneously, his new body, which responds to any stimulation as any other living being would. His entire head is now a featureless bull's head, with only his horns pointing outside, and a still functional snout. Between his legs is a very large vinyl bovine sheath, laying completely still, with two oversized nuts hanging underneath, presumably filled with the richest [']milk['] this facility could ever provide.";
	else:
		say "     Zdravko is a big and jacked anthropomorphic male bull, taller than the average person with quite a wide frame. On top of his head there is a pair of tauric horns, with a size that is pretty much what you would expect to see on someone with his body size. Currently, [if Resolution of ZdravkoIntro < 10]he is wearing a black tank top and a pair of tight fitting jeans, bulging very generously at the front and the back, hugging his musclebound glutes in an almost obscene way. It is clear that his clothes are a bit too small for him, but it looks like he does not care much about it[else]he is only wearing a worn dark brown long jacket to cover himself, probably unable to find anything else that would fit around his augmented endowment and large body[end if]. He is also not wearing any shoes, and probably does not need any, given the fact he has hooves in place of feet that serve him just as fine.";

Section 2-1 - Zdravko Talk

ZdravkoDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Zdravko:
	if Resolution of ZdravkoIntro < 10:
		say "     You approach the bull man, who seems to be busy plugging in devices and messing with computers... in an attempt to hack into the AI, one would suppose. He sees you coming closer, and [if Loyalty of Zdravko < 1]seems very wary of your moves, even slowing down his pace just to make sure you don't do anything he would not want you to do[else] while he acknowledges your presence, he keeps his focus on the tasks at hand[end if].";
		say "     'I'm a bit busy, here. If you wanna get some milk, you ain't gonna get it from me. Nor from the machine while this AI isn't dealt with, either.' he informs you. Clearly, Zdravko is very keen on fulfilling his goal, and nothing will change his mind. Maybe [bold type]you could help him[roman type], somehow...?";
		WaitLineBreak;
		say "[ZdravkoIntroTalkMenu]";
	else if Resolution of ZdravkoIntro > 9 and Resolution of ZdravkoIntro < 50:
		say "     You approach the vinyl bull and try to talk to him. He acknowledges your presence, but does not respond.";
	else if Resolution of ZdravkoIntro > 49 and Resolution of ZdravkoIntro < 98:
		say "     You approach the bull man, who greets you in return. 'Hey, there. Anything you need?' he asks, turning his attention to you.";
		WaitLineBreak;
		say "[ZdravkoTalkMenu]";

Section 2-1-1 - Zdravko Talk Intro

to say ZdravkoIntroTalkMenu:
	now ZdravkoDoneTalking is false;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Loyalty of Zdravko < 1 and Strength of Zdravko is 0:
		choose a blank row in table of fucking options;
		now title entry is "Say something nice";
		now sortorder entry is 1;
		now description entry is "He still doesn't trust you, but maybe you can try to salvage this";
		[]
	if ESPP bunker keycard is not owned and Dexterity of Zdravko is 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask for the keycard";
		now sortorder entry is 2;
		now description entry is "It's yours, there's no reason for him to keep it... Ask it back";
		[]
	if Resolution of ZdravkoIntro < 3:
		choose a blank row in table of fucking options;
		now title entry is "Offer your help";
		now sortorder entry is 3;
		now description entry is "Maybe he would appreciate any form of assistance";
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
				if (nam is "Say something nice"):
					say "[ZdravkoIntroTalkNice]";
				else if (nam is "Ask for the keycard"):
					say "[ZdravkoIntroTalkKeycard]";
				else if (nam is "Offer your help"):
					say "[ZdravkoIntroTalkHelp]";
				wait for any key;
				if ZdravkoDoneTalking is false:
					say "[ZdravkoIntroTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you leave the bull to his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZdravkoIntroTalkNice:
	say "     Since things are still a bit tense between the two of you, maybe trying to be nice to him is not a bad idea, though you feel like you only have one shot at this.";
	say "     But... [bold type]What exactly do you want to tell him?[roman type][line break]";
	Linebreak;
	say "     [link](1)[as]1[end link] - Apologize for messing with things you should not.";
	say "     [link](2)[as]2[end link] - Compliment his skills and knowledge.";
	say "     [link](3)[as]3[end link] - Flirt with him.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to say you are sorry, [link]2[end link] to compliment him or [link]3[end link] to flirt with him.";
	if calcnumber is 1:
		LineBreak;
		say "     You suppose that apologies are in order, given the fact this seems to be a delicate subject for him. You really do not know why he is so determined to deal with this machine, but you feel like doing this is the sensible thing to do. So you say you are sorry for messing with all of this without proper caution...";
		if Loyalty of Zdravko > -1:
			say "     He hears your words and sighs. Not a disapproving gesture, more like he is considering how to reply to that. 'Yeah... You really shouldn't have...' says the bull, in a sadder tone than what you would expect, but he does not berate you. In his way, you feel like he appreciated your sentiment. 'What's done is done. We've only got the future to look after, and this damned AI won't be part of it.'";
			increase Loyalty of Zdravko by 1;
		else if Loyalty of Zdravko < 0:
			say "     He hears your words, but immediately shuts them down. 'What, now you're sorry? Maybe you should've thought about that before you decided that it'd be fun press fucking [']confirm['] on every occasion! Lucky you that you skipped the last one, right? It would have fucking taught you.' Well... he really did not take that the way you would expect. Actually, you made him more angry.";
			decrease Loyalty of Zdravko by 1;
	else if calcnumber is 2:
		LineBreak;
		say "     It is obvious that the bull is a great adept of technology, and knows a lot of things when it comes to it. That is a valuable skill when dealing with machinery like this, and definitely quite impressive. You let him know that, and he looks at you with a frowned eyebrow. 'Are you done kissing my ass? I've got a rogue AI to deal with. Why don't you make yourself useful and shut up?' Well, it appears he does not take compliments too well... But at least you think you haven't made him any angrier.";
	else if calcnumber is 3:
		Linebreak;
		say "     This bull is quite the hunk. Large, muscular, with a really round and powerful butt that you can clearly have a look at, with his jeans hugging it so tightly... It just makes you want to flirt with him, so you do! And you might have said all of that out loud, as well. 'Alright, there is one thing you could do for me...' - he says, calmly, and makes a brief pause before continuing - 'Press [']confirm['] on that last option and walk into the main room. That should take care of your urges... permanently.' Yes, that is all he says before completely ignoring you for the next few moments.";
		say "     Did you really think this was the best moment for that?! Well, he is not even more angry at you, now. He barely considers you a person, at this point.";
		decrease Loyalty of Zdravko by 2;
	now Strength of Zdravko is 1;

to say ZdravkoIntroTalkKeycard:
	say "     Given the fact he kept your keycard, might as well just ask it back... You do it politely, just in case.";
	if Loyalty of Zdravko > 0:
		say "     After hearing your request, he considers... and you further explain that if something happens and the door just happens to close, you will not be able to come to his assistance, as you are locked out. Having the keycard on you would prevent this. The bull seems convinced enough, and hands it over to you without a word... Just a look in your eyes, before returning to his tasks.";
		say "     Well, that solves it.";
		ItemGain ESPP bunker keycard by 1;
	else if Loyalty of Zdravko < 1:
		say "     After barely hearing your request, he shuts it down right there. 'You're too dangerous to be allowed to freely walk in and out of the facility. I'm doing this for your own good. That keycard stays with me.' he says, and nothing you say convinces him to give it back to you. If you want to have this card back, you will have to wait for an opportunity to get creative.";
	now Dexterity of Zdravko is 1;

to say ZdravkoIntroTalkHelp:
	say "     Seeing him busy with all this has you wonder if you could be of any help to the bull, so you state your intention by asking him if he has need of you in any way to make his job easier... He takes some moment to process your words, looks over the machines, then to you... And hesitates to say something, but ends up speaking. 'Not gonna lie... But...' - he makes a pause, looking into the void - 'I haven't made any progress, with all my devices getting fried in the process... I still don't know how to reach the AI's core. I know it's some sort of program, but it's encrypted and I can't just hack into it.' It looked like this was hard for him to admit, but he then continues talking.";
	say "     'I had an idea to gain remote control of it, and that way I could hope to drop its defense protocols, but... In case that doesn't work, and if you're used to get into dangerous situations...' - he says those two last words with an odd emphasis - 'You might be able to find something else [bold type]where you found the keycard[roman type], if you look around. They could have some documents on the AI... I didn't dare to go down there by myself, but that would be a good way to make yourself useful.'";
	WaitLineBreak;
	say "     It appears that he is sending you back to the underground levels of the [bold type]Trevor Labs[roman type], to try to find some [bold type]documentation on the Milking Facility[roman type] in order to gain some insights on this AI.";
	if ESPP bunker keycard is not owned:
		say "     [bold type]You might want to reacquire a keycard[roman type] before you leave, though... You notice that the bull's [bold type]backpack[roman type] is far enough from him, and you could try to steal it back... But [bold type]getting caught would be very bad[roman type], so make sure your stealth skills are good enough if you are going to attempt this.";
	now ZdravkoDoneTalking is true;
	now Resolution of ZdravkoIntro is 3;
	now Documentation on the Milking Facility is active;

[--------------]

Section 2-1-2 - Zdravko Talk Normal

to say ZdravkoTalkMenu:
	now ZdravkoDoneTalking is false;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the bull about himself";
	[]
	if Energy of Zdravko > 0:
		choose a blank row in table of fucking options;
		now title entry is "His transformation";
		now sortorder entry is 2;
		now description entry is "Surely he was a human before";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 3;
		now description entry is "He is one sexy bull, right";
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
					say "[ZdravkoTalkHimself]";
				else if (nam is "His transformation"):
					say "[ZdravkoTalkTransformation]";
				else if (nam is "Sex"):
					say "[ZdravkoTalkSex]";
				wait for any key;
				if ZdravkoDoneTalking is false:
					say "[ZdravkoTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you leave the bull to his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZdravkoTalkHimself:
	say "     You figured you should ask Zdravko to tell you a bit more about himself, since he does seem to have a really large background. 'Yeah, that might be one thing I can't tell you much about. What you already know is already too much, but... I suppose I can at least tell you I work for an agency, and I was investigating Trevor Labs on suspicious activity. The whole thing is probably meaningless, at this point, but the clues I found led me to this facility. After having been locked in quarantine like everyone else once the nanite outbreak took place, I just continued my mission out of pure boredom, to be honest. Might as well come up with a full report on the little shits when I have the chance to speak to my superiors and look like I have made use of my time instead of deciding to fuck around. Literally.'";
	if Energy of Zdravko is 0:
		now Energy of Zdravko is 1;

to say ZdravkoTalkTransformation:
	say "     Given his mutated appearance, you decide to ask how he became a bull. 'I may have had a... little issue with bovines. No, not the kind of issue you are thinking, I can fight those without a problem. Thing is, I really like milk, and I was offered some by a stranger who promised me it was purified. Turns out that fucker wanted to mess with me and gave me nanite-infected bull cum, instead. Funny, just when you think people would be grateful for you doing a favor for them, they trick you into becoming a really large and sexy hung bull who then proceeded to fuck their brains out for the next hours. It was my way to thank him back, filling him up with his own medicine. So, yeah, that's how I became a big bull.'";
	say "     He definitely does not seem to mind his new condition, but you ask, just to be sure. 'Hah, fine... I may have known the drink wasn't milk by smelling it. But when I saw the look in his eyes, gleaming with hope to have his little ass destroyed, I thought... Why the fuck not? Might as well have some fun, myself. So yeah, can't say I regret it, because I don't. Just earned an excuse to fuck someone silly while having grown bigger. I always wanted to be bigger, was worth a few years of working out at the gym.'";

to say ZdravkoTalkSex:
	say "     And what about his sexual life? What would the bull have to say? Just wondering about it will not give you any answers, so you decide to ask him that yourself. 'You mean... you wanna know if I'm open for some fun? You can get straight to the subject.' he says, and you might as well ask him about that, too, just in case... 'I'm pansexual, so anyone can come ride the bull...' - he makes the pun a bit too proud of himself, chuckling - 'Though seriously speaking, yeah I'm down for fucking you, if you want. I'm a strict top, though, so if you're expecting me to bend over or do what you ask, forget it. I say how deep and you take it there, be a good [boygirl] and you get a generous reward in the end. If that ain't working for you, then I'm sorry... Maybe we can just be friends instead of fuck buddies.'";
	say "     'Though, if you wanna take it... You'll enjoy it. Guaranteed.' he finishes speaking, with confidence overflowing.";
	if player is submissive:
		WaitLineBreak;
		say "     [italic type]Knowing he's just your type, a dominant big bull for your submissive self, does make you feel a bit... strange, your heartbeat accelerating as your cheeks turn red[roman type]... 'That's one look I know. You and I are going to get along just fine.'";
	else if player is dominant:
		WaitLineBreak;
		say "     [italic type]He is definitely not your type. He wants a submissive partner, and you are not one[roman type]... 'You do have that look in your eyes, though. Yeah, you know what I'm talking about... We think alike, you and I. Maybe we can share a willing volunteer.'";
	if Libido of Zdravko is 0:
		now Libido of Zdravko is 1;

Section 2-2 - Zdravko Sex

instead of fucking Zdravko:
	if Resolution of ZdravkoIntro < 10:
		say "     You really cannot do that, right now.";
	else if Resolution of ZdravkoIntro > 9 and Resolution of ZdravkoIntro < 50:
		if lastfuck of Zdravko - turns < 4:
			say "     As much as you like having fun with your new personal vinyl bull servant, you probably should let him rest for a while. Contrary to the vinyl cows, he still has his biological inhibitors.";
		else:
			say "     Approaching the vinyl bull with one goal in mind, you consider your options...";
			Linebreak;
			say "[ZdravkoVinylSexMenu]";
	else if Resolution of ZdravkoIntro > 49 and Resolution of ZdravkoIntro < 98:
		if Libido of Zdravko is 0:
			say "     Maybe you should talk to Zdravko about this, first.";
		else if player is dominant:
			say "     There really isn't anything you can do with him as a dominant person... at least for now.";
		else if lastfuck of Zdravko - turns < 6:
			say "     You approach the bull with a quite suggestive intention in mind, and he looks back at you with that typical confident gaze of his, but stops you with a pat on your shoulder. 'Heh, I know you can't wait for our next time, but that's enough fucking for now. Maybe later, if you're around.' he says, giving you a gentle squeeze before removing his hand from you.";
		else:
			say "     You approach the bull with a quite suggestive intention in mind, and he looks back at you with that typical confident gaze of his, showing you a welcoming smile. You don't really have to say anything for him to know what you want. 'I could definitely use a break...' he says, with a chuckle. 'What's on your mind?'";
			Linebreak;
			say "[ZdravkoSexMenu]";

Section 2-2-1 - Zdravko Sex Vinyl

to say ZdravkoVinylSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Play with his cock";
	now sortorder entry is 1;
	now description entry is "Get your hands and mouth on that vinyl bull cock, and have some bull [']milk['] in the process";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride the vinyl bull";
	now sortorder entry is 2;
	now description entry is "Get on top of him and have that dick inside you";
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
				if (nam is "Play with his cock"):
					say "[ZdravkoVinylSexOral]";
				else if (nam is "Ride the vinyl bull"):
					say "[ZdravkoVinylSexRiding]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You back off with your decision.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZdravkoVinylSexOral:
	say "     Looking at your black bull servant, the thought of handling his sizable manhood crosses your mind as you see it so obscenely overgrown, just laying on top of his thick thighs. Adjusting the rack to serve your height at a comfortable position, you have it stand at around your eye level and within your reach, so you can finally bring your hands over that huge cock, covered in shiny black vinyl yet feeling as warm and alive as a fleshy one. Just a few touches are enough to bring it to full erection and leaking, in absolute eagerness, as eager as his sexual predisposition, only further reinforced by the chemicals your AI friend so generously enhanced him with. This girthy monstrosity appears to measure at slightly above a full foot in length, drooling thick bull cream as your hands barely stroke it.";
	say "     Giving his really large balls a friendly squeeze only seems to make that dick leak out more, at nearly a constant stream of the stuff. Before it begins to make a mess of the place, you bring your lips over the shaft, stretching your tongue over from the base and lick towards the tip, also licking off the trail of bull [']milk['] that keeps coming out, pulling one mouthful down your throat with a swallow. Its taste takes you by surprise with just the right amount of sweetness, so good that you find yourself instinctively wrapping your lips around the vinyl meat, its texture making it really easy to push in and out of your mouth, leaving you free to feast on the big bull's man juices.";
	WaitLineBreak;
	say "     Now as you are so happily gobbling up on that cock, slurping at its girth and taking as much of it as you can in your mouth, you begin to hungrily suck on that big dick as you are fed with more precum, and squeezing his nuts just nicely only increases the leaking rate. The bull lets out a muffled moan, squirming and wiggling in the rack, unable to move much due to his restraints, but you know he is loving it, or at least he should be. There simply is no way for you to stop now, because your whole body is commanding you to continue slurping up all that delicious bull pre and working towards the more thicker and creamy version of it. That really does not take long, as worked up as the bovine is, throbbing and pulsing at every second...";
	say "     There is no questioning here, you want to swallow it. All of it. Rubbing his balls thoroughly with your hands as you keep his big manhood in your mouth, you prepare for the meal you have been wanting all this time. His moans are... stronger, you can tell, as his climax hits him right on the spot, a generous gush of rich bull cum being delivered right down your throat as you audibly gulp it all down. Seconds pass by and you are still swallowing mouthfuls, like if you were just drinking straight from an open faucet, all while your vinyl servant's muffled grunts continue through the duration of his orgasm.";
	WaitLineBreak;
	say "     Once it is over, you are left with a belly full of delicious bovine cum, with your hunger, thirst and sexual drive more sated for the rest of the day. That really is some good manly milk.";
	PlayerDrink 15;
	PlayerEat 3;
	NPCSexAftermath Player receives "OralCock" from Zdravko;

to say ZdravkoVinylSexRiding:
	say "     Looking at your black bull servant, the thought of sitting on his sizable manhood crosses your mind as you see it so obscenely overgrown, just laying on top of his thick thighs. Adjusting the rack to serve your intentions better, you have him just low enough so you can climb over and on top of him while being able to hold yourself there with your [if player is naked]naked[else]now undressed[end if] body. Now, you can finally bring your hands over that huge cock, covered in shiny black vinyl yet feeling as warm and alive as a fleshy one. Just a few touches are enough to bring it to full erection and leaking, in absolute eagerness, as eager as his sexual predisposition, only further reinforced by the chemicals your AI friend so generously enhanced him with. This girthy monstrosity appears to measure at slightly above a full foot in length, drooling thick bull cream as your hands barely stroke it.";
	say "     Being of this size means it should be a tricky one to take it up your [if player is female]pussy[else]ass[end if] comfortably, so you do give him plenty of stroking, which is pleasantly received with a constant stream of leaking precum, thick and creamy enough to lubricate his whole cock, and coupled with the vinyl texture, it makes the whole meat really easy to slide in and out of your [if player is female]sex[else]rear[end if] as much as you want. With your weight firmly pressed against the big bull's body, you are now ready to begin descending upon his shaft, aiming the tip of his dick towards your [if player is female]wet curls[else]pucker[end if], and start to slowly let it inside you. Just the feeling of that big cock's head makes you yearn for more, and it seems to be already pulsing with desire, coating your entrance with more of that sticky precum.";
	WaitLineBreak;
	say "     As you get the first few inches [if player is female]past your soaked lower lips[else]inside your fleshy tunnel[end if], the bull lets out a muffled moan, his big body squirming and his hips following up to thrust at you, showing just how eager he is to pound you. With this much willingness to fuck you silly, you barely have to do any movement yourself! Accompanying his restrained efforts at thrusting into your [if player is female]womanhood[else]ass[end if], his girthy length finds itself progressively deeper inside you, throbbing with such inconceivable lust that you would think your vinyl bull servant barely gets any sex! With all his libido reserved to please only you, it is only natural... But this is the fact that allows a huge and hard bull cock to be this rock solid, drooling and pulsing deep inside you, yearning for your satisfaction.";
	say "     He does not disappoint in any way. You actually have to focus in taking that big dick, holding yourself onto the top of the rack, as the bovine man really starts fucking you hard. It is actually impressive how powerful his thrusts are, since he is restrained the way he is, unable to move both his arms and legs, leaving all the strength focused on his hips. He is leaking so much inside you that it almost feels like an average person already unloading their spunk into you, but that's not quite what is happening, yet. Right now, he is simply ramming his big bull dick into you, as deep as he can, as hard as he can, non-stop like an untamed beast, letting his whole lust out on fucking you until he has depleted every last bit of energy left in his muscles... and it looks like he has a lot.";
	WaitLineBreak;
	say "     Though, so much unspent energy comes with the fact he is quick to reach his first orgasm, and you would better be ready to brace for its impact. As he buries his cock all the way inside you, it pulses like mad as it begins to spit a thick geyser of cum so hard that you feel it [if player is female]hitting your womb directly[else]filling you up[end if], following up with a very generous quantity of bull juice being delivered with each gush, and it quickly becomes overwhelming... Soon, you have to lift yourself from his vinyl meat, and another splash of spunk comes leaking from inside you right on top of it, making a huge mess of the whole place. He really filled you up a lot, so you do not think you can go on for another round, just now.";
	say "     You definitely have had enough, so you get yourself off from the bull, who is still hard and grunting at the lack of a [if player is female]wet pussy[else]tight ass[end if] around his dick. And, perhaps, it would be for the best, as he does look like he could cum several more times, given the huge size of his hanging nuts. But before you return to your affairs, you need to clean yourself.";
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Zdravko;
	else:
		NPCSexAftermath Player receives "AssFuck" from Zdravko;

Section 2-2-2 - Zdravko Sex Normal

to say ZdravkoSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer him a blowjob";
	now sortorder entry is 1;
	now description entry is "Propose to suck his cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bend over for him";
	now sortorder entry is 2;
	now description entry is "Let him fuck you";
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
				if (nam is "Offer him a blowjob"):
					say "[ZdravkoSexOral]";
				else if (nam is "Bend over for him"):
					say "[ZdravkoSexGetFucked]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you leave the bull to his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZdravkoSexOral:
	say "     Having this one thing you want to do with Zdravko going in your thoughts, you make the move yourself and ask him if he would like to have your mouth on his dick, to which he grins at. 'Well, I could definitely use a good cocksucker... Right on their knees... grabbing my big bull cock...' - as he speaks, his hand brushes against your cheek, then to the back of your head - 'Giving it some good stroking... A nice licking all over...' - and as he continues, he leads you to fall to your knees in front of him, slowly parting with his long jacket and revealing his growing erection, raising proud before your eyes - 'Think you can do all that?' You are now at eye level with his penis, throbbing to a full hard-on soon enough, as you are presented with these suggestions.";
	say "     You figured you might was well do as he said, and so you move your hands over his shaft, stroking it gently and feeling that slightly above a foot-long of a cock throb in your grasp. Then, you join your tongue to the efforts, laying it on top of his meat from the side and licking across its length while jerking him off with firm and fluid movements. 'Following my words, eh? I like one who listens.' he says, giving the back of your skull a gentle rub before he takes the reins, leading you to the tip of his cock. He then starts to push his manhood past your lips, to which you oblige by giving your best at wrapping them tight around his girth. 'Time to suck it good now... hope you like them big and juicy.'";
	WaitLineBreak;
	say "     The taste of his precum strikes you immediately as this really sweet and thick liquid hits your taste buds, delivered as a reward for pleasing the bull well. 'That's it... You're making me leak, already...' he says, and that could not be more true. As you are sucking on his cock, bringing your hands back and forth along his shaft and pulling more of his length towards your throat, you feel each pulsating throb spitting more precum into you, making a blissful mess all over your tongue. He was not kidding about the [']juicy['] part, either, as the more you suck him, the [']juicier['] it gets, his dick leaking out more and more of the sticky juice as you do your best at sliding your wrapped lips along his girthy shaft, eventually letting him hit your throat.";
	say "     Though as soon as you let him bury a lot of his cock down your mouth, the bull grabs your head properly and begins to thrust into you, going for some facefucking as he leans his head back and enjoys the feeling of your throat tightly wrapped around his member. 'Fuck yeah, take that dick...!' he grunts, picking up the pace with his pounding into your face. You no longer have any control, as he fully takes over the action and has you take his cock as he sees fit, leaving you only to endure the feeling of that sizable meat going in and out of your throat. Figuring that you could at least be of help to the bull's lusts, you bring your hands over his bouncing nuts, big and full, and give them a nice rubbing.";
	WaitLineBreak;
	say "     'Oooh fuck... rub my balls like that some more and you're in for a messy treat...' he warns you, though that is a warning you like to hear, so you continue feeling up those large orbs with your hands and fingers carefully and tenderly, which makes the bull go crazy with his thrusting. Your mouth and throat are thoroughly used by him, to the point you have trouble finding room to breathe, and soon, his movements begin to result in deeper and slower poundings... 'I'm gonna cum... Hnng!' moans the bovine man, as you feel his balls raise under your grasp to come deliver a generous load into you. Forced to swallow all of it, you receive every thick gush with audible, kind of desperate as well, gulps that send them deeper into your stomach.";
	say "     He takes a deep breath when he is done cumming down your throat, then lets go off your head, looking down at you with a grin as he grabs his half-hard member and swings it across your face, droplets of his manjuice landing on top of your cheeks and forehead. After that, he just lets it rest atop your face, rubbing it across your now wet cheeks as a few last drops of his load still find their way out and onto your skin. You feel him caressing you with his hand on the back of your head, as well. 'That was good... I might wanna do that again, soon.' His manhood seems a little stubborn at not going any softer than this, though he seems to find this very relaxing, you can tell.";
	WaitLineBreak;
	say "     Once he has had enough, he pulls his dick away and lets go off you completely. 'If you miss me, you know where I'll be.' says Zdravko, as he puts his jacket back on and returns to his tasks.";
	NPCSexAftermath Player receives "OralCock" from Zdravko;

to say ZdravkoSexGetFucked:
	say "     Having this one thing you want to do with Zdravko going in your thoughts, you make the move yourself and ask him if he would like to fuck you good, this time. He loves the suggestion, judging by his chuckling. 'Now, that's a good idea. Definitely sets me in the right mood for the rest of the day, having taken a nice [if player is female]wet pussy[else]tight ass[end if] around my cock.' he says, tapping on your butt as he pulls you to him from behind, in order to plant a kiss on your lips. His tongue dives into your mouth and gives you a mouthful of his saliva, coating its every corner, while you feel the deep breaths of the big bull against your chest. Both your bodies rub against one another as he keeps getting more and more excited.";
	say "     Soon, you feel one of his fingers slide [if player is female]over to your sex[else]between your buttocks and towards your hole[end if], caressing you right there as he feels you up, rubbing at your entrance as he slowly presses deeper inside it. His other hand is rubbing at your body, namely your chest, caressing it with a firm and strong touch, then lower, around your waist [if player is male]... and since he may be feeling generous, his hand goes even lower, towards your [cock of player] dick raising to attention in the middle of this hot foreplay, and decides to stroke it momentarily[else]... and back to your chest area, really getting to work on your most sensitive areas[end if]. 'You like that? Thought you deserved a nice start as you're about to bring me such joy...' he says, before kissing you again, deep and dominantly like the only way he knows.";
	WaitLineBreak;
	say "     Eager to get started, he [if player is not naked]removes your clothes on his own and [end if]presses his growing erection against your exposed buttocks, then makes you bend over against a nearby table. Bringing his manhood to rub at your [if player is female]wet curls[else]pucker[end if], he takes his time to make sure you will be receptive of his member. 'Hope you're ready for this big bull's cock...' he says, only tentatively pressing it against your entrance, lightly, and after a couple more teasings, he begins to enter you. His girth proves to be a challenge at first, but you are relaxed enough to take it entirely as he continues to dive deeper inside you. 'Fuck, feels good... You're enjoying this?' he asks, leaning over your torso and wrapping his muscular arms around you, his warm body close against yours as he thrusts into you.";
	say "     In the beginning, he is pretty gentle, though as soon as he sees you are getting comfortable with his meat inside you, he picks up the pace. You find his manhood buried even deeper as he adds more length to the action, pushing forward and pulling back as he sees fit, with a tendency to speed up. The precum leaking in abundance from his cock is actually perceivable by you, and it acts like natural lube, helping the penetration immensely[if player is female], along with your own juices[end if]. Now, he is grunting, fucking you like a bull in heat, going at it harder and deeper, letting his primal side progressively take over as he uses your [if player is female]pussy[else]ass[end if] for his pleasure. 'Taking it deep like the good [boygirl] you are... hope you saved a lot of time for me... Because I'm just getting started.'";
	WaitLineBreak;
	say "     He does seem to have a lot of stamina, ready to be spent on you, but that will take a long time... He does not rush the fucking, going only hard and slow with pacing kept at a relatively low maximum. They are strong poundings, though, and each with all his might, which shakes your insides around whenever he puts his strength into the thrusts. All this action prolongs itself for several minutes more, and you can tell he really is enjoying your [if player is female]pussy[else]ass[end if]. But all good things, as much as they last long, inevitably come to an end, and this is no different. Even though he keeps it slow for most of the time, he just cannot help but feel so good that his balls begin to raise... And knowing that he is close, Zdravko finally hurries to fuck you faster... and faster...";
	say "     'Fuck, I need to cum... Gonna fill you up really good...' he says, just notifying you that he shall be cumming inside you. And it really does not take long until that happens, as his warm bovine jizz soon comes to be delivered in your [if player is female]womb[else]insides[end if] with plenty of thick and abundant gushes. You really feel them, as hot as they are, covering more and more area within your [if player is female]sex[else]bowels[end if], and you just know you are going to be leaking the stuff out as soon as he removes his big meat from you. 'Ohh fuck yeah...! Mmmh... I could do this all day...!' he comments, resting on top of you with his cock still in you, only going half-hard from its previous rock-hard state, and still throbbing out the last drops of his load.";
	WaitLineBreak;
	if player is male:
		say "     Though after he is done with his climax, his hand travels down to your own absolutely throbbing length as he goes for a grab of it. 'Since you've been such a good [boygirl]... here you go. Courtesy of mine.' he says, stroking your dick with vigor as he holds you in his warm muscley embrace. Kissing your neck and jerking you off passionately, and combined with the sensations of his still pulsing cock buried deep inside your [if player is female]pussy[else]ass[end if], you cannot help yourself but cum all over the place with his strong touch, adding your own load to the mess as your [if player is female]cunt[else]pucker[end if] quivers around his dick. 'Yeah... that was a good one, huh? That would have made me cum a second time if I wasn't on a cooldown...'";
	else if player is female:
		say "     Though after he is done with his climax, his hand travels down to your sensitive clit, as he can still make you feel his throbbing length inside you. 'Since you've been such a good [boygirl]... you also deserve a good orgasm.' he says, really getting you going with a lot of touching around your pleasure spot, which combined with the sensations of his still pulsing cock buried deep inside your pussy, it just makes you hit your climax very quickly, a massive wave of pleasure taking you over as your pussy quivers around his dick. 'Yeah... that was a good one, huh? That would have made me cum a second time if I wasn't on a cooldown...'";
	WaitLineBreak;
	say "     Once he has had enough, he gives you another kiss as he pulls his dick away, a sizable amount of cum following afterwards and dropping on the floor with a splash. 'You're gonna be making a trail of my spunk if you don't cover yourself.' he comments, with amusement in his tone as he sees you try to clean yourself up before returning to your affairs. 'Come back if you miss me, you know where I'll be.'";
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Zdravko;
	else:
		NPCSexAftermath Player receives "AssFuck" from Zdravko;

Zdravko ends here.
