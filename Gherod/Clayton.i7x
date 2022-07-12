Version 1 of Clayton by Gherod begins here.

"Adds a Bull NPC, Clayton, an acquaintance of Cherry's who lives in the outskirts of High Rise District."

[Version 1 - File created]

Section 1 - Pre-events

a postimport rule:
	now sarea of MeetingClayton is "Nowhere";

Table of GameEventIDs (continued)
Object	Name
MeetingClayton	"MeetingClayton"

MeetingClayton is a situation.
ResolveFunction of MeetingClayton is "".
Sarea of MeetingClayton is "Nowhere".

to say CherryTalkClayton:
	say "     Seeing how Cherry seems to be deep in thought, you resolve asking her if everything is fine. She takes a moment to process your words as she pulls herself from the tumultuous daydreaming sea in her head, turning to face you with a slightly surprised expression. 'Oh, it is nothing, my dear. I'm simply... Well, worrying about a few acquaintances of mine, nothing more.' You figure you should ask her a bit more about it, as you may be able to assist her with any trouble. The pink fox smiles at your gesture, happy to see that you cared about her personal issues. 'My apologies. I tend to act all high and mighty, it became a habit due to my job and other struggles in life, but it simply does not make me immune to worry. I am not the cold woman the world wanted me to be, for the better or worse...'";
	say "     She then recollects herself from this brief distraction and seems keen on telling you what is going on. 'Alright, darling, there is indeed someone that worries me a little, an old friend of mine who used to own a farm in the outskirts of the district, and I would appreciate a moment of your time so I could send you on an errand to assist him. But, of course, it can wait if you have any pending matters. I don't mean to impose.'";
	LineBreak;
	say "     Cherry seems to want to ask you a favor, and that means [bold type]you will likely be busy[roman type] for at least the next hours. Knowing this, [bold type]should you accept it[roman type]? You can always return later and speak to her again.";
	say "     ([link]Y[as]y[end link]) - Assist Cherry.";
	say "     ([link]N[as]n[end link]) - Not right now.";
	if Player consents: [unlocks Clayton]
		Linebreak;
		now CherryDoneTalking is true;
		say "     You let Cherry know that you can very well assist her, since there is enough free time that allows you to do so. She, once more, shows a genuine smile as you declare yourself available and willing to help. 'That's wonderful news! And I must add, he may be someone you would like to get to know, depending on your tastes... But he can also be quite accomodating. Anyway, enough blabbering, I shall head straight to the point.' The pink fox readjusts herself in her couch as she places down the cup of tea she was taking sips from on her lap.";
		say "     'This friend of mine used to be a wonderful man that I grew quite attached to, a confident of mine, if you'd like to call him that. And, well, he still is a wonderful man, except... He has sustained a quite odd mutation.' Cherry takes a deep breath as she gathers her words. 'You see, he owned a farm, and when this entire mess began, his animals went completely and utterly crazy. Obviously, nobody expects their caring herd to suddenly find them suitable as a love mate and start chasing them around to do the deed, and much less to have been mutated into bipedal creatures with more than enough skill to subdue them, if they so wished. Now, you may wonder... This is quite an anomaly, is it not? Because it is.'";
		WaitLineBreak;
		say "     'Clayton, who is my friend's name, was part of a test program created by Zephyr related to gene-altering nanites. I don't know the specifics, and am unsure if they are the same types of nanites we have to deal with nowadays, but his herd was the target of said tests, especially cows. They were supposed to increase their productivity and quality of their milk, as well as longevity and health, albeit they still had unverified secondary effects. This is highly classified information that I am trusting you with, but as you should know, they had to find ways to test their technology. Anyway... It seems that once the apocalypse arrived, his herd began to undergo several physical changes that turned them into horny anthropomorphic messes. Clayton got assaulted by several of them just as I arrived.'";
		say "     'Having had my own problematic encounter not long ago, I too have earned myself several charms, and they were at my disposal, so I managed to distract his herd and led them astray long enough to allow Clayton to make his escape. With his farm now becoming an unsafe location, I met with him later on and offered my other property for him to stay. As for Clayton himself, however...' She gets up, placing her cup on the coffee table and walking around the couch. 'He was turned into quite the massive bull. Like, unnaturally large. I've never seen anything like that... And obviously, that would hinder any of his attempts at scavenging unnoticed. Surely he would be able to defend himself, but I also worry that he could become... a threat to wanderers, as his mind got inevitably affected with hypersexual tendencies, much like it tends to happen to the average nanite-infected.'";
		WaitLineBreak;
		say "     'However, Clayton is still himself, deep down. He has not succumbed to feral depravity and has shown himself to be quite a remarkable and strong-willed individual, much to my joy. Yet, I fear isolation will not do him good, so I wanted to ask you to come visit him and help me carry a box of supplies I've arranged for him. Perhaps you could even... befriend him.' Cherry heads over her pantry to go fetch this large box, which also seems quite heavy. 'Naturally, if I were to carry all of this on my own, it'd make me an easy target for creatures and all manners of villains out there, but I'm positive that if we travel together, we could more safely make it.'";
		say "     Cherry then walks over to the door as she resumes speaking to you, 'Well, I hope I've informed you on the subject well enough. If you are still willing to assist me, we could be on our way there right now.' Seeing no reason to stall this any further, you nod, readying yourself to travel with Cherry to your target location. 'Splendid. I shall take the lead and guide us through the safest routes, hopefully. And I'm quite sure you'll like to meet Clayton.' Without any further ado, Cherry proceeds to request that you open the door for her, and you do so before following right after her, and after you have made sure you closed it properly.";
		WaitLineBreak;
		clear the screen;
		say "     Safely heading out of the apartment complex, you and Cherry make it to the streets while, hopefully, remaining out of sight from undesired roamers. Also, as the supply box is considerably heavy, you take turns with your pink fox friend, which alleviates your efforts. Fortunately, it does seem like a calm day, so you have little trouble finding discrete enough routes and make steady progress towards your destination. On the way, Cherry explains you how which shortcuts to take in order to make your path safer and quicker, and you easily get a good idea of how to navigate this district and reach her second property. 'It is not too far, but having to cross the entirety of the district towards the outskirts is somewhat of an inconvenience...'";
		say "     Eventually, you safely arrive at your destination. 'Here we are. It is simply a modest house in a quiet neighborhood, a place I mostly went to during the weekends and such. It's a peaceful spot to rest, has a large backyard and an annex, perfect to indulge in outside hobbies. I thought Clayton would fit in well enough, and I hope I wasn't wrong...' she stops before taking a deep breath and turning her face towards yours, 'I haven't seen him in several days, as I've been busy tending to myself... Anyway, we'll see how he's faring.' Indeed, Cherry's second house could be described as modest for someone of her ranking in a corporation, but it is, in fact, very sizable. It features a tall enough surrounding wall for privacy and, as you are able to see once Cherry opens the gate with her spare keys, you see just how big its exterior is. You doubt anyone would not feel comfortable living here.";
		AddNavPoint Clayton's Front Yard;
		WaitLineBreak;
		say "     Without any further ado, you make it to the entrance door. Here, the pink fox hands you over the supply box before knocking, a polite gesture she opts for instead of opening the door right away. 'Hello? Clayton dear, it's me, Cherry!' she says, leaning over the door's wooden surface as she checks for any noise from inside. Several seconds pass and she gets no reply, so she knocks once more, repeating herself with the same words. A few moments later, she still gets no response. 'Well, he could be in the annex. Unfortunately the bell is in no working condition, so we'll have to try checking back there. Through here,' she tells you, beckoning you to follow right after her as you make it towards the backyard, across a narrower pathway of stone.";
		say "     'I see Clayton has been tending to the garden. The plants are looking healthy... This is a good sign,' Cherry comments as you arrive at the backyard. The bull does not seem to be here, but one of the doors to the annex building was left ajar. She beckons you to follow her towards that same door, and slowly, she pushes it open while peeking inside. 'Chauncy? Are you in here?' she asks, and finally, a deep male voice booms from deeper inside, 'Huh... Oh! Cherry! Is that ye? Hol' on, aye, I... uh, I'm... I'll be right there!' The pink fox smiles as she hears her friend, and tells you to place the box on top of a nearby table. 'You wouldn't want to keep holding on to that, right?' You simply do as she says, bringing longing relief to your arms.";
		WaitLineBreak;
		say "     Eventually, you hear (and feel) heavy footsteps growing nearer, and this massive, towering bull appears before you and the fox. He appears to have attained an exceptionally bulky and incredibly muscular frame, unnaturally so, and his height reaches nearly an impressive nine feet. There is also a pair of large tauric horns atop his bovine head that curve forward, like an actual bull's, and he gave himself a nose ring. Taking a more attentive look at his body, it is completely covered in a light brown, almost golden, short-length fur, which lightens up on the front. His muscles are truly enormous, especially his chest, with each pectoral bulging forward as thick masses of muscle, ending in eye-catching puffy nipples. Resuming at the hips and downwards, he has strong two-jointed legs that end in hooves, while between them dangles a long and monstrously thick human-like cock with a pair of two massive and full balls hanging underneath. Obviously, someone as huge as him would struggle to find proper pieces of clothing to cover himself with, but in his own home, he does not seem to care about concealing any part of his body at all, walking around completely naked even in your presence.";
		say "     Now you know why Clayton had the need of a big enough house. Even now he has to curve himself down slightly so to not bump his horns into the ceiling.";
		WaitLineBreak;
		say "     'Cherry! It's been a while! How've you been?!' he says to the pink fox, coming for a hug that, for moments, you fear it could crush the poor lady, but he is surprisingly gentle about it, even as her entire upper frame sort of disappears amidst the bull's embrace. 'Well, I'm glad you've been doing alright! Hopefully we didn't interrupt anything?' she asks, and as the bull carefully pulls away, he scratches his head, as if thinking. 'Uh... Nay, y'didn't. Eh, I mean, uh... Nothin['] important. Was just tryin'a get somethin['] workin['] but these big hands ain't good for precise jobs. But nothin['] y'should worry [']bout, aye. To what do I owe the pleasure, if ye don't mind me askin[']?'";
		say "     'Oh, I've just come to deliver you a box of supplies I'm sure you would find useful, and... I also came to introduce a friend of mine,' she then beckons you to approach them, and as you step forward, Clayton's eyes wander through your figure from head to feet and back up, as a smirky grin forms across his muzzle. 'Ye're in good company...! Is this som['] wanderer ye've caught in the wil[']?' he asks, and now that you are standing close to the bull, you notice his strong animalistic musk as it fills your nostrils. Almost immediately, you feel significantly aroused, as this scent feels heavily loaded with pheromones that, no matter what you are usually into, manage to trigger your lusts just right. The fact he is standing completely naked strengthens its effectiveness, you feel.";
		WaitLineBreak;
		say "     '[SubjectProCap] found me, in fact, while I was in a bit of a pickle. Fortunately, everything went well, and I ended up inviting [ObjectPro] home for some tea,' she explains, though Clayton seems very enthralled by you, for some reason. You have an idea in what way exactly once you catch his enormous meat giving a little twitch. 'Good lookin' [guygal], if I'm to say. I wouldn't mind gettin['] t'know [ObjectPro] myself, always down t'make friends!'. Cherry seems happy to hear this as she replies right after, 'Oh, that is wonderful to hear, my dear! It was with that intention in mind that I've decided to introduce [ObjectPro] to you. I thought you could get along and not feel so lonely all the time. I'm glad to know that I was right.'";
		LineBreak;
		say "     'Yeah, y'don['] worry [']bout that, for I'm sure we'll get along jus'fine... Ye're good with yer hands, by any chance?' the bull asks you.";
		say "     ([link]Y[as]y[end link]) - You are confident about your hand skills.";
		say "     ([link]N[as]n[end link]) - Actually, you tend to be a little clumsy.";
		if Player consents:
			Linebreak;
			say "     You give him a confident nod, aware of your great accomplishments using your hands and fingers. 'We'll see [']bout that if ye don't mind helpin['] me out with some stuff when y'got the time and will. If I've t'be honest, I'm a bit of a walkin['] disaster myself, hav'to watch out so I don't shite over or end up breakin['] delicate stuff. Y'know, size ain't just good things, aye, even though it brings some other perks...!'";
		else:
			Linebreak;
			say "     Well, in fact, you are sometimes a walking disaster, and you have to admit that to the bull. 'Hah! Ye're like me, if I've t'be honest! Hav'to watch myself so I don't knock shite over or end up breakin['] delicate stuff. Y'know, size ain't just good things, aye, even though it brings some other perks...!'";
		say "     'Anyway, since you two are getting along, I shall be on my way. We've left your supplies atop that table over there, so feel free to make use of them.' Cherry then gently strokes one of Clayton's hands, before patting your shoulder as well, and begins to head towards the door. 'Aw, ye're leavin['] already? Thought we could have a meal together or somethin[']...' the bull stops her, but the pink fox seems adamant on taking her leave. 'Much appreciated, Clayton, and I shall take on that offer some other day, but I thought it'd be better to let you know each other better in a more... private setting,' she replies, chuckling and winking in your direction. 'Enjoy yourselves!'";
		say "     After the pink fox leaves you alone with the bull, he looks over the box, then back to you. 'Well, then I guess [']tis as good a time as any for introductions, aye? Name's Clayton, used t'be a local farmer before shite hit the fans. If ye're a friend of Cherry's then ye're my friend as well.' He walks up to you and pats your shoulder with a much heavier hand than you could antecipate, then with a gentle squeeze, he pulls away before beckoning you towards the supply box. 'Now, let's see what ol' Cherry brought. She's a really sweet lass for rememberin[']. And y'helped bringin['] this stuff, too?' You nod as he checks the box's contents, and it seems it is mostly food in great condition, most in cans for better preservation, and several bottles of clean water.";
		WaitLineBreak;
		say "     'She didn't need to...! There's a lot of stuff here she coul['] make use of too...! Spoilin['] me like this, that woman... Anyway, I'll find a proper place to stash these in later, aye. Y'wanna sit and chat a while?'";
		move player to Clayton's Backyard Annex;
		now Resolution of MeetingClayton is 2; [Interactions with the bull unlocked]
		WaitLineBreak;
		say "[ClaytonTalkMenu]";
	else:
		LineBreak;
		say "     Unfortunately, you do not have the time nor disposition to accept her request, and tell her that you, indeed, have things to do for today. 'That's alright, I'll find another way to get this done, so you don't need to trouble yourself. But, if by any chance, you end up changing your mind, I would still be thankful for your help.' You nod, take note of this, and eventually, the subject changes.";

