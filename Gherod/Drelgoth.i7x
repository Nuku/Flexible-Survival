Version 1 of Drelgoth by Gherod begins here.

"Adds Drelgoth to the game, who can be summoned with the Ancient Tome."

[Version 1 - File Created]

Section 1 - Pre-Event

Table of GameEventIDs (continued)
Object	Name
MeetingDrelgoth	"MeetingDrelgoth"

MeetingDrelgoth is a situation.
ResolveFunction of MeetingDrelgoth is "". Sarea of MeetingDrelgoth is "Nowhere".

[Demon can be summoned from the Ancient Tome if character has the 'Kinky' feat and either has low sanity or 'Weak Psyche']

[Ancient Tome entry]
to say DrelgothSummon:
	if Resolution of MeetingDrelgoth is 0:
		if player is not in Maintenance Storeroom:
			say "     Perhaps you should not attempt any weird things out here in the open. Something tells you that the bunker would be a better place suited for this, specifically your personal resting place, back in the library.";
		else:
			if humanity of player >= 50 and "Weak Psyche" is not listed in feats of player:
				say "     Amidst the pages of this old and large grimoire, you find a summoning ritual that shifts before your eyes in ways that makes it unreadable, no matter how much you focus your gaze on it. The letters seem to be fleeting and disappearing as you handle the tome, and your hopes to understand it are soon gone. In your mind arrives a suggestion of a few words, something saying that you do not need this right now. Odd, but perhaps you do not. You have been doing [bold type]fairly well mentally[roman type] and your [bold type]psyche is solid[roman type], you do not need to summon any lovers.";
			else if (humanity of player < 50 or "Weak Psyche" is listed in feats of player) and player is not kinky:
				say "     Amidst the pages of this old and large grimoire, you find a summoning ritual that shifts before your eyes in ways that makes it unreadable, no matter how much you focus your gaze on it. You definitely know there is something in there, and it seems to call for you, but you cannot understand it, no matter how hard you try. Perhaps you need to twist your mind as much as this illusory whirlwind... Wait, what are you saying? You did not mean that literally, but there is this suggestion in your mind telling you to [bold type]open yourself to new experiences[roman type]... What does that mean? Perhaps you need to spend some time understanding the [italic type]kinks[roman type] of this ritual, after all...";
			else:
				say "     Amidst the pages of this old and large grimoire, you find a summoning ritual that shifts before your eyes in ways that makes it unreadable, though as you focus your gaze on it, the letters seem to shuffle and arrange them in a pattern that does not correspond to any language, yet you feel you can understand it. The text calls to you, as if an urge deep inside prompted you to give in to its offerings. You feel like you would love this, or better said, you will absolutely need what this simple and small ritual could give you. It promises you love, care... and fun. You know it will give you all that and more, if you dared to speak the words it tells you to. The temptation grows, along with your will to say it without thinking twice...";
				say "     With all this, you catch a glimpse of a symbol similar to the one you use to represent the [bold type]masculine[roman type] gender, meaning if this happens to be a summoning ritual, the summoned creature is very likely to be male. Should you give in to this urge?";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Give into it.";
				say "     ([link]N[as]n[end link]) - You would rather not.";
				if player consents:
					LineBreak;
					say "[SummonDrelgothRitual]";
				else:
					LineBreak;
					say "     Nothing is making you do what you do not want to do, so as you have decided against this, you easily shrug it off and close the tome. The strange influence in your mind is gone and your head feels much more quiet and calm. Well, better safe than sorry, right?";
	else:
		say "     These pages are blank. They do not feature any sort of scribbling, magic or words, and are simply plain white. Strangely, your memory feels hazy as you look at them, as if you sort of remember seeing something in here, but you cannot recall what, exactly. You are, however, quite sure this is the method you used to summon Drelgoth, but you cannot remember anything associated with the ritual. Only you could have done it, would there be a way to reverse it? If there is... You are quite sure you will not find it here on your own. But why would you want to...? ... Why do you keep asking yourself all these questions?";
		say "     You just close the tome with a loud thump.";

