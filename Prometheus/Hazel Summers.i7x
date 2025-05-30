Version 1 of Hazel Summers by Prometheus begins here.

[Human NPC - Daughter of General Summers]

[ HP of Hazel Summers ]
[ 0 - Unmet ]
[ 1 - Moved to Library ]
[ 2 - Visited Museum for first time ]

[ Hunger of Hazel Summers - Form ]
[ 0 - Human ]
[ 1 - Centaur ]

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Hazel Summers	"Hazel Summers"

Hazel Summers is a woman.
ScaleValue of Hazel Summers is 3. [5' 6"]
Body Weight of Hazel Summers is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Hazel Summers is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Hazel Summers is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Hazel Summers is 4. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Hazel Summers is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Hazel Summers is 4. [length in inches]
Breast Size of Hazel Summers is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Hazel Summers is 2. [count of nipples]
Asshole Depth of Hazel Summers is 8. [inches deep for anal fucking]
Asshole Tightness of Hazel Summers is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Hazel Summers is 0. [number of cocks]
Cock Girth of Hazel Summers is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Hazel Summers is 0. [In Inches]
Ball Count of Hazel Summers is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Hazel Summers is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Hazel Summers is 1. [number of cunts]
Cunt Depth of Hazel Summers is 8. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Hazel Summers is 1. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Hazel Summers is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Hazel Summers is false.
PlayerRomanced of Hazel Summers is false.
PlayerFriended of Hazel Summers is false.
PlayerControlled of Hazel Summers is false.
PlayerFucked of Hazel Summers is false.
OralVirgin of Hazel Summers is false.
Virgin of Hazel Summers is true.
AnalVirgin of Hazel Summers is true.
PenileVirgin of Hazel Summers is true.
SexuallyExperienced of Hazel Summers is false.
TwistedCapacity of Hazel Summers is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Hazel Summers is false. [steriles can't knock people up]
MainInfection of Hazel Summers is "Human".
Description of Hazel Summers is "[HazelSummersDesc]".
Conversation of Hazel Summers is { "Hello" }.

the scent of the Hazel Summers is "Hazel Summers smells mostly of the city; sweat, semen, dust, and a little fear, though there is the scent of coffee beneath it all."

to say HazelSummersDesc:
	if Hunger of Hazel is 1: [Centaur]
		say "     Hazel is a centaur with fiery-red hair that hangs just past her shoulders, held out of her lively amber eyes by an ordinary black headband. The pale skin of her face is dusted with freckles, especially over her nose. Her white and red dress goes down to her waist where her equine body begins, the auburn fur of her horse half matching quite nicely with her clothes. Her C-cup breasts are firmly contained by the soft fabric of her dress. She firmly keeps her tail obscuring her privates from sight.";
		say "     She smiles as she sees you looking at her, nonetheless twisting slightly in bashfulness. Overall she is a cheerful and extroverted woman, but being so definitely the center of attention causes her to become a little shy. She seems happy to mingle with others, unconcerned about potential infection by the nanites especially when there is the chance to make new friends. When conversation turns sexual, she becomes delightfully squirmy, blushing but unable to turn away as her eyes go wide and she covers her mouth, mumbling to herself.";
	else: [Human]
		say "     Hazel looks like a normal young woman, if normal were actually a quantifiable thing. Her fiery-red hair hangs just past her shoulders, held out of her lively amber eyes by an ordinary black headband. The pale skin of her face is dusted with freckles, especially over her nose. Her white and red dress goes down to about mid-thigh and looks to be tailored specifically to her with how well it fits, her C-cup breasts firmly contained by the soft fabric. Her look is finished off by black tights and scuffed combat boots.";
		say "     She smiles as she sees you looking at her, nonetheless twisting slightly in bashfulness. Overall she is a cheerful and extroverted woman, but being so definitely the center of attention causes her to become a little shy. She seems happy to mingle with others, unconcerned about potential infection by the nanites especially when there is the chance to make new friends. When conversation turns sexual, she becomes delightfully squirmy, blushing but unable to turn away as her eyes go wide and she covers her mouth, mumbling to herself.";

Instead of conversing the Hazel Summers:
	say "     As you indicate that you would like to talk, Hazel looks up from reading '[one of]The Moon Also Rises[or]Lady of the Rings[or]Black Fang[or]The Very Hungry Snail[at random]'. 'What would you like to talk about?' she asks as she inserts a bookmark and stands up.";
	say "[HazelSummersTalkMenu]";


to say HazelSummersTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "About Her";
	now sortorder entry is 1;
	now description entry is "Ask Hazel to tell you a bit about herself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 2;
	now description entry is "Boop Hazel on the nose";
	[]
	if HP of Hazel > 1 and Thirst of Hazel is 0 and "Open to Sex" is not listed in Traits of Hazel and Player is not Neuter:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 3;
		now description entry is "Proposition Hazel for sex";
	[]
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
				if (nam is "About Her"):
					say "[HazelSummersTalk1]";
				else if (nam is "Boop"):
					say "[HazelSummersTalk2]";
				else if (nam is "Sex"):
					say "[HazelSummersTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Hazel, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HazelSummersTalk1: [About Her]
	say "     'Forgotten what I told you already? My name is Hazel and I'm twenty-two. My Dad is a general and-' Seeing your bemused expression, she can't stop herself laughing. 'Fine, chill. My parents have been in the army all my life so I spent quite a lot of time around the military bases growing up, though I had few months living with my grandparents when dad was on active duty. It was tougher when I was old enough to understand that there was the chance that he would never come back. I suppose he may be feeling a similar thing now. With my protection detail gone, he won't know that I've found somewhere safe...' Hazel seems lost in thought and you give her a moment before asking her to tell you more about her childhood in an effort to distract her. 'I got to mix with all sorts of kids, some of them locals, some of them military brats like me. I tended to avoid the ones that wanted to play war though. I met so many interesting people, yet as soon as we moved to the next posting, I might never see them again.'";
	say "     'I guess this is why I put so much effort into making a good first impression, not that I had that chance with you. If someone likes me, they might give me their phone number or something, though so far all I've had is boys trying to get into bed with me. I mean, how hard is it to get to know someone before trying to get them naked? The worst was one person who wanted me to do things in a public restroom! Ewww! But I'm being gross and getting off topic. I like reading, I don't suppose you've noticed given the subtlety with which I do it,' she jokes gesturing to the obvious stack of books on the table behind her. 'There's something magical about being transported to another world, even if it's similar to this one, and pretending to be someone else. Someone with lots of friends, perhaps more intelligent, and certainly less restrained in expressing their feelings! But as soon as I close the book, I'm back here, just plain, prudish me.'";
	WaitLineBreak;
	say "     'Oh well, I suppose I'll never get a better chance to meet lots of different people to make friends with, even if they are lust-driven animal people as the result of science gone  mad. Actually, I think I saw a book like this somewhere, where did I put it? I'll have to look for it again later, assuming that I remember. What else is there to say about me? I have three brothers and a sister. I'm the second youngest, but as far as I know, none of them are in this part of the country. I was here looking after my aunt and uncle's house while they went on a tour of the wineries in Europe. I part-timed at a cafe by the beach, but I doubt that I'll still be employed when all of this is over. Even if the building is still standing, I doubt the health inspector would be impressed. Hmm. My parents have way more stories than me, but a lot of them are confidential. I think that's about it for me though.' Laughing, you thank her for sharing leave her to her books.";

to say HazelSummersTalk2: [Boop]
	say "     Hazel is rather startled when you boop her on the nose, lurching back a bit before realizing what just happened and beginning to laugh. 'Stop it, I'm not a dog,' she protests between giggles, swatting your finger away as you threaten to do it again. Eventually you relent, smiling as the young woman leans up against you companionably for a few seconds before returning to her book.";

to say HazelSummersTalk3: [Sex]
	if Hunger of Hazel is 1: [Centaur]
		say "     Aware that Hazel seems to be shy around depravity, you consider how best to introduce her to the idea of exploring the growing desires that have likely been developing since the city [']went to the dogs['], and certainly since she was transformed into a centaur. Her taste in books has become more risqué and there have been a few times where you have caught sight of her equine vulva pulsing and clenching, presumably as she has read a particularly lurid passage. That she hasn't found clothes to cover her tauric half is another change, though she does seem to take special care to make sure her tail is keeping her modest when she isn't distracted by something else. Nonetheless, you are confident that you are the best person to talk to her about this, especially when you have a personal interest in the red-head yourself.";
		say "     Seeing how she is looking at you, waiting for you to speak, you decide to bite the bullet and get it over with. Tentatively at first, you bring up how you have seen her unconsciously succumbing to her lust while reading, mentioning that others such as Vanessa and Meredith have seen it too. Then, as her face blushes a pretty shade of rose, you compliment her on her appearance, paying special attention to the fiery hues of her hair and amber eyes, as well as her kindness, though you do gently tease her about her naivety. Eventually, once Hazel's face threatens to mutate into a tomato from embarrassment, you stop speaking and give her a moment to recover, your piece said. She opens and closes her mouth a few times, fighting to control her rapid breathing while she formulates a response to your advances and the mortifying revelation that multiple people watched her body flaunt its desires as she read erotic scenes from books.";
		WaitLineBreak;
		say "     'This is so embarrassing...' she mutters to herself, placing her current book on a nearby table before continuing. 'I think that you're probably right; I would bnever have done anything like this before getting trapped in the city.' Hoping to put her at ease, you chuckle and mention that a lot of people can probably say the same, making her snort and look to the side. 'Yeah, I guess so. But I don't want any of you to think that I can't manage my lust myself or that I'm a liability. No one really knows how these nanites work. What if I get my... fluids on something and infect someone? We were warned about sexually transmitted diseases at school...' she mumbles, occasionally darting her eyes back to you. You reassure her that you don't think that there is any risk of that. Yes, sexual fluids seem to have that effect for some, but if Hazel was infectious, that would have happened by now. Wiping her hands on her clothes isn't quite the same as washing them with hot water and soap after all.";
		say "     'I wash my hands,' she replies indignantly. You don't doubt it, but how hot was the water, and did she wash the erotic book that she was reading while she pleasured herself, or any of the surfaces that she unconsciously rubbed up against? 'No, I suppose not,' she concedes. You feel like you've got a little off track from your intention though and try to pull it back to encouraging the young woman to be a little more open to exploring her desires rather than trying to suppress and deny them. You'd be willing to after all, and you're sure that if she asked, some of her protectors would be willing (or eager) to help her deal with her lust. 'I can't do that. They'd give me some excuse about punishment from my father or it being against protocol,' Hazel disagrees. Well, if you could convince them, would she be interested? '... Maybe,' she mumbles, her tail flicking nervously behind her. Well, that's a matter for later, but you can say for yourself that you would be willing to help her now. If she wants.";
		WaitLineBreak;
		say "     Hazel bites her lip and thinks for a moment. 'Ok, I think that I would like that,' she eventually replies, her face flushing pink once again. 'But I don't want anyone to think that I'm a slut or anything,' she quickly adds. Of course not, but you aren't exactly planning on starting with quadrupal penetration and advanced bondage. You had something more basic in mind such as seeing what mischief you can get up to with just your hands. She initially nods before becoming pensive. 'Would you mind if I used my hands instead?' she haltingly asks. Sure, your happy to help guide her is she would prefer to masturbate, but your answer only seems to make her even more embarrassed. 'No, I meant could I touch you instead,' she replies, her voice barely above a whisper. If that's what she wants, but you caution her that she probably won't get as much pleasure from it.";
		say "     'You'd be surprised, but you can stop treating me as if I don't know anything about sex,' she grumbles cutely. Oh really? How many men, or women, has she been intimate with? 'Only one, but I did put his penis in my mouth,' she boasts before realizing what she has just said and burying her face in her hands and quietly scolding herself into them. You soothingly ease her embarrassment and inform her that you'll take things slowly and just stick with familiarizing her with your body today. 'Ok,' Hazel agrees, seemingly not trusting herself to say much more, her voice threatening to begin stuttering from nerves. You tell her to strip completely so as to reduce the risk of dirtying or tearing her clothes [if Player is not naked]before doing the same yourself[end if], taking a moment to enjoy the sight of her body as it becomes increasingly visible. To her credit, she even resists the urge to hide her breast behind her arms, instead taking a breath and asking you how she should begin.";
		if Player is Herm: [Handjob and fingering]
			say "     You would tell her to just do what she is comfortable with and to follow her curiosity, but you get the impression that she would appreciate more direction and guidance instead. Standing beside her, you suggest that she kneel so that she has access to both your moistening pussy as well as your hardening cock, the nervous centaur following your instruction and bringing her face level with your groin. You give her a moment to inhale the scent of your arousal and become accustomised to being so close to another person's genitals before you suggest that she be a little more hands on. 'I guess,' Hazel concedes before tentatively bringing one hand up to wrap around your shaft while the other hand dips lower and carresses your labia. Her breathes are quick, a mixture of nerves and her own growing arousal, as she begins to stroke you while looking up at you almost as if looking for your approval. You give her a nod and tell her that it feels good, the simple statement having a calming effect on her and causing her to shyly grin.";
			say "     Gradually she seems to get used to the fact that she is pleasuring you, that the heat pulsing against her palms is from the eager body of someone other than herself, and her grasp becomes a little more confident and purposeful. She still flinches slightly as a bead of your pre dribbles over her fingers, but she manages not to snatch her hand away and instead massages it into the throbbing flesh of your penis. She apparently has more talent when it comes to pleasing your feminine parts, circling her fingers around your vulva, occasionally brushing over your clitoris, and even managing to work herself up to slipping a couple of fingers inside, her attention slipping between devotion to her ministrations, and looking to you for encouragement or critique. The physical pleasure may not be the most you've ever felt, but the satisfaction and thrill of these feelings being brought about by a young woman so seemingly innocent lends a special arousal to the situation.";
			WaitLineBreak;
			say "     You ask Hazel whether she is enjoying herself and hear her mumble a reply but don't quite catch the words. 'Yes, I think so,' she answers when you ask her to repeat what she just said. 'You're really warm and the smell is making me warm in my tummy. It's making me glad that I'm not wearing underwear as I think it's making me sort of leaky.' You're glad to hear that because she is certainly making you feel more than a little tingly in your loins too and you doubt that it will be long before you cum, and tell her as much. 'What? But you'll make a mess on the floor and I'll have to find somewhere else in the library to read or it'll smell like sex!' the centaur filly complains. She could always swallow it, you think to yourself, but decide that such a suggestion would likely just make her anxious and instead point out that the library already smells of sex and that she has become accustomed to it.";
			say "     'I suppose,' she grudgingly concedes before brightening up a little. 'At least it means that I did a good job.' True, you chuckle, both in regards to pleasuring you and overcoming her concern about sexual matters. She certainly doesn't seem to be acting particularly slutty or as if she is succumbing to the nanites. She smiles at your praise and redoubles her efforts as your climax approaches, her hand tightening around your cock as she rubs it up and down while the other hooks inside your pussy and presses against a particularly sensitive spot. Unable to help yourself, your hips lurch forward and you release a throaty groan as you orgasm, shooting ropes of cum over the floor in front of you even as your essence splashes Hazel's hand while she continues to stroke and finger you unceasingly throughout your climax.";
		else if Player is Male: [Handjob]
			say "     You would tell her to just do what she is comfortable with and to follow her curiosity, but you get the impression that she would appreciate more direction and guidance instead. Standing beside her, you suggest that she kneel so that she has better access to your already hardening cock, the nervous centaur following your instruction and bringing her face level with your groin. You give her a moment to inhale the scent of your arousal and become accustomised to being so close to another person's genitals before you suggest that she be a little more hands on. 'I guess,' Hazel concedes before tentatively bringing one hand up to wrap around your shaft while the other hand dips lower and cups your balls. Her breathes are quick, a mixture of nerves and her own growing arousal, as she begins to stroke you while looking up at you almost as if looking for your approval. You give her a nod and tell her that it feels good, the simple statement having a calming effect on her and causing her to shyly grin.";
			say "     Gradually she seems to get used to the fact that she is pleasuring you, that the heat pulsing against her palms is from the eager body of someone other than herself, and her grasp becomes a little more confident and purposeful. She still flinches slightly as a bead of your pre dribbles over her fingers, but she manages not to snatch her hand away and instead massages it into the throbbing flesh of your penis. She apparently has even less idea about what to do with your testicles, settling for nudging them around in her palm and tracing the seam back and forth between your taint and the base of your cock, her attention slipping between devotion to her ministrations, and looking to you for encouragement or critique. The physical pleasure may not be the most you've ever felt, but the satisfaction and thrill of these feelings being brought about by a young woman so seemingly innocent lends a special arousal to the situation.";
			WaitLineBreak;
			say "     You ask Hazel whether she is enjoying herself and hear her mumble a reply but don't quite catch the words. 'Yes, I think so,' she answers when you ask her to repeat what she just said. 'You're really warm and the smell is making me warm in my tummy. It's making me glad that I'm not wearing underwear as I think it's making me sort of leaky.' You're glad to hear that because she is certainly making you feel more than a little tingly in your loins too and you doubt that it will be long before you cum, and tell her as much. 'What? But you'll make a mess on the floor and I'll have to find somewhere else in the library to read or it'll smell like sex!' the centaur filly complains. She could always swallow it, you think to yourself, but decide that such a suggestion would likely just make her anxious and instead point out that the library already smells of sex and that she has become accustomed to it.";
			say "     'I suppose,' she grudgingly concedes before brightening up a little. 'At least it means that I did a good job.' True, you chuckle, both in regards to pleasuring you and overcoming her concern about sexual matters. She certainly doesn't seem to be acting particularly slutty or as if she is succumbing to the nanites. She smiles at your praise and redoubles her efforts as your climax approaches, moving both hands to your cock and pumping them up and down with impressive fervor, a look of determination etched into her facial features. Unable to help yourself, your hips lurch forward and you release a throaty groan as you orgasm, shooting ropes of cum over the floor in front of you while she continues to stroke you unceasingly through your climax.";
		else: [Female Player] [Fingering]
			say "     You would tell her to just do what she is comfortable with and to follow her curiosity, but you get the impression that she would appreciate more direction and guidance instead. Standing beside her, you suggest that she kneel so that she has better access to your already moistening pussy, the nervous centaur following your instruction and bringing her face level with your groin. You give her a moment to inhale the scent of your arousal and become accustomised to being so close to another person's genitals before you suggest that she be a little more hands on. 'I guess,' Hazel concedes before tentatively bringing her hands up to caress your labia, her thumbs framing your vulva while her finger hover near your clitoris. Her breathes are quick, a mixture of nerves and her own growing arousal, as she begins to fondle your nether-lips while looking up at you almost as if looking for your approval. You give her a nod and tell her that it feels good, the simple statement having a calming effect on her and causing her to shyly grin.";
			say "     Gradually she seems to get used to the fact that she is pleasuring you, that the heat pulsing against her palms is from the eager body of someone other than herself, and her movements becomes a little more confident and purposeful. She barely flinches as a trickle of your juices dribbles over her fingers, and she manages not to snatch her hand away and instead uses it as lubrication to slip a finger into the warmth of your pussy. She apparently has a modicum of talent when it comes to sapphic pleasures, circling her fingers around your vulva, occasionally brushing over your clitoris, and even managing to work herself up to slipping a couple more fingers inside, her attention slipping between devotion to her ministrations, and looking to you for encouragement or critique. The physical pleasure may not be the most you've ever felt, but the satisfaction and thrill of these feelings being brought about by a young woman so seemingly innocent lends a special arousal to the situation.";
			WaitLineBreak;
			say "     You ask Hazel whether she is enjoying herself and hear her mumble a reply but don't quite catch the words. 'Yes, I think so,' she answers when you ask her to repeat what she just said. 'You're really warm and the smell is making me warm in my tummy. It's making me glad that I'm not wearing underwear as I think it's making me sort of leaky.' You're glad to hear that because she is certainly making you feel more than a little tingly in your loins too and you doubt that it will be long before you cum, and tell her as much. 'What? But you'll make a mess on the floor and I'll have to find somewhere else in the library to read or it'll smell like sex!' the centaur filly complains. You doubt that you're going to be quite that messy, but decide that such a comment would likely just make her anxious and instead point out that the library already smells of sex and that she has become accustomed to it.";
			say "     'I suppose,' she grudgingly concedes before brightening up a little. 'At least it means that I did a good job.' True, you chuckle, both in regards to pleasuring you and overcoming her concern about sexual matters. She certainly doesn't seem to be acting particularly slutty or as if she is succumbing to the nanites. She smiles at your praise and redoubles her efforts as your climax approaches, rubbing your clitoris fervently with the fingers of one hand while the other hooks inside your pussy and presses against a particularly sensitive spot. Unable to help yourself, your hips lurch forward and you release a throaty groan as you orgasm, splashing Hazel's hands and arms with your essence while she continues to stroke and finger you unceasingly throughout your climax.";
		WaitLineBreak;
		say "     The scent of equine arousal mingles with your own sexual aroma as you lower yourself to the ground, surprisingly satisfied, an easy smile coming to your lips. 'I think I got a bit excited,' Hazel blushingly confesses with a smile. It would seem that she made the right decision with masturbating you if she managed to cum from that as well. She leans up against you as the two of you catch your breaths. 'Thank you. I think that I got more from that than I have surreptitiously touching myself while reading. I guess being a little more sexually open wouldn't be too bad,' the centauress admits. Does this mean she might be open to doing something similar again in future? 'Maybe? We'll see. For now I think I need some time to think. This is still new to me and I can feel myself getting anxious about it. Reading should soothe that.' Helping her up, you tell her that you understand and that you'll be around if she wants to talk about it more. 'Thank you. Again. Have a good day,' she replies a little awkwardly, though given the puddle of your seed by her feet, this seems a fair response. You give her a quick hug before giving her some privacy.";
		TraitGain "Open to Sex" for Hazel;
	else:
		say "     This should not currently be possible. Please report this as a bug on the Flexible Survival Discord Channel.";

Section 2 - Sex

instead of fucking Hazel Summers:
	say "     'Sex? With you? Ummm. No. Not at the moment. Sorry. I'm grateful for you saving me but... No. Sorry.' Hazel blushes and covers her face self-consciously, peeking at you between her fingers. (WIP)";

Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Valuable Hostage	"Valuable Hostage"

Valuable Hostage is a situation.
ResolveFunction of Valuable Hostage is "[ResolveEvent Valuable Hostage]".
The level of Valuable Hostage is 20.
Sarea of Valuable Hostage is "Outside".
when play begins:
	add Valuable Hostage to BadSpots of FemaleList;

to say ResolveEvent Valuable Hostage:
	say "     'Help! Somebody help me!' a female voice cries from what sounds like the next street. Impulsively, you dodge between two husks of cars and, keeping low, hurry to see what is happening. Peering around the corner of a gutted cafe, you see a copper-haired, surprisingly human, woman ineffectively kicking at a pair of laughing orcs as they drag her back towards a third, their captive screaming for help as she struggles in vain. Just as you are considering whether you should intervene, you recoil as a bright shape hurtles from above, revealed as an angel as it lands surprisingly lightly a few meters to the side of the slavers, a bifurcated spear clasped in one hand. Despite the long honey-blonde hair wafting on a non-existent breeze, it is difficult to tell if they are male or female. 'Unhand her, or someone loses an arm,' the stern, but decidedly feminine voice commands, her wings fading into the back of her armor. No-one moves other than the struggling human, the orcs staring at the angel defiantly.";
	say "     'There will not be a third warning and you won't make it far if you try to run. Release her now and I'll allow you to leave without punishment.' You cautiously approach, ensuring that you remain out of sight, readying yourself to jump in should the exchange result disfavorably. Perhaps thinking that three against one favors them, the orcs advance on the angel, one of them quickly binding the woman's arms and legs behind her. 'Gods, how dense are you? I am armed, armored, and unafraid of you. Does that not give you puase?' the angel snorts. 'Fine. Allow me to make it a little more even.' She slams her spear into the ground haft first, leaving it there as she approaches her foes. To their credit, the orcs have the sense not to attack her one on one, two of them attempting to flank her while the largest roars and charges headlong into her, sending her feet scraping backwards across the asphalt with the force behind it.";
	WaitLineBreak;
	say "     However, it fails to knock her over and leaves the orc vulnerable to her counter attack as she brings her fists down on the back of his neck then drives a knee up into his face. Grabbing him by the hair before he can collapse, the angel hurls him to sprawl across the ground senseless in front of one of his accomplices. 'Who's next?' she taunts. With the orcs distracted and the outcome of the battle certain in your mind, you creep towards the bound woman and begin to loosen her bonds, whispering reassurance of your noble intentions. As the ropes fall away you whisper for her to remain quiet before glancing over to see the state of the battle, the slavers circling around the celestial warrior, neither wanting to make the first move but not willing to accept defeat quite yet. 'My turn then? How polite.' The orc on the left has only a moment to watch as the angel's wings flare out again before she is barrelling towards him. Though he manages to deflect her shoulder, she scythes his legs out from under him as she flies past, agilely circling around to knock him out to with an elbow.";
	say "     You would have thought that now would be a good time for the last orc to surrender, especially with the ease with which his allies were bested, but whether due to pride, rage, or stupidity, he roars and charges at the angel. Swinging a punch into her jaw, you feel a moment of horror as her head lurches to the side and she stumbles, giving the orc a chance to grab her by the hair and ram his forehead into her face. When the angel straightens up again, both you and the woman sigh with relief. 'I may be weaker here, but you needed to do better than that. More like this,' she chuckles darkly. With the speed of a striking snake, the celestial escapes the orc's grasp and slams her elbow into his ear, causing him to collapse to the ground gracelessly. 'This is why you should wear armor,' she addresses her unconscious adversaries before collecting her spear and approaching you.";
	WaitLineBreak;
	say "     'I'm pleased to see that not everyone has forsaken kindness,' the angel praises you as you help the woman to her feet. 'That was amazing! Where did you learn to fight like that?' the human woman asks. 'Thank you. A mixture of tutoring and experience on the battlefield,' comes the reply. Now that the angel is closer, you can see the scars of past wounds on her face and neck, with more doubtless beneath her armor. 'My father wouldn't let me join the army. He said that it would destroy who I am,' the red-haired woman responds. 'But where are my manners? Thank you for rescuing me. I wasn't sure that anyone would. My name is Hazel. Hazel Summers.' She gives you a quick hug before doing the same to the warrior, dwarfed next to her. 'A pleasure to meet you Hazel. I am Solariel, daughter of Ishariel. My interference will likely be scrutinized, but I couldn't stand by and do nothing. My parents raised me to be better than that.'";
	say "     'Your parents? I didn't know that angels had parents, I thought that there was just...' Hazel leaves the question hanging. 'Ah. I don't know how [italic type]your[roman type] angels work, but I have a mother and father and innumerable siblings, some of which would have comments on how I fought. I can just imagine Belliandra's smug face, not to mention Illiana spouting about how magic is superior. Stupid sorceress...' Solariel briefly descends into incomprehensible grumbling before remembering that she isn't alone. 'Aaanyway, you should probably find somewhere safe to take shelter, perhaps with [name of player] here, until the city becomes a little safer. These nanites are causing chaos.' 'The whats?' Hazel asks with confusion. 'Oh! I assumed given that- Well, I'll let someone else explain. The technology is still weird to me. But my point stands, find somewhere safe. I may check in from time to time, but there may be other people out here that need me, so I can't be your personal guardian,' Solariel apologizes.";
	WaitLineBreak;
	say "     She turns to you. 'Look after Hazel. If she comes to harm due to negligence or evil intent, there won't be anywhere that you can hide from me,' the angel warns with a wide smile, her head tilted. 'With that said, I should be going. People to help, a city to explore. Fare thee well, both of you.' Solariel propels herself skyward and soars away, leaving Hazel to stare at you awkwardly. 'Do you mind if I go with you? I know that she didn't really give you that option and I want to be sure that it's okay with you,' she asks.";
	say "     [bold type]Shall you allow her to return with you to the library?[roman type][line break]";
	let Hazel_Rescue_Choices be a list of text;
	add "Yes. She seems nice enough." to Hazel_Rescue_Choices;
	add "No. Leave her to find somewhere else safe." to Hazel_Rescue_Choices;
	let Hazel_Rescue_Choice be what the player chooses from Hazel_Rescue_Choices;
	if Hazel_Rescue_Choice is:
		-- "Yes. She seems nice enough.":
			LineBreak;
			say "     'Thank you so much. Just let me collect my bags and then we can go to wherever it is that you call home.' You follow her as she finds a path between the cars, soon finding a travel case and a handbag that were likely dropped when the orcs caught her. 'Perhaps if I'd dropped them sooner, the orcs wouldn't have caught me, but theyre my only clothes and I didn't want to lose them,' she admits as she crouches down to make sure that nothing has been lost from them. You suppose that that explains why the slavers were outside their usual area. 'All set. I can tell you a bit about myself while we walk,' Hazel says brightly[if BodyName of Player is listed in infections of NoLegList]. You raise an eyebrow. 'Fine. Slither,' she giggles[end if]. You comment that she seems to be surprisingly comfortable with you, especially as she only met you a few minutes ago. 'I like people and I'm good with them. As I said earlier, my dad didn't want me joining the army because my personality was so opposite of what might be required. I know that technically I would be quite the valuable hostage, but the angel seemed to think that you were alright and if you can't trust an angel, then who can you trust?' she replies.";
			say "     'You already know my name, but my dad's a general in the army and my mom is a psychologist for the military. You can imagine the number of forms that they would have had to fill out when they started dating,' Hazel laughs. 'I'll be turning twenty-three in a few months, but I don't know what I want to do with my life. I've tried a few different jobs, but nothing has really spoken to me on a deeper level. Maybe I should go to college and see if that helps? It would certainly look better on my resume.' Curious, you ask what she is doing alone in the city, nearly being kidnapped by orcs you might add, when her father is so high in the military. 'No one is allowed out of the city, except soldiers and approved scientists. If daddy made an exception for me, how could he say no to saving the families of any of the other soldiers. It hurts, but I can see the logic behind it, especially when he'd have to explain it to his superiors.'";
			WaitLineBreak;
			say "     'But to answer the first part of your question, I wasn't alone at first. My father had two soldiers sent in to protect me. Everything was fine at first, but those orcs were seen snooping around and it was decided that it would be best if we moved locations. As we were leaving, the orcs came back and one of the soldiers stayed behind to delay them while the other one and I ran. We were so focused on looking where we were going and behind us, that we didn't look up and the other soldier only managed to push me aside at the last second before he was snatched by one of those dragons that spit weird goop. I'm not much of an athlete, so it didn't take the orcs long to catch up. After that, you know what happened.' Hazel stops for a moment to catch her breath, flashing you an apologetic smile. You are left with another question though. She appears to be entirely human, unless she's hiding something beneath her dress and tights. How has she managed this?";
			say "     'Some weird guy in a trenchcoat and mask came to the apartment and gave me some injections, similar to the ones that my guards seemed to use. He seemed familiar with my father and had the right documents to stop the soldiers shooting him, so I assumed that dad had called in a favor with GSX. Otherwise it could be that I haven't really left my home since people started turning into animals. They seem so obsessed with... sex,' Hazel almost whispers, looking at you almost as if you are about to scold her for saying a dirty word. When you don't start shouting at her, she continues. 'The angel said something about nanites causing this all. What are they?' For the rest of the trip back to the library, you explain what you know about the nanites and what is happening in the city, conveniently finishing as you walk through the front doors. 'Oh my... That's a lot to think about,' Hazel murmurs. With so much weighing on her, you decide that you'll introduce her to her fellow library residents another time, guiding her down into the bunker while she is lost in thought.";
			now Resolution of Valuable Hostage is 1;
			move Hazel Summers to Bunker;
			move player to Bunker;
			now HP of Hazel Summers is 1;
		-- "No. Leave her to find somewhere else safe.":
			LineBreak;
			say "     'Fair enough. Wish me luck then.' Without waiting for a reply, she hurries away, fearfully glancing around. With a shrug, you continue with your day, barely wondering if you'll ever see her again.";
			now Resolution of Valuable Hostage is 2;
	now Valuable Hostage is Resolved;


Table of GameEventIDs (continued)
Object	Name
Hazel's Museum Excursion	"Hazel's Museum Excursion"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Hazel's Museum Excursion"	Hazel's Museum Excursion	"[EventConditions_Hazel's_Museum_Excursion]"	Grey Abbey Library	2500	8	100

to say EventConditions_Hazel's_Museum_Excursion:
	if Angelic Visitor is resolved and Premature Return is resolved and Hazel's Museum Excursion is not resolved:
		now CurrentWalkinEvent_ConditionsMet is true;

Hazel's Museum Excursion is a situation.
ResolveFunction of Hazel's Museum Excursion is "[ResolveEvent Hazel's Museum Excursion]".
Sarea of Hazel's Museum Excursion is "Nowhere".

