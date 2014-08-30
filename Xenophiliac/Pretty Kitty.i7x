Pretty Kitty by Xenophiliac begins here.

"Adds Andromeda with her clothing shop to Flexible Survival to provide for the players aesthetic garment choices."

Section 1 - The Pretty Kitty

[Defining the store itself]
The Pretty Kitty is a room. The Pretty Kitty entrance is a door. It is south of Mall West Wing and north of The Pretty Kitty. The The Pretty Kitty entrance is open.
Instead of examining the The Pretty Kitty entrance:
	say "Through the multiple clothing displays and stoic mannequins, the lights of [the other side of the The Pretty Kitty entrance] are [if findwires is 2 and fixedgens is 2]on, displaying bright light throughout the store.[otherwise]off, not surprising considering that there is no power. Candles and the occasional lantern are providing some light in the store.";

[Describing the store & NPC beginning descriptions]
The description of The Pretty Kitty is "[PKDesc]".
to say PKDesc:
	if thirst of Andromeda is 0:
		say "	Walking through the double-glass doors, you walk into what seems to be a small clothing boutique. Racks of many different clothes line the walls of this store, with some expensive-looking pieces displayed proudly on mannequins. Clothing for any season and situation sit neatly-folded on wooden shelves, price tags hanging off each piece. Pleasant music plays quietly over the store speakers, giving a relaxing feel to your stay here. [if findwires is 2 and fixedgens is 2]Digital bells ring as you walk through the door[otherwise]A metal bell, currently tied to the door with string, rings as you enter[end if], signaling your entrance into the store. The few people browsing the remaining wares look up at you, but quickly go back to perusing the different selections of clothes. You hear a loud [']EEEP['] from behind the checkout counter beside you as a figure pops out from behind it. A catgirl, apparently the caretaker of this store, smiles happily at you.";
		say "[line break]"; [There for first description clarification]
		say "'Hi there! Welcome to my shop, The Pretty Kitty, named after little ol[apostrophe] me! Feel free to take a look around, we've got prime merchandise available here!' The perky catgirl yells at you as she pops up from behind the counter, bouncing happily up and down. She stops bouncing for a moment, looking deep in thought, before realizing something important. 'Oh! I forgot to introduce myself. I'm Andromeda! If you need anything, don't be shy!'";
		now thirst of Andromeda is 1;
	otherwise:
		say "	You walk back into The Pretty Kitty, the familiar ringing of [if findwires is 2 and fixedgens is 2]digital bells [otherwise]a metal bell [end if]blaring throughout the store. Andromeda waves happily at you, obviously happy to see you've come back.";
		if libido of Andromeda >= 2:
			say "	Giving a throaty purr when she sees who walked into her establishment, Andromeda winks slyly at you, with, you could swear, a lustful look in her eyes.";
			say "[line break]";
			say "Well hey there, welcome back. Did you come to shop, talk, or did you wanna play some more?' the not-so-innocent proprietor quietly says to you. 'Just give me a hollar if you need anything, beautiful.'";
		otherwise:
			say "	'Hi [if player is female]miss[otherwise if player is male]mister[otherwise]there![end if] Nice to see you back here. Did you come to chat with little me, or are you looking to change up your [Italic type]horrid[roman type] attire?' The perky catgirl says, winking slyly at you. 'Either way, welcome back!'";
			
the scent of The Pretty Kitty is "Inhaling deeply, the smell of clean clothes rushes into your nose, reminding you of clean laundry.".

[Objects inside the store]
Andromeda is in The Pretty Kitty.
Clothing Shelf is in The Pretty Kitty.
Collar Rack is in The Pretty Kitty.

Section 2 - Andromeda

calcnumber is a number that varies. [Used for player-entered variables for sex menu]

[Defining NPC]
Andromeda is a woman.
The description of Andromeda is "     The bubbly owner of the store stands behind the checkout counter, looking around with a curious, innocent look in her eyes. Her tall, fuzzy ears swivel around constantly, taking in every sound echoing throughout her establishment and keeping a lookout for trouble. Wide green eyes peer out from her face, with her slightly-protruding muzzle graced by a constant bubbly smile. Night-black hair flows down to her shoulders, a dark contrast to the rest of her face. Roving your eyes down from her face, you see that her body is covered in short, dark-orange fur, with occasional splotches of gray interrupting the constant orange flow. Contrary to many of the denizens of this city, Andromeda is not at all voluptuous, the ripped shirt she's wearing barely showing her breasts while her slim stomach does nothing to dissuade her lean look. Her thin legs and hips are covered by a pair of denim jeans, faded and worn with years of use. Her long, furry tail flicks back and forth excitedly, almost knocking loose knick-knacks on the floor. Her (probably) pawed feet are currently inside a pair of tennis shoes, old and worn, with one missing a lace. Finally noting your roving eyes, she says 'Hey, eyes up here you!' all while giving you a good-natured smile and sticking her tongue out at you.";

The conversation of Andromeda is { "I'm a cat!" }.
the scent of Andromeda is "     Andromeda smells clean, obviously taking care of herself, but she has been unable to rid herself of the distinct undertones of [Italic type]cat[roman type]."

