Version 1 of Ace by Aureas Gigas begins here.
[ Written by Aureas Gigas, coding help by Speedlover ]

VanessaAceInteraction is a number that varies. VanessaAceInteraction is usually 0.
SnowAceInteraction is a number that varies. SnowAceInteraction is usually 0.

Table of GameEventIDs (continued)
Object	Name
Refueling	"Refueling"

Refueling is a situation.
ResolveFunction of Refueling is "[ResolveEvent Refueling]".
Prereq1 of Refueling is Avian Tent.
The Prereq1Resolution of Refueling is { 1, 2 }.
Sarea of Refueling is "Forest";

when play begins:
	add Refueling to BadSpots of MaleList;
	add Refueling to BadSpots of FemaleList;

to say ResolveEvent Refueling:
	say "     As you travel down a dusty path through the forest you come across the ruins of an aged dollar store, the outside looks thoroughly ransacked with shards of glass from broken car windshields and shredded cardboard lies strewn all around park. Some plastic bags flutter listlessly about in the wind. A massive eighteen-wheeler in the back that has been flipped on side by a large redwood and two elms. One of back doors is open, indicating that the truck was being unloaded when P-Day started. Hoping to find some useful you peek inside to see a variety of boxes that have been shredded to bits. Based on the bite and scratch marks it would seem like a pack of wolves found cargo before you. The few boxes that seem relatively untouched contain items like laundry detergent, brooms, and paper towels. Makes sense that the feral beasts would ignore those remnants of society no longer useful in this post-apocalyptic environment. With the truck a scavenging bust you venture in the back area of the store hoping to have more luck inside the storage room in back of the store.";
	say "     The faintly rusted hinges creak as you open the heavy metal door. Interestingly the storage room seems relatively untouched. Looks like the wolves weren't able to find a way inside this room. You prop open the door with a box of detergent and begin searching inside the storeroom. To your disappointment, the backroom seems relatively bereft of supplies, with only items like toys, electronic fans, and some cleaning products remaining. Unfortunately, it looks like you came here too late, and some other somewhat sane scavengers found and looted the place before you came in in. With the way the world is now, it makes sense that all the places known to have tons of supplies sitting out would be some of the first targets to get looted. As you walk by the door to the storefront, you hear some grunts and moans coming from the other side of the door. It seems like you are not the only one inside the store!";
	WaitLineBreak;
	project Figure of Ace_icon;
	say "     Keeping a low profile, you step slowly and carefully as you try to find a vantage point to view origin of the sounds. Due to the way the sounds echo off the walls, the individuals responsible for the carnal sounds are in the front of the store. As you carefully walk down the frozen foods aisle, you can now see the figures responsible for making all the commotion by the checkout station, Izzy the cuckooess who has a penchant for getting pounded by hot studs, and 'Ace' the former fighter jet pilot turned anthro osprey who was convinced by Izzy and her mate Gray to join their small settlement. The pair are engaged in a serious make out session, their beaks pressed close and tongues sensually moving together. Not content with simply some oral action, the couple's hands begins to roam across each other's bodies.";
	say "     With a domineering tone, the former military man exclaims, 'So the horny little slut couldn't wait until she got back to camp to serve her master's cock.' His taloned hand squeezes one of her breasts then runs it down her slim waist and the small of her back before firmly grabbing the needy femmes ass. The licentious woman moans and replies cheekily, 'I always get what I want, flyboy.' She then unzips his flight suit and reaches for his crotch while whispering, 'And I think you want what I want as well...' She then pulls out the hunky males girthy ten inch cock and starts stroking it. Once his cock is fully erect, the osprey pushes his submissive partner onto the checkout counter and spreads her legs. The brown and white feathered pilot then lines his cock to rub up against the folds of the vivacious damsels cunt. 'Beg for it...I need to know who owns this pussy' commands the raptor as he wraps a hand around his pliant paramour. Pleading with a sense of desperate need, the slender female begs, 'You... Sir!'";
	WaitLineBreak;
	say "     Pleased with the response he was given, the commanding stud of bird plunges his rod into his birdy woman's pussy. Izzy lets out a loud ecstatic moan, she her eyes to focus purely on the sensation of the ten-inch penis going inside of her. With a cocky look in his eye Ace starts thrusting slowly but deeply, making sure to hit the g-spot. Whimpering softly, the naughty hotwife begins to grip the edge of counter. Wanting to tease the wanton avian, the seahawk pulls out his cock, waits for a few seconds, then slams it into the depth of his white feathered sub. Not expecting to get penetrated at that exact moment. The bent over female's arms are jostled, knocking over a small magazine stand, sending a dozen celebrity gossip mags careening to the floor.";
	say "     Opening her eyes, the lustful damsel gets a mischievous look and taunts, 'That all you can do? And here I thought fighter pilots were experts at hitting things fast and hard.' Inflamed by the biting comments, the ex-pilot forcefully grabs the back of his companion's head and utters, 'Oh I can do fast and hard...' He then slams his rod back into her womanhood and delivers a fierce swat to her booty. The cuckooess flinches from the pain, but that does not prevent the dommy raptor from continuing to spank her ass. The sound of the strong strikes echoes through the store. You see a hint of redness on the skin underneath the feathers. Once he feels his female partner's impudence has been fully punished, he orders her to give him a good view of her holes. Wincing in pain, the femme spreads her cheeks, giving her bull the sight of her dripping pussy and asshole.";
	WaitLineBreak;
	say "     Emboldened by seeing his bratty sub turned into a lusty pliant mess, the athletic pilot begins fucking full force. The cuckoldress underneath him moans loudly and exclaims, 'Don't stop master! Keep going!' This encouragement is accompanied by the hotwife rocking her hips. The birdlike hunk muscles start to tense up as the pair climax. Letting out a loud cry the masculine avian unleashes his load into the adulteress's depths. The two take a short moment to catch their breath before looking around and noticing your presence. Recognizing you, the cuckoo female greets you warmly, 'Nice seeing you again! Did you like the view?' You walk over and explain how you were scouting the location for supplies and heard some noises and wanted to investigate. The pair look at two shopping carts filled with supplies, Ace says, 'Sorry we kinda took all the supplies here. Though if you were willing, I'd pay you to escort us back to camp with a bit of the food.' It seems like an easy job to get a bit of food, if you are interested.";
	say "     [bold type]Do you want help the pair haul the food back to their camp?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Help.";
	say "     ([link]N[as]n[end link]) - Don't help.";
	if Player consents:
		say "     The prospect of food for a quick deviation sounds pretty good so you agree. 'Let's get this show on the road then.' the osprey cheerily commands. While walking down a trail back to their settlement, the former pilot and you get to talking about your background with the city. Curious about his background you ask him about his. Nostalgia echoes through his voice as he begins, 'Flying as always been a big part of my life. My mom was a flight attendant for Blue Jay Airways and dad was a mechanic at an airport. We used to go to a lot of air shows back when I was kid. The flight maneuvers were amazing to watch, and I imagined pulling some of the crazy tricks. I figured the best way to do that would be a pilot for the Air Force. I hope I'm still able to fly after all this.' The tone of his voice indicates the passion he has for his profession.";
		say "     While Ace and you chat further, a rustling in a bush puts you on edge, but when a tiny rabbit hops out, the three of you relax. Feeling a little left out Izzy asks, 'Hey Ace, you never told me how you ended up crashed here.' The osprey eyes gaze into the distance as he replies, 'My wingman Kaye and I were off on a recon mission checking on some unusual movement on radar. Keeping track of the movements of some of the bigger threats to a containment breach like behemoths, sea dragons and wyverns is important. I saw a duo of the dragons flying circles around group of individuals hiding inside of a minivan. I decided to save them. I shot a missile at one, while the other was gunned down by my wing mate. We started to leave when a third one ambushed us from behind, trying gunk up Kayes['] engines. I decided to take the drake on at close range to save my friend. I was successful but the hull got scratched up pretty bad so I had to eject.' The bold actions in story seem to make Izzy have even more desire for the stud.";
		WaitLineBreak;
		say "     As you approach the settlement, you can see that the campsite is somewhat different than the humble place you saw previously. The settlement seems a lot more fortified, the most notable addition being a watchtower made using a hunters blind from a camping store. Inside the tower is a petite anthro sparrow who shouts out, 'Ace and Izzy are back! They brought supplies too!' A couple of inhabitants come out to help Ace get the various foodstuffs from out of the shopping carts and into a large tent for storage. Meanwhile, Izzy goes off to find her spouse Gray inside their tent. The cuckolded husband is busy reading a book. The cuckooess stands over her hubby, announcing her presence, 'Hey dear, I'm back. Ace and I found a lot of food, but we decided to make you a special creampie...' The slender male looks up to see her cum-filled pussy. With a sense of quiet contentment, the guy responds, 'Well, I can't refuse something made just for me...' He then begins to lap at her white-glazed folds.";
		say "     With the loving couple of to their usual shenanigans, you walk back to the carts which are almost empty. The former Air-Force officer begins handing out some oatmeal cream pies to some of the members of the settlement, remembering the other snacking going on in the cuckoo tent, you chuckle to yourself. A slender secretary bird begins conversing with the osprey stating, 'You didn't miss much while out on your excursion. A feral wolf tested the perimeter, but we were quickly alerted by the man on watch duty. The canine seemed scared off by the commotion. Hopefully this means that the packs will be less likely to try and attack us.' The raptor cheerily proclaims, 'Good job! Being vigilant will help keep us safe from the threats the city possess.' Noticing you nearby, Ace motions for you to come forward.";
		WaitLineBreak;
		say "     In good spirits, Ace tosses you two of the packaged snacks. You snicker a little at the dessert, which causes the muscular hunk to ask, 'What? You don't like creampies?' He then realizes why you are laughing as he sees the cuckooess getting eaten out. Stifling a laugh, the ex-pilot tries to maintain a professional demeanor and gives you a casual debriefing. 'Thanks for guarding Izzy and me on our return trip. I know it was uneventful, but this load of food was important for helping keep this settlement going.' You note that he seems like an important figure in this community. Proudly he declares, 'I gotta admit, it feels good to be useful for the people living here. I'm always surprised when I learn about the capabilities of these folk. Speaking of, I'd love to hear about your experiences the next time you come around.' You give your farewells and head back down the path hoping to see all of them another time.";
		now Resolution of Refueling is 1;
	else:
		say "     Deciding that this much food will dramatically increase your chances at getting attacked. You decline the invitation. Bidding the pair farewell you head back down the path towards another destination.";
		now CuckooWatched is 99; [did not watch the couple. Izzy won ]
		now Resolution of Refueling is 2;
	now Refueling is resolved;
	now Jetlagged is active;
	WaitLineBreak;