Section 2 - Rooms

a postimport rule: [bugfixing rules for players that import savegames]
	if resolution of MeetingClayton >= 2: [event resolved the right way, room not connected yet]
		AddNavPoint Clayton's Front Yard;

Table of GameRoomIDs (continued)
Object	Name
Clayton's Backyard Annex	"Clayton's Backyard Annex"

Clayton's Backyard Annex is a room.
Clayton's Backyard Annex is north of Clayton's Backyard Outside.
Description of Clayton's Backyard Annex is "[ClaytonBackyardAnnexDesc]".

to say ClaytonBackyardAnnexDesc:
	say "     The insides of the annex are simple, yet function practically as a secondary habitation, and contain a space that seems to serve as a garage, though everything in here is considerably more dusty than the rest of the house. Clayton does what he can to keep it relatively clean. This area is mostly filled with older furniture and only has windows on one of the sides, so during the day, not a lot of light comes in, only enough to provide moderate visibility. It, however, seems to be the place where Clayton spends most of the time, as it is quite wide and tall, with plenty of space for him to walk about and do his things, and there is even a bedroll, which means he must also sleep here. To the [bold type]south[roman type], you could simply walk away into the backyard outside.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Clayton's Backyard Outside	"Clayton's Backyard Outside"

Clayton's Backyard Outside is a room.
Clayton's Backyard Outside is north of Clayton's House Kitchen.
Description of Clayton's Backyard Outside is "[ClaytonBackyardOutsideDesc]".