[Talking with NPC - Individual scenes play till done, then random talks]
instead of conversing Andromeda:
	if debugactive is 1:
		say "DEBUG ->HP: [hp of Andromeda], LUST: [lust of Andromeda], LIBIDO: [libido of Andromeda], XP: [xp of Andromeda] <- DEBUG[line break]";
	otherwise if hp of Andromeda is 0:
		say "     'Hi [if player is female]miss[otherwise if player is male]miss[otherwise]there[end if]! It's nice to meet you! Do you live around here? Is this your first time in the mall? You look new, do you like it here?' You're immediately bombarded by the catgirl proprietor, whatever question you had in your head erased by the barrage of questions. It takes you a few moments to recover yourself, and you find Andromeda staring expectantly at you, eyes gleaming with joy.";
		say "     You smile nervously, unsure what she's waiting for. '...Yes?' you answer nervously, hoping that was the right answer.";
		say "     Andromeda claps her hands together excitedly and beams a smile at you, bounding around the counter and taking your hand in record time. 'Well come on then, I’ll show you around my store.' She says as she pulls you forward, surprisingly strong for her size.";
		say "     You spend the next half-hour being shown around the girl's clothing store, roaming through aisles of different clothes and being shown any piece that sparks your interest. Throughout the tour, Andromeda bounces happily, continuing to bombard you with every question imaginable, and some even unimaginable. You do your best to answer as many of them as you can, but the onslaught is relentless, and a few of them go unanswered. Not that that seems to bother her. In between questions, the bubbly catgirl makes small talk, talking about the weather or what your opinions on fish are. You can't seem to figure out how someone so cheerful still lives here.";
		say "     You're almost sad when the tour ends, and you both find yourself back at the checkout counter. Andromeda takes her place behind the counter, smiling happily at you. 'Thanks for coming along, it's been a while since I've had someone new to talk to! If you find anything you like, bring it up here and we'll get you ready to go!' Thinking to herself for a moment, she lets out an audible [']Oops['], as if she'd just remembered something important. 'As much as I’d like to, I can't give away this stuff for free. Limited supply right now, as I’m sure you know. It'll be some food. I hate finding that stuff myself; the people outside the mall are mean now!' She lets out an audible [']Humph['] at the thought. 'Or if you happen across some milk, I’ll gladly take that for these! The milk from those gryphon’s is soo good.' Andromeda tells you as her tail trembles at the thought of it.";
		say "     You wave goodbye to Andromeda, having to go for now. She beams another happy smile at you and yells 'Come again soon [if player is female]miss[otherwise if player is male]mister[otherwise]you hear[end if]!'";
		increase hp of Andromeda by 1;
	otherwise if hp of Andromeda is 1:
		say "     Walking up to the lithe catgirl, you find that she's hopped up on the counter, sitting comfortably on the checkout line. Waving her feet back and forth casually, her ever-constant smile grows even wider when you approach her.";
		say "     'Hey! Nice to have you back here!' Andromeda says to you as you approach her. She smiles happily as you lean on the counter and start small talking with her. Chatting a bit about everything that's going on, you can't help but have your mood lightened from the girl's constant bubbly mood. Having exhausted most of the small topics you've thought of. You eventually broach the subject of how she got her shop, and she thinks to herself a bit before responding.";
		say "     'Well, I guess it started when I was in high school. Ever since I was a kid, art had always interested me, but high school was where my love of it bloomed. While I did alright in all of my other classes, the art classes I took always excited me, and from there, I took as many different art classes in college as I could. I loved painting, drawing, all of that stuff. Being able to think of new ideas and put them on paper, or taking something in life and immortalizing it in paper is a great feeling, one that is hard to describe to people. But, although I love being artistic, I soon found out that it wasn't a very lucrative occupation then, especially for someone starting out. So I took a look at what I could do for a living, while still doing what I really enjoy. I took a look at a lot of opportunities, but none of them interested me very much. I figured I'd end up doing something I hated, but a friend of mine mentioned fashion designing. I hadn't even considered that!' she yells at you, not waiting for you to recover before continuing. 'Researching into it, fashion design was actually really cool. Being able to think out ideas and patterns for clothes that people around the world wear is so cool! It also allowed me to keep drawing and sketching, which let me to keep doing at least a part of what I enjoy.'";
		say "[WaitLineBreak]";
		say "     'I drew up a few sketches and plans, and after a long time trying to find someone that would even look at my designs, but I was finally able to find someone online. I sent them all of my ideas and designs, and after like a week of nervous waiting, I got a message back saying they wanted to use some of my ideas, and extended a possible job offer to me. Me! Someone online who sent them ideas out of the blue! I was ecstatic, and I couldn't wait. Their headquarters was stationed here, so I had to come up here once to interview. I passed with flying colors, and they had me move up here. Working as a designer, and doing well at it, gave me enough excess cash to rent out this' She extends her hands out, obviously meaning the small store 'space here, and set up my own little shop. While I didn't get much business at first, people liked the few of my designs that I had on display, and enjoyed having their own locally-owned boutique. Soon enough, I had business enough to turn a tidy profit, and I was able to keep on goin['].'";
		say "     Andromeda shrugs. 'That’s about all there is to it. While not very glamorous, I like to think that I was doing well for myself. That is, until everyone changed and now all they do is try to hump you. No appreciation for the finer things in life now!' Andromeda [']harrumphs['] as she says so. Idly wondering to yourself, you ask her if she has any of her personal designs on display.";
		say "     'Nah, not right now. I usually brought in a few generic types and designs of clothing, for people who weren't interested in my own personal designs. That stuff is what's on display. I think I packed most of my own stuff in the back. I want those saved for when this all blows over.' Andromeda smiles at you, seemingly finished with her story. You're about to interject with another comment, but a stag-morph coughs loudly behind you, carrying a pair of jeans and a simple shirt. Andromeda [']EEPs['] loudly and immediately jumps down, motioning for the man to step up. 'Talk at you later!' you hear, yelled loudly in your direction.";
		increase hp of Andromeda by 1;
	otherwise if hp of Andromeda is 2:
		say "     Deciding to chat with Andromeda again, you approach the counter figuring you'll find her there. Contrary to your expectations, she isn't standing behind the counter as usual. Looking around the empty store, it seems she's not anywhere in here. Shrugging to yourself, you figure you'll come back later. Preparing to leave, you barely catch the almost-silent snore from behind the counter. Going back to checkout, you slowly lean over the counter and, looking down, find an interesting sight. It seems that Andromeda has fallen asleep, her back leaning against the side of the counter and legs folded under her. Smiling to yourself and getting back up, you can't hold back the quiet chuckle that escapes your lips at the sight. That seems to have been enough to have woken the catgirl, however, because you're barely turned around before you hear a familiar 'Hi!' echo from her usual position. Turning back around, Andromeda's familiar happy-go-lucky smile is looking your way. Chuckling to yourself once again, you inquire as to the reason for her 'catnap'";
		say "     You swear you can see Andromeda blush, even beneath her orange fur. 'Well, sometimes you gotta take a quick nap to get through the day. Seeing as how no one was around, it wouldn't be a harm to nap real quick. It has been worse since I changed though. Guess it comes with being a cat!' She proclaims loudly, thought you think she's still blushing. Changing the subject to avoid her any more awkwardness, you ask if she'd be comfortable sharing how she changed.";
		say "     You hear a barely audible sigh from her, and you inwardly smile at her embarrassment. 'Sure! Nothing bad really, my story's similar to a lot of the mall-goers still here. I was working here on a slow day, putting a guy who bought something through checkout. Can't remember what he bought..... Anyways, we were in the middle of checkout when there's this BIG commotion outside. The guy at checkout asked me to hold his purchase and ran outside to see what was going on. Nothing happened for a few minutes, and I’m waiting behind the counter, when the same guy runs back in, except he was growing fur! I had no idea what happened or what was going on, so I freaked out and bolted for the storage room. I didn't know if he was going to attack me or something, and I didn't want to take that chance. If I hadn't have run...' Her mood darkens a moment, and she visibly shudders, from fear rather than joy. 'Anyways, he managed to grip my leg, scratching down my leg as we both tumbled to the ground. I flipped over and just started kicking wildly. One of my kicks must've landed in his face or something, because he let go of my leg. I didn't look back as I ran into the storage room, locking it and hiding there.'";
		say "[WaitLineBreak]";
		say "     I stayed there for a long time, a few hours or so. I started feeling odd after a bit, and I started growing hair all over. Before I knew it, I had become a cat.' Andromeda twirls around and does a little flourish, showing off her new body. 'Not that I mind that much. Who would've thought that being a cat would be so cool! Anyways, after I had transformed into a cat, and once everything had calmed down, I took a step outside. Everything LOOKED the same, but it wasn't until a few of the mall rats came in that I realized that this thing might be bigger than I first thought. I haven't gone outside the mall yet, but some of the rats tell me that it's worse outside.' You nod, confirming the mallrats observation. 'Well I guess I got lucky then. I can't really complain about being a cat.' She thinks a few moments. 'I'm more surprised that my shop is still running, honestly. I would've thought everyone would've lost interest in clothing, but it still seems that people want new attire. Or at least, replacement attire.'";
		say "     You absentmindedly talk with her, chatting idly. Andromeda yawns after a few, blinking a few times to wake back up. 'Hate to be a downer, buuuuttttt I’m gonna have to kick you out for now. I gotta get back to my beauty sleep. Gotta keep appearances up.' She says to you, grinning cheekily the entire time, and blushing just a bit. Waving goodbye to the bubbly catgirl, you see her sit down behind the counter again, undoubtedly already asleep.";
		increase hp of Andromeda by 1;
	otherwise if lust of Andromeda is 1 and hp of Andromeda > 1:
		say "     Approaching the proprietor of the Pretty Kitty, you see her beam a smile at you as you walk up. Obviously waiting for you to start before she begins her usual barrage of questions and comments, you casually lean on the counter and nonchalantly ask her why she's carrying a selection of collars, a small smirk on your face.";
		say "     Immediately, you know she begins to blush furiously under all that orange fur. While doing her best to remain composed, your question obviously threw her for a loop. 'Well I don't see why I shouldn't! There's a lot of people that like things like those, and if I'm able to provide that, and make some profit on the side, I don't see why it's a bad thing.'";
		say "     You mention that your just surprised that she'd be carrying such... odd items for sale. Doesn't seem like something that'd be carried in a normal clothing store...";
		say "     Drilling holes in your head with her angered gaze, she puts her hands to her hips with a loud [']Humph['], Andromeda swishes her tail furiously as she talks. 'Well you're one to talk! You went and got one, and I got paid for it, business at work! Now get outta here before I grab my broom!' Batting her tail at you, you have no choice but to skip out of the store, escaping the all-powerful tail wielded by the embarrassed proprietor.";
	otherwise:
		say "	[one of]'Business has been good lately. Sure, payment is in the form of food and milk right now, but it works!'[or]Andromeda is sitting on the counter, batting at her own tail. She absent-mindedly waves at you, instead concentrating on pinning down the offending tail.[or]'That mouse girl in the bookstore looks sooo delectable. I could just eat her up.'[or]'Buy something or get the heck out!' she yells at you, obviously putting on a joking tough guy impression.[or]You and Andromeda idly chat, just enjoying the pleasure of sane company.[or]Andromeda looks around, making sure nobody is paying attention, and brings a paw up behind her ear, scratching furiously. A look of serenity crosses her face, which soon changes to embarrassment when she sees you looking her way. She deftly removes her paw from her ear and looks away, but you're pretty sure she's blushing under all that fur.[or]Currently involved in moving a customer through checkout, Andromeda quickly waves at you before going back to the task at hand.[at random]";

