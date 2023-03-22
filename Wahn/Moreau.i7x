Version 1 of Moreau by Wahn begins here.

"Adds a naga NPC to Flexible Survival"


[ Moreau Background:                                                                     ]
[ Came from humble beginnings (son of a gardener) living in the house of a rich family.  ]
[ Learned hypnosis and then inserted himself into the lives of the upper crust by making ]
[ himself the 'brother' of the employer's son, to 'fix' his low class origin. His        ]
[ manipulation wasn't malicious, just slipping into the spot and being a 'good' son for  ]
[ the other family.                                                                      ]
[                                                                                        ]
[ - has no sense of personal space (will touch people and guide them along for ex.)      ]

[ TODO: establish daily rhythm for Moreau, close the shop at certain times a day         ]



Table of GameCharacterIDs (continued)
object	name
Moreau	"Moreau"

Moreau is a man.
ScaleValue of Moreau is 4. [human+ sized]
Body Weight of Moreau is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Moreau is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Moreau is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Moreau is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Moreau is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Moreau is 7. [length in inches]
Breast Size of Moreau is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Moreau is 0. [count of nipples]
Asshole Depth of Moreau is 16. [inches deep for anal fucking]
Asshole Tightness of Moreau is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Moreau is 1. [number of cocks]
Cock Girth of Moreau is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Moreau is 12. [length in inches]
Ball Count of Moreau is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Moreau is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Moreau is 0. [number of cunts]
Cunt Depth of Moreau is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Moreau is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Moreau is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Moreau is false.
PlayerRomanced of Moreau is false.
PlayerFriended of Moreau is false.
PlayerControlled of Moreau is false.
PlayerFucked of Moreau is false.
OralVirgin of Moreau is false.
Virgin of Moreau is true.
AnalVirgin of Moreau is true.
PenileVirgin of Moreau is false.
SexuallyExperienced of Moreau is true.
TwistedCapacity of Moreau is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Moreau is false. [for now - until there's proper tribe development coded]
MainInfection of Moreau is "Naga".
Description of Moreau is "[MoreauDesc]".
The icon of Moreau is Figure of Moreau_soft_icon.
Conversation of Moreau is { "Pay up!" }.
Moreau is in Body Shop.

the scent of Moreau is "Moreau has a hot, spicy scent that reminds you of exotic places.".

To say MoreauDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Moreau: [HP of Moreau], Libido of Moreau: [Libido of Moreau] <- DEBUG[line break]";
	say "     Moreau is a snake... quite literally so, as most of his body is purely ophidian, going on and on as it slowly tapers. But in addition to that, he does have a waist too - you can see the typical little bulges where the hip-bone are right under the skin, and above that a human-like torso, giving him arms and opposable thumbs. A quick glance down to his crotch reveals that it is smooth and relatively bare, with just a narrow slit between the rows of scales - no telling what might or might not be hidden inside that. The naga bears a truly awe-inspiring set of scales, with vibrant shades of red, orange and yellow making him almost appear like a dragon, complete with a little crest of scale-tips standing up on his broad snake-head.";
	say "     In a sharp contrast to his fiery-colored body, the storekeeper's large eyes are startlingly green, making you freeze where you stand as he notices your attention and focuses his gaze on you in turn. The emerald, slit-pupiled orbs seem like bottomless pools you could stare at forever and lose yourself in... and you almost do, before he turns his head and breaks the stare. Opening his mouth a fraction, the naga tastes the air with his split tongue and then smiles at you, waving you closer with an inviting gesture.";

Instead of fucking Moreau:
	if Affection of Moreau < 2:
		if "Knotted the Player" is listed in Traits of Moreau or "Anton-HypnoFucked Player" is listed in Traits of Moreau or "Anton-HypnoFaceFucked Player" is listed in Traits of Moreau:
			say "     As you approach the naga and offer sex, he puts on a serious expression and shakes his head. 'Despite what happened during our recent... excursion, I do not think this will be a good idea. I am sorry, that would be unprofessional.'";
		else:
			say "     As you approach the naga and offer sex, Moreau raises the scaled ridges above his eyes and gives you an unimpressed look. 'Do you usually offer yourself to people you only recently met? No thank you, I for one am not on par with the wild beasts roaming the streets.' That said, he makes a cutting gesture in the air with his hand, signifying that the topic is over. Maybe you should try talking to him about what interests him and getting to know Moreau first...";
	else if Affection of Moreau >= 2:
		say "     As you approach the naga and offer sex, Moreau raises the scaled ridges above his eyes and a slight smile crosses his face. He lets his gaze roam over your body while his forked tongue flicks out and tastes the air between you. 'While you're certainly a very becoming person,' he says with a smile at you, half-raising a hand to reach out, then pulling it back. 'Right now isn't a good time I'm afraid. I do have the store open, and customers are coming in. It'd be... unprofessional.' With an apologetic sway of his head, the naga slithers to the side a little at this point, actually calling out to welcome someone wandering in through the door, which does prove his point.";


Instead of conversing the Moreau:
	project the figure of Moreau_face_icon;
	if PlayerMet of Moreau is false:
		say "     'Welcome to my store,' the large snake hybrid pushes his lower body up to give you a gracious bow with his humanoid upper body. Then he snakes his way closer before coiling up right in front of where you stand, giving an inviting wave of his arm to indicate the mannequins lined up at the front of the store. 'Did something in the shop windows catch your eye? The offered wares are subject to change, and I do circle through the newer parts for people to have a look at.' You look around at the collection of mannequins, then ask what he actually sells. 'Why, bodies of course. Everything about them. The signage and name of the store are quite clear, are they not? Come, let me show you.' Miming you to walk over to the next bunch of mannequins, the ophidian storekeeper keeps up with your steps in a smooth glide of his scales on the tiled floor, stopping before the display models.";
		say "     'The world is in flux, down to literally the body you have - but many, oh so very many of people are dissatisfied with their adopted shapes. Maybe they were forced to shift, or couldn't help but succumb into it, and now they feel like they deserve... better. I offer this service, for a price.' Smiling at you, he then turns to stare directly at a mannequin displaying some characteristics of anthro gryphon. It appears somewhat eerie, as if one had switched body parts to make a hybrid creature, part alive and part plastic. While the showpiece's head is that of an almost featureless doll, with a plastic-y sheen and not even a mouth and nostrils, the rest of it is a perfect depiction a real anthro gryphon, its body detailing everything exactly, from the tips of the clawed digitigrade feet, up over a hermaphrodite's set of cock, balls and even the slit of a moist pussy. The pair of wings behind its back have individual feathers. It does not move, not even a little, or breathe.";
		WaitLineBreak;
		say "     Giving you a sidelong glance that tells you he loves showing off, Moreau crooks his finger a little at the mannequin - and the human-sized doll instantly reacts, walking over to come stand before you with startling suddenness. As it comes to stand in front of you in an 'at rest' position, you can't help but gulp and glance around. Ten, fifteen, twenty, twenty-six, -seven, -eight... there are about thirty of those things in here, which makes you feel less like on a shopping trip and more like standing in the midst of a pride of lions. 'Do not be concerned, my assistants are perfectly well behaved. Watch this one for example,' Moreau says, amusement underlying his voice as he puts the gryphon doll through its paces, spinning around slowly, stretching and showing off the details of its shape.";
		say "     Once he is satisfied with the mannequin, Moreau sends it back to the original position and turns back to you. 'I can offer the service of giving people what they want. And even more than that - I give a warranty. No more losing what you so dearly desired, you understand,' the snake tells you in a quite smooth-talking voice, guiding you in a tour through the store, past numerous of the motionless living dolls. While you walk, your gaze falls upon a treasure-trove of supplies stacked up in the back. He must have weeks forth of food and water there! Curiosity drives you to check it out from up close, but after a few steps, the naga's hand slides under your arm and gently but firmly tugs you back to his tour. Then you notice that every last one of the mannequins in the whole store turned their head towards you when you came close to the supplies. They quickly take their positions again, but you can't help but shiver a little from so many featureless faces staring at you.";
		WaitLineBreak;
		say "     Finally arriving back where you started after having shown off all sorts of creature parts you never even knew existed, Moreau smiles and shows his forked tongue for a second. 'As you can see, I do have much to offer. It depends a bit on what people sell to me, so be sure to get anything you desire immediately, so it is not sold out by the time you return. You will find the prices very reasonable for this unique service...'";
		now PlayerMet of Moreau is true;
		increase HP of Moreau by 1; [got his initial spiel]
		increase Affection of Moreau by 1;
	else:
		MoreauTalkMenu;

to MoreauTalkMenu:
	let DoneTalking be false;
	LineBreak;
	say "What do you want to talk with Moreau about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (FirstMannequinTalk is 0 or (FirstMannequinTalk is 1 and "Mannequin" is not listed in EncounteredEnemies of Player)):
		choose a blank row in table of fucking options;
		now title entry is "Ask about the mannequins";
		now sortorder entry is 1;
		now description entry is "Try to learn about his store";
	[]
	if (FirstMannequinTalk is 1 and "Mannequin" is listed in EncounteredEnemies of Player):
		choose a blank row in table of fucking options;
		now title entry is "Ask for the truth about the mannequins";
		now sortorder entry is 2;
		now description entry is "Press the shopkeeper for the truth";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if buying body parts is really worth it";
	now sortorder entry is 3;
	now description entry is "You'll still be able to lose them, right";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sell something";
	now sortorder entry is 4;
	now description entry is "Let him take part of you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Buy something";
	now sortorder entry is 5;
	now description entry is "Ask to buy some feature to change on your body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about hypnosis";
	now sortorder entry is 50;
	now description entry is "Chat with the naga about the topic";
	[]
	if Resolution of Anton's Intro is 1 or Resolution of Anton's Intro is 2: [player was hypno'd and fucked, but forgot about it]
		choose a blank row in table of fucking options;
		now title entry is "Ask about retrieving memories";
		now sortorder entry is 51;
		now description entry is "Get the naga's opinion on the topic";
	[]
	if Resolution of Anton's Intro is 3: [Moreau has offered to hypnotize the player]
		choose a blank row in table of fucking options;
		now title entry is "Let him hypnotize you to retrieve some memories";
		now sortorder entry is 52;
		now description entry is "Trust Moreau to help you remember";
	[]
	if Resolution of Anton's Intro is 4: [primed for total recall]
		choose a blank row in table of fucking options;
		now title entry is "Talk to him about his offer of reliving what happened";
		now sortorder entry is 53;
		now description entry is "Discuss if you want to go through with it, or change your mind";
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
				if nam is:
				-- "Ask about the mannequins":
					say "[MoreauTalk1]";
				-- "Ask for the truth about the mannequins":
					say "[MoreauTalk2]";
				-- "Ask if buying body parts is really worth it":
					say "[MoreauTalk3]";
				-- "Sell something":
					say "[MoreauPartSale]";
					now DoneTalking is true;
				-- "Buy something":
					say "[MoreauPartBuy]";
					now DoneTalking is true;
				-- "Ask about hypnosis":
					say "[MoreauHypnoBaseTalk]";
					now DoneTalking is true;
				-- "Ask about retrieving memories":
					say "[MoreauHypnoMemoryTalk]";
				-- "Let him hypnotize you to retrieve some memories":
					say "[MoreauHypnoMemoryRetrieval]";
					now DoneTalking is true;
				-- "Talk to him about his offer of reliving what happened":
					say "[MoreauHypnoTrip]";
					now DoneTalking is true;
				if DoneTalking is false:
					MoreauTalkMenu; [looping back to continue talking]
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;


to say MoreauTalk1: [mannequins not seen]
	say "     Deciding you'd like to know a bit more about Moreau's store and how it came to be, you gesture to some of the mannequins nearby, asking the shopkeeper about their origins.";
	say "     His grin seems to indicate to you that he's been asked this question many times before, and the smooth and practiced way he starts to talk tells you you're probably right. 'Ah, yes. They are quite interesting, are they not? When this all started, seeing all the changes happening around this city had started to give me some vague ideas along the lines of this shop, but it wasn't until I stumbled on a discarded mannequin on the side of the road that those ideas really clicked together. And so I came here, where I knew there might be those who would be interested in body changing services. With a bit of my own [italic type]special[roman type] talent I was able to gather the mannequins you see here and have them serve my purposes. The process took some refining, but I think the result has been well worth it all.'";
	say "     Satisfied, you nod and smile to him in thanks for the explanation, returning to looking around the store. Some part of you can't help but feel there might be more to the story, though...";
	now FirstMannequinTalk is 1;

to say MoreauTalk2: [mannequins seen, asked about them once]
	say "     Recognizing the mannequins around the store from your travels around the city and feeling you know what the snake might be leaving out of his story, you choose to press Moreau to tell you where exactly they came from.";
	say "     With your confrontational posture and the skeptical look on your face, the shopkeeper seems to recognize that you've seen the roaming mannequins and he lets out a sigh, gesturing you to follow him toward the back of the store before answering in a hushed voice. 'I can tell what you're really asking, and thinking. And no, I did not lie to you before, I simply left some of the finer details out as I always do when people ask me about them. I do not wish to frighten away my customers after all.' He gives you a smile at that, which was probably meant to be reassuring, but ends up a little more sinister. You nod to him, gesturing for him to continue talking.";
	say "     After a quick glance around the store to make sure no one is approaching, he continues. 'As you probably guessed, the mannequin I found was one of the animate ones this event has created. I fought and defeated it, and nearly left it there, until the idea of this shop occurred to me. I do have certain... powers of persuasion, which I used to bring the mannequin under my control. Having seen what they do to those they defeat, I saw it as a public service to collect a number and take them out of roaming the streets. After the first two or three, it became easier, with the previous ones to hold down the next. So yes, my mannequins are from out in the city. Perhaps they were once people, but there was no way for me or anyone else to tell. I've harmed no one, and they're all completely under my control. Does that satisfy you?'";
	WaitLineBreak;
	say "     Considering what else has been happening in this warped city and how this seems to be one of the more benign and overall harmless, if still unsettling, things you've seen, you nod to him with a sigh. He nods with a smile, visibly relaxing as his tongue flicks out at the air. 'Good. Now that your curiosity is satisfied, perhaps you'd like to look around the shop and see if anything catches your eye?' Telling him that you will, you step away, returning to looking around the store.";
	if "Mannequin_Truth" is not listed in Traits of Moreau:
		TraitGain "Mannequin_Truth" for Moreau;
		increase Affection of Moreau by 1;

to say MoreauTalk3: [ask if buying is worth it if you just keep changing]
	say "     Moreau gives you a winning smile as you ask your question, snaking his way to a nearby mannequin and pointing out its physical features. 'Ah, I can assure you that anything you might want to pick will be quite worth the investment. Not only are the physical characteristics that I offer very specific in their nature, rather than the random chance you might have out on the streets, but I can also offer a bit of permanence for them. There are some little tricks in my repertoire that will help ensure it.' The naga's forked tongue flicks out of his mouth as he focuses on you intensely, eager to make a deal. 'Of course, if you should wish to change again afterwards, I can also take off the 'body part guarantee' again. Just return and sell the part back to me and you will be as changeable as before.'";
	if "Part Guarantee" is not listed in Traits of Moreau:
		TraitGain "Part Guarantee" for Moreau;
		increase Affection of Moreau by 1;

[ Hypno Event Stuff ]


to say MoreauHypnoBaseTalk: [intro talk option to kick off the chain]
	say "     As you bring up the topic of hypnosis, Moreau gives a little chuckle and shakes his head. 'You know, an extraordinary number of people have asked me questions about it since I came here. Couldn't help wonder why, given that nagas aren't exactly... common, hereabouts.' Raising an eyebrow as he looks at you, he then gives a little wave with the tip of his tail towards the other side of the mall wing outside. 'A helpful mallrat eventually clued me in, apparently there's a [']classic['] cartoon that contains a giant snake with hypnotic powers. He even showed me the scene, over in the CubeBuster store. I guess that the immoral beast tried to eat a little kid just kinda led to it sticking in people's heads and giving anyone with scales a reputation.' Spreading his arms and letting out a sigh, he shakes his head in exasperation.";
	say "     'But yes, I do have a certain power over persuasion. It is useful in various ways, but I have never used it to entrance and eat anyone. No, that would be monstrous.' As he says this with his tone rising a little at the end, Moreau gives you a firm look, hood flaring outwards a little as he gets somewhat animated about the topic. From the corner of your eye, you can see the tip of his tail stop its normal slow movement, being held still and stiff. You raise your hands defensively, telling him to calm down, then add that you simply wanted to talk about the topic with him. The snake hybrid's eyes widen slightly and the hint of a smile flickers over his mouth, followed by a nod to you. 'Ah, okay - my apologies. I guess I've just become a bit sensitive about the matter. Anyways, there's various ways of hypnotic influence...' With that, he starts a nice little discussion with you about what can be done, and what not. For example, a skilled practitioner might make someone under the influence believe all kinds of things, or unearth memories they had suppressed.";
	WaitLineBreak;
	say "     Your discussion is an interesting back and forth about the topic, which leaves you much more informed. At one point, you wonder aloud how one would know if they have been hypnotized. Moreau looks at you, swaying his head left and right a little before replying, 'If I did it? You would not even think about it. Never realize that anything happened at all.' His forked tongue flicks out and there is a slight hissing sound, which you realize a second later as a chuckle. Gracefully shrugging his slender shoulders, the naga creates a sweeping motion as if to clear the air, then continues to say, 'Amateurs on the other hand will leave... inconsistencies, open ends to their influence. The mind is a complex thing, and will start to chafe against those inconsistencies, getting irritated. An affected person will know [italic type]something[roman type] is off, without necessarily being able to put their finger on what exactly it is. Going in circles like that might drive weak-willed people mad.'";
	say "     The two of you continue talking for a while longer after that, but eventually, Moreau has to go excuse himself to go deal with a customer.";
	if "Moreau Hypno Base Talk" is not listed in Traits of Moreau:
		TraitGain "Moreau Hypno Base Talk" for Moreau;
		AffectionGain 1 for Moreau;

Table of GameEventIDs (continued)
Object	Name
Anton's Intro	"Anton's Intro"

Anton's Intro is a situation.
ResolveFunction of Anton's Intro is "[ResolveEvent Anton's Intro]".
Sarea of Anton's Intro is "Nowhere".

after going to Smith Haven Mall Lot South while (Anton's Intro is not resolved and Daytimer is day and PlayerMet of Anton is false and PlayerMet of Moreau is true and "Moreau Hypno Base Talk" is listed in Traits of Moreau and LastFuck of Anton - turns > 8 and a random chance of 1 in 2 succeeds):
	say "[ResolveEvent Anton's Intro]";

to say ResolveEvent Anton's Intro:
	if Player is male:
		say "     As you direct your steps towards the southern parking lot of the mall, you have to follow a sometimes lengthy route past countless abandoned cars, many of them clumped together in pileups from when people were fleeing - or arriving - in total panic during the first hours of the nanite apocalypse. Shopping carts are scattered all over the place too, often thrown on their sides, which isn't a big surprise now that there is no one left to collect them. Just as you step past a massive, crusty patch of dried cum and the associated scraps of clothing from maybe half a dozen people, you notice a really bright spot of color from the corner of your eyes. Looking over that way, you see someone standing near the roadside entrance of the lot, a fairly tall and colorful anthro bird that looks surprisingly muscular for an avian. His broad-shouldered chest is covered in a tight, lime-green muscle shirt, with arm-holes large enough to allow his feathered forearms through. Deep blue plumage covers the visible bits of his chest and his neck and head.";
		say "     Keeping your attention on the guy for a moment as you continue walking, you see that he's also wearing a pair of black jeans, as well as a really long tail of iridescent green feathers, gleaming bright in the sunlight. The guy's an anthro peacock! He waves with a feathered arm to flag you down, showing a friendly smile with the somewhat flexible beak that the nanite infection is giving bird-morphs. ";
		if "Peacock" is listed in EncounteredEnemies of Player: [already fought one]
			say "Thinking back to the last peacock you fought, you remember that concentrating on those pretty colors of the tail poses a significant danger to those that are not cautious. Something to keep in mind, for sure. Especially right here, in the open sunlight, which should likely enhance the feather's effect even more as compared to the more shaded areas between high sky-scrapers. Of course, this dude doesn't seem like a run of the mill peacock either, being more muscular and seeming to be relatively friendly. ";
		else if Peacocked is 1: [met and was open to Dmitri before]
			say "Thinking back to that other friendly peacock you met in the high rise district, you remember the amazing and pretty displays he did show you with his feathers, and how nice that made you feel. Somehow you can't help but wonder if this guy will be the same. Here in the open, with sunlight playing over the feathers, it'll surely be an amazing show! ";
		else if Peacocked > 1 and Peacocked < 99: [met and was open to Dmitri before]
			say "Thinking back to your peacock friend Dmitri, you remember the amazing and pretty displays he could always show you with his feathers, and how nice that made you feel. Somehow you can't help but wonder if this guy will be the same. Here in the open, with sunlight playing over the feathers, it'll surely be an amazing show! ";
		else if Peacocked is 99: [rejected Dmitri before]
			say "Thinking back to meeting that one somehow sketchy peacock guy in the high rise district, you remember him flashing his feathers at you, making you feel all funny. Here and now, with the bright sunlight dancing over his plumage, that effect will likely be greatly enhanced! ";
		say "'Hello there, nice to meet you. I'm Anton. Got a moment to talk?' the bird calls out to you in a full, charming voice, tail-feathers twitching a little behind his back as he turns head-on to face you.";
		LineBreak;
		say "     [bold type]How do you react?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Walk up to him and chat. He seems nice.";
		say "     [link](2)[as]2[end link] - Keep your distance and call back to ask what you wants.";
		say "     [link](3)[as]3[end link] - Turn away and avoid him. Best to be cautious.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to walk up and chat, [link]2[end link] to keep some distance, [link]3[end link] to avoid him.";
		if calcnumber is 1: [talk to him]
			LineBreak;
			say "     Calling back a friendly greeting and introducing yourself, you approach the large avian anthro, who smiles, then offers you a firm handshake. 'It's so difficult to have a civil conversation with people these days,' the peacock says cheerfully, then waves a hand to indicate your surroundings. 'Haven't been around this area since all this craziness started, so I wanted to get some info from a local. Could you tell me what's going on hereabouts?' As you start to reply, the bird casually ruffles his tail-feathers, lifting and spreading them. With the light of the sun shining brightly on the impressive fan of plumage, most of your field of view is filled with brilliant rainbow colors. It is a beautiful and awe-inspiring backdrop to the moderately long conversation that follows between the two of you, during which you lay out the important highlights of the mall's surroundings, dangerous creatures roaming about nearby, and so on.";
			say "     Eventually, Anton has heard enough, with him giving your arm a friendly pat. 'Thanks a lot for being so helpful. It truly was a pleasure to make your acquaintance. Too bad phones are down in our current situation, or I might just ask you for your number, haha! Oh well, I'll stay around for a while, hopefully we'll run into each other again, eh?' You reply with a suitable goodbye, following the peacock with your gaze as he walks away. Standing where you are for some minutes afterwards, your thoughts continue to be filled by just how nice and friendly Anton was, and how much you're looking forward to seeing him again. At some point after that though, you do become vaguely aware of something feeling a bit odd about your person. [if Player is not naked]Patting your clothes and gear, it all seems just slightly off, as if you had dressed in haste. [else]Patting your gear, it all seems just slightly off, as if you had thrown it on in haste. [end if]Beyond that, you do appear a bit winded and tired, without knowing why really.";
			WaitLineBreak;
			say "     Trying to make sense of these strange inconsistencies, you think back a little further, to the discussion you had with Anton. You're absolutely certain it was a pleasant chat, but beyond that... the details somehow seem to elude you right now. You couldn't just have forgotten it, could you? How very odd. [bold type]A fleeting thought flickers up in your head for a second, with you remembering people retrieving seemingly forgotten memories through hypnosis - but then, you don't really need to do that, do you? [roman type]You can just ask Anton the next time you meet up!";
			now LastFuck of Anton is turns;
			now PlayerMet of Anton is true;
			now PlayerFucked of Anton is true;
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				TraitGain "Took Player Cherry" for Anton;
			if number of entries in companionList of Player is 1: [one companion with the Player]
				TraitGain "Companion Sent Away" for Anton;
			else if number of entries in companionList of Player > 1: [more than one companion with the player]
				TraitGain "Companions Sent Away" for Anton;
			now Resolution of Anton's Intro is 1; [open approach - hypno'd]
		else if calcnumber is 2: [keep some distance]
			LineBreak;
			say "     You take a few steps towards the large avian anthro, but then stop at a suitable distance. He smiles nonetheless, giving you a wave and understanding nod as you introduce yourself and ask what he wants. 'I can understand why you're cautious. Things have gotten pretty rough out on the streets recently, eh? Well, I'm just glad you wanna talk. It's so difficult to have a civil conversation with people these days.' The peacock says in an open and friendly voice, then waves a hand to indicate your surroundings and taking a step or two forward. 'Haven't been around this area since all this craziness started, so I wanted to get some info from a local. Could you tell me what's going on hereabouts?' As you start to reply, the bird casually ruffles his tail-feathers, lifting and spreading them. With the light of the sun shining brightly on the impressive fan of plumage, most of your field of view is filled with brilliant rainbow colors.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Wow, that's pretty! Keep talking to the friendly bird.";
			say "     ([link]N[as]n[end link]) - Something is off about this! Quickly look aside and get away.";
			if Player consents: [go after them]
				LineBreak;
				say "     His tail is a beautiful and awe-inspiring backdrop to the moderately long conversation that follows between the two of you, during which you lay out the important highlights of the mall's surroundings, dangerous creatures roaming about nearby, and so on. Eventually, Anton has heard enough, with him giving you a nod accompanied by a flourish of his feathered arm. 'Thanks a lot for being so helpful. It truly was a pleasure to make your acquaintance. Too bad phones are down in our current situation, or I might just ask you for your number, haha! Oh well, I'll stay around for a while, hopefully we'll run into each other again, eh?' You reply with a suitable goodbye, following the peacock with your gaze as he walks away. Standing where you are for some minutes afterwards, your thoughts continue to be filled by just how nice and friendly Anton was, and how much you're looking forward to seeing him again. At some point after that though, you do become vaguely aware of something feeling a bit odd about your person. [if Player is not naked]Patting your clothes and gear, it all seems just slightly off, as if you had dressed in haste. [else]Patting your gear, it all seems just slightly off, as if you had thrown it on in haste. [end if]Beyond that, you do appear a bit winded and tired, without knowing why really.";
				WaitLineBreak;
				say "     Trying to make sense of these strange inconsistencies, you think back a little further, to the discussion you had with Anton. You're absolutely certain it was a pleasant chat, but beyond that... the details somehow seem to elude you right now. You couldn't just have forgotten it, could you? How very odd. [bold type]A fleeting thought flickers up in your head for a second, with you remembering people retrieving seemingly forgotten memories through hypnosis - but then, you don't really need to do that, do you? [roman type]You can just ask Anton the next time you meet up!";
				now LastFuck of Anton is turns;
				now PlayerMet of Anton is true;
				now PlayerFucked of Anton is true;
				if AnalVirgin of Player is true:
					now AnalVirgin of Player is false;
					TraitGain "Took Player Cherry" for Anton;
				if number of entries in companionList of Player is 1: [one companion with the Player]
					TraitGain "Companion Sent Away" for Anton;
				else if number of entries in companionList of Player > 1: [more than one companion with the player]
					TraitGain "Companions Sent Away" for Anton;
				now Resolution of Anton's Intro is 2; [careful approach - hypno'd anyways]
			else:
				LineBreak;
				say "     Turning your head to avoid looking at the colorfully feathered avian, you quickly gain some distance. He calls after you once or twice, saying, 'Where are you going? Hey, I just wanted to talk!' but does seem to give up eventually, leaving you free to continue on your way. While you can't help but wonder what else he wanted, maybe it was for the best that you did avoid this bird.";
				now Resolution of Anton's Intro is 100; [skipped]
		else: [avoid him]
			LineBreak;
			say "     Turning your head to avoid looking at the colorfully feathered avian, you continue walking the way you were going before. He calls after you once or twice, saying, 'Where are you going? Hey, I just wanted to talk!' but does seem to give up eventually, leaving you free to continue on your way. While you can't help but wonder what he wanted, maybe it was for the best that you did avoid this bird.";
			now Resolution of Anton's Intro is 100; [skipped]
		now Anton's Intro is resolved;
	else: [not interested in those that are not male]
		say "     As you direct your steps towards the southern parking lot of the mall, you have to follow a sometimes lengthy route past countless abandoned cars, many of them clumped together in pileups from when people were fleeing - or arriving - in total panic during the first hours of the nanite apocalypse. Shopping carts are scattered all over the place too, often thrown on their sides, which isn't a big surprise now that there is no one left to collect them. Just as you step past a massive, crusty patch of dried cum and the associated scraps of clothing from maybe half a dozen people, you notice a really bright spot of color from the corner of your eyes. Looking over that way, you see someone standing near the roadside entrance of the lot, a fairly tall and colorful anthro bird that looks surprisingly muscular for an avian. His broad-shouldered chest is covered in a tight, lime-green muscle shirt, with arm-holes large enough to allow his feathered forearms through. Deep blue plumage covers the visible bits of his chest and his neck and head.";
		say "     Keeping your attention on the guy for a moment as you continue walking, you see that he's also wearing a pair of black jeans, as well as a really long tail of iridescent green feathers, gleaming bright in the sunlight. The guy's an anthro peacock! He seems to be studying you from where he's standing, then gives a visible shrug and steps back, turning around and walking off. Almost seems like he was disappointed or something when he got a better look at you.";
		LineBreak;
		say "     [bold type]How do you react?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Wonder what it might have put him off. Maybe you'll see him again in the future.";
		say "     [link](2)[as]2[end link] - Shrug and forget about him. You bet he's some sort of creep anyways!";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to think about the future, or [link]2[end link] forget about him.";
		if calcnumber is 1:
			LineBreak;
			say "     Watching the brightly colored avian leave, too far away to call after him or catch up, you start wondering what it was that made him leave. He was standing there in the sunshine, looking out across the parking lot, and was following you with his gaze at first. Then a moment later, when you were about... here ...he seems to have decided otherwise and made the choice to leave. Looking over to your relative positions, you realize that it was the first time there weren't any cars between the two of you, allowing for a full view of your form. Somehow, remembering the almost rainbow colors of the muscular bird, you can't help but wonder if that might have been because you've got a distinct lack of male parts down below. Could it be that the peacock is gay?";
			LineBreak;
			say "     [link](1)[as]1[end link] - Maybe he'll be back tomorrow or so, and you could see if he's more open to a male perhaps?";
			say "     [link](2)[as]2[end link] - That's his problem. You're not gonna change, and if he's that shallow...";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 2:
				say "Choice? (1-2)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to hope to see him again, or [link]2[end link] forget about him.";
			if calcnumber is 1:
				LineBreak;
				say "     You look in the direction where the peacock was, but he's long gone by now. Surely, he'd have been an interesting person to talk to, so you hope he might come by another day. And given the ever-present transformation nanites, it shouldn't be that hard to change your gender before then...";
			else if calcnumber is 2:
				LineBreak;
				say "     Shrugging, you look in the direction where the peacock was, but he's long gone by now. If he doesn't even want to talk to you, then fuck him. You're certainly not going to waste one minute wondering what the asshole thought.";
				now Anton's Intro is resolved;
				now Resolution of Anton's Intro is 100; [skipped]
		else if calcnumber is 2:
			LineBreak;
			say "     Watching the brightly colored avian leave, you shrug to yourself. If he doesn't even want to talk to you, then fuck him. You're certainly not going to waste one minute wondering what the asshole thought.";
			now Anton's Intro is resolved;
			now Resolution of Anton's Intro is 100; [skipped]
		now LastFuck of Anton is turns; [not actually fucked, just using this variable to save the turn]

to say MoreauHypnoMemoryTalk:
	say "     Bringing up the topic of hypnosis and what he told you before about unearthing forgotten memories, Moreau moves his snake-like body closer, tilting his head a little as he studies you. His forked tongue flicks out of his mouth for the blink of an eye, as if tasting the air between you, followed by his eyebrow-ridges rising a little. Then he bends his hooded head in a nod and says, 'Yes, that can be indeed be done, although like I said before, it requires a skilled practitioner to tickle out the actual truth. Why are you interested in this, if I may ask?' Opening your mouth to explain your encounter outside of the mall, you find this quite difficult, as the peacock's name almost seems [italic type]slippery[roman type] in your mind, out of reach and unavailable when you try to speak it. Moreau waits patiently, with his green, slitted eyes watching with interest. Finally, you exclaim that you met [']someone['], out in the parking lot, but you cannot recall any exact details of the encounter, or even the person's name, only that you talked with him and it was [']nice['].";
	if Lastfuck of Anton - turns < 3: [within 2 turns after the encounter]
		say "     Straightening his upper body, the male naga asks, 'Would this be the same person you had sex with? A man, from what I can tell? Avian, to be specific.' You blink in surprise and bewilderment, answering that you don't recall doing such a thing. 'Someone's scent is all over you,' he adds in a conversational tone, then snakes forward, circling around you and flicking his tongue several times in quick succession. When he arrives back before you, face to face, you're standing in a ring of Moreau's coils. 'It is strongest on the back side, by the way.' Almost unable to believe his words, you reach behind you and feel your rear end, fingers encountering... something as you near your crack. Your mind becomes foggy as you try to think of what it might be, without much success, and as you pull your hand out to look at it, you can't see anything odd on it. 'Ah, let me help you with that. Instructions can be subverted, you know,' Moreau says, then meets your gaze, his large emerald green eyes drawing you in. Then he says in a calm tone, 'You must have sat down on someone's lunch accidentally. There's... blueberry jam all over your rear.'";
		WaitLineBreak;
		say "     As the naga breaks the connection, you realize that there is something sticky and clinging on your fingers after all, somewhat pale and almost white, which seems odd for jam, but then... that's just what it is, right?! Returning to explore your rear end, there's a lot more of that goop, and when you brush against your hole, it seems somewhat sore and strained. How could you not have noticed that? ";
		if "Took Player Cherry" is listed in Traits of Anton:
			say "Especially since you are an anal virgin, or aren't you, anymore?! ";
		say "As shock dominates your features when the realization hits that something sexual did indeed happen to you, the naga gives an understanding nod, then snakes off to the side to give you a moment to compose yourself.";
		WaitLineBreak;
		say "     He returns a little while later, flanked by one of the mannequins holding a serving tray. On it is a bottle of whiskey and two glasses, which Moreau fills with a shot of the amber liquid, then offers you one. ";
	else:
		say "     ";
	say "'It does appear you were influenced. Against your wishes, most likely.' Looking at you with his intensely green eyes, he then raises two fingers on his right hand and nods to them. 'Two things are certain about this. The one who did it is fairly strong, as you can barely remember anything, or even say their name.' Then he folds away the first finger, and taps the second, then shakes his head in what almost appears to be offended professionalism. 'But they are also sloppy. If it was done with greater skill, you would never had an inkling of anything happening. None of these inconsistencies that an intelligent person can unravel on their own, far enough to come to me and want to learn more. If you wish, I can do just that.'";
	now Resolution of Anton's Intro is 3;

to say MoreauHypnoMemoryRetrieval:
	say "     As you ask Moreau to hypnotize you, the naga straightens his upper body and gives you a friendly smile. Vibrantly-colored scales ripple as his already impressive hood spreads a little further, and the large reptile flicks out his tongue to taste the air around you. While you're being studied by him, your mind flashes back to the event that kicked off this train of discussion with the naga, meeting that... whoever he was out in the parking lot, and not being able to clearly remember most of it. You mentally flail against the block in your thoughts, a futile effort that frustrates you more than it does anything to help. Getting a professional to intervene really is the best choice here. Moreau nods as he sees your expression, then says, 'Okay - I can hypnotize you if that is what you wish. But what exactly is it that you are asking me to do?' He casually brushes his hand along the raised curve of his tail, looking at you with the brow-ridge over his left eye raised.";
	LineBreak;
	say "     [bold type]What do you ask of him?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - You want to learn the truth about what happened. Everything!";
	say "     [link](2)[as]2[end link] - Some de-programming work should be enough. You just don't want to have any hidden triggers waiting to surprise you.";
	say "     [link](3)[as]3[end link] - You don't want to remember what happened at all. Better to just wipe the whole encounter away completely!";
	say "     [link](4)[as]4[end link] - You changed your mind, no more of this! One person messing with your head is enough.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to learn everything, [link]2[end link] to get de-programmed, [link]3[end link] to have him wipe Anton from your memory, or [link]4[end link] to change your mind.";
	if calcnumber is 1:
		LineBreak;
		say "     As you tell Moreau that you can't stand not knowing what went on, the naga nods sagely. 'Yes, I recognize your issue with this. It is the mental equivalent of a phantom limb - knowing that there should be something there, but being unable to reach it. The feeling of being incomplete can grind away at the one suffering from it.' Crossing his arms, he shakes his hooded head and scoffs. 'The one who influenced you being so sloppy offends me. No true practitioner would leave someone incomplete, and ready to unravel. Let us fix that!' Having said those words, Moreau begins to coil himself around you, wrapping his serpentine body around yours. His scales feel smooth, flexible and surprisingly warm as they press against your skin. Soon, you're completely wrapped by him, with the naga bending his upper body over you, one hand reaching out for your chin to raise it. As your eyes meet his slitted, vibrant green gaze, you see the slits of the naga's eyes narrow to a razor-sharp slice, while his hood flares outwards dramatically. Moreau's gaze pierces your mind almost effortlessly at its weakest point, like a fencing foil in the hands of a master duelist.";
		say "     .";
		say "     .";
		say "     .";
		WaitLineBreak;
		say "     Blinking, you find yourself still gazing deep into the naga's eyes, although they don't seem as intense right now. 'I have to give it to him that he is very powerful. You literally [italic type]can not[roman type] pass information on to others, verbally or in writing, and apparently do not consciously recall it yourself outside of his presence. Revealing what truly happened will require a workaround.' Moreau loosens his coils, releasing you from his hold and slithering aside, a thoughtful expression on his face. He taps the side of his snout a few times while moving side to side, then turns back to you. 'I think I have got a loophole to exploit for this case. You can't recount what happened, but you could... relive it, and then remember that. I propose that you and me could go outside into the parking lot, and I [']turn back the clock['] in your mind, then slip into the role of your [']nice friend['].'";
		say "     Watching your reaction to his proposal, Moreau raises a hand before you can say anything, then adds, 'I am aware that this might fill you with trepidation, but I am afraid it might be the only way to regain all the details of what you were involved in. Embarking on a path with unknown destination should not be done lightly, though maybe I can take some of the dread from it. I would be with you, guiding your every step, and I can assure you that [italic type]I do have morals[roman type], so I will provide a safe-word to break off completely whenever you might become uncomfortable. And maybe a second one, to [']skip['] reliving something objectionable. Be aware that this might lead to some lost details though. Whatever you decide, I am willing to see this through until the end.' With that said, the naga looks at one of the mannequins in the back of the shop and snaps his fingers. 'I'll leave you to contemplate this in peace. Here, have a refreshment on me while you do.' The mannequin he called arrives with a bottle of soda that it holds out to you, while Moreau slithers away.";
		WaitLineBreak;
		ItemGain soda by 1;
		say "     Being waited on by a faceless doll under the naga's complete mental control does put some doubts in your head. You really only met Moreau a short while ago, and while he seems friendly, do you really want to give yourself into his power willingly? Of course, this could very well be the only way to get back any knowledge at all about what happened to you, out there.";
		now Resolution of Anton's Intro is 4; [primed for total recall]
	else if calcnumber is 2:
		say "[MoreauDeprogramming]";
	else if calcnumber is 3:
		say "[MoreauMemoryCleanup]";
	else if calcnumber is 4:
		LineBreak;
		say "     'As you wish,' Moreau says calmly in his sibilant voice, spreading both arms in a half-shrugging gesture. After another flick of his forked tongue, the naga straightens his upper body and adds, 'Can I help you in some other way? I do have some attractive new shapes for sale...' He points out some mannequins standing near the walls of his shop and smiles, then leaves you to think about what you want to do.";

to say MoreauDeprogramming:
	LineBreak;
	say "     As you tell Moreau that you don't want to be surprised by any hidden commands that might have been left in your mind, the naga nods sagely. 'Yes, that is a possible issue indeed. A somewhat more refined technique, so I do have my doubts if your assailant was capable of it, but... maybe his skills were more advanced in this area. So, starting from the moment that you started talking to... the one you met, how much time passed before you remember other things, in full clarity I mean. An hour? Two? Good.' Having said those words, Moreau begins to coil himself around you, wrapping his serpentine body around yours. His scales feel smooth, flexible and surprisingly warm as they press against your skin. Soon, you're completely wrapped by him, with the naga bending his upper body over you, one hand reaching out for your chin to raise it. As your eyes meet his slitted, vibrant green gaze, you see the slits of the naga's eyes narrow to a razor-sharp slice, while his hood flares outwards dramatically. Moreau's gaze pierces your mind almost effortlessly at its weakest point, like a fencing foil in the hands of a master duelist.";
	say "     .";
	say "     .";
	say "     .";
	WaitLineBreak;
	say "     Blinking, you find yourself still gazing deep into the naga's eyes, until he loosens his coils and releases you. 'I gave you commands that you should forget anything that your acquaintance said during your meeting. Given that you could not remember it consciously anyways, this will not cause any additional discomfort from 'lost memories', while at the same ensuring that his triggers will be gone for good. Do keep an eye out for people you do not know acting overtly familiar, or using odd gestures and words. That might just be the culprit then. Use what element of surprise this will give you - either to flee, or to overpower them.'";
	now Resolution of Anton's Intro is 50; [de-triggered]

to say MoreauMemoryCleanup:
		LineBreak;
		say "     As you tell Moreau that you can't stand the thought that someone messed with you, and you can only guess at what really happened, the naga nods. 'Yes, I recognize your issue with this. It is the mental equivalent of a phantom limb - knowing that there should be something there, but being unable to reach it. The feeling of being incomplete can grind away at the one suffering from it.' Crossing his arms, he shakes his hooded head and scoffs. 'The one who influenced you being so sloppy offends me. No true practitioner would leave someone incomplete, and ready to unravel. Let us fix that!' Having said those words, Moreau begins to coil himself around you, wrapping his serpentine body around yours. His scales feel smooth, flexible and surprisingly warm as they press against your skin. Soon, you're completely wrapped by him, with the naga bending his upper body over you, one hand reaching out for your chin to raise it. As your eyes meet his slitted, vibrant green gaze, you see the slits of the naga's eyes narrow to a razor-sharp slice, while his hood flares outwards dramatically. Moreau's gaze pierces your mind almost effortlessly at its weakest point, like a fencing foil in the hands of a master duelist.";
		say "     .";
		say "     .";
		say "     .";
		WaitLineBreak;
		say "     Blinking, you find yourself staring at two mannequins, a succubus and a minotaur. A slight movement to the side draws your gaze to Moreau, who looks expectantly. You open your mouth and admit that you were lost in your thoughts, then ask him to please repeat what he was saying. 'Ah, no worries my friend. I've seen many a customer's eyes go wide as they imagine the possibilities a new shape might bring. In fact, I did just ask if you'd like to see any of my display models in a specific pose or position. Some are quite specific in choosing how they want to present themselves, and seeing firsthand what a given body appears to from the outside perspective can help.' Focusing his attention on the mannequins, Moreau gestures for them to move. The succubus spreads her legs a little and uses her fingers to pull apart the folds of her pussy a little, while the minotaur turns around, flexing to make the muscles of his back ripple, followed by bending over forwards and spreading his cheeks to reveal a ring-shaped pucker, its brow skin almost dark enough to seem black.";
		say "     Seeing the sexualized presentation, it almost seems like Moreau is offering 'services' of the mannequins, but you realize quickly that he doesn't appear to think that way. His servants really are only display models in his mind, simply showing off how you might look as you use a shape as your own. At this point, there is a little bell from the front door, with a group of people coming in who gape openly at all the shapes on display. Moreau nods to them and calls, 'Just a moment, I'll be right with you!' Then he turns to you and says, 'Feel free to browse more, and simply tell me if you want any demonstrations. For example how big something gets when hard, or the like.' Thanking him, you free the naga up to welcome new potential customers and wonder some more if you should get a new body for yourself, or just the head, or maybe some other part. After all, the possibilities of his transformation services are intriguing, and that's what you came into the store for after all. Moreau is such a nice and helpful person too - he's sure to give you a good deal.";
		now Resolution of Anton's Intro is 100; [forgot it all]

to say MoreauHypnoTrip: [total recall]
	say "     Stepping up to Moreau, you clear your throat and tell him that you've made a decision. The naga looks at you with obvious interest, his tongue flicking out twice in quick succession to taste the air, and his coils sliding against each other as he leans forward. You can tell that he's gotten invested in this matter, and is eager to get to the bottom of the mystery. There is a glint of pride in his slitted eyes as he looks forward to proving his mental skills superior to your shadowy acquaintance, and you think you can make out a level of interest in your own person as he lets his gaze sweep over you before returning to watch for you to speak.";
	LineBreak;
	say "     [bold type]What do you tell him?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - You're ready to go through with it. Let him help you relive what happened, in all details!";
	say "     [link](2)[as]2[end link] - Some de-programming work should be enough. You just don't want to have any hidden triggers waiting to surprise you.";
	say "     [link](3)[as]3[end link] - You don't want to remember what happened at all. Better to just wipe the whole encounter away completely!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go on the trip, [link]2[end link] to get de-programmed, [link]3[end link] to have him wipe Anton from your memory.";
	if calcnumber is 1:
		LineBreak;
		say "[MoreauMemoryReplay]";
	else if calcnumber is 2:
		say "[MoreauDeprogramming]";
	else if calcnumber is 3:
		say "[MoreauMemoryCleanup]";

to say MoreauMemoryReplay: [go through with the trip]
	say "     The hood of the naga flares a little and he smiles when he says, 'As you wish. We can set out in just a moment.' With that said, the shopkeeper beckons to some of the servant mannequins standing along the walls, directing them to clean up the last payments he received for trades and to sort them into the back room. Then he shepherds what customers are currently inside the shop outside in a friendly but determined fashion, promising them that he'll have just what they ever wanted in terms of bodies when he's next open. Eventually, the only ones left in the Body Shop are the mannequins, Moreau and yourself, at which point the naga opens the door with a flourish for you, then locks it after following you outside. The two of you make your way through the crowded interior of the Smith Haven Mall, passing some of Moreau's former customers, many of which greet him and say how much the enjoy their new forms. Always a good businessman, he schmoozes the former/potential customers a little before moving on, dangling ideas of even more special new forms for them to try out.";
	say "     A little while later, you step outside into the parking lot, letting your gaze sweep over the wide field of abandoned, often wrecked cars. 'If you would take us through the last things you remember please?' Moreau tells you with an encouraging nod, at which point you guide the naga to the spot where you first became aware of... the person who was out here with you, and then over to where you approached them. The position between some cars at the very edge of the lot is the last thing that is clear in your mind, with everything else afterwards indistinct and vague, except that you know you had a very nice 'talk' and it wasn't anything special at all. Slithering forward, your companion coils his lower body up before you, then raises his chest a little as he looks at you. 'Okay then. As we established before, you cannot tell anyone what happened here, write it down, or even think of it except in the presence of your 'friend'. To get around this, I will put you under and make you think you are at the time things happened, to reenact it. And there will be nothing keeping you from remembering [italic type]that[roman type].";
	WaitLineBreak;
	say "     Having said those words, Moreau slides forward and wraps his serpentine body around yours. His scales feel smooth, flexible and warm as they press against your skin. Soon, you're completely wrapped by him, with the naga bending his upper body over you, moving his head to be in your direct line of sight. As your eyes meet his slitted, vibrant green gaze, you see the slits of the naga's eyes narrow to a razor-sharp slice, while his hood flares outwards dramatically. 'Listen to my voice and let all the sounds and sights of the here and now fade away. Besides your immediate surroundings, only the city as it was remains,' he begins, commanding your full attention as he explains, 'If at any point during our time here, or wherever this trip may lead us, you feel uncomfortable and want to break things off, just say one word: 'Blueberry' I will then immediately withdraw and stop the trance. Do you understand?' He waits for you to nod, tongue flicking out for a second as he smiles.";
	say "     'Besides that, if you feel that there is something specific you'd rather not relive, say 'Giraffe' and we will jump forward a little in time. We will lose details, but hopefully it will be possible to catch the string of events from a little later. You understand?' Again, you nod. 'Good, then let's do this. Look deep into my eyes and know that what I say is true, even if things might appear otherwise right now. For example, I will be with you every step, never doubt that I am here for you. At the same time, you will see both myself and the person that you met in my place, right here in this spot, with today being the day you meet him.' Without even blinking, you suddenly see two people superimposed on each other before you. 'You have just approached and begun talking to him. The guy seems a little hoarse though - could you please repeat his words after him, so he can be sure that you've understood them properly?' Again, you nod. 'And finally, he's recently found himself enjoying holding someone's hand. If he gestures at something, or does something with his hands, could you move with him please?' That said, he takes your hands gently, laying them against his own and therefore also the shadow-person's hand, letting out a satisfied hiss as you move along with his movements. 'That is all. Please start now.'";
	WaitLineBreak;
	say "     Right after Moreau stops speaking, you repeat 'his' words for him, saying, 'Hello there, nice to meet you. I'm Anton. Got a moment to talk?' The scaled ridges above Moreau's eyes rise a little as he makes a note of the name, then calmly says, 'What happened after introductions?' and beckons you to continue. You smile, meeting the gaze of Moreau/Anton, then repeat after him, 'Haven't been around this area since all this craziness started, so I wanted to get some info from a local. Could you tell me what's going on hereabouts?' At that point, your gaze is drawn to something beside, or maybe behind, Moreau/Anton, and you can feel your heart starting to beat faster as it fills you with awe. Repeating your own remembered words, you marvel at the brilliant rainbow of his feather's colors and how pretty they look in the sunlight, another fact that Moreau takes in with an interested expression, softly hissing the word 'peacock' under his breath.";
	say "     Then you recount a fairly short discussion between yourself and Anton, mostly just him casually asking a question or two about the mall and surroundings, with you replying. All the while your gaze wanders over what must have been a huge fan of feathers behind him, with a strange, compliant feeling overcoming you. Soon, you repeat after Moreau/Anton, 'Enough with the pleasantries for now I think. So, tell me, is there anyone waiting for you, expecting you? No? Perfect! ";
	if "Companion Sent Away" is listed in Traits of Anton:
		say "As for your companion... who needs someone like that anyways?' You reach out to take Moreau's right hand, raising it and bend his fingers a little, with the naga quickly realizing what you are doing, and snapping his fingers audibly, as if to draw someone's attention. You repeat, 'Why don't you fuck off over to the mall for now. For all I care, you can stare at the graffiti on the outside walls or something. That's all you'll remember between coming over here, and when your boss eventually collects you. I'll take [italic type]good[roman type] care of him without you. You never saw me, understand?' After that, you turn as if to look after someone walking off, until you tap Moreau's hand and he draws your attention back with another snap of his fingers. '[run paragraph on]";
	else if "Companions Sent Away" is listed in Traits of Anton:
		say "As for your companions... who needs someone like that anyways?' You reach out to take Moreau's right hand, raising it and bend his fingers a little, with the naga quickly realizing what you are doing, and snapping his fingers audibly, as if to draw someone's attention. You repeat, 'Why don't you guys fuck off over to the mall for now. For all I care, you can stare at the graffiti on the outside walls or something. That's all you'll remember between coming over here, and when your boss eventually collects you. I'll take [italic type]good[roman type] care of him without you. You never saw me, understand?' After that, you turn as if to look after several people who're walking off, until you tap Moreau's hand and he draws your attention back with another snap of his fingers. '[run paragraph on]";
	say "Wouldn't do to have any party crashers coming to find you, just as we're getting to know each other a little better, eh?' You guide Moreau/Anton's hand to your face after that, placing his fingers to lift your chin and lifting it a little.";
	WaitLineBreak;
	say "     'What a nice little surprise you are, walking right past and then falling under my sway. Let's see what you can do, eh?' you repeat after Anton, then reach up to slide Moreau's fingers over your lips, followed by pushing them between your lips. The naga's eyes widen as you do so, then push up against his smooth, scaly digits with your tongue. The slits of his eyes narrow and his tongue flicks out several times in rapid succession, with him soon starting to feel around on his own, fingers pressing down your tongue while his thumb lightly brushes against the side of your jaw. Slurping on his invading digits, you nod in confirmation that this is how things went, then blindly grope for the naga's other hand and place it behind your neck, holding you tight while you suck on his fingers. The naga tenses a little as you go full out, but plays along, committed to his role. You re-play what happened with Moreau/Anton, until at some point running into a bit of a quandary, as what you repeat for him isn't understandable at all because you're mumbling it around Moreau's fingers resting on your tongue.";
	LineBreak;
	say "     [bold type]Noticing your problem, Moreau's digits immediately stop moving, then withdraw. As you try to keep going, he commands you to stop, then asks, 'You were saying?'[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Just continue with reliving the scene.";
	say "     [link](2)[as]2[end link] - Giraffe! (the safeword - You got enough of being inspected like this. Jump ahead and hope for some more info!)[line break]";
	say "     [link](3)[as]3[end link] - Blueberry! (the safeword - You got the name and species of your encounter, and you don't want to go through anything further!)[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to continue the replay, [link]2[end link] to jump ahead or [link]3[end link] to stop this for good.";
	if calcnumber is 1:
		LineBreak;
		say "     Licking your lips and swallowing, you repeat, 'That's a good boy. I'll enjoy using your mouth, that's for sure! Now... how about the rest of you? Can your booty hold pace with your mouth? Go on, you can tell me all about it!' Echoing a laugh from the peacock, you take Moreau/Anton's hand from behind your neck and slide it down along your back, finally landing on your buttocks [if Player is not barecrotch]and slipping under your clothes[end if]. The naga knows what to expect, and he acts his part by squeezing your ass. You take a breath, as if someone had just now withdrawn from finger-fucking you, then reply truthfully, without hesitation or possibility to resist revealing that ";
		if "Took Player Cherry" is listed in Traits of Anton:
			say "you're actually a virgin. The words are barely out of your mouth before you repeat a very satisfied 'Jackpot! Oh, that's so sweet! You saved yourself just for me!' for Moreau/Anton, then push his fingers towards your crack, exploring it.";
			say "     The naga's eyebrows draw together in a flash of irritation, perhaps being offended by the perverted enjoyment that Anton showed in taking something special from you. He hisses under his breath, opening his snout for just a second and revealing a pair of sharp fangs. Then he gets himself under control again, suppressing the feeling and reluctantly slipping back into character. You can feel the smooth-scaled digits of Moreau/Anton feel around and the thought flashes through your head that he wasn't as gentle 'last time'. As you try to force his fingers in, he resists, with his fingertips instead just lightly brush over your pucker, mostly creating a mildly pleasant tingle.";
			TraitGain "Anton Virgin Thief Hostility" for Moreau;
		else:
			say "you've been fucked, and by how many partners. Repeating an acknowledging grunt, you give your voice an amused tone as you repeat, 'Hah, looking forward to add to that number, boy! You'll forget about all those assholes once you've felt my cock!'";
			say "     The naga's eyebrows draw together in a flash of irritation, perhaps being offended by the perverted enjoyment that Anton showed. He hisses under his breath, showing a grim expression for a second, then gets himself under control again, suppressing the feeling and reluctantly slipping back into character. With that said, you push Moreau/Anton's fingers towards your crack, exploring it. You can feel the smooth-scaled digits of Moreau/Anton feel around and the thought flashes through your head that he wasn't as gentle 'last time'. As you try to force his fingers in, he resists, with his fingertips instead just lightly brush over your pucker, mostly creating a mildly pleasant tingle.";
		WaitLineBreak;
		say "     Accompanied with a satisfied click of the tongue, you tug on Moreau's arm, with him smoothly withdrawing it from feeling you up after a very brief moment of hesitation. [MoreauReplayStage2]";
		TraitGain "Anton-HypnoFingered Player" for Moreau;
	else if calcnumber is 2:
		LineBreak;
		say "     As the safeword passes your lips, Moreau immediately lets go of you, moving his upper body back a little and straightening. He pauses and makes himself calm down, only continuing once his breath slows from the somewhat quickened pace it rose to before. With the flicking of his forked tongue slowing down and him focusing his green eyes on your own, Moreau then says, 'Let us skip ahead a little. It is now somewhat later, after... he stopped touching you.' You nod in confirmation, then blink, recalling what else happened, starting with a satisfied click of Moreau/Anton's tongue that you repeat. [MoreauReplayStage2]";
	else if calcnumber is 3:
		LineBreak;
		say "     As the safeword passes your lips, Moreau immediately lets go of you, moving his upper body back a little and straightening. He pauses and makes himself calm down, only continuing once his breath slows from the somewhat quickened pace it rose to before. With the flicking of his forked tongue slowing down and him focusing his green eyes on your own, Moreau then says, 'Of course. Now, listen well to my commands: You will remember clearly everything that happened here. You can be calm about it, what you just relived is in the past. Any emotions it might invoke will come slowly, so you can feel them at your own pace. Now take a deep breath.' Following his command, you draw in air, then let it out slowly. Only then does the naga go on to say, 'Forget anything else that happened in the time after we stopped, until after your meeting with the person in the parking lot. Especially any sort of command or instruction he might have given you. Do you understand?'";
		say "     As you nod, he continues, 'Good. Now, you can feel the trance you are in weakening, weakening, and then wake up fully once more.' Blinking, you shake off the haze of thinking it was another day, finding yourself standing not in front of Anton, but Moreau. The naga tilts his hooded head a little, raising an eyebrow as he asks, 'I hope it wasn't too taxing an experience to relive? We did learn some details about your culprit, Anton. By the behavior, and what played out, I have little doubt he was a peacock. I've encountered their kind before. They're capable of entrancing others with their feathers, and it seems your acquaintance learned to greatly enhance this ability by making good use of the sun. Be wary, if you do encounter one of his species again, and especially watch out for one that is basking in the sun, wanting to draw in victims.' Taking his words to heart, you thank Moreau for his assistance in getting at least a little bit more of your missing memory cleared up. Then the two of you make your way back into the mall.";
		now Resolution of Anton's Intro is 5; [player did total recall]
		TraitGain "Name Revealed" for Anton;

to say MoreauReplayStage2:
	say "'I'm gonna enjoy you, that's for sure! But before we can get to that, let's get some things out of the way first. Look at my feathers! They're the most amazing thing you ever saw! See the shine of the sun playing over them, and listen well!' you repeat, then angle your head to the side as if looking at a beautiful marvel. Then you recount laying down the commands and rules that Moreau had guessed at: A cover-story of 'just talking nicely', instructions to be unable to recall what exactly happened unless you're in his presence (so you 'Remember what your beloved likes') and an instilled inability to share any and all details about your encounter with others (he repeats that one twice, wanting to make sure of it).";
	say "     But Moreau/Anton is far from done with just that - there is a laundry-list of casual tasks and playful commands, as he for example goes on to instruct you to obtain skimpy and revealing clothing. He goes into great detail about wanting a jockstrap on you, down to his preferred colors (white or black). He motivates you to wear it before other things, demands you collect any strip of his favorite chewing gum you might come across, all the way to instilling the need to be freshly douched and carrying a bottle of lube (to be 'ready for him'). Finally, you repeat this for him, 'If we might run into one another, you'll act normally. Just friendly, casual. Unless I call you 'Sweetcheeks', then you'll straight away fall back into this trance and be ready for more commands. You understand?' There is a bit of a haughty, superior air in his voice, followed by laughter as you nod obediently. 'Perfect. I knew it was a good idea to hang around here at the mall. Lots of foot traffic, and people are much more willing to 'talk'. Though now, let's find a somewhat more... private spot.'";
	WaitLineBreak;
	say "     Taking hold of Moreau/Anton's wrist, you help him point to one of the buildings to the southeast, a flower shop, of all things. 'That one over there is a good place. Had deliveries to it quite a few times, and the shop boy was always alone early in the morning, hah! Little slut learned to put out quickly enough once he realized how good my dick felt inside him! When I filled him up, that flower-boy would always be crying in joy for finally getting what he needed. Kept whimpering about his worthless bitch of a [']girlfriend['], but I knew she couldn't scratch his itch like I did! He loved working here and my regular visits - such a pity that he suddenly left for college out of state the next year. At least he'll [italic type]always[roman type] have his happy memories of his time with me in this place.'";
	say "     After placing the naga's hand on your shoulder, the two of you make your way there in what seems to be a bit of an impatient pace. The front door of the shop opens readily enough, not being locked or anything, and the interior looks pretty normal, except all of the plants having withered away by now of course. Windows, the till and everything is fully intact though. Looks like it's not the place anyone would even think of looting, in the midst of the nanite apocalypse. Making a beeline for the 'Staff Only' door in the back of the shop, you guide Moreau/Anton's hand to push it open, then to shepherd you into the florist's working space. It is fairly roomy, with three metal tables serving as assembly stations for bouquets and whatnot, and the large door of a cooling room next to a sliding door leading to the loading area behind the store.";
	WaitLineBreak;
	say "     After the door behind you falls shut again, you make Moreau/Anton casually wave towards the cooling room, then repeat, 'My flower-boy was kinky the first time and played a little hard to get. But I knew he didn't want to get away - why would he run into a room with only one exit otherwise, hah! Fun times!' There is a pause, as if Anton was reveling in his memories, before you guide Moreau/Anton's hand to stroke along your side. 'But don't feel jealous about him. You're my new special boy, after all! Let's see you put that mouth of yours to good use now! Being here really puts me in the mood!' With that said, you push against Moreau/Anton a little, moving him into position where he is leaning against the edge of one of the tables, upper body leaned back with his hands casually bracing on the worktop.";
	say "     As you step up to his front, then begin to sink down, a hissing sound draws your attention upwards, leaning your head back to look at Moreau. The naga comes to the forefront of the superimposed double-person before you, pulling you out from the full immersion for a short moment. He has his tongue flicking in and out of his mouth, slitted pupils narrowed and his hood flared outwards visibly. Then Moreau asks, 'Did you want to... say anything to me?'";
	LineBreak;
	say "     [bold type]You're stumped for a second, with nothing coming to mind from before, leaving you free to pick your reply despite the entranced state.[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Quietly shake your head with a thankful little smile and go down on him.[line break]";
	say "     [link](2)[as]2[end link] - Giraffe! (the safeword - This is getting a bit much. Jump ahead and hope for some more info!)[line break]";
	say "     [link](3)[as]3[end link] - Blueberry! (the safeword - You got the name and species of your encounter, and you don't want to go through anything further!)[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to continue the replay, [link]2[end link] to jump ahead or [link]3[end link] to stop this for good.";
	if calcnumber is 1:
		LineBreak;
		say "     With the words passing your lips, you sink down before Moreau/Anton, moving your hands to stroke over his crotch, feeling the warm firmness of his skin under your fingers. Yet as you reach for the erect penis of Anton, you find yourself confused at it not being there. Moreau says calmly, 'Things will be a little... different than you remember for a little while. This is fine and okay. Do not be worried.' Nodding acceptingly, as he knows best, your focus moves more to what currently lies before you. There is only a thin slit between the smooth scales of the naga that indicates the presence of genitals, although on second glance... it isn't quite as thin and invisible between his scales as usual, when he's in the store. Given that Moreau doesn't wear clothing at all, your gaze must have slipped over the section of his body more than a few times just today, yet it never looked like this. The fleshy sides of the opening look just a little swollen and parted, with a glisten of wetness on them.";
		say "     Setting a fingertip on the slit, you gently push, finding it readily allowing your digit entrance to a sort of soft pouch that is slick and moist around your finger. There is a sharp intake of breath from the naga, as if he is new to the sensation of being penetrated, even with just a fingertip. Despite being a little flustered by being fingered, he lets you proceed to penetrate him, not wanting to take you away from the memory any further than he already has. After a moment, the naga actually appears to start to like the sensation, almost seeming a little surprised about that. Pushing your fingertip further, you encounter something firm, yet yielding. As you rub it, you hear a pleased grunt from Moreau/Anton. Adding a second finger, you feel around, getting a good sense of his pointy dickhead and feeling the differences to a human's, like for example a ridged rim on it. Your touch obviously arouses him, as it doesn't take long before you can see the tip start pushing apart the opening of Moreau's genital slit.";
		WaitLineBreak;
		say "     His manhood is vibrantly colored, reddish-orange in contrast to the yellow scales of the naga's front, and you wrap your fingers and thumb around it as soon as its head has fully emerged. As you're getting a better grip of his cock and massage it, Moreau's erection grows much faster than it did before, revealing inch after inch of a ridged shaft that promises quite a ride for his sexual partners. By the time he's showing about nine inches of cock with the thickness of a well-grown zucchini, you think he's done getting harder, until suddenly, the genital-slit stretches wide to allow for a bulge to squeeze past with a sudden slurp. Moreau's got something akin to a canine knot at the base of his shaft, which is now revealed to be a full twelve inches! Knowing what is expected of you, the next thing to do is sliding your lips over the head of Moreau/Anton's erection, taking it into your mouth. ";
		say "     The firm shaft of the naga is warm against your tongue, leaking precum right onto your taste-buds. Moreau's juices have an interesting, almost spicy flavor to them, and you find yourself enjoying going down on him. Remembering to assist Moreau/Anton in the same movements as before, you blindly grope to bring his hand up to your head, only to find that he's actually already reaching for you. A second later, the long, smooth-scaled fingers of the naga begin cradling the back of your head, gently but firmly pushing you towards his crotch. Relaxing your throat, you allow his length to slide deeper, and deeper, feeling the ridges of his nonhuman cock pass your lips. Before much longer, you've got most of his hard length inside you. Vaguely recalling nuzzling into soft feathers with your nose, you try to take the rest, but the knot prevents you from doing so, being too large to easily pass your lips.";
		WaitLineBreak;
		say "     You stay as you are for a long moment, swallowing purposefully and letting your throat muscles dance over the naga's dickhead, then tap the side of Moreau/Anton's forearm as you can feel your air supply start to run out. He allows you to pull off somewhat reluctantly, leaving you panting with your gaze glued to his wet and glistening shaft. Licking your lips, you repeat the words, 'Like my big cock, boy? You're good at this!' Then you reach up with one arm, sliding your hand over Moreau/Anton's and slam your head down onto his cock, ramming the shaft as far as it will go in one swift move. You can't help but gag and choke a little at the sudden penetration that you inflicted on yourself in remembrance of Anton's behavior, yet thankfully manage to calm yourself and relax enough to continue taking the long cock down your throat. Not that Moreau/Anton would have let you get away, as you continue to push his hand against your head.";
		say "     The two of you continue in that pattern for a little while, deep, harsh facefucking interspersed with moments of his erection just resting in your throat and being squeezed, then urgent gasping for breath. After the first one or two times, you don't even have to guide Moreau/Anton to do it either, with the naga fucking in and out of your mouth on his own accord. You can't help but feel that he's leaking more pre than before, as the spicy taste just becomes more intense on your tongue. Is he getting close? You can't quite tell, but either way, this is the moment in which you grab Moreau/Anton by the wrist and pull his hand away from the back of your head, more towards the side now. Placing his fingers on your jaw, you pull back off his erection with an audible pop, then guide him to lift your head so he can look you in the eyes. Your gaze meets his slitted eyes, and you casually register that his snake-hood is fully extended now, a majestic sight of overlapping scales.";
		NPCSexAftermath Player receives "OralCock" from Moreau;
		TraitGain "Anton-HypnoFaceFucked Player" for Moreau;
		say "[MoreauReplayStage3]";
	else if calcnumber is 2:
		LineBreak;
		say "     As the safeword passes your lips, Moreau immediately lets go of you, moving his upper body back a little and straightening. Flicking his forked tongue and focusing his green eyes on your own, he then says, 'Let us skip ahead a little. It is now somewhat later, after... you finish pleasuring him orally.' You nod in confirmation, then blink, recalling what else happened, starting with guiding Moreau/Anton's hand to your jawline, rising it so he can look you in the eyes. Your gaze meets his slitted eyes, and you casually register that his snake-hood is fully extended now, an majestic sight of overlapping scales.";
		say "[MoreauReplayStage3]";
	else if calcnumber is 3:
		LineBreak;
		say "     As the safeword passes your lips, Moreau immediately slides himself to the side, out from between you and the table to gain a little distance. Flicking his forked tongue and focusing his green eyes on your own, he then says, 'Of course. Now, listen well to my commands: You will remember clearly everything that happened here, yet forget anything else that happened in the time after we stopped, until after your meeting with the person in the parking lot. Especially any sort of command or instruction he might have given you. Do you understand?' As you nod, he continues, 'Good. Now, you can feel the trance you are in weakening, weakening, and then wake up fully once more.' Blinking, you shake off the haze of thinking it was another day, finding yourself standing not in front of Anton, but Moreau.";
		say "     The naga tilts his hooded head a little, raising an eyebrow as he asks, 'I hope it wasn't too taxing an experience to relive? We did learn some details about your culprit, Anton. By the behavior, and what played out, I have little doubt he was a peacock. They're capable of entrancing others with their feathers, and it seems your acquaintance learned to greatly enhance this ability by making good use of the sun. Be wary, if you do encounter one of his species again, and especially watch out for one that is basking in the sun, wanting to draw in victims.' Taking his words to heart, you thank Moreau for his assistance in getting at least a little bit more of your missing memory cleared up. Then the two of you make your way back into the mall.";
		now Resolution of Anton's Intro is 5; [player did total recall]
		TraitGain "Name Revealed" for Anton;

to say MoreauReplayStage3:
	say "     You repeat for Moreau/Anton, 'Gotta say, I was tempted to just keep going, just feed my sweet little slut his first load, fresh from my balls. You got an amazing throat on you, that's for sure boy! Could get used to having access to it [italic type]all[roman type] the time.' A light tap of the naga's thumb is enough to make Moreau play with your lips, then press your tongue down dominantly. He stops when you mumble something after a while of him just playing around with you, withdrawing his fingers to let you repeat more words. 'But as tempting as it may be to ram myself down your throat again, I wanna finish trying you out now. Bend over the table there and spread your cheeks! ";
	if "Took Player Cherry" is listed in Traits of Anton:
		say "It's cherry-popping time, haha!' ";
	else:
		say "Gonna feel your master's cock inside you!' ";
	say "You can feel Moreau's gaze linger on you as you reveal Anton's intent, with his eyes flicking to his own very much hard and erect shaft for a second, forked tongue flashing into view multiple times in quick succession. Raising the scaly ridges above his eyes, he tilts his head with a slight nod, asking a question without words.";
	LineBreak;
	say "     [bold type]Will you say something?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - No, just obey and get into position.";
	say "     [link](2)[as]2[end link] - Giraffe! (the safeword - Jump ahead and hope for some pillow-talk.)[line break]";
	say "     [link](3)[as]3[end link] - Blueberry! (the safeword - Stop this, now!)[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to continue the reply, [link]2[end link] to jump ahead or [link]3[end link] to stop this for good.";
	if calcnumber is 1:
		LineBreak;
		say "     Refraining from saying anything, you simply obey the command from Moreau/Anton, turning around and approaching the metal table before you. [if Player is not naked]You quickly strip down, then [else]Without any hesitation, you [end if]bend over the florist's workplace, laying your upper body on it while reaching back and spreading your cheeks invitingly. Waiting, you hear the sound of scales sliding over the concrete floor of the store's backroom, followed by a hand coming to rest on your lower back, warm against your skin. From there, it slides lower to caress the curve of your buttocks, finally slipping between your cheeks. The dry, scaly fingertip of Moreau brushes over your pucker, making it tingle a little. The naga seems to hesitate for a second before you can hear him say, 'Ah!' Then the long, flexible body of the half-anthro snake stretches over you, with him picking up a bottle of lube, standing together with a box of tissues between the tools and equipment that one would expect on a florist's workbench.";
		say "     The click of a plastic snap-lid opening is followed by the sensation of cool liquid squirting onto your pucker, then being massaged in by Moreau's warm fingertips. You're surprised for a second, as this wasn't what happened, with your memory being much faster, and rougher. Trying to re-create the sensation from before, you reach back to grasp his shaft, lightly tugging on it to indicate he should be ramming it in right away, but in this point, the naga does not follow the guidance. Instead, one of his fingers slides into you almost gently, going in and out as it works more lube into your hole. Soon, it is joined by another, with the two digits moving apart to stretch your opening in preparation. You can sense that even though he is looking out for you, the whole process of going through this memory recall has wound up the naga more than a little bit, as he proceeds to withdraw his fingers before much longer. Then something different, thicker and pointily shaped, brushes against your back door, pressing in against it.";
		WaitLineBreak;
		say "     As Moreau's cock starts to push into you, the ring of your pucker being opened up around its spongy head, the naga slides his upper body against your back, his arms wrapping around your chest in a warm, dry embrace. At the same time, you feel his scaly lower body brush against the sides of your legs, wrapping around and around, his form encircling you in tight coils. Somehow, despite living through sensations of being helplessly in the grasp of this man-like creature, you never feel uncomfortable in the slightest way, with his warmth instead being quite nice instead. A tingling feeling against your neck tells you that Moreau's flicking tongue is now literally tasting your skin, no longer just the air. Then a ripple of pleasure dances up and down your spine as the first of the small ridges on his shaft pops past your pucker, rubbing your inner walls as the next follows a second later, and the next after that. While penetrating you inch by inch in a slow, inescapable fashion, Moreau is silent except for aroused hisses, until the bulge of his knot finally comes to rest against your skin, and the naga stops pushing.";
		LineBreak;
		say "     [bold type]Again, this is gentler than you remember... how do you react to this inconsistency?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Just give in to the sensations and roll with it. He'll fuck you as he pleases.";
		say "     ([link]N[as]n[end link]) - Ram yourself back against his crotch, forcing his whole length in.";
		if Player consents:
			LineBreak;
			say "     Letting out a panted breath and bracing yourself on the table, you wait for the impending power-fucking your memory has you expecting - and you're not disappointed, as Moreau withdraws most of the way, then thrusts back into you deeply, making his knot push right against your pucker once more. You can feel that the respectable girth of his shaft increases in the very last inch, right before the bulge, giving your muscular ring the sensation of being [italic type]very[roman type] well-stretched, with a little sting that doesn't hurt too much. You can only imagine how over-stuffed you'd be if he made you take the whole length of his erection and the 'big finish' at the base, as the naga takes care to stop when being this far, then starting the next cycle of withdrawing and sheathing himself in your receptive hole.";
			say "     The warm spear of Moreau's manhood opens up your sensitive insides, rubbing and stimulating relentlessly while you can't help but gasp and pant in lust. You can be thankful that he's got you as tightly coiled as he has, as your knees go weak from the overwhelming arousal filling your body, and you might have just fallen to the floor without the naga holding you firm. As your inner muscles squeeze around his ridged shaft, Moreau finds his passion enflamed even more than it was before, letting out lustful pants as he enjoys being inside you. His energetic thrusts become shallower, yet ever faster, ramping up to a frantic pace. Then finally, a tremble seems to go through the whole body of your sexual partner, feeling incredible as it circles around you through each coil of his form. At the same time, his erection begins to pulsate inside of you, delivering throb after thick throb of Moreau's seed into your depths.";
			WaitLineBreak;
			say "     The naga's slitted eyes bore into yours with an intense gaze, followed by the words, 'Come now, right along with me!' Already quite close to getting off, his command is all it takes to push you over the edge completely, and you pant and twitch in Moreau's embrace as your own cock begins to spray your load all over the floor under the workbench. The two of you stay entangled for a while, just resting after your shared orgasms ebb off and Moreau's knotted cock soon slips from your well-bred rear end. He untangles himself from you, a flicker of a smile playing over his features as he looks down at your cum-leaking hole, then slithers to the side. As he slowly closes his eyes for a second, you can somehow feel that Moreau has withdrawn his direct control, letting you fall back into the memory of Anton's influence.";
		else:
			LineBreak;
			say "     Letting out a panted breath, you rock forward a little, then push yourself back from the table, ramming your rear down on Moreau/Anthon's erection. As the bulge of his knot is forced past your opening, you can't help but let out a half-shouted gasp from feeling like you're being split in half from its sheer size. You remember being roughly fucked, but this is something else entirely, the thick cock and even thicker knot making you whimper a little. Moreau is a bit perplexed for a second, finding himself balls-deep inside your ass, with your hole reflexively pulling tight around his invading member. A pleasure-filled pant comes from his throat, with the naga smiling at you - only to look shocked as he then registers the pain so obviously drawn on your face. Immediately trying to pull back, he inadvertently sends a flash of agony up your spine as your strained pucker resists him, and also experiences an uncomfortable pinch himself from it.";
			say "     Still trying to follow your script, even with tears in your eyes, you push yourself back once more, making the naga blink as he tries to think of a way to deal with this situation. A second later, he reacts by bending his upper body too look you straight in the eyes, hood flared out broadly and green eyes almost glowing with power. There is no doubt in your mind at this point that he's on another level entirely to Anton. 'There is no pain anymore. All you will feel is pleasure. You are fully relaxed and open.' He seems relieved as your expression smooths out immediately, with the pain in your rear fading away like a false memory. Instead, you now feel quite pleasant, and aroused by the hard cock pressing right against your prostate. As you continue to rock back against his crotch some more, Moreau begins to thrust and grind into your depths. Wrapped by coils and held tightly, you're fucked by the naga, with Moreau's effortless flexibility allowing him to thrust freely, giving you satisfying thumps that reach your very core.";
			WaitLineBreak;
			say "     The warm spear of Moreau's manhood opens up your sensitive insides, rubbing and stimulating relentlessly while you can't help but gasp and pant in lust. You can be thankful that he's got you as tightly coiled as he has, as your knees go weak from the overwhelming arousal filling your body, and you might have just fallen to the floor without the naga holding you firm. Unexpectantly finding himself knotted in your tight insides, Moreau finds his passion enflamed even more than it was before, letting out lustful pants as he enjoys being inside you. His energetic thrusts are shallow but ever faster, ramping up to a frantic pace. 'Ssso good, so tight!' you hear his urgent hiss in your ear, and feel the forked ends of the naga's tongue dance over the skin at the side of your neck as he licks you, all the while wrapping himself tighter and tighter around your body.";
			say "     Then finally, a tremble seems to go through the whole body of your sexual partner, feeling incredible as it circles around you through each coil of his form. At the same time, his erection begins to pulsate inside of you, delivering throb after thick throb of Moreau's seed into your depths. His slitted eyes bore into yours with an intense gaze, followed by the words, 'Come now, right along with me!' Already quite close to getting off, his command is all it takes to push you over the edge completely, and you pant and twitch in Moreau's embrace as your own cock begins to spray your load all over the floor under the workbench. The two of you stay entangled and tied together for a long while, just resting after your shared orgasms ebb off and Moreau's knotted cock slowly softens far enough that he can withdraw from your abused rear end.";
			WaitLineBreak;
			say "     He finally untangles himself from you and looks at your reddened hole with a sigh, then slithers to the side, a somewhat guilty smile on his lips. 'Remember that you're in no direct pain from this, but be sure to take things easy until you fully recover,' comes his instructions, followed by him slowly closing his eyes. Somehow you can feel that Moreau has withdrawn his direct control, letting you fall back into the memory of Anton's influence.";
			TraitGain "Knotted the Player" for Moreau;
		NPCSexAftermath Player receives "AssDildoFuck" from Moreau; [let's not knock anyone up right now - with Moreau it should be more special, if at all]
		TraitGain "Anton-HypnoFucked Player" for Moreau;
		if "Took Player Cherry" is listed in Traits of Anton:
			TraitGain "Anton Virgin Thief Hostility" for Moreau;
		say "[MoreauReplayStage4]";
	else if calcnumber is 2:
		LineBreak;
		say "     As the safeword passes your lips, Moreau immediately slides himself to the side, out from between you and the table to gain a little distance. Flicking his forked tongue and focusing his green eyes on your own, he then says, 'As you wish. Let us skip ahead a little. It is now somewhat later, after... he finished what I was doing.' You nod in confirmation, then blink, recalling what else happened, starting with guiding Moreau/Anton's hand to your jawline, rising it so he can look you in the eyes. Your gaze meets his slitted eyes, and you casually register that his snake-hood is fully extended now, an majestic sight of overlapping scales.";
		say "[MoreauReplayStage4]";
	else if calcnumber is 3:
		LineBreak;
		say "     As the safeword passes your lips, Moreau immediately slides himself to the side, out from between you and the table to gain a little distance. Flicking his forked tongue and focusing his green eyes on your own, he then says, 'Of course. Now, listen well to my commands: You will remember clearly everything that happened here, yet forget anything else that happened in the time after we stopped, until after your meeting with the person in the parking lot. Especially any sort of command or instruction he might have given you. Do you understand?' As you nod, he continues, 'Good. Now, if you would go to the front room of the store, I will... join you in a few minutes. While you're waiting there, you will feel the trance you are in weakening, weakening, and then wake up fully once more.' Obeying without question, you move into the front of the florist shop, standing around and letting your gaze wander over the withered plants. At some point, you blink, shaking off the haze of thinking it was another day.";
		say "     Moreau follows you a moment later, with his composure restored and everything tucked away inside of his genital slit once more. The naga keeps some distance, tilting his head to you and raising an eyebrow as he asks, 'I hope it wasn't too taxing an experience to relive? We did learn some details about your culprit, Anton. By the behavior, and what played out, I have little doubt he was a peacock. I've encountered their kind before. They're capable of entrancing others with their feathers, and it seems your acquaintance learned to greatly enhance this ability by making good use of the sun. Be wary, if you do encounter one of his species again, and especially watch out for one that is basking in the sun, wanting to draw in victims.' Taking his words to heart, you thank Moreau for his assistance in getting at least a little bit more of your missing memory cleared up. Then the two of you make your way back into the mall.";
		now Resolution of Anton's Intro is 5; [player did total recall]
		TraitGain "Name Revealed" for Anton;

to say MoreauReplayStage4:
	say "     'Now that's what I call a happy ending after meeting someone new!' you repeat for Moreau/Anton, following it up with a satisfied grunt. Then you take hold of Moreau/Anton's hand and rub it up and down between your buttocks, pushing his fingers towards your opening to feel it against his fingertips. 'Man, that's some primo ass! You know, Sweetcheeks... I don't usually do this, but... ah, fuck it. I don't come to the mall that often, and I want more of you! You should really come visit the beach, sometime soon. In fact, you [italic type]will[roman type] make some time to visit the beach. Enjoy the water, sand, sun... and if you should just run into the nice guy you met that one day at the mall, sitting in a cafe... you'll just stroll over to say hello. And if you see me talking to some slut or other, do not be put off - [italic type]you're the only one that really matters[roman type].' Echoing the lusty laughter that follows, you pull Moreau/Anton's hand back and slap your ass with it, followed by the words, 'Now clean me up, then yourself. Time to let you run free again for now.'";
	WaitLineBreak;
	say "     Making use of some paper towels from one of the worktables, you go through the motions of patting at Moreau's crotch, then your own body, throwing the scrunched up sheets into a nearby waste-bin. Its lower third is filled with similarly used material, some of it hard and crusty with dried cum. Almost looks like this scene played out more than once, and this doesn't include your current replay. Afterwards, you and Moreau/Anton leave the store with no further words exchanged, moving back to the spot where this whole affair started. You repeat for the peacock, 'Okay then. That's it. Off you go. Remember what we [']talked['] about, and ";
	if "Companion Sent Away" is listed in Traits of Anton:
		say "don't forget to pick up the worthless whore you hang out with over at the mall! ";
	else if "Companions Sent Away" is listed in Traits of Anton:
		say "don't forget to pick up the worthless whores you hang out with over at the mall! ";
	else:
		say "don't you say a word about this, to anyone! ";
	say "Really looking forward to our next meeting though, Sweetcheeks! See ya then!' After that, you take Moreau's hand and guide it through a casual wave.";
	say "     The naga nods, flicking his forked tongue and focusing his green eyes on your own, he then says, 'This seems to be the end of it. Now, listen well to my commands: You will remember clearly everything that happened here and now, yet forget the actual day in the past during which your original encounter lay. Especially any sort of command or instruction he did give you. Do you understand?' As you nod, he continues, 'Good. Now, you can feel the trance you are in weakening, weakening, and then wake up fully once more.' Blinking, you shake off the haze of thinking it was another day, finding yourself standing not in front of Anton, but Moreau. The naga tilts his hooded head a little, raising an eyebrow as he asks, 'I hope it wasn't too taxing an experience to relive?' An uncomfortable silence stretches out between you after that, with you having to come to terms of everything you experienced before, and which Moreau did take you through again right now. He looks somewhat nervous about how you'll deal with everything rushing in at you now that the hypnosis is over.";
	WaitLineBreak;
	say "     Taking a deep breath, you let it out slowly, continuing to look at the naga for a long moment as you sort out your thoughts. ";
	if "Knotted the Player" is listed in Traits of Moreau:
		MoreauStage4_KnotChoicePoint;
	else if "Anton-HypnoFucked Player" is listed in Traits of Moreau:
		MoreauStage4_ChoicePoint;
	else if "Anton-HypnoFaceFucked Player" is listed in Traits of Moreau:
		MoreauStage4_ChoicePoint;
	else:
		say "Remembering all that Anton did (at least vaguely and by guessing about the parts you skipped) and said is a lot to digest all at once, so it takes a little while before you nod to Moreau and tell him you're okay. 'Shall we leave this place behind then?' Nodding, you accompany the naga in moving away from the spot where Anton had sprung his trap of mental and physical violation.";
		MoreauStage4_Analysis;

to MoreauStage4_KnotChoicePoint:
	say "'Are you okay? Physically, I mean. Not in any sort of pain?' Moreau asks at that point, blinking his eyes as he focuses on every detail of your expression. 'I honestly didn't expect Anton to be this rough, and with you replaying it [italic type]fully[roman type], you did take me by surprise. Not that it is any fault of yours - Anton is to blame! My apologies for what it put your body through, ";
	if "Anton Virgin Thief Hostility" is listed in Traits of Moreau:
		say "especially since you were a virgin before he took that away from you. I did not want to give you even more pain on top of that. Usually I have more... control of myself, and avoid knotting anyone.' ";
	else:
		say "especially since I know that my anatomy is... challenging. Usually I have more control of myself, and avoid knotting anyone.' ";
	say "Falling silent after saying this, Moreau's upper body is almost unnaturally still as he watches you with unblinking eyes, but you can see from the fact that the coils of his snake half are twisting and churning beneath that he's wound up quite intensely as he waits for your reaction.";
	LineBreak;
	say "     [bold type]What do you say to Moreau?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - What happened... happened. It's alright."; [kinda neutral]
	say "     [link](2)[as]2[end link] - You don't blame him. You chose to go through with all this, and you're grateful he helped you."; [more thankful for his help]
	say "     [link](3)[as]3[end link] - You don't blame him [italic type]at all[roman type]. You enjoyed things because it was [italic type]with him[roman type]."; [hinting at the possibility something more]
	say "     [link](4)[as]4[end link] - Curtly say that you do not want to talk about this."; [cuts off any physical relationship in the future]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to stay fairly neutral and accept things, [link]2[end link] to accept things and thank Moreau, [link]3[end link] to thank Moreau and add that you didn't mind going through it [italic type]with him[roman type], or [link]4[end link] to curtly deflect any further discussion about the topic.";
	if calcnumber is 1:
		LineBreak;
		say "     Keeping your calm about everything that just happened, you shrug and tell the naga that things are alright between the two of you. Finally learning what exactly went down between Anton and yourself had its costs, but the peacock is the one to blame, not Moreau. It isn't like he didn't try to help you any other way beforehand, always being blocked by Anton's left-behind commands, and gave you chances to stop in between. This was just the only way to get to the bottom of things. As he hears your words, Moreau bends his neck in acknowledgement of what you're saying, relief visible in his expression as his forked tongue flicks out into the open for the blink of an eye. 'Shall we leave this place behind then?' Nodding, you accompany the naga in moving away from the spot where Anton had sprung his trap of mental and physical violation.";
	else if calcnumber is 2:
		LineBreak;
		say "     Keeping your calm about everything that just happened, you shrug and give the naga a friendly nod. There really is nothing to blame him for, and things are good between the two of you. It isn't like he didn't try to help you any other way beforehand, always being blocked by Anton's left-behind commands, explaining the process to you and giving chances to stop in between. He really did go out of his way to help you through it all. Anton is the guilty party here, and he made it so this was the only way to get to the bottom of things. As he hears your words, relief washes over Moreau's expression, with his forked tongue flicking into view as he lets out a breath. 'I am glad you see things this way, given the... scope of the acts that were revealed.' Glancing around at the chaotic, abandoned parking lot, then throwing a dark glare at the flower shop, Moreau adds, 'Shall we leave this place behind then?' Nodding, you accompany the naga in moving away from the spot where Anton had sprung his trap of mental and physical violation.";
	else if calcnumber is 3:
		LineBreak;
		say "     Keeping your calm about everything that just happened, you shrug and give the naga a friendly nod. There really is nothing at all he would be to blame for, and from your perspective, things are good between the two of you. It isn't like he didn't try to help you any other way beforehand, always being blocked by Anton's left-behind commands, explaining the process to you and giving chances to stop in between. He really did go out of his way to help you through it all. Anton is the guilty party here, and he made it so this was the only way to get to the bottom of things. As he hears your words, relief washes over Moreau's expression, with his forked tongue flicking into view as he lets out a breath, only to show a surprised expression as you step up close to him afterwards.";
		say "     Reaching out to lightly touch the side of his forearm with your fingers, you add that you've actually got an extra thing about which to be cross with Anton now - as the recall of what he did interfered with an otherwise quite... interesting time with Moreau himself. You're clearly remembering all the moments of mismatch and light confusion, always when Moreau was gentle and generous in what he did. You can't help but wonder how much better it, and especially the end, would have been without Anton's remembered presence throwing a shadow over things. That said, you trace your fingertips along the scales up his arm for a second, then withdraw your hand. Moreau stares at you, motionless except for the slits of his eyes widening and his tongue flicking out several times in quick succession. 'This is... unexpected. I haven't actually gone all the way with anyone in a while. Knotting someone goes further into true intimacy than I share with just casual partners. What this means for you and me might merit exploring at another time. For now, let us not linger at this place. Will you accompany me back to the store?' As you nod, he smiles slightly, then leads the you away from the spot where Anton had sprung his trap of mental and physical violation.";
		TraitGain "Recall Aftermath - Naga Interest" for Moreau;
		AffectionGain 1 for Moreau;
	else if calcnumber is 4:
		LineBreak;
		say "     Curtly saying in a sharp tone that you do not want to talk about this, you give the naga a firm stare, which he acknowledges by bending his neck in a minimalistic nod. 'Let us leave this place,' are his next words, still said in a fairly stiff manner. With nothing more to be added, you follow him in moving away from the spot where Anton had sprung his trap of mental and physical violation on you.";
		TraitGain "Recall Aftermath - Curt Rejection" for Moreau;
	MoreauStage4_Analysis;

to MoreauStage4_ChoicePoint:
	say "'Are you okay? Physically, I mean.' Moreau asks at that point, blinking his eyes as he focuses on every detail of your expression. 'I honestly didn't expect Anton to be this rough. My apologies for what it put your body through. Falling silent after saying this, Moreau's watches you with unblinking eyes.";
	LineBreak;
	say "     [bold type]What do you say to Moreau?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - What happened... happened. It's alright."; [kinda neutral]
	say "     [link](2)[as]2[end link] - You don't blame him. You chose to go through with all this, and you're grateful he helped you."; [more thankful for his help]
	say "     [link](3)[as]3[end link] - It's fine. You enjoyed things because it was [italic type]with him[roman type]."; [hinting at the possibility something more]
	say "     [link](4)[as]4[end link] - Curtly say that you do not want to talk about this."; [cuts off any physical relationship in the future]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to stay fairly neutral and accept things, [link]2[end link] to accept things and thank Moreau, [link]3[end link] to thank Moreau and add that you didn't mind going through it [italic type]with him[roman type], or [link]4[end link] to curtly deflect any further discussion about the topic.";
	if calcnumber is 1:
		LineBreak;
		say "     Keeping your calm about everything that just happened, you shrug and tell the naga that things are alright between the two of you. Finally learning what exactly went down between Anton and yourself had its costs, but the peacock is the one to blame, not Moreau. It isn't like he didn't try to help you any other way beforehand, always being blocked by Anton's left-behind commands, and gave you chances to stop in between. This was just the only way to get to the bottom of things. As he hears your words, Moreau bends his neck in acknowledgement of what you're saying, relief visible in his expression as his forked tongue flicks out into the open for the blink of an eye. 'Shall we leave this place behind then?' Nodding, you accompany the naga in moving away from the spot where Anton had sprung his trap of mental and physical violation.";
	else if calcnumber is 2:
		LineBreak;
		say "     Keeping your calm about everything that just happened, you shrug and give the naga a friendly nod. There really is nothing to blame him for, and things are good between the two of you. It isn't like he didn't try to help you any other way beforehand, always being blocked by Anton's left-behind commands, explaining the process to you and giving chances to stop in between. He really did go out of his way to help you through it all. Anton is the guilty party here, and he made it so this was the only way to get to the bottom of things. As he hears your words, relief washes over Moreau's expression, with his forked tongue flicking into view as he lets out a breath. 'I am glad you see things this way, given the... scope of the acts that were revealed.' Glancing around at the chaotic, abandoned parking lot, then throwing a dark glare at the flower shop, Moreau adds, 'Shall we leave this place behind then?' Nodding, you accompany the naga in moving away from the spot where Anton had sprung his trap of mental and physical violation.";
	else if calcnumber is 3:
		LineBreak;
		say "     Keeping your calm about everything that just happened, you shrug and give the naga a friendly nod. There really is nothing at all he would be to blame for, and from your perspective, things are good between the two of you. It isn't like he didn't try to help you any other way beforehand, always being blocked by Anton's left-behind commands, explaining the process to you and giving chances to stop in between. He really did go out of his way to help you through it all. Anton is the guilty party here, and he made it so this was the only way to get to the bottom of things. As he hears your words, relief washes over Moreau's expression, with his forked tongue flicking into view as he lets out a breath, only to show a surprised expression as you step up close to him afterwards.";
		say "     Reaching out to lightly touch the side of his forearm with your fingers, you add that you've actually got an extra thing about which to be cross with Anton now - as the recall of what he did interfered with an otherwise quite... interesting time with Moreau himself. You're clearly remembering all the moments of mismatch and light confusion, always when Moreau was gentle and generous in what he did. You can't help but wonder how much better it would have been without Anton's remembered presence throwing a shadow over things. That said, you trace your fingertips along the scales up his arm for a second, then withdraw your hand. Moreau stares at you, motionless except for the slits of his eyes widening and his tongue flicking out several times in quick succession. 'This is... unexpected. It might merit exploring at another time. For now, let us not linger at this place. Will you accompany me back to the store?' As you nod, he smiles slightly, then leads the you away from the spot where Anton had sprung his trap of mental and physical violation.";
		TraitGain "Recall Aftermath - Naga Interest" for Moreau;
		AffectionGain 1 for Moreau;
	else if calcnumber is 4:
		LineBreak;
		say "     Curtly saying in a sharp tone that you do not want to talk about this, you give the naga a firm stare, which he acknowledges by bending his neck in a minimalistic nod. 'Let us leave this place,' are his next words, still said in a fairly stiff manner. With nothing more to be added, you follow him in moving away from the spot where Anton had sprung his trap of mental and physical violation.";
		TraitGain "Recall Aftermath - Curt Rejection" for Moreau;
	MoreauStage4_Analysis;

to MoreauStage4_Analysis: [back to the store for analysis]
	WaitLineBreak;
	say "     No more words are spoken between you all the way back into the mall, or while passing through the crowds to get back to Moreau's store. As he leads the way with swift, slithering movements, torso bent lower than usual, the passersby seem to register that the naga is not in a talkative mood, stepping aside to let you pass. Unlocking the door and allowing you to enter, Moreau locks it behind the two of you, then snakes his way into the center the store area. Being in his own domain allows Moreau to regain his usual professional composure, and he lets his gaze sweep over the mannequins that are either displaying, or standing ready to serve. Then moves a hand to indicate the back room of the store, waiting patiently for you to walk over to it with him, then step through the door as he holds it open.";
	say "     You find yourself in what appears to be a mostly private area, not open to the naga's usual clientele. The room seems quite well-appointed for what must have formerly been an utilitarian storeroom, with a large and well-filled bookshelf as well as multiple wooden... art pieces maybe, looking like a some sort of cross between a tree and a jungle gym. A floor-length curtain in rich carmine-red partitions off one of the back corners, keeping it a mystery what else Moreau keeps back here. As the naga snakes forward and begins to drape and curl his long body over one of the wooden structures, you realize that it is a piece of furniture, with him soon sighing contently as he comes to rest. 'Please, sit,' he invites you, just as a mannequin places a suitable chair for yourself behind you, then leaves the room, shutting the door behind it.";
	WaitLineBreak;
	say "     Moreau waits for you to get comfortable, then clears his throat. 'Let us go through what we learned then. Some valuable details about your culprit, Anton, were revealed. By the behavior, and what played out, I have little doubt he was a peacock. I've encountered their kind before. They're capable of entrancing others with their feathers, and it seems your acquaintance learned to greatly enhance this ability by making good use of the sun. Be wary, if you do encounter one of his species again, and watch out for one that is basking in the sun, wanting to draw in victims. Especially if you decide to follow his [']invitation['] and intend to track him down over at the coastline. That seems a prime location to use the tactics he demonstrated already.' Taking his words to heart, you thank Moreau for his assistance in getting to the bottom of the missing memory. Then the two of you make your way back into the mall.";
	now Resolution of Anton's Intro is 5; [player did total recall]
	TraitGain "Name Revealed" for Anton;
	TraitGain "Meeting Spot Revealed" for Anton;

Moreau ends here.