Table of GameEventIDs (continued)
Object	Name
Jetlagged	"Jetlagged"

Jetlagged is a situation.
ResolveFunction of Jetlagged is "[ResolveEvent Jetlagged]".
Prereq1 of Jetlagged is Refueling.
The Prereq1Resolution of Jetlagged is { 1, 2 }.
Sarea of Jetlagged is "Forest".

to say ResolveEvent Jetlagged:
	now battleground is "void"; [prevents a random fight, as these are replacement random fights]
	say "     While traveling through the woods you decide to check on the small settlement where Izzy, Gray, and Ace are located. Walking down the trail leading to the campsite, you notice that the path seems wider and much more well-worn than before. The variety of hoofed, clawed, and taloned footprints in the mud, highlight the variety of foot-traffic that has traveled towards your destination. As you approach a curve in the footpath caused by a massive redwood, you hear variety of clangs, chatter, and flapping of fabric with the wind. The sleepy campsite has surely grown. As you get your first sight of the campgrounds, you notice that the ramshackle makeshift defenses made from bits of wood and scrap metal have been replaced with some proper wooden barriers. You can even see a metal shipping container in the northern section of the camp.";
	say "     As you gaze upon the changed settlement, a person blurts out, '[']Scuze me. Coming through.' When you move to one side of the trail, you see a white anthro bull who seems vaguely familiar walk past you. Following shortly behind is a portly anthro warthog. Both are wearing large hiking packs. Various items inside clank with every step taken. The shorter porcine fellow inquires, 'Marsden, where are you headed?' The bovine replies, 'Argos Antiques. One of the settlers here found some antique jewelry.' With a wary look in his eyes, the warthog asks, 'Are sure that's a good idea? That Dmitri fellow seems sorta fishy to me.' Giving a flippant shrug, Marsden answers, 'Can't make a profit without taking some risks. Besides, I'm one of his best contacts. That peacock rarely ventures from the high rise district.' From what you can surmise, the pair are traders, some of the few sane people bold enough to venture through the unsafe areas of the city. While the two are out of earshot, you move towards the changed town.";
	WaitLineBreak;
	project Figure of Ace_icon;
	say "     As you approach the main entrance to the upgraded settlement, a tall anthro ostrich femme blocks your way. Wielding a long sharp spear with a hunk of scrap metal sharpened to a point for the spearhead, the gangly dame barks, 'State your intentions for coming to Staghorn!' You reply that Ace wished to speak with you about the city. Skeptical the seven foot tall guardian scoffs, 'A likely story.' However, to your luck, Gray comes walking by carrying a couple of water bottles. Noticing how the guard is hassling you, the male cuckoo greets you warmly stating, 'Hey there, it's been a little while since I last saw you.' He moves his arms affably to get the warden of the entrance to ease up. Moving you past the guard and into the camp your slim wayfarer whispers, 'Sorry about that. The camp is a bit on edge after a pair of miscreants attempted to rob from our food stash.' You tell him that you understand.";
	say "     As you are guided through the bustling campground, you see a multitude of avians engaged in different activities. You see an anthro Archaeopteryx smoking a cigarette while examining some plans of the expanding settlement. With a cheery tone, the guide chimes, 'Remember to take a break every once in a while, Mr. Vogel.' The workaholic dinosaur mutters under his breath, 'I'm not that old, you worrywart,' then gives an acknowledging handwave and once again focuses upon his task. Moving past the proto-bird's tent you see an anthro Turkey unloading a load of lumber from a small 4 wheel trailer designed to be hauled by ATVs. However instead of being hauled by a machine, the vehicle is towed by a giant twelve foot tall bird. You ask your companion about the strange bird that seems to come out of an old travelers' tale. Shrugging, Gray says glibly, 'Apparently it's called a Moa. It was from New Zealand before they went extinct. I dunno how one got here.' The two of you finally arrive at Ace's tent";
	WaitLineBreak;
	say "     Stepping inside the tent, you see Ace sitting in a foldable chair with Izzy in his lap, the two are engaged in a bit of foreplay, the femme's arms are wrapped over the studs broad shoulders while he cradles her hips. Noticing you and Gray come in, the pilot turns his head and focuses his attention on you, warmly belting out, 'Welcome back! Please have a seat and tell about what your travels are like.' Sitting on a scavenged leather ottoman, you share your what has happened since last meeting him. After explaining your expeditions, you note that the camp looks pretty different than when you first started coming around. Ace lets out a mild laugh as he responds, 'The lovely couple Gray and Izzy had a big part in making happen. Given their habit of having fun with plenty of the sane survivors in the area, traders started coming through this area more often, encouraging more people to stay close by and develop the camp further.' You look at an embarrassed Gray, who absentmindedly puts a hand behind his hand.";
	say "     You then notice that there seem to be a lot of avians in the camp. Izzy snarkily retorts, 'As opposed to the city where you can't throw a stone without hitting a canine, feline, or dragon?' Her mild mannered partner responds, 'What about the gryphons?' to which the female replies, 'They're part feline, that doesn't count.' While the cuckolding couple argues about whether a gryphon counts as mostly avian or not, the former pilot provides a real answer, 'Izzy is somewhat astute with her observation, canines have great team dynamics, felines have great stealth attack capabilities, and the dragons have both good defense and offense. Us avians tend to have more fragile bodies, meaning we can't handle sustained combat. Most of the feathered folk here have been trying to lay low and stay alive. I don't doubt that Staghorn has helped out a lot of the birds living here now.' This sense of community is rare in the current environment.";
	LineBreak;
	say "     Noting how people keep calling the place Staghorn, you ask how the name came to be. The two cuckoos burst out laughing. With a knowing look on his face, the osprey sighs and mumbles, 'I'll let those two explain.' The curvy damsel starts to say, 'Before this place was fully established, it was just Gray and me out here. Apocalypse or not, I'm going to have some fun, so one time I found this big dicked anthro cervine. The guy was a little skittish, but I got him to sit under a pine tree while I sucked his cock. Everything was going good as usual until my dear beloved accidentally rustled the bushes he was hiding in. Naturally the jumpy deerman panicked and thought gray was a wolf. He then shoved me away and started running away. While dashing away, one of the horns got caught in a tree branch and broke off. Ever since then it's been an inside joke and good waypoint for giving directions.'";
	say "     Ace whispers in your ear, 'Staghorn was also a way to help put the non-avians feel at ease. A couple of the feathered newcomers were wanting to name the place the Nest. Besides being a cliche, I put the kibosh on that idea to keep our other inhabitants feeling unwelcome. There has been a bit of tension from between the new and old settler groups that I've have to keep defusing. One of the worst things that could happen to this place is getting fractured.' His eyes dart to outside the tent reminded of his duty of leading the town. A taloned hand strokes his face as the female cuckoo soothingly speaks, 'Sir, when you're in here with me, you don't have to worry about that.' The focus of raptor's eyes eases up and his muscles relax. Heavy is the head that wears the crown, and Izzy's methods seem to help erase the former military officers burdens.";
	WaitLineBreak;
	say "     Deciding that some lighthearted conversation is needed, Ace shares a story of his youth in the Pacific northwest. And how one when he was fishing at lake with his family he was reeling in a whopper of a trout when an osprey snatched the fish out of the water breaking the line and leaving a feather in its wake. Taking the feather out of one of his pockets, the fighter pilot surmises, 'Maybe this good luck charm is what shaped my current form. Not that I'm complaining, I think my body works well for me.' You begin to feel restless, which can be sensed by stud. 'You seem like you're itching to get back on the trail. I'll see you out.' Exiting the tent, the former pilot states, 'I have to travel to work out some deals with some seagulls at the beach trading supplies for food. I might see you out and about.' He then moves close and whispers, 'And if you ever in the mood for the type of fun that Gray and Izzy have, I offer my services.' He then gives you happy parting words.";
	WaitLineBreak;
	move player to Staghorn;
	AddNavPoint Staghorn;
	now battleground is "void";
	now HP of Ace is 2;
	now Jetlagged is resolved;