[Fucking with NPC]
instead of fucking Andromeda:
	if player is male:
		say "     Walking up to the counter, with your intent clear in your head, you quietly ask the perky catgirl if she wants to have any 'fun'. Instead of most of the reactions you're used to in this town, Andromeda looks utterly confused. Cocking her head to the side and staring at you vacantly, you're unsure if Andromeda is feigning ignorance or if she really is as innocent as she seems. Instead of continuing this train of thought, you drop the subject, and her bright smile once again shines through.";
	otherwise if player is female and hp of Andromeda < 2:
		say "     Walking up to the counter, with your intent clear in your head, you quietly ask the perky catgirl if she wants to have any 'fun'. Instead of most of the reactions you're used to, Andromeda looks utterly confused. Cocking her head to the side and staring at you vacantly, you're unsure if Andromeda is feigning ignorance or if she really is as innocent as she seems. Instead of continuing this train of thought, you drop the subject, and her bright smile once again shines through.";
		say "     Walking away from the perky catgirl, you're unable to see her biting her lip, preventing herself from saying something to you.";
	otherwise if (lastfuck of Andromeda - turns < 6):
		say "     'I know that you're looking for more fun, but you gotta give me a break sometimes, beautiful.' The perky catgirl says to you with a lighthearted wink.";
	otherwise:
		say "     Heading over to the checkout counter, you jump up on it, planting your rear on the counter next to her. She lets out an [']EEP['] of surprise at your actions, but grinning happily as you plop down next to her, comfortable with your presence. Sitting there in silence for a few moments, you lean over and whisper in her ear, asking her if she's positively sure she doesn't want to have any fun. [if libido of Andromeda > 0] She smiles slyly at you, jumping off the counter and making a show of herself as she deftly flips on the closed sign, then walking to the storage room. Trailing behind her, you wonder just what kind of fun you'll have with the lanky girl.[otherwise] Your question sends her into what looks to be deep thought and concentration, and you think that she might just truly be THAT innocent. That is, until Andromeda flips on the closed sign, grabbing your arm and almost pulling you off the counter, dragging you towards a storage room in the back[end if].";
		say "     Following her, you both find yourselves in the storage room, where Andromeda shuts and locks the door. Crates of what are probably excess clothes are stacked along the walls of this bare room, with the only other furnishings being a haphazard mess of blankets and pillows on the ground. You figure that Andromeda must sleep here at night. Turning around to you, her eyes have taken on a lustful look, and she is panting quietly, her tongue already lolling out of her mouth.";
		say "     Under panted breaths, you hear Andromeda talking. [if libido of Andromeda > 0]'You just had to go and get me all worked up again, didn't you.[otherwise]'If you've taken an interest in little ol['] me, I can't say no to a beautiful thing like you. Not anymore at least.' Already sneaking a hand down into her jeans, it's obvious that, even with such a little question, you've gotten her quite worked up. What do you propose to do with her?";
		say "     [line break]";
		now calcnumber is -1;
		now xp of Andromeda is 0;
		while xp of Andromeda is 0:
			say "(0) [link]Nevermind[as]0[end link][line break]";
			say "(1) [link]Tail-Fuck[as]1[end link][line break]";
			say "(2) [link]Finger Her[as]2[end link][line break]";
			say "(3) [link]Sixty-Nine[as]3[end link][line break]";
			while 1 is 1:
				say "Choice? (0-3)> [run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "Invalid Number. Try Again.";
			if calcnumber is 1:
				say "     Deciding to give the slim catgirl some relief, you saunter up to her, making sure to show off your [breast size desc of player] breasts as you approach the moaning girl. Stopping just short of bumping into Andromeda, you lean in and start kissing and licking under her neck, while your hands dive lower and start to undo the catgirl's pants. Panting even faster from your lavish show and affection, Andromeda's tongue is lolling out of her mouth, her mind lost in pleasure. Removing yourself from the catgirl's neck, you finally undo her jeans, and they fall to the floor, followed by her panties. Quickly taking off your own clothes, and placing them aside, you kneel in front of the catgirl, her dripping cunt filling your vision and her smell filling the air. Taking a long inhale, the scent of her feminine sex and arousal fills your nostrils, and lights your senses aflame. Immediately feeling a burning desire in your chest and loins, you grab her hips and pull her to you. Diving right in, you begin roving your tongue throughout Andromeda's cunt, feeling her insides with your wiggling appendage.";
				say "     Your sudden intrusion turns Andromeda's groans into screams of pleasure, echoing through the storage room as you dig greedily into the catgirl's cunt. The trickles of juices running from her womanhood have turned into streams, drenching your face and chest in her tasteful fluids. Lapping up as much as you can still doesn't stop the flow, the catgirl constantly producing a prodigious amount of fluids. Ignoring the rivers of catgirl cum, you dive back into her needy pussy, giving it some much needed attention. Burying your face into her cunt, you don't notice that her tail has begun to work its way around you, writhing its way around to your back. Positioning itself at the entrance to your seizing cunt, you're too preoccupied with massaging every crevice of Andromeda's pussy to notice it.";
				say "[WaitLineBreak]";
				say "     You do notice it, however, when she forces her tail as far into your [cunt size desc of player], dripping pussy. You stop all action as your mind goes blank with pleasure, your brain unable to handle the massive amount of stimulation you just received from your slit. Regaining thought a few seconds later, you're unable to hold back your moans and screams as her tail jams itself into you in short, savage thrusts. Groaning, panting, and drowning in pleasure, you are able to start your tongue-fucking once again. Both of you are soon a cacophony of moans and screams, with your tongue triggering every nerve inside Andromeda's quivering cunt, and her tail, now nothing more than a girl-cum soaked spear, impaling itself inside your gripping cunt. You're unable to process the incredible pangs of pleasure shooting to your head, and you yell out in climax, soaking her tail in your juices. Recovering yourself, you find that Andromeda hasn't cum, and that her tail is still pistoning your twitching pussy. Gripping her hips close to her face, you get back to the job ahead of you, doing your best to wring out every drop of catcum you can.";
				say "     Eventually, after given two or three more mind-blowing tailgasms, Andromeda finally succumbs to your ministrations. Her eyes roll up into her head as the dam in her cunt breaks open. A tidal wave of fluid rushes out of her cunt, covering you in Andromeda's tasteful fluids. Barely able to keep yourself up, you sag down onto the floor, leaning against a wall, Andromeda's tail still twitching in your cunt, sending spasms of pleasure through you. Andromeda finally returns to her senses, eyes rolling back to where they should be. Sitting on the crate for a few moments, Andromeda gets up and withdraws her tail from you, eliciting a pleasured groan from you. Grabbing her clothes and a towel, she cleans herself up as best she can, but she's still a little drenched as she redresses. Giving you a loving kiss and whispering 'Thanks' into your ear, Andromeda leaves a towel beside you as she walks back outside; you're not entirely sure that one towel will be enough. Resting against the wall for a few minutes, you finally recover yourself, and clean up as best you can. Walking outside past the lovable catgirl, you can't help but notice her eyes on you. Doing your best sensual walk, you're positively sure you see her bite her lip, Andromeda once again getting aroused. Grinning to yourself, you walk out of the store, still covered in the smell of lust and cat.";
				now libido of player is 0;
				now xp of Andromeda is 1;
				if libido of Andromeda < 3, increase libido of Andromeda by 1;
			otherwise if calcnumber is 2:
				say "     Figuring that the poor girl needs help, you quickly undress yourself and set your clothes on a nearby crate, Andromeda watching with aroused eyes as you do so. Walking over to her, you remove her hand from her dripping cunt, drawing out a loud [']Mew['] of displeasure. Deciding to help her out, you pull her in for an erratic kiss, which she haphazardly returns. You can sense her arousal through the kiss, her tongue darting around randomly, doing it's best to find yours. You engage in a drawn-out tongue wrestle, all while hugging her closer and sneaking your hands under her clothes, caressing every inch of fur you can find. Sneaking a hand down into her jeans and underwear, you begin to lightly run your fingers along the outside of her cunt, and you can feel the heat emanating off of her slit. She breaks the kiss with a long, low-pitched groan of pleasure, and you feel her cunt dripping fluids into her panties. Internally deciding that that isn't a good idea, your other hand worms it way down there, unbuckling her jeans and pulling them down along with her panties, and then throwing them aside.";
				say "     Quickly slipping out of your own lower garments and putting them aside, you keep one of your hands gently stimulating Andromeda's seizing cunt, reveling in how you've made the catgirl's eyes roll completely into her head. She's not as unresponsive as you thought, however, if her paw groping at your cunt is any indication. Unable to restrain yourself, you let out a groan of pleasure, involuntarily seizing yourself up. Her deft paws, obviously skilled at pleasuring a woman, quickly reduce you to a panting, dripping mess with a combination of rubs, gropes, and massaging. Not wanting to be outdone, you stop caressing her gripping womanhood, and line up a few digits to start finger-fucking your quivering catgirl lover.";
				say "[WaitLineBreak]";
				say "     Andromeda must've had the same idea you had, as you soon feel a furry digit bury itself completely into your throbbing cunt. Sagging forward into her, Andromeda supports you up as your head is flooded with pleasure. A knowing smirk crosses Andromeda's face as she hits every nerve in your slit, reducing you to a pile of quivers and moans. Recovering yourself enough to remember what's going on, you push two of your fingers into Andromeda's twitching cunt, with her response obvious as a loud yelp echoes through the storage room. While one of Andromeda's furry claws explores every inch of your cunt and reaching places you didn't even know were there, another one begins to caress your outer lips, drawing gently across the entrance to your pussy. This digit soon buries itself into your cunt, joining its twin in their exploration of your cunt. You do the exact same thing, adding a third digit to the two thrusting in and out of Andromeda's now dripping cunt.";
				say "     Feeling your orgasm not far off, you pull Andromeda into an affectionate, sloppy kiss. She responds readily, the two of you making out while your fingers are buried in each others cunts. Confirming your suspicion, you're soon wracked with an orgasm, brought on by Andromeda's skilled fingers. You moan heavily into her mouth as you cum, your feminine juices drenching her hand and the floor below. Lost in a sea of pleasure, you continually jackhammer your fingers into her spasming cunt, mindlessly trying to make her cum. Your wish is soon granted, with the feeling of her cunt gripping your fingers and a river of fluid drenching your hand. Mewing loudly as she cums, she breaks the kiss and pants heavily and sags into your grip. You do the same to her, both of you holding onto each other as you recover. Both of you recovering after a few minutes of rest, you withdraw from each other; your hands are covered in each others fluids. Licking herself clean, Andromeda takes your hand and cleans it, watching you lustfully as you gather your things. Cleaned up and ready to leave, you're pulled into an aggressive kiss by the normally-bubbly catgirl, her tongue catching yours in a sensual embrace. Breaking off the kiss, she gives your ass a playful slap and tells you to 'Come back soon', the sentence punctuated by a throaty purr. You do your best to remember to visit again as you walk contentedly out of the shop, prepared for whatever is ahead.";
				now libido of player is 0;
				now xp of Andromeda is 1;
				if libido of Andromeda < 3, increase libido of Andromeda by 1;
			otherwise if calcnumber is 3:
				say "     Moving over to the lust-filled catgirl, you pull her into a sloppy kiss, and moving your hands under her shirt. She eagerly complies with your kiss, moaning quietly as you begin to fondle her, running your hands through her short, soft fur. One of your hands finds her small A-cup breasts, and you begin kneading her breast and lightly tugging her nipple. You remove your other hand, and commence stripping yourself, slowly removing all the clothes you can get off with one hand and setting them aside. Finally breaking the long, lust-filled kiss, Andromeda is filled with arousal, furiously masturbating and panting heavily. You remove your hand from her breast, giving it one last tug, with a groan being the result, and make a show of removing the rest of your clothes. Watching you intently with wide eyes, Andromeda absorbs every inch of your body, obviously turned on even more by the show. Quickly realizing that she is still dressed, Andromeda rips off her clothes and throws them haphazardly on a crate nearby. Her tight slit is revealed, dripping and running lubricant down her thighs. You're not far behind her, you yourself beginning to feel a heat all over your body. Not wanting to wait anymore, you tell the catgirl to lie down on her bed, moving yourself atop her as you do so, finding yourself face to face with Andromeda's womanhood. She finds herself in the same position, with your cunt hovering right above her face.";
				say "     Finally finding yourself face to face with the perky girl's slit, you run your fingers over the catgirl's vagina, deftly massaging her folds and tugging lightly on her clit. A pleasured moan is the result of your teasing, and this moan quickly turns into a high-pitched screech as you dive a digit into her spasming cunt. While you begin to finger the spasming woman, you shake your ass slightly, signaling Andromeda to start her own playing. You suddenly feel her hands on your hips as she forcefully pulls your slit to her face, giving her uninhibited access and making you gasp loudly. Pangs of pleasure shoot through you as Andromeda immediately dives her long tongue into your [cunt size desc of player] cunt, the rough appendage scraping on your inner walls and eliciting moans of pleasure from you.";
				say "[WaitLineBreak]";
				say "     Removing your drenched finger from Andromeda, you quickly push your face into her seizing cunt, beginning your own brand of tongue care. Immediately pushing your wriggling tongue into her inviting folds, you're drenched in the taste of her feminine juices. Exploring Andromeda's depths is brought to a quick halt when her rough tongue hits a truly sensitive spot, triggering a moan from you, muffled as your mouth is currently occupied. You quickly dive back in, savoring the smell and taste of the lithe catgirl. Your reentrance does not go unnoticed; hearing the girl groan into your cunt is all the confirmation you needed. You quickly forget how long you and Andromeda have been at each other, constant waves of pleasure having eroded all of your other senses. Lost in the overwhelming sensations of her tongue caressing every inch of your depths, you barely notice when Andromeda lets out a loud mew, her fluids exploding all over your face in a long, exhaustive orgasm. Your own climax is not far off, and you find yourself groaning loudly into her slit as your own feminine fluids drenches her muzzle. You sag down, exhausted but sated, sighing loudly as you feel Andromeda dutifully licking your juices off of your pussy (and her face). Rolling yourself off of her and climbing next to her, you cuddle up next to her and rest your head, feeling her rough tongue cleaning your face off. You soon drift off to sleep, lulled by the feeling of Andromeda hugging you.";
				say "     You wake up some time later, still in the comforting embrace of the fuzzy catgirl. You slowly get up and gather your things, being careful as to not wake her. Unlocking the door and stepping out, you're able to faintly hear Andromeda telling you to 'Come back soon, beautiful.' Smiling happily, you step out into the store, ready to go on your way, the faint smell of cat hanging over you."; 
				now libido of player is 0;
				now xp of Andromeda is 1;
				if libido of Andromeda < 3, increase libido of Andromeda by 1;
			otherwise:
				say "     Seeing that Andromeda seems to have everything under control, seeing as how she is already furiously masturbating, you quietly unlock the door and exit the store, re-locking the door on your way out. You figure you might visit her some other time.";
				now xp of Andromeda is 1;

