Version 1 of Event Rewrites by Draegon begins here.
[ Version 0.0 - Old Events by Kaleem                                 ]
[ Version 0.1 - Event rewrites by Draegon in progress                ]
[               Events to be broken up and sorted by area afterwards ]

"An assortment of scenes by Kaleem M. to be added to Flexible Survival. Re-written by Draegon."

Section 1 - Anal Probing

Anal Probing is a situation.
The sarea of Anal Probing is "Beach".

when play begins:
	add Anal Probing to badspots of furry;
	add Anal Probing to badspots of guy;

Instead of resolving Anal Probing:
	say "     As you climb over the crest of a sand dune you find yourself witnessing a very strange sight. You've seen many weird things in the city as of late but this just might take the cake. Before you is a large, muscled, and very male anthro lion lying on the sand with what appear to be metallic-looking tentacles writhing in and around him. The numerous shiny appendages seem to literally sprout from the ground, with some burrowing to the surface as others retract to who knows what is their source beneath. Meanwhile, the anthro lion is spasming on the ground from what the creature is doing to him, his clawed fingers digging grooves into the sand as he twitches uncontrollably, drool leaking from his open muzzle. Watching from your hiding place at the edge of the dune you see him yowl in helpless pleasure, thrusting his broad hips reflexively into the air.";
	say "     Reacting to their captive's arousal with what seems to be joyful haste, the tentacles already entering the lion's tailhole and mouth widen their girth, sliding deeper even as they do so. The ecstatic howls and groans from the man make it clear that his prostate is being milked. Writhing and flexing, most of the other tentacles wrap around his torso and pin the anthro feline down as additional and relatively delicate appendages stroke and tease his cock mercilessly. At the same time as they milk precum out of the lion, the maned cat's dark pucker is being forced to stretch what looks to be impossibly wide as the thickest of tentacles wriggle and writhe within him. Thankfully for the guy, they seem to be supplying their own lube, as his hole is slick with an odd, shiny fluid.";
	WaitLineBreak;
	say "     Pondering whether this is some new, bizarre infection that has infested the beach, you decide that it may be best to just watch for now. Who knows, the tentacle thing might be attracted to vibrations in the ground or something, so both going to the lion's aid or running away could be perilous. Unable to tear your eyes from what is happening not too far away, you see the captive anthro's cock throb hard, splashing his abs and several of the tentacles with a gush of precum. You can see his front being all shiny in the [if daytimer is day]sunlight[else]moonlight[end if], telling you that the creature has had him in its grasp for a while now, keeping him in a state of high arousal as it does what it wants. As you are starting to contemplate what that may be, a bright flash of incandescent white light suddenly blankets the beach, nearly blinding you in the process.";
	say "     Quickly shielding your eyes from the overly brilliant light you find yourself able to faintly see between your fingers what is going on. As best you can you observe there is a strange, vaguely humanoid figure fiddling with the lion but it's too bright to see precisely what is going on. The next thing that happens is an ear-splitting noise forcing you to clap your hands on your ears to protect them, leaving nothing to do but clenching your eyes shut as good as you can. Even so, you feel like you're seeing some of the brightness as it shines through your eyelids. Thankfully, whatever is happening is over quickly, replaced by a sudden silence and stars dancing before your eyes. Blinking your eyes open to find out what is going on, you catch a second's glimpse of some object zipping up into the sky towards the east, but before you can follow it with your gaze it is already gone.";
	WaitLineBreak;
	say "     Focusing your gaze on where the lion was, you find him still there but unconscious and looking a bit worse for wear. His balls are looking somewhat oddly large on his body, being almost the size of grapefruits, which is a quite respectable size even for a tall and strapping predator like this dude. The lion's cock appears to have grown as well, as almost a foot of lion manmeat is poking out of his fat sheath, lying on his abs and still oozing cum. There is no sign of the creature that the tentacles belonged to, and you wonder if it just burrowed underground completely or took off with that other being.";
	LineBreak;
	say "     [bold type]What will you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Check out the naked lion. Might be fun to play with him.";
	say "     [link](2)[as]2[end link] - Sprint over to the lion and help him. He's been through quite an ordeal.";
	say "     [link](3)[as]3[end link] - Keep your distance and move on. Getting close could be dangerous.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to approach with lusty intentions, [link]2[end link] to go help him or [link]3[end link] to move on.";
	if calcnumber is 1:
		LineBreak;
		say "     A";
		say "[AnalProbingSexMenu]";
	else if calcnumber is 2:
		LineBreak;
		say "     B";
	else:
		LineBreak;
		say "     Shaking your head about the weird situation you stumbled into, you gain some distance and continue your walk along the beach.";
	now Anal Probing is resolved;

