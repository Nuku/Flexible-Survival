Version 2 of Tristian by Verath begins here.
[ Updated files, reordered content, renamed infection to Palomino and made it non-infectious normally ]
[ Two new sex scenes: one random and one timed, then random after - Stripes ]

an everyturn rule: [bugfix for misplaced npcs 2019-06-08] [TODO: Remove in a month or so]
	if Tristian is in NPC Nexus:
		move Tristian to Palomino;

Section 1 - Tristian Basics

Table of GameCharacterIDs (continued)
object	name
Tristian	"Tristian"

Tristian is a man.
ScaleValue of Tristian is 4. [human+ sized]
Body Weight of Tristian is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Tristian is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Tristian is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Tristian is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Tristian is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Tristian is 4. [length in inches]
Breast Size of Tristian is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Tristian is 2. [count of nipples]
Asshole Depth of Tristian is 16. [inches deep for anal fucking]
Asshole Tightness of Tristian is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Tristian is 1. [number of cocks]
Cock Girth of Tristian is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Tristian is 15. [length in inches]
Ball Count of Tristian is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Tristian is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Tristian is 0. [number of cunts]
Cunt Depth of Tristian is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Tristian is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Tristian is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Tristian is false.
PlayerRomanced of Tristian is false.
PlayerFriended of Tristian is false.
PlayerControlled of Tristian is false.
PlayerFucked of Tristian is false.
OralVirgin of Tristian is false.
Virgin of Tristian is true.
AnalVirgin of Tristian is false.
PenileVirgin of Tristian is false.
SexuallyExperienced of Tristian is true.
TwistedCapacity of Tristian is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Tristian is false. [steriles can't knock people up]
MainInfection of Tristian is "Palomino Stallion".


Description of Tristian is "     Approaching one of the dim booths a rather cute stallion boy turns to look at you. His shoulder length dark hair is cut into an emo style covering his left eye. You see that he is wearing tight black leather pants with modified boots that come up to his knees that fit his digitigrade legs. He's also wearing a tight shirt that does nothing to hide his tight swimmer's build, you notice the hints of pierced nipples pushing at the fabric of his shirt. On his wrists are spiked cuffs and a few shiny bracelets. As you continue to look him over you notice the multiple rings in his ears pierced right eyebrow and his pierced lower lip. Around his neck is a necklace that incorporates an ankh and a horseshoe.".
Conversation of Tristian is { "Neigh!" }.
Tristian is in The Palomino.
The fuckscene of Tristian is "[sexwithtristian]".

the scent of Tristian is "The stallion boy smells of leather and lust. The scent of gay sex with various other males clings to him.".

[ HP of Tristian              ]
[  0: not talked              ]
[  1: talked                  ]
[  2: fucked once             ]
[  3: fucked twice            ]
[  4: fucked 3+               ] [formerly tristianaroused > 2]
[  5: talked about bro        ] [formerly broquest = 1]
[  6: fucked once since       ] [formerly tristianaroused = 4 ]
[  7: fucked 2+ since         ] [formerly tristianaroused > 4 ]
[  8: bro spotted             ] [formerly broquest = 2]
[  9: bro rescued             ] [formerly broquest = 3]
[ 10: was 'rescue failed' - moved to 99 ] [formerly broquest = 4]
[ 11: quest completed         ] [formerly broquest = 5]
[ 12: was 'quest failed' - moved to 100 ] [formerly broquest = 6]
[ 13: quest reward sex done   ]
[ 99: rescue failed           ] [formerly HP 10]
[ 100: quest failed           ] [formerly HP 12]


instead of conversing the Tristian:
	if HP of Tristian is 0: [first time you encounter the NPC text]
		say "     'Hey there, it's nice to see a new face around here! Welcome to the Palomino nightclub!' the goth-like stallion says with a welcoming smile on his equine face as he looks over your [bodytype of Player] form. 'The name's Tristian. It's a real pleasure to meet you,' he says as he looks you up and down appreciatively, before sitting back down in the well-padded booth and gesturing for you to join him. Once you settle yourself into the large comfortable booth, the fairly handsome horse continues. 'I suppose you are wondering a bit about how such a diverse group of people ended up here?' the palomino stud says with a slightly amused tilt to his head as he gestures to the dance floor filled with various different species of dancers, as well as the stripper poles where a black swan is demonstrating their new body's flexibility as they twine around the pole erotically.";
		say "     'Well, it was different for a lot of people, but for me, well... I was headed down here to the red light district so I could get a new outfit for clubbing and dancing in,' Tristian says with an amused smile, as he gestures to his black leather and spiked cuffs. 'That's what I was doing when things started going crazy around here. Of course, I never thought about the fact that the zoo was so close to this area until I saw some animals starting to run around.' Tristian gives a soft nickering chuckle. 'Of course, some of them weren't quite so animal-like anymore. I tried to grab one of the nice-looking ponies that was running around so I could ride off. And well...' the palomino's voice trails off slightly as a smile tugs at the edges of his muzzle.";
		say "     'Given what I'm sure you have seen so far around the city, I am sure you know in general what happened next,' he says teasingly, his hand rubbing up against yours slightly as he continues. 'I got away pretty quickly once I realized what was happening, but by then,' Tristian smiles as he gestures to his amazing looking outfit which fits him perfectly, emphasizing his handsome palomino studlike features, and giving the goth horse boy a rather erotic look. 'As you can see, I REALLY needed to go outfit shopping then.' He nickers in amusement again. 'I headed to one of the few safe places I knew in the area, and since I wasn't the only person looking for a safe place down here... well...' Tristian says with a soft smile as he gestures broadly at the busy nightclub again. 'I think we all adapted to things pretty well, don't you?' he says as he moves a little closer to you across the booth, a teasing look in his equine eyes as he leans forward.";
		say "     'So, feel like staying around a while? Always nice to have a new club member of course... and maybe we could even go for a private pony ride together as well. What do you think?' the palomino pony boy says teasingly as he grins at you in anticipation.";
		now HP of Tristian is 1;
	else if HP of Tristian is 100:
		say "     [one of]'Enjoying the club? It should be like a home away from home for you now.'[or]'Relax, stay a while and enjoy the music.'[or]'You know, I think you look wonderful as a little pony slut...'[or]'Have you ever thought about going goth? I think it would work for you.'[or]'I hope my brother is OK out there with the hyenas.'[or]'I wonder if Lance is being as much a pain for the hyena gang as he was for me sometimes...?'[or]'I think that swan over there is eying your cute ass,' he says with a smirk as he gestures at the dance floor. 'Maybe I should let him play with you sometime?'[or]'Pony rides, no charge?' he says teasingly as he winks at you.[or]'Sit down, have a drink or two. No one is running a tab right now...'[or]'Ever thought about stripping?' Tristian says as he gestures to the strippers up on the stage. 'I bet you would be really good at it. Maybe we should take you up there so you can practice.'[or]'I saw some really crazy beasts roaming around out there before I ended up here in the club. You should be careful out there... though if you see any cute equine ones, be sure to give them our address,' Tristian adds with an equine grin.[at random]";
	else if HP of Tristian is 11 or HP of Tristian is 13:
		say "     [one of]'Enjoying the club? It should feel like a home away from home for you now.'[or]'Relax, stay a while and enjoy the music.'[or]'You know, I think you look wonderful as a little pony slut...'[or]'Have you ever thought about going goth? I think it would work for you.'[or]'My brother is doing great over there with his new friend,' Tristian says with an equine smile as he gestures to where Lance is rubbing up against the black swan that finished his changes. 'Though he still has a pretty annoying laugh,' Tristian says with a smirk.[or]'Lance said I should thank you for all the help you gave him,' Tristian says with a smile as he nods to where the new black swan is dancing. 'What do you think, want to bend over so I can [']thank['] you properly?' he says teasingly.[or]'I think that swan over there is eying your cute ass,' he says with a smirk as he gestures at the dance floor. 'Maybe I should let him play with you sometime?'[or]'Pony rides, no charge?' he says teasingly as he winks at you.[or]'Sit down, have a drink or two. No one is running a tab right now...'[or]'Ever thought about stripping?' Tristian says as he gestures to the strippers up on the stage. 'I bet you would be really good at it. Maybe we should take you up there so you can practice.'[or]'I saw some really crazy beasts roaming around out there before I ended up here in the club. You should be careful out there... though if you see any cute equine ones, be sure to give them our address,' Tristian adds with an equine grin.[or]'You look so at home here. Why don't you just stay here with us all the time?'[at random]";
	else if HP of Tristian is 99:
		say "     Tristian looks up as you stagger into the club and come over to talk to him, his eyes going wide as he takes in your battered appearance. The palomino stud sighs as you let him know that you found his brother just a little bit too late. 'That's OK, I suppose,' he says with a sad shake of his head. 'I know you did your best, and at least now I know he's still alive out there, even if he is a hyena now,' Tristian says with a soft sigh, before looking over at you. 'Just as importantly though is taking care of my little pony. Why don't we go get all that hyena stink cleaned off of you. Then I can thank you properly for trying to help,' Tristian adds as he leads you off into one of the back rooms for an intimate 'cleaning' session...";
		palominoinfect;
		now HP of Tristian is 100;
	else if HP of Tristian is 9:
		say "     Returning to the club with Tristian's changing brother Lance in your arms, you approach your handsome pony stud's booth, worried about how fast his brother's changes seeming to be progressing. Tristian looks up as you approach, only to jump out of the booth and rush over to help you get him into one of the private rooms, the palomino stud looking at you with worry in his eyes as several of the employees come in to help. You explain the situation you found his brother in, and he sighs and gives you a swift hug to thank you for your help, even as people begin to cluster around the changing Lance. It is soon pretty obvious that Tristian's brother is beyond the point of resisting the changes on his own, and the only thing left to decide is whether or not they will let him become a hyena, of if someone else wants to try to change him instead.";
		say "     The decision is left to Tristian, who sighs and tries to talk to his half-delirious brother to find out just what kind of new form he would like, obviously reluctant to think about resorting to incest to change his brother himself. Lance is still too far out of it to respond clearly, though he does seem to understand somewhat what is going on. Looking around the variety of strippers, his eyes stop on a handsome male swan with a smile. You think you hear him mutter something about 'sexy goth birdie', though it is too garbled for you to be sure. Tristian however wastes no time nodding, and ushering everyone out of the room except for the happy swan, who is quickly stripping down to give Lance a very personal lapdance.";
		say "     Taking your elbow as everyone else wanders off, Tristian guides you into another of the nearby private rooms, where he proceeds to thank you vigorously for your help on his brother's behalf. It is an energetic romp which he throws himself fully into - both as thanks and to keep his mind from worrying about what might occur - pounding away at you like a wild stallion. Eventually, you join several of the other strippers several hours later, in keeping an eye on the door to the room where the swan is attempting to overpower the hyena changes, well aware that you might just find two hyenas exiting instead. Eventually to everyone's relief, the door opens and two obviously well-fucked swans stagger out, silly grins plastered on their faces as they take in the small crowd. Tristian wastes no time hugging his brother and welcoming him to the club. After a quick tour to show him the changes around the club, he takes him off to talk about getting him a new outfit to show off his changed features. You decide to collapse back onto the bed in the backroom, feeling like you managed to do something good today for your handsome stud.";
		palominoinfect;
		palominoinfect;
		now HP of Tristian is 11;
		now Lance is in the Palomino;
		increase score by 25;
		follow the turnpass rule;
		now lastfuck of Tristian is turns - 8;
	else if HP of Tristian is 8:
		say "     Tristian looks up eagerly as you approach, only to sigh as you shake your head and let him know there is no news on his brother yet. The palomino nods, and the two of you make small talk for a while as you chat on other subjects, but you can tell that his mind is elsewhere, and so you decide to let him be for now... though maybe a roll in the hay with his lovely little pet could help distract him instead...";
	else if HP of Tristian is 7:
		if FurryList is banned or HermList is banned or MaleList is banned:
			say "     Tristian looks kind of down as you approach the handsome stud pony, and you are curious enough to lend him an ear and see what is bothering him. 'Well,' he says with a sigh, 'I just got word about my brother, or at least maybe I did, but it's not good. All I know is someone saw some lights and activity at his apartment in the city, but then no longer,' the horse says with a sad look on his long face.";
			say "(This quest is inaccessible w/o furry/guy/hermaphrodite content available. Sorry.)[line break]";
			now HP of Tristian is 100;
		else:
			say "     Tristian looks kind of down as you approach the handsome stud pony, and you are curious enough to lend him an ear and see what is bothering him. 'Well,' he says with a sigh, 'I just got word about my brother, or at least maybe I did. All I know is someone saw some lights and activity near his apartment in the city,' the horse says with a sad look, making you confused. You ask if he shouldn't be happy to have news of his brother.";
			say "     'Well, I would be,' he admits, 'except his apartment is pretty much right in the territory the hyena gang has been claiming lately. And when I asked around, I found out there have been a lot of them sniffing around over there, like way more than anyone here can take,' he says with a sad sigh. 'I even wanted to go myself, but some of the strippers here talked me out of it. So basically, if he isn't a hyena yet... he will be soon.'";
			say "     He looks at you with his slightly sad eyes. 'I was just kind of missing him before, but now I'm really worried. And I know it would be better if he were here with me than as part of some gang... Lance is a good guy and not at all into the kinds of rough stuff those hyenas are into, so there won't be anything of my brother left by the time they're done with him.'";
			say "     Feeling sympathy for your gothy playmate, you offer to go take a look yourself. 'Oh would you?' he says, seeming surprised and happy at your offer. 'I mean, I couldn't ask you to go, but if you do go and see anything. Even if it's just that hyenas were there, could you let me know?' the palomino asks you earnestly, and you readily agree.";
			now Tristbrother is active;
			now HP of Tristian is 8;
	else if HP of Tristian > 4 and a random chance of 1 in 3 succeeds:
		say "     Still no word back on my brother,' Tristian says with a sigh as you approach. 'I keep getting more worried about the guy as time goes on too,' he says, before smiling and looking up at you. 'But enough about that. How about a drink?' the large stallion says, and you do your best to smile and take his mind off his brother for a while as you drink and chat with him.";
	else if HP of Tristian is 4:
		say "     Tristian is staring off into the distance, obviously lost in thought as you approach your handsome looking gothic stud. Curious, you ask him what he was thinking so hard about and he blinks in surprise before smiling at you. 'Well, you know - I'm just kind of worried about my brother Lance out there all alone. I haven't heard anything from him since this all happened... And well... it just kind of sucks not knowing just what happened to him when all of this went down, you know?' Tristian says with a somewhat wistful expression on his equine face. 'I've been asking people about him when they come through the club... but no one has seen him yet, so maybe he got out of town in time,' Tristian says with a sigh before turning to pay attention to you. 'But enough about that, how about a dance?' he says teasingly as he hauls you out onto the dance floor for a spin.";
		now HP of Tristian is 5;
	else:
		say "     [one of]'Welcome to the club.'[or]'Relax, stay a while, enjoy the music.'[or]'You know, I think you would make a handsome looking horse boy...'[or]'Have you ever thought about going goth? I think it would work for you.'[or]'I wonder if my brother is OK out there in all this craziness?'[or][if HP of Tristian < 4]'Have I told you about my brother?'[else]'I can't help but worry about my brother. So many people didn't make it at all.'[end if][or]'I think that swan over there is eyeing your cute ass,' he says with a smirk as he gestures at the dance floor.[or]'Pony rides, no charge?' he says teasingly as he winks at you.[or]'Sit down, have a drink or two. No one is running a tab right now...'[or]'Ever thought about stripping?' Tristian says as he gestures to the strippers up on the stage. 'I bet you would be really good at it.'[or]'I saw some really crazy beasts roaming around out there before I ended up here in the club. You should be careful out there - though if you see any cute equine ones, be sure to give them our address,' Tristian says with an equine grin.[at random]";


to say sexwithtristian:
	setmonster "Palomino Stallion";
	if HP of tristian is 0:
		say "You might want to introduce yourself first.";
	else if lastfuck of tristian - turns < 6:
		say "     'Sorry, there, I know you are eager to be a proper little pony for me,' Tristian says in a dominant yet teasing tone of voice, as he strokes his hand across your cheek fondly. 'But we need to let your last training session sink in before we can start on the next one. But don't worry,' Tristian adds with an equine grin as he strokes your head gently, 'I'm sure we will have you looking and acting the part of a proper little submissive goth pony for me in no time, won't we?' Tristian draws you close for a minute, before letting you go, his words and his soft touches making you pant eagerly in anticipation of your next session with the handsome male.";
	else if HP of tristian is 1:
		if Player is male:
			say "     Tristian smiles mischievously at you as he draws you close, the scent of his musky sandalwood cologne washing over you. In the next instant his pretty black painted lips are locked on yours and you can feel his large tongue exploring your mouth teasingly, your own tongue responding as it tangles with the large palomino's. You can feel your head swimming with lust as you feel yourself being lowered down onto the booths cushions, his hands teasingly running across your [bodydesc of Player] body as he moves down next to you on the cushions, his soft fur rubbing against your skin and making it tingle with excitement. After what seems like hours of playing touches and deep kisses, you both come up for air and you find yourself gasping and panting with arousal as you look at the handsome male stud.";
			say "     Breathing deep in excitement, Tristian locks gazes with you as his equine eyes stare deep into your own as he asks you, 'So are you ready to go all the way now? Ready to become my slutty, little pony for me to ride whenever I want?' The male palomino strokes your [bodytype of Player] body with his hands, his cologne washing over you as he continues. 'Once you agree then there will be no going back, you'll belong to me completely. Are you ready to be a proper little pony for me to ride? Mine in mind, body, and soul?' Tristian whispers into your ears in a low sexy voice, looking at you expectantly as you feel his hand move to your crotch where it begins to gently rub and massage your rapidly stiffening manhood through the fabric of your clothes. Your mind is still reeling from the amazingly arousing kiss and your senses assaulted and nearly overwhelmed by the flashing lights, the pounding beat of the music, and strobing images of the dancing strippers and various different beasts on the dance floor. Your mind filled with his musk and the lewd images of the dancing, it's hard to think clearly enough to decide what you should do.";
			say "     [bold type]What do you reply?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Submit to him.";
			say "     ([link]N[as]n[end link]) - Refuse.";
			if Player consents:
				LineBreak;
				say "     'That's my slutty pony, you just close your eyes and relax, and I'll do the rest,' the handsome stallion breathes into your ear. Shivering eagerly, you find yourself doing just what your gothy playmate commands as you lay back on the cushions, closing your eyes and letting your mind drift as you focus on the raging beat of the music and your stallion's touch. You can feel your clothes being removed one piece at a time, your shoes, shirt, pants, and finally your underwear are slipped off your aroused body by Tristian's deft hands, baring your [bodydesc of Player] body to him. You gasp in pleasure as your equine lover first sucks and then licks and nibbles on each of your nipples. As the assault on your chest continues your gasps soon turn to moans of pleasure that have a horse like neigh and a slight whickering quality to them. Opening your eyes in surprise and alarm you can see Tristian looking down at you with an amused lust-filled expression on his pretty equine face.";
				say "     'Ah ah, I told you to relax and keep your eyes closed pony,' the stallion chuckles teasingly as a soft grin tugs at his black painted lips. 'I guess I'll just have to help you out with that then,' he says as he reaches somewhere just out of your field of vision, before pulling his hand back into sight holding up a black strip of cloth that looks like velvet. You shudder as he slowly begins to lower the dark cloth towards your face, gently lying it across your eyes and blocking out the flashing club lights as he proceeds to blindfold you with it. Once blindfolded, your other senses seem to intensify, the thick musky cologne of aroused equine growing stronger as you feel yourself being gently turned over onto your stomach, your [bodydesc of Player] chest resting on the soft plush cushions. Gently you feel your arms being pulled behind your back and your wrists being firmly secured with what feels like a length of silk ribbon.";
				WaitLineBreak;
				say "     'That's a better position for my slut pony; now you should be able to properly relax,' Tristian's soft voice whispers lustily into your ear. You can soon feel his strong hands moving over your body, touching and stroking as they roam across your skin. Strong hands spread apart your ass cheeks as a slick wet warmth is placed at your back entrance, making your body shudder with excitement and arousal in response. Without a word of warning your stallion thrusts his thick meat home in one smooth motion, spreading you open as his cock finds its way into your body. Your cry of mingled pain and lust is lost in the loud music, the pounding beat surrounding the two of you as your stallion begins to play with his pony. You let out another scream that sounds even more equine than ever before, as with another thrust your stud is fully sheathed in your body.";
				say "     You shudder eagerly underneath him, as he slowly begins to thrust into and out of your body. His voice whispers softly in your ear as he tells you what a good pony you are and what a cute, handsome, slutty mate you're going to be for him once he makes a few alterations to your mind and body, his words sinking into your lust-fogged mind and making your body tingle with anticipation. You feel a warm sense of satisfaction and contentment welling up from deep within you as your body begins to move and writhe with the rhythm of the music's beat and your lovers thrusts. The club, the strange encounters with the city's new residents, even the hardships of survival in the weird new environment outside, all melt away as your playmate continues rapidly thrusting into your suddenly needy body. In your haze of pleasure, you don't even notice or care that you've begun to neigh, snort, and whinny instead of moaning, gasping, and screaming out in pleasure, your loud bestial noises of passion only acting as encouragement to the strong stud filling you up.";
				WaitLineBreak;
				say "     With a loud neigh you can feel your stallion tense behind you, his hands gripping your sides as what feels like gallons of his potent horse seed floods into your waiting body. You are so lost in the pleasure of his seed entering you, you hardly even notice when your own orgasm hits, your cock exploding with such force that you coat your chest and stomach with your own seed as you release your [Cum Load Size of Player] load. You and your new stallion collapse into the cushions in a heap, with him on top of you as he hugs you close to his warm furry body. After a few minutes rest, Tristian helps you sit up and slowly unbinds your wrists and removes your blindfold, making you blink as the flashing lights of the club once more fill your eyes.";
				say "     Tristian then eagerly helps you clean yourself up, which consists of plenty of licking and kissing, before he helps you get dressed again. Looking you over with a mischievous smile on his muzzle, he says that you are going to need new clothes and an entirely new look if you're going to be a proper slutty goth pony for him. Giving the dominant stallion a shy smile, you find yourself wondering absently just what you've gotten yourself into. The next few hours are filled with a blur of music, drink, dancing and more sex, leaving you little time to worry as you give yourself over to the pleasures of the club. After a while, it all becomes too much for you and you pass out while one of the handsome strippers is trying to teach you to pole dance, the black swan boi smiling at your attempts even as you slump to the floor.";
				NPCSexAftermath Player receives "AssFuck" from Tristian;
				now HP of Tristian is 2;
				palominoinfect;
				palominoinfect;
				follow the turnpass rule;
			else:
				say "     The stallion gives you a disappointed look and sighs wistfully, 'You don't know what you are missing stud, but I guess I can get over it. If you change your mind, you know where you can find me.' Blowing you a kiss over his shoulder, he departs onto the packed dance floor.";
		else:
			say "     'So you want to play the mare for a handsome little stallion like me?' Tristian says teasingly, as his equine lips lightly brush over your own lips. The scent of his stallion-like musk and sandalwood cologne fills your head with need even as he runs his hand teasingly along the front of your body. 'I think that sounds like fun... only I prefer my [']mares['] to be a bit more well-endowed,' he says as he runs his hands along his leather-encased crotch teasingly. This sight makes your mouth water even as your need grows even more desperate. 'Fortunately, I don't think that will be much of a problem for long...' Tristian says, as he runs his hands over your body again, kissing you teasingly while you feel your body reshape itself to better suit his desires...";
			palominoinfect;
	else if HP of Tristian is 11 and player is male:
		say "     Leading you into a lounge in the back, he strips you down and gets you to lay back on the padded sofa. 'How about a special reward. I think my brother's hero deserves a rare delight.' He straddles your lap, grinding his ass down over your stiff cock. 'How about it, my precious pony - have you earned a treat?'";
		say "     [bold type]What do you reply?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let him powerbottom you.";
		say "     ([link]N[as]n[end link]) - Say you need his cock more.";
		if Player consents:
			say "     Adjusting his positioning slightly, he lets your glans rub against his pucker. You can feel that tight hole slick with lube, and you realize he'd anticipated your request for sex and had prepared himself for your special reward. Twin moans of pleasure, one from each of you, come as his tight anal ring sinks down your throbbing meat. Tristian remains as dominant as ever despite being the one getting fucked, taking charge and riding your [Cock of Player] cock. In spite of his obvious preparation, he's delightfully tight around your meat, further showing what a rare treat he's providing you. This makes it all the more precious to you and so you savor every moment of it. And there's much to savor, your sexy stud being particularly sensual in his lovemaking, paying extra attention to you. Little touches or tweaks to sensitive spots, or an adjustment to the motion of his ass to better stimulate your pulsing rod. Despite the obvious lack of recent practice, his ability to ride your cock hasn't suffered, able to work your meat like a pro. You rock your hips lightly, thrusting up into your lover's tight, twitching hole while enjoying the stallion's long, pleasurable ride.";
			say "     Eventually, the carnal delights have you moaning and panting with need, so much so that you beg Tristian to be allowed to fill him with your seed. He smiles down at you and quickens his pace, working his tight hole over your throbbing shaft harder. 'Do it. Cum in me, my pony,' he pants, rubbing your chest as he slams down hard onto your lap several times in quick succession. Unable to hold back and with your master's permission, you groan loudly and blast shot after shot of sticky semen into the riding horse. His cock bounces and slaps against your chest as it fountains gooey cream, spooging across your torso and face as he cums messily as well. You're left satisfyingly sticky with his musky seed by the time it's all over. He flops down atop you, your softening cock still buried inside him as he shares gooey kisses and cuddles with you before you both drift off for a short nap together.";
			NPCSexAftermath Tristian receives "AssFuck" from Player;
		else:
			say "     'As you wish, my pet,' he says without disappointment as he slides back between your legs. Spreading them, he boosts your rear up. 'If you're rather have my sexy cock in that hot ass of yours, I'm more than happy to oblige.' Pressing his flat, equine glans against5 your pucker, you can feel it pulse lightly as it drools precum onto your crinkled hole. As he sinks into you, one hand finds its way to your [Cock of Player] shaft while the other goes to your buttock. Twin moans of pleasure, one from each of you, come as his throbbing meat pushes fully into you. Tristian is particularly sensual in his lovemaking. While still quite dominant in his approach, there is greater attention paid to you as well. Little touches or tweaks to sensitive spots, or an adjustment to his thrusts to send twinges of delight to your prostate. You wriggle on the couch, ass squeezing and milking at his cock as it slides into you over and over again.";
			say "     Eventually, the carnal delights have you moaning with need, begging for your stallion to fill you with his seed. He smiles down at you and quickens his pace, pounding you harder. Your cock throbs in his grip, stroked in synch with his thrusts until you cry out in orgasmic release. As your sticky seed splatters across your chest, he drives fully into you and drains his plump balls. His hot load pours into your needy ass, filling you with satisfying warmth. Once spent, he remains inside you while slowly going soft, kissing and caressing you until you both drift off for a short nap together.";
			NPCSexAftermath Player receives "AssFuck" from Tristian;
		now HP of Tristian is 13;
	else:
		if Player is male:
			if HP of tristian is 6 or ( HP of tristian > 6 and a random chance of 1 in 5 succeeds ):
				say "[randomdesc]"; [yields 'slutname']
				say "[randombodypart]"; [yields 'bodyselector']
				while bodyselector is slutname:
					say "[randombodypart]";
				say "     Looking to have some fun with your sexy palomino stud, you head over to where he's sitting and drape your arms over his shoulders, hugging him and nuzzling at his neck. He scritches your ears and introduces you to the others he's chatting with, a [bodyselector] and a [slutname]. 'I was just commenting what a fine, slutty pony [if BodyName of Player is listed in infections of Equinelist]you're becoming[else]you're going to be[end if]. How about you,' he says, unzipping his pants and pulling out his throbbing equine rod, 'show them?' he says with a grin.";
				say "     A shiver of excitement runs through you and, not wanting to disappoint your stallion stud, you wink to the others and lower yourself to your knees. With a hand rubbing his hefty balls and the other stroking along his equine manhood, you start licking up and down his shaft, enjoying the taste of him, heavy with his musky scent. After making a good show of your tonguework, you slide all the way up to his flared glans and swirl over it before opening your mouth wide and sinking down overtop of it. As proof of how well you're being trained, you push down eagerly and take his lengthy shaft fully into your mouth and down your throat, much to the surprise and delight of the pair watching.";
				say "     Reminded of them, you glance over to see that the [slutname] has moved into the [bodyselector][']s lap, grabbing a quick fuck while they watch you blow your palomino stud's big cock. Noting that they're both rather well hung themselves, the added entertainment exciting you further. But you're not lusting for their meat, but instead you're longing for the next time you'll get to ride the equine cock you've currently got buried in your throat. Your hunger for his load only grows as you think about this and knead his balls with a muffled, wanton moan. Your lover grins and rubs your head, moaning that it won't be long now. As sure enough, a few more sucks later, you're treated to your hot, creamy reward with the other two popping off soon afterwards. You and the [slutname] make a sexy show of kissing and groping one another for your respective studs before cuddling up to them while conversation resumes on a new topic.";
				NPCSexAftermath Player receives "OralCock" from Tristian;
			else if HP of Tristian is 3 or a random chance of 2 in 5 succeeds:
				say "     Eager to get it on with your sexy pony stud, you wrap your arms around him and give him a passionate kiss, grinding your body against his. The feel of you pressing against his leather-covered manhood quickly has him excited and he presses you against one of the walls, not wanting to wait any longer before taking you. Stripping you down, he pulls out his cock and grinds it against your ass while telling you what a fine, slutty pony [if BodyName of Player is listed in infections of Equinelist]you're becoming[else]you'll make[end if]. You groan as he sinks his equine shaft into your tight ass, pressing your chest against the wall as he fucks you in plain view of any who happen to see. The thought of the others watching sends shivers through you, wanting them to see your ass being claimed by your sexy stud.";
				say "     While Tristian pounds away at you, drilling that throbbing rod of his into your needy hole, he puts a furry paw on your shaft and strokes it. Your [cock size desc of Player] [Cock of Player] dick drools precum as the stallion's rod presses and grinds against your prostate, sending fresh waves of ecstasy through you each time he plows into you particularly hard. The sensations and the musky scent of the palomino fucking you drive you to the heights of wanton lust. 'Well well... you like that don't you, my sexy little pony? Your big stud's cock feels so good for you, doesn't it? That's because it's got just what a slutty pony like you needs - a nice - hot - creamy - load - of stallion - spunk,' he grunts and pounds you hard with each word, finally ending by burying his pulsing meat deep inside you as he fills your bowels with his load.";
				say "     The feel of your virile lover's semen flooding into you causes you to groan and cum as well. You spray your [Cum Load Size of Player] load onto the wall and floor between your feet as Tristian pumps your [cock size desc of Player] cock vigorously. Once you've both finished cumming, he pulls out, smears his flared, dribbling glans across your ass and gives your balls a squeeze. Letting you pull your top back on, he pulls you out onto the dance floor for a quick dance. This leaves your creamy bottom on display as his thick cum leaks out and runs down your leg. When the number's done, he takes you into the back and gets you cleaned up with his tongue[if anallevel is 3], even diving his tongue into your ass to chase after more[end if].";
				NPCSexAftermath Player receives "AssFuck" from Tristian;
			else:
				say "     Eager to show your stallion just how much you have learned from hanging around the club and under his guidance, you slowly begin to strip off your clothes, teasing him with each article you remove before presenting your naked, [bodytype of Player] body to your handsome stud of stallion. You can tell from the look of lustful excitement on the goth pony's face that you now have his full and complete attention. With a lascivious look, you assume his favorite position, bent over with your hands resting on the cushions and ass thrust high in the air as you look over your shoulder at him teasingly.";
				say "     Tristian obviously needs no further encouragement to go for the ride you are so eagerly offering, and your stallion lover is soon as naked as you are and thrusting powerfully into your naked and willing body. Reaching around underneath you, your horsey lover wraps his soft hand around your hard pole and starts stroking you in time to his thrusts into your tight ass. His soft furred hand rubs along your staff even as his own thick rod pistons into your body. Soon you let lose a loud whinny as the two of you climax together, your body eagerly accepting his fertile stallion cum as you spill your own out onto the cushions. With a hard slap on the ass, your stallion tells you to get dressed as he hands you a posing pouch that seems entirely too small and leads you out onto the dance floor to show off his [bodydesc of Player] pony slut to the other clubgoers.";
				NPCSexAftermath Player receives "AssFuck" from Tristian;
			if HP of Tristian < 7 and HP of Tristian is not 4, increase HP of Tristian by 1;
			palominoinfect;
			palominoinfect;
		else:
			say "     'So my little pony wants to play the mare for a handsome little stallion like me?' Tristian says teasingly, as his equine lips lightly brush over your own lips. The scent of his stallion-like musk and sandalwood cologne fills your head with need even as he runs his hand teasingly along the front of your body. 'I think that sounds like fun... only I prefer my [']mares['] to be a bit more well-endowed,' he says as he runs his hands along his leather-encased crotch teasingly. This sight makes your mouth water even as your need grows even more desperate. 'Fortunately, I just know my little pony won't keep me waiting long before that problem gets fixed...' Tristian says with amusement, as he runs his hands over your [bodytype of Player] body again, kissing you teasingly while you feel your body reshape itself to better suit his desires...";
			palominoinfect;


to palominoinfect:
	choose row MonsterID from the Table of Random Critters;
	setmonster "Palomino Stallion";
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	infect;
	now non-infectious entry is true;


Section 3 - Tristian's Quest

Table of GameEventIDs (continued)
Object	Name
Tristbrother	"Tristbrother"

Tristbrother is a situation.
ResolveFunction of Tristbrother is "[ResolveEvent Tristbrother]".
Tristbrother is inactive.

when play begins:
	add Tristbrother to badspots of HermList;
	add Tristbrother to BadSpots of MaleList;
	add Tristbrother to BadSpots of FurryList;

to say ResolveEvent Tristbrother:
	If HP of Tristian is 8:
		say "     You manage to make your way to the area where Tristian indicated his brother lived. As you're scouting out the area, you hear a loud noise from the small apartment building you're approaching. Rushing inside, you notice a couple of hyenas have broken into an apartment that someone obviously barricaded. From the sounds of things, there is someone inside who is obviously protesting... although they sound more willing by the minute. Looking inside, you see several hyenas holding down what used to be an unchanged human, one of them is already shooting her seed onto the human's chest, while another appears to be ready to take him in the ass while the others hold the young man down. Looking up, one of the hyenas notices you. 'Oh good, another new addition to the gang,' she says before attacking!";
		Challenge "Hyena Herm";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having dealt with the first hyena, you rush towards the others. Seeing how you've already dropped one of their numbers, they're a little more reluctant to face you, but another steps forward to protect their catch.";
			Challenge "Hyena Herm";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having beaten another of the gang hyenas up, you growl menacingly at the rest. They turn tail and run, their fallen compatriots scrambling out as well. With the hyenas driven off, you stagger over to where the human was lying, and find him half delirious as his body is slowly sprouting hyena fur and looking more bestial by the minute. You wipe off what you can of the mess of cum and decide to get him back to the club in the hopes that perhaps someone there can help with the changes, or at least change him into something a bit more suited to life with his brother, instead of just another laughing hyena gang member...'";
				now HP of Tristian is 9;
		if fightoutcome >= 20 and fightoutcome <= 29:
			say "     Picking yourself up off the floor where the hyenas left you, you look around for any sign of the hyenas who were in the apartment. They seem to be gone and you stagger over to where Tristian's brother is lying in a ball on the floor moaning, where they obviously returned and used him once they were done with you. Gently rolling him over, you discover that you are already much too late to help, as his body is changing fully into that of a hyena's. His head has already changed to that of a hyena with his once short, blond hair turning brown and spotted as it hangs messily around his shoulders. A scraggly goatee of rough hyena fur beginning to sprout on his chin as a muzzle pushes forward. Continuing to examine the young man, you see that his skin has already begun to change to a dark hyena brown with spots starting to become visible as ragged patches of fur start to sprout up all over his body. Looking lower, you notice that his cock has changed, while still mostly human it has a large knot at the base and the beginnings of a sheath enveloping the lower part of it.";
			say "     With another moan, the changing boy rolls over and you see the beginnings of his new hyena tail erupt from his backside as his body finishes changing. With a laughing bark, the new hyena jumps up quickly, knocking your already abused form to the floor as he looks around the room. Sniffing the air, he catches the scent of the hyenas who were just here. Tristian's brother pauses only long enough to grab his skateboard and a pair of ripped jeans and a t-shirt before bolting out the door after them. As his barking laughs fade down the hallway, you lie there on the floor wondering how you are going to break the news to Tristian.";
			now HP of Tristian is 99;
		if fightoutcome >= 30:
			say "     Feeling that it's a lost cause at this point and there being too many hyenas to [if level of Player < 4]risk[else]bother[end if] dealing with, you turn tail and bolt out the door. There's a lot of raucous laughter from them, soon added to as they get back to infecting their gang's newest member. With his barking laugh still ringing in your ears, you wonder how you are going to break the news to Tristian.";
			now HP of Tristian is 11;
		now battleground is "void";
	else:
		say "You wander around part of the city, only to note the presence of a large amount of hyena gang members. You decide to take another route, wondering what they are all doing there.";
	now Tristbrother is resolved;


Tristian ends here.
