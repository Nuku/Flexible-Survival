Version 1 of Kai by WhiteRabbit begins here.

[ HP of Kai                                                                    ]
[ 0 - not encountered yet                                                      ]
[ 1 - encountered Kai                                                          ]
[ 99 - lost Kai                                                                ]

Section 1 - NPC

Table of GameCharacterIDs (continued)
object	name
Kai	"Kai"

Kai is a man.
[physical details as of game start]
ScaleValue of Kai is 3. [scalevalue 1-5: "tiny(under 1 foot)", "small(under 4 feet)", "average(around 6 feet)", "large(around 10 feet)", "huge(over 11 feet)"]
Body Weight of Kai is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Kai is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Kai is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Kai is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Kai is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Kai is 4. [length in inches]
Breast Size of Kai is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, C = 3, D = 4 DD = 5, ...]
Nipple Count of Kai is 2. [count of nipples]
Asshole Depth of Kai is 6. [inches deep for anal fucking]
Asshole Tightness of Kai is 1. [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
Cock Count of Kai is 1. [number of cocks]
Cock Girth of Kai is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Kai is 8. [length in inches]
Ball Count of Kai is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Kai is 1. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Kai is 0. [number of cunts]
Cunt Depth of Kai is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Kai is 0. [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
Clit Size of Kai is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Kai is false.
PlayerRomanced of Kai is false.
PlayerFriended of Kai is false.
PlayerControlled of Kai is false.
PlayerFucked of Kai is false.
OralVirgin of Kai is false.
Virgin of Kai is true.
AnalVirgin of Kai is true.
PenileVirgin of Kai is true.
SexuallyExperienced of Kai is true.
TwistedCapacity of Kai is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Kai is false. [steriles can't knock people up]
MainInfection of Kai is "Tiger Shark Male".
The description of Kai is "[KaiDesc]".
The conversation of Kai is { "mew" }.
The scent of Kai is "[KaiScent]".
Kai is in Kai's Campsite.

to say KaiDesc:
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "     Kai is a tall, athletic-looking man with a six pack and muscular arms. He's shirtless, which shows off his black and gray koi fish tattoo on his left arm, and wears super low rise boardshorts. The surfer boy has ocean blue-eyes, shoulder-length sandy-blonde hair, and tan skin that glistens in the sun from sweat and wearing tanning lotion. He has large-sized gill slits on both sides of his throat and blue tiger-like stripes running down the nape of his neck and back. When he sees you, he smiles, showing off his razor-sharp pearly-whites.";
		-- 2:
			say "     Your surfer friend hasn't changed much since you last saw him. His shoulder length, sandy-blonde hair is pulled back into a ponytail and still damp from the ocean water. The smell of coconuts and musk is coming off his skin, clearly from him previously lathering it with suntan lotion. He's wearing a black muscle tee with a large SurfSilver logo on the back and another small one on the chest, which still shows off his toned arms and beautiful koi fish tattoo. His tiger stripes are barely visible on the nape of his neck, but you can still see his gill slits. As usual, he has on his super low-rise boardshorts, which are black and blue with an all over striped pattern and a small SurfSilver logo on the left leg. The surfer boy is also wearing a black and white puka shell necklace, that is tight fitting around his neck. When your friend notices you, he waves and gives you a smirk.";

to say Kaiscent:
	say "He has the scent of coconuts and musk from his tanning lotion, however you can still smell the salt from the ocean with an undertone of fish, he is half-shark after all. ";

Section 2 - Events

Part 1 - Intro

after going to Public Beach while (HP of Kai is 0 and a random chance of 1 in 3 succeeds):
	say "     Walking to the entrance of the beach, you take a deep breath in, to smell the aromatic scent of the ocean. It draws you in, and you find you take your shoes off to feel the sand between your toes. You make your way over to the shore to walk along-side the ocean water, feeling the cool current run over your feet. Looking out to the ocean, you can see gigantic, crystal clear waves forming and crashing in the distance, the sunlight's reflection off the water creates a sparkling light that's almost blinding. The light makes your eyes start to water, making them close tight, when all of a sudden, you hear what sounds like a man hollering in excitement.";
	say "     Opening your eyes and can see a tanned man on a surfboard, riding a huge wave that had just formed. The surfer seems to be riding the wave perfectly, when suddenly, he wipes out and disappears into the water. The waves die down and you watch worryingly for the surfer to come back to the surface. You scan all over the ocean water for the man, but see no signs of him anywhere, and everyone on the beach hasn't seemed to notice. While you're searching the ocean for the surfer, you wonder what to do? You could jump into the water and possibly save his life or just continue on your way, what will you do?";
	LineBreak;
	say "     [bold type]Do you wish to save the surfer?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes, it's been some time since he wiped out, and he still hasn't come up for air.";
	say "     ([link]N[as]n[end link]) - No, you're sure that this wasn't the first time he's wiped out before.";
	if player consents: [encounter Kai]
		LineBreak;
		say "     Without hesitation, you run into the water and dive head first, making your way over to the general area that the surfer was at. You put all of your strength into each stroke while swimming, when suddenly you feel a hard tug at your leg. You start to worry that you and the surfer boy may not be the only thing in the water. Swimming faster, you feel the tug once more and then even harder, but this time, you're yanked completely underwater. You start panicking as you're being pulled under and think to yourself that maybe this is it. You try to open your eyes some to possibly see what yanked you from below. Frantically looking around, you can see no visible outlines of what did this, and the water is so crystal clear that it would be very easy to.";
		say "     You're so shook up that you hardly notice the fact that you haven't come up for some air, and you're slowly losing consciousness. Out of nowhere, you can feel something jolt past, grabbing you from behind. As you're lifted up and out of the water, you take a huge breath and cough a little of the water up. You sigh to yourself because thankfully, you didn't drown or get eaten by whatever pulled you under in the first place. That's when you remember that someone had saved you from drowning, and you turn around abruptly to see the very same tanned surfer from before. Only this time. you can see how handsome he is. He has shoulder-length sandy-blonde hair that shines in the sun and eyes so blue that they remind you of this very ocean.";
		WaitLineBreak;
		say "     As you're admiring him, you realize that he's laughing at you, mouth wide with razor-sharp pearly-whites. You're a little frightened seeing how sharp his teeth are, but you can't help continuing to admire him at the same time. While he continues to laugh, you finally ask him what's so funny, since you almost drowned, and from trying to save him no less? The surfer's laughs continue but start to fade, until he finally stops and takes a big breath in and then out. He finally says, 'Sorry, [if player is female]babe [else]mate [end if]for all of the laughter, but I couldn't stop myself. I just had to mess with you, and you really fell for it too!' You notice he has an Australian accent and wonder if he's from here.";
		say "     With a confused expression on your face, you ask him what he means and what exactly did you fall for? The surfer chuckles and says, 'Well, I saw you watching me surf, and I thought that it would be funny to mess with you a bit and pretend like I was drowning. I didn't think that you were actually going to try and save me.' It finally dawns on you that this whole thing was in fact a prank and that he faked the fall. You look down at your now soaking wet body and can't help but feel very annoyed that you got wet for nothing. You start to swim back to land so you can dry off before you leave the beach and continue on your way. At this point, the surfer can see how annoyed you are, grabs his board, and starts swimming back with you.";
		WaitLineBreak;
		say "     His face now turning red, he says, 'I'm sorry, [if player is female]babe [else]mate [end if]that I got you soaking wet. If you'd like, I have a towel that I can give you to dry off with.' You nod your head and continue swimming back to land with him. When the two of you, finally make it back to land, you follow him a ways to where he has a little set-up on the beach. You notice that he has blue tiger-like stripes going down his neck and back and large gill slits on both sides of his throat, which very much remind you of a tiger shark. You think to yourself that the infection must've caused this to happen. He hands you a towel, and with a shaky voice, he says, 'I'm truly sorry again. I'm Kai by the way, and anytime you would like to talk, feel free to come visit. I stay right here on the beach.' You dry yourself off with the towel and then hand it back to Kai, thanking him before continuing on your way.";
		now HP of Kai is 1;
		say "[bold type]You now know the way to Kai's Campsite.[roman type][line break]";
		now Kai's Campsite is known;
	else:
		LineBreak;
		say "     You decide against helping the surfer, seeing no point in soaking yourself when it's obvious that this isn't the first time he's wiped out before. You stare at the ocean for a little longer and see the man come back up from the water, with his board in hand. He swims back to shore, just fine like you had thought. You chuckle to yourself and continue on your way.";
		now HP of Kai is 99;

Section 3 - Location

Table of GameRoomIDs (continued)
Object	Name
Kai's Campsite	"Kai's Campsite"

Kai's Campsite is a room. It is a fasttravel. It is private.
The description of Kai's Campsite is "     Kai has a blue, 2-person dome tent that's setup on the beach. Inside the tent is a queen-sized inflatable mattress, pillows, and blankets. A large gym bag filled with clothes and other accouterments sits on the mattress, along with various surfer magazines to read. There's an area in the sand not too far from the tent that has been dug out several inches for a makeshift fire pit. The wood is stacked in a log cabin kind of arrangement with small twigs and seaweed built up in the middle to help start the fire. If you sit by the firepit, you get an amazing view of the ocean and rocky cliffs that aren't too far from the area. The sounds of the waves in the distance create a sense of calmness here and put you in a meditative state. The little setup is away from the busier parts of the beach, so you have more privacy and solitude to relax. Simple, just the way Kai seems to prefer it.".
earea of Kai's Campsite is "Beach".

Instead of sniffing Kai's Campsite:
	say "     It smells like salt and smoke.";


Section 4 - Talk Options

instead of conversing the Kai:
	if TimekeepingVar is 5 or TimekeepingVar is -3:
		say "     The surfer smiles at you while rubbing suntan lotion on his washboard abs. He asks what you would like to talk about.";
	else if TimekeepingVar is 3 or TimekeepingVar is -5:
		say "     Coming out of the water, the surfer is already smiling wide at you. He places his surfboard in the sand, grabs a towel, and asks what you would like to talk about.";
	else if TimekeepingVar is 1 or TimekeepingVar is -7:
		say "     Sitting by the fire at his set-up, he gives you a warm smile and says he was getting ready to cook something on the barbie, but he does have some time to talk.";
	else if TimekeepingVar is 7 or TimekeepingVar is -1:
		say "     Looking up from grabbing his surfboard, he gives a smile and says G'Day, before letting you know he is getting ready to hit the waves.";
	LineBreak;
	say "[KaiTalkMenu]";

[these need to be ordered by location]
[Talking with Kai]
[Kai's Set-up]
[The surfer smiles at you, while rubbing suntan lotion on his washboard abs. He asks what you would like to talk about?]
[Kai's Set-up]
[Coming out of the water, the surfer is already smiling wide at you. He places his surfboard in the sand, grabs a towel and asks what you would like to talk about?]
[Kai's Set-up]
[Sitting by the fire at his setup, he gives you a warm smile and says he was getting ready to cook something on the barbie. But he does have some time to talk.]
[Kai's Set-up]
[Looking up from picking up his board, he gives a smile and asks what you want, but says he is getting ready to hit the waves.]

to say KaiTalkMenu:
	say "What do you want to talk with Kai about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat";
	now sortorder entry is 1;
	now description entry is "Chat a bit with Kai";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 2;
	now description entry is "Ask him to tell you more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Australia";
	now sortorder entry is 3;
	now description entry is "Ask him why he left Australia";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His tattoo";
	now sortorder entry is 4;
	now description entry is "Ask Kai about the significance of his tattoo";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His interest in surfing";
	now sortorder entry is 5;
	now description entry is "Ask him how he became interested in surfing";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Just chat":
					say "[KaiTalk1]";
				if nam is "Himself":
					say "[KaiTalk2]";
				if nam is "Australia":
					say "[KaiTalk3]";
				if nam is "His tattoo":
					say "[KaiTalk4]";
				if nam is "His interest in surfing":
					say "[KaiTalk5]";
				wait for any key;
				now lastfuck of Kai is turns;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the surfer boy, shaking your head slightly as he gives you the usual razor-sharp smile.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say KaiTalk1: [just casual conversation]
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "     'Have you ever been to Sunny Snacks before?' Kai asks with a raised eyebrow. 'I was starving and didn't feel like catching my own food today, so I decided to check the place out. I ordered a fish burger and some fries from the friendly owner, a little too [']friendly['] if you ask me. She gave me a couple compliments at first, which I thought was nice. Until those compliments quickly turned into throwing sexual advances my way,' he says with a shocked look on his face and then continues. 'It made me very uncomfortable, so I told her that I wasn't interested and gave her the flick to go away. Wouldn't you know that when she brought my fishburger over to me, she fucking threw it right in my face and started calling me every name in the book!' At this point, you can hear the frustration in his voice. 'She made me so angry that I flipped her the bird and told her to piss off, before walking away. Man, was she a bitch!' You both start to laugh loudly together afterwards.";
		-- 2:
			say "     'You wouldn't believe what happened to me today!' He shakes his head and covers his face with his hands. 'While I was surfing earlier, I saw a couple good lookin' babes watching me. I had the bright idea that I was going to show off for them. Let's just say I gave them a [']show['] alright.' His face now turning red and nervously chuckling to himself. 'I was doing my thing, hittin' some bloody ripper waves and showin' off some cool tricks. The babes were really loving it, jumping up and down and even hollering at me, which made me feel even more confident in what I was doing. At this point, I'm really trying hard. So I'm riding this wave, and before I know it, I'm doing a double flip in the air. While I'm in midair, my fuckin' boardies go flying off and my donger is just swinging around for everyone to see.' His face now turning compltely red, that you would think it had just happened to him. 'Yeah, the babes thought it was hilarious before walking away and telling others what happened.'";

to say KaiTalk2:
	say "     Kai faces you, staring into your eyes, as you tell him that you're interested in knowing more about him. He lets out a deep breath, now looking down at the sand and running his feet through it. 'Well, there isn't much to really say about me these days,' he says with a shrug and then goes on. 'The me before the infection was a little different. I had a life, a home, friends, family and on my way to becoming a pro surfer. Now my life only consists of surfing, which don't get me wrong, it's always been my first love, but these days I feel lonely and like my life has no meaning anymore.' He gazes back up at you, and you stare into his eyes, which now look so full of sadness.";
	say "     He sigs and continues, 'I was very fortunate for the life I used to have back in Australia. You wouldn't believe how beautiful it was there, and the beaches were like nothing you've ever seen before. I was at the height of my surfing career, before I came here. I've won multiple competitions and was going to be competing for the first time in the SurfSilver Pro comp. But sadly, the infection destroyed all of that and I haven't been able to return to my homeland ever since.' You can't help but feel awful for him, but you're eager to find out more. He gives you a friendly smile, and from there you can tell the conversation has ended.";

to say Kaitalk3:
	say "     You decide to ask him why he made the decision to leave Australia. Kai looks up at you with a sad look on his face. You can tell that this topic seems a little touchy. He looks out to the ocean and then says, 'Maybe I could tell you some other time, when we've gotten to know each other a little more. This isn't my favorite thing to talk about.' You tell him that you understand and give him some space.";

to say KaiTalk4:
	say "     You explain that you're curious about the tattoo on his arm. It's black and gray with a koi fish that's swimming upstream. There are waves and cherry blossoms surrounding the koi fish as well. Looking down at his arm, he smiles and seems eager to tell you. 'Oh, I had no idea that you were interested in my tattoo. I've always loved the symbolism behind the koi fish, so I came up with a design and had it tattooed. The koi fish represents success and perseverance because of its ability to swim against strong currents and even swim upstream. The legend is that the koi fish who can swim up a waterfall becomes a dragon.'";
	say "     He chuckles to himself and continues, 'I don't think that I'm a dragon yet, so that's why I had the fish tattooed and it's swimming upstream because I hope to face the obstacles in my life. Cherry blossoms symbolize beauty and the fragility of life, since they don't last long. I look at it as you live your life like it's your last day on earth, so that's why I had the cherry blossoms added. Life is a beautiful thing, but fragile, and time passes by before we know it. I combined all of these things together, and there you have my tattoo. I thought it represented me perfectly.' Kai looks at you, before looking away. You notice he's blushing after telling you everything.";

to say KaiTalk5:
	say "     You ask him how he became so interested in surfing? This question causes him to give you a razor-sharp grin. 'Hmmm, I've been surfing for as long as I can remember. When I was a kid, I lived really close to the beach and used to go down there a lot to watch people surf. I would sit on that beach for hours just watching, trying to learn anything I could from the surfers. Finally one year for my birthday, my parents got me my first surfboard. Man, was it a real beauty. I think that I ran right out the front door before I could even tell them thank you. I was stoked.' Both of you start to laugh a bit. 'Man, did I suck at first. I thought that just from watching those guys surfing all day, that I would know what the hell I was doing. Not even close.'";
	say "     He shakes his head and covers his face with his hands. 'I finally begged my parents to pay for surfing lessons. They knew how badly I wanted to learn, and it didn't take much convincing either. After taking those lessons for a while, I got really good. I loved it so much that I listened to everything the instructor told me to do, and I would practice all day until my parents had to come and physically collect me. I can still remember the time that I caught my first wave.' The surfer smiles and continues, 'The feeling was so intense and addictive. My adrenaline rushed like crazy, and I've literally been surfing ever since. I made it my goal to become pro and to actually believe that I was on my way too. Those were some really great times.' The surfer looks out to the ocean, causing him to lose track of the conversation. You leave him to reminiscence about his past.";


Kai ends here.