Section 3 - Clothes

[Defining Clothing Shelf]
Clothing Shelf is a man.
The description of Clothing Shelf is "This nearby rack of clothes holds many pieces of clothing and individual outfits, some of which catch your eye. Price tags on each of the articles of clothing have been darkened with a black marker, with the new price listed as '1 food or 1 milk'. The outfits that stick out to you include a simple [bold type]T-shirt and Blue Jeans[roman type] combo, a lovely black [bold type]Blouse Set[roman type] that's combined with a knee-length skirt, A slim [bold type]Tuxedo set[roman type] and tie on a mannequin nearby, and a baggy, comfortable [bold type]Summer Set[roman type], consisting of a no-sleeved shirt and baggy shorts. You'd just have to have payment and ask to [bold type]procure[roman type] the outfit you want.";

the linkaction of Clothing Shelf is "Possible Actions: [link]smell[as]Smell Shelf[end link][line break]". [Add options for clothes as links?]
the scent of Clothing Shelf is "This rack of clothes smells like fresh laundry, with a hint of finished wood.".

[Defining actions possible relating to outfits and the clothing shelf]
TshirtObtain is an action applying to nothing.
BlouseObtain is an action applying to nothing.
TuxedoObtain is an action applying to nothing.
SummerObtain is an action applying to nothing.