to say ClaytonBackyardOutsideDesc:
	say "     You are standing in the space between the main house building and the annex, which is mostly a paved backyard with several spots for planters next to the surrounding walls. From here, you can head directly [bold type]north[roman type] into the annex, a wide and somewhat tall construction with a door on one of the sides, a few windows and a garage gate on the other, but that otherwise looks like an extension to the residence, or you can head through the door [bold type]south[roman type] to arrive at the dwelling's kitchen.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Clayton's House Kitchen	"Clayton's House Kitchen"

Clayton's House Kitchen is a room.
Clayton's House Kitchen is northwest of Clayton's House Main Hall.
Description of Clayton's House Kitchen is "[ClaytonHouseKitchenDesc]".

to say ClaytonHouseKitchenDesc:
	say "     The house's kitchen is a modern space with most appliances you would expect to find in such, though apart from the oven, which seems to function with gas, everything else would not work without power, severely limiting the uses of this division. There are nicely-sized windows above the counters which provide good natural illumination during the day, and in the center lies a wooden table with several chairs. Atop it is what seemed to be a fruit bowl, which is now empty. If you head [bold type]north[roman type], you can walk outside into the backyard, and heading [bold type]southeast[roman type] leads into the house's main hall.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Clayton's House Main Hall	"Clayton's House Main Hall"

