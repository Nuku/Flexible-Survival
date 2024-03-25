Version 1 of Ariel by Emerald begins here.

[HP of Ariel]
[0 - Unmet]
[1 - Shown her home]
[2 - Talked to her]
[3- Cloudscape seen]
[4- Witnessed her feelings]
[5- Sex Complications]
[6- Met Eos]
[7- Ariel has ribbon]

Section 1 - Introduction Events

Table of GameEventIDs (continued)
Object	Name
Bottled Tornado	"Bottled Tornado"

Bottled Tornado is a situation.
ResolveFunction of Bottled Tornado is "[ResolveEvent Bottled Tornado]".
Sarea of Bottled Tornado is "Forest".

when play begins:
	add Bottled Tornado to BadSpots of FemaleList;

to say ResolveEvent Bottled Tornado:
	say "     Wandering through the verdant greenery of the forest, you stumble upon a small clearing with a stream running through it, an idyll place to stop for a short rest. As you move to the water to wash your face, you spot a small bottle half buried in the mud. After digging it out, you see that it's made of cloudy glass and seems to shift oddly in your hand despite appearing empty. A bit of wire is coiled around the cap to ensure the bottle doesn't accidentally come open. As you continue examining and manipulating the bottle, you hear a quiet whistling sound, as if from a great distance, and the bottle itself begins vibrating. Looking closer, you see a miniature whirlwind captured in this glass bottle! Setting the bottle down to consider your options, you notice the tiny cyclone seems to calm, and the vibrations and whistling seem to fall away.";
	say "     [bold type]Would you like to unleash the storm?[roman type][line break]";
	let Ariel_Release_Choices be a list of text;
	add "Unwind the wire keeping the cap on. What's the worst that could happen?" to Ariel_Release_Choices;
	add "Probably best to leave the bottle where you found it. Whatever it contains appears to be angry." to Ariel_Release_Choices;
	let Ariel_Release_Choice be what the Player chooses from Ariel_Release_Choices;
	if Ariel_Release_Choice is:
		-- "Unwind the wire keeping the cap on. What's the worst that could happen?":
			LineBreak;
			say "     As you cautiously begin unraveling the wire from around the neck of the bottle, the whirlwind inside grows increasingly agitated. When you remove the final bit keeping the container sealed, you're nearly deafened by the bang as the cap shoots off the end of the bottle and the roar of the wind as the calm stream quickly becomes the eye of a tornado. Bracing yourself against anything you can find to keep from being swept away, you catch glimpses of something between the forest's detritus that the winds have picked up. Between the strain of steadying yourself in the gale and the leaves and branches flung around by the cyclone, you have but a moment to look up and see the form of a tall woman with long auburn hair that twists in the wind. Her face, contorted in rage, glares down at you as the maelstrom picks up more force. The figure must be the source of the sudden storm.";
			say "     Calling out to her to the spirit to stop, the winds falter and then slow as the woman takes notice of your voice. Her rage changes to a look of confusion as the enraged spirit looks your form up and down and then at her surroundings. Before you can say anything more, you must brace yourself as the winds pick up again, quite literally this time, as she flies high into the sky until you lose sight of her ephemeral form. After a few minutes of waiting around, you suppose that whatever entity you freed must have left after realizing you were not her captor, and you begin gathering your scattered possessions. As you set out, you feel a gentle breeze and the scent of flowers from deeper in the forest as the sylph glides back into the clearing. She's again changed her demeanor, appearing apologetic as the woman sheepishly moves in your direction. You can fully take in the storm maiden's appearance as she approaches.";
			WaitLineBreak;
			say "     She's nearly 6 feet tall with long silvery hair almost reaches her butt that moves as if a breeze was slowly tossing it. The woman would look like an attractive human if not for the fact that she's nearly transparent and floating a couple feet off the ground. As they approach, tears begin to form in the spirit's grey eyes, and you're nearly knocked off your feet as rushes in to hug you. She swirls around you, not as a raging tempest this time, but as a soft caress before settling with her arms around you. With her face this close, you get a closer look at the sylph and notice that her ears come to slight points. She doesn't stay long, though, before pulling away with a broad grin and the tears quickly fading into the air. She begins motioning with her hands, first pointing at herself, then forming a circle with her hands, and finally pointing at you. Then she moves off into the forest again, leaving you with the scent of wildflowers and the sound of the wind in the leaves.";
			now Resolution of Bottled Tornado is 1;
		-- "Probably best to leave the bottle where you found it. Whatever it contains appears to be angry.":
			LineBreak;
			say "     Whatever is in this bottle was probably put here for a reason and is probably dangerous based on how much it shakes when it's in your hands. The safer choice is to place it back where you found it and allow the water to reclaim it so that this storm can't harm you or the city. You pick up the bottle once more to carry it back to the stream, and the whirlwind begins to retake shape, but you have a firm grip and carry it back to the muddy hole you first found it in. Placing the bottle down in the pit, the whirlwind it contains strangely doesn't subside, increasing its struggle until you pack it back into the earth where you first found it. You ensure it's not visible on the surface so that someone else doesn't accidentally happen across such a dangerous item. As you gather your supplies to continue through the forest, you hear the bottle shaking in the stream until it slowly settles down and quiets. You leave the clearing feeling that you've safely handled a sleeping threat to the already dangerous city.";
			now Resolution of Bottled Tornado is 2;
	now Bottled Tornado is resolved;


Table of GameEventIDs (continued)
Object	Name
Wind in the Willows	"Wind in the Willows"

Wind in the Willows is a situation.
ResolveFunction of Wind in the Willows is "[ResolveEvent Wind in the Willows]".
Sarea of Wind in the Willows is "Forest".
Prereq1 of Wind in the Willows is Bottled Tornado.
The Prereq1Resolution of Wind in the Willows is { 1 }.