[Start Tshirt understand]
understand "tshirt and jeans" as TshirtObtain.
understand "tshirt and blue jeans" as TshirtObtain.
understand "t-shirt" as TshirtObtain.
understand "t-shirt and jeans" as TshirtObtain.
understand "t-shirt and blue jeans" as TshirtObtain.
understand "procure tshirt" as TshirtObtain.
understand "procure t-shirt" as TshirtObtain.
understand "procure tshirt and jeans" as TshirtObtain.
understand "procure t-shirt and jeans" as TshirtObtain.
understand "procure tshirt and blue jeans" as TshirtObtain.
understand "procure t-shirt and blue jeans" as TshirtObtain.
understand "procure tshirt & jeans" as TshirtObtain.
understand "procure t-shirt & jeans" as TshirtObtain.
understand "procure tshirt & blue jeans" as TshirtObtain.
understand "procure t-shirt & blue jeans" as TshirtObtain.
understand "t-shirt & jeans" as TshirtObtain.
understand "t-shirt & blue jeans" as TshirtObtain.
understand "tshirt & jeans" as TshirtObtain.
understand "tshirt & blue jeans" as TshirtObtain.
[End TShirt understand for now]
[Start Blouse understand for now]
understand "blouse set" as BlouseObtain.
understand "procure blouse set" as BlouseObtain.
[End Blouse understand for now]
[Start Tuxedo understand for now]
understand "tuxedo set" as TuxedoObtain.
understand "procure tuxedo set" as TuxedoObtain.
[End Tuxedo understand for now]
[Start Summer understand for now]
understand "summer set" as SummerObtain.
understand "procure summer set" as SummerObtain.
[End Summer understanding for now]

check TshirtObtain:
	if Clothing Shelf is not visible, say "I highly doubt you want to purchase an imaginary set of clothes. Or do you?" instead;
check BlouseObtain:
	if Clothing Shelf is not visible, say "I highly doubt you want to purchase an imaginary set of clothes. Or do you?" instead;
check TuxedoObtain:
	if Clothing Shelf is not visible, say "I highly doubt you want to purchase an imaginary set of clothes. Or do you?" instead;
check SummerObtain:
	if Clothing Shelf is not visible, say "I highly doubt you want to purchase an imaginary set of clothes. Or do you?" instead;
	
[Tshirt action]
carry out TshirtObtain:
	say "     Taking the T-shirt & Blue Jean set up to the counter, Andromeda smiles happily as you approach. Setting your purchase on the counter, you smile back at the bouncing proprietor and mention that you'd like to purchase the T-shirt/Blue Jean combo.";
	if scalevalue of player >= 5 or scalevalue of player <= 1:
		say "     Andromeda looks you over intently, and lets out a disheartened sigh. 'Sorry hun, I don't carry that in your size.' She shoots you a sad frown, but perks right back up. 'If you [if scalevalue of player <= 1]get bigger[otherwise if scalevalue of player >= 5]shrink down some,[end if] I’m sure these would fit!' You replace what you were going to buy, hoping you'll be able to get it sometime.";
	otherwise:
		say	"     'You suuuuurrrrre you wanna buy these?' Andromeda says to you, a thin smile appearing on her face.";
		if the player consents:
			say "	Alright! Now like it says on the price tag, it costs one packet of food or some of that [italic type]lovely[roman type] milk. Which one do you want to pay with?' - (Y for Food, N for Milk)";
			if the player consents:
				if food is owned:
					say "     You slide a packet of food over to the bubbly catgirl, who snaps it off the counter as soon as you put it down. Looking closely over the packet of food, she checks over it for a few moments before smiling happily and letting you pick up the outfit.";
					say "     'Thanks for the purchase, and come again soon!'";
					delete food;
					increase carried of t-shirt & blue jeans by 1;
				otherwise:
					say "     Andromeda looks at you with humorous, but disapproving look. 'You need to ACTUALLY have the food here; I can't accept imaginary things for payment!' Andromeda says to you, flailing her hands out in an obviously fake attempt at seriousness.";
			otherwise:
				if gryphon milk is owned:
					say "     The Catgirl squeals delightedly as you slide a sealed jar of gryphon milk over to her, the jar disappearing as quickly as it was set down. Immediately popping the jar open and lapping at the fresh milk inside, she talks in between laps as you pick up the shirt and jeans.";
					say "     'Thanks for' -lap- 'the purchase, come' -lap- 'again soon!'";
					delete gryphon milk;
					increase carried of t-shirt & blue jeans by 1;
				otherwise if dolphin milk is owned:
					say "     Putting the jar of dolphin milk on the counter, Andromeda looks at it curiously. Picking up the jar, she deftly unscrews it and sniffs it curiously, and you figure that she hasn't had dolphin milk before. Taking a tenative lick of the milk, she lets out a squeal and starts to haphazardly drink the dolphin milk. She waves at you absent-mindedly, too wrapped up in drinking. You smile to yourself as you pick up your outfit, figuring that Andromeda is going to be busy for a while.";
					delete dolphin milk;
					increase carried of t-shirt & blue jeans by 1;
				otherwise if distilled milk is owned:
					say "     Putting out the packet of distilled milk, Andromeda picks up your payment, looking it over intently. Putting the packet next to her ear, she shakes it vigorously, and you hear the powered milk shake within. Satisfied, she slides the packet into a compartment beneath the counter.";
					say "     'Thanks! I'm gonna save that for a snack later. Enjoy your purchase!'";
					delete distilled milk;
					increase carried of t-shirt & blue jeans by 1;
				otherwise:
					say "     Andromeda huffs disappointedly at you. 'Come on, don't tease me like that!'";
		otherwise:
			say "     'Well then why'd you bring them up here you big dolt?' Andromeda says to you, doing her best to put on a serious impression, and failing horribly. 'Who's kidding who here, I’m just teasing you! Feel free to keep looking around, and only get something if you want to!";

[Blouse action]		
carry out BlouseObtain:
	say	"     Taking the Blouse & Skirt up to the counter, Andromeda smiles happily as you approach. Setting your purchase on the counter, you smile back at the bouncing proprietor and mention that you'd like to purchase the blouse set.";
	if scalevalue of player >= 5 or scalevalue of player <= 1:
		say "     Andromeda looks you over intently, and lets out a disheartened sigh. 'Sorry hun, I don't carry that in your size.' She shoots you a sad frown, but perks right back up. 'If you [if scalevalue of player <= 1]get bigger[otherwise if scalevalue of player >= 5]shrink down some,[end if] I’m sure these would fit!' You replace what you were going to buy, hoping you'll be able to get it sometime.";
	otherwise:
		say	"     'You suuuuurrrrre you wanna buy these?' Andromeda says to you, a thin smile appearing on her face.";
		if the player consents:
			say "     Alright! Now like it says on the price tag, it costs one packet of food or some of that [italic type]lovely[roman type] milk. Which one do you want to pay with?' - (Y for Food, N for Milk)";
			if the player consents:
				if food is owned:
					say "     You slide a packet of food over to the bubbly catgirl, who snaps it off the counter as soon as you put it down. Looking closely over the packet of food, she checks over it for a few moments before smiling happily and letting you pick up the outfit.";
					say "     'Thanks for the purchase, and come again soon!'";
					delete food;
					increase carried of blouse outfit by 1;
				otherwise:
					say "     Andromeda looks at you with humorous, but disapproving look. 'You need to ACTUALLY have the food here; I can't accept imaginary things for payment!' Andromeda says to you, flailing her hands out in an obviously fake attempt at seriousness.";
			otherwise:
				if gryphon milk is owned:
					say "     The Catgirl squeals delightedly as you slide a sealed jar of gryphon milk over to her, the jar disappearing as quickly as it was set down. Immediately popping the jar open and lapping at the fresh milk inside, she talks in between laps as you pick up the set.";
					say "     'Thanks for' -lap- 'the purchase, come' -lap- 'again soon!'";
					delete gryphon milk;
					increase carried of blouse outfit by 1;
				otherwise if dolphin milk is owned:
					say "     Putting the jar of dolphin milk on the counter, Andromeda looks at it curiously. Picking up the jar, she deftly unscrews it and sniffs it curiously, and you figure that she hasn't had dolphin milk before. Taking a tenative lick of the milk, she lets out a squeal and starts to haphazardly drink the dolphin milk. She waves at you absent-mindedly, too wrapped up in drinking. You smile to yourself as you pick up your outfit, figuring that Andromeda is going to be busy for a while.";
					delete dolphin milk;
					increase carried of blouse outfit by 1;
				otherwise if distilled milk is owned:
					say "     Putting out the packet of distilled milk, Andromeda picks up your payment, looking it over intently. Putting the packet next to her ear, she shakes it vigorously, and you hear the powered milk shake within. Satisfied, she slides the packet into a compartment beneath the counter.";
					say "     'Thanks! I'm gonna save that for a snack later. Enjoy your purchase!'";
					delete distilled milk;
					increase carried of blouse outfit by 1;
				otherwise:
					say "     Andromeda huffs disappointedly at you. 'Come on, don't tease me like that!'";
		otherwise:
			say "     'Well then why'd you bring them up here you big dolt?' Andromeda says to you, doing her best to put on a serious impression, and then failing horribly. 'I'm just teasing you! Feel free to keep looking around, and only get something if you want to!";
	
