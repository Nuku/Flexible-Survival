Version 1 of Demon Fox by Dys begins here.

"Adds a Demon Fox enemy and infection."

[ DemonFoxStatus determines what path you've taken with the fox.          ]
[   0 = no encounter yet                                                  ]
[   10 = encountered and lost                                             ]
[   20 = encountered and submitted                                        ]
[   30 = encountered and fled                                             ]
[   40 = encountered and won, but refused sex                             ]
[   41 = encountered and won, let him fuck you                            ]
[ DemonFoxInteractions tracks the number of times the player interacted     ]
[ with the demon fox.                                                       ]
[ DemonFoxRead indicates whether or not the player has read about the       ]
[ demon fox.                                                                ]


DemonFoxStatus is a number that varies. DemonFoxStatus is usually 0.
DemonFoxInteractions is a number that varies. DemonFoxInteractions is usually 0.
DemonFoxRead is a truth state that varies. DemonFoxRead is usually false.

Section 0 - Flags

when play begins:
	add { "Demon Fox" } to infections of guy;
	add { "Demon Fox" } to infections of feral;
	add { "Demon Fox" } to infections of Knotlist;
	add { "Demon Fox" } to infections of Vulpinelist;
	add { "Demon Fox" } to infections of hellspawn;

Section 1 - Monster Responses

to say DemonFoxDefeat:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";

to say DemonFoxVictory:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";

to say DemonFoxDesc:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Demon Fox";
	now attack entry is "[one of]The massive demonic vulpine leaps at you, sinking his talon-like claws into you![or]The demon head butts you roughly, knocking the air out of your lungs![or]The fox swipes at you, tearing through your flesh![or]The demon fox jumps at you, sinking his teeth into your form![at random]";
	now defeated entry is "[DemonFoxVictory]";
	now victory entry is "[DemonFoxDefeat]";
	now desc entry is "[DemonFoxDesc]";
	now face entry is "that of a demonic fox, with a long and narrow muzzle, a maw full of sharp teeth, pointy ears, and a set of horns protruding from the top of it. You're eyes glow a bright yellow and you have vertically slitted pupils. Black and yellow fur covers it completely";
	now body entry is "is quadrupedal in nature, and beastly in stature. Your hulking form is somehow both lithe and strong, conveying a sense of immense power. A deep black fur covers your back and sides, with a bright yellow covering your stomach and chest";
	now skin entry is "thick and surprisingly soft fur. Beneath the fur lies black";
	now tail entry is "You have three long tails that are jet black up until the tips, which seem to burn with a demonic yellow fire.";
	now cock entry is "[one of]vulpine[or]knotted[or]fox[or]demonic[at random]";
	now face change entry is "as you feel a long and tapered muzzle growing outwards. Your ears shift to the top of your head, becoming triangular in shape and growing a bit larger. A sudden pain rushing through your head as two horns suddenly sprout just behind your ears";
	now body change entry is "your body shifts, forcing you onto all fours. Both your arms and legs lengthen, and your body in general also grows larger. Your legs snap and crack as they rearrange themselves, becoming digitigrade. Your hands and feet become that of a fox's paws, and your nails turn into long and sharp claws";
	now skin change entry is "fur begins to sprout all over your body, with differing colors on different parts. Your chest and lower chin grow a bright yellow fur, while the rest of your body grows a deep jet-black instead";
	now ass change entry is "a tails suddenly sprouts from the base of your spine, growing upwards of three feet long before an immense heat runs down the new appendage. It pulls apart into three distinct tails, each long and fluffy, ending in a burning yellow flame";
	now cock change entry is "its tip tapers out, becoming distinctly vulpine. The shaft bulges and ripples as four distinctly draconic ridges form along the underside, and its color changes, becoming dark gold at the base, and a bright yellow at the tip. A large knot forms at the base. A steady stream of molten looking pre dribbles from your tip before the whole thing recedes back into its new sheath";
	now str entry is 41;
	now dex entry is 30;
	now sta entry is 50;
	now per entry is 35;
	now int entry is 50;
	now cha entry is 40;
	now sex entry is "Male";
	now HP entry is 200;
	now lev entry is 15;
	now wdam entry is 60;
	now area entry is "Nowhere";
	now cocks entry is 1;
	now cock length entry is 32;
	now cock width entry is 24;
	now breasts entry is 0;
	now breast size entry is 0;
	now male breast size entry is 0;
	now cunts entry is 0;
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 45;
	now loot entry is "demon fox fur";
	now lootchance entry is 50;
	now scale entry is 4;
	now body descriptor entry is "[one of]beastly[or]fluffy[or]lithe[or]hulking[at random]";
	now type entry is "vulpine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;
	now altcombat entry is "default";


Section 3 - Item

Table of Game Objects(continued)
name	desc	weight	object
"demon fox fur"	"A small tuft of black and yellow fur you managed to find after fighting the Demon Fox"	1	demon fox fur

demon fox fur is a grab object.

instead of sniffing demon fox fur:
	say "The fur has a distinct, musky smell to it, reminding you of the fox you got it from.";

the usedesc of demon fox fur is "[DemonFoxFurUse]";

to say DemonFoxFurUse:
	say "You shrug before opening your mouth and eating the fur. Oddly enough, it almost seems to heat up, before it dissolves in your mouth, a strong wave of heat rushing through your body.";

demon fox fur is infectious. The strain of demon fox fur is "Demon Fox".

Section 4 - Tome Specific Scenes

to say DemonFoxMenu:
	say "     You recite the incantation shown in the book, albeit with a little difficulty. With a flash of light, you see the demon fox from before standing in front of you.";
	if DemonFoxStatus is 10:
		say "     'Well, if it isn't my pet from before...' the beast purrs out. 'You gonna try fighting me again? If so, I'm really not in the mood. I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFoxStatus is 11; [met after losing to him, he apologized]
		now TomeTimer is turns;
	else if DemonFoxStatus is 11 or DemonFoxStatus is 21 or DemonFoxStatus is 31 or DemonFoxStatus is 42:
		say "     Ren looks over you before he shakes his head. 'I already told you, kid, I'm not looking for another go just yet. Maybe sometime in the future.' With that abrupt dismissal, the fox disappears once more.";
	else if DemonFoxStatus is 20:
		say "     'Well, if it isn't my pet from before...' the beast purrs out. 'You wanna try actually fighting me this time? If so, I'm really not in the mood. I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFoxStatus is 21; [met after submitting, he apologized]
		now TomeTimer is turns;
	else if DemonFoxStatus is 30:
		say "     'Well, if it isn't the kit from before...' the beast purrs out. 'You gonna run away again? If so, I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFoxStatus is 31; [met after fleeing, he apologized]
		now TomeTimer is turns;
	else if DemonFoxStatus is 40 or DemonFoxStatus is 41:
		say "     'Well, if it isn't you,' the demon greets in a surprisingly happy tone. 'You know, it's rare for a mortal to beat me in combat, but you managed it, amazingly. I respect you for that,' he says. 'The name's Kal['] Ren, by the way. You can just call me Ren.' You tentatively introduce yourself as well.";
		say "     'I know I said you could summon me if you were ever in the mood for a good breeding, but funnily enough, I'm actually not really feeling up to it right now. Sorry to say that.' He hesitates for just a moment before continuing, 'Maybe sometime in the future, though. I'll admit that you've piqued my interest.' Without giving you a chance to reply, he disappears in a flash of light, leaving you somewhat dumbfounded at the whole interaction.";
		now DemonFoxStatus is 42;
		now TomeTimer is turns;

to say DemonFoxFirstEncounter:
	say "     Out of nowhere, you're tackled to the ground! A large weight is pressing down upon your back and feel the hot breath of something along the back of your neck. Pinned as you are, you're unable to get a good look at your assailant, even as you feel sharp claws rip through your clothing, leaving you fully exposed to whatever it is that's attacking you. Suddenly, you feel a long, fluffy object wrapping around your midsection before it hoists you into the air, tossing you back onto the ground on your back. You're eyes widen and you let out a gasp as you see the huge demonic fox you read about earlier standing over you.";
	say "     Before you get a chance to react, the fox has you pinned once more, its massive forepaws pinning you to the ground as it snarls in your face. 'Seems like I've finally got something to play with,' he says, surprising you slightly. 'I'm going to enjoy [if player is mpreg_ok]breeding[else]fucking[end if] you like the bitch you [if player is submissive]are[else]should be[end if].'";
	WaitLineBreak;
	say "     Mustering your strength, you manage to throw the beast off of you, causing him to let out a surprised grunt. You quickly scramble to your feet and ready yourself for a fight. 'Oh, so you're a feisty one, eh?' he asks, licking his chops and narrowing his eyes at you. 'I like that...'";
	now inasituation is true;
	challenge "Demon Fox";
	if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
		if HP of player > 0: [submitted]
			say "[DemonFoxFirstSubmit]";
		else: [lost]
			say "[DemonFoxFirstLoss]";
	else if fightoutcome > 30: [fled]
		say "[DemonFoxFirstFlee]";
	else if fightoutcome < 20: [player won]
		say "[DemonFoxFirstVictory]";
	now inasituation is false;
	now DemonFoxInteractions is 1;
	UpdateTomeEventPending;

to say DemonFoxFirstLoss:
	setmonster "Demon Fox";
	say "     Now that he's beaten the fight out of you, the demon fox pins you once more, his heavy weight pressing down onto you. 'You should've just submitted. Now I'm going to have to punish you,' he growls out. It's then that you notice his entire body expanding, growing large enough to make you look rather small. Only a single paw rests on your chest now, as that's all he needs to keep you in place. He cocks his head to the side, contemplating his next move. Suddenly, you feel one of his long tails wrapping around your torso, lifting you into the air. He roughly tosses you down stomach first before his paw finds its place on your back once more, forcing your head down and your ass up.";
	say "     You're not given any time prepare for what comes next. The demonic vulpine roughly shoves his length into your hole, stretching you painfully wide around the head alone. He doesn't stop there, however. Instead, he pushes even further into you. You feel your hole yawning open wider and wider as the first ridge of his cock slips into you. Soon enough, the next ridge is sliding in as well, then the next, and the next. You can feel his massive knot up against your hips, and you can see your stomach stretching out almost comically in the shape of his cock. Soon enough, he pulls back, each ridge leaving you with a wet squelch. Eventually, only the tip of his shaft remains inside you.";
	WaitLineBreak;
	say "     You're only given a moment of relief, however, before he begins pushing the massive tool back into you. He manages to push in to the knot a little more quickly this time, your passage slowly loosening enough to make it slightly less painful. Soon enough, the fox has built up a rhythm of thrusting in and out of you. His knot starts to bash against your entrance as he becomes increasingly determined to impale you with it, and the thing is wider than your hips! He lets out a grunt with each and every thrust, pushing harder and harder into you.";
	if player is twistcapped:
		say "     Somehow, you can feel the knot slip further and further in, your twisted body somehow able to accept the impossibly wide mass. Soon enough, the knot has passed its widest point, and the rest is pulled into you with a loud squelch. The demon on top of you lets out a loud howl of pleasure before his knot swells even wider, locking your already tied hole even more. [if cocks of player > 0]Your own cock[smn] throb[smv] as you release your [cum load size of player] load onto the ground, the pressure on your prostate driving you over the edge. [end if]He leans down and bites into your shoulder roughly as he climaxes, rope after rope of molten cum rushes into you, quickly rounding you out. His orgasm doesn't seem like it's going to abate any time soon, however, as more and more cum spills into you. Looking down at your bloated belly, you swear you can see a faint glow through your skin, even! By the time his climax comes to an end, he lets go of your shoulder, a trickle of blood dripping from his maw before he harshly yanks his tool out of you, the knot popping out loudly.";
	else:
		say "     Despite his best efforts, the knot is just too big to fit. This doesn't seem to bother the fox too much, however, as he simply thrusts against you once more before howling as he reaches his climax, rope after rope of molten, glowing cum spilling into your bowels. There's so much of the stuff that your belly starts to bulge from the sheer amount of fluid filling it. Eventually, the cum has nowhere left to go, managing to find its way out of your ass around his massive shaft. By the time his climax has ended, you're thoroughly drenched in fox cum, the hot ejaculate forming a pool around the two of you.";
	say "[mimpregchance]";
	WaitLineBreak;
	say "     The fox gives you a look, observing your battered form as if admiring his handiwork. 'I told you that you should've submitted, pet,' he says. 'Maybe next time this won't have to be so hard...' By the time you've recovered enough energy to glance over your shoulder, the fox is gone, apparently having decided to leave after finishing with you. After that encounter, you're not sure why you'd want to, but perhaps you could [italic type]summon the fox again sometime[roman type]?";
	infect "Demon Fox";
	infect "Demon Fox";
	now DemonFoxStatus is 10; [lost]
	WaitLineBreak;

to say DemonFoxFirstSubmit:
	setmonster "Demon Fox";
	say "     You raise your hands in defeat, signaling to the fox that you want no trouble. He leers at you, baring his maw full of razor sharp teeth at you. 'I knew you'd submit to your new master...' he says before advancing on you. He pounces, pinning you under his massive weight once more, but this time he doesn't stop there. Before you know what's happening, he's forced his muzzle up against your mouth, his tapered tongue slipping in between your lips with ease. [if player is submissive]You can't help but let out a moan as his ridiculously long organ explores your mouth[else]You have to resist the urge to gag as his ridiculously long organ ravages your mouth[end if]. His tongue flicks around the inside of your mouth a few more times before he pulls back, a string of saliva connecting the two of you. 'See?' he pants. 'That wasn't so bad, now was it?'";
	say "     You're not given a chance to reply as you feel that tongue moving across your neck and down your torso, leaving behind a trail of slick saliva. [if cocks of player > 0]Eventually, it finds its way to your cock[smn] and balls, caressing them. [end if]You have to stifle a gasp as the slimy organ slips between your ass cheeks. He laps against your hole a few times, coating you in his saliva before he [if anallevel is 3]plunges his tongue inside you, slipping past your tight ring. He gives you a few licks there as well before he [end if]moves on. He raises his head to meet your gaze before he lets out a possessive growl.";
	WaitLineBreak;
	say "     'Get on all fours,' he commands. You hastily obey, presenting your hindquarters to him, and he rumbles in approval of what he sees. [if player is mpreg_ok]'I'm gonna enjoy putting my pups in you,'[else]'I'm gonna enjoy taking you,'[end if] he growls. You feel his weight upon you once more as he mounts you, lining his massive cock up with your hole before thrusting nearly all the way in with one harsh movement. You gasp in pain from the sudden intrusion, but that doesn't discourage him. He pulls out of you just as roughly as he entered, the ridges along the underside of his cock wracking you with both pain and pleasure. He thrust back in once more, this time with a little less resistance. This cycle keeps repeating, growing in speed until he's rutting against you, his massive knot slapping against your ring loudly.";
	say "     With a howl of pleasure, he shoves forward one last time, his knot spreading you painfully wide before it manages to pop in. Once it's inside, it swells even larger, firmly locking the two of you together. [if cocks of player > 0]The pressure on your prostate is enough to set you off, spilling your load onto the ground beneath you. [end if]He gives one last growl before you feel his sharp teeth on your shoulder. They dig into your flesh as he bites down. You can feel his cock releasing its burning semen inside you, rope after rope of glowing cum erruping into your bowels. By the time he's finished climaxing, your belly is decently rounded out, and you can't help but moan from the heat of the fluids inside of you. With his orgasm over, he releases his hold on you, and harshly yanks his knot out of you. 'That was fun, pet,' he says. 'I hope we're able to do this once more sometime soon.'";
	say "[mimpregchance]";
	WaitLineBreak;
	say "     You turn to look at the fox once more, only to be greeted with empty space. It seems the fox has gone for now... [italic type]Perhaps you could summon him once more with the book, if you so desire.[roman type]";
	infect "Demon Fox";
	infect "Demon Fox";
	now DemonFoxStatus is 20; [submitted]
	WaitLineBreak;

to say DemonFoxFirstFlee:
	say "     You snatch up the tome as you flee, clutching the still open book to your chest closely. The fox is hot on your heels, determined to not let you escape. 'Get back here!' he shouts. You speed up even further, determined to escape the hellish beast before you turn into an alleyway. As you race further down the narrow space, you round a corner only to be greeted by a rather tall brick wall. Whirling around, you see the fox has had no trouble keeping up with you.";
	say "     'You've got nowhere left to go,' he growls out. As much as you wish that weren't true, you realize that he's correct. You're not really given any extra time to contemplate this however, as he suddenly crouches down, readying himself to pounce on you. Desperately, you hold the tome up, facing him. He leaps, and you close your eyes in preparation to be pinned beneath him once more. A few seconds pass before you realize that he still hasn't collided with you, and you tentatively open your eyes once more. Looking around, the fox is nowhere to be seen.";
	now DemonFoxStatus is 30; [Fled from the fox]
	WaitLineBreak;

to say DemonFoxFirstVictory:
	say "     You strike the defeated demon one more time for good measure, and he lets out one last yelp of pain before he shakes his head. 'Alright. Enough. I see that forcing myself onto you may not have been wise,' he admits, looking over your form. 'Considering your victory, it's only fair that I offer some sort of retribution.' You ask him to elaborate. 'What I'm saying is, I will gladly take you, [italic type]gently[roman type], of course. If you're not interested in that, then I'm afraid there's not much more I can offer. I'm not one to bottom, and even if you try to force me to, I'll just go back into the book. It's up to you.'";
	say "     [bold type]Well, considering the offer, what do you do?[roman type][line break]";
	say "     [link]Let the fox mount you[as]y[end link] - (Y)[line break]";
	say "     [link]Decline his offer[as]n[end link] - (N)[line break]";
	if player consents:
		say "     You tell the fox that you'd like him to fuck you, and he seems to get an excited gleam in his vulpine eyes. 'Glad to hear it. I'll be gentle,' he purrs out, and you can't help but shudder in anticipation. 'Now why don't you get into position for me?' You quickly comply, presenting your ass to him, waggling it back and forth teasingly. He lets out a chuckle before he sniffs the air a few times. Pressing his snout into your crack, the fox gives a few sniffs there as well before his tapered tongue darts out of his mouth, giving you a few licks. 'You mortals have always tasted good...'";
		WaitLineBreak;
		say "     You can't help but whine in disappointment as his muzzle departs from your rear. That disappointment only lasts for a moment, however, as you soon feel him wrapping his forepaws around your was, mounting you. He gives you a few gentle prods with his massive cock before he pushes his head into you slowly. You can't help but let out a moan as he gently pushes more of his shaft into you, until his first ridge begins to push in. 'This might hurt a bit,' he warns you as he pushes a little harder. The ridge eventually manages to go in, albeit with a little bit of pain. Soon enough the next ridge is pressing into you. That one goes in a little easier than the first. The next two are even easier than the previous. With his knot resting against your entrance, the fox grunts before pulling back out. Each ridge leaves you with a soft squelch.";
		say "     Now that only his tip remains inside you, he pushes back in. This thrust goes by faster, your hole getting used to his size. Pretty soon, he's built up a decent rhythm, and you can't help but push your own body back, meeting his thrusts. 'I'm going to speed up now,' he warns you. His next thrust is much more aggressive and primal, his knot bashing against your entrance. Your own thrust grow in fervor, determined to get the demon's massive knot in you. With each thrust, more and more of the knot slips inside you, until it finally passes its widest point and your own body pulls it in the rest of the way. His knot firmly buried inside you, it swells to its full size, ensuring the two of you won't be moving anytime soon. He let's out a howl of pleasure as his cock throbs and erupts inside you, rope after rope of molten, glowing cum spilling into you. [if cocks of player > 0]You own orgasm follows shortly after, your cock[smn] shooting your [cum load size of player] load onto the ground below you. [end if]More and more of his molten seed fills you, and your belly swells with its weight. By the time his orgasm abates and his knot has shrunken down, your belly is rather swollen and decently rounded out from the load. 'That was fun, kit,' he pants in your ear. 'I think you'd enjoy being my pet, if you liked that...'";
		say "[mimpregchance]";
		WaitLineBreak;
		say "     Eventually, he pulls out of your hole, a dribble of his glowing cum flowing out. He gives a few laps at your stretched hole before walking around to face you. 'We should do this again sometime,' he growls suggestively. 'However, I think it's time for me to depart.' A blinding flash suddenly fills your vision, and once it clears, he's gone. If you'd like to see him again, you could [italic type]use the tome[roman type].";
		infect "Demon Fox";
		now DemonFoxStatus is 41; [won, let him fuck you]
	else:
		say "     You tell the demon that you're simply not interested, and he gives a nod. 'A pity really. You looked like you'd be a fun partner,' he laments. 'I'll respect your wishes, however. If you ever change your mind, you know where to find me.' In a blinding flash of light, the fox is suddenly gone, the tome laying where he once stood.";
		now DemonFoxStatus is 40; [won, but refused sex]
	WaitLineBreak;

to say DemonFoxFirstRead:
	say "     Looking over the page about the fox, you manage to learn a few things. The demon fox is apparently able to change its size to whatever it desires. In addition, its cum is said to glow a bright orange, almost like lava. The fox is also supposedly very possessive and domineering, desiring to have others submitting to it. Anyone who has encountered the beast has reaffirmed that fact. [if cocks of player > 0 and cunts of player is 0]Interestingly[else]Thankfully[end if], it only seem to be attracted to [italic type]males[roman type].";
	now DemonFoxRead is true;
	now TomeInteractions is 2;
	now TomeEventPending is true;

Demon Fox ends here.