to say ResolveEvent Wind in the Willows:
	say "     Wandering through the woods once again, you begin to doubt where you've ended up as more and more trees have a pinkish hue to their bark and twisted, grasping branches, and you swear the trees are moving position when you're not looking. Hoping to get through the area sooner than later, you break into a brisk walk. The strange trees ahead of you are closer together, and it's a struggle not to get caught on them, especially as they seem to reach out to snag and pull on your gear. When the forest ahead of you becomes too thick to pass through, you stop to check your surroundings. You can see that the trees have moved into a broad circle around you, a grove hemmed in tightly by pink trees. In ones and twos, the trees begin to change from trees into beautiful naked women, leisurely approaching now that they've managed to corral you. Desperately looking around for an escape from the grove of horny dryads, you're ready to give up and accept your fate to join them. You give out a desperate call for help, but know it's futile this deep into the mysterious forest.";
	WaitLineBreak;
	say "     That's when you feel the wind pick up among the remaining dryad trees, and the familiar scent of wildflowers overpowers the dryads['] smell of cum and other sexual fluids. You see the wind girl you rescued rushing through the trees, clearly determined to come to your rescue this time. The winds your savior calls up are so strong that you see some dryads picked up and tossed through the air while others return to their tree shape so as not to meet the same fate. With the encroaching crowd thinned out by your savior's sudden wind storm, you see your opportunity to escape through the forest and break for it. You run faster than you can ever remember having done, thanks in part to having a strong wind at your back. Once you get used to having something push you along, you lengthen your stride and quickly reach a familiar part of the forest.";
	say "     Once you're sure you're out of the woods, so to speak, you come to a stop to catch your breath. That's when you're all but knocked off your feet when something catches you in a familiar embrace. The sylph who had helped you escape seems just as glad that you're safe as you are to be safe. Maybe now is a good time to ask some questions and figure out who exactly you released from that bottle. Untangling yourself from the airy spirit's hug, you find a comfortable patch of earth to sit on and prepare to interrogate her. Considering you've both saved each other already, you ask the woman if she would tell you her name. The girl giggles and motions to cover her mouth, moves closer to you, and begins to draw in the dirt. With a focused look, she writes the word Ariel on the ground, then leans back and wipes her brow. Moving the earth around like that must have taken a lot of concentration. You follow this by asking Ariel how she found you so deep in the forest when you thought the dryads had captured you for sure. Ariel makes goggles with her hands and looks at you through them, indicating that your new friend has been watching you as you move around the city.";
	WaitLineBreak;
	say "     Ariel then makes the familiar IOU symbol, leading you to believe that she had been following you to find something that would make the two of you even. Being reminded of your first encounter prompts you to ask about the predicament you first discovered her in and how the sylph managed to get stuck in the first place. Someone didn't want her getting out on her own. Ariel's face takes on a stormy expression, and she stamps the ground in frustration when you ask her about her captivity. Taking the hint that it's a touchy subject, you tell her that it's something you can both talk about when she's more comfortable with it. Your kind words stop the brewing tantrum before it can get to more than a strong breeze, and the lovely woman looks momentarily ashamed. That is, before her face breaks out into a broad grin again and she catches your hand, pulling you to your feet and towards the edge of the clearing. The excitable spirit appears to have thought of a place she wants to show you. It doesn't take much pulling for you to allow your new friend to lead you towards whatever surprise she has in store for you.";
	say "     After a short walk, being pulled along by Ariel and occasionally pushed by gusts of wind, she leads you to a building on the outskirts of the forest that the trees haven't overtaken yet. A music store that was left abandoned when its owners fled the encroaching forest. Above the entrance, there's a sign with gilt letters spelling out the previous name, although all you can make out is the word Aria. Someone has rearranged the letters and brought new ones scavenged from nearby shops until it reads Ariel's Aria. It's truly a mystery. The sylph leaps through the shattered window while you pause to admire her handiwork, leaving you to enter through the doorway.";
	WaitLineBreak;
	say "     The inside is predictably chaotic, with most instruments and furniture tossed this way and that. Ariel seems to be waiting for you by a door near the back of the store, eagerly floating around the shop's interior while you pick your way through the ruined interior. Finally reaching the doorway, you're shocked when Ariel throws it open in a gust of wind, revealing a small stockroom with a mattress and some bedding. Perhaps an employee once used this backroom as a temporary shelter, but if so, they're long gone. This shelter must be where Ariel has been since you freed her, and she is trusting you with the knowledge of her newfound home.";
	now HP of Ariel is 1;
	move Ariel to Ariel's Home;
	move player to Ariel's Home;
	AddNavPoint Ariel's Aria;
	now Wind in the Willows is resolved;


Section 2 - Music Store Area

Table of GameRoomIDs (continued)
Object	Name
Ariel's Aria	"Ariel's Aria"

Ariel's Aria is a room. It is fasttravel.
Ariel's Aria is private.
Description of Ariel's Aria is "[Ariel'sAriaDesc]"

to say Ariel'sAriaDesc:
	say "     The building in front of you seems to have once been a music store, once a part of the thriving city. The encroaching forest has overrun the surrounding buildings, but through some machination of fate, the store still maintains much of its former structure. To the right of the entryway, a large broken display window allows you to see into the store, although it would be foolish to enter through it due to all the glass. Above the doorway is a metal sign with the store's name, although all that remains of the original is the word Aria. Ariel has replaced the first half with her name cobbled together from any letters she could scavenge from the nearby buildings.";


Table of GameRoomIDs (continued)
Object	Name
Ariel's Home	"Ariel's Home"

Ariel's Home is a room. Ariel's Home is east of Ariel's Aria.
Description of Ariel's Home is "[Ariel'sHomeDesc]"

to say Ariel'sHomeDesc:
	if HP of Ariel < 6:
		say "     The music store is chaotic, with few intact instruments, and some unknown violence has shattered the plate glass window in the storefront. You can still see various fliers tacked onto the walls, bearing the previous name of the store. There's a stockroom in the back where the energetic sylph stays when she's not out watching creatures in the city or enjoying the skies.";
	else:
		say "     The music store is more orderly now that Ariel can move things around quickly with her human form. She's even dragged a couch and some chairs in from one of the nearby buildings to make it look more homely. The fliers on the wall have been redecorated, with creative drawings around the border and the old storename stricken through with Ariel's written above it. The stockroom in the back is still where the sylph has her bed, with curtains hung to hide the shelving. Next to the bed is a nightstand where she leaves the ribbon Eos gifted her when not being used to tie up her hair.";