[Tuxedo action]		
carry out TuxedoObtain:
	say	"     Taking one of the black tuxedos up to the counter, Andromeda smiles happily as you approach. Setting your purchase on the counter, you smile back at the bouncing proprietor and mention that you'd like to purchase the suit.";
	if scalevalue of player >= 5 or scalevalue of player <= 1:
		say "     Andromeda looks you over intently, and lets out a disheartened sigh. 'Sorry hun, I don't carry that in your size.' She shoots you a sad frown, but perks right back up. 'If you [if scalevalue of player <= 1]get bigger[otherwise if scalevalue of player >= 5]shrink down some,[end if] I’m sure these would fit!' You replace what you were going to buy, hoping you'll be able to get it sometime.";
	otherwise:
		say	"     'You suuuuurrrrre you wanna buy these?' Andromeda says to you, a thin smile appearing on her face.";
		if the player consents:
			say "     Alright! Now like it says on the price tag, it costs one packet of food or some of that [italic type]lovely[roman type] milk. Which one do you want to pay with?' - (Y for Food, N for Milk)";
			if the player consents:
				if food is owned:
					say "     You slide a packet of food over to the bubbly catgirl, who snaps it off the counter as soon as you put it down. Looking closely over the packet of food, she checks over it for a few moments before smiling happily and letting you pick up the outfit.";
					say "     'Thanks for the purchase, and come again soon!'";
					delete food;
					increase carried of tuxedo by 1;
				otherwise:
					say "     Andromeda looks at you with humorous, but disapproving look. 'You need to ACTUALLY have the food here; I can't accept imaginary things for payment!' Andromeda says to you, flailing her hands out in an obviously fake attempt at seriousness.";
			otherwise:
				if gryphon milk is owned:
					say "     The Catgirl squeals delightedly as you slide a sealed jar of gryphon milk over to her, the jar disappearing as quickly as it was set down. Immediately popping the jar open and lapping at the fresh milk inside, she talks in between laps as you pick up the set.";
					say "     'Thanks for' -lap- 'the purchase, come' -lap- 'again soon!'";
					delete gryphon milk;
					increase carried of tuxedo by 1;
				otherwise if dolphin milk is owned:
					say "	Putting the jar of dolphin milk on the counter, Andromeda looks at it curiously. Picking up the jar, she deftly unscrews it and sniffs it curiously, and you figure that she hasn't had dolphin milk before. Taking a tenative lick of the milk, she lets out a squeal and starts to haphazardly drink the dolphin milk. She waves at you absent-mindedly, too wrapped up in drinking. You smile to yourself as you pick up your outfit, figuring that Andromeda is going to be busy for a while.";
					delete dolphin milk;
					increase carried of tuxedo by 1;
				otherwise if distilled milk is owned:
					say "     Putting out the packet of distilled milk, Andromeda picks up your payment, looking it over intently. Putting the packet next to her ear, she shakes it vigorously, and you hear the powered milk shake within. Satisfied, she slides the packet into a compartment beneath the counter.";
					say "     'Thanks! I'm gonna save that for a snack later. Enjoy your purchase!'";
					delete distilled milk;
					increase carried of tuxedo by 1;
				otherwise:
					say "     Andromeda huffs disappointedly at you. 'Come on, don't tease me like that!'";
		otherwise:
			say "     'Well then why'd you bring them up here you big dolt?' Andromeda says to you, doing her best to put on a serious impression, and then failing horribly. 'I'm just teasing you! Feel free to keep looking around, and only get something if you want to!";

[Summer action]		
carry out SummerObtain:
	say	"     Taking the loose-fitting summer clothes up to the counter, Andromeda smiles happily as you approach. Setting your purchase on the counter, you smile back at the bouncing proprietor and mention that you'd like to purchase the baggy outfit.";
	if scalevalue of player >= 5 or scalevalue of player <= 1:
		say "     Andromeda looks you over intently, and lets out a disheartened sigh. 'Sorry hun, I don't carry that in your size.' She shoots you a sad frown, but perks right back up. 'If you [if scalevalue of player <= 1]get bigger[otherwise if scalevalue of player >= 5]shrink down some,[end if] i'm sure these would fit!' You replace what you were going to buy, hoping you'll be able to get it sometime.";
	otherwise:
		say	"     'You suuuuurrrrre you wanna buy these?' Andromeda says to you, a thin smile appearing on her face.";
		if the player consents:
			say "     Alright! Now like it says on the price tag, it costs one packet of food or some of that [italic type]lovely[roman type] milk. Which one do you want to pay with?' - (Y for Food, N for Milk)";
			if the player consents:
				if food is owned:
					say "     You slide a packet of food over to the bubbly catgirl, who snaps it off the counter as soon as you put it down. Looking closely over the packet of food, she checks over it for a few moments before smiling happily and letting you pick up the outfit.";
					say "     'Thanks for the purchase, and come again soon!'";
					delete food;
					increase carried of summer outfit by 1;
				otherwise:
					say "     Andromeda looks at you with humorous, but disapproving look. 'You need to ACTUALLY have the food here; I can't accept imaginary things for payment!' Andromeda says to you, flailing her hands out in an obviously fake attempt at seriousness.";
			otherwise:
				if gryphon milk is owned:
					say "     The Catgirl squeals delightedly as you slide a sealed jar of gryphon milk over to her, the jar disappearing as 	quickly as it was set down. Immediately popping the jar open and lapping at the fresh milk inside, she talks in between laps as you pick up the set.";
					say "     'Thanks for' -lap- 'the purchase, come' -lap- 'again soon!'";
					delete gryphon milk;
					increase carried of summer outfit by 1;
				otherwise if dolphin milk is owned:
					say "     Putting the jar of dolphin milk on the counter, Andromeda looks at it curiously. Picking up the jar, she deftly unscrews it and sniffs it curiously, and you figure that she hasn't had dolphin milk before. Taking a tenative lick of the milk, she lets out a squeal and starts to haphazardly drink the dolphin milk. She waves at you absent-mindedly, too wrapped up in drinking. You smile to yourself as you pick up your outfit, figuring that Andromeda is going to be busy for a while.";
					delete dolphin milk;
					increase carried of summer outfit by 1;
				otherwise if distilled milk is owned:
					say "     Putting out the packet of distilled milk, Andromeda picks up your payment, looking it over intently. Putting the packet next to her ear, she shakes it vigorously, and you hear the powered milk shake within. Satisfied, she slides the packet into a compartment beneath the counter.";
					say "     'Thanks! I'm gonna save that for a snack later. Enjoy your purchase!'";
					delete distilled milk;
					increase carried of summer outfit by 1;
				otherwise:
					say "     Andromeda huffs disappointedly at you. 'Come on, don't tease me like that!'";
		otherwise:
			say "     'Well then why'd you bring them up here you big dolt?' Andromeda says to you, doing her best to put on a serious impression, and then failing horribly. 'I'm just teasing you! Feel free to keep looking around, and only get something if you want to!";
		
Section 4 - Collars

