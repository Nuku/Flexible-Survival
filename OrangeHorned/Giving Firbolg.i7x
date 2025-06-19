Version 1 of Giving Firbolg by OrangeHorned begins here.

[ HP of Giving Firbolg    ]
[ 0 -  Not Met            ]
[ 1 -  Met                ]

Section 1 - Giving

Table of GameCharacterIDs (continued)
object	name
GivingFirbolg	"GivingFirbolg"
GivingFirbolg	"Giving"

GivingFirbolg is a man.
Printed Name of GivingFirbolg is "Giving".
understand "Giving" as GivingFirbolg.
ScaleValue of GivingFirbolg is 5.
Body Weight of GivingFirbolg is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of GivingFirbolg is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of GivingFirbolg is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of GivingFirbolg is 9. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of GivingFirbolg is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of GivingFirbolg is 5. [length in inches]
Breast Size of GivingFirbolg is 5. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of GivingFirbolg is 2. [count of nipples]
Asshole Depth of GivingFirbolg is 9. [inches deep for anal fucking]
Asshole Tightness of GivingFirbolg is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of GivingFirbolg is 1. [number of cocks]
Cock Girth of GivingFirbolg is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of GivingFirbolg is 5. [length in inches]
Ball Count of GivingFirbolg is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of GivingFirbolg is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of GivingFirbolg is 1. [number of cunts]
Cunt Depth of GivingFirbolg is 9. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of GivingFirbolg is 4. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of GivingFirbolg is 5. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of GivingFirbolg is false.
PlayerRomanced of GivingFirbolg is false.
PlayerFriended of GivingFirbolg is false.
PlayerControlled of GivingFirbolg is false.
PlayerFucked of GivingFirbolg is false.
OralVirgin of GivingFirbolg is false.
Virgin of GivingFirbolg is false.
AnalVirgin of GivingFirbolg is false.
PenileVirgin of GivingFirbolg is false.
SexuallyExperienced of GivingFirbolg is false.
TwistedCapacity of GivingFirbolg is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of GivingFirbolg is true. [steriles can't knock people up]
MainInfection of GivingFirbolg is "".
Description of GivingFirbolg is "[Givingdesc]".
Conversation of GivingFirbolg is { "" }.

the scent of the GivingFirbolg is "     Giving smells like he's almost drenched in what you could describe as some sort of Irish soap. Very much herbal and sea-salty in all the right ways. It might be from all the sweat caked on his body."

to say Givingdesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of GivingFirbolg] <- DEBUG[line break]";
	say "     What stands in front of you is a hyper masculine giant-kin that easily towers over you around 10 feet, wearing nothing but a baseball cap and a stretched out plastic fishing jumpsuit with dirty boots that have seen brighter days. Their figure barely contained in the plastic as the straps on his shoulders on to dear life to keep his massive man-pecs from jiggling all over the place, along with thick thighs that bulge at their plastic cage. His rugged freckled face looks upon you, seeing your curiosity and flicking his tied up messy hair. He gives a small snort with his cow nose as he gives you an innocent smile.";

Instead of conversing the GivingFirbolg:
	if HP of GivingFirbolg is 1:
		say "[GivingFirbolgTalkMenu]";

to say GivingFirbolgTalkMenu:
	say "[line break]";
	say "     'Im a open book, what do you need?' Giving seems to be in a good mood for talking";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Backstory";
	now sortorder entry is 1;
	now description entry is "You wanted to ask him what in general he did before the apocalypse, the more recent history as to keep things very brief. Speaking out in the open is really not the best look to not getting swooped at by some flying feral";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Short Stories";
	now sortorder entry is 2;
	now description entry is "Have Giving tell you a little about his time in the city";
	[]
	if HP of GivingFirbolg is 2:
		choose a blank row in table of fucking options;
		now title entry is "About Knott";
		now sortorder entry is 3;
		now description entry is "Why does he still seem pretty apprehensive";
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
				if (nam is "Backstory"):
					say "[GivingFirbolgTalk1]";
				if (nam is "Short Stories"):
					say "[GivingFirbolgTalk2]";
				if (nam is "About Knott"):
					say "[GivingFirbolgTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, 'Ah, okay, totally fine' he seems a bit disappointed but nods in understanding.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GivingFirbolgTalk1:
	say "     'Well, as you know, I'm Giving, had a former name but everyone just sorta called me Cappy, A Skipper for a Sea Scout Group near the port. Lotta Family members who were into sea related jobs so it kinda was a given, Apocalypse happened, I single handedly got my troop to a checkpoint to get them to safety, but I couldn't in good conscience leave survivors alone in this place, somehow didn't end up infected for a long time.' The Firbolg flexes his bicep eagerly to show off the gun show, the scars that surround its edges showing a history of rough rides and close calls with not-too-kind strangers. 'Was just near some river in the forest trying to filter the water to drink when I saw this little guy-- which I now know are called Baegs- just all alone, honestly when he confided in me about how much the others were struggling to get by, I felt this... urge you know.'";
	say "     You don't know what he means. 'So I asked him to fuck me, call it an impulse, but its hard to explain, when I turned into this I knew I made the right choice.' There is a slight pause as Giving sighs out 'It was... really just his sweet voice and hearing their backstory that made me cave into this infection. Alongside the possibility I could become a father, although 'Daddy' is all our Fathers technically, it doesn't mean I can't take care of the more less experienced Firbolgs when their just getting over their lusts'";