Section 3 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Ariel	"Ariel"

Ariel is a woman.
ScaleValue of Ariel is 3. [X sized]
Body Weight of Ariel is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ariel is 2. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ariel is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ariel is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ariel is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ariel is 3. [length in inches]
Breast Size of Ariel is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ariel is 2. [count of nipples]
Asshole Depth of Ariel is 12. [inches deep for anal fucking]
Asshole Tightness of Ariel is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ariel is 0. [number of cocks]
Cock Girth of Ariel is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ariel is 0. [Length in Inches]
Ball Count of Ariel is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ariel is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ariel is 1. [number of cunts]
Cunt Depth of Ariel is 12. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ariel is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ariel is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ariel is false.
PlayerRomanced of Ariel is false.
PlayerFriended of Ariel is false.
PlayerControlled of Ariel is false.
PlayerFucked of Ariel is false.
OralVirgin of Ariel is false.
Virgin of Ariel is false.
AnalVirgin of Ariel is true.
PenileVirgin of Ariel is true.
SexuallyExperienced of Ariel is true.
TwistedCapacity of Ariel is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ariel is false. [steriles can't knock people up]
MainInfection of Ariel is "Sylph".
Description of Ariel is "[ArielDesc]".
Conversation of Ariel is { "Windy noises" }.
The scent of Ariel is "Ariel smells like the fresh air and the wildflowers from where you first met."

to say ArielDesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of Ariel] <- DEBUG[line break]";
	if HP of Ariel < 7:
		say "     Ariel is a tall woman currently relaxing in the ruins of her new home. The cheerful woman glides around the store, examining the various things left behind by the previous owners, unconcerned with her naked figure being on full display. Long transparent hair frames the sylph's pale grey eyes, reaching almost down to hide her shapely ass. Noticing your stare, Ariel turns in your direction to wave, unaware that this exposes her modest breasts to you, before moving to another part of the store.";
	else:
		say "     Ariel is a tall sylph girl who, at the moment, is lounging around in her new home. The spirited woman still occasionally takes on her sylph form to explore the city, but since obtaining the magic ribbon, Ariel can be found in her human form more often than not. She's still nude as the day you rescued her, except for the orange ribbon she uses to tie up her long auburn hair. Despite her apparent lack of shame, when the woman notices you looking her over, her arms move as if to cover before stopping and presenting her body for you to finish inspecting her. She displays her modest breasts for you, and as your eyes move downwards, you catch a bit of moisture around her pussy. With a giggle, she turns around to show off her shapely ass before returning to her relaxation. That must be all for the show.";


Section 4 - Talking

instead of conversing the Ariel:
	if HP of Ariel is 1:
		say "     You find the sylph girl uncharacteristically focused, attempting to use her powers to blow some of the abundant debris out of her new home. Asking what she's up to, Ariel stops momentarily to come closer. Motioning around the room the abandoned storefront, she draws up a wind before stopping as she lets out a tiny sneeze. You have to stifle a snicker as you process how an air spirit can have allergies and then decide to help her. You carefully drag some of the larger pieces of what were once musical instruments through the broken window, careful not to make too much noise and draw attention to your friend's refuge. Occasionally you catch Ariel looking you up and down when she thinks you're preoccupied with a large drum or boxes of sheet music. Once she moves the larger pieces, Ariel gives you an eager smile before commencing what you at first assume is a victory lap around the store before realizing that a small cyclone has started to build. You jump out of the way just as she blows the miniature dust storm out the front of the store. That's certainly one way to do spring cleaning.";
		now HP of Ariel is 2;
	else:
		say "[ArielTalkMenu]";