to say ResolveEvent Hazel's Museum Excursion:
	say "     You enter the library to the sound of multiple women having a disagreement. Not quite able to place the voices and curious as to who it is, you hastily skulk towards the noise, soon rounding the corner to come face to face with the people involved. On one side there is Hazel, her arms folded and her face marred by petulance, with Solariel looming serenely over her shoulder looking towards the women that the red-headed woman is arguing with; Vanessa, Colleen, and Meredith. The soldiers (and researcher) notice you arrive and sigh with relief. 'Talk some sense into her,' Vanessa pleads, throwing her hands up, finally able to stop bottling up her exasperation. You explain that you don't know what is going on and so that may be difficult, or did she just mean in general, in which case you're probably the wrong person to ask anyway.";
	say "     'Ms Summers wants to go to the museum despite the danger that this would put her in,' Colleen explains. 'Her father was very clear with keeping her safe and as she still hasn't let Mere investigate her supposed vaccination. [if HP of Colleen > 0]Even if she doesn't get transformed, the museum isn't safe and she could still be hurt or... used by the transformed[else if ColleenAlpha > 0]Letting her go might end up as a teachable moment, but being dicked down by a mammoth might be a bit much[else] I'm sure some of the things living there would be fun to fuck, but it isn't a place for beginners[end if]. Not to mention General Summers would be pissed.' A collective shudder goes through the soldiers at the likely consequences of failing a task personally given to them by such a high-ranking commander. 'I'd keep her safe,' Solariel interjects. 'No offense, but I'm still not sure that you aren't someone transformed by the nanites and left powerful and delusional. I'd be happier with her under my watch,' Vanessa snaps.";
	WaitLineBreak;
	say "     'In that case, you can come with me,' Hazel says brightly, smirking at the sergeant's mistake in leaving her an opening. 'Ah. That's not exactly what I meant Hazel. It would be-' Vanessa begins to argue, but the other woman cuts her off. 'You can either come with me or you can stay here, but I'm going even if I have to sneak out,' Hazel declares. 'I like to read, but I've been cooped up here for too long. I know that the park really isn't safe and I'm not in the mood for the beach, so I'm going to the museum. If you're coming with me then Solariel can have a rest-' 'I don't need a rest,' the angel mumbles. 'Or whatever else she would rather do,' the fiery-haired woman continues pointedly, 'and we can go and look at whatver exhibits remain. It's going to be fun. We're going to enjoy ourselves. And perhaps we'll all learn something!' Hazel's smile has turned a little manic by now. She definitely needs to go out for a bit or someone is going to be making a trip to the hospital for a straight jacket instead. Determined to avoid further conflict, or at least redirect it towards yourself, you volunteer to accompany them too.";
	say "     Hazel looks triumphant her smile slipping back to something more innocent and warm, whereas the soldiers look far more resigned. 'I suppose that will have to do,' Vanessa grumbles. 'Thanks [name of player]. You'll at least be familiar with the dangers there,' she adds in a less surly tone. 'The museum is an area where I could collect some more useful data at least,' Meredith says, her caution giving way to professional excitement. 'Careful Mere. You're drooling,' Gwen teases, chuckling as the researcher glares at her and makes a half-hearted swipe to shush her. 'I guess I'll catch up with some of my siblings then,' Solariel sighs. 'If you really need me Hazel, I won't be too far away. Have fun.' After a quick hug from her charge, the angel vanishes between the bookshelves. 'I suppose that I'll be on guard duty here then. Someone has to keep home safe,' Colleen declares. 'Let me just get my bag and we can go right away,' Hazel says excitedly, rushing away for but a moment before returning. 'All set. Let's go!'";
	WaitLineBreak;
	say "     Her protective detail in tow, you accompany Hazel through the city to the museum, the wyverns and roving gangs of huskies seemingly having better things to do than attack your little group. It takes you about an hour to get there and the human woman is tempted to stop at the mall as you pass by, but decides that that can wait for another day and you swear you can hear Vanessa gritting her teeth at the prospect of another excursion that might put the girl in danger, especially when there is no guarantee that nothing bad will happen on this one! Hazel remains blissfully oblivious to this though, looking around with curiosity at the neighborhood as you walk. 'I have no idea how they're going to rebuild after this, but I suppose I'm not a civil engineer so maybe it isn't as bad as all that. Poor people though...' she mumbles, half to herself and half to make conversation.";
	say "     'The rebuild may take some time, even before it starts,' Meredith replies. 'First there will be investigations by various groups; government, Zephyr, GSX, people like that. Then there will have to be surveying to assess the damage. Only after that will rebuilding happen.' 'What if they decide that the city can't be saved?' Hazel asks, wide-eyed. 'I doubt that it will come to that,' the researcher reassures her. 'Unless the city is irreparably infested by something we don't know about, the effort will be put in to try and return a sense of normalcy. At worst, no president would want to have to explain why a city was abandoned or destroyed under their watch.' 'People can be treated and buildings can be repaired,' Gwen adds cheerfully. Vanessa nods her agreement, but doesn't take her eyes off potential avenues of attack. Fortunately, your journey remains peaceful and you reach the museum without incident.";
	WaitLineBreak;
	say "     Entering through the grand doors, you are greeted by Valerie, the sphinx looking at your group with caution. 'Welcome. May I help you?' she asks politely, caught between the army uniforms and the fact that the soldiers are centaurs ";
	if "Succubus" is listed in Traits of Gwen:
		say "and a succubus. ";
	else:
		say ". ";
	say "'What would you do if I said we were with the British Museum, here to take your artifacts for safe keeping?' Hazel chuckles, stepping out from behind the larger women. 'I'd consider you tomb robbers and punish you accordingly,' the sphinx snarls menacingly, though it seems more like an act than genuine hostility. 'But those look like US insignias on the fatigues, so I doubt you're with [italic type]them[roman type]. Even if you're with an American museum, you're still not taking my exhibits unless you wish to be mauled. They are mine to protect.' 'Fair enough. Five adults please,' Hazel responds, pulling out a few crumpled notes. 'A paying visitor? Today is a strange day...' Valerie muses. 'But I don't think that I can accept any money. The museum isn't as orderly as it should be and some of the exhibits... decided to wander off. No charge, just don't break anything. Or steal anything. Actually, on second thought, answer me a riddle each as payment instead.'";
	say "     Before anyone can agree or refuse, she looks at Vanessa and begins. 'Poor people have it. Rich people need it. If you eat it you die. What is it?' the sergeant thinks for a few moments, muttering under her breath before eventually replying, 'Nothing.' 'Good. Now you. Spelled forward, I'm what you do every day; spelled backward, I'm something you hate. What am I?' the sphinx asks Hazel. 'Um... give me a moment. Oh! Live!' the woman exclaims. Valerie nods and focuses on Meredith. 'Until I am measured, I am not known. Yet how you miss me when I have flown. What am I?' 'Time,' she immediately answers. 'My brother loves riddles too,' she explains with a blush when you all stare at her. 'A man of good taste,' the museum worker replies approvingly before turning her eyes on Gwen. 'I have branches, but no fruit, trunk or leaves. What am I?' 'The military?' the young soldier tentatively answers. Valerie tilts her head. 'Not the answer that I was looking for, but technically correct I suppose. I was thinking banks,' she replies before her attention falls on you.";
	WaitLineBreak;
	say "     [bold type]'What goes on four feet in the morning, two feet in midday, and three feet in the evening?'[roman type][line break]";
	let Sphinx_Riddle_Choices be a list of text;
	add "A human." to Sphinx_Riddle_Choices;
	add "A shapeshifter." to Sphinx_Riddle_Choices;
	add "One of the modern art exhibits?" to Sphinx_Riddle_Choices;
	add "One of those Backpackemon?" to Sphinx_Riddle_Choices;
	let Sphinx_Riddle_Choice be what the player chooses from Sphinx_Riddle_Choices;
	if Sphinx_Riddle_Choice is:
		-- "A human.":
			LineBreak;
			say "     A classic riddle, you think to yourself as you answer confidently. 'Very good. You may all enter, but no touching unless the information plaques say that you can,' Valerie informs you, waving you through. ";
		-- "A shapeshifter.":
			LineBreak;
			say "     Valerie looks thoroughly unimpressed by your answer. 'That is technically correct, but thoroughly dull. I've half a mind to make you answer another one, but the others did splendidly so I'll let it pass this time. Enjoy your visit to the museum and no touching unless explicitly given permission to do so,' she grumbles. ";
		-- "One of the modern art exhibits?":
			LineBreak;
			say "     'You wouldn't believe just how annoying it is!' Valerie exclaims upon hearing your answer. 'They aren't meant to be walking around at all and here they are swapping how many legs they have, likely against the artists deeper symbolism! Grrr, go on through so I can rage in private. Keep your hands to yourself though, unless given permission to touch.' ";
		-- "One of those Backpackemon?":
			LineBreak;
			say "     'Probably true. How many are they up to now?' Valerie replies. 'Not quite what I was expecting, but clever nonetheless. Enjoy your visit to the museum and no touching the exhibits unless they are designed to be interactive,' she explains, graciously waving you through. ";
	say "Your little group continues past the lobby, following Hazel while she studies a map and decides where she wishes to go. 'If we go like this, we can do the sections in chronological order,' she suggests, tracing her finger over the diagram. 'Start with the dinosaurs and finish with the Zephyr-sponsored exhibit on nano-robotics.' 'We won't get long to look at anything like that,' Meredith cautions her, but other than that, no-one opposes her plan. 'We can come back another time and spend more time where we want to,' Hazel cheerfully replies, her excitement enough to bring a smile to Vanessa's face even as she rolls her eyes. 'We'd better get started then or we'll only be in the Iron Age by the time we need to head back,' she teases, her spirits much improved compared to earlier.";
	say "     So that is what you do, learning about stegasauruses, neanderthals, and the discovery of smelting, Hazel's curiosity and enthusiasm remaining unabated as she almost skips from exhibit to exhibit. 'I don't think that I was ever that full of life,' Vanessa sighs. 'Nah, you were born boring and sensible sarge,' Gwen shoots back, earning a clip around the side of the head. 'None of your lip, private,' the superior officer scolds her with a smirk. Distracted, it takes you all a moment to notice some broken glass up ahead and what looks to be a statuette lying on the floor as you enter an area dedicated to Greek mythology, Meredith managing to swing an arm out to stop the group just in time. 'Careful. You'll probably end up with an infection if you get cut. A nanite infection I mean. Not the usual type,' she corrects herself as you edge around the mess. 'Centaur toy. Theban Village 4th century BC' Gwen reads with a smile.";
	WaitLineBreak;
	say "     'Perhaps we should take it as a mascot,' she jokingly suggests, 'considering how most of the squad has turned out.' 'I don't think that the sphinx lady would appreciate that,' Vanessa rebukes her, though her tail flick and body language suggests she likes the idea and might have accepted in another situation. 'Well we can't leave it like this,' Hazel cuts in and before anyone can stop her, she stoops down to pick the figurine up. The moment her fingers make contact, the sweet aroma of wine floods the room and the woman gasps and stumbles backwards, snatching her hand away as though burned. Hazel's legs seem to give way and she collapses to the floor, barely missing the shards of glass. To your horror, and even more so the soldiers['], there is a loud ripping sound and the young woman begins to transform from the waist down."; [Figurine cursed by Nessus]
	say "     Above her waist, Hazel's dress avoids harm from the transformation, but the hem tears along the seams. The main casualty seems to be her underwear, as the shreds of what were once pretty white panties with a black silk bow on the front fall to the ground as an equine body slowly grows from beneath the lower flaps of her dress. 'What do I do? What do I do!?' she cries, looking around pleadingly for someone to help as her body warps and elongates. But there is nothing that anyone can do, watching powerless as the innocent young woman is transformed against her will into a centaur. At least you assume this to be the case with how her top half seems unaffected and a thin layer of shiny auburn fuzz covers the developing equine half. 'Were you carrying any immunity boosters?' Vanessa shouts to Meredith, pacing back and forth, frantically trying to formulate a plan to save Hazel. 'No. I wasn't expecting to need to. Her custom-job seemed to be better than anything we had!' the researcher replies, seemingly close to tears. 'Me neither,' Gwen chips in, rifling through her bag.";
	WaitLineBreak;
	say "     Hazel's transformation soon slows down until it eventually stops, leaving her gasping on her side, fully transformed into an auburn-furred centaur. 'Damn it!' Vanessa can't help shouting into the air, her voice carrying down the empty corridors around you. Nearly immediately afterwards you hear the thud of people approaching from two different directions, you and the soldiers exchanging a glance before assuming defensive positions around the still-recovering woman. Fortunately, the first to appear is Valerie, though your sigh of relief is short-lived as you remember that you got into this problem when Hazel touched one of the artifacts. 'What is the shouting about? Please have some res- Oh gods damn you Nessus!?' the sphinx begins before cursing as she sees the shattered display case and the casualty of the statuette. 'Who's Nessus?' Gwen blurts out.";
	say "     'Nessus is a centaur who has never forgiven humanity for Herakles killing him,' another voice answers and you turn to find a gleaming white-haired centaur clopping towards you from the other end of the room. Unlike the centaurs from the Dry Plains, this one is wearing a tunic-like garment over his human half with satchel over his shoulder. A single look into his eyes immediately causes a sense of calm and safety to wash over you. 'My name is Chiron and hopefully I should be able to help, Miss?' he leaves the question open, waiting to hear her name. 'H-Hazel. Hazel Summers,' the woman haltingly responds. 'Metamorphosis can be exhausting. Please, just lie there for now and I'll see what I can do to help,' the centaur advises her, trotting forward without challenge and unslings his bag, rummaging through it. 'Nessus has been a pain,' Valerie grumbles. 'This isn't the first time he's done this. If he went after troublesome people I wouldn't mind, but this sort of bait only punishes those with good intentions,' the sphinx continues, gesturing to the figurine that Chiron now has held in his hand.";
	WaitLineBreak;
	say "     'Sorry for the trouble. You did warn us not to touch the exhibits,' Vanessa apologizes. 'She thought that she was being helpful.' 'Not entirely your fault. As I said, Nessus and his malice...' Valerie replies bitterly. 'Is she going to be alright?' Gwen asks Chiron. 'If you're asking will she be able to walk out of here, then yes. That isn't a problem. Miss Summers has not been cursed beyond the transformation,' the centaur answers, flashing a comforting smile. 'What I'm trying to do now is alter the spell so that the toy will transform her back again. I've cured far more serious maladies, but magic isn't my strong suit, so I require a little help from Hekate to guide me in fixing this.' Unsure what to do while you wait, you join Meredith in brushing the broken glass into a neat pile away from Hazel, earning an appreciative nod from Valerie for your efforts.";
	say "     After a few more minutes, you see the centaur statuette glow briefly and Chiron stands up, helping Hazel to her feet as he does so. She is initially unstable on her new hooves, but quickly becomes accustomed to her new form, taking a moment to admire it. 'Circumstances aside, it's actually rather majestic,' she comments. 'I like to think so,' the male centaur chuckles, flicking his white tail in amusement. 'I notice a few more centaurs among you. I assume that you didn't all touch cursed objects?' 'No. We were transformed by the nanites,' Meredith replies. A dark look crosses Chiron's face. 'That man turned his eyes to flawed artifice for healing rather than looking within nature saddens me. Alas, I am not permitted to interfere in that,' he laments. He nickers softly before turning back to Hazel and pressing the toy into her hands. 'Take this. Should you want to return to your original form, you need only touch it and wish. Or if you want to return to being a centaur again later, you can do that too. the choice is yours.'";
	WaitLineBreak;
	say "     'Thank you, sir,' Hazel replies, startling everyone by leaning up and kissing Chiron on the cheek. 'My pleasure, young maiden,' the male centaur responds serenely. 'I wish you all well, but I should try to find Nessus. We aren't meant to interfere in mortal affairs like this and the harm he causes draws the eye of dangerous adversaries.' Chiron bows before trotting down the hall, soon rounding a corner and vanishing. 'Come with me and I'll escort you back to the entrance. We don't want any more incidents,' Valerie offers, a proposal that you all readily take her up on. When you arrive at the front desk, you find a rather large package sitting there and you see the sphinx's eyes narrow before she stalks towards it. 'It's apparently for you,' she says to Hazel with surprise. The newly-transformed centaur approaches it, and gives it a poke, getting nothing but a rustle from it. 'Well, it's not a bomb,' she jokes.";
	say "     'We can have a look when we get home. Thank you Valerie, I enjoyed looking around and hopefully I'll be back another time,' she says sincerely. 'I'm glad, though perhaps next time be more careful with what you touch,' the sphinx replies graciously[if HP of Solstice > 2]. Perhaps you should have Solstice talk to Hazel about being cautious around cursed artifacts too..[end if]. The package turns out to be reasonably heavy, so Gwen carries it for the general's daughter. The trip back to the library is fortunately uneventful, the centaur soldiers sharing some of their experiences of when they first transformed with Hazel, carefully avoiding anything sexual. Upon entering the library, you immediately find a table to unwrap her mysterious gift. 'I thought that these might help make up for the trouble Nessus has caused you. Though I'm not sure how much help these will be to you, they should fit themselves to the wearer. Give the sword to one of your protectors if you wish. Chiron,' the fiery-haired woman reads from a note before carefully opening the package.";
	WaitLineBreak;
	say "     Laid out before you are an exquisite soft leather saddle, a riding harness, and a ornate kopis. 'Well, I don't think that I can use them,' Hazel laughs. 'Do you want them?' she asks you. You inspect them more closely, quickly sensing the magic eminating from them, and soon come to a conclusion. You tell her that you should be able to make good use of these. 'Far better than anything I could do with them. Try not to lose them though. They seem too pretty to just end up discarded in the city.' Everyone seems worn out after today's excursion, so you stow your new treasures and leave them to recover, giving Hazel a companionable pat on the shoulder as you pass by her staring at her hindquarters. 'I may have some difficulty walking backwards...' you hear her mutter to herself.";
	ItemGain Centaur-blessed Harness by 1;
	ItemGain Centaur-blessed Saddle by 1;
	ItemGain Centaur Kopis by 1;
	now HP of Hazel Summers is 2;
	now Hunger of Hazel Summers is 1;
	now Hazel's Museum Excursion is resolved;

