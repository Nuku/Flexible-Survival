Version 1 of Farmhands by Wahn begins here.
[Version 1 - New group creature]


[ FriesianRelationship - Tracking Variable for Player/Friesian relations  ]
[  0: Never seen one another                                              ]
[  1: Met, but not introduced                                             ]
[  2: Player got told their names                                         ]


FriesianRelationship is a number that varies.

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Farmhand Horsemen	"Farmhand Horsemen"

Farmhand Horsemen is a man.
Farmhand Horsemen is in Worker Barracks.
ScaleValue of Farmhand Horsemen is 4. [human+ sized]
Body Weight of Farmhand Horsemen is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Farmhand Horsemen is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Farmhand Horsemen is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Farmhand Horsemen is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Farmhand Horsemen is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Farmhand Horsemen is 4. [length in inches]
Breast Size of Farmhand Horsemen is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Farmhand Horsemen is 2. [count of nipples]
Asshole Depth of Farmhand Horsemen is 16. [inches deep for anal fucking]
Asshole Tightness of Farmhand Horsemen is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Farmhand Horsemen is 1. [number of cocks]
Cock Girth of Farmhand Horsemen is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Farmhand Horsemen is 16. [length in inches]
Ball Count of Farmhand Horsemen is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Farmhand Horsemen is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Farmhand Horsemen is 0. [number of cunts]
Cunt Depth of Farmhand Horsemen is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Farmhand Horsemen is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Farmhand Horsemen is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Farmhand Horsemen is false.
PlayerRomanced of Farmhand Horsemen is false.
PlayerFriended of Farmhand Horsemen is false.
PlayerControlled of Farmhand Horsemen is false.
PlayerFucked of Farmhand Horsemen is false.
OralVirgin of Farmhand Horsemen is false.
Virgin of Farmhand Horsemen is true.
AnalVirgin of Farmhand Horsemen is true.
PenileVirgin of Farmhand Horsemen is false.
SexuallyExperienced of Farmhand Horsemen is true.
TwistedCapacity of Farmhand Horsemen is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Farmhand Horsemen is false. [steriles can't knock people up]
MainInfection of Farmhand Horsemen is "Horseman".
Description of Farmhand Horsemen is "[FarmhandsDesc]".
Conversation of Farmhand Horsemen is { "<This is nothing but a placeholder!>" }.
The scent of Farmhand Horsemen is "     Walking up to one of the horsemen, you sniff at him - he has a nicely masculine scent, with a little bit of fur, straw and sweat in the mix. Seems like the guys are not adverse to doing some good and solid work for their boss at the farm. The farm worker you approached lowers a hand to rub the bulge at his crotch and says, 'I'm game if you wanna get to know me even better.' He chuckles amicably as you make an excuse and take a few steps back from him.".

to say FarmhandsDesc:
	if debugactive is 1:
		say "DEBUG -> Farmhand Horsemen: HP: [HP of Farmhand Horsemen] <- DEBUG[line break]";
	say "     The farmhands living in the barracks here are almost all anthro horsemen of various breeds meant for heavy labor. The majority are Clydesdales, with their typical brown coats, black manes and white forearms as well as lower legs. Others are of less easily recognized breeds, but you're quite sure that a pair of magnificent twin guys from among their number are Friesians - with jet-black fur from head to hoof. One other guy of note is actually a zebra that somehow found his way here, but he doesn't stand out too much among the crowd, being just one of the guys other than his markings. At any given time, there are about five to ten of the farm workers present, with twenty more on duty somewhere on or around the farm.";
	say "     The usual 'uniform' for these hunks seems to be a pair of blue jeans, with or without a sleeveless shirt and cowboy hat to go with it. Obviously, they don't need to wear any shoes due to their hooves, but you can just imagine the boots that once went with the rest of the outfit. Other than that, a few have some pieces of personal jewelry and even tattoos and brands that help you keep them apart. One of the Clydesdales for example has a quite large golden nose ring through both nostrils of his muzzle.";
	if PlayerMet of Farmhand Horsemen is false:
		now PlayerMet of Farmhand Horsemen is true;

Section 2 - Talking

instead of conversing the Farmhand Horsemen:
	say "     Walking up to one of the horsemen, you strike up a short conversation with him. He is relatively friendly in a hard-working, earthy type of way. From what he is saying, it seems to you that the guys are content to work on the farm and highly motivated to keep it the safe haven in the midst of all the chaos that it is. Before long, the guy excuses himself to [one of]go shower[or]get a nap before his shift[or]go munch some food[or]get back to work[at random], but before he goes, he says something that draws some extra attention from you:[line break]";
	say "     [one of]'Anthony is an alright boss. Young, but fair. I can tell you, some of us had our doubts about the kid when he took over after his grandpa died, but he gets up at the crack of dawn like the rest of us and really gives everything he has to keep the place going. Not bad for a city slicker.'[or]'I don't really mind being a horse. Tall and strong, with quite a package between the legs. Not that I had any problems before, mind you. But yeah - it's a nice side effect. Though you can get itchy to actually make use of it. I mean... Rosy Palm is great, but actually feeling a tight hole around your dick is something else.'[or]'Nghh - I wanna fuck someone. Those horse balls the transformation gave me really churn out a lot and I'm tired of jerking off. Not many chances to do it with anyone though - just grabbing yourself a bitch out in the plain and nailing her might seem attractive, but that's the fastest way to go bonkers. Lost a few good guys in the early days that way... they let themselves go and went totally native. No thanks for that!'[or]'I'm horny enough to think about doing another guy by now. Don't usually swing that way, but... aw man, blue balls you know?! Still, just going up to one of my bro's here seems kinda iffy. Guess it's jerk-off time tonight again.'[at random]";
	if PlayerMet of Farmhand Horsemen is false:
		now PlayerMet of Farmhand Horsemen is true;

Section 3 - Sex

instead of fucking the Farmhand Horsemen:
	if (lastfuck of Farmhand Horsemen - turns < 6): [horseman sex in the last 18 hours = 6 turns]
		say "     As you step up to one of the farmhands and make him an offer of sex, the guy gives a broad smile and rubs his crotch - then suddenly gets a light punch to the shoulder by one of his buddies. 'Hey stud, keep it in your pants. You're gonna be on the next shift with me and god damn you if I have to do all the work because you are fucked out and exhausted. Now stick your head into a cold bucket of water or something!'";
		say "     With a grumble and annoyed huff, the first farmhand starts to walk over to the showers. While he does so, the guy who interrupted pulls you aside by the arm a little. 'Listen, I don't mind if you wanna sleep your way through all of the bunks in here. Could use some company myself actually... but we gotta still do the work. Without constant attention, this farm is gonna be overrun. The grass, creatures and whatnot - that needs effort to hold back. Can't fuck away the whole day, as much as we may like to.'";
	else: [ready for sex]
		say "     As you step up to one of the farmhands and make him an offer of sex, the guy gives a broad smile and reaches out to rub your crotch. [if Player is male]His hand comes to rest on your bulge and he gropes it a little, then says, 'I think most of us didn't play for the guy on guy team when all this started, but... fuck it, who cares these days. I'm game if you are, and the others will be too.'[else if Player is female]After massaging you a little through the fabric of your clothes, he slips his hand into your pants and feels over your already moist nether lips. Pulling the hand out a moment later, he licks his fingers and grins at you. 'You'll find many friends in here, baby. We've got enough studs to pound you all day and night.'[else]After massaging you a little through the fabric of your clothes, he slips his hand into your pants and feels around. The horseman appears puzzled at the absence of any genitalia at all, pulling back a little before catching himself. 'Wow, that's strange. Erm... whatever you are, you still got an ass right? I think most of us didn't go for ass bandit play when all this started, but... fuck it, who cares these days. I'm game if you are, and the others will be too.'[end if]";
		wait for any key;
		say "[FarmhandsSexMenu]";

to say FarmhandsSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gangbang - Oral and Cum Shower";
	now sortorder entry is 1;
	now description entry is "Sink to your knees to suck cocks and be blasted with cum";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gangbang - Ass and Mouth";
	now sortorder entry is 2;
	now description entry is "Let the farmhands pound you from both ends";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Gangbang - Pussy and Mouth";
		now sortorder entry is 3;
		now description entry is "Let the farmhands pound you from both ends";
	[]
	if Dexterity of Farmhand Horsemen is 1 or Dexterity of Farmhand Horsemen is 10 or Dexterity of Farmhand Horsemen is 11:
		choose a blank row in table of fucking options;
		now title entry is "Shower Fuck";
		now sortorder entry is 4;
		now description entry is "Join [if Dexterity of Farmhand Horsemen is 1 or Dexterity of Farmhand Horsemen is 10]the guy you watched through the window before[else if Dexterity of Farmhand Horsemen is 11]Carlos[end if] in the shower for a sexy time";
	[
	choose a blank row in table of fucking options;
	now title entry is "Twin Double-Team Fuck";
	now sortorder entry is 5;
	now description entry is "Get it on with the Friesian stud twins";
	]
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
				if (nam is "Gangbang - Oral and Cum Shower"):
					say "[Farmhand HorsemenSex1]";
				if (nam is "Gangbang - Ass and Mouth"):
					say "[Farmhand HorsemenSex2]";
				if (nam is "Gangbang - Pussy and Mouth"):
					say "[Farmhand HorsemenSex3]";
				if (nam is "Shower Fuck"):
					say "[Farmhand HorsemenSex4]";
				if (nam is "Twin Double-Team Fuck"):
					say "[Farmhand HorsemenSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the horseman farmhand, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Farmhand HorsemenSex1: [Gangbang - Oral and Cum Shower]
	say "     As you say out loud that you want to suck his big, equine cock, the horseman gives a satisfied whinny and draws you close for a kiss right on the lips. Then his strong hands start to strip you of your clothes and gear, dropping them messily on the nearest bunk bed as piece by piece is pulled off. The fact that the two of you get going right in the middle of the barracks immediately draws everyone's attention, with farm workers who had been lounging around, playing cards or eating quickly getting up and gravitating towards you and your stud. He gropes your soon completely naked body, grunting in rising lust. As you are pressed against his front while he touches you all over, you can smell his attractive scent - the masculine aroma of a stud in his prime, underlain with hints of straw and a little honest sweat.";
	say "     'Oh yeah [if Player is male]dude[else]baby[end if], it's time for you see your stud.' With that said, the tall equine takes a step back, pulling his sleeveless shirt of a broad and muscular chest and throwing it in the face of another horseman who is giving your naked body a lusty stare. 'Hey,' the other guy complains, brows drawing together as he pulls the crumpled shirt off his head - only to grin a moment later as he gets told, 'You're number two after me. Go on and strip down too.' Turning back to you, your horseman stud playfully pops the button of his jeans, then works the zipper down bit by bit, revealing a long equine schlong that flops down halfway to his knees when it is freed from being tucked inside his pants. After a quick push of the jeans down his muscular legs, the Clydesdale stud kicks them off fully, then steps up to you in his bare-ass naked magnificence.";
	WaitLineBreak;
	say "     One of the watching horsemen turns around to grab a pillow from the nearest bed, throwing it to the ground between you and your equine hunk. 'Thanks man,' the naked stallion says with a chuckle, then pushes down on your shoulders with large hands and makes you kneel on the pillow. A heartbeat later, you're eye to eye with his long prick and the two full orbs of his balls. He's quite a big guy, with an erection that is both long as well as thick, ending in a blunt cockhead with a flared rim. At the base of his shaft are a few wrinkles of skin, indicating that his cock is hidden in a sheath when soft - not that it isn't rock hard now.";
	say "     Raising your hands to take hold of the cock, you slide your fingers over its warm, fleshy length, exploring its shape a bit before lifting it. Your partner gives a pleased grunt as you handle his manhood, followed by a horny whinny when you run your tongue over his dickhead for the first time. 'Oooh yeah, keep doing that!' he pants out, hooves clattering a bit on the floor as he takes a more secure stance. With your hands slowly pumping his length, you proceed to lick and suckle on the equine's cockhead, slurping up the tasty pre that leaks from his cum-slit. Then suddenly, you feel a warm, firm length of flesh land on your shoulder and stick out over it - it's the hard cock of horseman #2, who is eager to get in on the action.";
	WaitLineBreak;
	say "     Transferring one of your hands to the second cock, you stroke both of your eager studs at the same time, switching your licks and suckling from one cockhead to the other. As focused as you are on these two, you don't pay much attention to other farmhands around - but it becomes clear that they're doing when yet another cock is suddenly pushed into your line of sight from the side and you feel a fourth guy rub his length against your left arm. Soon you're surrounded on all sides by horny stallions - with even the zebra guy in the mix. Stroking, touching and sucking on dick after dick, you make sure all of them have a great time as they stand in a circle around you, mostly with their arms around their buddies left and right. You think you see one or two of the guys stroke their neighbors muscular sides in a more than just friendly manner, but with your lips wrapped around a flared cockhead, you're too busy to check who it was.";
	say "     Before much longer, your original equine stud grunts out, 'Getting really close now! Come on, drink my cum!' He gently but insistently swats the side of your cheek with his dick, holding it with one hand wrapped around the base, which prompts you to let go of the zebra's erection and go for the more urgent case. Sliding your lips over the end of his big erection, you suckle on him while jerking his long schlong, quickly driving the man past the point of no return. 'OOOHH FUCK YEAH!' he bellows, stomping the floor with a large hoof and holding on to his buddies as his balls send forth a first giant blast of cum that fills your mouth in an instant.";
	WaitLineBreak;
	say "     The big balls on these guys aren't just for show, that much is clear to you as soon as he starts cumming and you swallow a big gulp - only to have it replaced by another spurt, and another. Still, you keep your lips firmly wrapped around his cockhead, something that is made a bit easier by the flared rim on it and do your best to drink down all of the nut-milk he is giving you. It is surprisingly tasty - as one would expect from farm-fresh milk - making you eager to swallow everything that you can get. Your focus of attention shrinks even more, from the circle of naked horsemen to just the dick pulsing between your lips, your whole world being the fleshy tube and its tasty treat for a few moments.";
	say "     When the further spurts of cum eventually ebb off, you pull off your muscular friend's prick and give a little burp with cum heavy on your breath. 'Look at that! [if Player is female]She[else]He[end if] took it all in one go! That's dedication!' one of the horsemen observes, but the replies to his comments are mainly somewhat breathless chuckles. One look around makes clear why. All of the other dudes around you are frantically masturbating and apparently quite close to getting off. In fact, as you turn your head to look at the ones on your left, one of them starts to cum and nails you right in the face with the first splurt of equine seed. His buddies are only seconds behind themselves, putting you in the center of a veritable shower of cum spurting from their thick horse-cocks.";
	WaitLineBreak;
	say "     Being bathed in warm, creamy seed is definitively an interesting experience - you kinda like being the center of all this attention, and the fact that half a dozen strapping hunks got off just because of you. In mere moments, you're literally drenched in their cum, with more and more splattering you by the second. You can't help but be curious about the different guys and wipe up some dollops of sperm to taste - or capture a spurt directly with your mouth. The different workers actually have their own taste, similar but with slight differences. Seems like someone's diet truly adjusts the taste - and no matter what they might prefer to eat, it certainly is all grown right here on the farm, healthy and fresh... which results in tasty cum too.";
	say "     By the time the last of the guys has gotten his rocks off, the circle around you has mostly disbanded, most guys peeling off in singles or twos. Your original horseman stud nevertheless stays with you until the end, giving you a hand to help you stand up before guiding you to the communal showers. 'That was amazing! I think you may just be our new favorite visitor in the barracks,' he says and gives you a playful swat on the ass, then leaves you to clean up under the spray of clean water. A few minutes later, he returns with a large towel and the small pile of your clothes and gear, setting it all down on a dressing bench. The horseman then takes position against a nearby wall, casually watching you dry off and get dressed, clearly enjoying the show.";
	NPCSexAftermath Player receives "OralCock" from Farmhand Horsemen;
	PlayerDrink 30;
	PlayerEat 30;

to say Farmhand HorsemenSex2: [Gangbang - Ass and Mouth]
	say "     As you say out loud that you want to take some big, equine cocks, the horseman gives a satisfied whinny and draws you close for a kiss right on the lips. Then his strong hands start to strip you of your clothes and gear, dropping them messily on the nearest bunk bed as piece by piece is pulled off. The fact that the two of you get going right in the middle of the barracks immediately draws everyone's attention, with farm workers who had been lounging around, playing cards or eating quickly getting up and gravitating towards you and your stud. He gropes your soon completely naked body, grunting in rising lust. As you are pressed against his front while he touches you all over, you can smell his attractive scent - the masculine aroma of a stud in his prime, underlain with hints of straw and a little honest sweat.";
	say "     'Oh yeah [if Player is male]dude[else]baby[end if], it's time for you see your stud.' With that said, the tall equine takes a step back, pulling his sleeveless shirt of a broad and muscular chest and throwing it in the face of another horseman who is giving your naked body a lusty stare. 'Hey,' the other guy complains, brows drawing together as he pulls the crumpled shirt off his head - only to grin a moment later as he gets told, 'You can take the other end. Go on and strip down too.' Turning back to you, your horseman stud playfully pops the button of his jeans, then works the zipper down bit by bit, revealing a long equine schlong that flops down halfway to his knees when it is freed from being tucked inside his pants. After a quick push of the jeans down his muscular legs, the Clydesdale stud kicks them off fully, then steps up to you in his bare-ass naked magnificence.";
	WaitLineBreak;
	say "     Drawing you into a bout of making out, the horseman puts both of his large hands on your ass, kneading both buttocks under his finger. 'Can't wait to get into that fine ass of yours,' he says in a breathless huff as your lips part again after a little while. Then the stallion takes you by the shoulders and spins you around - directing your attention towards his buddy who got chosen to be the second man in this coupling. The other horseman is just as tall and strong as your first pick to mate with, although different in fur color - showing a [one of]reddish coat with speckles of darker fur on the shoulders and thighs. [or]jet-black coat that covers his rippling muscles. It's one of the two Friesian brothers working on the farm! [or]cream-colored coat and platinum-blond mane. [at random]The sexy hunk has a grin on his face as he steps up to you, then hooks a hand behind your head and gives you a demanding kiss. His broad tongue invades your mouth and wrestles with yours in a playful manner until he eventually pulls back, leaving you panting for breath.";
	say "     The next thing the new horseman does is pull your upper body forward and down, bending you over to get your head on an equal level with the thick equine shaft he is holding up for you. 'Yeah [if Player is male]dude[else]baby[end if], lick it!' he grunts in obvious arousal and you gladly comply, running your tongue over the flared head of his shaft. Licking the hot, firm flesh of his manhood, you are rewarded by a small spurt of pre from his cum-slit, covering your stretched out tongue. It actually tastes very nice, prompting you to gulp it down hungrily and then go back to suckling on the guy's cockhead for more, hands pumping his shaft.";
	WaitLineBreak;
	say "     In the meantime, your original stud has been grinding his muscled thighs and hard cock against your bare ass for a little while, just enjoying the feeling of rubbing up against your naked body. Then he eventually step back a little and stroked his cock, spreading pre and gobs of spit along its length to lube the big shaft. 'Time to show how well you can take this horse!' he grunts out, drawing chuckles from the guys all around you. From the corner of your eyes you can see that most of them are at least half-way naked too, with a number of large pricks being stroked at the show. Then the stallion's thick shaft gets smacked against your butt-crack, with him teasingly guiding the flared head up and down until he eventually lines it up with your pucker.";
	say "     You can feel the hot breath of the large anthro horse against your back as he starts to push in, increasing the pressure against your back door slowly but steadily. It is good that his pre serves well to slick up his dick, as the blunt shape and flared head of his manhood doesn't really lend itself to slowly opening you up - instead suddenly popping in when your muscle can't resist the push anymore. From one moment to the next, your back passage is suddenly stretched wide around his girth, forcing you to stop your suckling and gasp at the feeling of being penetrated by such a large guy. Thankfully, your stallion is aware of his size and just rests his cock where it is for now, allowing your body to get used to the large invader.";
	WaitLineBreak;
	say "     Leaning over you and licking your shoulder and neck during the short moment of waiting, the Clydesdale eventually asks you, 'Ready for more?' You flex the muscles of your back passage a little, finding that they feel more or less okay with the thick shaft stretching them out by now, then give a nod and breathless pant. Your stallion reacts with a satisfied grunt, then starts to sink himself deeper, driving his thick prick into your body with a steady push. The gathered group of hunks all around you cheer him and you on, filling the barracks with shouts of, 'Yeah, take that hole!', 'You're doing well, just relax!', 'Look at him go! That's gonna be one stretched asshole!' and 'I can't wait for my turn!'";
	say "     Eventually, your equine hunk actually does bottom out, his prick giving you the feeling of being totally stuffed - but in a good way. Then he starts to pull back out and the sensations of his slick manhood sliding along your inner passage push your arousal to new heights. As the stallion finally begins to fuck you with steady strokes, you're moaning nonstop - at least until the second guy in front of you plugs your open mouth with his cockhead. The two of them hump into you, front and back, focusing all your attention on the two thick cocks sliding in and out. Before long, those warm rods are joined by several more that are rubbed against your sides, arms and one guy even just pushes forward to rest his black-skinned prick on the bridge of your nose, filling your whole line of sight with his thick, veined man-meat.";
	WaitLineBreak;
	say "     You are the center of attention for more than half a dozen of horny horsemen who eagerly touch, rub and fuck you - until the guy with his prick in your mouth can't hold back anymore. 'OOOHH FUCK YEAH!' he bellows, stomping the floor with a large hoof and holding on to his buddies as his balls send forth a first giant blast of cum that fills your mouth in an instant. The big balls on these guys aren't just for show, that much is clear to you as soon as he starts cumming and you swallow a big gulp - only to have it replaced by another spurt, and another. Still, you keep your lips firmly wrapped around his cockhead, something that is made a bit easier by the flared rim on it and do your best to drink down all of the nut-milk he is giving you.";
	say "     It is surprisingly tasty - as one would expect from farm-fresh milk - making you eager to swallow everything that you can get. Your focus of attention shrinks even more, from the circle of naked horsemen to just the dick pulsing between your lips, your whole world being the fleshy tube and its tasty treat for a few moments. When the further spurts of cum eventually ebb off, you pull off your muscular friend's prick and give a little burp with cum heavy on your breath. 'Look at that! [if Player is female]She[else]He[end if] took it all in one go! That's dedication!' one of the horsemen observes, but the replies to his comments are mainly somewhat breathless chuckles. As the guy who just filled your stomach with his load steps aside, he is instantly replaced by another - the zebra farmhand, actually. He doesn't hesitate to plug your mouth with his black-skinned shaft.";
	WaitLineBreak;
	say "     Meanwhile on your other end, the original Clydesdale is getting quite close himself. He bellows, 'I'm gonna breed this hole! Take my foals, slut!' With that, he rams himself home into your ass all the way, holding on to your hips tightly as his balls let loose a thick blast of cum, then another and another. The pulse of his shaft against your inner walls and the widely stretched pucker between your buttocks seems to go on forever, forcing your belly to swell a little to keep all the cum inside. 'You got one nice ass, [if Player is male]dude[else]baby[end if],' your partner pants out breathlessly in between further spurts, staying inside you until his orgasm eventually subsides.";
	say "     'Next!' the horseman calls out with a grin, drawing chuckles from the horny dudes all around him. Then he slides himself out of you with a smooth pull, creating a slurping sound as his load starts to gush from your gaping hole. But not for long, as the next farmhand steps up and plugs you with his prick. There is a squelch of cum around his shaft as he sinks into your sloppy hole, driving deep into the pre-stretched passage. He proceeds to pound into you hard right from the get-go, driving your already sky-high libido right past any hope of keeping your composure. With a whorish moan around the dickhead in your mouth, you come hard, [if Player is male]splattering the floor between your feet with blasts of cum[else if Player is female]gushing femcum to spatter the floor between your feet and run down the inside of your legs[else]making tingles of pleasure run though your whole body[end if]. Your knees go weak from the sheer force of your orgasm, so much so that you're basically just being held up by the two cocks at the front and back, a true horseman spit-roast now.";
	WaitLineBreak;
	say "     What happens next is kind of a blur in your mind afterwards, but you can remember that the gangbang continued until every last one of the little group of horny farmhands came - in or on you. It definitively was a breathtaking experience during which you came two... maybe three more times as they took turns. One thing is clear in your mind even through all that - being bathed in warm, creamy seed is definitively an interesting experience - you really liked being the center of all their attention and the fact that half a dozen strapping hunks got off just because of you. Drenched and dripping you are eventually carried into the communal showers by your original partner.";
	NPCSexAftermath Player receives "OralCock" from Farmhand Horsemen;
	NPCSexAftermath Player receives "AssFuck" from Farmhand Horsemen;
	NPCSexAftermath Player receives "OralCock" from Nelson;
	NPCSexAftermath Player receives "AssFuck" from Nelson;
	NPCSexAftermath Player receives "OralCock" from Karel;
	NPCSexAftermath Player receives "AssFuck" from Karel;
	NPCSexAftermath Player receives "OralCock" from Isaac;
	NPCSexAftermath Player receives "AssFuck" from Isaac;
	say "     'That was amazing! I think you may just be our new favorite visitor in the barracks,' he says and gives you a playful swat on the ass, then holds you upright under the spray of clean water and washes you. His hands do a thorough job of soaping you up, half the time holding you up as he does so too, as your knees are still weak. He clearly appreciates touching you and rubbing your naked form, though even with a horny stud like him, there are limits to sexual stamina, so things stay at cleaning and washing off. Helping you sit down on a dressing bench afterwards, he leaves for a short while before returning with a large towel and the small pile off your clothes and gear, setting it all down beside you. The horseman keeps you company as you dress, joining you in a short conversation until you eventually stumble back into the main barracks room, welcomed by quite a few friendly smiles.";
	infect "Horseman";
	infect "Zebra Stallion";
	infect "Horseman";
	PlayerDrink 30;
	PlayerEat 30;
	now PlayerFucked of Nelson is true;

to say Farmhand HorsemenSex3: [Gangbang - Pussy and Mouth]
	say "     As you say out loud that you want to take some big, equine cocks, the horseman gives a satisfied whinny and draws you close for a kiss right on the lips. Then his strong hands start to strip you of your clothes and gear, dropping them messily on the nearest bunk bed as piece by piece is pulled off. The fact that the two of you get going right in the middle of the barracks immediately draws everyone's attention, with farm workers who had been lounging around, playing cards or eating quickly getting up and gravitating towards you and your stud. He gropes your soon completely naked body, grunting in rising lust. As you are pressed against his front while he touches you all over, you can smell his attractive scent - the masculine aroma of a stud in his prime, underlain with hints of straw and a little honest sweat.";
	say "     'Oh yeah [if Player is male]dude[else]baby[end if], it's time for you see your stud.' With that said, the tall equine takes a step back, pulling his sleeveless shirt of a broad and muscular chest and throwing it in the face of another horseman who is giving your naked body a lusty stare. 'Hey,' the other guy complains, brows drawing together as he pulls the crumpled shirt off his head - only to grin a moment later as he gets told, 'You can take the other end. Go on and strip down too.' Turning back to you, your horseman stud playfully pops the button of his jeans, then works the zipper down bit by bit, revealing a long equine schlong that flops down halfway to his knees when it is freed from being tucked inside his pants. After a quick push of the jeans down his muscular legs, the Clydesdale stud kicks them off fully, then steps up to you in his bare-ass naked magnificence.";
	WaitLineBreak;
	say "     Drawing you into a bout of making out, the horseman puts both of his large hands on your ass, kneading both buttocks under his finger. 'Can't wait to get into that fine ass of yours,' he says in a breathless huff as your lips part again after a little while. Then the stallion takes you by the shoulders and spins you around - directing your attention towards his buddy who got chosen to be the second man in this coupling. The other horseman is just as tall and strong as your first pick to mate with, although different in fur color - showing a [one of]reddish coat with speckles of darker fur on the shoulders and thighs. [or]jet-black coat that covers his rippling muscles. It's one of the two Friesian brothers working on the farm! [or]cream-colored coat and platinum-blond mane. [at random]The sexy hunk has a grin on his face as he steps up to you, then hooks a hand behind your head and gives you a demanding kiss. His broad tongue invades your mouth and wrestles with yours in a playful manner until he eventually pulls back, leaving you panting for breath.";
	say "     The next thing the new horseman does is pull your upper body forward and down, bending you over to get your head on an equal level with the thick equine shaft he is holding up for you. 'Yeah [if Player is male]dude[else]baby[end if], lick it!' he grunts in obvious arousal and you gladly comply, running your tongue over the flared head of his shaft. Licking the hot, firm flesh of his manhood, you are rewarded by a small spurt of pre from his cum-slit, covering your stretched out tongue. It actually tastes very nice, prompting you to gulp it down hungrily and then go back to suckling on the guy's cockhead for more, hands pumping his shaft.";
	WaitLineBreak;
	say "     In the meantime, your original stud has been grinding his muscled thighs and hard cock against your bare ass for a little while, just enjoying the feeling of rubbing up against your naked body. Then he eventually step back a little and stroked his cock, spreading pre and gobs of spit along its length to lube the big shaft. 'Time to show how well you can take this horse!' he grunts out, drawing chuckles from the guys all around you. From the corner of your eyes you can see that most of them are at least half-way naked too, with a number of large pricks being stroked at the show. Then the stallion's thick shaft gets smacked against your butt-crack, with him teasingly guiding the flared head up and down until he eventually lines it up with your pussy.";
	say "     You can feel the hot breath of the large anthro horse against your back as he starts to push in, nudging apart your nether lips and slipping in between them. It is good that you're dripping wet and his pre serves well to slick up his dick, as the blunt shape and flared head of his manhood doesn't really lend itself to slowly opening you up; instead, he's just inside you with the thick flared head suddenly, really stretching your passage wide around his girth. You can't help but stop your suckling and gasp at the feeling of being penetrated by such a large guy. Thankfully, your stallion is aware of his size and just rests his cock where it is for now, allowing your body to get used to the large invader.";
	WaitLineBreak;
	say "     Leaning over you and licking your shoulder and neck during the short moment of waiting, the Clydesdale eventually asks you, 'Ready for more?' You flex the muscles of your vagina passage a little, finding that they feel more or less okay with the thick shaft stretching them out by now, then give a nod and breathless pant. Your stallion reacts with a satisfied grunt, then starts to sink himself deeper, driving his thick prick into your body with a steady push. The gathered group of hunks all around you cheer him and you on, filling the barracks with shouts of, 'Yeah, take that hole!', 'You're doing well, just relax!', 'Look at him go! That's gonna be one stretched asshole!' and 'I can't wait for my turn!'";
	say "     Eventually, your equine hunk actually does bottom out, his prick giving you the feeling of being totally stuffed - but in a good way. Then he starts to pull back out and the sensations of his slick manhood sliding along your inner passage push your arousal to new heights. As the stallion finally begins to fuck you with steady strokes, you're moaning nonstop - at least until the second guy in front of you plugs your open mouth with his cockhead. The two of them hump into you, front and back, focusing all your attention on the two thick cocks sliding in and out. Before long, those warm rods are joined by several more that are rubbed against your sides, arms and one guy even just pushes forward to rest his black-skinned prick on the bridge of your nose, filling your whole line of sight with his thick, veined man-meat.";
	WaitLineBreak;
	say "     You are the center of attention for more than half a dozen of horny horsemen who eagerly touch, rub and fuck you - until the guy with his prick in your mouth can't hold back anymore. 'OOOHH FUCK YEAH!' he bellows, stomping the floor with a large hoof and holding on to his buddies as his balls send forth a first giant blast of cum that fills your mouth in an instant. The big balls on these guys aren't just for show, that much is clear to you as soon as he starts cumming and you swallow a big gulp - only to have it replaced by another spurt, and another. Still, you keep your lips firmly wrapped around his cockhead, something that is made a bit easier by the flared rim on it and do your best to drink down all of the nut-milk he is giving you.";
	say "     It is surprisingly tasty - as one would expect from farm-fresh milk - making you eager to swallow everything that you can get. Your focus of attention shrinks even more, from the circle of naked horsemen to just the dick pulsing between your lips, your whole world being the fleshy tube and its tasty treat for a few moments. When the further spurts of cum eventually ebb off, you pull off your muscular friend's prick and give a little burp with cum heavy on your breath. 'Look at that! [if Player is female]She[else]He[end if] took it all in one go! That's dedication!' one of the horsemen observes, but the replies to his comments are mainly somewhat breathless chuckles. As the guy who just filled your stomach with his load steps aside, he is instantly replaced by another - the zebra farmhand, actually. He doesn't hesitate to plug your mouth with his black-skinned shaft.";
	WaitLineBreak;
	say "     Meanwhile on your other end, the original Clydesdale is getting quite close himself. He bellows, 'I'm gonna breed this hole! Take my foals, slut!' With that, he rams himself home into your pussy all the way, holding on to your hips tightly as his balls let loose a thick blast of cum, then another and another. The pulse of his shaft against your inner walls and the heavy blasts that easily force their way past your stretched cervix seem to go on forever, forcing your belly to swell a little to keep all the cum inside. 'You got one nice pussy, [if Player is male]dude[else]baby[end if],' your partner pants out breathlessly in between further spurts, staying inside you until his orgasm eventually subsides.";
	say "     'Next!' the horseman calls out with a grin, drawing chuckles from the horny dudes all around him. Then he slides himself out of you with a smooth pull, creating a slurping sound as his load starts to gush from your gaping hole. But not for long, as the next farmhand steps up and plugs you with his prick. There is a squelch of cum around his shaft as he sinks into your sloppy hole, driving deep into the pre-stretched passage. He proceeds to pound into you hard right from the get-go, driving your already sky-high libido right past any hope of keeping your composure. With a whorish moan around the dickhead in your mouth, you come hard, [if Player is male]splattering the floor between your feet with blasts of cum[else if Player is female]gushing femcum to spatter the floor between your feet and run down the inside of your legs[else]making tingles of pleasure run though your whole body[end if]. Your knees go weak from the sheer force of your orgasm, so much so that you're basically just being held up by the two cocks at the front and back, a true horseman spit-roast now.";
	WaitLineBreak;
	say "     What happens next is kind of a blur in your mind afterwards, but you can remember that the gangbang continued until every last one of the little group of horny farmhands came - in or on you. It definitively was a breathtaking experience during which you came two... maybe three more times as they took turns. One thing is clear in your mind even through all that - being bathed in warm, creamy seed is definitively an interesting experience - you really liked being the center of all their attention and the fact that half a dozen strapping hunks got off just because of you. Drenched and dripping you are eventually carried into the communal showers by your original partner.";
	NPCSexAftermath Player receives "OralCock" from Farmhand Horsemen;
	NPCSexAftermath Player receives "PussyFuck" from Farmhand Horsemen;
	NPCSexAftermath Player receives "OralCock" from Nelson;
	NPCSexAftermath Player receives "PussyFuck" from Nelson;
	NPCSexAftermath Player receives "OralCock" from Karel;
	NPCSexAftermath Player receives "PussyFuck" from Karel;
	NPCSexAftermath Player receives "OralCock" from Isaac;
	NPCSexAftermath Player receives "PussyFuck" from Isaac;
	say "     'That was amazing! I think you may just be our new favorite visitor in the barracks,' he says and gives you a playful swat on the ass, then holds you upright under the spray of clean water and washes you. His hands do a thorough job of soaping you up, half the time holding you up as he does so too, as your knees are still weak. He clearly appreciates touching you and rubbing your naked form, though even with a horny stud like him, there are limits to sexual stamina, so things stay at cleaning and washing off. Helping you sit down on a dressing bench afterwards, he leaves for a short while before returning with a large towel and the small pile off your clothes and gear, setting it all down beside you. The horseman keeps you company as you dress, joining you in a short conversation until you eventually stumble back into the main barracks room, welcomed by quite a few friendly smiles.";
	infect "Horseman";
	infect "Zebra Stallion";
	infect "Horseman";
	PlayerDrink 30;
	PlayerEat 30;
	now PlayerFucked of Nelson is true;

to say Farmhand HorsemenSex4: [Shower Fuck]
	say "     When you say you'd love to have some one on one time with a strapping horseman, [if Dexterity of Farmhand Horsemen is 11]Carlos[else]the Clydesdale[end if] chuckles, making his bull-piercing bounce, and says, 'Alone time is hard to come by here but I'm sure we can work something out.' He lifts his head and shouts, 'I'm going to give our friend here a tour of the showers. A [italic type]private[roman type] tour per request.' You blush at the announcement, your cheeks burning even hotter as the Clydesdale's words are first met with cheers then groans as the other horsemen realize they're not wanted. He turns his face back to you and says, 'That's about the best we can hope for. [if Dexterity of Farmhand Horsemen is 11]I'd like to welcome our treasured patron back!' [else]The name's Carlos and I'll be your guide!' [end if]'Now, follow me.' He turns and strides toward a bunk-bed you assume is his as he grabs some towels hanging from the end. He hands one to you and starts stripping, 'You can change in the showers if you'd prefer but I'd rather not get my clothes wet.' You decide against stripping in public and once Carlos kicks off his jeans, you follow him to the showers, eyes glued to his muscular buttocks.";
	say "     When you enter the showers, Carlos points to a bench for you to leave your things so they don't get wet. As you begin to strip in this slightly more private area, Carlos looks you up and down, making some appreciative noises as your clothes fall away. As you finish, he says, [if Dexterity of Farmhand Horsemen is 10]'It's good to put a body to a face. And to turn the tables a bit.' [else if Dexterity of Farmhand Horsemen is 11]'Always a pleasure to see you in your full glory.' [else]'Definitely worth the wait!' [end if]Carlos gently shoves you deeper into the showers towards the closest shower head. He turns the handles and water blasts out, making you yelp as the cold water soaks you. It soon warms up and he joins you under the shower head, crowding you against the wall. 'Now, let's get to the hands-on portion of the tour,' he says as he leans in for a kiss.";
	WaitLineBreak;
	if Player is female: [pussy fuck]
		say "     You open your mouth to receive Carlos['] tongue and he wraps his strong arms around you, holding you close. As the water cascades down your bodies, you feel his massive rod grinding between you, pulsing with need. He pulls away suddenly and turns you around, directing you to brace yourself against the tiled wall. As you lean into position, Carlos grabs your hips and begins to thrust his cock between your thighs, spreading your legs and making you gasp slightly as he rubs against your cleft. After a minute or so of thigh-fucking, your mouth dry and your pussy dripping, you feel his left hand leave your side and as you look back, you see him holding his horsecock, lining it up with your pussy. He enters you slowly and you hear him hiss as your tight folds grip him snugly. You let out a grunt as his medial ring stretches you even more and Carlos pauses, letting you get used to being filled. As your breathing normalizes, he pushes further into you until he's all inside. Carlos pauses again, letting you get to used being stuffed to the brim.";
		say "     You tell Carlos you're ready now and he squeezes your hips as he slowly withdraws. Gasping as first his ring and then his head pop out of your vagina, you start to moan as Carlos slowly drives back in. Carlos fucks you with a steady pace, punctuated by light teasing of your [if Player is male]cock[else]chest[end if] as his left hand explores your body. Soon, Carlos['] breathing becomes more labored, his groping more insistent and you feel his hot breath on your ear as he leans in, 'I hope you're ready to take my foals!' With that he lets out a grunting neigh and you feel his horsecock swell inside of you as his cum blasts into your inner depths. As your belly starts to bulge with his seed, Carlos caresses your front, feeling your newly formed curve. 'Nothing better than evidence of a job well done,' he says before guiding your face back to meet his for a kiss. You lose yourself in the warm feelings that suffuse your body; the water raining down, the intimate kiss with Carlos, his surprisingly light touches as he rubs your rounded stomach, and the pulses from his slowly softening dick still inside you.";
		WaitLineBreak;
		say "     All good things must come to an end however and as his cock falls out of your pussy, accompanied by a rush of cum, the kiss ends too. Carlos helps you wash up, once more with a gentleness you find surprising from his large, calloused hands. As you're toweling off, Carlos says, 'This concludes our time together, we hope you enjoyed your time with Carlos['] Shower Tours and hope to see you again soon!' You laugh and thank him for his professional service. Dressed again, you follow Carlos out, once more taking in the view, one last distraction before getting back to the struggle to survive in this new world.";
		infect "Horseman";
		NPCSexAftermath Player receives "PussyFuck" from Farmhand Horsemen;
		now Dexterity of Farmhand Horsemen is 11; [you now know his name]
	else: [ass fuck]
		say "     You open your mouth to receive Carlos['] tongue and he wraps his strong arms around you, holding you close. As the water cascades down your bodies, you feel his massive rod grinding between you, pulsing with need. He pulls away suddenly and turns you around, directing you to brace yourself against the tiled wall. As you lean into position, Carlos grabs your hips and begins to thrust his cock between your thighs, spreading your legs and making you gasp slightly as he rubs against your [if Player is male]own cock[else]sensitive smoothness[end if]. After a minute or so of thigh-fucking, your mouth dry and your [if Player is male]dick dripping[else]body tingling[end if], you feel his left hand leave your side and as you look back, you see him holding his horsecock, lining it up with your asshole. He spends some time rubbing his head over your entrance, slicking it with his precum before he enters you slowly and you hear him hiss as your tight hole grips him snugly. You let out a grunt as his medial ring stretches you even more and Carlos pauses, letting you get used to being filled. As your breathing normalizes, he pushes further into you until he's all inside. Carlos pauses again, letting you get to used being stuffed to the brim.";
		say "     You tell Carlos you're ready now and he squeezes your hips as he slowly withdraws. Gasping as first his ring and then his head pop out of your ass, you start to moan as Carlos slowly drives back in. Carlos fucks you with a steady pace, punctuated by light teasing of your [if Player is male]cock[else]flat front[end if] as his left hand explores your body. Soon, Carlos['] breathing becomes more labored, his groping more insistent and you feel his hot breath on your ear as he leans in, 'I hope you're ready to take my foals!' With that he lets out a grunting neigh and you feel his horsecock swell inside of you as his cum blasts into your inner depths. As your belly starts to bulge with his seed, Carlos caresses your front, feeling your newly formed curve. 'Nothing better than evidence of a job well done,' he says before guiding your face back to meet his for a kiss. You lose yourself in the warm feelings that suffuse your body; the water raining down, the intimate kiss with Carlos, his surprisingly light touches as he rubs your rounded stomach, and the pulses from his slowly softening dick still inside you.";
		WaitLineBreak;
		say "     All good things must come to an end however and as his cock falls out of your butt, accompanied by a rush of cum, the kiss ends too. Carlos helps you wash up, once more with a gentleness you find surprising from his large, calloused hands. As you're toweling off, Carlos says, 'This concludes our time together, we hope you enjoyed your time with Carlos['] Shower Tours and hope to see you again soon!' You laugh and thank him for his professional service. Dressed again, you follow Carlos out, once more taking in the view, one last distraction before getting back to the struggle to survive in this new world.";
		infect "Horseman";
		NPCSexAftermath Player receives "AssFuck" from Farmhand Horsemen;
		now Dexterity of Farmhand Horsemen is 11; [you now know his name]

to say Farmhand HorsemenSex5: [Twin Double-Team Fuck]
	say "     A";
	NPCSexAftermath Player receives "AssFuck" from Karel;
	NPCSexAftermath Player receives "AssFuck" from Isaac;

Section 4 - Events

instead of going north from McDermott Farm Entrance while (Dexterity of Farmhand Horsemen is 0 and a random chance of 1 in 3 succeeds):
	move player to Central Farm Square;
	say "[Farm Shower Peek]";

instead of going west from Milking Shed Main Room while (Dexterity of Farmhand Horsemen is 0 and a random chance of 1 in 3 succeeds):
	move player to Central Farm Square;
	say "[Farm Shower Peek]";

instead of going southwest from Farm Pathway while (Dexterity of Farmhand Horsemen is 0 and a random chance of 1 in 3 succeeds):
	move player to Central Farm Square;
	say "[Farm Shower Peek]";

instead of going southeast from Farmhouse Main Room while (Dexterity of Farmhand Horsemen is 0 and a random chance of 1 in 3 succeeds):
	move player to Central Farm Square;
	say "[Farm Shower Peek]";

to say Farm Shower Peek:
	say "     As you come onto the open square between the farm buildings, you notice an open window a bit along the side of the worker barracks. Something about it wakes your curiosity and the thought that you might stroll over and take a casual look inside almost appears on its own in your head.";
	say "     [bold type]Do you want to follow the impulse to check it out?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yeah, let's have a look!";
	say "     ([link]N[as]n[end link]) - Nah, you don't want to be called a peeping tom.";
	if Player consents:
		LineBreak;
		say "     Walking over in a casual unhurried tempo, you step up to the open window and glance inside. As it turns out, this is a bathroom window - and one leading to a big, communal bathroom. Just opposite your window, a whole row of shower cabins can be seen - one of which is just being occupied by a horseman. The bare-ass naked stallion hangs his towel on a hook next to the cabin, then turns on the water and steps under the warm spray. He clearly enjoys the water running down over his muscular body and washing away the sweat and grime of a long work day. Soon, the wet stallion starts to apply shampoo to the chestnut-brown coat all over his body and the mane of longer hair on his head and down between his shoulder-blades. You notice the horseman takes extra care around his nose, gently cleaning his gold ring piercing. You can't help but appreciate the show as the hunky farmhand soaps himself up, your gaze drawn to his fit body.";
		say "     [bold type]Do you keep watching?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Sure! You wanna see more hot horseman action!";
		say "     ([link]N[as]n[end link]) - Nah, that's enough now.";
		if Player consents:
			LineBreak;
			say "     Stepping up even closer to the window, you feast your eyes on the stallion as he rubs and massages to shower gel into every last bit of his body, including those strong, long legs - going down all the way to his hooves so he has to bend over to reach all the way. Definitely a sexy ass on this horsey, that's for sure. Eventually, the farmhand steps fully under the spray of water, letting it wash over his lean body. Small, soapy bubbles are carried along with it, sliding down over his muscular back, firm buttocks and long, toned legs. It is quite a sight to behold... and totally draws you into its spell. So much so that when the farm worker finally stops the water and turns around to grab his towel, you're still staring in through the window - getting an even more interesting full-frontal view of a very well hung male.";
			say "     Noticing you looking in the window from the corner of his eye makes a faint smile appear on the anthro stallion's muzzle - who then pointedly doesn't look your way and proceeds to slowly rub himself dry, still standing in a wide-legged stance that leaves absolutely nothing to the imagination. Once he is done dabbing the last little gleaming drop of water from his toned body, he hangs the towel over a bar to dry, then lowers a hand to his crotch. Strong fingers close around the very impressive piece of horseflesh dangling between his legs, holding it up for you to get a good look - and then the horseman raises his head to focus his gaze right at you. Chuckling, he winks at you and then walks away through a nearby archway, no doubt leading to their lockerroom. The guy is totally unconcerned about his nakedness - or your eyes taking in every little bit of him - but then... with that package, he doesn't have to be after all.";
			now Dexterity of Farmhand Horsemen is 10; [watched and was seen]
		else:
			LineBreak;
			say "     Ducking out of sight, you can't help but smile at the eye-candy strolling around on this farm. Still, best to get back to more important matters now.";
			now Dexterity of Farmhand Horsemen is 1; [just watched]
	else:
		LineBreak;
		say "     You put the thought out of your head and turn your attention to more important things.";
		now Dexterity of Farmhand Horsemen is 99; [refused to watch]

instead of going north from McDermott Farm Entrance while ((daytimer is day) and (Dexterity of Farmhand Horsemen is 11) and (a random chance of 1 in 10 succeeds)):
	move player to Central Farm Square;
	say "     As you approach the front gate to enter the farm, you hear a shout from the left. As you look along the fence toward the source of the shout, you see Carlos waving at you, a big grin on his face. He trots over, leaving his partner to continue cutting back the nanite-infused grass alone for now. 'Hey there babe, how's it hanging? I'm working now but I wouldn't mind seeing you back at the barracks in a little while for a little freshening up.' He gives you a wink and a wave before sauntering back towards his partner to continue keeping the grass at bay.";

instead of going northeast from Central Farm Square while ((daytimer is day) and (FriesianRelationship is 2) and (a random chance of 1 in 10 succeeds)):
	move player to Farm Pathway;
	project Figure of Karel&Isaac_clothed_icon;
	say "     Walking up the pathway towards the meadow, you see two familiar figures walking towards you, leading a small herd of seemingly normal sheep. It's the Friesian twins, Karel and Isaac, who greet you with a wave and a nod. Karel says, 'Hello there pardner, how's life in the big city?' You tell the twins about your more recent travels and they give you some well placed chuckles and groans of sympathy in return (as well as some loud baa-ing from the sheep). 'Sadly, we have to get these sheep milked before Duke comes looking for us, otherwise I could listen to your stories all day. You get up to some interesting things out there, that's for sure!' With a final wave, you pass the twins and their wooly flock as they head to the milking shed.";

instead of going west from Central Farm Square while ((daytimer is night) and (a random chance of 1 in 4 succeeds)):
	move player to McDermott Barn;
	say "     Walking up to the barn, you see a light flickering through the open window. You hope the light source is attended for all sorts of reasons and you are rewarded (and relieved) to find there's no fire hazard here. Just a startled zebra man hunched over attempting to suck his own cock, which falls away from his muzzle as he gapes at you. He looks a little sheepish as he says, 'I didn't expect anyone to come out here and this isn't the sort of thing you do in the barracks.' He snorts and adds, 'Well, not without expecting a line to form, I guess.' He looks at you for a moment and says, 'Would you mind helping me out? I've always wanted to do this and now that I'm so well-endowed, I thought it'd be easy but I can't quite get there on my own.'";
	say "     [bold type]Do you keep help the zebra man out?[roman type][line break]";
	say "     ([link]1[as]1[end link]) - Always willing to lend a hand!";
	say "     ([link]2[as]2[end link]) - I'd prefer to suck it myself.";
	say "     ([link]3[as]3[end link]) - You're on your own buddy.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to help the zebra man, [link]2[end link] to suck him instead or [link]3[end link] to leave him hanging.";
	if calcnumber is 1:
		LineBreak;
		say "     You walk over to the zebra man who gets back into position as you kneel next to him, placing your hands on his broad shoulders. You push lightly as he bends down towards his large black dick and you hold back a giggle as his tongue laps at his flared head and misses. The zebra grunts and gives you some side-eye before continuing his quest. You continue to push him towards his pole and soon he's licking the head, lipping it with his horsey lips, and- 'MMMMmmph!' the zebra makes a muffled noise of triumph as his cockhead pops into his mouth. You continue to brace his shoulders as he bobs up and down, his tongue occasionally flicking out to reach further down his shaft. It's not long before his rod begins to pulse and he groans as his cheeks fill with his own cum. After a few swallows, he lets his dick fall out of his mouth and leans his head back into your embrace with a grin. 'That was fantastic! I can't thank you enough. I'm pretty beat now but maybe I'll see you around the barracks.' He sits forward then staggers upright, giving you a good view of his muscles and his butt as he stretches out some cramps. He pulls up his jeans from around his ankles, belts them securely, and gives you a little salute before strolling away.";
	else if calcnumber is 2:
		LineBreak;
		say "     'That's not really what I wanted, but I can't say no to a free BJ.' The zebra unfurls himself with a groan, stretching a bit to relieve some cramps before placing his arms behind his head and leaning against the wall. 'It's all you now,' he says with a grin as he kicks off his jeans fully, clearly not too put out about the change of plans. You kneel between the zebra's legs and grip the tower of horseflesh (zebraflesh?) with both hands. He bites his lip as you nuzzle the head before taking it into your mouth, drawing a hiss as you do. Saliva runs down his dick as you let his flared cockhead keep your mouth agape. You pump his dick until it's well lubricated with your spit and his precum and then begin bobbing up and down, going a little further down each time.";
		say "     The zebra can't resist the talented combination of your hands and mouth and you feel his head pop into your throat as he lets out a whinny. This is quickly followed by your throat filling even more as his cock swells and pumps cum directly into your stomach. You wait until his rod frees you and falls from your lips, surprisingly little cum following its descent. The zebra lies panting as you pull yourself to your feet and as you turn to leave he says, 'Any time you want to talk me out of sucking my own dick, let me know.' He gives you a little wave as you walk away.";
		NPCSexAftermath Player receives "OralCock" from Nelson;
		now PlayerFucked of Nelson is true;
	else:
		LineBreak;
		say "     You shake your head at the zebra and walk away.";

instead of going southwest from Central Farm Square while ((daytimer is day) and (a random chance of 1 in 2 succeeds)):
	move player to Worker Barracks;
	say "     As you walk into the barracks, you notice ";
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			say "a group of four horsemen playing cards. You walk up to the game to take a closer look and [one of]the zebra[or]one of the Friesians[or]a Clydesdale[at random] says, 'Hello, pardner! We'd invite ya to play but we're full up for Hearts. Maybe next time.'";
		-- 2:
			say "a naked horseman casually strolling towards the communal showers. It's [if dexterity of Farmhand Horsemen is 11]Carlos, his[else]the Clydesdale with the bull ring piercing, the[end if] heavy gold ring failing to distract you from the main event. Each step he takes sends his cock swinging from side to side and even soft, it nearly reaches his knees. As he draws level with you, the Clydesdale grins at you and says, [if dexterity of Farmhand Horsemen is 11]'Can't get enough, eh?' [else if dexterity of Farmhand Horsemen is 10]'Hey there stranger, fancy meeting you here.' [else]'My eyes are blue, if you were wondering.' [end if]He chuckles as you blush, then walks out of sight into the showers.";
		-- 3:
			say "the zebra lounging on top of the bunk closest to you. You walk up to say hello and notice he's reading a book. Though the cover has a herd of zebras, the title puts you more in mind of a medical textbook. The zebra looks down at you and says, 'I thought this was gonna be about zebras and I'd learn something about my new self. But heck if obscure diseases aren't a fascinating subject!'";
		-- 4:
			say "[Twins_LogCompetition]";
		-- 5:
			say "[Twins_LogCompetition]";

to say Twins_LogCompetition:
	say "a wall of horseflesh at the back of the barracks. You can hear cheering and grunting and you make your way quickly towards the commotion, excited at what you might find. You're not sure if you're disappointed when you see that the farmhands have gathered around the Friesian twins to see them... lifting logs. Each of the jet-black hunks has a log in front of them with leather straps wrapped around each end. They're constantly lifting each log by the straps in a modified deadlift then placing it down. It appears, judging by the crowd calling out consecutive numbers, that they're having a contest. The one on the left, sweat running from his neck down his massive pecs, taunts his brother between sets, 'You'd win this if it was a squat contest, but your ass won't help you [italic type]now[roman type].' His emphasis on the last word draw some hoots from the crowd and cause his brother to shake his head, replying, 'You've got a big mouth that's gonna be put to better use real soon.'";
	say "     Finally, as the count reaches the triple digits, one of the Friesians falters. The brother on the left tries to lift the log, his muscles bulging, well defined by his sweat-slick fur but he just can't do it anymore. He sets the log down with a thud and lays on the ground panting heavily. The crowd, you included, holds its breath as the other brother begins his lift. He makes a big show of it; rubbing his hands on his jeans, pulling his lush ebony mane back to one side, stretching his arms in preparation. Finally, he sets up, grabs the straps, and lifts the log all the way up and lets it slam back down. The crowd goes wild and you get caught up in the hooting and hollering. The victorious twin gives his brother a hand up and they give each other a bro-hug before heading to the showers.";
	say "     [bold type]What do you want to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Make a break for the showers as the crowd disperses.";
	say "     ([link]N[as]n[end link]) - Head for the door, enough time of horsing around!";
	if Player consents:
		LineBreak;
		project Figure of Karel&Isaac_naked_icon;
		say "     While the other farmhands start cleaning up the back of the barracks, you decide you want a more hands-on experience with the twins. You try to make your way as quickly as you can to the showers but are temporarily blocked as the farmhands move the unwieldy logs outside. By the time you reach the showers, there's a sizable cloud of steam emanating from the far end of the room. As you strip off your gear and outer wear, you hear some interesting noises; it almost sounds like kissing. When you approach the source of the steam and the twins come into view once more, you're rewarded with an equally steamy sight. The two midnight black horsemen are lip locked as their big hands explore each other's muscled forms. Lower down, the brothers are grinding their generous horse-cocks against each other. As you watch, their cocks continue to fill out and harden with occasional groans breaking their make-out. Before you can decide what to do, the Friesians break their kiss and turn to look at you. ";
		if FriesianRelationship is 0: [never interacted before]
			say "'There's only two things you need to know,' ";
		else if FriesianRelationship is 1: [player did things with them before (orgy most likely), but never was introduced]
			say "'Hey there - nice to see you again. We didn't have time to tell you before, but...' ";
		else: [player was told the names before]
			say "'Hey there - nice to see you again. I know we've had some fun before, but since people never can tell us apart...' ";
		say "says the one on the left with a grin. 'I'm Karel and he's Isaac,' the muscular horseman goes on to explain, pointing at his twin brother. And with that, they drag you under the shower head, then move to flank you.";
		if FriesianRelationship < 2: [variable adjustment for those who do not know their names]
			now FriesianRelationship is 2; [player was told their names]
		WaitLineBreak;
		say "     Karel has positioned himself behind you and begins to thrust against your ass, smushing your face into Isaac's broad chest. He leans in close, his lips brushing your ear and growls, 'I was going to have Isaac suck me off for losing but I'm sure he won't mind getting blown instead. And I'll get an even better prize; [if Player is female]your cunt[else]your ass[end if].' Isaac grins, clearly pleased that his fortunes have changed, and pushes your head down. 'Enough talking, Karel, let's take our fan for a spin.' Isaac takes his big, rough hands and places them on either side of your head, drawing in you in for a sloppy kiss before taking a step back and pushing your head in line with his large pole. You lick at the ridged head as it throbs in your face, already slick from the shower. Isaac shows surprising restraint, letting you work his head into your mouth at your own pace as his brother continues to hotdog his dick between your ass cheeks. However, when you reach up to start stroking Isaac's horse-cock, his grip on your head shifts and he steps forward, pushing himself in as he does so.";
		say "     Surprised, you try to back up but Karel stands firm and you hear him say, 'Eager are we? Don't worry, I'll give you the VIP treatment.' ";
		if Player is female: [pussy fuck]
			say "Karel stops his constant rubbing and steps back for a moment. You feel his head nudge against your moist lips as he finds your slit before he too slides right into you. You move your hands to Isaac's ass, more to support yourself than for anything playful. Your body is awash with sensations; the water running down your back, Isaac's cock stretching your throat, Karel's rod hammering into your pussy, their calloused hands holding you in place. The fucking only gets more intense as the twins slowly push themselves deeper into you until they hilt you. Their pace changes from the slow, long strokes that had opened you up to quick, short pulses where their crotches barely break contact with your body. You hear them kissing above you, unable to see anything but Isaac's abs and the base of his dick.";
			WaitLineBreak;
			say "     Suddenly, you get slammed at both ends and feel both horse-cocks throb inside you. You hear, 'Ah yeah, drink my cum you dirty slut,' and, 'Gonna breed me a fine colt in that cunt,' as the brothers ride out their orgasms, your womb and stomach filling with their seed. They hold you there as their cocks soften, the sounds of kissing audible once more. Isaac's softening cock slips out of you first, a few stray strings of cum drooling from your lips. He steps back and you hear Karel say, 'Now brother, don't think you got off scot-free. You have to help clean up.' Isaac groans but he doesn't offer any real resistance as he makes his way behind you. You turn around, curious to see what will happen.";
			NPCSexAftermath Player receives "PussyFuck" from Karel;
			say "     You feel what happens next as Karel steps back, his soft dick finally sliding out of you. Your pussy is empty for only seconds before something replaces Karel's cock, something equally warm but much softer. Isaac reaches around to your clit while he eats you out, gently rubbing around it. After being spit-roasted by the two equine studs, this personal attention drives you right over the edge and Isaac eagerly slurps down your femcum as it mixes with his brother's semen. Isaac continues to delve your depths for any last traces of cum before he withdraws. Thinking the party's over, you stand up and stretch before turning around to thank the brothers for their excellent hospitality. Isaac is sucking Karel's dick, gently, as he continues his cleaning. 'Sorry Isaac, but I just can't get over how hot you look with your muzzle on my cock.' Karel turns to you as his brother dutifully bobs on his rod, 'Thanks for joining us. A sexy gal like you is welcome back anytime.' Knowing when you're dismissed, you rinse yourself off and get dressed to head out.";
			NPCSexAftermath Player receives "PussyFuck" from Isaac;
		else: [ass fuck]
			say "You feel Karel step away for a moment, warm water now running down your backside unimpeded. His return is marked by a slurp and then a large, lubed finger brushing against your pucker. Karel slowly pumps his finger in and out of you a few times before adding a second. As you're getting your hole stretched to accommodate Karel's pole, Isaac continues his measured fucking into your mouth, getting your lips a little closer to his groin each time. You move your hands to Isaac's ass, more to support yourself than for anything playful. Just in time too, as Karel decides your ass is primed. He rips his fingers out of your hole and you hear another slurp as more lube is applied... somewhere. 'Here it comes, the moment you've been waiting for,' Karel says with a chuckle. His head presses against your pucker for a second before popping in. Your body is awash with sensations; the water running down your back, Isaac's cock stretching your throat, Karel's rod hammering into your ass, their calloused hands holding you in place.";
			say "     The fucking only gets more intense as the twins slowly push themselves deeper into you until they hilt you. Their pace changes from the slow, long strokes that had opened you up to quick, short pulses where their crotches barely break contact with your body. You hear them kissing above you, unable to see anything but Isaac's abs and the base of his dick. Suddenly, you get slammed at both ends and feel both horse-cocks throb inside you. You hear, 'Ah yeah, drink my cum you dirty slut,' and, 'Gonna breed me a fine colt in that ass' as the brothers ride out their orgasms, your hole and stomach filling with their seed. They hold you there as their cocks soften, the sounds of kissing audible once more. Isaac falls out of you first, a few stray strings of cum drooling from your lips. He steps back and you hear Karel say, 'Now brother, don't think you got off scot-free. You have to help clean up.' Isaac groans, but he doesn't offer any real resistance as he makes his way behind you. You turn around, curious to see what will happen.";
			NPCSexAftermath Player receives "AssFuck" from Karel;
			WaitLineBreak;
			say "     You feel what happens next as Karel steps back, his soft dick finally sliding out of you. Your ass is empty for only seconds before something replaces Karel's cock, something equally warm but much softer. [if Player is male]Isaac reaches around to your cock while he eats you out, gently jacking you off[else]Isaac rubs your smooth front with no real plan or focus, but his large hands cover a lot of ground[end if]. After being spit-roasted by the two equine studs, this personal attention drives you right over the edge and Isaac eagerly slurps his brother's cum as [if Cock Count of Player > 1]you cry out, spurting your seed onto the shower floor[else]pleasure jolts through your body in waves[end if]. Isaac continues to delve your depths for any last traces of cum before he withdraws.";
			NPCSexAftermath Player receives "AssFuck" from Isaac;
			say "     Thinking the party's over, you stand up and stretch before turning around to thank the brothers for their excellent hospitality. You're surprised to see Isaac sucking Karel's dick, gently, as he continues his cleaning. 'Sorry Isaac, but I just can't get over how hot you look with your muzzle on my cock.' Karel turns to you as his brother dutifully bobs on his brother's rod, 'Thanks for joining us. You're welcome back anytime, but keep this on the down low, right?' Knowing when you're dismissed, you give them a nod in confirmation, then rinse yourself off and get dressed to head out.";
	else:
		LineBreak;
		say "     You shake your head to clear your head. That was an entertaining break from reality, but now it's back to the scavenging life. You spare one last glance for the muscled backs of the twins as they walk to the showers, stripping as they go.";

Farmhands ends here.