to say ArielTalkMenu:
	say "     What do you wish to talk about with Ariel?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "The City";
	now sortorder entry is 1;
	now description entry is "Ask her how she's enjoying exploring the city";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sex with Ariel";
	now sortorder entry is 2;
	now description entry is "Broach the topic of getting intimate with the flighty spirit";
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
				if (nam is "The City"):
					say "[ArielTalk1]";
				if (nam is "Sex with Ariel"):
					say "[ArielTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the sylph, simply waving at her, which she returns with a smile before moving to something else.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ArielTalk1:
	say "     Seeing Ariel zip in and out of the store so often, you ask whether she's enjoying the post-apocalyptic city you released her into. The sylph's eyes widen at your question, and she rapidly begins to make motions with her hands to try and describe the fantastical things she's seen across the city. In the excitement, it's hard to follow her description, but you can grasp a few of her experiences. When your lack of comprehension becomes apparent, Ariel pauses momentarily, closes her eyes, and begins to focus. Winds begin to stream into the room, and small clouds begin to take shape, quickly accumulating until a cloud roughly the size of a dog is floating in the center. Then Ariel begins to sculpt the cloud, quickly shaving down and removing the excess bits until a cute wyvern emerges. The sylph blows on the lizard, and it slowly begins moving, its cloudy wings moving up and down as if flying around the room. The falling bits of fluff draw your attention away from the wyvern as they begin to take the shape of miniature wolves, succubi, and other city residents. It looks as though your friend has been busy spying on her new neighbors.";
	say "     Soon enough, the fascinating cloud-stuff creatures begin to fall apart and return to nothing, and you return your gaze to Ariel, who seems to have been watching your reaction to her artistic endeavor. She quickly averts her gaze when your eyes meet, and her hands begin moving once more as she draws more of her winds into the small store. This time the clouds stay low, creating a dense fog across the floor as she a small cityscape, from the carnival with its many booths and large Ferris wheel lazily rotating to the High Rise District with its soaring towers dwarfing the nearby buildings. Your friend moves from one locale to the next, feverishly creating what she can't describe. You slowly wander across the storefront, crouching down to look at the minute details each attraction has added, all the occupants of the ruined city going about their new lives. She must have gotten close to some of these creatures to get such fine detail. After looking around for a bit, the clouds slowly lose shape and return to the air that Ariel drew them from originally.";
	if HP of Ariel is 2:
		say "     Standing up, you notice the sylph isn't crafting the clouds anymore but instead stands watching you. How long has she been staring at you? As soon your eyes meet, though, she quickly looks down before making herself look busy dispersing the last of the clouds. You suppose that's all for her little show then.";
	WaitLineBreak;
	if HP of Ariel > 3:
		say "     Moving on from the cityscape, she rushes over to another area of the floor, gathering fog together as she creates a human-sized cloud. You're familiar with the marvel the sylph will create out her unique medium next, having seen it before when you caught her masturbating. You settle in as nimble fingers carefully push away puffy clouds, leaving behind a smooth white surface. A face quickly emerges from the hazy mannequin. Wait a minute, that's your face! Of course, Ariel has been watching you on her sightseeing missions since you freed her. A hand moves further down, driving away clouds as she continues to sculpt your torso, spending extra time on your [if Breast Size of Player > 0][short breast size desc of Player] breasts, cupping them and tweaking the nipples perhaps just a bit more than necessary to get them just right[else]chest, making sure it's exactly as she remembers[end if]. A blush begins to form on the focused spirit's face, and the cloudy constructs around you slowly dissipate as the will holding them together loses focus.";
		if Player is Herm:
			say "     One hand begins forming your [cock size desc of Player] dick, while the other goes between the mirror's legs to form a cleft. The sylph begins to run her hand along the newly formed shaft, tightly gripping the cloud cock as she gives the double a handjob. Her other hand hasn't been idle either, lovingly massaging the pussy lips she's created, occasionally dipping inside before returning to their earlier pattern. You see something glisten between the air spirit's thighs, but her pussy lies untended due to needing both hands to worship her creation properly. Just as your own hands begin to dip down to take care of your throbbing cock and wet pussy, she comes to an abrupt stop as her rapid movements cause the clouds to begin falling apart.";
		else if Player is Male:
			say "     A delicate hand begins to form your [cock size desc of Player] dick. The sylph starts to rub the cloud between your double's legs as if giving it a handjob, the illusion reinforced when her other hand goes underneath to cup and begins fondling the balls that have started taking shape. Ariel's breath quickens as she pumps the model's cock, its real-life counterpart quickly coming to attention in sympathy. It all comes to an abrupt end when the cloudy cock gives out, and the hands that were so enthusiastically beating it off simply pass through the space it once occupied. ";
		else if Player is Female:
			say "     A delicate hand forms a cleft between your mirror's legs. As it moves around the newly formed lips, Ariel's other hand dips down to her pussy to give it some attention. Watching the sylph rub your counterpart, your hands reach down to touch your moist cunt. Perhaps noticing your heavier breaths as you get into the show, the artist in front of you abruptly stops her ministrations. ";
		else if Player is Neuter:
			say "     One hand moves down to smooth out the groin of the double, mimicing your own perfectly smooth groin. While on hand rubs the blank mound, the other reaches behind to sculpt your ass, a finger circling only hole on your lower half. Giving the duplicate butt an overzealous squeeze, Ariel accidentally breaks the illusion, the clouds drifting apart under her fingers. ";
		WaitLineBreak;
		say "     The sylph gives a needy whine at the ephemeral quality of the masturbation tool she'd created before seeming to come to her senses and slowly turning to look in your direction. She gives you a small grin as she remembers your presence before blowing the clouds away and making herself scarce. You suppose Ariel still isn't comfortable sharing her private thoughts about you like that.";
	if HP of Ariel < 3:
		now HP of Ariel is 3;

to say ArielTalk2:
	if HP of Ariel < 4:
		say "     You try to bring up how attractive the nude sylph is and how you'd like to do something more intimate, but Ariel isn't meeting your eyes and quickly rushes to show you some new bauble she found in the city. You suppose she sees the two of you more as friends than lovers. You'd hate to ruin what you have now, so you drop the topic as you go to see what has fascinated her this time.";
	else if HP of Ariel is 4:
		say "     After seeing her apparent fascination with you, you think it's time you had an earnest conversation with the sylph about moving your relationship to a more intimate place. You flag her down as she floats leisurely around the store, and the woman glides quickly over to you. The cheerful demeanor that Ariel always carries slips a bit in favor of a slight blush once you bring up her little show the last time she was showing off. Before she can run off again, you explain that it's nothing to worry about and that you're also into her. This admission causes her to pause the hasty flight she was preparing to make as she stops staring at you, thinking quite hard about how she wants to respond to your confession. Then the bashful girl moves towards you to embrace you in that familiar hug before you notice her hand trying to sneak down and [if Player is Male]grab your dick[else if Player is Female] rub your pussy[else]squeeze your ass[end if].";
		say "     You laugh at her eagerness to start and pull away to get undressed. Once you're ready to begin again, the eager sylph begins touching you all over your body, trying to please you in ways that remind you of the cloudy construct. You let her hands wander across your body and explore as you seek to return the favor, allowing your hands to caress her breasts. It feels odd, as though you're trying to grasp air, but you move past the strange consistency to try and please your inexperienced lover. But despite your continued efforts, Ariel doesn't seem to react to you. Even when you pinch her nipples to see some reaction, you can barely grasp them, let alone tweak them. All the while, Ariel's hand moves across your body, which while not unpleasant, is more akin to a strong breeze than a pair of hands. In a final attempt to get something out of this exchange, you reach between the sylph's legs to rub her pussy. To your dismay, while there's moisture down there, it seems to be a repeat of your earlier attempts to provide her some pleasure. Having had enough, you gently pull the two of you apart and are met with a confused and slightly hurt look on Ariel's face.";
		WaitLineBreak;
		say "     You explain while you enjoyed her touches, you were upset that you couldn't return the attention she was giving to you. You want to lavish your attention upon your lover as she wishes to do to you. Tears begin to form at these words, and before you can continue to reassure her, the sylph leaps into your arms once more. With the mood truly dead, you stand with her in your arms as you console the distraught spirit. Surely somewhere in this city, between the nanites and the magic, something must exist to help bring her closer to you. After a bit, Ariel calms down, and you can guide her back to the stockroom, where she rests while not exploring. And then you wander back into the city wondering where you'll find something to let you touch the wind...";
		now HP of Ariel is 5;
	else if HP of Ariel is 5:
		say "     You should keep looking for a solution to the sylph's problem before you try to get intimate with her again. Perhaps one of the museum's many artifacts could be the answer.";
	else if HP of Ariel is 7:
		say "[ArielSexMenu]";