[Defining Collar Rack]
Collar Rack is a man.
The description of Collar Rack is "In a more secluded part of the store, you see a few clothing mannequins standing stoically against the back wall of the store. Approaching them, you see that no clothing is displayed on them, totally bare... except for different types of collars around their necks. Wondering to yourself why Andromeda has such a selection of odd items on display, you brush those thoughts off and look at the selection she has in stock. Taking a close look at the well-made collars, you see that she has a [bold type]Black Spiked[roman type] collar, for those who wish for a more tough look; A fuzzy pink [bold type]Silk Collar[roman type] for people who want a cuter look; and a classic [bold type]Nametag Collar[roman type], for those wishing to display their name proudly. The changed price tags are still present, offering these pieces for '1 food or 1 milk'; you just have to ask to [bold type]procure[roman type] them.";

the linkaction of Collar Rack is "Possible Actions: [link]smell[as]Smell Rack[end link][line break]".
the scent of Collar Rack is "These mannequins smell distinctively of plastic.".

SpikedCollarObtain is an action applying to nothing.
FuzzyCollarObtain is an action applying to nothing.
NametagCollarObtain is an action applying to nothing.

check SpikedCollarObtain:
	if Collar Rack is not visible, say "Unfortunately, you can't make collars out of air." instead;
check FuzzyCollarObtain:
	if Collar Rack is not visible, say "Unfortunately, you can't make collars out of air." instead;
check NametagCollarObtain:
	if Collar Rack is not visible, say "Unfortunately, you can't make collars out of air." instead;

understand "black spiked" as SpikedCollarObtain.
understand "black spiked collar" as SpikedCollarObtain.
understand "procure black spiked" as SpikedCollarObtain.
understand "procure black spiked collar" as SpikedCollarObtain.
understand "silk collar" as FuzzyCollarObtain.
understand "procure silk collar" as FuzzyCollarObtain.
understand "nametag collar" as NametagCollarObtain.
understand "procure nametag collar" as NametagCollarObtain.

carry out SpikedCollarObtain:
	say	"     Bringing the spiky collar up to the checkout counter, you're sure Andromeda is blushing slightly as you set the thick leather collar on the counter. Indicating that you'd like to purchase the collar, she smiles at you, doing her best to hide her embarrassment.";
	if scalevalue of player >= 5 or scalevalue of player <= 1:
		say "     Andromeda looks you over intently, and lets out a disheartened sigh. 'Sorry hun, I don't carry that in your size.' She shoots you a sad frown, but perks right back up. 'If you [if scalevalue of player <= 1]get bigger[otherwise if scalevalue of player >= 5]shrink down some,[end if] i'm sure this would fit!' You replace what you were going to buy, hoping you'll be able to get it sometime.";
	otherwise:
		say	"     'You suuuuurrrrre you wanna buy these?' Andromeda says to you, a thin smile appearing on her face as her tail swishes behind her, probably from embarrassment.";
		if the player consents:
			say "     Alright! Now like it says on the price tag, it costs one packet of food or some of that [italic type]lovely[roman type] milk. Which one do you want to pay with?' - (Y for Food, N for Milk)";
			if the player consents:
				if food is owned:
					say "     You slide a packet of food over to the bubbly catgirl, who snaps it off the counter as soon as you put it down. Looking closely over the packet of food, she checks over it for a few moments before smiling happily and letting you pick up the collar.";
					say "     'Thanks for the purchase, and come again soon!'";
					delete food;
					increase carried of spiked collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise:
					say "     Andromeda looks at you with humorous, but disapproving look. 'You need to ACTUALLY have the food here; I can't accept imaginary things for payment!' Andromeda says to you, flailing her hands out in an obviously fake attempt at seriousness.";
			otherwise:
				if gryphon milk is owned:
					say "     The Catgirl squeals delightedly as you slide a sealed jar of gryphon milk over to her, the jar disappearing as quickly as it was set down. Immediately popping the jar open and lapping at the fresh milk inside, she talks in between laps as you pick up the collar.";
					say "     'Thanks for' -lap- 'the purchase, come' -lap- 'again soon!'";
					delete gryphon milk;
					increase carried of spiked collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise if dolphin milk is owned:
					say "     Putting the jar of dolphin milk on the counter, Andromeda looks at it curiously. Picking up the jar, she deftly unscrews it and sniffs it curiously, and you figure that she hasn't had dolphin milk before. Taking a tenative lick of the milk, she lets out a squeal and starts to haphazardly drink the dolphin milk. She waves at you absent-mindedly, too wrapped up in drinking. You smile to yourself as you pick up your collar, figuring that Andromeda is going to be busy for a while.";
					delete dolphin milk;
					increase carried of spiked collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise if distilled milk is owned:
					say "     Putting out the packet of distilled milk, Andromeda picks up your payment, looking it over intently. Putting the packet next to her ear, she shakes it vigorously, and you hear the powered milk shake within. Satisfied, she slides the packet into a compartment beneath the counter.";
					say "     'Thanks! I'm gonna save that for a snack later. Enjoy your purchase!'";
					delete distilled milk;
					increase carried of spiked collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise:
					say "     Andromeda huffs disappointedly at you. 'Come on, don't tease me like that!'";
		otherwise:
			say "     'Well then why'd you bring them up here you big dolt?' Andromeda says to you, doing her best to put on a serious impression, and then failing horribly. 'I'm just teasing you! Feel free to keep looking around, and only get something if you want to!";

carry out FuzzyCollarObtain:
	say	"     Bringing the fuzzy collar up to the checkout counter, you're sure Andromeda is blushing slightly as you set the thick leather collar on the counter. Indicating that you'd like to purchase the collar, she smiles at you, doing her best to hide her embarrassment.";
	if scalevalue of player >= 5 or scalevalue of player <= 1:
		say "     Andromeda looks you over intently, and lets out a disheartened sigh. 'Sorry hun, I don't carry that in your size.' She shoots you a sad frown, but perks right back up. 'If you [if scalevalue of player <= 1]get bigger[otherwise if scalevalue of player >= 5]shrink down some,[end if] i'm sure this would fit!' You replace what you were going to buy, hoping you'll be able to get it sometime.";
	otherwise:
		say	"     'You suuuuurrrrre you wanna buy these?' Andromeda says to you, a thin smile appearing on her face as her tail swishes behind her, probably from embarrassment.";
		if the player consents:
			say "     Alright! Now like it says on the price tag, it costs one packet of food or some of that [italic type]lovely[roman type] milk. Which one do you want to pay with?' - (Y for Food, N for Milk)";
			if the player consents:
				if food is owned:
					say "     You slide a packet of food over to the bubbly catgirl, who snaps it off the counter as soon as you put it down. Looking closely over the packet of food, she checks over it for a few moments before smiling happily and letting you pick up the collar.";
					say "     'Thanks for the purchase, and come again soon!'";
					delete food;
					increase carried of silk collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise:
					say "     Andromeda looks at you with humorous, but disapproving look. 'You need to ACTUALLY have the food here; I can't accept imaginary things for payment!' Andromeda says to you, flailing her hands out in an obviously fake attempt at seriousness.";
			otherwise:
				if gryphon milk is owned:
					say "     The Catgirl squeals delightedly as you slide a sealed jar of gryphon milk over to her, the jar disappearing as 	quickly as it was set down. Immediately popping the jar open and lapping at the fresh milk inside, she talks in between laps as you pick up the collar.";
					say "     'Thanks for' -lap- 'the purchase, come' -lap- 'again soon!'";
					delete gryphon milk;
					increase carried of silk collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise if dolphin milk is owned:
					say "     Putting the jar of dolphin milk on the counter, Andromeda looks at it curiously. Picking up the jar, she deftly unscrews it and sniffs it curiously, and you figure that she hasn't had dolphin milk before. Taking a tenative lick of the milk, she lets out a squeal and starts to haphazardly drink the dolphin milk. She waves at you absent-mindedly, too wrapped up in drinking. You smile to yourself as you pick up your collar, figuring that Andromeda is going to be busy for a while.";
					delete dolphin milk;
					increase carried of silk collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise if distilled milk is owned:
					say "     Putting out the packet of distilled milk, Andromeda picks up your payment, looking it over intently. Putting the packet next to her ear, she shakes it vigorously, and you hear the powered milk shake within. Satisfied, she slides the packet into a compartment beneath the counter.";
					say "     'Thanks! I'm gonna save that for a snack later. Enjoy your purchase!'";
					delete distilled milk;
					increase carried of silk collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise:
					say "     Andromeda huffs disappointedly at you. 'Come on, don't tease me like that!'";
		otherwise:
			say "     'Well then why'd you bring them up here you big dolt?' Andromeda says to you, doing her best to put on a serious impression, and then failing horribly. 'I'm just teasing you! Feel free to keep looking around, and only get something if you want to!";
			