Section 4 - Items

Table of Game Objects (continued)
name	desc	weight	object
"Centaur-blessed Harness"	"A harness blessed by Chiron. You can feel protective magics eminating from the tough leather."	5	Centaur-blessed Harness

Centaur-blessed Harness is a grab object.
Centaur-blessed Harness is equipment.
It is not temporary.
Plural of Centaur-blessed Harness is false.
Taur-compatible of Centaur-blessed Harness is true.
The size of Centaur-blessed Harness is 4.
The AC of Centaur-blessed Harness is 50.
The effectiveness of Centaur-blessed Harness is 60.
The placement of Centaur-blessed Harness is "body".
The descmod of Centaur-blessed Harness is "You have an enchanted leather harness around your body.".
The slot of Centaur-blessed Harness is "body".
The scent of Centaur-blessed Harness is "The harness smells of the endless plains, freedom, and irresponsibility.".

Table of Game Objects (continued)
name	desc	weight	object
"Centaur-blessed Saddle"	"A saddle blessed by Chiron. You can feel protective magics eminating from the soft leather."	5	Centaur-blessed Saddle

Centaur-blessed Saddle is a grab object.
Centaur-blessed Saddle is equipment.
It is not temporary.
Plural of Centaur-blessed Saddle is false.
Taur-compatible of Centaur-blessed Saddle is true.
The size of Centaur-blessed Saddle is 4.
The AC of Centaur-blessed Saddle is 50.
The effectiveness of Centaur-blessed Saddle is 60.
The placement of Centaur-blessed Saddle is "body".
The descmod of Centaur-blessed Saddle is "You have an enchanted leather saddle on your back.".
The slot of Centaur-blessed Saddle is "back".
The scent of Centaur-blessed Saddle is "The saddle smells of the endless plains, freedom, and irresponsibility.".


Table of Game Objects (continued)
name	desc	weight	object
"Centaur Kopis"	"An ornate but still very functional Greek cavalry sword."	4	Centaur Kopis

Centaur Kopis is an armament. It is not temporary.
It has a weapon "[one of]your cavalry sword[or]your Centaur Kopis[or]the large blade[or]your ornate weapon[or]your antiquated balde[at random]".
Weapon Damage of Centaur Kopis is 14.
Weapon Type of Centaur Kopis is "Melee".
Objsize of Centaur Kopis is 4.
Hitbonus of Centaur Kopis is 1. [Blessed]
Scent of the Centaur Kopis is "The kopis smells of the endless plains, freedom, and irresponsibility.".

Hazel Summers ends here.