Section 5 - Sex

instead of fucking Ariel:
	if Dawning is not resolved:
		say "     You're not sure how to make that work. She's made of air after all";
	else if (lastfuck of Ariel - turns < 6): [she got fucked in the last 18 hours = 6 turns]
		say "     Ariel looks at you apologetically but indicates that she's uninterested. It hasn't been all that long since the last time, after all.";
	else: [ready for sex]
		say "[ArielSexMenu]";

to say ArielSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is not Neuter:
		choose a blank row in table of fucking options;
		now title entry is "Mutual Masturbation";
		now sortorder entry is 1;
		now description entry is "See if the nymph will use her dexterous hands on you, while you return the favor";
	[]
	if Player is Male:
		choose a blank row in table of fucking options;
		now title entry is "Blowjob";
		now sortorder entry is 2;
		now description entry is "Ask the sylph to blow somewhere else, namely your dick";
	[]
	if Player is Male:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal";
		now sortorder entry is 3;
		now description entry is "Lay her down and show her how you feel";
	[]
	if Player is Female:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "See how long the air spirit can hold her breath while she licks your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Lick Her";
	now sortorder entry is 5;
	now description entry is "Lick the sylph's pussy";
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
				if nam is "Mutual Masturbation":
					say "[ArielSex1]";
				else if nam is "Blowjob":
					say "[ArielSex2]";
				else if nam is "Vaginal":
					say "[ArielSex3]";
				else if nam is "Cunnilingus":
					say "[ArielSex4]";
				else if nam is "Lick Her":
					say "[ArielSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the sylph, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ArielSex1: [Handsy]
	if Player is female:
		say "     Remembering how Ariel's hands dance around the clouds that she occasionally makes, you ask her if she'd like to try out the real deal. The sylph grins and busily ensures that the tie in her hair is firmly in place before bouncing over to you. It seems she's been looking forward to this. Grabbing your hand with one of her own, she squeezes you before moving on to the main attraction. An eager hand runs across your body and down toward your vagina while the other moves toward your chest. You gasp as she reaches your lips, making circles around your pussy as the hand on your chest mirrors the action on your nipples. When her hand grazes your clit, you decide you need to be proactive if this will be anything but one-sided.";
		say "     You lean forward to bring her small breasts into the reach of your lips. You take one of her nipples into your mouth and begin playing with it with your tongue. You can feel her arousal growing as her cute nipples quickly stiffen, but not being satisfied, you continue your offensive. While her fingers tease you by running along your dripping lips, your questing digits find that Ariel is already quite wet when you plunge two inside her narrow tunnel. Your fingers slip in and out, quickly making the woman quiver around your hands. Even with the imminent orgasm approaching, the sylph doesn't stop tending to your pussy as she slips inside and begins jilling you off. You lean against the counter of the old store as your legs start to feel weak, and you feel Ariel's hand reach around your head to pull you close as each of your frantic movements brings the other to climax. You cum around her fingers while she continues moving inside you, the sensation driving you wild when her hand brushes your sensitive clit. She doesn't notice, though, as her eyes lose focus in her own climax, drenching your hand in the fluids dripping from her well-pleasured pussy. The two of you bask in each other's close embrace before separating and cleaning up from the frantic session.";
	else:
		say "     Remembering how Ariel's hands dance around the clouds that she occasionally makes, you ask her if she'd like to try out the real deal. The sylph grins and busily ensures that the tie in her hair is firmly in place before bouncing over to you. It seems she's been looking forward to this. Grabbing your hand with one of her own, she squeezes you before moving on to the main attraction. Reaching down, careful hands grasp your dick almost too tightly before loosening her grip. You remind her not to get too excited; this cock isn't made of clouds. The sylph nods before giving you a naughty look and moving her hands. You gasp as she starts moving, not expecting the speed she'd use to tease you immediately. Dexterous fingers play over your member and tease your most sensitive places. With how quickly she brings you to the edge, she must know your dick better than you do. Before the fun ends, by making you cum so soon, your fingers move and seek out her intimate weak spots. It's her turn to gasp this time, and the assault on your dick slows as you cup her breasts. You continue playing with her, tweaking the cute nipples on her breasts, running your hands up and down her lithe body, purposefully avoiding the flower between her legs. Her stroking has slowed almost to a standstill, and her eyes seem to lose focus as she gazes at you. That won't do, you think. Perhaps it's time to remind her that she has a role to play.";
		say "     You trail two fingers down her flat tummy, stopping right over her clit. It takes her a moment to realize you're not going further before she gives you a needy whine. You grab her hand that lies still on your dick with your spare hand and move it slowly back and forth, reminding her that she has been neglecting something while she got off. Punctuating your statement with a slight movement to her clit, she slightly jumps before getting the message and resuming her handjob. Perhaps a little upset with your teasing, the nymph focuses on the sensitive head of your penis while her other hand dips below to cup and play with your balls. You reward your lover by letting your hand move to her sopping cunt and thrusting two fingers inside.";
		WaitLineBreak;
		say "     The sensitive spirit groans as you enter her with your digits, but she doesn't stop masturbating you after learning her lesson just a moment ago. You're quickly approaching your limit again, and this time, you're willing to go over the edge, but you're going to bring the needy nymph with you. You insert a third finger as you speed up your hand, desperate to get Ariel to come alongside you. She must feel you getting close as your dick throbs in her grasp, as she leans in to kiss your lips just as you finally cum. Whether it was the kiss or the warm pearly strands your pumping onto the sylph's belly, you can feel her begin to shake as lovestruck spirit groans into the kiss the two of you share. Of course, if that wasn't enough of a clue, she drenches your hand in sticky girl cum where it rests between her thighs. After basking for a moment, the two of you pull apart and begin cleaning yourselves up.";
	NPCSexAftermath Player receives "Stroking" from Ariel;

