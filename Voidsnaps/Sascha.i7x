Sascha by Voidsnaps begins here.

[ Resolution of Wild Kitty                                                      ]
[   0: default value                                                            ]
[   1: friendly chat in first meeting                                           ]
[   2: player offered sex in first meeting                                      ]
[   3: Player & Sascha stroked each other (no climax) in second meeting         ]
[  50: Player rejected stroking in second meeting                               ]
[ 100: Sascha ignored (end of content)                                          ]
[ 101: Rape attempt; Sascha hostile (end of content)                            ]
[ 102: rejected flirtations, gruffly (end of content)                           ]

to say SaschaPAddress:
	if SubjectPro of Player is "he": [those that get auto-sorted into male, or anyone who chose male pronouns]
		say "Daddy";
	else:
		say "Sexy";

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Wild Kitty	"Wild Kitty"

Wild Kitty is a situation.
ResolveFunction of Wild Kitty is "[ResolveEvent Wild Kitty]".
Sarea of Wild Kitty is "Outside".

when play begins:
	add Wild Kitty to BadSpots of FurryList;
	add Wild Kitty to BadSpots of TransList;

to say ResolveEvent Wild Kitty:
	if Resolution of Wild Kitty is 0:
		say "     Exploring the city, you find a fairly large pile of discarded clothes, at the edge of the road right across from a haunted-looking estate with rod-iron fencing. There might be something worth salvaging in there, so you start to casually rifle through it. Then suddenly, a purring voice snaps your head up from this task: 'Well then. Aren't you a sight for sore eyes? What are you doing in a place like this?' The voice's owner stares at you from the sidewalk, dressed like any jogger you would expect to see in the city, with black nylon pants that leave nothing to the imagination and a brown turtleneck. He's slim, fit, and appears to be a housecat with black fur and fluffy, intentionally unkempt white hair between his pointed ears. His shoes are immaculate and match the emerald green color of his eyes, though they're a shade lighter.";
		say "     As you ready yourself for a fight, the feline raises his hands, popping a green lollipop free from between his lips and twirling it as his rough tongue rolls over its surface. Raven fur ruffles as he stops a few feet from you, and his lips split in a mischievous grin. 'Don't worry, [SaschaPAddress]. I'm not looking for a fight. It's rare to meet someone who won't try to chase me down and fuck me on sight. Though, I'm not exactly against that sort of fun~.' Rolling his tongue over the candy, he blatantly glances downward, implying something less innocent. 'My name's Sascha,' He says, his words rolling off of his tongue in a blatantly erotic way, utilizing that talented tongue in ways that set your thighs rubbing together. 'If you'd like, we can talk for a bit.'";
		say "     [bold type]What's your reaction to this?[roman type][line break]";
		let Sascha_Initial_Choices be a list of text;
		add "Sure, you can talk. It's nice to meet new people..." to Sascha_Initial_Choices;
		add "Offer him a fuck. You want some action. Right now!" to Sascha_Initial_Choices;
		if Player is male or Player is female: [neuters go home!]
			add "Pretend to talk to him, slowly move closer and jump the cat to fuck him afterwards." to Sascha_Initial_Choices;
		add "You got no time for small talk. Survival's busy work. Ignore him." to Sascha_Initial_Choices;
		let Sascha_Initial_Choice be what the player chooses from Sascha_Initial_Choices;
		if Sascha_Initial_Choice is:
			-- "Sure, you can talk. It's nice to meet new people...": [friendly]
				say "     Discussing your experiences in the apocalyptic city, you lament the lack of willing ears to listen to your problems. Everything seems to want to fuck, eat, or transform you. You're glad to meet someone who seems sane, and you pour your heart out, leaning against a nearby fence. 'You're right about that. It's not often that I run into someone new. It can get a bit lonely.' Popping his candy into his mouth as he finishes speaking, Sascha rolls it around with a thoughtful expression, the white stick following the curve of his lower lip. 'Say, normally, this is the part where I'd ask you out for coffee, but seeing as everything's the way it is...' Sascha ponders you as if making a decision, then steps closer, slipping another lollipop pulled from his pockets into your hand while planting a quick peck on your cheek.";
				say "     'Come see me again, [SaschaPAddress]. I'd love to talk with you more. Maybe even something else.' Unfortunately for you, the cat only stays to chat for a few moments, trailing his tongue over the candy the entire time as he regales you with stories of the days before the infection. He used to be a thrill-seeker by trade, exploring abandoned parts of the city and filming himself climbing and jumping from the rooftops. You can only imagine how handy that skill set has been in evading mutants. Glancing at the watch on his wrist, Sascha shakes his head, then sets those emerald eyes on you. 'Well, it seems our time is up. I've got places to be and people to see. It was nice talking to you - [SaschaPAddress].' He adds the final word with a swish of his tail as he breaks into a jog, his movements showing a pert rump beneath his nylon pants. You wonder where he's going, but you'd better move on before something less friendly finds you.";
				now Resolution of Wild Kitty is 1; [just chatted friendly]
			-- "Offer him a fuck. You want some action. Right now!": [lewd offer]
				say "     Cupping your crotch, you proposition the cat. You're willing to drop your pants and see what that tongue can do. All that flirting has to be for a reason, and you're more than willing to give the pretty kitty anything he wants. Sascha looks you up and down with a grin, then steps closer, pinning you against the nearby fence with his lithe form and placing his paws on your stomach, tantalizingly close to your [if Player is male]manhood[else]crotch[end if]. Spreading his legs, he rubs his curiously flat privates against yours through the swishy material of his pants, slipping his fingers along your chest until they twine around your neck. With his green-apple-scented breath so close, you can feel each word's impact, shivering as he speaks. 'I'd love to take you up on that, [SaschaPAddress]. I would, but I'm unsure if you can handle me.' Lips inches from yours, he fakes a kiss, only to pull back at the last second, the warmth of his needy body disappearing as he disengages, leaving your [if Player is male]manhood[else]pussy[end if] to leak and throb in protest.";
				say "     'Why don't you meet me here later? We can get to know each other better.' Unfortunately for you, the cat only stays to chat for a few moments, trailing his tongue over the candy the entire time as he regales you with stories of the days before the infection. He used to be a thrill-seeker by trade, exploring abandoned parts of the city and filming himself climbing and jumping from the rooftops. You can only imagine how handy that skill set has been in evading mutants. Glancing at the watch on his wrist, Sascha shakes his head, then sets those emerald eyes on you. 'Well, it seems our time is up. I've got places to be and people to see. It was nice talking to you - [SaschaPAddress].' He adds the final word with a swish of his tail as he breaks into a jog, his movements showing a pert rump beneath his nylon pants. You wonder where he's going, but you'd better move on before something less friendly finds you.";
				now Resolution of Wild Kitty is 2; [made lewd offers]
			--  "Pretend to talk to him, slowly move closer and jump the cat to fuck him afterwards.": [attack]
				say "     Feigning interest, you drift closer to the cat, ignoring his boring stories about posting videos online and nearly falling to his death. You don't care what the cat has to say, of course. If there's one thing you've learned in this city, it has to be that there usually aren't consequences for your actions, and you're willing to test that wisdom again for a piece of Sascha's [if Player is male]sweet, tight ass[else]feline cock, even if it seems to be small enough to hide from view[end if]. Who cares if he disappears afterward? As you reach out to grab the cat, your [if Player is male]pants tightening[else]nether lips moistening[end if] in anticipation, you feel something press up against your crotch, threatening it with needle-like points. Stopped in your tracks, you look down, watching as sharp claws tease at your [if Player is male]throbbing length[else]sensitive mound[end if], not quite piercing anything important.";
				say "     Sascha's voice is filled with regret as he speaks, leaning into your chest and sighing. 'You had to try something rude, didn't you? If you'd just been patient or at least asked me, I would have let you do anything you like.' Brushing away your arms after a moment, Sascha keeps hold of your [if Player is male]manhood[else]crotch[end if] until he's far enough away that you couldn't touch him if you tried, then walks away, his tail twitching in what you assume isn't happiness. For a second, you contemplate going after him, but almost as if he had heard you, the slender cat suddenly twists to the side and runs at the wall! With the scrape of his trainers on the bricks, he jumps up in the blink of an eye and hooks his claws on the windowsill one story up, pulling himself out of reach as they dig into the brick. Before your wide eyes, he climbs up one more level, then vanishes over the edge of the roof.";
				now Resolution of Wild Kitty is 101; [attacked him]
				now Wild Kitty is resolved; [end of chain]
			--  "You've got no time for small talk. Survival's busy work. Ignore him.": [ignore]
				say "     Shaking your head, you politely decline the cat's advances. Survival's hard enough without spending more time standing there, making small talk with another survivor. You wish him luck in whatever he wants, but you'd prefer it didn't involve you. Sascha seems taken aback. 'Well, I suppose I'll give you points for honesty. We don't need to meet again.' Shrugging, he walks away, disappearing around the corner. Maybe you were too harsh? For a second, you contemplate going after him, but almost as if he had heard you, Sascha suddenly twists to the side and runs at the wall! With the scrape of his trainers on the bricks, he jumps up in the blink of an eye and hooks his claws on the windowsill one story up, pulling himself out of reach as they dig into the brick. Before your wide eyes, he climbs up one more level, then vanishes over the edge of the roof.";
				now Resolution of Wild Kitty is 100; [ignored]
				now Wild Kitty is resolved; [end of chain]
	else if Resolution of Wild Kitty is 1 or Resolution of Wild Kitty is 2: [had a friendly or lewd conversation before]
		say "     Remembering the spot where you found Sascha last time, you decide to wander around that area in hopes of meeting him. Some time passes, with you letting your eyes wander up and down the street, trying not to linger too long on the haunted-looking building across from your position, behind an imposing iron fence. You can't help but wonder if he'll ever show, but the telltale tap of shoes on concrete rewards your patience. 'Oh! Hello again.' When Sascha appears from around a nearby corner, he seems less put together. His hair hangs limply, dripping with sweat, and his turtleneck is nowhere to be seen, replaced with a loose-fitting mint-green tank top that does nothing to hide his fuzzy, lithe physique. Huffing softly, he wipes his face on his sleeve, popping his trademark green apple candy from his mouth and fanning himself with his spare paw. 'Phew. Have you ever tried to run from one of those rams? It's a hell of a workout. I had to lose him on the rooftops.' Grabbing his knees, Sascha takes a moment to recover, then finds a seat on a nearby curb, his tail swirling in the air as he pats the spot next to him.";
		say "     Wondering aloud if the cat has a death wish, you sit beside him, watching as he plays with the sucker in his mouth. A soft purr starts as you sit, and his head leans against your heartbeat in a gesture of familiarity while his paw gently rests on your knee, paw pads slowly rolling in circles that bring forth images of things far less innocent. What a tease. 'Thanks for coming to see me again. You're a nice [guygal].' Yawning lazily, Sascha works his paw up your inner thigh, stopping just short of your private parts. 'Did you miss me?' he asks, his voice vibrating as he starts to advance one finger, trailing over your leg and roaming closer, and closer.";
		let Sascha_Choices be a list of text;
		add "Let him continue. It feels good, and you can't think of anywhere else you'd rather be." to Sascha_Choices;
		add "Gently but firmly slide his hand away from your crotch. You just wanna hang out, that's all." to Sascha_Choices;
		add "You wanted to get to know him, but this feels a bit... 'feral-lite'?! Get out of there!" to Sascha_Choices;
		let Sascha_Choice be what the player chooses from Sascha_Choices;
		if Sascha_Choice is:
			-- "Let him continue. It feels good, and you can't think of anywhere else you'd rather be.": [a bit of fondling]
				say "      Trying to keep the aroused shake from your voice, you nod and affirm that you missed Sascha, though you aren't sure if he's interested in what he is currently doing, or just attempting to tease you. After all, he [if Resolution of Wild Kitty is 1]didn't progress past flirting before[else]declined your offer for a fuck the last time[end if] Has he changed his mind? You're more than willing to please him. 'Mmm. Maybe.' Sascha takes a firmer hold of your genitals, sweeping soft fingers over them as he leans against your chest. Settling in, he watches with interest as his fingers coax [if Player is neuter]a pleasant tingle[else]wetness[end if] from your arousal, not providing enough stimulation to bring you to orgasm. It's the best [if Player is male]handjob[else]fingering[end if] you've received in a long while, and you can't help yourself; returning the favor with stroking fingers that slip under his shirt, working their way over the cat's back, then lower, seeking his waistband so that you can feel what hides beneath that swaying tail. Just a handful of that soft rump would bring you over the edge!",
				say "     Suddenly, the weight of Sascha's nuzzled-up cheek leaves your chest, replaced with a view of half-lidded emerald eyes as he squats before you. For a moment, you think he's going to take a more hands-on approach to your pleasure, but instead, those softly pouting lips find yours, overwhelming your sense of taste with sweet apple flavor. Slow and deliberate, he swirls his rough tongue over the inside of your mouth, his teeth teasing at your lower lip. Then suddenly, with a show of tonguesmanship, he transfers his lollipop to your mouth, stroking your cheek with one silken paw and then breaking contact, standing with a sigh.";
				say "     'Sorry, [SaschaPAddress]. Next time, I promise. I'm a third-date kind of guy,' He murmurs, waving as he clambers up a nearby gutter and pausing just before he reaches the roof to tug his waistband lower, showing off most of the curve of his pert rump. With a teasing shake of his hips, he continues on his way, gracefully vaulting onto the roof and out of sight. Feeling your face flush, you swirl the sweetness of his kiss around with your tongue, tasting him on the sucker. Your genitals throb in protest, and you contemplate relieving yourself. You think better of it, standing on shaky legs and heading away, sparing a glance in the direction that Sascha disappeared. Next time, huh? You can't wait.";
				now Resolution of Wild Kitty is 3; [responded to his advances]
			-- "Gently but firmly slide his hand away from your crotch. You just wanna hang out, that's all.": [a bit of fondling]
				say "     Declining Sascha's advances, you gently but firmly place his paw on his knee, away from your nethers. You apologize for leading him on, but you aren't interested in a sexual relationship. You would love to see him again, though. Sascha looks down like a chastised child, a rueful grin on his pretty black muzzle. 'I don't suppose I can change your mind, can I? That's a shame. You know, you're a bit of an oddball. Most survivors would jump at the chance to cum all over me, even if I had three heads and a crab claw for a tail!' As you stammer out a more in-depth apology, the cat stuffs a fresh lollipop in your mouth, wrapping his arms around one of yours and squeezing it. 'I didn't say it was a bad thing, silly. Just a little disappointed. I don't usually get to play with someone that's not trying in vain to breed me. But I'm not one to force things. We can be friends if that's all you want.' You sit in silence, turning the stick of your sucker as your tongue glides along, slowly dissolving the tasty treat, almost dozing off as Sascha's slow purr lulls you into a sense of security. Sadly, it can't last, and you say your goodbyes, watching as the slender black cat disappears up a nearby fire-escape, waving goodbye as he dangles at least 30 feet in the air.";
				now Resolution of Wild Kitty is 50; [just hanging out with him]
			-- "You wanted to get to know him, but this feels a bit... 'feral-lite'?! Get out of there!":
				say "     Gruffly brushing off the unwanted touching, you stand up and gain some distance. Anything that desperate to fuck has to want something you aren't interested in giving! Sascha calls after you, surprised at the sudden rejection, but when you don't turn back, he appears to get the hint. [italic type]You don't think you'll see him again after this. [roman type][line break]";
				now Resolution of Wild Kitty is 102; [rejected flirtations, gruffly (end of content)]
				now Wild Kitty is resolved;
	else if Resolution of Wild Kitty is 3 or Resolution of Wild Kitty is 50: [Player open to advances or just wanting to be friends]
		say "     Making your way through the streets in the general section of the city around the Grey Abbey Library, you arrive where you first met Sascha. This time, however, you don't have to wait long for the cat to show himself. A familiar tuft of messy white hair between flicking ears peeks out from behind a tree in the overgrown garden of that creepy-looking house across the road, then vanishes behind it once more. Did he come from exploring inside of that place?! Besides the chance of falling through rotten floorboards and the like, it has a certain haunted look to it. While you're still wondering whether Sascha's in his right mind, a sudden rush of movement can be seen on the far side of the fence, with Sascha vaulting over it in a smooth and eye-grabbing acrobatic act that ends in a perfect landing on the sidewalk.";
		if Resolution of Wild Kitty is 3; [responded to his advances]
			say "     'Perfect timing, daddy!' Sascha purrs, standing in front of you with his legs proudly spread. There's nothing on his lower half, though his trademark turtleneck still covers everything above his waist, and with a start, you realize he's more than just a man. Rather than the fuzzy balls and kitty cock you expected, a pink pair of lower lips sits between those lithe, athletic thighs, with a slightly enlarged peeking clit jutting in front. Trailing his fingers over his exposed sex, Sascha leans against the fence, giving you an eyeful of his shameless exhibition. With a playful grin, he nods toward his lower half, his tongue peeking between his lips. 'Not what you were expecting? I've always identified as a man, but I never had a problem with my pussy. I wouldn't get much use out of a dick...' Rolling the pads of his fingers over the swollen nub, he coaxes a glistening trail of lubricant over his oversized clit, stroking it like a miniature cock. 'Outside of the occasional pregnancy scare, I've gotten a lot of mileage out of this pretty little thing.'";
			LineBreak;
			say "     [bold type]How do you react to Sascha's casual revelation of his transgender status?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - He's pretty hot! You're fine with your sexy kitty being... different.";
			say "     ([link]N[as]n[end link]) - Pull away from him. This isn't your scene.";
			if Player consents: [more of a sexual relationship]
				LineBreak;
				say "     You can't help but stare as Sascha fingers himself, licking your lips as a glittering string of pussy juice drips down to the concrete below. The urge to taste him, barely suppressed, drives you to step closer, ready to please him, but a hand on your chest stops you in your tracks as padded fingertips keep you at arm's length. 'Not yet, daddy. Our third date isn't over,' Sascha says flirtatiously, then unwraps another apple-flavored treat and slips it between his lips without pushing you away, his chest vibrating with a familiar purr. 'If you want to get in my pants - I left them at the place where we're going! You just have to get to them and prove that you're worthy!'";
				now PlayerRomanced of Sascha is true; [flirted back, into him]
				say "[SaschaFreerunning_Intro]";
			else: [Sascha's disappointed and drops the player]
				LineBreak;
				say "     Shaking your head, you decline Sascha's advances. You don't have a problem with him, but aren't attracted to men like him. Hopefully, he understands. Sascha looks slightly disappointed as you affirm that you aren't interested in a physical relationship with someone like him, licking his fingers clean and ceasing his efforts to entice you. Placing a hand on his neck, he looks away, hurt written across his features. 'Oh. I suppose that's fair enough. I didn't think you'd mind after you let me-' Shaking his head, he steels himself, wiping his eyes. 'Okay, then. I suppose we don't need to see each other again.' As Sascha walks away, his tail hanging lifelessly, you notice that he doesn't take his acrobatic route, instead walking away with his hands in his pockets. [bold type]You surely won't see him again. [roman type][line break]";
				now Resolution of Wild Kitty is 102; [rejected flirtations, gruffly (end of content)]
		else if Resolution of Wild Kitty is 50: [just hanging out with him]
			LineBreak;
			say "     'Perfect timing, daddy!' Sascha purrs, standing before you dressed in his usual outfit, with his hands in his pockets. It seems he was waiting for you! Approaching with bouncing steps, he's nuzzling into your chest a second later, greeting you with exuberant affection reminiscent of a housecat. Stepping backward, he unwraps one of his favorite green lollipops, swirling it between his lips as he contemplates you.";
			now PlayerFriended of Sascha is true; [no flirt, just friends]
			say "[SaschaFreerunning_Intro]";
		now Wild Kitty is resolved;

Section 2 - NPC Object


Table of GameCharacterIDs (continued)
object	name
Sascha	"Sascha"

Sascha is a man.
ScaleValue of Sascha is 3. [human sized]
Body Weight of Sascha is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Sascha is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Sascha is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Sascha is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Sascha is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Sascha is 5. [length in inches]
Breast Size of Sascha is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Sascha is 2. [count of nipples]
Asshole Depth of Sascha is 9. [inches deep for anal fucking]
Asshole Tightness of Sascha is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Sascha is 0. [number of cocks]
Cock Girth of Sascha is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Sascha is 0. [length in inches]
Ball Count of Sascha is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Sascha is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Sascha is 1. [number of cunts]
Cunt Depth of Sascha is 9. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Sascha is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Sascha is 4. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Sascha is false.
PlayerRomanced of Sascha is false.
PlayerFriended of Sascha is false.
PlayerControlled of Sascha is false.
PlayerFucked of Sascha is false.
OralVirgin of Sascha is false.
Virgin of Sascha is false.
AnalVirgin of Sascha is false.
PenileVirgin of Sascha is true.
SexuallyExperienced of Sascha is true.
TwistedCapacity of Sascha is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Sascha is false. [steriles can't knock people up]
MainInfection of Sascha is "Catboy".
Description of Sascha is "[SaschaDesc]".
Conversation of Sascha is { "<This is nothing but a placeholder!>" }.
The scent of Sascha is "[SaschaScent]";

to say SaschaScent:
	say "He smells like green apples with an undertone of sweat and sweetness that you can't quite place.";

to say SaschaDesc:
	project the Figure of Nerdy Mouse_clothed_icon;
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Sascha] <- DEBUG[line break]";
	say "...";










[
If the Player's trans and interested:

Sascha's display is sexy, but your excitement bubbles over as you listen to his confession. It's nice to see someone who understands what it's like to have a body that doesn't match your inner view of yourself. In that regard, the nanites are a godsend. Changing yourself no longer costs thousands of dollars and doesn't require shopping for a doctor that believes you!

Sascha's eyes widen, and you hear a soft purr kick off in his throat as he brings his fingers to his mouth, licking them clean of his juices. "Birds of a feather flock together, huh? Even better! If you're willing to play a little game with me, I'll let you take a closer look~."

If the Player is trans and is not interested in Sascha:

Sascha's display doesn't interest you, but your excitement bubbles over as you listen to his confession. It's nice to see someone who understands what it's like to have a body that doesn't match your inner view of yourself. In that regard, the nanites are a godsend. Changing yourself no longer costs thousands of dollars and doesn't require shopping for a doctor that believes you!

Sascha looks slightly disappointed as you affirm that you aren't interested in a physical relationship with someone like him, licking his fingers clean and ceasing his efforts to entice you. Placing a hand on his neck, he looks away, hurt written across his features. "Oh. I suppose that's fair enough. I didn't think you'd mind after you let me-" Shaking his head, he steels himself, wiping his eyes. "Okay, then. I suppose we don't need to see each other again."

As Sascha walks away, his tail hanging lifelessly, you notice that he doesn't take his acrobatic route, instead walking away with his hands in his pockets. You likely won't see him again.
]



[if PlayerRomanced of Sascha is true]

[if PlayerRomanced of Sascha is true]promiscuous [end if]

[if PlayerRomanced of Sascha is true]pantsless [end if]


to say SaschaFreerunning_Intro:
	say "     'So, I'm sure you've noticed by now that I like to climb. Have you ever heard of freerunning?' Without waiting for your answer, Sascha launches into an animated explanation. 'Well, there are these cool, partially renovated high-rises near here, lots of construction equipment, and hardly anyone around. I used to DREAM of living there so I could climb and look out over everything without security dragging me away. I scouted it out, and there wasn't anything too dangerous.' Suddenly shy[if PlayerRomanced of Sascha is true] despite his nude lower half[end if], Sascha has the air of someone asking a date to the prom. 'Would you like to come with me? A roof is a great place to [if PlayerRomanced of Sascha is true]give you your prize[else]snuggle and watch the sunset[end if].'";
	LineBreak;
	say "     [bold type]Exploring these half-finished high-rise apartments sounds slightly dangerous. Do you want to risk life and limb to grow closer to the [if PlayerRomanced of Sascha is true]promiscuous [end if]kitty?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - A little danger is the spice of life! You'll go with Sascha to try freerunning, and... other fun!";
	say "     ([link]N[as]n[end link]) - That seems like a waste of time. You risk your life enough just making it day by day!";
	if Player consents:
		LineBreak;
		say "[SaschaFreerunning_Main]";
	else: [player rejection of Sascha's main interest]
		LineBreak;
		say "     'All of this, just to get rejected. Isn't that ironic?' Sascha shakes his head sadly, his excitement melting at your words. 'I'm not looking for a relationship if we don't have anything in common, and well, I'm not going to slow down for you. If you at least try-' Sascha trails off, shaking his head. 'No, that's not fair. I don't want to force you to do something you're not ready to do. Take care of yourself.' Walking away with his head lowered and his tail between his legs, Sascha turns his head to shoot you one last longing look, then continues out of sight. [bold type]You surely won't see him again. [roman type][line break]";
		now Resolution of Wild Kitty is 102; [rejected lifestyle, gruffly (end of content)]

to say SaschaFreerunning_Main:
	say "     Smiling at the [if PlayerRomanced of Sascha is true]pantsless [end if]cat's exuberance, you tell him you'd love to go with him. The view sounds beautiful [if PlayerRomanced of Sascha is true]and you'd love to give that pretty pink pussy some attention. [else]look out over the city with him on your arm. [end if]All he has to do is show you the way! 'Yes! Are you sure? I'm not going to take it easy on you!' Pressing close, Sascha beams, his tail curling and twitching with excitement. His arms snake around your waist, hugging you tightly and vibrating your chest with a deep purr before pulling away. Sliding his hand into yours in a firm grip, he pulls you along, towards your intended destination, his [if PlayerRomanced of Sascha is true]pantsless [end if] shapely rump rolling with every step. A little while later, you arrive at a five-story building in varying stages of construction, lined with scaffolding and open to the sky in several places.";
	say "     Thankfully, it appears to have been abandoned long before the nanites came along, so you're unlikely to encounter many mutants within its walls. The only problem is how Sascha expects you to enter the building. From the looks of it, the entrance has been well-secured, and tearing down laminated boards nailed together will draw unwanted attention. 'This way!' you hear your excited kitty call out as he waves from the side of the building, having slipped from your grip, and run ahead. As you approach, he sets his stance, squatting down and giving you an eyeful of two pretty pink holes before launching himself up to grab the edge of a balcony a story up. He keeps his momentum, smoothly pulling himself up and flipping over the railing onto the balcony. He peeks down at you with a grin. 'Through here!' he calls, waving at what you assume to be an opening in the building behind him.";
	WaitLineBreak;
	let bonus be (( Dexterity of Player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Dexterity Check):[line break]";
	if diceroll + bonus >= 12:
		say "     Having to improvise the logistics of keeping up with a very athletic cat boy, you looking around and thankfully notice an abandoned ladder placed nearby. Retrieving that, you lean it against the balcony and climb after Sascha, gracefully swinging yourself over the railing soon after. The cat meanwhile has already passed through a door-shaped hole in the wall nearby, grinning out at you through the opening. You step in after him and are greeted in a bare-walled apartment, with Sascha throwing his arms around your waist, hugging you tightly and tucking his head under your chin. 'You did it! I didn't expect you to keep up with me, but you did fine! Let's go for the next challenge!' Breaking the embrace, the black cat tilts his head toward the apartment's door. 'The stairs to the next floor have collapsed, so we'll have to go around. Come on!'";
	else:
		say "     Having to improvise the logistics of keeping up with a very athletic cat boy, you looking around and thankfully notice an abandoned ladder placed nearby. Retrieving that, you lean it against the balcony and try to climb after Sascha, but your fingers slip, sending you crashing to the ground. You roll out of the way before the metal ladder crashes down on you, staring up at the giggling cat with wounded pride and a bruised ass. That didn't work so well. Let's look around for another way. Heaving yourself to your feet, you have a look at the plywood construction siding, finding a piece that seems less securely attached than the surrounding boards. Sliding your fingers through a gap, you grip the side and give it a pull.";
		let bonus be (( Strength of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Strength Check):[line break]";
		if diceroll + bonus >= 12:
			say "     With an ominous crack, the board comes loose, creating an opening you can use to enter the building. It just takes a moment to find a railing-less stairwell inside to make your way to the first floor, where Sascha is not so patiently waiting for you, looking through an opening to the balcony.";
		else:
			say "     The board bends away from the rest of the siding, but then snaps back as you prove not strong enough to hold onto it, pulling your fingers with it and slamming against the edge of the hole. With a soft hiss of pain, you withdraw your fingers, shaking them to get rid of the numb feeling. As you're silently cursing your misfortune, your gaze falls upon something just lying abandoned on the ground nearby. It's a grimy, half-splintered sledgehammer! Just the thing to find AFTER you made a fool of yourself. The tool is barely serviceable, but useful enough to destroy one of the plywood boards with, splintering it down the middle. After pushing through the jagged hole, it just takes a moment to find a railing-less stairwell inside to make your way to the first floor, where Sascha is not so patiently waiting for you, looking through an opening to the balcony.";
		say "      As you appear behind him instead, he seems confused, but as you ask what's wrong, Sascha shrugs, shaking his head and smiling. 'Nothing. I suppose I just thought you would-' Giggling softly, he pats you on the back, sounding a bit cheated. 'Good job, daddy. You may have taken a different route, but-' Clearing his throat, the cat pointedly ignores your method of entry, pointing toward the opposite side of the building. 'The stairs here have collapsed, so we'll have to take a different route. Come on!'";
	say "";







The detour:

After crossing a few areas with nothing but exposed beams to prevent you from falling to the ground floor, you arrive at a simple open window with scaffolding just outside. Assuming this is your destination, you ask Sascha if he wants you to climb the side of the building from here. Three floors sound like a lot, but you're game if he is!

'Yep!' The chipper cat says as he leans out the window, tail lifted and curling into a question mark. You can't help but notice how much of him this angle shows off, giving you a pleasant view of (a black rump with two pink holes, one puffy and clenched tight and another slightly agape, glistening with wetness/a shapely rump barely hidden by his swishy track pants.)

Without another word, Sascha climbs outside, waiting for you to peek out before he takes off on the flimsy wood, jumping across a gap with ease and gripping an exposed metal bar, spinning around it, and flinging himself to the next floor. Pausing there, he squats, crooking a finger in your direction as if asking you to follow him. Before you can pick your jaw off the floor, Sascha's zooming up to the next floor, pulling off death-defying moves that make you wonder if he's found a cheat code for life! Surely he doesn't expect you to run up a wall like that.

You swallow as you follow Sascha's route with your eyes. You can't match his grace, but there seems to be a safer way up. The only hurdle is a collapsed board with a sliver of a bar to stand on. If you slip, you'll plummet at least forty feet to the ground below. Even if the nanites manage to heal you, any mutants that hear the sound of your fall might take advantage of you. Alternatively, you notice a direct path upward, but you'll have to pull yourself up by your fingertips to the upper levels. It'll take an obscene amount of strength!

If the Player chooses to pull themselves up (str check pass):

Screw the more dangerous route. You trust your muscles much more than you trust that meager footing. Reaching up, you grip the scaffolding above you, raising yourself inch by inch as your forearms strain, your muscles screaming at you to stop. It takes a while, but you pull yourself up without risking your safety, crossing two levels and resting your weary arms before you scramble to your feet. Just one more to go! Hopefully, you don't need to use your arms for a while. Rubbing your aching muscles, you set off after the cat, hoping your reward will be worth it.

If the Player fails to pull themselves up (str check fail):

Screw the more dangerous route. You trust your muscles much more than you trust that meager footing. Reaching up, you grip the scaffolding above you, raising yourself inch by inch as your forearms strain, your muscles screaming at you to stop. Unfortunately, your strength gives out halfway, and you dangle there helplessly before setting yourself back down, hoping Sascha didn't see your pathetic attempt.

If the Player decides to jump the gap (dex check pass):

Steeling yourself, you trace your route mentally before stepping backward and breaking into a run. You jump at the right moment, hopping across and bouncing off the metal beam, landing gracefully on the other side, and as you land, you hear an excited clap from above. Deciding to show off a bit, you take the remaining parts of the path at breakneck speed, reveling in the wind on your face and reaching the same level as Sascha in no time.

If the Player fails to jump the gap (Dex check fail):

Steeling yourself, you trace your route mentally before stepping backward and breaking into a run. You jump at the right moment, but as you reach the beam, your footing is too shaky, sending you careening toward the ground. Thankfully, you catch yourself on the platform, pulling yourself up with difficulty and pausing while your heart beats out of your chest. That was a close one! You're more cautious with the rest of your route, taking your time and eventually reaching the same level as Sascha. Hopefully, he doesn't hold it against you that you aren't as practiced as he is!

The remainder of the path to the roof isn't as hazardous as the rest, and Sascha leads the way, tail twitching above his (bare ass/shapely cloth-covered rump.) Once you reach the landing, he runs up the stairs, throwing open the door and disappearing onto the roof. You can't help but share his excitement for the (prize/view) he promised you, and you hurry after him, shielding your eyes as you step out onto the windy roof.

If you only wanted to cuddle:

Sascha's waiting for you, leaning over the edge of the building and pointing out into the distance. As you approach, he speaks in an excited voice. 'Isn't the view from here amazing?'

You stand behind the cat, avoiding the dizzying view beneath him and slipping your arms around his waist. He's right, the city skyline IS incredible, but you find it hard to focus on anything in the distance when something so beautiful is within arm's reach. The way he sags backward against you and his vibrating purr tell you that you're not the only one, and you sit in comfortable silence as the sun paints golden streaks across soft black fur.

'Thank you for coming up here with me. I know you're not interested in sex, but that's not all there is to me, either.' Turning in your arms, the cat perches at the edge, his arms slipping around your waist and his fluffy hair tickling your chin. 'I'll find an easier way down for you. You must be exhausted.' He murmurs, his face buried in your neck. '...Once I'm ready to let go.'

Sascha is true to his word, and as you return to the ground floor, he holds your hand, leaning against your arm and chatting about other places in the city he wants to take you to. Too soon, you reach the high-rise's entrance and say your goodbyes, with only the faint feeling of Sascha's kiss on your cheek to remind you of his presence and a green apple sucker he tucked into your hand.

If you expressed interest in sex:

Sascha's waiting for you, leaning over the edge of the building and pointing out into the distance. As you approach, he speaks in an excited voice. 'Isn't the view from here amazing?'

Of course, you can't see anything else BUT the view, though it's very different from the one he's describing. Standing on tiptoes with his tail lifted, he's giving you a beautiful show of pretty pink lower lips glistening wet in the sunlight and a puffy hole beneath his flicking fuzzy appendage. Both of them look like they've seen their fair share of action, and his pussy, in particular, winks as he speaks, begging for attention.

Yes, the view is spectacular, and you tell him as you shamelessly (shrug out of your pants/lower your hands to your aroused sex) and (take hold of your erection/roll your finger over your clit). The slow wiggle of those hips calls to you, and you step closer, massaging soft cheeks and pulling them apart to inspect Sascha's light pink holes, feeling your mouth moisten in desire.

'See something you like, daddy~?' Sascha coos, pressing backward and spreading his legs as if inviting you to sink a finger into those drooling folds. 'You've been such a good sport, following me up here. (Even if your methods were odd, I appreciate that you tried your best.) Now that you've worked up an appetite, how about some cooldown exercise?'

Sascha braces himself against the roof's edge, his tail lifted out of the way and his hips swaying invitingly. You doubt he'll turn down anything you want to do to him. How do you want to fuck him?

Oral:

Those soft pink lips call for your tongue, and you can't resist for a moment longer. Without a moment's hesitation, you drop to your knees, forgoing your pleasure to press a gentle kiss to Sascha's clit. It's larger than you're used to but not particularly strange, considering the things you've seen in the city, and you nuzzle against it, suckling softly as your tongue laps at its glistening surface.

'Mmmph. Daddy~.' Sascha coos, his legs shaking as you nibble at his most sensitive spot. His stance widens to nuzzle back against the gentle simulation, but he's growing more demanding by the second, rolling his hips hard enough that you worry if you don't move on, he'll break your nose with enthusiasm.

Purrs vibrate through his body, and sweet juices flood your tongue with each lick, a gentle, fruity musk settling over your senses as you work your way higher. Silky lubricant coats your tongue as you swirl it over his impossibly smooth entrance, and its honey-like flavor encourages you to suckle, your tongue flicking out to tease winking clenches from him.

'Y-You're not bad at that.' Sascha pants, one paw slipping between his legs to add a slow circling motion to the stimulation you're giving him,
shamelessly masturbating his swollen clit in time with your lapping tongue. 'P-Please. Deeper. I like it sloppy.' He begs, his hole clamping on what little you give it.

Gripping well-toned but bubbly cheeks for a handhold, you oblige the needy kitty's request, slurping your tongue past soft folds and invading his insides with long, sloppy laps. Your nose presses against his ass as you all but fuck him with your oral expertise, adding a lewd, sloppy schlick to his desperate sounds. You can't breathe with how desperately he's pushing back, but you don't want to, content to subsist on nothing but sweet honey and the musical moans you draw from his open mouth.

'Ah. I-I-' Sascha goes incoherent as his inner walls wildly spasm, trapping your tongue in a milking channel and riding your face as you do your best to prolong his pleasure, his fingers abusing his clit with desperate stroking. It's a few minutes before he can move, still twitching as an errant breeze strokes his nethers, but he removes his rump from your face, letting you drag in grateful breaths.

'N-Next time, let me do you,' Sascha says as he looks over his shoulder, his chin marred by a trail of drool and his fluffy hair wet with sweat. The look in his eyes tells you that he'll show you no mercy when he returns the favor. Fuck, that's hot.

Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner.

Anal:
Size fits:

Forgoing the obvious choice, you flop your manhood between Sascha's cheeks, rubbing your cockhead against his plush pucker. Licking your lips, you prod inward, a pearl of precum slickening the way. Taking his purring moan as consent, you spread his cheeks, worming deeper into his ass with slow pressure.

'Mmmph. That always feels so strange.' Sascha squirms as you reach the halfway point but does not attempt to get away, pushing back into your thrusts to take you to the root. 'You don't have to go slow. I've had more than my fair share of sly guys thinking they can get away with sliding into the wrong hole.' He giggles, clamping down on your cock as though egging you on. 'Just make sure you don't pull out.'

You don't need him to tell you twice. As tight as he is, there's no way you could pull out if you wanted to. Every thrust meets a bit of difficulty, but rippling clenches spur you on, milking globs of pre to slicken the way, and soon you're (slapping your balls against the pretty kitty's dripping slit/slamming your hips into his perfectly padded cheeks.) With every drag of your cock, his hole clings to your shaft as if begging you to push back in, and you can feel his purring vibrating through his walls, bringing a rising tide of cum into your steel-hard shaft.

'Daddy~.' Sascha mewls, twitching limply in your arms. His face dangles over the edge, and his legs go limp, leaving nothing but your connection and gripping fingers to hold him up. Judging by the rhythmic milking of his anal muscles, he's close too, and the slow dripping of his juices against the ground below confirms it.

Slamming to the hilt as hard as you possibly can with a tight grip wringing your cock, you pump your love deep into the kitty's hole, gritting your teeth and holding him there as you feel him spasm and mew through his finish, tail sticking straight up and frizzing as he pushes back in a telltale rhythm. By the time he's finished, he looks a mess, with sweaty hair and a satisfied but exhausted smile.

'You're such a stud.' He coos, shuddering as you withdraw from his gaping hole, your handiwork. His rear entrance is still pretty and pink, but a trail of your cum oozes out, and he's still gaping even after your cockhead slops from its tight grip, winking as if demanding a second round. 'You're the only one to make me cum hands-free. You can do that again whenever you like~.'

Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner.

Vaginal:

Sascha's pussy looks inviting, and as you line up your tip, you can feel him shudder, smearing his swollen clit over your cocktip in a lewd kiss. Steadying him with a stern grip, you test his folds, delighting in the slick silk your cock slips into with little effort. An experimental thrust slides you to the root, and you realize that he's good to go, ready to take anything you can give him.

('You're so big~.' Sascha coos, pressing his sopping slit back into you as you feel his cervix squish against your cockhead, then roll against your shaft, letting you into the narrow passage past it without allowing access to his womb./Sascha sighs as you slip in, melting into your touch and clenching gratefully. You're nowhere near bottoming out inside of him, but it doesn't seem to matter!) 'Pound me, daddy. I can take it.' He practically begs, all of his teasing melting away into pure neediness.

Not one to disappoint, you slip free of those sloppy folds, then sheathe yourself again, picking up a heavy rhythm that sends your cock (slamming into that tight dead end./stirring his inner walls with aggressive thrusts.) Slick juices roll down your shaft, and you barely resist the urge to cum immediately, gritting your teeth and attempting to work Sascha to his finish first.

You don't have to wait long. Sascha seems to get more out of your thrusts than you are, closing his eyes and purring as a litany of needy mews slip from his lips. His tail goes straight up as a storm of clenching wetness squeezes your cock tight, and you realize his orgasm isn't far, spilling over with a groan that echoes across the empty roof, wringing your cock as he pushes back in a rhythm that nearly sends you both to the ground.

You erupt just as Sascha goes limp, his pussy drooling down your shaft as you baste his cervix in your creamy seed. Your cock bucks like a spirited horse, and you can barely stop your hips, filling the space with wet schlicks, but sadly, the feeling doesn't last, replaced with the softer pleasure of afterglow.

Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner.

Too big:

As you line your cock up with Sascha's pussy/anus, you realize he's too small for your gargantuan length. Feeling cheated, you saw your cock between those upturned cheeks, lamenting that you can't fuck the needy kitty. Perhaps he'd prefer to do something else that wouldn't tear him open?

Settling back against your slow grind, Sascha lets go of his handhold, instead reaching between his legs to grip your shaft and guide it against his soft lower lips. 'It's okay, daddy. You can still fuck me.' Before you can question him, he stands, wriggling his hips and closing his legs to seal your cock between them, nuzzling your twitching tip against his slick lips. 'It's not as good as my pussy, but this will do. Don't hold back~.'

An experimental thrust tears a groan from your lips as your dick follows the slick lips, using the kitty's lower half as a makeshift sex toy. He's right. It isn't as tight or warm as a greedy hole, but his plush fur makes up for the difference, coaxing you to fuck his thighs with increasing fervor, your cock smearing its arousal over his clit.

Gripping your increasingly wet dick in both hands, Sascha strokes you in time with your feral rhythm, spreading his slick juices over your shaft. 'That's it, daddy. Let it all out. You may not fit, but you can still cum inside me. Fuck me like you mean it~.'

Soon enough, you feel your balls bubbling over, your first shaft painting the ground below before Sascha can slip you between his lips, aiming your eruption into his greedy hole and milking every drip from your cock with stroking fingers. By the time you finish painting his innards, you swear you can barely feel his pussy against your cocktip beneath the clinging layer of cum, but the lingering afterglow and gentle fingers are more than enough for you.

Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner.




Sascha ends here.
