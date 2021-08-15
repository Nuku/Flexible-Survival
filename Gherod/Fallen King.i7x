Version 2 of Fallen King by Gherod begins here.

"Expands on a Void Realm encounter, the Dark Tyrant, with additional content"

[Version 1 - File Created]
[Version 2 - Added Symbiosis scene and next Intelligence stage]

[Stats]
[Intelligence - Dark Tyrant learns with further interactions with the player]
[ 0 - Nothing yet ]
[ 1 - Had first sexual contact, nothing special yet ]
[ 2 and 3 - First stage, nothing different ]
[ 4 - He now fully comprehends mortal language ]

Section 1 - Event

[Dark Tyrant Friendliness - INCOMPLETE]

Table of GameEventIDs (continued)
Object	Name
Friend Of The Darkness	"Friend Of The Darkness"

Friend Of The Darkness is a situation.
ResolveFunction of Friend Of The Darkness is "".
Sarea of Friend Of The Darkness is "Nowhere".

[RESOLUTION STAGES]
[0: Dark Tyrant remains natively hostile, nothing happened]
[1 to 2: He will not immediately attack the player, instead asking for more essence. Will attack if request is not obliged]
[3: Prompts friendship]
[-1: Dark Tyrant will be hostile forever.]

Table of GameEventIDs (continued)
Object	Name
DarkTyrantQuest	"DarkTyrantQuest"

DarkTyrantQuest is a situation.
ResolveFunction of DarkTyrantQuest is "".
Sarea of DarkTyrantQuest is "Nowhere".