to say ArielSex2: [Blowjob]
	say "     Watching the sexy sylph move around her home, you begin to feel your [cock size desc of Player] dick becoming erect. Pulling your cock out, you call for Ariel and ask if she'd be willing to help you with your problem. She pauses momentarily, pretending to consider your request, before rushing towards you and pushing you back against a wall. Quickly falling to her knees, the sylph grabs your hands away from your crotch to give complete stares at one of her favorite things in the new ess to one of her favorite things. You cough a bit as the moment stretches on to remind her that her staring won't help you, though it's certainly not making you softer.";
	say "     With no hands to hold it still, your cock bobs up and down with your breathing as Ariel moves her face closer to the head. You feel her breath as she hovers over your dick, the air moving around your penis in a way that makes you think the sylph is doing something with her abilities. With a final inhale, the woman looks up to meet your eyes with a mischievous smirk before opening her mouth to insert the head of your cock. The moment her lips seal around you, there's a tremendous suction like if you had stuck your dick in a vacuum. Fully leaning against the wall, with your hands held at your side, you can only whimper as the suction slowly draws the beautiful girl's face toward your pelvis. Not stopping until [if Cock Length of Player < 6] you feel her lips meet the base of your shaft [else if Cock Length of Player > 5 and Cock Length of Player < 11] you feel her lips meet the root of your rod while the rest of your penis is nestled in the nymph's throat [else if Cock Length of Player > 10] she stops, only partway swallowing your prodigious shaft despite her frustrated attempts to make it to the base [end if].";
	WaitLineBreak;
	say "     You relax as the insane suction stops until you feel her moving back toward your tip. Even though she's stopped trying to suck the cum out of your balls, the intense vacuum in her mouth provides a new pleasure every time she draws back, sliding her tongue along the bottom of your shaft before slamming your cock back into her mouth down to the base. The sylph facefucking herself on your cock quickly brings you to the edge, and as your dick begins to twitch in her mouth, Ariel hilts your dick inside her throat one as deep as she can take it before the strings of white cum she's been working for erupt from your cock. The strange suction of her insides wrings your balls dry as the nymph waits for you to finish before finally sliding off and giving the underside one final long lick on her way out.";
	LineBreak;
	say "     Finally free from the devilish lips, you sink to the floor to recover your wits. The content sylph notices your stare but only smiles at you innocently before rising to her feet and leaving you to recover.";
	NPCSexAftermath Ariel receives "OralCock" from Player;

to say ArielSex3: [Vaginal]
	say "     You decide to take advantage of your nude nymph, grabbing her shoulder and pulling her towards the small bed she has in the back room. It doesn't seem like she understands your goal until you run a finger across her bare pussy lips. Her eyes widen at the touch before smiling and running towards her room. You chase the minx, turning through the makeshift bedroom doorway to find Ariel lying on the mattress. As if you needed more reason to ravage the beautiful girl waiting for you, she opens her legs to present her glistening pussy.";
	say "     You can't resist the wet and willing nymph, and quickly disrobe and position your erect dick to thrust into the waiting sylph. You move to rest right on her lower lips, preparing to push inside. You don't enter the waiting woman, though, instead thrusting upwards between her lips and grinding against her clit. Ariel whines a bit when she realizes you're only teasing her, but it's only fair with how she purposefully flashes her naked body when you're around. Hotdogging the girl and making her squirm is enjoyable, but it's not why you're here. You pull back to line up once again with her tight vagina. Tired of waiting, the impatient nymph hooks her long legs around your waist and gives you a mischievous smile before pulling you in. You both gasp as you bottom out inside her and feel her vagina spasming around your length as she cums from the insertion.";
	say "     Not one to be left behind, you begin thrusting, your range of movement limited by the legs that lock you into Ariel's embrace. Still, you make the most of the situation and quickly approach your orgasm. The legs holding you close tighten even further, ensuring you're as deep as possible when you cum, filling her deepest places with your seed.";
	LineBreak;
	say "     Her legs finally release you and you pull out of her, moving to her side as you cuddle in the afterglow of your paired orgasms. Before you know it, you're both asleep in the narrow bed holding each other close.";
	NPCSexAftermath Ariel receives "PussyFuck" from Player;

to say ArielSex4: [Cunnilingus]
	say "     You decide to see what the frisky nymph will do when you come up to her and whisper in her ear that you want to feel her mouth on your pussy. Pulling you in for a kiss, she pulls you toward her bedroom, groping you under your clothes as you move toward the waiting bed. You begin to undress, taking your time to remove your clothing as you tease the eager girl. As soon as your pussy is in sight, though, Ariel decides your strip show is over and pushes you over and onto the mattress. Regaining your bearings after the short fall, you can see the impatient sylph between your legs, her long brown hair and shapely ass behind all you can make out as her face is already down in your crotch.";
	say "     You feel her tongue moving along your pussy as she tastes your leaking girl-cum. Liking what she's found, her tongue penetrates further into your wet sex, driving a cry from your mouth as she tries to reach as far as her limited length will let her. With her face pressed firmly against your mound at this point, you can feel her breath every time she exhales directly onto your clit. The warm air brushes the sensitive spot as if it were the sylph's fingers that were rubbing you. Between the tongue deep in your folds and the strange currents running along the outside, you can feel an overwhelming orgasm approaching. Your legs lock around Ariel's head as the climax tears through you, although she does not pull away regardless, ensuring the sylph gets a face full of your juices. Riding your high to its conclusion, you release the woman from being trapped at your crotch.";
	say "     Slowly raising her head, Ariel wears a blissed-out grin on her soaked face, your nectar dripping from her chin. She crawls forward to lay with you, giving you a short kiss with her wet lips. The two of you rest briefly before rising and cleaning each other up, returning to what you were doing before your urges distracted the two of you.";
	NPCSexAftermath Ariel receives "OralPussy" from Player;

to say ArielSex5: [Lick Her]
	say "     When you offer to go down on the sylph, she makes a show of thinking about it while playing with the ribbon in her hair. With a tug, the ribbon comes loose, and you lose sight of Ariel as she turns back into the familiar windy form. You hear a giggle from above you before a weight appears on your shoulders, forcing you to the ground. So that's how she wants to do this. As Ariel moves to your front, you spot the golden ribbon tied firmly around her forearm again before the pussy she thrusts into your face obscures your vision.";
	say "     Ariel grinds her pink slit on your face when you're too slow to begin licking, the juices that flow from it smearing across your face. Before she can get herself off on your face, you grab the slender hips with your hands to stop her movement and allow you to lick the cunt in front of you. You nibble on her clit, causing the sylph to tense up in your hands before you drive your tongue into the soaked pussy on your face. You feel her fingers grab your head as you hold her in place, her channel trembling around your tongue as you force her to endure the pleasure. Suddenly you feel a gush of fluid as an orgasm crashes through her, but rather than let the sylph go after just one climax, you continue until she gasps out a second time before letting go of the hips and crawling out from under the dripping pussy.";
	NPCSexAftermath Player receives "OralPussy" from Ariel;