to say SummonDrelgothRitual:
	say "     You decide there is not much to think about it, and that only good things can come from this, for the better or worse. With a knowledge you never knew you had, you begin to recite the strange words and perform the gestures this ritual demands, and your efforts prove to be surprisingly effective, as some sort of mystical energy begins to sprinkle from the tome's pages. Soon, its cover becomes too hot to handle, causing you to drop it on the floor as these sparks of energy, red and purple both, swirl around it. Realizing what you have done, you take several steps back as you can only let the events before you unfold. You have no idea what you have unleashed, but whatever chain reaction your decision had is proceeding in full force.";
	say "     The swirls continue for what seems to be a full minute, its force setting the wind around you in motion like a tornado as it rips a hole in reality through the ground, just in front of the tome. It is then that you begin to see something, or someone, emerging from where it was just the floor before. It is no ordinary person, much the contrary, as their full visage is revealed before you. You would judge this person to be an ordinary man, were it not for the pair of curled horns on top of his head, but you cannot ignore the fact he is completely naked as he walks towards you in slow, careful steps. His body shows agility and strength with its lean and toned muscles flexing with each move, and once he is within reach of you, he pulls you in for an embrace. Such proximity causes his sizable endowment to twitch against your crotch.";
	WaitLineBreak;
	say "     A soothing breeze befalls you as, suddenly, you feel more calm.";
	SanBoost 20;
	WaitLineBreak;
	say "     'There, there... I'm here to help you,' he says, a clear and masculine voice caressing your ears as he leans in to whisper, all while his arms wrap around you tightly enough for you to feel strangely comfortable. 'You don't deserve this world... But it'll be easier now. I'll be by your side.' His presence feels so calming that you do not even think twice about this, prompting you to accept the outcome of your actions without even blinking. This man is also oddly attractive, unnaturally so, with a face of an angel and kissable lips that would tempt anyone into a makeout session, but his bat-like wings and spaded-tip tail confirm his demonic nature. However, you do not feel threatened in the slightest. You actually feel the safest you have been in a long while...";
	say "     'You poor soul... You've definitely been through a lot. Allow me to stick around here for a while. And... Don't worry about other people finding me, I can be very discrete. Invisible, I'd even say.' It does not seem you even have a choice in the matter, as the demon has already been summoned. Unless the tome says something about it... 'Oh, that old book? Don't bother with it. You've done the right thing in calling for me. I can give you what you need, all you have to do is ask,' the demon intervenes, and hearing him say this prompts you to ask what you should call him. 'Drelgoth, is what you may call me. But I suppose there are other way more interesting questions you may want to ask me, so feel free.'";
	WaitLineBreak;
	say "     The handsome demon will say nothing else unless you ask him. Perhaps you could have a conversation before deciding what to do with him.";
	move Drelgoth to Maintenance Storeroom;
	now Resolution of MeetingDrelgoth is 1;

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Drelgoth	"Drelgoth"