to say AnalProbingSexMenu:
	LineBreak;
	say "     What do you want to do with the naked, unconscious lion?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Fuck his muzzle";
		now sortorder entry is 1;
		now description entry is "Face-fuck him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck the lion off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the powerful feline's equine shaft";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jerk him off";
	now sortorder entry is 3;
	now description entry is "Milk the bounty of those big balls out of him";
	[]
	if player is male: [only males and herms can fuck him]
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 4;
		now description entry is "Slide your dick into his stretched hole";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mount that big dick and slide your ass down on it";
	now sortorder entry is 5;
	now description entry is "Take the lion's cock up your rear end";
	[]
	if player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Mount that big dick and slide your pussy down on it";
		now sortorder entry is 6;
		now description entry is "Take the lion's cock up your pussy";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck his muzzle"):
					say "[BeachLionSex1]";
				if (nam is "Suck the lion off"):
					say "[BeachLionSex2]";
				if (nam is "Jerk him off"):
					say "[BeachLionSex3]";
				if (nam is "Fuck his ass"):
					say "[BeachLionSex4]";
				if (nam is "Mount that big dick and slide your ass down on it"):
					say "[BeachLionSex5]";
				if (nam is "Mount that big dick and slide your pussy down on it"):
					say "[BeachLionSex6]";
				wait for any key;
		else if calcnumber is 0:
			say "     Just leave him as he is?";
			if player consents:
				now sextablerun is 1;
				say "     With a shrug, you step back from the naked lion, then stroll back to the water's edge and follow the beach some more.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BeachLionSex1: [fucking his muzzle]
	say "     ...";

to say BeachLionSex2: [sucking the lion]
	say "     ...";

to say BeachLionSex3: [jerking the lion]
	say "     ...";

to say BeachLionSex4: [fucking the lion]
	say "     ...";

to say BeachLionSex5: [riding lion dick, ass]
	say "     ...";

to say BeachLionSex6: [riding lion dick, pussy]
	say "     ...";

Section 2 - Birth

Birthing Time is a situation.
The sarea of Birthing Time is "Zoo".

when play begins:
	add Birthing Time to badspots of furry;
	add Birthing Time to badspots of girl;

Instead of resolving Birthing Time:
	say "     You find yourself walking around the zoo and sighing at the remnants of the once majestic place that are now left dilapidated. Scanning the place almost twice over, you find that most of the cages and assortment of eateries have been utterly devastated by the mutants that have gone through the area. Hearing the sounds of someone moaning you find yourself freezing in your tracks as you try and figure out just what kind of whimpering croon you had just heard. Being in this city for so long you've actually learned how to differentiate cries of help from cries of rampant pleasure. Subsequently avoiding the latter because they usually heralded trouble, it takes you a minute to go over the vocal outcry to judge the sincerity of the now yelping groan as being something worthy of your attention. You come to the conclusion that this gasp however, was of someone sounding as though they were in pain, not in the throes of ecstasy. Feeling as though you might be able to help you take a step in the direction of the voice before stopping.";
	say "     [bold type]Should you really go over and see about it, knowing that there could be danger waiting in the unknown?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		say "     Not wanting to leave someone in distress, you find yourself moving on hurried feet over to the African Wild Dog enclosure of the zoo. Moving as fast as you can you can see the form of several African wild dogs hanging around the prone figure of another and stop dead in your tracks before you can get to close. On guard you ready yourself for an altercation but after waiting several seconds you slowly let your guard down when none of the bipedal creatures make their way over to you. Curious as to what's going on you make your way around the cage where the canines had normally been kept to see who or rather what is making that awful yowling-yip noise. When you do though, you find your eyes widening slightly and then a blush staining your cheeks as you watch nature taking its due course of things. Lying onto the ground littered with both quilts and pillows and stuffed toys surrounding it, or rather her, was an anthropomorphic mother African wild dog moaning and writhing while several other males stood around her with worried looks covering their muzzles.";
		say "     This sight wouldn't at all have been out of place had it not for the small bundle of fluff and fur trying to ease its way from out of the female's gaping cunt. Your body seems to almost lock up in shock as you watch the female canine anthro push with all of her might with her internal muscles can muster while yowling as the small form of her pup wiggles out to freedom. Feeling slight queasy at seeing a mother giving birth, you take a sudden step back and then another before finally moving completely away from the group just as the baby African wild dog emerges into the world. A quick grumble from your stomach signals that it's almost time for you to throw up, but you hold off in favor of quickening your steps to [italic type]someplace[roman type] else. Preferably, somewhere that you can't hear the yipping infant crying at, which oddly enough seems to be growing louder as more and more whimpers follow after the first set of plaintive cries. Obviously [italic type]mama[roman type] was having a small litter right at the moment, no wonder she was moaning.";
		now Birthing Time is resolved;
	else:
		LineBreak;
		say "     Not wanting to take the chance on finding out what's going on, as this could be some sort of elaborate trap by a group of mutants looking to prey upon the foolhardy, you slowly back away from the area and then turn to jog off to someplace else. You are just in time too, because as soon as you leave the area, the cries of a baby canine fill the area, followed by another and then another.";
		now Birthing Time is resolved;