Section 6 - Events

Table of GameEventIDs (continued)
Object	Name
Cloud Sculpting	"Cloud Sculpting"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Cloud Sculpting"	Cloud Sculpting	"[EventConditions_CloudSculpting]"	Ariel's Home	2500	2	100

to say EventConditions_CloudSculpting:
	if HP of Ariel is 3 and Cloud Sculpting is not resolved: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Cloud Sculpting is a situation.
ResolveFunction of Cloud Sculpting is "[ResolveEvent Cloud Sculpting]".
Prereq1 of Cloud Sculpting is Wind in the Willows.
The level of Cloud Sculpting is 0.
The sarea of Cloud Sculpting is "Nowhere".

to say ResolveEvent Cloud Sculpting:
	say "     You walk into the store expecting Ariel to greet you as usual but are left waiting, as she doesn't seem to be nearby. That's when you notice the stockroom door that's usually left open seems to have been hastily closed, as it didn't quite latch. Wanting to surprise your airy friend, you creep over to the door expecting to see her napping or perhaps practicing some new trick to show you the next time you stop by. Peeking in the gap the door leaves open, you see the sylph gathering cloudy material, as when she created the lovely cityscape. You're curious what marvels the sylph will create out of her unique medium next to trump her previous creations as she gathers material into a large pile, nearly as tall as yourself. Nimble fingers carefully push away the puffy cloud, leaving a smooth white surface behind. A face quickly emerges from the hazy mannequin. Wait a minute, that's your face! Of course, Ariel has also been watching you since you freed her.";
	say "     A hand moves further down, driving away clouds as she continues to sculpt your torso, spending extra time on your [if Breast Size of Player > 0][short breast size desc of Player] breasts, cupping them and tweaking the nipples perhaps just a bit more than necessary to get them just right[else]chest, making sure it's exactly as she remembers[end if]. A blush begins to form on the focused spirit's face, and the cloudy constructs around you slowly dissipate as the will holding them together loses focus.";
	if Player is Herm:
		say "     One hand begins forming your [cock size desc of Player] dick, while the other goes between the mirror's legs to form a cleft. The sylph begins to run her hand along the newly formed shaft, tightly gripping the cloud cock as she gives the double a handjob. Her other hand hasn't been idle either, lovingly massaging the pussy lips she's created, occasionally dipping inside before returning to their earlier pattern. You see something glisten between the air spirit's thighs, but her pussy lies untended due to needing both hands to worship her creation properly. Just as your own hands begin to dip down to take care of your throbbing cock and wet pussy, she comes to an abrupt stop as her rapid movements cause the clouds to begin falling apart.";
	else if Player is Male:
		say "     A delicate hand begins to form your [cock size desc of Player] dick. The sylph starts to rub the cloud between your double's legs as if giving it a handjob. The illusion is reinforced when her other hand goes underneath to cup and fondle the balls that have started taking shape. Ariel's breath quickens as she pumps the model's cock, its real-life counterpart quickly coming to attention in sympathy. It all comes to an abrupt end when the cloudy cock gives out, and the enthusiastic hands simply pass through the space it had once occupied. ";
	else if Player is Female:
		say "     A delicate hand forms a cleft between your mirror's legs. As it moves around the newly formed lips, Ariel's other hand dips down to her pussy to give it some attention. Watching the sylph rub your counterpart, your hands reach down to touch your moist cunt. Perhaps noticing your heavier breaths as you get into the show, the artist in front of you abruptly stops her ministrations. ";
	else if Player is Neuter:
		say "     One hand moves down to smooth out the groin of the double, mimicking your own perfectly smooth groin. While one hand rubs the blank mound, the other reaches behind to sculpt your ass, a finger circling the only hole on your lower half. Giving the duplicate butt an overzealous squeeze, Ariel accidentally breaks the illusion, the clouds drifting apart under her fingers. ";
		say "     The sylph gives a needy whine at the ephemeral quality of the masturbation tool she'd created before seeming to come to her senses and slowly turning to look in your direction. The sylph's flushed face turns positively crimson as she realizes who bore witness to her private needs. Before you can speak to her, she throws a panicked look around the storefront before giving up and rushing past you and out the window. Maybe you should try to talk to her about this when she returns...";
	now HP of Ariel is 4;
	now Cloud Sculpting is resolved;


Table of GameEventIDs (continued)
Object	Name
Eos' Gift	"Eos' Gift"

Eos' Gift is a situation.
ResolveFunction of Eos' Gift is "[ResolveEvent Eos' Gift]".
Sarea of Eos' Gift is "Museum".

