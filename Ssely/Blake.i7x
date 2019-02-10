Version 1 of Blake by Ssely begins here.

Table of GameRoomIDs (continued)
Object	Name
Dirty Alley	"Dirty Alley"

Dirty Alley is a room.
Dirty Alley is east of Smith Haven Mall Lot East.
The description of Dirty Alley is "[DirtyAlleyDesc]".

to say DirtyAlleyDesc:
	say "     Dumpsters and trash bags litter the floor, the back-alley of the brothel is coated in a thick layer of grime - the darkness from the corrugated metal overhead shrouds the scene in a thick fog. Before you sits a leather-clad rat - this alleyway seeming to be his home. He doesn't notice you for the meanwhile, your eyes darting around his living quarters. The rat's bed is made up of a couple layers - trash bags being used as the mattress, a few salvaged blankets covering the mattress, and a dirty, unkempt duvet over-top that. Despite his disgusting living conditions, his bed was surprisingly well made - blankets tucked underneath their neighboring bags.";
	WaitLineBreak;

Table of GameCharacterIDs (continued)
object	name
Blake	"Blake"

Blake is a man.
Blake is in Dirty Alley.
The description of Blake is "[BlakeDesc]".
The conversation of Blake is { "Mew!" }.

to say BlakeDesc:
	say "     <Placeholder. Players should not be able to stand beside him and look at him. Please report on the FS Discord how you saw this.>";

instead of going east from Smith Haven Mall Lot East while (HP of Blake is 100):
	say "     Nah, you're not going to go that way anymore. All that would get you is another meeting with that dirty trash-rat chatting you up.";