[RESOLUTION STAGES]
[0: Didn't talk to Toron yet]
[1: Talked to Toron]
[2: Solved by Embracing, continuing his questline]
[-1: Solved by Slaying]

[---]

to say ToronTalkDarkTyrant:
	say "     Following the events you experienced in the Void Realm, you could not help but notice that your actions brought something [bold type]terrible[roman type] upon you... So, in seek of advice, you ask Toron what he could tell you about this big, black, gooey, muscular, obscenely hung and very hungry giant who stalks you everywhere once you set foot into the Unknown. His eyes widen as you make reference to the Dark Tyrant. 'So, you've unleashed the greatest menace of the Void? Congratulations! Now it is only a matter of time until it starts to consume everything it sees and walk into the outside world.' That did not sound comforting at all, so you let him know that you expected he would say something... else.";
	say "     'What, you wanted to be consoled? Wanted me to tell you [']oh don't worry! I'll fix that up for you!?['] Well... No luck there, I'm afraid. You've done something terrible, and now you should deal with that yourself.' he says, in a very intimidating way, you have to admit. After he allowed your several seconds of self-thought and reflection, he then continues to speak. 'Now that you have felt guilt, I can tell you what you can do. The only way to deal with the Dark Tyrant is by either [bold type]slay[roman type] him or [bold type]embrace[roman type] his existence.'";
	WaitLineBreak;
	say "     Oh, so there is something you can do! That might have been somewhat evil on Toron's behalf, but you are fast to return your focus to what is important, and that is asking the demon bartender how to achieve any of those things. 'Good luck trying to slay him, I suppose. Well, you could try to use the [bold type]Abyssal Edge[roman type] on him, it'll make things easier. Otherwise, all you have to do is encounter this Dark Tyrant while in the Core Line of the Void Realm and [bold type]feed him Null Essences[roman type]. He'll be happy and leave you alone, since you are sating his hunger.'";
	say "     You thank him for the explanation, and feel ready to set yourself onto some sort of plan... Maybe.";
	if Resolution of DarkTyrantQuest is 0:
		now Resolution of DarkTyrantQuest is 1;

Section 2 - Dark Tyrant as NPC

an everyturn rule:
	if Resolution of DarkTyrantQuest >= 2:
		if lastfuck of Fallen King - turns >= 6 and daytimer is night: [Solved by Embracing, Dark Tyrant appears at Night]
			now Fallen King is in Hellfire Unknown;
		else:
			now Fallen King is nowhere;

a postimport rule:
	if Resolution of Gift From Abyss is 2 and Resolution of DarkTyrantQuest > -1 and Resolution of DarkTyrantQuest < 2: [sword has been removed, quest not resolved]
		now VRDarkTyrantTracker is 0;

Table of GameCharacterIDs (continued)
object	name
Fallen King	"Fallen King"

Fallen King is a man.
ScaleValue of Fallen King is 5. [Pretty Gigantic]
Body Weight of Fallen King is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Fallen King is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Fallen King is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Fallen King is 9. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Fallen King is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Fallen King is 24. [length in inches]
Breast Size of Fallen King is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Fallen King is 0. [count of nipples]
Asshole Depth of Fallen King is 99. [inches deep for anal fucking]
Asshole Tightness of Fallen King is 5. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Fallen King is 1. [number of cocks]
Cock Girth of Fallen King is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Fallen King is 99. [length in inches]
Ball Count of Fallen King is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Fallen King is 7. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Fallen King is 0. [number of cunts]
Cunt Depth of Fallen King is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Fallen King is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Fallen King is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Fallen King is false.
PlayerRomanced of Fallen King is false.
PlayerFriended of Fallen King is false.
PlayerControlled of Fallen King is false.
PlayerFucked of Fallen King is false.
OralVirgin of Fallen King is false.
Virgin of Fallen King is true.
AnalVirgin of Fallen King is false.
PenileVirgin of Fallen King is false.
SexuallyExperienced of Fallen King is true.
TwistedCapacity of Fallen King is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Fallen King is true. [steriles can't knock people up]
MainInfection of Fallen King is "".
Description of Fallen King is "[Fallen Kingdesc]".
Conversation of Fallen King is { "<This is nothing but a placeholder!>" }.
The scent of Fallen King is "     The Dark Tyrant, or Fallen King, smells like nothing, a very characteristic trait of the void".

to say Fallen KingDesc:
	project figure of DarkTyrant_icon;
	say "     The one and only great tyrant of the Void, feared by almost every creature in the Void Realm. Thought to be a [']he['] due to its enormous male appendage, the gigantic body of pitch black goo gives you a [']toothy smile['], with an arrangement of razor sharp teeth that reminds you of a shark's maw. As a long reaching tongue comes out, there is a constant stream of gooey drool being a clear suggestion of how much this monster hungers. He assumes the shape of a freaky, gigantic and shredded humanoid monster with its dark slimey form, enough to overpower anything and anyone in his path. The only thing you cannot help but avoid looking at is his eyes. His bottomless gaze strikes you with a disturbing familiarity...";

Section 2-1 - Dark Tyrant/Fallen King Talk Menu

FallenKingDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Fallen King:
	now FallenKingDoneTalking is false;
	say "     You cautiously approach the black goo giant, who seems very happy to see you. His perpetually erect manhood gives a throb as you stand near him, and he greets you with a subtle and respecting bow.";
	say "[FallenKingTalkMenu]";

to say FallenKingTalkMenu:
	say "     [bold type]Do you want to try to communicate with the Dark Tyrant?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about who or what exactly he is";
	now sortorder entry is 1;
	now description entry is "You need to know, right";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask what does he need you for";
	now sortorder entry is 2;
	now description entry is "He said you could help him, ask about it";
	[]
	if "Given Dark Embrace" is listed in traits of Fallen King:
		choose a blank row in table of fucking options;
		now title entry is "Talk about that embrace";
		now sortorder entry is 3;
		now description entry is "It was pretty intense, the way he pulled and kept you inside him... ask him about it";
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
				if (nam is "Ask about who or what exactly he is"):
					say "[FallenKingTalkWho]";
				else if (nam is "Ask what does he need you for"):
					say "[FallenKingTalkHelp]";
				else if (nam is "Talk about that embrace"):
					say "[FallenKingTalkEmbrace]";
				wait for any key;
				if FallenKingDoneTalking is false:
					say "[FallenKingTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you have to take your leave. The Dark Tyrant stands and nods in apparent understanding.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say FallenKingTalkWho:
	if Intelligence of Fallen King < 4:
		say "     Carefully, you try asking who he is, as everyone mentions him as some sort of apocalyptic entity that could bring the world to a terrible end and all that jazz. Maybe you do not tell him exactly that, but you think he gets the idea. He seems to crouch in order to get to the same eye level as you, that endless darkness in your eyes almost taking you in by themselves, leaving you with a chill running down your spine. He does not answer that question, though the way he locks his eyes with you is terrifying. You find yourself trembling and shaking as you try to patiently wait for any verbal answer, but it seems he has none. Only that bottomless, hopeless and disgraceful gaze...";
		if "Strong Psyche" is listed in feats of Player:
			WaitLineBreak;
			say "     [italic type]But amidst your observation, you perceived someone lurking in that darkness. A person whose essence is shockingly familiar, but you cannot say why. Sometimes, it felt like you were looking at a mirror of your own self, yet without recognizing your reflection. The words [']terrible truth['] linger in your mind...[roman type][line break]";
			WaitLineBreak;
		say "     He breaks it just before you are thrown into a panic attack, which was steadily building up. Your heart is still beating really fast and you do not know why. He has not answered your question in a way you could easily comprehend, but something about this is clearly off.";
		SanLoss 5;
	else if Intelligence of Fallen King >= 4:
		say "     Now that you have strengthened the Dark Tyrant's ability to communicate, you decide to try asking him again about who he truly is. He, once more, kneels before you in order to speak. 'I apologize, for the first time I attempted to explain to you, I must have damaged your mind. Fear not, for now I know better.' He extends his hand towards you, beckoning you to join him in a touch. As you place your hand over his, you feel a warmth that you would not foresee coming from such a terrible presence. Somehow, you feel drawn towards him, as if he completed you, in some way. It is difficult to explain, but it makes all sense in your mind as you gaze deeply into his bottomless eyes.";
		say "     'I embody the existence of all those who, in your place, have succumbed to darkness. Within the universe, they are pieces of you who have lost their ways. You, however, are special. You endure... And it makes me stronger every second we remain close to one another...' - He then makes a pause, his gooey form engulfing your hand and forearm as streams of it crawl over your skin - 'This is the terrible truth you face... the fact that I embody your failure. Someone, somewhere, within the realm of existence, has fallen in your place. Not you, though. You remain strong, and you are my hope. Perhaps one day, we can rule once more.'";
		say "     With that, he retracts his dark goo from you and returns to his former standing position. 'I hope I have sated your curiosity.'";

to say FallenKingTalkHelp:
	if Intelligence of Fallen King < 4:
		say "     He mentioned that he needed your help before you became... friends. So, now that he has found you, as he said he would, you decide to ask him about it. He looks at you, attentively listening to your question, and then seems to be thinking about how to answer it. 'I... need... Learn... help. You can.' says the black giant, and you encourage him to continue, as that has not said much. He seems a bit frustrated to not be able to find better words, but he tries. 'Need... essence. Not... the same. Different. Yours.' His deep and eerie voice gets unsettling the more you hear, and the way he says that makes you feel very, very uncomfortable. He notices this, and beckons you to wait as he tries this again.";
		say "     'I... No... Want to... eat you.' he hurries to say, and that kind of relieves you, but you are still finding it difficult to understand him. 'Only feel... Is safe.' he says, gesturing a sort of an embrace motion as his huge goo rod twitches.";
		WaitLineBreak;
		say "     So, all this time, the freakingly horrible and terrible Dark Tyrant was just trying to hit on you? Well, maybe the way his dick keeps throbbing when he sees you was already a sign, though that sort of relieves you even more. Not completely, though, as he still looks terrifying. You nod, declaring that you understood what he meant, and you would be happy(?) to sate him in that way, as well. 'With help, I... No longer... Just... Fallen. I... claim... ... my place.'";
		say "     He claims to be a Fallen King... Hopefully this deal is as safe as he says!";
		if Libido of Fallen King is 0:
			now Libido of Fallen King is 1;
	else if Intelligence of Fallen King >= 4:
		say "     Given how much progress you have made, you ask the dark goo giant how you can still be helpful to him. 'I have learned that this intercourse we go through is, in fact, called sex. I suggest we continue doing it, as sex helps me learn more. Besides, it... does feel good. I have not experienced this with anyone else, so perhaps, you could introduce me to practices you mortals have with each others. Hopefully, this exchange will help you trust me more, as well.' He replies, his huge and perpetually erect manhood twitching before your eyes as he speaks.";

to say FallenKingTalkEmbrace:
	if Intelligence of Fallen King < 4:
		say "     Following your interaction with the Dark Tyrant, you mention that whatever he did to you in that embrace was really intense, and just feel curious about it all. He tries to mutter a few words to explain himself. 'You... in me... help... my strength. And... I learn.' He gives it a pause before continuing, as if thinking of more words. 'I... hope- no... try...! To make you... enjoy.' You figured that this is a process he needs to evolve and develop himself in the way he needs, and all the crazy stuff that happens is just a way to try make you enjoy yourself while he does it. You have been in less pleasant conditions, right? 'I... want... thank you... For... Everything. Hope... I... talk better... soon. In future. Now... Is... hard.'";
		say "     You feel the giant really struggles to speak, most of the times";
		if Intelligence of Fallen King < 3:
			say ". Perhaps if you continue to interact with him the way you have, he will become smarter over time? You can only try a few couples of times more and then ask him about it again, afterwards.";
		else if Intelligence of Fallen King is 3:
			say ". What you have done so far seems insufficient... So, if letting him take you within him bolsters his ability to communicate, perhaps you could suggest a [bold type]deeper connection[roman type]? There has to be more options to perform this sort of dark embrace...";
	else if Intelligence of Fallen King >= 4:
		say "     After having gone through such an experience, you decide to check if this version of his dark embrace helped him, in any way. He shows you a smile and kneels before you. 'It has. I have finally comprehended your language, but I must keep on learning. If you were to offer yourself to me more... I would be very grateful and, of course, repay you in every way I can.' The dark goo giant speaks, with a ghastly deep voice still.";

Section 2-2 - Fallen King Sex Menu

instead of fucking Fallen King:
	project figure of DarkTyrant_icon;
	if Libido of Fallen King is 0:
		say "     You want to have sex with a monster that could consume your entire self as fast as you could blink, erasing your existence from the face of Earth?";
		say "     That is reasonable, but perhaps you should try talking to him, first.";
	else if Libido of Fallen King > 0:
		say "     You have given it some thought, and decided that you want to try to [']help['] the Dark Tyrant. He seems happy, as shown by his usual throbbing and toothy smile (or at least you think he is smiling). He nods and awaits you to come to him, his arms open and his whole muscular body looking [if player is kinky]arousingly[else]disturbingly[end if] hungry.";
		say "[DarkTyrantSexMenu]";

to say DarkTyrantSexMenu:
	say "     [bold type]Beware that your interactions with the Dark Tyrant will take a toll on your sanity levels. Make sure you are fully prepared before engaging with him, or you may lose your mind once you're done with the deed.[roman type][line break]";
	say "     How would you like to proceed?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Walk into his embrace";
	now sortorder entry is 1;
	now description entry is "Let yourself be at his mercy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Grab and worship that massive cock";
	now sortorder entry is 2;
	now description entry is "He's totally been asking for it, right";
	[]
	if Intelligence of Fallen King >= 3 and "Given Dark Embrace" is listed in traits of Fallen King:
		choose a blank row in table of fucking options;
		now title entry is "Let him get inside you";
		now sortorder entry is 3;
		now description entry is "Have him temporarily inside your body";
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
				if (nam is "Walk into his embrace"):
					say "[DarkTyrantSexEmbrace]";
				else if (nam is "Grab and worship that massive cock"):
					say "[DarkTyrantSexCockWorship]";
				else if (nam is "Let him get inside you"):
					say "[DarkTyrantSexSymbiosis]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You back off with your decision, which is greeted with sad disappointment.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DarkTyrantSexEmbrace:
	if Intelligence of Fallen King is 0: [first time ever in sexual contact with him]
		say "     Nervously, you approach the massive black goo man, whose tongue comes out, wiggling in eagerness, to play with you as his appendage grows even more solid than before. The Tyrant is clearly excited to have you walk so close to him, but he senses your anxiety. Instead of pulling you with the enthusiasm he shows, he crouches and extends his large hand towards you, letting you touch his palm without making any advance on you. He waits for you to move forward and reciprocate. It feels very warm and inviting, almost like human flesh, yet you feel you could dip your fingers in it as deep as you wanted. It is a really pleasant sensation that helps you relax, and he tries to comfort you with some additional words. 'Worry... not. You... safe. Promise.'";
		say "     Letting your guard down is particularly a challenge, but eventually, you manage to do it thanks to his careful reception.";
		now Intelligence of Fallen King is 1;
		WaitLineBreak;
	say "     As you get closer to the big black goo giant, you let him know that you will allow him to touch and feel every inch, corner and angle of your body, if that is what he needs. While this does sound exciting to the Fallen, [if player is naked]he is first taking a moment to fully appreciate your naked body[else]he does not do anything immediately, as you still have clothes on which, you think, would be good to have removed[end if]. Once he has taken your form into his fond memories, he extends his hand and beckons you to touch him. The dripping liquid goo surrounding him moves through his muscular torso and towards you, and up close, you can notice a hint of transparency in his flesh. The giant [if scalevalue of player < 5]crouches to get on the same eye level as you and receives your smaller form with open arms[else]receives your also gigantic form with open arms[end if], and this is when things start to get steamy.";
	say "     His huge manhood never, for one second, was not throbbing hard and oozing goo, its perpetual erection only intensifying and gaining even more size due to how close you are to him. Of course, such a massive thing happens to be in your way to the Tyrant, so you careful pass around it, and he gestures you to turn your back to him as he places his large gooey hands on your shoulders and chest, rubbing down on you in a very relaxing manner. You allow yourself to give in to his embrace as his blackness begins to surround you, and if you had any regrets before, those would serve no purpose from now own. He begins to take your body into his, your hands and legs sinking into his gooey form as he keeps pulling you in, the rest following right after and only leaving your head poking through his [if scalevalue of player is 5]pecs[else if scalevalue of player is 4]midriff[else if scalevalue of player is 3]abs[else]pelvic area[end if].";
	WaitLineBreak;
	say "     You have a prime view of his excitement as his already giant dick continues to grow and leak, and your whole body feels warm and wet, as if it was submerged, but on an extremely thick water in which you could feel its flowing brushing and waving against you, some parts of it even feeling like solid flesh. The Tyrant continues to sink your body deeper into him, and just when you thought he would allow you to continue breathing, your head is also shockingly pulled in, replacing your view of the world with dark shades of purple. Fortunately, you can still breathe, somehow, as your body disappears into him, under thick layers of flowing goo embracing you and keeping you trapped inside the giant.";
	say "     These gooey surroundings feel warmer and warmer to you, and never to any uncomfortable level, much the contrary. Your arousal quickly starts to build up as, it seems, his entire insides went from just flowing around you into bumping, rubbing and stroking your whole self in ways unthinkable. It feels as if there were some sort of gooey tentacles within his gooey mass curling around and feeling you up while you are helplessly floating inside the Tyrant. It is then that you realize he is probably doing something similar to that, as you feel a large mass of solid goo poking at your [if player is female]holes[else]hole[end if] and mouth. You are solidly held in place, as well, unable to move your arms and legs around, nor anything at all...";
	WaitLineBreak;
	say "     There is no way to resist what happens next, his gooey extensions beginning to intrude into your body, stretching your mouth open[if player is female], spreading your pussy[end if] and invading your anus. You are thoroughly claimed from the outside and the inside as he presses his gooeyness deeper into you, feeling like at least [if player is female]three[else]two[end if] really thick and mounstrously long cocks were burying themselves deep inside you, without any resistance from your part. The way they wiggle like throbbing snakes drives you wild with lust more quickly than you can think this situation probably got out of hand, and everything feels so overwhelmingly good that you really do not think about it, at all.";
	say "     The Dark Tyrant has just gotten started with you, fucking your every entrance with hungry extensions of himself while you are helplessly trapped inside him, feeling more like a wiggling thick body of jelly encapsulating and keeping you still while humping and stroking every inch of your body. He reaches deeper within you, as far as he can go, his many goo cocks claiming your insides like horny alpha males breeding you over and over again, triggering all your sweet and sensitive pleasure spots that you want you quiver and squirm inside the Tyrant. Moaning desperately out of all the overwhelming pleasure, your every movement is met with an impossibly thick gooey resistance that quickly drains all your strength.";
	WaitLineBreak;
	say "     He continues to push and pull his inner goo dicks against your entrances, fucking you mercilessly, while the one outside of him causes a deluge of its equivalent of precum in the form of dark goo all over the place. The giant gets so excited that you think he seems to [']cum['] into you, and you feels your insides bloat and swell with warm liquid, quickly making you feel like you just came out of a royal feast with a stomach [if player is female]and womb[end if] so full you think you won't be able to move for a while. As you body reaches its maximum capacity, his extensions stop moving, but they do not remove themselves, and continue to stimulate until your hit your first climax, your [if player is male]man[end if] juices feeding the Tyrant's body generously. The pleasure is so intense you are left weak and trembling...";
	say "     You'd think he would let you go once he had given you an orgasm like this, but he keeps you still inside him, pressing his gooey appendages [italic type]even[roman type] deeper and wiggling them wildly, quickly causing your second orgasm to hit you like a truck, your [if player is male]balls producing and pumping more and more cum[else if player is female]pussy moistening and dripping more of your love juices[end if] as he continues yet fucking all your available holes without mercy. You cannot tell him it is enough, nor that you cannot handle any more, and your biological limiters do not seem to be working as you are yet thrown into a third orgasm, following disturbingly quickly after your last.";
	WaitLineBreak;
	say "     He milks you for everything he can take from you for hours and hours and only leaving you with an overwhelming ecstasy and joyful pleasure you cannot humanly withstand, and at some point, you lose your senses and black out as only your subconscious remains, still letting you know that you are feeling so good you do not want to leave the Dark Tyrant's warm embrace, ever... as these motions repeat themselves in your body and mind endlessly, torturing you with subsequently infinite orgasms as your body is pushed beyond its limits...";
	WaitLineBreak;
	follow the turnpass rule;
	follow the turnpass rule;
	say "     You wake up, very dizzy and soaked in black goo, which is... absolutely everywhere, dripping from the ceiling and making a pool in the room with at least a couple of inches of depth. Your movements are free, but all this dark goo feels so comforting and warm you struggle to tell yourself that you need to get up. In your mind, a dark voice whispers the words [']thank you['], and you look around to see if the Dark Tyrant is still around, but he is gone by now. Your legs are shaking and you can barely stand, but you manage to get out of the goo flooded room and back to the safety of the Club. To your dismay, you feel you still haven't been fully satisfied[if player is male], as you realize you still have an erection standing solidly between your legs[end if], even after what you just went through.";
	NPCSexAftermath Player receives "OralCock" from Fallen King;
	NPCSexAftermath Player receives "AssFuck" from Fallen King;
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Fallen King;
	increase Libido of player by 50;
	if "Strong Psyche" is listed in feats of Player:
		SanLoss 10;
	else if "Weak Psyche" is listed in feats of Player:
		SanLoss 30;
	else:
		SanLoss 15;
	TraitGain "Given Dark Embrace" for Fallen King;
	if Intelligence of Fallen King < 3:
		say "     [bold type]The Dark Tyrant grows stronger...[roman type][line break]";
		increase Intelligence of Fallen King by 1;
	else if Intelligence of Fallen King is 3:
		say "     [bold type]The Dark Tyrant is unable to gain any more strength from this...[roman type][line break]";
	now Fallen King is nowhere;

to say DarkTyrantSexCockWorship:
	if Intelligence of Fallen King is 0: [first time ever in sexual contact with him]
		say "     Nervously, you approach the massive black goo man, whose tongue comes out in eagerness to play with you as his appendage grows even more solid than before. The Tyrant is clearly excited to have you walk so close to him, but he senses your anxiety. Instead of pulling you with the enthusiasm he shows, he crouches and extends his large hand towards you, letting you touch his palm without making any advance on you. He waits for you to move forward and reciprocate. It feels very warm and inviting, almost like human flesh, yet you feel you could dip your fingers in it as deep as you wanted. It is a really pleasant sensation that helps you relax, and he tries to comfort you with some additional words. 'Worry... not. You... safe. Promise.'";
		say "     Letting your guard down is particularly a challenge, but you manage to, eventually, thanks to his careful reception.";
		now Intelligence of Fallen King is 1;
		WaitLineBreak;
	say "     As you get closer to the big black goo giant, you let him know that you would like to feel that huge dick of his, which keeps throbbing endlessly at every other second whenever you are around him. His grin spreads all across his featureless face and his tongue lashes out wiggling hungrily, which you suppose is his non-verbal way to say he loves the idea. He even helps you, reaching for his manhood with one hand and aiming it towards you, the shining dots in his eyes following your movements attentively. Once you get in reach, you put your hands on his shaft, and to your surprise, the thing is quite solid, feeling like any normal fleshy cock, warm and pulsing with life, with the occasional goo drenching your fingers as you move them along his length.";
	say "     It is easy to slide your hands along, though you have a hard time standing as you get closer. His junk is huge and very heavy, and the way he is walking up to you, letting you feel more of him, makes you weak on the legs until you eventually collapse, his massive dong crashing on top of you as he moves to pin you down underneath. With his big dick keeping you lying down on the floor, he is free to rub it across your whole body and drench you in more black goo that keeps oozing from his entire self, but an especially precum-like liquid takes the cake as it envelops you in a sticky mess. At this rate, you will be rapidly overwhelmed by his gooey mass, but his cock, engorged and growing even bigger on top of you, just seems irresistible...";
	WaitLineBreak;
	say "     You continue to stroke him, and it pleases the Tyrant as he lets out a long deep moan that rumbles through the entirety of his black body. However, this is not enough, so you add your mouth to the action and begin to kiss and lick at his giant dick, your tongue moving in circles around his shaft as your arms and legs take his manhood for a sweet loving embrace. It is not like it tastes like anything in particular, as expected from a void creature, but its texture feels extremely pleasant to the touch, and while his precum goo tastes like sticky clean water, you cannot help but gulp it down, that and every drop which happens to land on top of your lips. Quickly, you are drenched in his love goo, and his cock grew so much that you can no longer see anything besides its thick shaft!";
	say "     The Tyrant is clearly extremely aroused by your touching, so you continue, giving his cock more and more pleasure that he so gladly retributes with more mess all over and more size to his appendage, threatening to crush you at any point, its weight starting to become unbearable against your puny body, in comparison... But the worst thing is that the giant is so horny he starts to hump against you...! The imminent danger of getting crushed turns into a potential of drowning in the middle of all his liquids as he pumps more and more of the stuff, rapidly fully enveloping you in sticky goo with each thrust he gives, rubbing the massive dong across your body and leaking tons of more goo...";
	WaitLineBreak;
	say "     At some point, you feel it beginning to want to assimilate with you, pulling you into the impossibly massive shaft, but each movement the Tyrant makes breaks the bounds that would suck you in, sparing you from a time spent inside his dick. You do not feel like this went according to your expectations, but nonetheless, he is enjoying it so much that your body is simply being used as a fuck pillow, for a while. He does realize that you are no longer in his view, all buried under layers of his own goo, so he pulls back and you are brought up again, free from your confinements, but in a quite different setting than when you first started. The Dark Tyrant looks at you, grinning, and you are faced with the tip of his cock presented to you as if you were in a buffet.";
	say "     His slit continues to leak all that sticky goo at every second, but somehow, you can sense that he is close. His legs have moved under your body in a morphed gooey shape to support your current seating place, and you are free to hug his glans and feast on the sensitive gooey flesh. Without hesitating, you do so, and give him your best oral skills at licking his gigantic penis head, using your hands for additional stimulation as it continues to throb without cease. Eventually, it begins to shake and tremble with a lot of force, and literally seconds after, your entire world is an avalanche of cum-like goo drenching and burying you down under a tsunami of it, each shot causing a massive throb on his cock that you can definitely feel!";
	WaitLineBreak;
	say "     More morphing happens all over you as you feel your body being carried around, and the still perpetually hard dick ends up on top to you. The giant has placed you on top of his abs as the tip of his huge manhood rests against your chest, with just enough warm goo oozing on top of your body, this one feeling pleasantly warm and relaxing, as it must have been the last drops of his orgasm. You can still rub it, and it will still leak more and more, and everything else can still happen again and again... but you are exhausted, so the giant simply leaves you be, enjoying your company as you fall into a slumber.";
	WaitLineBreak;
	follow the turnpass rule;
	follow the turnpass rule;
	say "     You wake up, very dizzy and soaked in black goo, which is... absolutely everywhere, dripping from the ceiling and making a pool in the room with at least a couple of inches of depth. Your movements are free, but all this dark goo feels so comforting and warm you struggle to tell yourself that you need to get up. In your mind, a dark voice whispers the words [']thank you['], and you look around to see if the Dark Tyrant is still around, but he is gone by now. Your legs are shaking and you can barely stand, but you manage to get out of the goo flooded room and back to the safety of the Club. To your dismay, you feel you still haven't been fully satisfied[if player is male], as you realize you still have an erection standing solidly between your legs[end if], even after what you just went through.";
	NPCSexAftermath Player receives "OralCock" from Fallen King;
	increase Libido of player by 50;
	if "Strong Psyche" is listed in feats of Player:
		SanLoss 10;
	else if "Weak Psyche" is listed in feats of Player:
		SanLoss 30;
	else:
		SanLoss 15;
	if Intelligence of Fallen King < 3:
		say "     [bold type]The Dark Tyrant grows stronger...[roman type][line break]";
		increase Intelligence of Fallen King by 1;
	else if Intelligence of Fallen King is 3:
		say "     [bold type]The Dark Tyrant is unable to gain any more strength from this...[roman type][line break]";
	now Fallen King is nowhere;

to say DarkTyrantSexSymbiosis:
	if Intelligence of Fallen King < 4: [first time]
		say "     Given how his process of learning does, you ask the dark giant if there is a way for him to touch you in an even deeper level. He nods and crouches down in front of you, his erection almost bumping on you, though he carefully makes space for himself by beckoning you to step back. He then stretches his hand towards you, suggesting that you should lay yours above his, all in a silent language. You think you understand what he is saying and do it, placing your palm on his before dark goo begins to engulf your arm.";
	else:
		say "     Now that you are acquainted with this technique and found it rather pleasurable, you ask the dark giant if he would like to perform a dark symbiosis once more. 'It is my pleasure to take on your offer, mortal' he replies, crouching down in front of you, his erection almost bumping on you, though he carefully makes space for himself by beckoning you to step back. He then stretches his hand towards you and you give him yours, placing your palm on his before dark goo begins to engulf your arm.";
	WaitLineBreak;
	say "     Rather than pushing you into him, the goo goes to you, swirling around your skin like a consuming aura that was about to hurl you into darkness, but the process delivers plenty of tiny warm stings throughout your pores as you feel like it is taking over you, somehow. Pleasure is undeniable as it surrounds you, the giant now turned into a mass of flowing blackness around you, and within a minute, you feel it sort of merging with your body. You can feel it as your own skin, the goo around you following your movements, every motion you make, as if you were the Dark Tyrant himself, except... you are still you. His voice whispers in your mind like a second consciousness, tempting you to explore your new body.";
	say "     'This is rather enjoyable, mortal [if Intelligence of Fallen King is 4]. I knew you were special...' He says, with newfound intelligence[else]. I hope we can continue to do this.' He says, after completely settling in within you, once more[end if]. It is as if your relationship with one another had deepened in such a way that you feel like you were one and one only. Looking over yourself, you appear to be a tall, musclebound black goo monster, much like the Tyrant himself, except not as gigantic and with a big cock that dandles softly, yet heavily, between your thighs. 'We are perfect together, you and I. You complement me, and I grant you mighty greatness. Let us enjoy each other.'";
	WaitLineBreak;
	say "     A mix of lust and curiosity takes over you as your hands, almost with a mind of their own, begin to rub all over your new body, caressing your bulging muscles and feeling up your slick gooey skin. The cock between your legs is quick to harden as you fondle your chest, run your fingers down your abs and, finally, join your hands around that soon to be throbbing shaft. You can feel it, yearning for your attention as it only grows, bigger and meaner, a dick you would need at least four hands the size of yours to fully cover its length. The pair of hanging nuts underneath your dark member weighs heavily, as your orbs fill with the antecipation of a powerful release. You feel powerful, durable, virile... And invincible.";
	say "     Keeping one hand over your chest, you stroke that impressive member of yours with the other, giving in to the lust that begs for your full focus. Each time you rub at that wet tip, a glob of goo precum drops at your feet, and you can feel the pleasure of your companion doubling your own, truly as if you were the same individual. The form he bestowed you fits better and better as you thoroughly enjoy the blissfulness it provides, and the more you embrace it, the better it all feels. 'Enjoying my form, mortal? Think of the things we could do together... We would be... Unstoppable.' The Tyrant speaks still in your mind, your erection growing bigger and harder as you jerk off, even your muscles seem to grow slightly larger as he lingers within you.";
	WaitLineBreak;
	say "     Each time your rub the palm of your hand against that sensitive tip, down to the long and girthy shaft which pulsates with desire, and back again towards your cock's drooling head, you approach the so awaited climax that promises to be intense. 'Let it come. It is the pinnacle of our joining which you crave, deep within you. Feel it... Release yourself...' His words continue to whisper in your mind with a much more enticing voice than previously, all of it encouraging you to pick up the pace and jerk faster. 'Yes...! Do it... Don't stop...' You feel the edge closer and closer to break, until eventually, a surge of intense pleasure bursts through every single one of your senses and your cock explodes in an avalanche of dark goo.";
	say "     Your cum is this dark gooey liquid that comes out of you as you feel it abandon your body, which slowly returns to its former shape, leaving you through the manhood that was shaped between your legs as you jerk it off until the very last drop. Each spurt shakes you with such an overwhelming joy that by the end of it, all your limbs are shaking and you can barely stand on your feet. You collapse as strength leaves you, that intoxicating feeling of invulnerability no longer with you, neither is the Dark Tyrant. No trace of your deed is ever found as all the dark goo has vanished, but it definitely left a mark in your memory of how amazing that felt.";
	NPCSexAftermath Player receives "Other" from Fallen King;
	if "Strong Psyche" is listed in feats of Player:
		SanLoss 10;
	else if "Weak Psyche" is listed in feats of Player:
		SanLoss 30;
	else:
		SanLoss 15;
	if Intelligence of Fallen King < 4:
		say "     [bold type]The Dark Tyrant grows stronger, once more.[roman type][line break]";
		now Intelligence of Fallen King is 4;
	now Fallen King is nowhere;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section X - Dev Cheats
[***********************************************************]
[***********************************************************]
[***********************************************************]

SkipToFallenKing is an action applying to nothing.
Understand "GetFallenKing" as SkipToFallenKing.

Check SkipToFallenKing:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

Carry out SkipToFallenKing:
	connect Hellfire Corridor;
	say "     Connected Hellfire Corridor.";
	now Resolution of Gift From Abyss is 2;
	if carried of abyssal remnant is 0:
		ItemGain abyssal remnant by 1;
	say "     Solved Gift From Abyss the necessary way.";
	now Resolution of Friend Of The Darkness is 3;
	now Resolution of DarkTyrantQuest is 2;
	now VRDarkTyrantTracker is -1; [safety measure]
	say "     Dark Tyrant has been befriended, his everyturn rules are now active.";
	say "     Done.";

Fallen King ends here.