Section 3 - Girl Time

Girl Time is a situation.
The sarea of Girl Time is "Red".

when play begins:
	add Girl Time to badspots of furry;
	add Girl Time to badspots of girl;
	add Girl Time to badspots of guy;
	add Girl Time to badspots of hermaphrodite;

Instead of resolving Girl Time:
	say "     On your way to the red light district, for reasons you have to fight hard to hold on to as you spy the sultry faces of several ladies, not to mention men of the night, all winking and posing while giving you [italic type]come-hither[roman type] glances. The fact that most, if not all of the people here are now covered with different textures and patterns of fur types only serve to make you shake your head and keep walking as you try not to become aroused by the prostrating mutants. You find it somewhat amazing that despite the epidemic rolling throughout the metropolis there are some things about people that will never change. This fact is proven to be even more true as your ears catch the sounds of giggling girls laughing at each other from the inside of a derelict clothing store that you are just now passing in front of. Curiosity has you taking a look inside of the rundown store before you can stop yourself.";
	LineBreak;
	say "     Peeking inside of the storefront's destroyed window you, find yourself staring wide eyed as the inviting forms of several mutant females are all standing around together inside of the clothing shop. Slightly darkened as the store is, it's a little hard to see what's going on in there, but soon you are able to figure out what's happening as you see several of the anthropomorphic females slipping out of their clothes only to pass the articles along to one or another of their companions in a semi circle-like fashion. With naked female bodies all on display for your eager attentions you find your groin growing a bit too tight as you notice multiple breasts jiggling and wiggling in time with each other as the females silly laugh while pointing and talking to each other. More than likely the troop of women are comparing each other to see what will look fashionable on them, all the while not minding that they are being a tad bit obscene with their antics as they throw the pieces of clothing they don't want off behind them while hissing/growling/huffing in displeasure. Your mouth starts to drool just as little before you shake your head and then wipe the sides of your lips off with the back of your arm. You grunt and then snort as you realize that only a true pervert would spy on the naked form of the women all collected together like a sultan's harem. You try not to mind the fact that you are one of said perverts as you continue to stare at the veritable smorgasbord of femininity on display, all the while your mind denies the fact that it is liking what's going on in there.";
	LineBreak;
	say "     Because of their change, or maybe in spite of it, the females seem to have no problems touching, grouping, hissing and licking one another as they [italic type]help[roman type] each other to find something appropriate to wear. Appropriate meaning provocative in this case as you watch some of the girls rip holes into the fabric of their various pieces of apparel in order to give their ample cleavages enough room to breathe. At the same though, everything the girls are doing isn't wholly erotic as many of them are making more functional adjustments for their new tails and other appendages while poking holes into the back of multicolored panties. You watch for a little longer, mostly because the sight of a shop with items not completely rotted inside of it from the elements and the sludge filtering into the city has you wondering if maybe you could find something useful for yourself, before shaking your head and then sighing as you realize that the trouble just wouldn't be worth it. Pulling away you turn to leave... only to bump into a massive form behind you. Reaching back to touch the thing you curse underneath your breath as you feel hard muscles and then something even harder dripping at your backside. Turning around you already know what's about to happen as you look into the lustful eyes of a salivating mutant.";
	let T be a random number between 1 and 3;
	if T is 1:
		challenge "Alpha Wolf";
	if T is 2:
		challenge "Alpha Husky";
	if T is 3:
		challenge "Shemale Smooth Collie";
	say "     Your unexpected fight with the rogue mutant has brought you a lot more trouble than this little outing has been worth as soon you can both hear and smell several of the females from inside racing towards the front of the store to see what the noise has been about. Not wanting to face an entire group of angry, or worst, lust women having their [italic type]girl time[roman type] being interrupted so soon you book it down the street as fast as your feet can carry you. Thankfully you just missing the oncoming charge half naked women looking around wildly for the unknown disruption.";
	now Girl Time is resolved;