to say ResolveEvent Eos' Gift:
	if HP of Ariel < 5:
		say "     Wandering through the sprawling museum, you find yourself among the Greek displays of heroes and myths. A casual glance shows that there seems to be no danger currently, but that can change quickly within the museum. As you move on from the historical displays, your eyes fall on a display about a goddess named Eos. A portrait seems to depict a sunset rising over a river, although the longer you stare at it, the more you can see a beautiful woman standing beside the river with a chariot teamed by a pair of horses. The woman's eyes shine with warmth, but before you can approach to examine the painting closer, you hear something move behind you and take off to avoid conflict with one of the museum's residents.";
	else:
		say "     Wandering through the sprawling museum, you find yourself among the Greek displays of heroes and myths. A casual glance shows that there seems to be no danger currently, but that can change quickly within the museum. As you move on from the historical displays, your eyes fall on a display about a goddess named Eos. Finding yourself with a moment to breathe, you approach the display, noticing a painting that seems to be a simple sunset until you look closely and see a beautiful woman appear. She has straight brown hair streaked with red and kind eyes that remind you of a loving parent. A pale pink light bathes her arms, and splayed out behind her are a pair of brilliant golden wings. The longer you stare at the glorious woman, the more the surrounding museum seems to fade, and the sounds of nearby creatures soften. Something about the gentle goddess depicted in the painting brings to mind your recent trouble with Ariel, and you find yourself talking to the motherly figure, although you can't imagine why you would seek counsel with a painting. As you continue to divulge your desire for the sylph, the darkened exhibit begins to brighten, cast in a soft red light, and you feel a warmth enfold you. The sensation breaks you out of the strange trance, and you notice the painting is now empty leaving just a simple frame on the wall.";
		say "     Chalking the experience up to the strangeness of the museum, you turn to leave and notice a woman in a saffron robe standing nearby, waiting for you to notice her. It's the woman from the painting, her hands clad in pink gloves and wings tucked neatly away. Beneath the robe, you can see the outline of a pair of large breasts and wide hips, but her outfit obscures the rest of her body. Having your attention, the woman speaks to you warmly, saying, 'I have heard the plight you shared with me, and though the creature you desire is not one of my children, I am the mother to the winds, and so we are linked. You may think of me as a distant aunt. I am Eos, the rosy-fingered dawn, and I am no stranger to the strange loves that can blossom between my kind and your own. Though my powers are not what they once were, I will not ignore you or the airy girl who loves you now that I am awake. I will grant you a boon so that you may bind the wind to the earth and embrace it as you would any other mortal.' Grasping the yellow robe in her gloved hands, Eos tears a strip from the edge, though when she finishes, neither part has a ragged edge. 'This ribbon is my gift to you. Perhaps we will meet again when the spirit girl no longer preoccupies your thoughts. The last she says with a lustful look in her eyes, at odds with the motherly presence she presented at first.";
		WaitLineBreak;
		say "     Eos tosses the newly formed cloth to you, the fluttering ribbon obscuring your vision as it flies. While you grab the fabric from the air, the bright goddess has taken the opportunity to vanish from the museum exhibit. She must have taken the distraction the ribbon caused as an opportunity to leave. Deciding to take a closer look at the magical ribbon in your hands, you find a long yellow ribbon, almost golden, that seems to flutter despite the still air. It's incredibly fine, softer than any cloth you've encountered so far, and as you unravel it to see its entire length, it only seems to grow longer till you have several feet between your two hands. But as you rewind it into a more manageable state, it looks as though the material's length vanishes until about a foot of cloth remains in your hands. Hoping the ribbon can solve your problem with the sylph back at the music store, you place it in your pack and prepare to leave. Before walking towards the exit, you look around the room, taking note of the empty frame on the wall as proof that all of that had happened.";
		now HP of Ariel is 6;
		now Eos' Gift is resolved;

Table of GameEventIDs (continued)
Object	Name
Dawning	"Dawning"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Dawning"	Dawning	"[EventConditions_Dawning]"	Ariel's Home	2500	2	100

to say EventConditions_Dawning:
	if HP of Ariel is 6 and Dawning is not resolved: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Dawning is a situation.
ResolveFunction of Dawning is "[ResolveEvent Dawning]".
Prereq1 of Dawning is Eos' Gift.
The level of Dawning is 0.
The sarea of Dawning is "Nowhere".
to say ResolveEvent Dawning:
	say "     Arriving back at the music store, you're surprised to hear a soft voice coming from inside. Peeking through the door, you're surprised to see the figure of Eos holding a one-sided conversation with Ariel. Eos turns as you watch, saying, 'I can feel my ribbon outside. Our friend must be trying to spy on us.' Taking your cue to enter the store, you're greeted by a bemused smirk from Eos and an excited hug from Ariel as the spirit leaps from where she is standing to enfold you in a hug. Approaching the two of you, Eos comments, 'I may have already touched on what you've got for her. I know I had promised to wait to see you again, but my desire to meet my niece overcame me. And seeing you again doesn't hurt either, cutie. 'At the blatant flirting from the goddess, the sylph glares at the goddess and tightens her embrace. 'Don't worry sweetie, you can have him first. I'd never get between a love like yours,' Eos says as she tries to placate the nymph. 'Now let's get that ribbon on you, shall we?'";
	say "     Pulling the golden ribbon from your pack, you wind it around Ariel's arm, the fabric easily clinging to the airy spirit. Tying the ends together, you avert your eyes as the ribbon flashes, and you hear a gasp and a thump as Ariel falls to the floor from where she was hovering previously. Eos chimes in, 'I should have warned the two of you that the ribbon would dampen her natural powers... But look at you, dear! Your mortal form is simply adorable! You simply must let me... Ahem, maybe I should leave you two to get more acquainted with your new form before I lose my self-control. There will be time for all of that and more.' With a lustful look over the two of you, Eos glows and vanishes, leaving the small store noticeably emptier without her divine presence.";
	WaitLineBreak;
	say "     You reach down to help Ariel rise to her now solid feet, the nymph is still surprised by her sudden change, but you pause when you notice her new appearance. Her skin has taken on a healthy pink, and the long hair pooling on the ground around her legs is no longer transparent but a rich brown. The sylph starts to stand without your help but falls back to the floor with a gasp when you reach out to touch her pointed ears. She felt that! Wide grey eyes look up at your from the floor as Ariel stares at you before breaking into an excited grin and leaping up at you to pull you into a kiss. Her human lips are incredibly soft as she celebrates that the two of you can truly feel each other, but before you can go any further, the wind picks up, and the poor knot you secured the ribbon with falls loose. The two of you fail to notice the fallen fabric in your lust for each other, and it's not until the sylph returns to being airborne that you see something has changed.";
	say "     Ariel has returned to her sylph form, although she quickly swoops down to gather the magic ribbon. It seems that Eos['] gift allows the sylph to enjoy a mortal existence with you while still letting her return to the air in her sylph form. Ariel brushes your hand and gives you a peck on the cheek before rushing back towards her room with the ribbon, perhaps to think of a way to secure the ribbon so that the two of you can get closer without the fear of it falling loose in the future.";
		now HP of Ariel is 7;
		now Dawning is resolved;


Ariel ends here.