Clayton's House Main Hall is a room.
Clayton's House Main Hall is north of Clayton's Front Yard.
Description of Clayton's House Main Hall is "[ClaytonHouseMainHallDesc]".

to say ClaytonHouseMainHallDesc:
	say "     This is the entrance to the house and the division that connects to every room within the ground floor. It is modestly decorated with a chandelier on the ceiling, a carpet on the mosaic floor, a cabinet on the wall and a large mirror above it. There is also a large sized sculpture to the corner, right next to the double-door that serves as entrance. From here, you can see several other doors leading to different parts of the house, including the kitchen's, to the [bold type]northwest[roman type], and some stairs to the side of the wall leading upwards, possibly into the bedrooms (currently unaccessible).";

[---]

Table of GameRoomIDs (continued)
Object	Name
Clayton's Front Yard	"Clayton's Front Yard"

Clayton's Front Yard is a room. It is a fasttravel. Clayton's Front Yard is private.
The earea of Clayton's Front Yard is "High".
Description of Clayton's Front Yard is "[ClaytonFrontYardDesc]".

to say ClaytonFrontYardDesc:
	say "     The front yard of Clayton's current residence is a large sized garden, which he seems to tend to fairly well. You can see the front side of the house, a modest building with two floors that is in a relatively good state, having seemingly escaped the relentless scavengers. Its walls are close to white, and parts of the construction were made with stone accents of a grey-ish color. Furthermore, this section has a pathway, also made of stone but of a different kind, leading further [bold type]north[roman type] towards the main entrance, a large double-door made of dark wood.";

instead of going north from Clayton's Front Yard:
	say "     You walk up to the house's main door, but Clayton has the habit to keep it locked.";
	say "     [bold type]Perhaps you could simply walk around the house and check the backyard?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Walk around (leads to the backyard).";
	say "     ([link]N[as]n[end link]) - Stay where you are.";
	if Player consents:
		Linebreak;
		say "     With the way in front of you locked, you decide to do just that and walk around the building, soon finding yourself in the backyard of the house.";
		move player to Clayton's Backyard Outside;
	else:
		LineBreak;
		say "     You have decided to stay where you are.";

Section 3 - Clayton NPC

Table of GameCharacterIDs (continued)
object	name
Clayton	"Clayton"