Section 4 - Snake Charmer

Snake Charmer is a situation.
The sarea of Snake Charmer is "Zoo".

Instead of resolving Snake Charmer:
	say "     While on your way throughout the zoo you find yourself coming over a very attention-grabbing sight. At first, what you think is a man with a large snake curled around him actually turns out to be a giant naga-like creature hissing and flicking its tongue around wildly while bobbing his scaled head back and forth around the front of an entranced and unmutated pelican. The little bird seems not to mind that it is literally within the arms of danger as the naga hisses quietly at the avian before running its blunted nose along the neck of the white feathered creature held aloft into the serpent's mottled hands. Terror laces a cold trail down your spine as you watch what happens next as the snake-man pulls back from the bird and then opens its mouth wide, and then wider, before pulling the captivated bird towards it. You find yourself entrapped the same as the avian getting swallowed alive as you watch the bird slowly disappear down into the naga's throat. It only takes a few seconds for the reptile to be done, and before long the last of the bird's webbed feet are disappearing inside of the hungry serpent's maw. A happy hiss flows out from the naga's mouth as you watch the predator swallow the bulge of the bird down into his throat and, still in your slightly bewildered frame of mind, you can't help but continue to track the pelican as the feathery creature slowly vanishes into the bulge of the snake-man's body.";
	WaitLineBreak;
	say "     A quiet burp awakes you from your hypnotic trance just in time to see the serpent cover its mouth with a hand and then pat the lump that was the pelican settling firmly into its upper stomach. When the creature turns to look at you with a come-hither look your feet can't move fast enough to get out of there. Of all the ways you might be tempted to meet your fate in this corrupted city, being [italic type]snake food[roman type] ain't one of them!";
	now Snake Charmer is resolved;


Section 5 - Spiritual Love

Spiritual Love is a situation.
The sarea of Spiritual Love is "Park".
spiritlove is a number that varies.

when play begins:
	add Girl Time to badspots of furry;
	add Girl Time to badspots of guy;
	add Girl Time to badspots of girl;