carry out NametagCollarObtain:
	say	"     Bringing the spiky collar up to the checkout counter, you're sure Andromeda is blushing slightly as you set the thick leather collar on the counter. Indicating that you'd like to purchase the collar, she smiles at you, doing her best to hide her embarrassment.";
	if scalevalue of player >= 5 or scalevalue of player <= 1:
		say "     Andromeda looks you over intently, and lets out a disheartened sigh. 'Sorry hun, I don't carry that in your size.' She shoots you a sad frown, but perks right back up. 'If you [if scalevalue of player <= 1]get bigger[otherwise if scalevalue of player >= 5]shrink down some,[end if] i'm sure this would fit!' You replace what you were going to buy, hoping you'll be able to get it sometime.";
	otherwise:
		say	"     'You suuuuurrrrre you wanna buy these?' Andromeda says to you, a thin smile appearing on her face as her tail swishes behind her, probably from embarrassment.";
		if the player consents:
			say "     Alright! Now like it says on the price tag, it costs one packet of food or some of that [italic type]lovely[roman type] milk. Which one do you want to pay with?' - (Y for Food, N for Milk)";
			if the player consents:
				if food is owned:
					say "     You slide a packet of food over to the bubbly catgirl, who snaps it off the counter as soon as you put it down. Looking closely over the packet of food, she checks over it for a few moments before smiling happily and letting you pick up the collar.";
					say "     'Thanks for the purchase, and come again soon!'";
					delete food;
					increase carried of nametag collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise:
					say "     Andromeda looks at you with humorous, but disapproving look. 'You need to ACTUALLY have the food here; I can't accept imaginary things for payment!' Andromeda says to you, flailing her hands out in an obviously fake attempt at seriousness.";
			otherwise:
				if gryphon milk is owned:
					say "     The Catgirl squeals delightedly as you slide a sealed jar of gryphon milk over to her, the jar disappearing as 	quickly as it was set down. Immediately popping the jar open and lapping at the fresh milk inside, she talks in between laps as you pick up the collar.";
					say "     'Thanks for' -lap- 'the purchase, come' -lap- 'again soon!'";
					delete gryphon milk;
					increase carried of nametag collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise if dolphin milk is owned:
					say "     Putting the jar of dolphin milk on the counter, Andromeda looks at it curiously. Picking up the jar, she deftly unscrews it and sniffs it curiously, and you figure that she hasn't had dolphin milk before. Taking a tenative lick of the milk, she lets out a squeal and starts to haphazardly drink the dolphin milk. She waves at you absent-mindedly, too wrapped up in drinking. You smile to yourself as you pick up your collar, figuring that Andromeda is going to be busy for a while.";
					delete dolphin milk;
					increase carried of nametag collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise if distilled milk is owned:
					say "     Putting out the packet of distilled milk, Andromeda picks up your payment, looking it over intently. Putting the packet next to her ear, she shakes it vigorously, and you hear the powered milk shake within. Satisfied, she slides the packet into a compartment beneath the counter.";
					say "     'Thanks! I'm gonna save that for a snack later. Enjoy your purchase!'";
					delete distilled milk;
					increase carried of nametag collar by 1;
					if lust of Andromeda < 1, increase lust of Andromeda by 1;
				otherwise:
					say "     Andromeda huffs disappointedly at you. 'Come on, don't tease me like that!'";
		otherwise:
			say "     'Well then why'd you bring them up here you big dolt?' Andromeda says to you, doing her best to put on a serious impression, and then failing horribly. 'I'm just teasing you! Feel free to keep looking around, and only get something if you want to!";



Section 5 - Items

[T-Shirt Outfit]
Table of Game Objects (continued)
name	desc	weight	object
"t-shirt & blue jeans"	"A set of new blue jeans, paired with a grey T-shirt. Boring, but practical."	2	t-shirt & blue jeans

t-shirt & blue jeans is equipment.
It is not temporary.
The placement of t-shirt & blue jeans is "body".
The slot of t-shirt & blue jeans is "body".
The descmod of t-shirt & blue jeans is "You have a pair of new blue jeans and a light T-shirt on. While not very protective, it's light and comfortable.".
the scent of t-shirt & blue jeans is "The outfit smells like fresh, clean clothes.".

[Blouse Outfit]
Table of Game Objects (continued)
name	desc	weight	object
"blouse outfit"	"A dark-blue fancy blouse combined with a knee-length black skirt. While not the fanciest of clothes, but it looks good. Comfy too!"	1	blouse outfit

blouse outfit is equipment.
It is not temporary.
The placement of blouse outfit is "body".
The slot of blouse outfit is "body".
The descmod of blouse outfit is "You're currently wearing a fancy blue blouse, with a black skirt hanging down to your knees.".
the scent of blouse outfit is "The outfit smells like fresh, clean clothes.".

[Tuxedo Outfit]
Table of Game Objects (continued)
name	desc	weight	object
"tuxedo"	"A fancy black suit and tie, combined with a well-pressed pair of khakis. One of the fanciest outfits you could get right now."	2	tuxedo

tuxedo is equipment.
It is not temporary.
The placement of tuxedo is "body".
The slot of tuxedo is "body".
The descmod of tuxedo is "You're currently wearing a sleek, sexy tuxedo. You can't help but feel like an action hero wearing this fancy suit.".
the scent of tuxedo is "The outfit smells like fresh, clean clothes.".

[Summer Outfit]
Table of Game Objects (continued)
name	desc	weight	object
"summer outfit"	"A loose-fitting shirt with no sleeves, with a pair of shorts to match. Best worn in summer weather."	1	summer outfit

summer outfit is equipment.
It is not temporary.
The placement of summer outfit is "body".
The slot of summer outfit is "body".
The descmod of summer outfit is "A simple shirt with no sleeves and a baggy pair of shorts are currently your outfit of choice".
the scent of summer outfit is "The outfit smells like fresh, clean clothes.".

[End clothes, begin collars]

[Spiked Collar]
Table of Game Objects (continued)
name	desc	weight	object
"spiked collar"	"A pitch-black leather collar with rounded metal spikes poking out. Reminds you of classic gangster garb."	2	spiked collar

spiked collar is equipment.
It is not temporary.
The placement of spiked collar is "face".
The slot of spiked collar is "neck".
The descmod of spiked collar is "You're wearing a black leather collar around your neck, one with rounded metal spikes protruding from it. You can't help but feel like a badass with this on.".
the scent of spiked collar is "This collar smells like leather with a mix of polished metal.".

[Silk Collar]
Table of Game Objects (continued)
name	desc	weight	object
"silk collar"	"A fuzzy pink collar, silky-smooth to the touch."	1	silk collar

silk collar is equipment.
It is not temporary.
The placement of silk collar is "face".
The slot of silk collar is "neck".
The descmod of silk collar is "Around your neck is a fuzzy silk collar, made with silky-smooth material and feeling nice to the touch. All you can think about is how wonderful it feels.".
the scent of silk collar is "The silky collar smells like fuzz.".

[Nametag Collar]
Table of Game Objects (continued)
name	desc	weight	object
"nametag collar"	"This average-looking collar is made with thick nylon, colored red and having a blank nametag hanging off the front."	1	nametag collar

nametag collar is equipment.
It is not temporary.
The placement of nametag collar is "face".
The slot of nametag collar is "neck".
The descmod of nametag collar is "Worn around your neck is a red collar, with a metal nametag hanging off of it. It's engraved with your name, proudly displaying it to the world.".
the scent of nametag collar is "Your collar smells like nylon, with a hint of metal from the nametag.".

Section 6 - Comments and Variables

[hp of Andromeda -- Variable for player-triggered talking scenes]
[xp of Andromeda -- variable used to work the sex menu]
[libido of Andromeda -- Variable for sex count, used to trigger some scenes]
[lust of Andromeda -- Variable for talk scene regarding collars]
[thirst of Andromeda -- Used for store description]


The Pretty Kitty ends here.