to say GivingFirbolgTalk2:
	if a random number between 1 and 5 is:
		-- 1: [Short Story 1]
			say "     'Part of me feels bad for the military, you know? When you make a lot of trips around the city, you get to notice the same faces slowly giving into insanity and eventually joining the deviants. I try to help but again, kinda hard to say you mean no harm when you're built like a sexual tank. Most recent one I could remember for them was how I was out on the town to do some acts of Cin for Sangre..-- That means basically just gift getting but more meaningful- anyways I was just in some pop up store next door when I realized the sexual moans and screams were actually right next door, I went to see that some troop was just trying to fight off what looked to be some sex horde - two of their guys already getting their cheeks taken as the rest of them were pinned between some car debris and the horny crowd. I had to drop everything to basically hurl some broken cars to buy them some time, the fuckers were about to attack me until they saw me ripping the hyenas and cat-people off their guys. They still ran away, I think they were shaken up badly though, part of me wonders if any of them are alright, last I saw I think one of them joined the 'other' ranks.'";
		-- 2: [Short Story 2]
			say "     'If you see any green men steer clear of them, I hate how my city scavenging has to always be interrupted when I come across some strays of them plowing some poor people just right out on the streets. A guy can't just grab some toilet paper for the commune without suddenly hearing someone gagging followed by seeing some snow leopard getting spit-roasted by some big fellas. The Worst part is that they really don't care if I'm twice their size, all I wanna do is just step into a room and just intimidate them, but all they see is [']A big breeder with a fat ass['], that two versus one was NOT in their favor. Oh right, the snow leopard guy I think was like half-orc by then, to be honest when you're helping ferals you gotta just keep distance, he looked ready to find his next fuck.'";
		-- 3: [Short Story 3]
			say "     'I think on a wholesome note, one of my adventures actually was helping a human get to the commune. A guy was stuck high in a tree and was offering me stuff but I just told him I didn't need anything to save him. He thanked me profusely for giving him some food and water, guided him here and he's been the happiest face around the snowy forest.";
		-- 4: [Short Story 4]
			say "     'Well... uh... I was near the docks and... I saw this poor puppy trying to lick some white stuff, the poor thing was already transforming. I sometimes wonder if I did the right thing, holding that thing in my arms as I tried to feed it something. I did it for a few days, wondering if it would fight the nanites, die or worse... All I know is one day, it wasn't in the place I found it...' Giving looks like he's about to cry before rubbing his eyes. 'You can't save everything, all you can do is your best'";
		-- 5: [Short Story 5]
			say "     Let's see... the commune wanted me to get some sewing kits, since I'm the one who's mostly out and about, I usually know where to get some things. Heading off to the High Rises, I was about to check out one shop I've seen when I passed by only to see a bunch of foot soldiers scramble out of there. Luckily apparently at least some of the troops know that some blue skinned figure sometimes helps them out because they could have pumped me with lead, apparently the fire exit was a no-go and they were just trapped, only thing I asked them for is just confirmation if there's any sewing supplies left inside-- which luckily was a yes";

to say GivingFirbolgTalk3:
	say "     'Oh Knott? He's a good guy but well, he's kind of still dealing with the infection impulses as well as the fact that he is scared to show himself to the survivor group he was apart of' Giving scratches the back of his head 'Oh tell you what, I'm in trouble due to transforming him without asking Daddy, so maybe you could grab his old things and bring it to him?' You ask him what could he gather, 'Oh I'm not sure, you gotta ask him yourself, I didn't want to pry so I know the bare minimum.'";

Section 2 - Sex

the fuckscene of GivingFirbolg is "[sexwithGiving]".

to say sexwithGiving:
	if Player is Male:
		say "[GivingSexMenu]";
	else:
		say "Insert line about it being male exclusive.";