Drelgoth is a man.
ScaleValue of Drelgoth is 3. [human sized]
Body Weight of Drelgoth is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Drelgoth is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Drelgoth is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Drelgoth is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Drelgoth is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Drelgoth is 4. [length in inches]
Breast Size of Drelgoth is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Drelgoth is 2. [count of nipples]
Asshole Depth of Drelgoth is 8. [inches deep for anal fucking]
Asshole Tightness of Drelgoth is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Drelgoth is 1. [number of cocks]
Cock Girth of Drelgoth is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Drelgoth is 12. [length in inches]
Ball Count of Drelgoth is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Drelgoth is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Drelgoth is 0. [number of cunts]
Cunt Depth of Drelgoth is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Drelgoth is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Drelgoth is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Drelgoth is false.
PlayerRomanced of Drelgoth is false.
PlayerFriended of Drelgoth is false.
PlayerControlled of Drelgoth is false.
PlayerFucked of Drelgoth is false.
OralVirgin of Drelgoth is false.
Virgin of Drelgoth is true.
AnalVirgin of Drelgoth is true.
PenileVirgin of Drelgoth is false.
SexuallyExperienced of Drelgoth is true.
TwistedCapacity of Drelgoth is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Drelgoth is true. [steriles can't knock people up]
MainInfection of Drelgoth is "".
Description of Drelgoth is "[Drelgothdesc]".
Conversation of Drelgoth is { "<This is nothing but a placeholder!>" }.
The scent of Drelgoth is "     Drelgoth emanates what could be best described as a sweet musky scent, one that immediately arouses you as soon as you get too close.".

to say DrelgothDesc:
	say "     What you see before you is a tall, lean and athletic man of red-ish purple skin, who does little to hide his demonic nature, as his thick beige horns curl atop his head and a spaded-tip tail slowly swings around his strong legs. He also has this really handsome, masculine face with a defined and wide jawline. His eyes gleam with a fiery color and a gaze that draws yours to his, almost mindlessly so, and he definitely knows when you are examining him as his slitted pupils follow you with amusement. The demon is also completely naked, allowing you to have a good look at his entire sculped body all the way down to his bare feet, every muscle of his toned to perfection. But you cannot ignore the most obvious, which is his thick and long shaft hanging between his legs, accompanied by a set of large balls that surely seem full.";
	say "     He definitely is aware you are checking him out, and even clears the view for you. It is only when his cock gives a twitch that you return to your senses and stare back at his face, which has a mischievous smile drawn across.";

Section 2-1 - Talk Menu

DrelgothDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Drelgoth:
	now DrelgothDoneTalking is false;
		say "     You approach Drelgoth with the intent of conversing with him, and he eyes you attentively. 'What do I owe your presence?' he asks with a cheeky smile.";
		say "[DrelgothTalkMenu]";

to say DrelgothTalkMenu:
	say "     [bold type]What do you want to talk to Drelgoth about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the demon to tell you a bit more about himself";
	[]
	if Energy of Drelgoth > 0:
		choose a blank row in table of fucking options;
		now title entry is "His kind";
		now sortorder entry is 2;
		now description entry is "You are curious about what kind of demon he is, ask him";
	[]
	if Libido of Drelgoth > 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 3;
		now description entry is "Have some sex talk with Drelgoth";
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
					say "[DrelgothTalkHimself]";
				else if (nam is "His kind"):
					say "[DrelgothTalkHisKind]";
				else if (nam is "Sex"):
					say "[DrelgothTalkSexConditions]";
				wait for any key;
				if DrelgothDoneTalking is false:
					say "[DrelgothTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you have to take your leave. Drelgoth nods to you.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DrelgothTalkHimself:
	say "     Figuring that you know little about this demon, and given his unique demeanor, you ask him to explain who, or what, in fact he is. He chuckles at your curiosity, but seems to enjoy your interest in him. 'Well, I love the attention, so that's one thing you should know about me. But I'm here to help you get through the ordeals of life. You summoned me, remember? And only those who are in need of me can do such a thing. This means everything turned out the way it should be. But other than that... Well, there's no way around it, I'm a demon. And as such, I work as one. Fortunately for you, I feed on your corruption and mental hardship, which I can confidently say is somewhat of a gift. Whenever you feel like your grip on the world is escaping you, all you have to do is come to me and I'll... make it better. Way better,' he says the last part with a wink, then smiles charmingly as he finishes, leaning back against the wall.";
	if Energy of Drelgoth is 0:
		now Energy of Drelgoth is 1;

to say DrelgothTalkHisKind:
	say "     You explain to him that what he does is not usually what you would associate a demon with, as they do not tend to be any sort of healers. He laughs in response. 'I shall consider that a compliment, as you're saying I'm quite unique, so I appreciate that. Well, indeed, most demons are selfish and want only to prey on souls to harness more power. I suppose I'm different. I only take what I'm given, and I love keeping my... Dear companions happy and satisfied. So, to put it in perspective... I'm only a [']healer['] by consequence of how I feed. Of course, if there were no troubled people, I would have to somehow create that trouble in them so I could collect my sustenance. You mortals do the same with the land, it's no different.'";
	say "     'But... As long as our deal continues to work, I'm more than satisfied. Plus, you make for a great partner for a good bit of fun.' Leaning against the wall, he raises his knee with his foot planted behind as he raises his arms and slides his hands over the back of his head. You are given a full view of his whole body as he stretches his chest muscles, while never taking his gaze away from you. 'And I sense a certain curiosity in you. Does it have to do with what you're seeing?' he ends with a chuckle.";
	if Libido of Drelgoth is 0:
		say "     If it was not obvious, Drelgoth seems clearly keen on taking a more sexual approach if you, if you so wished. But, just to be sure, you should probably talk to him about it and set your conditions. If he is a demon, you should ensure you are getting a good deal out of it, right?";
		now Libido of Drelgoth is 1;

to say DrelgothTalkSexConditions:
	say "     As the prospective of having sex with this demon is up in the air, you feel the need to have a conversation about it with him. He smiles almost immediately and walks up to you, closing in the distance enough for the warmth of his body alone to touch you. Suddenly, the scent that reaches your nose switches to a much more pleasant one, like a subtle masculine perfume that somehow triggers a certain degree of lusty thoughts... As if they were some form of pheromones. 'I'm sure we could talk about it. I'd want to know everything you like so we could help each other out more efficiently...' This scent gets in your brain and causes your body to grow aroused, and your most primitive of instincts surface from the depths of your libido.";
	if "Dominant" is listed in traits of Drelgoth or "Submissive" is listed in traits of Drelgoth:
		say "     'I believe we could just have some actual fun, instead. No better way of getting to know each other.'";
	else:
		now DrelgothDoneTalking is true;
		WaitLineBreak;
		if player is submissive:
			DrelgothTalkSexConditionsSub;
		else if player is dominant:
			DrelgothTalkSexConditionsDom;
		else:
			say "     Given that your predisposition and attitude towards sex is adaptable, how do you feel towards Drelgoth? Is he someone whom you would love to [bold type]submit[roman type] to and offer a great deal of pleasure, obey his orders and treat him like a king? Or does he trigger your urge to [bold type]dominate[roman type], wanting to see him bend over for you and do your bidding, becoming your boy toy or sex slave for your own satisfaction?";
			say "     You feel like there is no in-between, these instincts are so untamed that you are forced into one of the sides of the spectrum...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - You want to submit.";
			say "     ([link]N[as]n[end link]) - You want to dominate.";
			if player consents:
				LineBreak;
				DrelgothTalkSexConditionsSub;
			else:
				LineBreak;
				DrelgothTalkSexConditionsDom;
		now Libido of Drelgoth is 2;

to DrelgothTalkSexConditionsSub:
	say "     You mindlessly walk up to him with no other thought in your mind other than catching more of that scent, while he wraps his arms around you tenderly. 'Oh, I see how that is...' His hand then slides over the back of your head and, ever so gently, guides you down to his chest, the pair of strong pectoral muscles bulging forward as he takes a deep breath. Your lips collide with that flawless, smooth skin of his as he pulls you to him, and slowly, you find yourself kissing him towards the source of that alluring scent, right under his arms. 'Is that what you're looking for? he says with a low, almost rumbling tone, as he raises his arm and lets you bury your face in his armpit. 'Hm... I see what you like. I happen to like that too.'";
	say "     He lets you take in that sweet, masculine fragrance that sets your lusts high and fantasies wild, an ecstatic feeling that surges through you powerfully and continuously, for a while. Once Drelgoth sees this as being enough, he pulls your head away, immediately causing you to miss that comfort and safety of his pit. 'There'll be plenty of time to explore your fantasies, I'm sure. And I'll be more than happy to provide.' A glance downwards reveals that the demon was building an erection that ended up stopping half-way with this, evidence that he, too, enjoys this arrangement. With a smirk on his face, he pulls back and keeps his gaze fixated on you. 'I'm looking forward to dominate you... If your will is to submit. Don't worry about me being a demon and all that. You'll be safe at my feet, I promise.'";
	TraitGain "Dominant" for Drelgoth;

to DrelgothTalkSexConditionsDom:
	say "     You mindlessly walk up to him with no other thought in your mind other than wanting to place your hands on his body, feel him up all over and, eventually, grope his buttocks. This leaves a surprised look in his face, but he does no stop you as your hands dive deep into his crack, fingering his butthole. It is so soft on the tip of your fingers that you feel only more encouraged to press further, sliding your index inside him just enough to rip a moan from his mouth. 'Oh, this is... A nice turn of events...!' he comments, and you do not let go, only imagining the things you could do to this sexy demon man. As you continue, Drelgoth builds up an erection that keeps on throbbing between the two of you, evidence that he does enjoy this.";
	say "     'Not exactly what I had in mind, but I-ooh...! I... do like this...' You do what you want, which is pushing your finger deeper into his ass, and at one point, Drelgoth only moans and asks for more as lust begins to overtake him. However, once you think this is enough to put him in his place, you pull your hand back and give one of his glutes a smack. Having walked out of those pheromones['] influence, or at least you think you did, you ascertain your control over him. He does not look disappointed in the slightest, much the contrary, as he understands you are a dominant and, above all, powerful individual. 'I'm quite pleased to know this about you. Well, let me tell you that I'd love to serve you... Anything you desire, it shall happen. You only have to say it.'";
	TraitGain "Submissive" for Drelgoth;

Section 2-2 - Sex Menu

instead of fucking Drelgoth:
	say "[SexWithDrelgoth]";

to say SexWithDrelgoth:
	if Libido of Drelgoth < 2:
		say "     He must be very eager to have sex with you, and you are sure about that. But why not talk to him about it first?";
	else if lastfuck of Drelgoth - turns < 2:
		say "     You decide to approach Drelgoth with the intent of having sex with him, something obvious to the eyes of the demon as soon as you even think about it, but he stops you. 'So soon after our last? Maybe you should go take a break. We could fuck all day, but after a while, you'd just stop appreciating it as much... We don't want that, right?";
	else if "Submissive" is listed in traits of Drelgoth:
		say "     << Author's Note: Currently, only the Dom Drelgoth route is being commissioned. Sub Drelgoth is an alternate route that can be expanded. >>";
	else:
		say "     You decide to approach Drelgoth with the intent of having sex with him, something obvious to the eyes of the demon as soon as you even think about it. 'Keen on having some fun with me? Well, come here, then...'";
		WaitLineBreak;
		say "[DrelgothSexMenu]";

to say DrelgothSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Offer to suck his cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship his armpits";
	now sortorder entry is 2;
	now description entry is "Bury your face under his arms";
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
				if (nam is "Give him a blowjob"):
					say "[DrelgothSexSubBlowjob]";
				else if (nam is "Worship his armpits"):
					say "[DrelgothSexSubArmpitWorship]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself away from him, and he does not stop you, instead awaiting the next time you come to him.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DrelgothSexSubBlowjob: [Submissive Route Blowjob]
	say "     As you consider what you would like to request from your demon companion, your gaze wanders around his crotch, then shifts back to his grinning face once you realize where you have been looking at. This simple show of body language requires no additional words as Drelgoth walks up to you, knowing exactly what you want. 'You wish to please me, that much is obvious. And I'd like you to,' he says, sliding his hand over the back of your head affectionately. With a gentle pull, your body touches his as you lose yourself in his fiery eyes, and from his mouth, commanding words are spoken, 'So how about you drop to your knees and get to work?' You do not even hesitate, knowing you want to do this, and as such, you do as he says, bending your legs to kneel in front of the demon.";
	say "     With his growing cock before your eyes, you watch in awe as it continues to harden. At some point, the round and wet tip brushes against your lips, which prompts you to wrap them around it and push towards his shaft, taking his member into your mouth. Moving your tongue underneath the sensitive meat, you wiggle it around its length as more of it slides in towards your throat, much to Drelgoth's pleasure. He observes your movements and lets you take full control of the situation, for the time being, trusting your genuine will to service him. With disappointment not being part of your goal here, you instead opt for maximum effort in making him feel good, joining your hands around his shaft and stroking it along with your mouth movements back and forth.";
	WaitLineBreak;
	say "     The demon places his hands back on your skull as you suck his cock, and as you feel his excitement grow, so does his grasp, yet still allowing you freedom of movement. You do not want to stop, either way, and even give him additional stimulation by now taking one of your hands over his balls, hanging just underneath his sizable member, to fondle them. 'Now that feels great... Appreciating all the things you're being given, isn't that right...?' he says, thoroughly enjoying his time and your caring affections. 'Well, if you keep that up, I might reward you... Only good [boygirl]s deserve rewards...' Once more, you look up into his eyes and nod... With his cock in your mouth, but still, a nod nonetheless. This flares up his gaze as his grin widens...";
	say "     'Mmh... I do love when the prey knows their place. Subservient, obedient... You're all those things, are you not?' His grip on the back of your head tightens as, suddenly, you feel yourself being pulled to him, his cock forcefully making its way into your throat. 'Maybe it's time I give you the first part of your reward. I like to call it... Acceptance.' It is in this moment that he decides to pick up the pace, shifting all the control to himself, and proceed to use your head like a fucktoy, fucking your mouth vigorously as if he was keen on breeding you through it. Maybe that is exactly what he wants to do, as he moves in back and forth relentlessly, without any signs of stopping anytime soon.";
	WaitLineBreak;
	say "     Your head is simply held between his hands as Drelgoth continues to thrust into your mouth, feeding you his cock as he pleases. 'Isn't it great to let someone else take charge when your mind's so tired of everything? And here you have, a generous demon companion who'd be more than happy to take over...' The grin on his face widens as his visage darkens, and the cock in your mouth just feels even thicker and harder than before. A once tender and passionate demon now becomes rough and domineering as he continues to pound your throat, his full balls swinging back and forth against your chin once he manages to fit every inch in you. He gets so enthusiasmed, in fact, that soon, his climax catches up to him, your only warning being an incessant throbbing focused on his whole shaft.";
	say "     After that, it is only a significant gushing of cum coating the insides of your mouth that continues to spew at increased force, each spurt thick and rich in flavor as the demonic seed touches your tongue and slides down your throat. 'Mmmh... Looks like you deserved your reward after all...!' he manages to say amidst his moans, in a climax that seems to go on for longer than you would expect in any other average person. Once the last drop leaves him and drops into your stomach, he pulls his cock out and slaps your cheek repeatedly with it. 'I'm sure you're feeling better now, aren't you? Just keep thinking of this big cock and how good it tastes, that'll keep your mind grounded...'";
	WaitLineBreak;
	say "     Somehow, you feel calm. Your life just feels right, and this demon seems to be all you need. The taste of his manhood and cum leaves you joyful and looking forward for more.";
	SanBoost 10;
	NPCSexAftermath Player receives "OralCock" from Drelgoth;

to say DrelgothSexSubArmpitWorship: [Submissive Route Worship]
	say "     Looking over Drelgoth's almost perfect body, and recalling that sweet scent of his, you tell him that you would love to give him a good time by showing his muscles a great deal of appreciation. Hearing your proposal, his face gleams with the pleasure of knowing you wish to worship him. 'That's lovely to hear, friend... Why don't you come over here and give me a kiss to begin with? Then I'll let you get started...' he says, beckoning you to approach him with the index finger of one of his hands, and with that same hand, once you are within reach, he caresses your jaw and pulls you to him. Your lips collide as you both kiss, and soon, his demonic tongue wiggles and pushes against them, invading your mouth in a powerful, almost possessive way.";
	say "     Immediately, you feel a rush of lust taking over you as this masterful kiss continues, and just then, you begin to inhale that sweet demonic scent once again. Your mind gets hazy as your surroundings matter less and less, causing you to focus your senses on the demon before you. He is all that matters to you, that and the lust-inducing pheromones arriving at your nostrils. As Drelgoth pulls back, he places a hand over the back of your skull and immediately guides you down his neck, which you kiss tenderly. 'Mmh... Good... Kiss your way to wherever you like...' he tells you, his masculine, low and delightful voice making your insides rumble with together with the anticipation of pleasuring him further.";
	WaitLineBreak;
	say "     What feels sweet to you is actually a powerful masculine musk emanating from his body, which only becomes more evident the closer to go down on his body, your lips tenderly kissing through his neck and towards his chest. With his hands, the demon accompanies your movements as he holds your skull, and you know exactly where you want to be. Judging by the way he raises his arms, clearing your path to the hot and sweaty armpits, one could tell he wants the very same thing. Rubbing his chest with your hands and caressing his nipples with your fingers, you bury your face in that yearning pit and immediately begin to lick it, occasionally taking an additional deep whiff of his so arousing scent.";
	say "     'Grab my cock, instead,' he commands, moving your hand from his chest to his now very hard dick, 'Just jerk if until I cum... And while you're at it, just give in to my demonic charms. You'd serve so much better as a mindless slave to my whims, don't you think?' At this point, every word he says sounds perfect in his mind, and you crave to please him in a way like none other before. With this, you do as he says and grab his cock, to then stroke it while you lick his armpit. He makes sure to lock your head down with his arm so you cannot even gasp for fresh air, only the damp and subjectively sweet scent of his body. 'You do make a great slave...! I can sense how much you want this...'";
	WaitLineBreak;
	say "     With a chuckle, Drelgoth orders you to continue making out with his pit, all while his erection throbs with excitement at your caresses, which you feel in your hand. Of course, you definitely do not want to disappoint him, thus, you put your tongue to work all around his smooth and salty armpit, giving it the worship it deserves as you stroke that big cock of his. Even if you wanted to take your head somewhere else, he has got you in such a tight lock that it would be practically impossible to escape... But you do not really care. You keep giving him what he wants, which is consequently what you want, and eventually, your efforts pay off. Soon, the demon's body is squirming slightly as he nears his climax, not stopping you from just going ahead.";
	say "     'Don't stop now... Keep going...' His voice shifts to a couple of moanings that intensify in sequence as his cock begins to throb in your hand, then with each major quiver, he shoots his load spurt by spurt with enough force to travel a significant distance. 'Oooh, fuck yes... This... Feels great...' He then finally pulls your head away from his pit, which immediately makes you miss it. Then, he locks his eyes on yours, and there is this big smile on his face. 'Good [boygirl]... I like to see that devotion to me. Do feel free to bury your face in my pits anytime... I'll make sure you get as much of me as you crave.' With your mind finally clearing up, you realize what you have done, but then, you feel good about it.";
	WaitLineBreak;
	say "     It was just a nicely spent time with your demon friend. You are now happy and joyful, ready to take on the world, knowing he will be there for you when you need his sexy companionship.";
	SanBoost 10;
	NPCSexAftermath Player receives "Other" from Drelgoth;

Drelgoth ends here.
