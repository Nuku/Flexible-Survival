Version 1 of Baby Pets by Luneth begins here.

the linkaction of Dash is "[dashlinkaction]".
the linkaction of Peppy is "[peppylinkaction]".


to say dashlinkaction:
	say "Possible Actions: [link]talk[as]talk Dash[end link], [link]smell[as]smell Dash[end link][line break]";

to say peppylinkaction:
	say "Possible Actions: [link]talk[as]talk Peppy[end link], [link]smell[as]smell Peppy[end link][line break]";

Section 1.1 - Fox Kit NPC/Pet
[Original content created by Sarokcat]

[ FangDashRel - Fang and Dash's relationship                                       ]
[   0: player has decided against the wolf and fox bonding                      ]
[   1: Beta Fang = mister mom route                                             ]
[   1: Alpha Fang = papa wolf route                                             ]

FangDashRel is a number that varies.

Table of GameCharacterIDs (continued)
object	name
Little fox	"Little fox"

Little fox is a pet. little fox is a part of the player.
understand "Dash" as little fox.
The description of the little fox is "[DashDesc]".
The weapon damage of little fox is 4.
The level of little fox is 1.
The Dexterity of little fox is 10.
The summondesc of little fox is "[SummonDash]".
The dismissdesc of little fox is "[DismissDash]".
The assault of little fox is "[one of]The little fox darts forward quickly and trips your opponent![or]Yipping and harassing your opponent, the little fox allows you to score a glancing blow![or]Growling ferociously, your little fox friend springs forward to attack, only to slip and knock over some junk nearby, luckily pelting your opponent with it.[or]Your opponent jumps and twists around suddenly in pain, allowing you to see your little fox friend hanging onto their rear valiantly by their teeth.[or]Taking advantage of your foe's momentary distraction, your pet fox manages to get in a few solid nips.[at random]".
The fuckscene of little fox is "The little fox kit is both too small and too young for such shenanigans. There are plenty of fox-people running around; go find some of them if that's what you're into.".

to say SummonDash:
	now Dash is nowhere;
	if player is in Computer Lab and Dash is in Computer Lab: [summoning while standing next to him]
		say "     Going up to Dash, you crouch down and gently rub his ears. After showing your little fox kit some love, he gets super excited and begins to jump all over the place. Once he has calmed down a bit, he scrambles into your pack ready for a brand new journey!";
	else: [regular summoning]
		say "     Wriggling his way out of your pack, Dash looks around the area before sitting down and staring at you with its bright shining eyes, eager to explore.";

to say DismissDash:
	move Dash to Computer Lab;
	if player is not in Computer Lab: [regular dismiss]
		say "     Opening your bag, Dash makes a beeline for it, only to trip over his paws and tumbling inside. You quickly check over him afterwards, only to find he decided it was nap time.";
	else: [dismissing him in the Computer Lab]
		say "     Opening your bag, you notice Dash is fast asleep. Trying your best to be gentle, you reach inside and take him out and him in his little box bed. Reaching over you give him a soft little kiss on the head, gaining you a happy little purr from the tiny vulpine.";

Table of GameCharacterIDs (continued)
object	name
Dash	"Dash"

Dash is a man.
The description of Dash is "[Dashdesc]".

instead of sniffing the little fox:
	say "[DashScent]";

instead of sniffing Dash:
	say "[DashScent]";

to say DashScent:
	say "     The fox's smell reminds you of the woods, full of nature and pine. Although there is also has another scent you cant quite place, the only thing that pops into your mind is a... well [italic type]baby[roman type] smell.";

to say DashDesc:
	if debugactive is 1:
		say "     DEBUG -> FangDash: [FangDashRel] <- DEBUG[line break]";
	say "     Dash is so cute and friendly! He has a cute little fox face with eyes that shine with love as they stare up at you. His lithe and quick body is almost constantly in motion as it explores the world around you. The little fox's coloring was a bit of shock at first, with it being more brown and gray than you would have figured. Then again, maybe that is just the normal coloring for fox's when they are young like yours.";

instead of conversing the Dash:
	if player is in Computer Lab and Dash is in Computer Lab:
		say "[DashTalkMenu]";
	else if companion of player is little fox:
		say "[DashTalkMenu]";
	else:
		say "     Dash isn't here.";

instead of conversing little fox:
	if little fox is not tamed:
		say "     Who?";
	else:
		if player is in Computer Lab and Dash is in Computer Lab:
			say "[DashTalkMenu]";
		else if companion of player is little fox:
			say "[DashTalkMenu]";
		else:
			say "     Dash isn't here.";

Section 1.2 - Fox Kit Menu

to say DashTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Dash";
	now sortorder entry is 1;
	now description entry is "Sit back and just watch how Dash goes about his day";
	[]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Watch Dash"):
					say "[DashTalk1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the Dash, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DashTalk1:
	say "     WIP";

Section 1.3 - Fox Kit Event

Abandoned Fox is a situation.
The sarea of Abandoned Fox is "Park".

Instead of resolving Abandoned Fox:
	say "     Traveling through the park, you hear a strange soft noise coming from one of the nearby bushes. It sounds almost like something small calling out. Do you investigate?";
	If player consents:
		say "     Pushing the screening bushes aside you find a hole in the ground, and sprawled outside the whole is a skinny looking young fox kit making pathetic noises. Staring at the young fox and the area around the den, you realize it must have been abandoned for a while at this point. Its mother hasn't been back to feed it, and has likely become another victim of the changes sweeping the city at this point. Leaving the little kit here all alone crying for help. Sighing at life's unfairness you begin to turn away only to hear the soft yipping noises take on a more plaintive note as it notices you and starts pleading for food and attention.";
		if food is owned:
			say "     Do you help it?";
			if the player consents:
				delete food;
				say "     Unable to bear hearing the poor things cries going unanswered, you carefully kneel down and pull out some food (-1 food), cautiously at first, then with increasing enthusiasm the half starved fox kit tears at the food, ripping and playing with it until it is all gone. You smile at the cute sight before standing up and getting ready to leave, though you haven't gone more than a few steps when you hear something behind you. Turning round, you see the fox kit you helped is valiantly trying to keep up with you, its large vulpine eyes staring at you adoringly. Trying to shoo it back to the empty den seems pointless, and the cute little fox seems to have taken a strong fancy to you now, shrugging you give in and let it come with you. The little fox kit bouncing along in your wake and occasionally darting off to pounce on and threaten one of the nearby leaves on the ground.";
				say "     You lean down next to your new little friend, deciding it might be best to check some things that will help in the future. Tapping the little fox on its side, it quickly rolls over onto its back still chewing on one of the leaves it was [italic type]hunting[roman type]. Mildly embarrassed, you begin to rub its tummy and glance down further... well alright, so apparently your new little friend is a boy! Glad that that's over, you gently begin to scrub his ears. Now to think of a name for him, while your busy thinking the little fox begins to dash around at various targets, then it clicks. Dash, you try the name out seeing how it feels and how he responds to it. Truth be told the little fox doesn't seem to have any feeling on the matter, but it's better than nothing. As you head back to the park trail, you make him a little nest in your backpack, making sure he will be comfortable while you travel.";
				now little fox is tamed;
				add "Tamed" to Traits of little fox;
				move Dash to Computer Lab;
				say "(The little fox is now tamed! You can make it your active pet by typing [bold type][link]pet little fox[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
				now Resolution of Abandoned Fox is 1; [fed and adopted the fox]
				now Abandoned Fox is resolved;
			else:
				say "     Hardening your heart to its plaintive cries, you move back from the abandoned fox den and leave nature to take its course.";
				now Resolution of Abandoned Fox is 2; [abandoned the fox]
				now Abandoned Fox is resolved;
		else:
			say "     You have no food to feed the fox kit, so you quietly leave before its cries draw something dangerous.";
	else:
		say "     Worried that you might be walking into some kind of trap, you turn your back on the noise and continue your walk through the park.";

Section 1.4 - Fox Kit Scenes

Section 1.4.1 - Dash/Beta Fang

after going to Computer Lab while (HP of Fang is 2 and Dash is booked):
	say "     Walking into the computer lab you're shocked to see Fang inside instead of guarding the entrance like usual. At the moment the feral wolf is laying down in front of the small cubicle that Dash has claimed for himself. Fang begins to make a soft whimpering sound in the back of his throat, the display is a little shocking to say the least, you're not used to seeing your beta attempting to make himself seem small and unthreatening. After a few moments you see the small fox kit poke his head outside the little pseudo den, his curious eyes taking in the larger wolf with some apprehension.";
	say "     Your beta finally acknowledges your presence giving you a curt nod, Dash takes this as his opening to make a run for it. Quickly evading Fang's attempt to catch him the fox kit hides behind your legs, you can almost picture Dash sticking his tongue out at the wolf while using you as a barrier. Fang doesn't let that stop him though, striding up to you the wolf leans his head behind you sniffing at Dash, taking in the small fox kits scent. Dash decides to yip at the larger wolf all the while looking up at you to save him.";
	LineBreak;
	say "     [bold type]Do you want to try and get the fox kit to become more social ([link]Y[as]y[end link])? Or do you want to keep Fang away from Dash. ([link]N[as]n[end link])";
	LineBreak;
	if player consents:
		LineBreak;
		say "     While looking down at Dash you hold your hands up in the universal expression of [italic type]don't look at me[roman type]! The small fox glares up at you with a look that reminds you of a toddler about to throw a serious tantrum, Fang however takes advantage of the opportune moment and gently grabs Dash's fluffy tail in his muzzle. The fox lets out a very dramatic high-pitched scream, quickly leaning down to check on the little guy you find that he is perfectly fine and that you were right about that tantrum. While the sound Dash is making is enough to make you cringe Fang has either decided to ignore it or he is simply not bothered by it. Dash is shocked into silence as your beta begins to lick him all over, obviously Fang feels the young fox was in desperate need of a bath. Unfortunately the silence doesn't last very long as the fox decides he doesn't want a bath and begins to try to run away.";
		say "     Every time it looks like he will finally be able to break free Fang just pulls him in closer and resumes the impromptu cleaning. Still a bit worried about the little fox you sit down next to both him and your beta. Eventually Dash gives up on his escape and decides to simply endure his bath. You begin to gently stroke your hand over Fang's head and down his strong back, much to the large canines pleasure. Finally bath time comes to an end which thrills Dash causing him to end up jumping into your lap and cuddling up close to you, Fang decides to join in laying his large head across your lap. You relax for a few moments taking in all the warmth and fluffiness, however you know that you should be getting back into the city. You gently pick Dash up and place him inside his foux den, leaning down you place a soft kiss to Fang's head telling him to watch over Dash for you. With a quick nod Fang goes back to napping, all the while staying close to his new little kit.";
		now FangDashRel is 1;
	else:
		say "     Reaching down you pick Dash up, holding him close to your chest. You scold Fang explaining that he is far too big to be roughhousing with the little fox. Walking back to the cubicle you place Dash inside and begin to drag Fang out towards the front of the Library.";
		now FangDashRel is 0;


Section 1.4.2 - Dash/Alpha Fang

after going to Computer Lab while ((HP of Fang is 3 or HP of Fang is 4 ) and Dash is booked):
	say "     Walking into the computer lab you're shocked to see Fang inside instead of guarding the entrance like usual. At the moment the huge alpha wolf seems to be standing guard in front of the small cubicle that Dash has claimed for himself. After a few moments Fang lets out a firm bark at the little fox's den, eventually Dash decides to poke his head out to see what all the noise is about. Unfortunately the wolf was fully expecting this and before anyone can react he strikes, picking up the little fox with his teeth. Dash lets out a shrieking sound while in Fang's mouth, suprising even yourself you launch yourself at the large wolf making every attempt to get the kit away from what appears to be a very hungry alpha!";
	say "     With what was more than likely meant to be a gentle push, Fang sends you flying to the ground. The great wolf then places the yipping fox kit down, but before he fully relaxes his jaws a single massive paw is settled down over Dash's tail to keep him from running away. Fang's luminescent eyes seem to smolder as he looks deep inside your own. 'The brat needs to learn to be strong!' The alphas words come out gravelly, more than likely from the fact that he only speaks so rarely. You open your mouth to respond with a comeback on your tongue only to be silenced quickly by the beast speaking to you. 'You have been a good mother for the pup... but he needs a man to make him a warrior!' [if player is male]You cant help the confused look that passes over your face, obviously Fang picks up on it though. 'Yeah, you're male... but you coddle him like a baby that's sucking from your tits! He needs an alpha... to show him how to become a warrior in his own right one day.'[end if]";
	LineBreak;
	say "     [bold type]Do you want to allow Fang to work with Dash ([link]Y[as]y[end link])? Or do you want to keep Fang away from Dash. ([link]N[as]n[end link])";
	LineBreak;
	if player consents:
		LineBreak;
		say "     Walking up to Fang slowly with your head bowed and arms outstreched, you softly get close to the ground and check on Dash. With what your alpha had said going through your mind you glance up at the huge wolf. Without much thought your mouth starts to work on autopilot, you explain to Fang how you understand that Dash need to become stronger but there is another way. Fang looks down at you with an arrogant smirk on his muzzle as his eyes almost seem to bore inside of you. 'What are you saying? You agree that he needs to become stronger... but then act like you don't want me to train him, make up your mind!' Well aware that you are on thin ice with your alpha you continue with your opinion. You ask Fang if he was ever around children before the nanites, a look of confusion passes over his muzzle, until while mentioning the different sorts of children he could have been exposed to you ask if he ever had kids of his own.";
		say "     The wolves eyes widen for a moment, although he still says nothing to afirm or deny it. But you decide to hope for the best and grab onto the reaction that you saw, slowly moving your hand closer to Dash you ask the canine if he can tell how small the fox kit is? How afraid he must be of the monsters that roam the city? You follow that up with mentioning that Dash is a child, that he dos'nt need an alpha who views him as a tool he deserves more, he deserves a family. The look on the wolves face almost looks like one of betrayal, 'What about you bitch!? You take him out into the city... you expose him to all of those monsters yourself!' Almost like a floodgate opens yeall back at Fang, telling him that the reason you take Dash with you is so he can more about the city and if something ever happens to you, you want him to be able to know how to survive and where to hide and survive!";
		WaitLineBreak;
		say "     Fang's face is a mixture of shock and rage, 'Nothing will happen to you... your mine.' While he started out in a loud growl, the last part is said softly. You tell your alpha that their is no way to know what the future holds, you can't hide the choked up sound in your voice, at the sound of you upset Dash starts to fight once again even going as far as to dig his tiny teeth into the massive paw of the canine. Fang lets the small fox go who sprints quickly to your side checking you over, the whole time the wolf watches the two of you. Without warning you feel your alphas large body rub up against you as he bumps you with his head. 'Nothing will happen to you... or to the pup, no matter what I will keep him safe... thats a promise.'";
		say "     Leaning down Fang licks over Dash's small muzzle, without another word he starts to pad out the door. Shockingly the fox kit follows him, eventually attempting to walk directly underneath the big wolf. You swear you almost hear a deep snicker from your alpha, hopefully you made the right choice in allowing those two to spend more time together, then again Fang promsied to keep Dash safe and thats enough for you.";
		now FangDashRel is 2;
	else:
		LineBreak;
		say "     Reaching down you pick Dash up, holding him close to your chest. You turn to Fang explaining that while he may be your alpha... if he [italic type]ever[roman type] goes near your kit again he will see just how dangerous coming between a parent and their baby is! Walking back to the cubicle you place Dash inside and stand guard as you wait for the wolf to leave.";
		now FangDashRel is 0;


Section 1.5 - Fox Kit Ending

when play ends:
	if little fox is tamed:
		if humanity of player < 10:
			say "     When you give in to your feral instincts, the little fox you rescued stays with you, traveling with you and helping as best he can, trying to help you hunt and teasing at you to play with him. Finally though he grows large enough that one day he leaves on his own, fully able to forage for himself now, and leaving you to your fate. You miss the little creature occasionally... when you can remember him anyways.";
		else:
			say "     After your rescue, you manage to convince the distracted military that Dash isn't a threat, and he comes with you out into your new life. Being a mostly wild creature, he doesn't really fit in anywhere that you take him however, and so eventually you decide to find a wilderness preservation to release him into, where you hear there are several other foxes for the little fellow to play with. Several years later though, you are surprised to find someone has left another little baby fox at your door while you slept, a roughly scrawled note just says 'thanks mom,' with a little paw mark in the corner.";

Section 2.1 - Skunk Kit NPC/Pet

Table of GameCharacterIDs (continued)
object	name
skunk kit	"skunk kit"

skunk kit is a pet. skunk kit is a part of the player.
understand "Peppy" as little fox.
The description of the skunk kit is "[Peppydesc]".
The weapon damage of skunk kit is 6.
The level of skunk kit is 1.
The Dexterity of skunk kit is 13.
The summondesc of skunk kit is "[SummonPeppy]".
The dismissdesc of skunk kit is "[DismissPeppy]".
The assault of skunk kit is "[one of]The little skunk viciously launches itself at your attacker![or]Turning around, the skunk sprays your attacker in the face![or]Afraid of being left alone again, the little skunk goes into a frenzy of biting![or]All of a sudden the powerful scent of skunk washes over the fight from where your little skunk kit is playing nearby.[or]Taking advantage of your foes['] distraction, the skunk nips and bites at whatever part of your opponent it can reach.[or]Your adversary pauses for a minute as the little skunk growls at it, startling it enough for you to land a hit![or]The little skunk charges in to protect you, and your opponent seems so startled at its sudden appearance it falls backwards.[or]The little skunk tries to threaten your adversary from the sidelines, and spotting the skunk your adversary recoils in fear of its smell.[at random]".
the fuckscene of skunk kit is "The little skunk kit you've rescued is too young and small for such perversions.".

to say SummonPeppy:
	now Peppy is nowhere;
	if player is in Computer Lab and Peppy is in Computer Lab: [summoning while standing next to him]
		say "     Walking up and lightly scratching behind Peppy's ears, causing a loud churring sound from within. Giving a nod towards the door, the little skunk is quick to wobble outside. Apparently deciding that if he's going on this journey, then he is going to be the one leading it. ";
	else: [regular summoning]
		say "     You call out for the little skunk you rescued to come help you out, and it comes trotting up from where it was following you, ready and eager to assist his friend, the smell of skunk filling the area around you.";

to say DismissPeppy:
	move Peppy to Computer Lab;
	if player is not in Computer Lab: [regular dismiss]
		say "     You crouch down and attempt to explain to Peppy that he needs to stick close, but that he doesn't have to fight anymore, leaving him free to explore. Churring happily, the young mephit decides to check out everything he can.";
	else: [dismissing him in the Computer Lab]
		say "     Explaining to Peppy that he has had enough adventures for now, the little skunk rolls up into a ball, covering his face with his tail. He has apparently decided that a nap sounds great right about now.";

Table of GameCharacterIDs (continued)
object	name
Peppy	"Peppy"

Peppy is a man.
The description of Peppy is "[Peppydesc]".

instead of sniffing the skunk kit:
	say "[PeppyScent]";

instead of sniffing Peppy:
	say "[PeppyScent]";

to say PeppyScent:
	say "     The little guy smells of skunk, but that doesn't seem to bother you much at all.";

to say Peppydesc:
	say "     The skunk kit you rescued is obviously the offspring of one of the larger skunk beasts roaming the forest, as even as young as it obviously is, it's already the size of an average dog or perhaps even slightly larger. Peppy stares up at you adoringly however, with love in his eyes for his savior, exploring the world around it with the innocence of youth. How long that innocence will last though as he grows is anyone's guess, but for now its happy skunk-like antics bring a smile to your face.";

An everyturn rule:
	if companion of player is skunk kit:
		if a random number between one and 20 < 4:
			say "[one of]The scent from Peppy wafts over you strongly, causing your body to change![or]Peppy comes up to you and nuzzles you, and you find yourself changing.[or]Peppy calls out for his mother, and you find yourself filling in for her.[or]Peppy rubs up against you, his skunky smell teasing your nose with images of mature skunk beasts.[or]Peppy is startled by something and sprays the area, hitting you as well![at random]";
			if skunkbeaststatus is 1:
				sblinfect;
			else:
				infect "Skunk";

instead of conversing the Peppy:
	if player is in Computer Lab and Peppy is in Computer Lab:
		say "[PeppyTalkMenu]";
	else if companion of player is skunk kit:
		say "[PeppyTalkMenu]";
	else:
		say "     Peppy isn't here.";

instead of conversing skunk kit:
	if skunk kit is not tamed:
		say "     Who?";
	else:
		if player is in Computer Lab and Peppy is in Computer Lab:
			say "[PeppyTalkMenu]";
		else if companion of player is skunk kit:
			say "[PeppyTalkMenu]";
		else:
			say "     Peppy isn't here.";

Section 2.2 - Skunk Kit Menu

to say PeppyTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Peppy";
	now sortorder entry is 1;
	now description entry is "Sit back and just watch how Peppy goes about his day";
	[]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Watch Peppy"):
					say "[PeppyTalk1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the Peppy, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say PeppyTalk1:
	say "     WIP";

Section 2.3 - Skunk Kit Event

Lost skunk kit is a situation.
The sarea of Lost skunk kit is "Forest".
when play begins:
	add Lost skunk kit to badspots of girl;
	add Lost skunk kit to badspots of furry;
	add Lost skunk kit to badspots of guy;


littlelostskunk is a number that varies.

Instead of resolving Lost skunk kit:
	if littlelostskunk is 0:
		say "     Wandering through the woods, you come across what was obviously the remains of a recent combat, the ground torn and savaged, and spots of blood staining the ground, looking around you find it hard to tell exactly what happened here, but you know it was violent. You glance around to see if there is anything of use in the area, or if you can determine what the combatants were and why they fought, finding several strange boot prints and what you think might be a bullet casing, but that makes no sense... Sighing you prepare to go on about your business, when you hear a small whimpering noise from under a nearby bush. Considering the state of the area investigating could be dangerous, do you look anyways?";
		If player consents:
			say "     Looking under the thorny bushy you note a small hollow dug out underneath, far too small for anyone your size to fit in, but just the right size for the shaking little skunk kit that is currently occupying it, quite possibly the offspring of one of those large skunk beasts in the area as even though it is obviously just a child, it is still almost the size of a full grown dog. Seeing you the little thing whimpers and shudders some more, and you can smell a soft whiff of skunk smell from the area, you quickly back off so as not to panic the little creature. Taking a new look at the site of the battle now that you know what to look for, you imagine something was after the skunk beasts young and it objected, somehow this one managed to hide from whatever or whoever took the rest though. You feel a bit sorry for the little skunk kit, as it obviously is all alone now, but as it seems terrified of your looks and your smell, you aren't sure what you can do to help.";
			if bodyname of player is "Skunk" or bodyname of player is "Skunk Taur" or bodyname of player is "Skunkbeast Lord":
				say "Looking down at yourself you focus on your skunk-like attributes, and wonder if just maybe if you are careful the little skunk might not be drawn to them, you try to decide if you should try drawing the little creature out again.";
				if player consents:
					say "     Deciding to try again, you once more approach the little creature, this time emphasizing your skunk-like attributes, you carefully try coaxing the little kit out of its hiding spot, offering it flashes of your skunk-like body and scent until finally it nervously emerges. Sitting down within easy reach, you wait while the obviously young skunk kit inspects you carefully. Seeming to find something familiar about you, the little beast then throws itself into your lap, whimpering. Feeling oddly maternal and protective of the little creature, you stroke its smooth fur and tell it that it will be all right, checking it over for damage as you do. The lucky little skunk seems to have come through its ordeal with only a few small scratches from the thornbush, and it is mostly just scared.";
					say "     Petting and soothing the little beast feels almost natural to you, something about taking care of him speaking to the skunk-like part of yourself, and you lose track of how long you sit there petting his soft fur. Eventually the little skunk stirs; its happy churring noises as it rubs its head against you playfully make you smile fondly at him. Realizing you should probably move away from the site of the battle, you stand up and easily coax the little creature to a safer location a little distance away. You laugh at its innocent frolicking and skunk-like antics as it tries to impress you with its fierceness and convince you to play with it and pet it. After a bit you realize the slight skunk-like smell in the clearing seems to be even more comforting to you than normal, smelling a bit like home and other skunks.";
					WaitLineBreak;
					say "     Deciding somewhat sadly that you need to keep moving before another skunk follows the smell and finds you with the little kit, you sadly say goodbye and try to leave. After a few steps you realize the little skunk is following right behind you, and when you try to convince it to stay behind and wait for other skunks, it gives you a sad look and starts whimpering at you again, afraid it offended you in some way. Sighing slightly, you realize the little creature has imprinted itself on you and thinks you are its family now. Unable to take the pathetic look it sends you any longer, you gesture for it to follow you as you head back to the forest trail, its happy noises as it bounces along behind making you smile. It looks like you have a skunk kit of your very own now.";
					say "     As you continue on, you cant help but notice how powerful the skunks scent is. As you turn around to make a comment to your new little friend, you stop dead in your tracks. The skunk kit at the moment is busy attempting to hump a fallen sign that reads [italic type]Warning: Skunks in the area and will spray if they feel threatened[roman type], with a huge picture of a skunk at the bottom. You can't help but let out a burst of laughter. The whole scene reminds you of one of those old cartoons, with a skunk being attracted to something that may look like a skunk but clearly isnt. The kit having finished wobbles up to your side, seemingly proud of his... conquest. You decide that if he is going to be joining you from now on he needs a name and you have a perfect one, Peppy. Reaching down to give him a little scrub behind the ears, you tell Peppy that it's time to go.";
					now skunk kit is tamed;
					add "Tamed" to Traits of skunk kit;
					move Peppy to Computer Lab;
					if skunkbeaststatus is 1:
						sblinfect;
					else:
						infect "Skunk";
					say "(The skunk kit is now tamed! You can make it your active pet by typing [bold type][link]pet skunk kit[as]pet skunk kit[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";
					now Resolution of Lost skunk kit is 1; [adopted the skunk]
					now Lost skunk kit is resolved;
				else:
					say "     Deciding that the whole situation is not really your problem, even if it is a fellow skunk creature, you leave the little skunk to its hiding spot, and continue on your way.";
					now Resolution of Lost skunk kit is 2; [abandoned the skunk]
					now Lost skunk kit is resolved;
			else if Skunk Goo is owned:
				say "     Realizing you have some of that strange black goo from one of the other skunks, you think that you might be able to put the little skunk at ease if you smelled and looked more like one of the skunks, do you rub the goo on your hands?";
				if the player consents:
					say "     Pulling out the strange black goo you found earlier, you rub it on your hands and face, the strange substance feeling rather rubbery for a minute before seeming to sink into the skin. Shuddering at little at the thought of whatever changes that might cause, you nevertheless take advantage of the black goo hiding your scent and looks for a minute, leaning down to try to coax the little kit out of hiding. The skunk kit whimpers for a second when it sees you are back, then seems to catch wind of the skunk scent rubbed on you and your temporarily black hands and face. Before you can do more than blink, the little skunk has awkwardly charged out of its hiding space, nearly falling over its own feet in its hurry to rub up against you. You sit back as the small skunk rubs on you and tries to crawl in your lap, making soft whimpering noises. Almost reluctantly you help it up and stroke it a few times to calm the shaking little kit down.";
					say "     Calming down, the little beast curls up in your lap and starts making soft churring noises at you, obviously happier now that it has found a new friend. Checking the little kit over carefully as you stroke its fur, you don't see anything more than a couple scratches from the bushes thorns. It looks like the little kit was just scared and not hurt. You take some time to comfort the little guy, feeling strangely protective of the little skunk as it recovers, when it is well enough to travel you lead it away from the site of the combat, where it will be safer. You smile as once away from the traumatic sight the skunk kit seems to recover even more, frolicking a bit and trying to tease you into playing tug with a small root it dug up.";
					WaitLineBreak;
					say "     Spending some time playing with the skunk, you realize that you don't seem to mind his little skunk-like odor anymore, in fact the smell seems kind of nice. Realizing this, you shake your head slightly to clear it; the goo or his smell must have affected you more than you thought. Deciding you need to be on your way, you wave to the little skunk kit and start to leave, only to realize after a few steps the little thing is following you. You try several times to get it to stay in the woods, but it trails along after you as soon as you get too far away. You sigh as you realize the little skunk has adopted you as its new parent.";
					say "     As you continue on, you cant help but notice how powerful the skunks scent is. As you turn around to make a comment to your new little friend, you stop dead in your tracks. The skunk kit at the moment is busy attempting to hump a fallen sign that reads [italic type]Warning: Skunks in the area and will spray if they feel threatened[roman type], with a huge picture of a skunk at the bottom. You can't help but let out a burst of laughter. The whole scene reminds you of one of those old cartoons, with a skunk being attracted to something that may look like a skunk but clearly isnt. The kit having finished wobbles up to your side, seemingly proud of his... conquest. You decide that if he is going to be joining you from now on he needs a name and you have a perfect one, Peppy. Reaching down to give him a little scrub behind the ears, you tell Peppy that it's time to go.";
					delete Skunk Goo;
					now skunk kit is tamed;
					add "Tamed" to Traits of skunk kit;
					if skunkbeaststatus is 1:
						sblinfect;
					else:
						infect "Skunk";
					say "[bold type](The skunk kit is now tamed! You can make it your active pet by typing pet skunk kit. You can see all the pets you have tamed with the pet command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
					now Resolution of Lost skunk kit is 1; [adopted the skunk]
					now Lost skunk kit is resolved;
				else:
					say "     Deciding helping the little skunk isn't worth the chance of getting infected by the goo yourself, you leave the area so nature can take its course.";
					now Resolution of Lost skunk kit is 2; [abandoned the skunk]
					now Lost skunk kit is resolved;
			else:
				say "     Sighing, you realize that there is nothing in your bag that could help you out in this situation, and you can't think of anything else to do to make the little skunk trust you, so you make note of the location and hope the little creature will be here when you get back.";
				increase littlelostskunk by 1;
		else:
			say "     Deciding that you can't afford to take risks in a situation that looks this dangerous, you quickly turn and leave whatever is whimpering alone as you make your way back into the forest.";
			now Lost skunk kit is resolved;
	else if littlelostskunk is 1:
		say "     Traveling through the forest again, you realize that you are near the site of the skunks battle from earlier, curiosity getting the better of you, you decide to go see if that little skunk kit is still ok. Returning to the battle site easily enough, you note that other creatures have passed this way recently, probably looking to scavenge something as well, so you probably shouldn't stay too long. Still as you approach the little skunks hiding spot, you hear the telltale whimpering that tells you the little creature is still hanging in there. Feeling even sorrier for having left the little creature alone, you quickly check to see if you might have any way to get it to trust you better this time.";
		if bodyname of player is "Skunk" or bodyname of player is "Skunk Taur" or bodyname of player is "Skunkbeast Lord":
			say "     Looking down at yourself you focus on your skunk-like attributes, and wonder if just maybe if you are careful the little skunk might not be drawn to them, you try to decide if you should try drawing the little creature out again.";
			if player consents:
				say "     Deciding to try again, you once more approach the little creature, this time emphasizing your skunk-like attributes, you carefully try coaxing the little kit out of its hiding spot, offering it flashes of your skunk-like body and scent until finally it nervously emerges. Sitting down within easy reach, you wait while the obviously young skunk kit inspects you carefully. Seeming to find something familiar about you, the little beast then throws itself into your lap, whimpering. Feeling oddly maternal and protective of the little creature, you stroke its smooth fur and tell it that it will be all right, checking it over for damage as you do. The lucky little skunk seems to have come through its ordeal with only a few small scratches from the thornbush, and it is mostly just scared.[line break]";
				say "     Petting and soothing the little beast feels almost natural to you, something about taking care of him speaking to the skunk-like part of yourself, and you lose track of how long you sit there petting his soft fur. Eventually the little skunk stirs; its happy churring noises as it rubs its head against you playfully make you smile fondly at him. Realizing you should probably move away from the site of the battle, you stand up and easily coax the little creature to a safer location a little distance away. You laugh at its innocent frolicking and skunk-like antics as it tries to impress you with its fierceness and convince you to play with it and pet it. After a bit you realize the slight skunk-like smell in the clearing seems to be even more comforting to you than normal, smelling a bit like home and other skunks.";
				WaitLineBreak;
				say "     Deciding somewhat sadly that you need to keep moving before another skunk follows the smell and finds you with the little kit, you sadly say goodbye and try to leave. After a few steps you realize the little skunk is following right behind you, and when you try to convince it to stay behind and wait for other skunks, it gives you a sad look and starts whimpering at you again, afraid it offended you in some way. Sighing slightly, you realize the little creature has imprinted itself on you and thinks you are its family now. Unable to take the pathetic look it sends you any longer, you gesture for it to follow you as you head back to the forest trail, its happy noises as it bounces along behind making you smile. It looks like you have a skunk kit of your very own now.";
				say "     As you continue on, you cant help but notice how powerful the skunks scent is. As you turn around to make a comment to your new little friend, you stop dead in your tracks. The skunk kit at the moment is busy attempting to hump a fallen sign that reads [italic type]Warning: Skunks in the area and will spray if they feel threatened[roman type], with a huge picture of a skunk at the bottom. You can't help but let out a burst of laughter. The whole scene reminds you of one of those old cartoons, with a skunk being attracted to something that may look like a skunk but clearly isnt. The kit having finished wobbles up to your side, seemingly proud of his... conquest. You decide that if he is going to be joining you from now on he needs a name and you have a perfect one, Peppy. Reaching down to give him a little scrub behind the ears, you tell Peppy that it's time to go.";
				now skunk kit is tamed;
				add "Tamed" to Traits of skunk kit;
				if skunkbeaststatus is 1:
					sblinfect;
				else:
					infect "Skunk";
				say "[bold type](The skunk kit is now tamed! You can make it your active pet by typing pet skunk kit. You can see all the pets you have tamed with the pet command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
				now Lost skunk kit is resolved;
			else:
				say "     Deciding that the whole situation is not really your problem, even if it is a fellow skunk creature, you leave the little skunk to its hiding spot, and continue on your way.";
				now Lost skunk kit is resolved;
		else if Skunk Goo is owned:
			say "     Realizing you have some of that strange black goo from one of the other skunks, you think that you might be able to put the little skunk at ease if you smelled and looked more like one of the skunks, do you rub the goo on your hands?";
			if the player consents:
				say "     Pulling out the strange black goo you found earlier, you rub it on your hands and face, the strange substance feeling rather rubbery for a minute, before seeming to sink into the skin. Shuddering a little at the thought of whatever changes that might cause, you nevertheless take advantage of the black goo hiding your scent and looks for a minute, leaning down to try to coax the little kit out of hiding. The skunk kit whimpers for a second when it sees you are back, then seems to catch wind of the skunk scent rubbed on you and your temporarily black hands and face. Before you can do more than blink, the little skunk has awkwardly charged out of its hiding space, nearly falling over its own feet in its hurry to rub up against you. You sit back as the small skunk rubs on you and tries to crawl in your lap, making soft whimpering noises. Almost reluctantly you help it up and stroke it a few times to calm the shaking little kit down.";
				say "     Calming down, the little beast curls up in your lap and starts making soft churring noises at you, obviously happier now that it has found a new friend. Checking the little kit over carefully as you stroke its fur, you don't see anything more than a couple scratches from the bushes thorns. It looks like the little kit was just scared and not hurt. You take some time to comfort the little guy, feeling strangely protective of the little skunk as it recovers, when it is well enough to travel you lead it away from the site of the combat, where it will be safer. You smile as once away from the traumatic sight the skunk kit seems to recover even more, frolicking a bit and trying to tease you into playing tug with a small root it dug up.";
				WaitLineBreak;
				say "     Spending some time playing with the skunk, you realize that you don't seem to mind his little skunk-like odor anymore, in fact the smell seems kind of nice. Realizing this, you shake your head slightly to clear it; the goo or his smell must have affected you more than you thought. Deciding you need to be on your way, you wave to the little skunk kit and start to leave, only to realize after a few steps the little thing is following you. You try several times to get it to stay in the woods, but it trails along after you as soon as you get too far away. You sigh as you realize the little skunk has adopted you as its new parent.";
				say "     As you continue on, you cant help but notice how powerful the skunks scent is. As you turn around to make a comment to your new little friend, you stop dead in your tracks. The skunk kit at the moment is busy attempting to hump a fallen sign that reads [italic type]Warning: Skunks in the area and will spray if they feel threatened[roman type], with a huge picture of a skunk at the bottom. You can't help but let out a burst of laughter. The whole scene reminds you of one of those old cartoons, with a skunk being attracted to something that may look like a skunk but clearly isnt. The kit having finished wobbles up to your side, seemingly proud of his... conquest. You decide that if he is going to be joining you from now on he needs a name and you have a perfect one, Peppy. Reaching down to give him a little scrub behind the ears, you tell Peppy that it's time to go.";
				delete Skunk Goo;
				now skunk kit is tamed;
				add "Tamed" to Traits of skunk kit;
				if skunkbeaststatus is 1:
					sblinfect;
				else:
					infect "Skunk";
				say "[bold type](The skunk kit is now tamed! You can make it your active pet by typing pet skunk kit. You can see all the pets you have tamed with the pet command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
				now Lost skunk kit is resolved;
			else:
				say "     Deciding helping the little skunk isn't worth the chance of getting infected by the goo yourself, you leave the area so nature can take its course.";
				now Lost skunk kit is resolved;
		else:
			say "     You sigh as you take stock and realize you are no better off this time than you were the first time you came across the little skunk kit. Shaking your head sadly, you realize that you will just have to try harder to find a way to help next time, or you will be forced to leave the little skunk kit here to his fate. You head back into the forest.";

Section 2.4 - Skunk Kit Ending

[For endings, see the 'Skunkbeast Lord' file by Stripes.]

Baby Pets ends here.