Clayton is a man. Clayton is in Clayton's Backyard Annex.
ScaleValue of Clayton is 4. [human sized]
Body Weight of Clayton is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Clayton is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Clayton is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Clayton is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Clayton is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Clayton is 7. [length in inches]
Breast Size of Clayton is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Clayton is 2. [count of nipples]
Asshole Depth of Clayton is 12. [inches deep for anal fucking]
Asshole Tightness of Clayton is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Clayton is 1. [number of cocks]
Cock Girth of Clayton is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Clayton is 18. [length in inches]
Ball Count of Clayton is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Clayton is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Clayton is 0. [number of cunts]
Cunt Depth of Clayton is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Clayton is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Clayton is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Clayton is false.
PlayerRomanced of Clayton is false.
PlayerFriended of Clayton is false.
PlayerControlled of Clayton is false.
PlayerFucked of Clayton is false.
OralVirgin of Clayton is false.
Virgin of Clayton is true.
AnalVirgin of Clayton is false.
PenileVirgin of Clayton is false.
SexuallyExperienced of Clayton is true.
TwistedCapacity of Clayton is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Clayton is false. [steriles can't knock people up]
MainInfection of Clayton is "Bovine".
Description of Clayton is "[ClaytonDesc]".
Conversation of Clayton is { "Moo." }.

to say ClaytonDesc:
	say "     This sturdy, towering and muscular anthropomorphic bull going by the name [']Clayton['] appears to have been formerly a middle-aged farmer who has attained the appearance of a large and masculine bovine. Somehow, he appears to have attained an exceptionally bulky and incredibly muscular frame, unnaturally so, and his height reaches nearly an impressive nine feet. There is also a pair of large tauric horns atop his bovine head that curve forward, like an actual bull's, and he gave himself a nose ring. Taking a more attentive look at his body, it is completely covered in a light brown, almost golden, short-length fur, which lightens up on the front. His muscles are truly enormous, especially his chest, with each pectoral bulging forward as thick masses of muscle, ending in eye-catching puffy nipples. Resuming at the hips and downwards, he has strong two-jointed legs that end in hooves, while between them dangles a long and monstrously thick human-like cock with a pair of two massive and full balls hanging underneath. Obviously, someone as huge as him would struggle to find proper pieces of clothing to cover himself with, but in his own home, he does not seem to care about concealing any part of his body at all, walking around completely naked even in your presence.";

instead of sniffing Clayton:
	say "     The massive bull has a strong animalistic musk, loaded with pheromones that immediately fill your nostrils. No matter what you are normally into, his scent arouses you and makes you think of sex.";

Section 3-1 - Clayton Talk

ClaytonDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Clayton:
	say "     You sit down with the massive bull, hoping to have a conversation with him. He nods and smiles, happy to talk to you. 'Wantin['] to have a chat with big ol['] me? By all means, be my guest.'";
	say "[ClaytonTalkMenu]";

to say ClaytonTalkMenu:
	now ClaytonDoneTalking is false;
	say "     [bold type]What do you want to talk about with Clayton?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the large bull to tell you a bit about himself";
	[]
	if Energy of Clayton > 0:
		choose a blank row in table of fucking options;
		now title entry is "Thoughts";
		now sortorder entry is 2;
		now description entry is "Inquire the muscular bovine about the thoughts he gets";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Plans";
		now sortorder entry is 3;
		now description entry is "Ask about his plans for the future";
		[]
	if Energy of Clayton > 1:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 4;
		now description entry is "You have brushed the subject before, direct the conversation to sex";
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
				if (nam is "Himself"):
					say "[ClaytonTalkHimself]";
				else if (nam is "Thoughts"):
					say "[ClaytonTalkThoughts]";
				else if (nam is "Plans"):
					say "[ClaytonTalkPlans]";
				else if (nam is "Sex"):
					say "[ClaytonTalkSex]";
				wait for any key;
				if ClaytonDoneTalking is false:
					say "[ClaytonTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you prepare to be on your way, finishing any pending subjects with Clayton.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ClaytonTalkHimself:
	say "     Even though Cherry told you about the bull, you would rather hear more from Clayton himself, so you mention this to him and ask what else he could tell you. The muscular bovine is obviously happy to entertain you with some chatting, smiling widely at your interest in his personal story. 'Aye, I'm sure Cherry told y'about most stuff. I used to own a farm nearby and made a livin['] out of my herd and crops, sizable one too, though sadly it's now overrun with animals that wanna mount ye as soon as they see ya. But not everythin's bad, I get to tend to Cherry's garden here an'well... [']Tis a good hobby, aye. Though it gets lonely at times. Don['] have many friends apart from the foxy lass...' Clayton lowers his head in a bit of sadness as he says this, but quickly snaps out of it and returns to his cheerful self.";
	say "     'Things could be worse, aye! I could've been turned into one of'em... Gladly I didn't, was just the body an'all, though I ain't sure how I'm gonna be livin['] in normal-sized houses like this. It's not like I don['] like bein['] big, in fact I do, but I'm a bit of a giant and I'm afraid of crushin['] stuff by accident. Plus, I get a lotta thoughts... Heh.' While he mentions having said [']thoughts['], he keeps it at that and turns to silence. You could maybe ask about those another time.";
	if Energy of Clayton is 0:
		now Energy of Clayton is 1;

to say ClaytonTalkThoughts:
	say "     As he mentioned having certain thoughts he was not likely too proud of, you tell him it is okay to share those with you, as it may be helpful to talk about them. Seeing you demonstrating interest in wanting to keep him talking and your openness towards his troubles, he once more smiles and relaxes. 'Yeah, well... Y'know, or at least y'should, what happens when ye get too close to some o'those horny beasts, and if they get the upper hand on ya. I had many cows, great ones I ought t'say, would gimme tons of great milk all the time! Was givin['] lots'a profit, though when it all happened, they transformed and swarmed me when I was least expectin['], along with a bull I had to mate with the girls. Don['] remember much, just that I began to enjoy it a lot...'";
	say "     Clayton then clears his throat and takes a deep breath, pausing as he regathers his mind, though you see the bull's cock twitching for a good while, even having thickened a bit while he was speaking. 'Sorry, uh... as I was sayin['], that... got me into trouble. Lucky me I had my foxy lass friend passin['] by and she drew them away before I got worse. A lil['] bit of comfort was all I needed to get back on track after she rescued me. Didn't know who she was at first until she told me what'd happened to her... Poor gal. But she's tougher than many, so it doesn't come as surprise that she could shrug off the worst of it all.' A smile returns to Clayton's muzzle before he continues to speak.";
	WaitLineBreak;
	say "     'So, I get a lot of thoughts, though ye could guess what kind. Sexual ones, all the time. Guess bein['] lonely makes it worse, only if I had someone...' he then takes another deep breath, 'I can't spend a few hours without rubbing one off... Though I'd gather that might be too much info for ya, so I'll keep it at that. Just havin['] trouble managin['] all o'that, but I'll get through it, I'm sure.'";
	if Energy of Clayton is 1:
		now Energy of Clayton is 2;

to say ClaytonTalkPlans:
	say "     Wondering about the future of the bull, you end up asking him about what plans he has, having been given this place to live in and a lot of free time on his hands. 'Hm, I haven't given much thought on that. Probably one day I'll claim back my farm, I just need to find a way... But until then, I get to tend to Cherry's garden and do whatever comes to mind with stuff I find out there. I don't get out much, though, just enough to get stuff I need to keep goin[']. I like makin['] makeshift stuff, and actually, was tryin'a make a... Well, a device to help me keep stuff with myself a bit more fun, if y'get what I mean... But workin['] with tiny pieces is tricky when you got big hands... So I guess I ain't too good at that. I like plants, and there's a bit of terrain here, so maybe I'll grow some crops... And that I can do better than I could!'";
	say "     You tell him that, perhaps, he should focus on what he likes doing and feels it is reachable as a generic advice, but he thanks you for it. 'Yeah, I appreciate you sayin['] that, and you're right. I'm sure Cherry won't mind if I use up the remaining planters for stuff, and some crops make pretty plants, in my opinion.'";

to say ClaytonTalkSex:
	say "     The bull already mentioned sexual thoughts and other related things that had happened to him, and since he seems so shy to further elaborate on the matter, you let Clayton know you would like him to feel comfortable enough to talk to you about this, as you may be able to help him more. He chuckles, showing himself to be nothing less than pleased upon hearing such words from you, and suddenly seems more open to talk about it. 'Aye, I did wanna talk to y'bout it cuz, well, y'seem like a good [guygal], and that's what's important to me. Makes it feel better an'all... For the both of us. Uh, that is, eh... If ye find me good on the eye, aye?' Before you could even think about a response, he stops himself there. 'Wait, oh! Ye were just wantin['] me to talk about it, not offerin[']! I'm sorry! I, uh, yeah, we can do that instead!'";
	say "     You stay silent, for now, and let the bull talk. 'Hah, silly me! Gettin['] ahead of myself... But, since y'asked, I can tell y'abit [']bout what I like. Which is... Uh... Not anythin['] in specific? I'm into people and their personalities more than their looks, but I like knowin['] I can mak'em happy. So, in any chance that'd sound good to ya, I'd... Well, I'd hope you'd consider goin['] on a date with me or so?' You cannot help but feel flattered that someone would want to date you, rather than just have sex right on spot, but yet again, before you could give him an answer, he adds, 'Oh, doesn't hav'to be in any order, uh... If y'wanna have some fun first I'm all down for that too!'";
	WaitLineBreak;
	say "     At this point, you simply nod and tell him you shall give it some thought, but it appears the bull would be receptive to your moves now.";
	if Libido of Clayton is 0:
		now Libido of Clayton is 1;

Section 3-2 - Clayton Sex

Instead of fucking Clayton:
	if Libido of Clayton is 0:
		say "     Well, certainly you can speak with the big naked bull before moving right into sex? Even though it is quite understandable why one would want to engage in intimate acts with him right away, perhaps speaking to him about it first could lead to a better experience.";
	else:
		if lastfuck of Clayton - turns < 4:
			say "     You make a move on the big bull, wanting to get closer to him and suggest nice ways to spend time together, though, due to how recent your last sexual encounter was, Clayton can only pat your shoulder with a chuckle. 'I appreciate yer enthusiasm, but I've a cooldown, y'know? Gotta wait [']til I got enough juice back in the big boys down there... But come on over in a bit, I'm sure they'll be full again!'";
		else:
			say "     You decide to make a move on the big bull, wanting to get closer to him and suggest nice ways to spend time together. He smiles at you, staying receptive to your approach as his cock begins to twitch immediately.";
			if Libido of Clayton is 1:
				say "     'Ye're sure y'wanna... I'd be really happy if... Uh...' he is about to say something, but you can tell the big bull is a bit embarassed, so you place your hand over the upper side of one of his pecs and tell him everything is fine, then throwing in a compliment about his great physique and really good looks. This is enough to bring a smile on him, and then he continues to speak, 'Aw, ye're really kind... And yer hand feels nice on those... Heh...' He gives you a suggestive look, but you know what you want to do.";
			else if Libido of Clayton > 1:
				say "     'Not gonna lie, but after what we did last time, it got me thinkin[']... Y'could maybe touch me somewhere else, too, if y'wanna...' The bull throws a suggestive glance at you, then downwards, before he continues to speak, 'It's these big boys down here... They've been weighin['] a lot all this time without someone to take care of'em... Would ya do the honors?' Feeling more comfortable around you, the bovine simply lets his body do the work as he his boner keeps growing right in front of you, waiting for your move.";
			LineBreak;
			say "[ClaytonSexMenu]";

to say ClaytonSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Massage his massive pecs";
	now sortorder entry is 1;
	now description entry is "Get your hands on his huge chest";
	[]
	if Libido of Clayton > 1:
		choose a blank row in table of fucking options;
		now title entry is "Worship his heavy balls";
		now sortorder entry is 2;
		now description entry is "Service his massive full nuts";
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
				if (nam is "Massage his massive pecs"):
					say "[ClaytonSexPecs]";
				else if (nam is "Worship his heavy balls"):
					say "[ClaytonSexBalls]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself, Clayton eyeing you with visible disappointment 'Aw... Aye, maybe later then?'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ClaytonSexPecs:
	say "     You let the muscular bovine know that you would like to make use of your time together to massage his huge chest, if he would have it. 'Oh, y'wanna play with these?' he asks as he begins to flex them in turns, making them twitch and bounce before your eyes like heavy, hard boulders of muscle. 'Yeah, I lov'em rubbed and squeezed, especially if y'got good hands! Just be careful around the nips, they're really sensitive...' Taking note of Clayton's words, you place your hands only on the upper part of his pecs and decide to give them a broad rubbing. When you finally manage to complete a circle around the pair of meaty slabs, you realize just how massive they are, and when you try to lift them from underneath, they fill your palms and weigh like two sacks of sand.";
	say "     'Ye like'em? They're really big, feels like I got bigger tits than some women out there!' In fact, he would not be wrong, as this pair of muscular pectorals could probably even crush the hardest of nuts if he would move them inwards, and your hand just sinks in between them when you move it through their inner sides. 'Aye, ye're givin['] me a good rub... Feels really good...' Hearing Clayton's praise, you feel more confident to grab them and squeeze, then move your hands some more around those marvelously sized pecs, which is just making the bull moan. 'O-ooh, fuck... S-sorry, it's just that it feels so nice, y'know...' he says apologetically, but soon returns to the moaning, almost as if he could not help it. You just tell him to relax and let go, if he must.";
	WaitLineBreak;
	say "     By now, his tremendously sized cock is nearly fully hard, bumping against the side of your leg as it continues to throb. 'Aye, if y'say so... Y'won't mind me doin['] this, then...' Clayton then grabs hold of his meat and strokes as you massage his pecs, letting go of yet another deep moan as you give them a tight squeeze. 'Mmh, yeah, do it more like that...' he tells you, and you follow his suggestion, gripping those thick slabs of muscle really hard, then push them around as your fingers dig deep into that furred skin. You have got the bull in pure delight as you practically worship his pecs, feeling up every inch and corner almost as if you were kneading bread, which is exactly how he likes it.";
	say "     Though, so far, you have kept away from his nipples, which seem to puff out more and more the hornier he gets. They look each the size of a slightly larger marble, and seem to be really soft, even standing perky as they are. You so happen to brush the side of your palm against one of them, which is enough to make him give a louder moan. 'Ahh...! Y-y'should be careful with those, I mean it...' You hear him, but decide to do it again, slower this time, but with the intent of making it feel just a little bit more intense. The bull does not tell you anything now, but you see his muzzle flinch and his skull tilting backwards in complete ecstasy as you move your palm back and forth against his nipples.";
	WaitLineBreak;
	say "     'That r-really makes me weak on the knees, friend... Nnh...' You now realize there is nothing to fear about his nipples, Clayton simply likes it so much it overwhelms him in pleasure. You do not want to be too rough here, so you only increase the attention you give to his fleshy nubs very steadily, seeing how much the bull is enjoying this. From a certain point forward, you are practically just playing around with them, twirling your fingers around his nipples. His chest keeps expanding as he breathes in to endure the torturous pleasure you are giving him, but after a while, you begin to feel your hands rather wet... 'Nghh, you made it happen...' he comments as you look at your hands and his nipples, to see something quite out of the ordinary, at least on male individuals. The bull's pecs begin to gush out milk as you continue to stroke them.";
	say "     Though, in days like these, this is not anything shocking at all, so you let the bovine be at ease as you continue to play with his nips. 'Y-yeah, these you can milk... And I wan'ya t'milk'em good...' Those words are all you need to pick up the pace and begin to tug on those nipples, pulling and squeezing them like you would do to a cow's udder. They really start gushing out lots of milk, and it gets more intense the more you keep tugging on them. The view you get is simply astonishing as you stand in front of this huge bull, who is barely holding himself together with the sheer amount of pleasure you are providing him, admiring his towering physique at the same time you press, pinch, knead and pull on his nipples and enormous pecs...";
	WaitLineBreak;
	say "     'A-ah... I-it's gonna make a mess...' he exclaims, but you assure him that it is alright, you would help him clean up after, and it is not like he will be flooding the entire room with his milk either... 'N-no, I mean somethin['] else... Can't hold...!' It is then that you see the huge bovine squirm, moan, grunt and flex all his muscles in a reflex for what is to come, and joining his nipples comes his tremendous cock, except it shoots cum, and quite a lot of it, all across the area he is facing towards. You even fail to keep a grip on his nipples, simply letting your hands rest atop his bulging pecs as his climax endures, enormous spurts of bull juice being splattered one after the other all over the floor, some of it having managed to even hit the wall.";
	say "     As for his chest, the milk only oozes out slowly as his orgasm begins to subside. An exhausted Clayton takes several deep breaths as he returns to himself, slowly climbing down the trip of orgasmic ecstasy as his eyes lazily shift towards you, with a big happy smile drawn across his muzzle. 'Ye made me feel really good...! If y'can make me feel like this with those hands on my chest alone, I only wonder what else ye could do... Hm, maybe somethin['] to consider for next time!' he says, chuckling, 'Now, y'said ye'd help me clean this up, and I'd still take ya on that offer. That's a big mess ye've made me do!' You did say that you would help him, and you do so. Fortunately, Clayton has several cleaning tools you can use to mop up the cum and milk he gushed out all over, so it is not a hard task.";
	WaitLineBreak;
	say "     Once you are finished, the bull thanks you for everything and you stand ready to move on.";
	NPCSexAftermath Clayton receives "Other" from Player;
	if Libido of Clayton is 1:
		now Libido of Clayton is 2;

to say ClaytonSexBalls:
	say "     Weighing your options, you decide to go for those huge balls hanging between his thick furred legs, and as you let the bull know of your decision, he smiles widely. 'Ooh, ye're really doin['] it? That's amazin[']... I'm hopin['] ye're not afraid of usin['] more than just yer hands, though...' His smile turns into a cheeky grin as it becomes clear what he is suggesting, but you are prepared to give them the service they require, so you reciprocate with a nod and a smile of your own as you kneel before the bovine, a sight that already arouses him considerably. The first thing you notice is his huge cock throbbing forward with the antecipation as your head passes by it, but your goal also remains solid.";
	say "     First, and respectfully, you place your hands under the ballsack, already feeling each orb weighing against your palms as you lift them, so large and full that it feels you are holding two bags filled to the brim with some liquid, which... Is quite close enough to the current situation. The whole area shares the same color as his legs, and you are pleased to know that his sack feels really soft to the touch, with only a more pronounced patch of fur in between the testicles that leads back towards his taint. 'Y'like how they feel? I try t'keep'em as nice and smooth as possible [']cuz it feels really good touchin['] them without all the fuzz in the way...' Indeed, your hands feel good feeling up that ballsack, so much that you just kind of not want to stop rubbing them at all.";
	WaitLineBreak;
	say "     The other thing you notice as soon as you get on the same level as his nuts is how much stronger Clayton's scent is. It almost causes you to feel lightheaded due to the pheromone-loaded musk, which really gets your body and mind instinctively lusting after the male bovine. 'What d'ya think? There's probably some mutant with bigger ones, but I think mine ain't so bad.' Confronted with the question and the obvious fascination you are getting for these large balls, you nod in an immediate reflex as you continue to feel them up, sliding your palms and fingers across the entire scrotum to make sure you get every corner from every angle nicely stroked and caressed. 'Heh, judgin['] by yer focus on'em, I'd say y're in love. That's alright, they love ya too.'";
	say "     Clayton chuckles as he sees you so enamored of his huge, heavy and full balls, so marvelous huge they fill your hands as you try to tug on them with your fingers, giving them soft squeezes while bouncing them on your palms, pushing and pulling them about... Then, at some point, you feel a thick and large hand on the back of your skull, moving you closer and closer to the bull's sack, until your face bumps against it. 'Don['] be afraid t'giv'em a kiss, [boygirl]...' he says with a rumbly deep voice as he caresses your head. Like this, you do not really have a choice but to lay your lips on the soft warm surface of the bull's testes and kiss them, something you find out to enjoy doing a lot. It does not take long until you are practically making out with them, tongue and all, wiggling it as you lick his balls all over.";
	WaitLineBreak;
	say "     You definitely notice the bovine's excitement growing as he takes hold of his shaft and begins to stroke, enjoying the sensations you are providing them. Each movement he makes causes his nuts to bounce ever so slightly, sometimes against your face, and the more he strokes, the more they seem to weigh. Eventually, he takes both of his hands to jerk off, drifting away into his own focus of pleasure, and you, too, keep your entire attention centered on his sack. Using your mouth and both your hands, you worship Clayton's scrotum the way it deserves to be serviced, getting every angle, every corner, every inch and even all the way underneath and back. 'Keep worshippin' me, [boygirl]... Y'know you want to...'";
	say "     As the bull picks up the pace, you continue to do what you were doing, except more intensely, trying to fit as much of his balls as you can in your mouth, which is, to say the least, not an easy task, made even harder due to the fact they seem to keep... getting bigger and bigger? As if the bovine was working the load inside those orbs while you continue to worship them, preparing to shoot as much as he can... Perhaps, this is exactly what he, or his body, is doing, all the way until he seems to be nearing the edge. 'Don't stop now, I'm really close...!' he orders, and you dare not to disappoint him, still focused on slobbering all over those huge testicles and leaving no space for any other thoughts in your mind.";
	WaitLineBreak;
	say "     'Mmh... Yeah... Yeah it's comin[']-... OOOh-!' Clayton lets out a grunt as powerful as the cum leaving through his cock, which you definitely feel by the way his balls raise and twitch, pumping that ridiculously huge load up his dick and out as a thick torrent of cum gushing forward like a geyser. The entire floor, and even parts of the wall, he was facing towards is eventually coated in bull jizz as the bovine's long, powerful orgasm endures, to the point you feel his testicles shrinking back to how they were before, still big, but not as massive. Finally, it begins to subside, and Clayton is free to catch his breath as he looks at the mess you have helped him made. 'Oooh, my friend... That was amazin[']...'";
	if Libido of Clayton is 2:
		say "     'Though I made a fuckin['] mess, even greater than last time... Y'know what, I'll take care of it. Ye take yer deserved rest, y've done a great job servicin['] my balls. Hope ye liked yet time down there, heh...?' You tell him you are glad he had fun, and that you enjoyed taking care of him. 'Sometime we gotta take care of ya too. I'm startin['] t'get really comfortable around ya, so we probably could do some more fun stuff in the future. Y've seen some things this bull can do, but not all! And dependin['] on what y'like, we can come up with somethin['] fun for the both of us.' Clayton smiles as he pats your shoulder. 'Aye, gotta clean up now. Make sure ye stop by often!'";
		say "     With the done, you ready yourself to move on as Clayton goes take care of the cleaning.";
		say "     << Author's Note: More to come in the future! For now, feel free to replay Clayton's sex scenes as you wish! >>";
		now Libido of Clayton is 3;
	else:
		say "     'Though I made a fuckin['] mess, cummin['] wildly like that. Y'know what, I'll take care of it. Ye take yer deserved rest, y've done a great job servicin['] my balls. Hope ye liked yet time down there, heh...?' You tell him you are glad he had fun, and that you enjoyed taking care of him. 'That's a good [boygirl]. Love havin['] y'around. Make sure ye stop by often, aye?' With the deed done, you ready yourself to move on as Clayton goes take care of the cleaning.";
	NPCSexAftermath Clayton receives "Other" from Player;

Clayton ends here.