Table of GameRoomIDs (continued)
Object	Name
Staghorn	"Staghorn"

Staghorn is a room. It is fasttravel. It is private. It is sleepsafe.
Description of Staghorn is "[staghorndesc]".
the scent of Staghorn is "The settlement smells of a hearty stew that is cooking somewhere nearby. There is also the smell of some freshly chopped lumber from freshly built fences.".

to say staghorndesc:
	say "     The campsite turned small settlement has a bustling atmosphere. Some of the interior tents and canopies have been decorated with various knickknacks that make each of them feel a bit more homey. Many of the inhabitants are busy working on tasks to sustain the community, while others rest in mattresses, sleeping bags or other furniture that has been scavenged from the wrecked homes. Most of the settlers are avian, with the rest being a mixture of anthro mammals. In the middle of the campsite stands a hunter's blind that seems to have been taken from an outdoor sporting goods store that serves as a watch tower for potential threats. Standing in the middle of the camp is the town leader Ace.";

Table of GameCharacterIDs (continued)
object	name
Ace	"Ace"

Ace is a person. Ace is in Staghorn.
ScaleValue of Ace is 3. [human sized]
Body Weight of Ace is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ace is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ace is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ace is 3. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ace is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ace is 3. [length in inches]
Breast Size of Ace is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ace is 2. [count of nipples]
Asshole Depth of Ace is 8. [inches deep for anal fucking]
Asshole Tightness of Ace is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ace is 1. [number of cocks]
Cock Girth of Ace is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ace is 8. [length in inches]
Ball Count of Ace is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ace is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ace is 0. [number of cunts]
Cunt Depth of Ace is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ace is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ace is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ace is false.
PlayerRomanced of Ace is false.
PlayerFriended of Ace is false.
PlayerControlled of Ace is false.
PlayerFucked of Ace is false.
OralVirgin of Ace is false.
Virgin of Ace is true.
AnalVirgin of Ace is true.
PenileVirgin of Ace is false.
SexuallyExperienced of Ace is true.
TwistedCapacity of Ace is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ace is true. [steriles can't knock people up]
MainInfection of Ace is "Human". [since there is no fitting infection for him, he's sterile for now]
Description of Ace is "[acedesc]".
Conversation of Ace is { "Skypilot!" }.
the scent of the Ace is "The avian has a strangely masculine scent that reminds you of the sea.".

to say acedesc:
	project Figure of Ace_icon;
	if debugactive is 1:
		say "DEBUG (Ace) -> aced: <- DEBUG[line break]";
	say "     The athletic anthro osprey stands upright at a height of about six foot tall and exudes a commanding presence. His body toned and well-muscled due to military training seems to strain the fabric of his jumpsuit. The feathers of his torso are white colored while the ones on his back, arms, and legs are brown. His head is white with a dark mask across his eyes, reaching to the sides of his neck. His gold colored eyes seem to gaze over at some individuals engaging in conversation.";

Instead of conversing the Ace:
	project Figure of Ace_icon;
	say "     [one of]'I heard that a boar is trying to make a town similar to what we have here. I wish him the best of luck,' says the Osprey.[or]'I wonder how Marsden is doing. The bull always has good wares and the cuckoos miss seeing him,' he muses while staring at box of supplies.[or]'Hope my wingman is doing alright out there. Kaye wouldn't handle living in the city quite as well as I can,' he says as he looks at the partially clouded sky.[or]'I hope the antiques we sent to the peacock are worth a good price. We're running slightly low on water,' he says, examining an inventory checklist made in a notebook.[or]'Helping these settlers out has really given me a purpose.'[or]'Ace isn't my real name, Izzy started calling me that and I decided to roll with it. The name seems to fit my new form well,' he states, slightly embarrassed.[at random]";

Instead of fucking the Ace:
	project Figure of Ace_icon;
	if (lastfuck of Ace - turns < 6):
		say "     Chuckling mildly, the osprey states, 'Sorry I can't have more fun right now, I need to keep an eye on the camp.'";
	else: [ready for sex]
		say "     As you walk up to Ace, he has a cocky look in his eyes as he asks, 'You need me for anything special?'";
		WaitLineBreak;
		say "[AceSexMenu]";

to say AceSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Ace off"; [anyone can blow him]
	now sortorder entry is 1;
	now description entry is "Wrap your lips around the osprey's avian rod";
	[]
	if Player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Ace's shaft in your pussy";
		now sortorder entry is 2;
		now description entry is "Offer sex to the dominant anthro bird";
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
				if (nam is "Suck Ace off"):
					say "[AceSex1]";
				if (nam is "Take Ace's shaft in your pussy"):
					say "[AceSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro bird, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AceSex1: [oral on Ace]
	say "     With a randy look in your eye, you ask Ace in a flirtatious manner if he would like you to [']check out his equipment[']. The osprey pauses for a second before guiding you back to his tent, he temptingly says, 'You do seem to have a good eye for whether stuff is up to standards.' He begins to remove his jumpsuit showing his notably large tapered avian cock and hefty balls. With a ribald tone you utter, 'Quite a decent package, but I'm going to have to see what it looks like at the ready.' Your right hand softly run along the sides of the rod, while your fingertips gently tease his sack. The avian brings you closer and traces along the small of your back. The tip of his hardening length starts pressing up against your body. With a cocky attitude the raptor boasts, 'Us pilots know how to be ready for action at a moment's notice.'";
	say "     When your partners member is close to fully erect, the strapping bird uses his hands to guide you head close to his crotch. The large ten-inch cock dripping precum makes for quite a tantalizing sight. Noticing how you are staring, the cocksure ex-pilot boastfully states, 'I think you will enjoy it more with your mouth than with your eyes.' Wanting to test if the braggart is correct, you wrap your mouth around his shaft. Admittedly as the rod is being inserted into your maw, there is a pleasurable warmth to the pulsing member. Sighing pleasurably, the stud groans out, 'You sure know what you're doing. Keep it up.' Encouraged by his words, you keep working on pleasing him.";
	WaitLineBreak;
	say "     You continue to go down on the pilot turned settlement leader for roughly five minutes, your extremely skillful ministrations relieving some of the tension that you can tell he has been carrying from his duties to military and later this town. Ace tilts his head up and catches a breath, the peacock boasts, 'If the words of some of my previous partners and the enthusiasm you have is true, then I'm sure that I'm not the only one enjoy this situation.' You nod your head while continuing the blowjob. Dribbles of saliva trickle out the side of your mouth. He grabs the back of your head forcing your solely to concentrate upon the dick lodged in your throat. The humongous penis causes you to gag for five seconds before the raptor relents and lets you catch your breath.";
	say "     While you take a couple of seconds to gather your thoughts, the white and brown colored bird flirtatiously taunts, 'We can quit if it's too much for you to handle.' Wanting to prove the braggadocios man wrong, you grab one the beefcake's butt cheeks, then take a long lick on the underside of his [']joystick[']. His domineering macho act dropped for a second before he regains his composure. Sucking his cock in earnest, you push yourself to take his length all the way to the base. Still fondling his ass, you feel his glute muscles tense up as Ace starts cumming down your throat. Your throat starts gulping down the thick load that was shot in your mouth. Giving the former pilot a playful swat on the ass when you stop sucking his rod. Jokingly you report that his equipment is up to code. With a contented sigh your companion states, 'Told you so.' The two of you exit the tent and go about your business.";

to say AceSex2: [Ace fucks Izzy and players pussy]
	say "     A curious idea pops into your head of wanting to feel the pilot's cock in your pussy, given how you have seen his skill in action with Izzy. With a sultry look in your eyes, you come close to the osprey and ask if he would like to press his cock in you. Raising an eyebrow, then letting out an entertained laugh, the athletic gentleman states, 'That sounds like a fun idea. Why don't we go to my tent?' The two of you head to his living quarters and begin to seductively remove any clothing or equipment off of your body as a seductive display for your grateful host. While you are in the middle of putting on this show, the female cuckooess slowly enters the room. Quickly surmising what has happened, the adulteress fake pouts and utters, 'Sir, I thought that I was the only one allowed to service you in the camp.' The raptor responds, 'My companion's not a member of our settlement, but I don't think they would mind if you joined in.' The inclusion of another person would seem to encourage Ace to perform better, so you acquiesce and motion for the woman to join in on the fun.";
	say "     The cuckooess takes a place kneeling in front of the hunky male, she begins prepping the man for some fun by earnestly licking and stroking his cock. Meanwhile Ace is busy running his hands up and down your torso, while his beak gives some sensuous playful nips to your neck. When the ex-pilot's cock achieves full erectness, the manly avian jovially states, 'Izzy I think we have been terrible hosts, seeing as we have only been focused on getting me ready. My dear pet, why don't you help get our guest ready.' After taking a short sec to catch her breath, the vivacious femme acknowledges and responds, 'Can do sir.' She then moves behind you and begins lapping at the folds of your pussy. Her nimble tongue circles along your sensitive folds. She is careful to avoid actually entering your cunt, seemingly wanting Ace to be the first one to penetrate you.";
	WaitLineBreak;
	say "     When the studly ex-airman thinks your sex is wet and ready for his cock, he moves his fingers to your pussy and then into his mouth. In a tone overflowing with authority, the avian states, 'I can taste your desire and see how needy your body is now lie down on the mattress.' After you begin lying down on the queen sized mattress, the libertine damsel is ordered by her dom to lie on top of you, her supple breasts pressing against your torso. Looking at the pair of inviting pussies, Ace cockily proclaims, 'Well isn't this quite the inviting sight. I can't decide on which treat I want to try first.' He then teasingly thrusts his ten inches of man meat in between the two wet slits. You gasp and Izzy let out an amused yelp. Smugly the ex-military man insists, 'The one who I find more wanting will savor the prize first.' Wanting to be the first one to cum you plead with wanton lust louder than your competition.";
	say "     Seeing as you won, the osprey begins sliding into you. With how horny and needy you are the anthro bird of prey begins pounding into your slick cunt. His well-trained athleticism means that the hunk is able to fuck you at full force slamming his thick cock deep inside you again and again. You start to orgasm, squirting on his engorged phallus. With you sated, Izzy becomes the focus of Aces attention. He starts to jackhammer his subs cunt. In between breaths, he utters, 'Better cum for me quick fuckslut.' the woman on top of you had fucked her partner enough times to star bucking your hips in perfect unison with his thrusts. Looking at the couples faces you can see both are on the verge of climax. Soon, the well-endowed soldier lets out a bird-like cry as he cums, his cock pulsing as he unloads his virile essence inside the cuckooess. Some of the cum leaking out of Izzy drops out of her pussy and onto you. While you recover from the experience, the two bird grabs some handkerchiefs and begins to clean you off.[fovichance]";

instead of navigating Grey Abbey Library while "Cuckold" is listed in feats of Player and (lastfuck of Vanessa - turns >= 8) and HP of Ace > 1 and HP of Vanessa > 4 and VanessaAceInteraction is 0:
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Vanessa makes a move on Ace - VanessaAceInteraction: [VanessaAceInteraction][line break]";
	say "[VanssaAceOralCuckScene]";

to say VanssaAceOralCuckScene:
	say "     Walking up to the entrance of the library, you spot Ace the osprey near the front door. The athletic raptor is wearing his flightsuit taut against his muscles he has a back pack laden with supplies- and beside him is Vanessa, the flanks of her rear legs pressed against the wall. Looks like the centauress is having a seemingly friendly chat with the former pilot. But it might be more than just platonic, as you notice that she has her military jacket open wider than normal, baring her breasts fully. Trying as he might to look at the tauress's face, the avian pilot can't help but occasionally peek at Vanessa's breasts, his wagging a bit quicker every time he does. Curious of the things they're talking about, you wander a bit closer.";
	say "     Ace is the speaking at the moment and says, '...I think that allowing infected soldiers back into service would definitively be of use to the military. A lot of the infections keep troops in fighting form. I mean check out these guns.' He flexes his well toned biceps, the fabric grips his arms tightly. Vanessa wraps a hand around the muscle and teasingly says, 'Not bad for a flyboy. I didn't know daredevils like you had time to work out.' With an amused chuckle Ace playfully replies, 'It's something to do in the off time. And you're one to talk about daredevil acts, jumping out of a plane is not thing most sane people do.' The two soldiers laugh, but the conversation goes a bit more serious as Vanessa asks, 'Do you think the top brass is really going to be OK with a bunch of lusty mutants who might mess with squad cohesion?' A loud gale blows past as the osprey contemplates her answer.";
	WaitLineBreak;
	say "     'I'm not entirely sure. Who knows maybe it will be squads of infected only before they have mixed groups. Plus think of the benefits that infected could bring to tactical situations. My vision is incredible, I can see a gryphon flying over by the ruins of the office building about three clicks away, Think how good that be a spotter for a sniper, or seeing bogeys from a much further distance while flying. Plus think of how many more supplies you can carry than the average trooper, or how you can evac a wounded squadmate in an emergency much quicker.' With a raise of her eyebrow, the equine infected woman sardonically blurts out, 'So I'm nothing but a glorified pack mule.' Speechless the hunks beak stays open for a couple of seconds before the infantrywoman starts chortling. Sliding in closer to the victim of her prank";
	say "     'So, tell me Ace...' Vanessa sultrily inquires stroking the bicep of one of Ace's arms, her eyes gleaming with a sense of want. '...A guy like you must have been quite the looker even before becoming quite the strapping avian .' With a self assertive style, the raptor boasts, 'I know a couple of hotwives who would be willing to back up that statement and more if needed.' He then flexes his biceps while the lady runs a finger down his abs. Enticingly the tauress answers, 'Oh I definitely want more, but I don't know if you'll be up to the challenge. My first time in the city was with a hung centaur.' Her hand travels even further down his torso, stopping at the bulge in his pants.";
	WaitLineBreak;
	say "     The birdlike male eyes look around the nearby area and then whispers into the taur's pointed ears, 'What do you think our dear friend, will say if he sees what we are doing beautiful?' One of his finger talon traces around the dark areolae of his partner. Moaning softly, the paratrooper smiles as she rubs her hands along the bulge that the rugged airman's clothes conceal. Then she utters in a provocative tone, 'I'm not really in a mood to care what they think. Besides, [if Player is female]she[else]he[end if] has let the doberman woman have her fun with that wolf that's been acting as our guard dog. Now lean against the wall if you want to keep this going.' You are not sure if the woman knows that you are here, but are also pretty sure if that wouldn't matter to her as you see her begin to unzip the horny guy's flightsuit.";
	say "     The sound of the zipper being pulled down echoes through room. Ace's stance relaxes slightly, as if not needing to be the one to take the lead in this encounter. Lowering the mostly white colored equine half of her body to the ground, it soon quite evident what the boisterous lady wants to do next.";
	LineBreak;
	say "     [bold type]Will you simply stand back let her give the Avian pilot a blowjob?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Endure the tantalizing humiliation of watching Vanessa go down on him.";
	say "     ([link]N[as]n[end link]) - Stop the centaur woman's advances. Ace is a honorable guy, so it wouldn't take much to end this.";
	if Player consents: [they fuck]
		LineBreak;
		say "     Not stopping this encounter you walk a bit closer so you have a better view. Watching as Vanessa grasps Ace's sizable erection and laps at it, her tongue runs from its base to the tapered avian tip. Enjoying the sensation, Ace hold a portion of the wall tightly and leans against the wall eyes close. His mind rejoicing from the way shapely centauress goes down on his cock. Slurping on his ten inch long rod spiritedly, the sucking sounds seems comparatively louder than a normal blowjob. Perhaps she knows that you are around, and wishes to taunt you. From your perspective, you can see that her black colored labial lips are dripping with arousal, revealing the pleasure she takes from this act.";
		say "     With the skillful blowjob Ace is receiving at the moment, it is no surprise that he edges gradually closer to an orgasm, panting while Vanessa bobs down on his cock. She also grips the raptor's buttcheeks firmly, his firm glutes tense up. Vanessa is grabbed by her ponytail by Ace as he begins shoving the tapered tip deeper down the pliant throat of the horselike girl. With a contented swagger the well-endowed officer closes his eyes and quietly mumbles, 'Keep it up, gorgeous. You're doing a great job.' His mate hardly seems to pay attention to his words, Her eyes transfixed on the wet shaft going repeatedly in to and out of her lips. Her tail content as it swishes occasionally side to side.";
		WaitLineBreak;
		say "     With a loud aroused cry, Ace grasps the ears of the woman giving him fellatio tightly as he feels the urge to come increasing and his muscles tense, then the first shot of cum goes down Alexandra's throat. Grunting with each further spurt, Ace gives the wanton soldier slut what she wanted, coating her stomach with his creamy essence. The former paratrooper gulps down a decent amount of cum, but gets pulled back from him, taking the next shot on her slightly equine face and her breasts and even a couple of drops land on the collar of her military jacket. Finishing his work Ace leans up against the wall taking a few deep breaths to recover. Standing up and walking over to a nearby dust cloth, Vanessa feeling quite puckish states, 'Not too bad, flyboy. If the Airforce and the army do any joint force operations, I'll know who to keep an eye out for when I want some fun.' Playfully the pilot gives finger guns as he begins to exit the abbey and gives you a knowing wink.";
		now VanessaAceInteraction is 1; [they fucked]
		now lastfuck of Vanessa is turns;
	else: [stop this - the player might not like Ace stepping up on his territory.]
		LineBreak;
		say "     Giving a loud greeting, you watch Ace turn to look at you, his tapered tip jutting out of unzipped part of jumpsuit, dripping a small amount of precum. The osprey's eyes enlarge as he tries to move his hand off his would be partner when he sees the emotions on your face. Trying to remove that cat that swallowed the canary expression off his face, he stammers as he says, 'Hey there Buddy... well, I was were just getting to know Vanessa better. You don't meet too many sane troops in this environment.' He starts to nervously ramble while clumsily trying to zip his flightsuit up. He then steps two steps away from the centauress, his eyes expressing a sense of shame as he looks at the floor while the tent in flight suit bulges out.";
		say "     You ease a bit of the tension in the room by telling Ace that it is not a friendship ruining moment - he didn't start this, after all. With the weight of that off his shoulders, the settlement leader cools down a smidge. Meanwhile, Vanessa stands up turns to look at him giving him a look at curvy her breasts, then utters, 'Well daredevil, looks like you couldn't commit. It's a shame.' With that, the centaur woman trots away, purposefully lifting her tail to give a look at her wet pussy. When she is gone, Ace apologizes to you and adds, 'Sorry about that, I didn't know that you and her were like that. I won't do anything with her in the future, I don't want to lose a friendship in this city. It's rare to find a [if Player is female]lady[else]man[end if] with your type of style out in the city.'";
		now VanessaAceInteraction is 100; [stopped things cold]
instead of navigating Grey Abbey Library while (Snow is in Grey Abbey Library and (lastfuck of Snow - turns >= 8) and HP of Ace > 1 and SnowAceInteraction is 0 and "Cuckold" is listed in feats of Player):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Ace bangs Snow - SnowAceInteraction: [SnowAceInteraction][line break]";
	say "[SnowAceCuckScene1]";

to say SnowAceCuckScene1:
	say "     Ready to head back home, you make your way back to the library through the desolate streets. Passing some burned-out or wrecked cars, countless pieces of garbage litter the ground and flutter about with a gust of wind. Once you have arrived at the front of the Grey Abbey Library, you double check the area to make sure that no feral is stalking you. There's no movement and the only sounds you are hear are the clanging of tools and quiet chatter that are coming from inside the abbey, so you walk up the concrete steps to enter the building. The cheery tone of a masculine baritone and a higher pitched feminine voice conversing amicably.";
	say "     Turning to look at the pair conversing, you see that it is Snow and the anthro osprey pilot Ace. Snow sits at her work leaning against the back of her chair after seemingly finishing her latest work, adjusting her tattered white shirt the squirrel girl inquires, 'So what do you think of the adjustments I've made to your knife? I modified the handle so that your hand talons will be better able to grip it.' The raptor's eyes stare intently as he examines his weapon. With a bemused chuckle the settlement leader sheathes his weapon and chimes brashly, 'Looks pretty good. You sure know how to work with tools...' Biting her lip temptingly, the red furred femme salaciously replies, 'You could say I have some experience...' Snow then begins to stretch her arms and arch her back, seductively highlighting her slim waist and curvy breasts. The avian's eyes can't help from staring at them.";
	WaitLineBreak;
	say "     The squirrel woman stands up and moves her curvy body close up against the masculine aquiline man. Her hard nipples poking up against the osprey's well defined torso. With a salacious grin Snow states, 'Since it seems like you are good with my work on the knife, let's talk about payment...' Fully understanding what the mechanic is getting at, Ace responds, 'I've got some food or water in my pack, but I think we can come to another type of arrangement though if you'd like.' He then runs one hand along the small of her back. Raising an eyebrow, the busty rodent gal amusedly chutters then leans in close and murmurs in a hushed tone, 'That all depends on how well you do, soldier boy... Now strip.' Not one to turn down an offer like this the studlike male follows the command.";
	say "     The pilot and the former student start stripping each other's clothes off. When Ace begins taking off the girl's tight pants, the sizable cock bulging inside them pops out. Attempting to provoke the former military man, Snow says, 'Hope you're not afraid of the equipment I'm packing...' With a soft chuckle the osprey runs a finger along the head of the dickgirl's member and responds, 'Oh please, with all the missiles that they strapped to my plane, this thing's not gonna scare me off.' The two begin moving their hands reciprocally to each other's loins. The pilot's hand switching between the herms throbbing cunt and her hardening cock. Seeing as the two are fully prepped, the raptor sits down in the chair appearing ready to start the fun.";
	LineBreak;
	say "     Snow is about to hop on Ace's lap, then start fucking him! [bold type]Will you simply let this happen?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Become a voyeur to their coupling.";
	say "     ([link]N[as]n[end link]) - Lay down the law on this! You may have allowed Ace to spend some time at your abbey, but this type of behavior is unacceptable.";
	if Player consents: [they fuck]
		LineBreak;
		say "     Doing nothing - except go to a hidden location so you have a better view - all you can do is watch as Snow climbs on top of Aces lap, spreading her legs to straddle the osprey's hips. The dickgirl tilts her body forward to kiss the birdy male passionately, their tongues delving into each other's beak and muzzle. The precum on the squirrel girls cock drips onto the abs of raptor as she lines the tapered tip of his rock hard cock with her womanhood. She lets out a pleasured exhale as she slides herself onto Ace's member, her big fluffy tail flicking about softly. Rocking her hips to fully experience the sensation of the ex-airman's cock, Snow moves her mouth away from her partners beak and grips his shoulders to start riding him with vigor.";
		say "     'That's great!' Ace utters out loud as Snow fucks herself using his cock, but soon the avian isn't placated by being used like a sex doll anymore. His taloned hands reach up to grope her gigantic breasts, unable to cup them due to their enormous size he contents himself with licking her nipples, swapping from one to the other intermittently. This type of action keeps going like this for a few moments, enabling you to recognize the stamina of the birdy stud. However this begins to change once Ace gets a gleam in his eyes. With his hands moving from his side over to his companion's slender waist, the feathered leader seems to begin taking a more active role in the coitus.";
		WaitLineBreak;
		say "     For a small moment, Snow keeps the osprey busy by rubbing her pussy and hard cock against his torso and crotch. The distinct contrast between slick wet femininity and rock hard masculinity pressing against the tip of his rod is strangely arousing. Not so easily swayed the soldier seizes control to hop off the chair and swap places with the rodent damsel. Cockily the seahawk puts a hand on the nape her neck and pulls her close. 'How about I show you how some real fun?' he blurts out. 'Let's get you in position.' Gripping the arms of chair tightly, the lusty dickgirl places her legs on the shoulder of the anthro bird so that she can get penetrated deeply. Now in the anvil position the well muscled man starts hammering the slick cunny.";
		say "     Snow may have halfheartedly started having fun with Korvin as a joke, however with his thick cock inside her destroys those preconceptions, as the dame chutters and whines wantonly with each time his phallus pushes in and out. The two anthro infected have fully relinquished their inhibitions, they have achieved heights of lustful pleasure. Ace pounds into her again and again, thrusting the tapered tip close to her cervix, moaning in tandem with the dual gendered woman underneath him. Soon the no holding back style of fucking brings him to the edge of climaxing, all his well toned muscles tighten as his cock lets out a hearty load being shot into her pussy.";
		WaitLineBreak;
		say "     With the sensation of all that cum seeping inside her, the squirrel girl's cock twitches before coating the curves of her breasts and her chin. Ace holds onto to the well fucked woman while the two recuperate. Deciding to not stay hidden anymore, you walk up to the resting couple, then see the pilot chuckle amicably. He motions for you to come closer and arrogantly beams, 'I think she's quite satisfied.' Grabbing a nearby towel, the osprey begins wiping the herms seed from her chest. With a cheerful demeanor the settlement leader states to you, 'Well, you keep pleasant company. Might come back another time.'";
		say "     Shrugging your shoulders at the actions of the two of them, you give the raptor a thumbs up telling him he's welcome to come back any time he likes and that he can keep having fun with Snow, also that he should go full force when he does, as Snow needs to extra attention. There is an amused chuckle from the well-fucked woman as you say those words. Still feeling worn out, the former student mumbles, 'Got that right.' You just know that the lusty squirrel will keep enjoying herself carnally, but this way, you can have good relations with Staghorn and keep another ally in the city.";
		now SnowAceInteraction is 1; [they fucked]
		now lastfuck of Snow is turns;
	else: [stop this - the player might not Ace having fun with snow]
		LineBreak;
		say "     With a harsh yell, you call out the osprey's name, making him wrench his eyes away from the lusty femme right next to him. The intense, pleasure-focused look in his eyes turns into one of worry as he sees the anger on your face, clamping his beak close to shut. 'Shit, that's not good...' The cocksure attitude he normally exudes has been snuffed out. The blustering avian realizes that he is a guest at your residence, and thus he needs to do as you say here. Relenting on his desires, Ace backs away from the titillating herm. Apologizing, the raptor states, 'Sorry about all this. I thought it was OK with both of you.'";
		say "     After giving Ace a calmer statement thanking him for following your request, Snow begins walking off, muttering under her breath that she needs to blow off some steam what with the massive hard on that she's packing. Her bushy tail sways as she slinks away before giving Ace one final tempting wink. Ace decides to refuse the call and you pat him on the back. Still feeling slightly irritated from what almost happened, you suggest that he check on how Staghorn is doing. Understanding that you need both some space and time to cool off, Ace begins to head out down the path back to his community, giving you a wave as he leaves.";
		now SnowAceInteraction is 100; [stopped things cold]

Ace ends here.