instead of going east from Smith Haven Mall Lot East while (HP of Blake < 100):
	move player to Dirty Alley; [one step inside so the player sees him and the room - adjust scenes accordingly]
	if debugactive is 1:
		say "     DEBUG: Walk-in Event in the mall - find Blake, the punk rocking, trash-loving rat who lives in the mall.[line break]";
	if HP of Blake is 0:
		say "     You wander closer to the trash-rat and can't help staring at him - from top to bottom, his form seems to be muscular, but thick with dirt, much like his surroundings. His head dons a thick leather cap, with perky ears poking through vaguely cut holes in the surface of the material. Oddly, he quite obviously takes care of his clothing - the soft sheen of the black leather bringing a smile to your face. Strangely, he didn't spot you eying up his form, instead just looking down at the floor in a lustful daze. You look down, his obviously-biker styled jacket zipped to the top, his left paw resting over the material, idly rubbing over his chest and belly. He sits atop his bed, grunting as his dirty-pink paw strokes over his length. His eyes were shut, fantasizing about what could be happening to him outside, you bet.";
		WaitLineBreak;
		say "     Despite your worries about the creature before you, your eyes are forced to continue gazing, moving down to his crotch and below. Again, much the same as the jacket, thick leather follows his legs down, tightly compacting them into a warm, comfortable-looking embrace. You grow slightly envious, but wonder if that's just the infection talking. Looking lower, you spot his boots - knee high, tight, and done all the way up - the meticulously tied knots and zips of his boots seeming to caress his legs as he squirms in pleasure. Of course, they creak when he moves - much like his whole outfit. You wonder if the sexual mind of the rat got off to knowing how loud, kinky, and public his outfit is. His clothing - and the mattress beneath him loudly startles you with its creaking... Wait, he was moving...?";
		if cocks of player < 1:
			say "     Blake grins, looking straight at you - grabbing suddenly over your crotch. To his dismay, it seems you lack what he wanted, and so he pushes you back abruptly. 'I don't swing that way. Why don't you go out and change yourself a bit, then I'll toy with you...'";
		else:
			say "     Suddenly, he chuckles, your sight snapping back to his eyes, his grinning, dirty face taunting you. 'Enjoying the sights, kid? The sounds... Almost like they caress and tease over your very form, don't they? Creaking, shining...' he teases out with a chuckle, his devilish, raspy, chesty voice reverberating through you quite strongly. You squirm on the spot a little, watching as his paw grabs over that 10 inch long member of his, the twitching of his arousal only contributing to your own. 'Hey, what say you join in for a bit? Judging by the look on your face, you're either in awe of my clothes and want more, or you're disgusted. Either way, I don't care. Your choice.";
			LineBreak;
			say "     Just watching the rat had added to your libido, you couldn't think of what actually rubbing against his leather-covered form would do to you. You tried to think straight, but the thick scent of the rat's musk, and the trash behind him fog your mind. [bold type]What do you want to do?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Join in with the trashy punk-rat?";
			say "     ([link]N[as]n[end link]) - Recollect your thoughts and leave?";
			if player consents:
				LineBreak;
				say "     So you do, growing close, before your lust-filled eyes gaze up at his, his toothy grin giving off an aura of dominance as he points to his cock. Knowing you can't resist, you eagerly pant, moving forward onto his member, the slick, warm length tasting of pure masculinity as you take him. His jacket and pants rub up against your own body, your lips letting out a soft moan against his cock as the delicious material brushes against you. Loud grunts emanate from his throat; his cock being enveloped in your wide, warm awaiting mouth. Fuck, it was delicious - you want more, strangely. Your mind was a mess of choices and decisions. Maybe you shouldn't have accepted, maybe you should - you don't know, but all you care about was his cock and that sweet, sweet creaky leather that covers him.";
				say "     To his joy, you wrap your tongue around his large erection, the saliva that secretes from your mouth actively being used as lube - his rough, dirty paws pushing over your head, forcing you down against his crotch. Of course, once you reach there, your nose is hit with his powerful scent. Oh god, it was powerful. That was a light way of describing it - beforehand it seems to entice you closer, but now, you can't get enough. To any passersby, the scent would be strong enough to push them away from the pervert rat, but once you had seen his... perfect form, you couldn't help yourself.";
				WaitLineBreak;
				say "     The scent pulses through your lungs, teasing your arousal as you suck over his cock, precum escaping from his tip - rewarding you for your hard work. The rat leans back, largely enjoying the slut on his dick, and of course - the leather that encases his form. Slowly but surely you bring the rat to orgasm, constantly teasing his length - all the while a spare paw of his moves to your hole, wriggling it about in an attempt to force a moan out of your lips. What followed was a loud, slutty moan - your mind lost in bliss, too much so to care of the volume.";
				say "     In fact, the moan made him gasp in pleasure - the pure sound of it bringing him to orgasm, his mucky seed spurting violently into your mouth - your lust-coated thoughts enticing you to swallow. Of course you do - following it up with a whine. 'Ahh... Gods, what a great time. You're such a good slut, you know, kid?' he grins at you - cum leaking out of your mouth, your cock left needy, dangling beneath you. 'Off you go, then...' he laughs at you, watching as you detach yourself from his creaking form, walking away...";
				now lastfuck of Blake is turns;
				now HP of Blake is 2; [Sucked his cock]
			else:
				say "     You walk away, and hear as you leave... 'You'll come back to Blake... They always do.'";
				now HP of Blake is 1; [No to having fun with the rat.]
	else if HP of Blake is 1: [refused him before]
		say "     'Heh, change your mind, kid?' he teases, grinning at you with that ever-present mischief. Just watching the rat had added to your libido, you couldn't think of what actually rubbing against his leather-covered form would do to you. You try to think straight, but the thick scent of the rat's musk, and the trash behind him fogs your mind.";
		say "     [bold type]What do you want to do?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Join in with the trashy punk-rat?";
		say "     ([link]N[as]n[end link]) - Recollect your thoughts and leave?";
		if player consents:
			LineBreak;
			say "     So you do, growing close, before your lust-filled eyes gaze up at his, his toothy grin giving off an aura of dominance as he points to his cock. Knowing you can't resist, you eagerly pant, moving forward onto his member, the slick, warm length tasting of pure masculinity as you take him. His jacket and pants rub up against your own body, your lips letting out a soft moan against his cock as the delicious material brushes against you. Loud grunts emanate from his throat - his cock being enveloped in your wide, warm awaiting mouth. Fuck, it was delicious - you want more, strangely. Your mind was a mess of choices and decisions. Maybe you shouldn't have accepted, maybe you should - you don't know, but all you care about was his cock and that sweet, sweet creaky leather that covers him.";
			say "     To his joy, you wrap your tongue around his large erection, the saliva that secretes from your mouth actively being used as lube - his rough, dirty paws pushing over your head, forcing you down against his crotch. Of course, once you reach there, your nose is hit with his powerful scent. Oh god, it was powerful. That was a light way of describing it - beforehand it seems to entice you closer, but now, you can't get enough. To any passersby, the scent would be strong enough to push them away from the pervert rat, but once you had seen his... perfect form, you couldn't help yourself.";
			WaitLineBreak;
			say "     The scent pulses through your lungs, teasing your arousal as you suck over his cock, precum escaping from his tip - rewarding you for your hard work. The rat leans back, largely enjoying the slut on his dick, and of course - the leather that encases his form. Slowly but surely you bring the rat to orgasm, constantly teasing his length - all the while a spare paw of his moves to your hole, wriggling it about in an attempt to force a moan out of your lips. What followed was a loud, slutty moan - your mind lost in bliss, too much so to care of the volume.";
			say "     In fact, the moan made him gasp in pleasure - the pure sound of it bringing him to orgasm, his mucky seed spurting violently into your mouth - your lust-coated thoughts enticing you to swallow. Of course you do - following it up with a whine. 'Ahh... Gods, what a great time. You're such a good slut, you know, kid?' he grins at you - cum leaking out of your mouth, your cock left needy, dangling beneath you. 'Off you go, then...' he laughs at you, watching as you detach yourself from his creaking form, walking away...";
			now lastfuck of Blake is turns;
			now HP of Blake is 2; [Sucked his cock]
		else:
			say "     No, you definitely won't do what he asks of you. Turning your back on the trashy rat a second time, you resolve not to go this way at all in the future.";
			now HP of Blake is 100; [opted out of his content]
	else if HP of Blake is 2: [one guaranteed rejection, just to offend the player]
		say "     'Back for more already, kid? What a slut,' he chuckles. 'I ought to dress you up like me, lock a collar around that cute neck of yours and keep you as my property. Nah, maybe another time,' he says, shooing you away.";
		now HP of Blake is 3; [he left the player dry when they came back]
	else if (lastfuck of Blake - turns < 6): [returning too quickly]
		let randomnumber1 be a random number from 1 to 3;
		if randomnumber1 is:
			-- 1:
				say "     'Jesus, you're needy as fuck. I wonder why? My scent stuck in that slutty brain of yours? The sound and feel of my leather rubbing against you... Or maybe it's just the trash, maybe you're that dirty - that filthy to enjoy wallowing in my own dirt. Pfffhahaha!' he laughs, pointing at you. 'How pathetic! Leave, come back later, bitch.' You hang your head low, walking away from the rat.";
			-- 2:
				say "     'Pffhahah, back for more... again? How many times is that now? Remind me, I've lost count. Go away, you filthy little toy, or I'll have to fuck your brains out and mold you to my desire.' You run away from the humiliation, your cheeks flustered with the fire of embarrassment.";
			-- 3:
				say "     'Oh for gods sake, kid. I've already messed with you recently. Give me a while, I've got shit to do other than humiliate you, ahhaha!' You walk away, whining in submission.";
	else if HP of Blake is 3: [returning again after one rejection]
		say "     'Hah, there you are,' the trashy rat chuckles out. 'I've been waiting to use you for a while, kid.' Grinning, he lures you closer, his finger twitching in response to your presence. Of course, you came closer - your past introduction to his methods of forcing you into subservience carrying along - your mind already littered with thoughts of serving the big, dominant, leather-clad rat. Instantly, you fall to your knees.";
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1:
				say "     As if you could read his mind, you grab his cock obediently. It was already slick with his always-present filth - the smelly, slight covering of dirt lubricating your endeavor. Your expert hands squirm in place over his twitching member, before he lies back into his disgusting bed. You follow suit, his wagging finger tugging on your mind, much like a mental collar. Your grip never halts though - a lonesome digit teasing over his head, the rest simply gripping over that erect member and stroking up and down - the soft moans of the dominant rat in front of you providing a constant source of motivation.";
				WaitLineBreak;
				say "     Your teasing fingers make sure to grip and rub against his cock constantly, never letting up their complete arousal-gifting action. Your grip is tight, like a vise - yet gentle like a massage, the gentle-tightness of your grasp growing Blake closer. With time, plenty of grunts and moans, and some humping, you feel his member twitch in your hands, before Blake spurts his sticky white seed onto his chest and your hands.";
			-- 2:
				say "     Blake motions with a wriggling finger. You knew what he was suggesting instantly - in fact, seconds after, you were already ass-in-air, awaiting his member. He lets out a soft, raspy cackle - the dominant rat sending shivers of absolute pleasure down your spine. Again, his leather outfit creaks against your skin, every touch - every tactile feeling of his body over you... Pure arousal. It surges through you, like a heat - endlessly forcing its way into your veins, your senses, your thoughts. You need him. Now. With that, Blake pushes into you - your hole seeming to be lubricated enough from the various sexual acts he just knew you had been a part of before.";
				WaitLineBreak;
				say "     Oh god was his member absolutely amazing - it twitches... pulses... thrusts - the feeling of having something so filthy inside of your corrupted form would've been absolutely horrifying to you pre-infection, but now you couldn't get enough of that filthy trash-rat behind you right now. You lean back into his thrusts, the rat's arousal being quite high already from the looks of things - his humps getting faster and faster, more pre escaping his tip, adding to the disgusting slickness of your loose hole. You try thinking about running, try thinking about escaping this arousing... No, wait! Your mind was awash in pleasure - so much so that you didn't even realize when Blake came, his seed cleaning your insides out with whitewash.";
			-- 3:
				say "     His filthy digit just points towards his cock, you know what to do. It's as if he had a deep control of your thoughts, forcing subservience through your veins, the sensation of suggestion flowing through your mind, senses awash with need for his member. You didn't know if he was hypnotic or not, but his scent seems to do wonders to your mind. Of course, even with helpless struggling you eventually reach his length, the situation now reminding you of when you first met the rat. This time though, the taste of his filthy cock seems to be more enjoyable to your now-changed mind - the filth and dirt around you pushing you towards thorough enjoyment of sharing Blake's dirt. If someone were to oversee the two of you, they would run away, fast.";
				WaitLineBreak;
				say "     The scent was overpowering to anyone who was unlucky enough to focus in on it - otherwise mixed together with the various scents of sex that emanates from the hut beside you. The strange rat infects your mind with his enjoyment of living in his own trash - changing your thoughts as you suck on his cock. Before long, you're met with a splash of seed, the rank taste of his cum matching that of his cock. Due to your lust-addled mind, however, that disgusting taste seems to be ultimately pleasurable to you.";
		WaitLineBreak;
		say "     'Hah, that was fun, wasn't it, bitch? Bet you're starting to enjoy me more and more - just craving that scent, that musk, aren't you?' he teases, grinning as you eagerly lap up the excess cum on your surroundings. Before long though, Blake lays back onto his bed, closing his eyes for a while. Perhaps you should come back another time.";
	move player to Smith Haven Mall Lot East; [player is thrown out after each scene]

Blake ends here.