Instead of resolving Spiritual Love:
	say "     Humming while walking through the park you find yourself coming to a small group of standing trees with a glowing flash of light piercing through the cracks of the sentinel-like figures. Interested as to what's going on you watch as leaves shudder, but not from a breeze as the wind is quite still, while the air seems to be electrified with the kind of energy you normally only expect to feel during a storm. Looking to the sky to see that it's clear you find yourself growing more and more curious as you feel a keen sense of inquisitiveness take you over. However, before you can take a single step forward a scream of warning resounds through your head, nearly making you deaf for a moment. Grabbing your head and then falling onto your knees you take a second to gather yourself together as sensations, the likes of which you have never experience before, consume you in a white hot fire of madness. Once your head no longer feels as though it's going to crack open like an acorn in between the fangs of a chipmunk you carefully get up onto your feet and then shake yourself like a dog just getting out from under a heavy downpour of rain. Wondering what in the heck that was all about you suddenly feel as though you are making a terrible decision about continuing on your path as you notice the white glow getting brighter and brighter in between the trees.";
	say "     [bold type]You feel retreating may be the wisest course, but shall you press on? (Y=continue, N=leave)[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		say "     Not one to be frightened off easily, nor dissuaded by either pain or hardship, you make your way towards the standing group of trees with determined steps that refuse to falter, despite the warning shouts slamming into your mind over and over again. If whatever is going on is powerful enough that it can unnerve you then it just might be something worth seeing and committing to memory. After all, aren't the most treasured memories the ones that come only once in a lifetime? Smiling to yourself wolfishly at your own ingeniousness you continue walking into the shimmering aurora coming from in between the trees until finally you pass through the veil and into the world beyond. Once you do however, you feel your mouth drop down in awe as your eyes take in a vision that can only be out of a fantasy.";
		WaitLineBreak;
		say "     Out of all of the peculiar things that you have seen in this city over the past few days, the sight before you is one that is so otherworldly that it can't be real. There's no way, but at the same time you know that it must be as you are too conscious of yourself for this to be all a dream. Beyond the cover of trees you are using to camouflage your presence you see the sight of two people, or rather teenagers, a boy and girl respectively with pale naked skin and sharply pointed ears, dancing around each other while surrounding them sit a large assortment of furry canid creatures with fur as pale as the moonlight. Not understanding what you're witnessing you find yourself crouching down to carefully survey at the processions taking place. The boy and girl, the former having bright golden hair while the other has pitch black tresses, continue to dance around one another while looking into each other's green-golden eyes as though they are completely unaware of the beasts lolling long red tongues out from between impressively sharp fangs. Muzzles, all long and sleek, follow the pair as the two youths continue to circle one another, their bodies slowly coming closer and closer to touching while at the same time keeping up the play of distance held between them, as if to draw out the act.";
		WaitLineBreak;
		say "     You only notice when the seconds have stretched into minutes that both teenagers are naked and completely smooth all over... and by smooth the two neither have genitals nor any hair on their bodies anywhere below their heads. This makes you blink as you wonder how this could be before a bigger question enters your mind. Just how do you notice that either was of differentiating genders previously? Your eyes scan over the bodies of the two and you find yourself almost tilting your head in confusion as you could have sworn that the female of the pair had pert mounds on her chest to symbolize her femininity. But... that can't be right as you notice that both figures have two perfectly smooth chests without a hint of bulge on either one of them. The only thing that symbolized that the [italic type]girl[roman type] had been an actual girl is the way her body seems to be shaped somewhat more curvier than her male counterpart. Confusion rising steadily within you, you lean back to continuing watching the duo's dance while at the same time wondering what the hell's going on here. The word [italic type]Ritual[roman type], enters your ears and makes you whip your head around to see who had spoken. When you see no one near close enough to you to have spoken you feel your bladder nearly loosen as fear, the likes of which you remember feeling the first time you were ever locked into the dark with only your imagination to keep you company, creep up throughout your heart and soul.";
		WaitLineBreak;
		say "     Getting yourself together before you can panic you shake your head and then grunt before returning to watching the pair. What you see next has you gasping as now the two teenage looking humans have now gained proportions to them that you were sure hadn't been there before. Eyes widening in astonishment you look the pair over and then whine as a nervous tick starts to cause your eye to flutter slightly. Where once there had been nothing along the backs of the teens there now stood two fluffy white tails wagging happily along the top of the two genderless creature's rumps. Standing about four feet in length you watch as soon more and more canid features take over the pair as color bleaches itself out of the tanned human's skins to leave behind pale white flesh. Continuing to dance together the two transforming creatures don't seem to notice as their faces push out from to form muzzles, nor to how their hands are slowly turning into paws as they flex their fingers up into the air while swaying their arms wildly around each other. So lost in this strange [italic type]ritual[roman type] the two fae youths seem wholly enraptured within what they are doing that when their bodies raise up to begin to support digitigrade paws the pair don't even both to stop dancing as they automatically adjust themselves to whatever melody is going off inside of their heads.";
		WaitLineBreak;
		say "     Taking this unusual happening with all the grace of a person thinking that they are losing their minds you continue to crouch down and watch as the lupine-like anthropomorphs sway and twist around each other while more and more of their humanity is sacrificed to whatever power has captivated them. Fur grows where none had been as pointed ears shift upwards to stand erect on the youth's blonde and dark heads, respectively, you watch nervously as even the duo's hair colors turn off white in a growing loss of pigmentation. Eyes, once bright with a green-golden light, darken and then deepen to become a solid crimson color. Muzzles panting because of the exertion of their dance, the two wolfish creatures huff in each other's face with wide red salivating tongues as sharpened fangs pushing down to replace their once blunted teeth. Muscles hardening with the onset of new growth you continue to gaze upon this breathtaking sight when the spines of the lupine teens arch and then pop forcing the two to lower themselves onto all fours onto the ground. Never stopping their circling of each other, not even as their vertical positions change to more horizontal ones causing the young lupine-like creatures to stumble around on their hands and knees, you notice the transformation of the others coming slower and slower as their metamorphosis comes to its completion.";
		WaitLineBreak;
		say "     The last few bits and pieces of the two lycanthropic beings to change are the more external extremities of their once smoothed groins. Small bulges of flesh start the entire process as the slowly ballooning pouches fill up into thick male sheaths which then fill out surprisingly quick onto the two lycans. Heavyset orbs follow along next as furry male testicles swell to the brim while bouncing around underneath the two tails of the now white wolves. The last thing to change seem to be a few cosmetic features as the hard nails along the pair's four paws change to jet black claws while over and around them painted gold markings shimmer into existence around the changed lupine's backsides. Fur fluffed up while panting muzzles breathe deeply into each other's face you watch as the duo finally stop encircling one another to end with their muzzles pressed tightly in front of each other's noses. Pitch black like their claws the end of the two lupine's snout quiver and snuffle over each other as though intimately coming to know the other's scents. A tightness in your chest makes you swallow a hiss as you wonder what you've just seen, however, before you can reason with yourself about the how and why of this unfamiliar sensation something presses itself up against your backside causing all your thoughts to lockup tight. Flipping your head around you take notice of one of the white wolf-like beasts standing right behind you and staring at you with crimson eyes filled with too much wisdom for the canid to be a normal animal.";
		WaitLineBreak;
		say "     A voice goes off in your head and you find yourself wincing slightly as words flow into your mind. Taking the time to think around the smooth, yet inconsistent muttering of sounds you realize that what you are hearing is like no language that belongs anywhere on this earth. 'Will you join us? You are welcomed, changeling.' Quickly coming to realization that the wolf in front of you is the one speaking, since there are no other [italic type]people[roman type] out here, you understand that the invitation is to you and only you in this once in a lifetime offer. Turning back to look at the two male wolves, now coupling furiously with one another, you can't tell who is on top or on bottom as both look so much alike, you find yourself staring in fascination as the dominant lupine drills into the upturned tailhole of the submissive below him. Maybe this would be something to give yourself over to? The rewards seem to be very worthwhile, if the howling voice of the wolf getting mated so passionately is anything to talk about, but at the same time, would it be worth throwing your already tentative humanity away for. You look into the white wolf's glowing crimson eyes and quickly come to know that this would be a nonnegotiable transaction that you could never get out from.";
		say "     [bold type]Is it worth it?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		If player consents:
			LineBreak;
			now Spiritual love is resolved;
			now humanity of player is 0;
			now spiritlove is 1;
			now tailname of player is "Spirit Wolf";
			now facename of player is "Spirit Wolf";
			now skinname of player is "Spirit Wolf";
			now bodyname of player is "Spirit Wolf";
			now cockname of player is "Spirit Wolf";
			now scalevalue of player is 3;
			now bodydesc of player is "animalistic";
			now bodytype of player is "lupine";
			now daycycle of player is 0;
			end the story saying "You submitted to the spiritual wolf, becoming his loving mate.";
			now battleground is "void";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		else:
			LineBreak;
			say "     Looking at the ethereal canine all you can do is smile and then shake your head at the thing. While giving up your humanity might be fun, you still have things to do here that are somewhat more important than the paradise the lupine-like creature offers. The white furred canine respectfully bows to you and then looks up to lick you across your nose before walking from your hiding space to where the others are. Going over to the still mating couple you watch as all of the lookalike white canines assemble around the rutting pair, forming a small but protective circle, and then blink owlishly as the canids raise their heads to the sky to howl. A large glowing aurora soon fills up the space of the area and before you can blink the illumination grows as bright as a supernova before quickly winking out of existence. Shaking your head and trying to find your vision with rapid blinks, you realize in the back of your mind that what you've just seen is truly a once in a lifetime spectacle.";
			LineBreak;
			say "     A part of you feels sad that you didn't take in on the offer being presented, but another part of you is glad you didn't. When it's time for you to move on to the next level, you're sure that you will be ready to take it, if only because you've seen something so majestic from the [italic type]other side[roman type].";
	else:
		say "     Discretion being the better part of valor, you take one step back and then another before turning on your heel to beat a hasty retreat. Whatever is going on back there, it might be better not to get involved. Some things are just worth not knowing about after all.";
	now Spiritual Love is resolved;