to say GivingSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is Male:
		choose a blank row in table of fucking options;
		now title entry is "Firbolg Breeding";
		now sortorder entry is 1;
		now description entry is "Firbolg Breeding Description";
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
				if (nam is "Firbolg Breeding"):
					say "[GivingFirbolgSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the firbolg, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GivingFirbolgSex1: [Firbolg Breeding] [Requires Cock, need something to stop players from fucking them without cock, Firbolg pregancy and infection coming soon]
	say "     You begin to push yourself into Giving's giant body, rubbing your [CockName of Player] penis into his thigh, telling him that you've noticed how pent up he is all the time. The bovine looks in shock at your sudden depravity. 'Uh, well...' With a fearful snort, he grabs onto his crotch in anticipation. Remembering how hard Knott fucked him, you know that cunt of his must be so hard to please, let alone when he's out all the time far from the cock that helps him satiate the nanites' impulse. 'If I have to admit...' With another long pause, he clicks at his straps letting that perfect fertile mancunt out to the world, 'Watching all these people fucking like animals, really gets your brain wondering how good it really is.' His fat clit-cock throbbed, practically drooling for what it already knew was coming'";
	say "     Both of you retreat to a nearby forest clearing, the blue-skinned hunk leaning onto a tree with his legs spread out, 'Daddy doesn't like it when we fuck out of the commune, so just keep this between you and me' disrobing yourself, you crawl on fours to push your head between his gracious pillows, frotting your [cock size desc of player] on their flower canal. His chest heaves deeply, 'Fuck... it's just so good pushing them out though... watching my belly just swell with my little brothers['] seed, and now I'm letting an outsider knock me up.' Both of you share an intense kiss as you place your hand behind his, slurping his thick tongue down your throat, but it wasn't because you wanted to kiss him, it was to make sure he didn't let the whole forest hear you insert your [CockName of Player] cock deep into his tight walls. Inch by inch, you watch his eyes shoot up into the sky, your lubed cock getting yet more from his flowery clit-cock spraying slimy femcum on you, Giving's pleasure more than obvious, to the point you have to hold him back from smashing his cunt upwards into your groin. With a surprise, you fully hilt yourself and see him looking down needily for more.";
	WaitLineBreak;
	say "     With mouth-sharing breaths, the passionate fuck starts, the heavy smell of brown sugar emanates, the Firbolg sweating a storm just with a few strokes. His tongue is limp in your mouth as all thoughts beyond pleasing his needy pussy vanish, pulling away from his tongue nets you a look at his stuffed pecs rocking with your heavy thrusts, pushing your aroused cock to grow even harder deep within his hole. To his credit, your partner tries his best to keep his moans and whimpers quiet, but rotating your hips in any direction makes him scream silently. You think that was the point when you couldn't care less for the infection as your [bodydesc of Player] explore his bubbly muscles, watching each shake and jiggle like jelly in ecstasy.";
	say "     'F-fuck, o-oh fuck... fuuuuuuck' your groin is covered in Giving's love, he hasn't stopped orgasming since you first pushed in, no wonder these brutes are strong, if they were weak they would have been getting bred everyday by anyone from the city who knows they're just big guys with needy pussies. 'Please don't stop... Your Big Bro is so haard.. Let me take care of your fat cock~' He sighs lustfully, wrapping his arms around you as he nestles your head near his nipple. Some of the sweat around it gets in your mouth, making you climax immediately deep within his empty womb.";
	WaitLineBreak;
	say "     But... your balls aren't empty. Licking around the areola makes you far too energized to think about anything but how good Giving's heat tugs you in. The sweet firbolg begins matching your thrusts- pushing forward to let your cock paint every angle of his insides white. 'Oooooh you're a big [if Player is Male]guy [else if Player is Female]gal [else]one [end if]aren't you~?' You nod in approval, 'Yeah... yeah your definitely... Big... I won't tell if you won't... our little secret~...' Your second climax comes as a shock, your own moans muffled when he smooshes you to his pec again, 'Shhhh... can't let them know you're digging my guts out to stuff me with little ones' all his goading makes you fully ready to bloat him good.";
	say "     Every time you feel yourself get close, you latch onto the source of his creamy milk, sucking on the engorged pec to muffle your jittering. Giving sometimes looks down at you, grinning ear to ear before you knock him back into another intense climax that makes his entire body shiver. You lost count at some point, forgetting completely what your mission is. This situation makes you think about how after this, Giving is gonna have to walk around and explain who did this, maybe the other Firbolgs do the same to some ferals they like? A bunch of muscular behemoths who jam themselves onto the cock of anything with a pulse, making him swell with such taboo pretenses finally snaps you out enough to look at your handiwork.";
	WaitLineBreak;
	say "     His entire belly was distended with cum, your legs and the cold snow between you covered in slime. He tries to mumble a few words, but only manages to mouth them for a while. 'Such a naughty little one~... Big Brother's gonna have to seek you out for a womb filling, all this cum of yours feels sooooooo dang good.";
	say "     You lay into his warm body, arms wrapped again around him as both of you catch your breath. With a heavy heart, you eventually leave his embrace. Knowing for sure that his womb will catch and make you new sires.";
	NPCSexAftermath GivingFirbolg receives "PussyFuck" from Player;


Section 3 - Events


Giving Firbolg ends here.