when play ends:
	if spiritlove is 1:
		say "     Years pass... You don't quite remember much about your former life as a human these days, but you do have the faintest recollection of it from time to time as you walk across the vast sunlit plains of the astral world while nuzzling your snout into the warm fur of your mate's shoulder. The other male is more than happy to have you do so, especially when you are eager for his attentions in a more... carnal ways. The slightly bulkier male is everything you could want in a mate, plus more, and every day you wake up thankful that he chose you out of the three and a half dozen others who don't have mates as of yet. Rape is a term that has no meaning here as your lupine lover never takes from you what is yours to give. Instead when he is in the mood to romp and you might not be he always manages to find a method to make you surrender to him, in very inventive ways no less, when the two of you are away from the rest of the pack. A playful yap leaves your throat as you look to the slightly bigger canid before nudging your muzzle into his side in an open invitation to come play.";
		WaitLineBreak;
		say "     You find yourself darting off to make him chase you before you even have to think about him not wanting to follow after your tail. A booming howl is the other's answer to your little challenge and soon your lover is right on your heels, following after you across the eternal plains of the spiritual realm. Having come to discard the worthless daily existence that is day to day human life you now find yourself forever captivated by the fields that spread out endlessly in front of you with brilliant green flowing grass and towering oaks and pine tree dotting the lines that separate this world from the others out there. Time has no meaning here, save for when a disturbance causes the pack to come together in order to work together to solve the conflict, but usually that happens only once in a very long while. Actually as you think about, it hasn't happened in a very, very long time since after you came into the fold of the pack's embrace.";
		WaitLineBreak;
		say "     You would shake your head in sadness, right before your mate plows into you and then wrestles you down onto the ground to get you to submit. Growling and barking at him playfully you shove and push and twist and turn until finally you can get yourself up onto all fours to try and make another run. This proves to be exactly what your lover wanted because just as soon as you curl your legs to spring yourself forward the larger male in on you. Hard and thick the other white canid's cock finds its target with a single shot as he spears you deep and then spreads you more fully than before as he drives home his claim and commandership over your metaphysical form. Whining and panting as your body is given the kind of workout only another male could usher unto you, you find yourself spreading your legs and then howling up to the sky as you relax yourself for this hour's breeding. Having given up your human form had come at the price of being eternally male, there were no females of these creature's species as they only [italic type]reproduced[roman type] by giving pieces of themselves to worthy mortals in order to create a new pack member, you find absolute pleasure as your twin prostates are slammed into hard and fast by the tapered tip of your mate's hard red rocket.";
		WaitLineBreak;
		say "     Had you not been currently drooling and panting underneath the heavy form of your mate, who is slamming himself wildly on top of you as he grows ready to knot you, you might have felt bad for all those that are still out there who are currently wondering if their lives have any meaning. Yet by your own being here right now you are proving that there are some mortals worthy enough to accept the wondrousness of this gift. Maybe in the future to come there will be more like you who will show up, or else call out to you and your pack, in order to act this divine pleasure. However, that is neither here nor there at the moment as you are currently being fucked the way you like it. Throwing your head back to howl you first of several climaxes of the day you find that your concerns about the future are meaningless to you right now. All you need at the moment is the warmth of your mate's furry hide on your back, his thick cock embedded firmly inside of your too tight channel and the loving licks of his tongue slathering themselves across your snout. Nothing else really matters in paradise after, now does it?";
		stop the action;

Event Rewrites ends here.
