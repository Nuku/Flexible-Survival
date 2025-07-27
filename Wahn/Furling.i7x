Version 1 of Furling by Wahn begins here.
[Version 1.2 - Typo Fixes]

"Adds a Furling to Flexible Survival's Wandering Monsters table"

Table of GameEventIDs (continued)
Object	Name
Cheerleader vs Furling	"Cheerleader vs Furling"

Cheerleader vs Furling is a situation.
ResolveFunction of Cheerleader vs Furling is "[ResolveEvent Cheerleader vs Furling]". The level of Cheerleader vs Furling is 5.
Sarea of Cheerleader vs Furling is "Campus".
when play begins:
	add Cheerleader vs Furling to BadSpots of TransList; [shemale vs cuntboy]
	add Cheerleader vs Furling to BadSpots of FurryList; [Furling]

to say ResolveEvent Cheerleader vs Furling:
	say "     As you're exploring the college campus, you suddenly hear crashing noises from inside the building right next to you - one of the male dormitories. Hurriedly throwing yourself behind a nearby hedge, you peek out between its branches. Hm, now it's still agai- your thought is interrupted by the noisy crunch of splintering wood. A large green figure is thrown through the entrance door and lands out on the sidewalk, right in front of your hedge.";
	LineBreak;
	project Figure of Furling_clothed_icon;
	say "     The thrown person turns out to be a pretty tall female, having bulging muscles and generous breasts which are barely contained in a tight cheerleader's outfit. With a roar, an orange-red furred humanoid comes after her from inside the building. He pounces, pinning down her body with his and grabbing her by the throat. The sound of ripping fabric follows as he pulls off her skirt, revealing a massive green cock between the cheerleader's legs. Pulling up his own loincloth, the furred guy turns out to have a pussy, which he sinks eagerly down on the cheerleader's erection. What follows is a wild romp between this green shemale and the red-furred cuntboy, accompanied by noisy grunting and moaning, culminating in the furry guy throwing back his proudly maned head in a satisfied roar as he orgasms. He then pulls himself off the cheerleader's thick cock and walks off, leaving behind a little trail of cum dripping from his cunt.";
	say "     The green cheerleader stays lying there on the ground for a moment to catch her breath, then starts laughing and hauls herself up to stand on her feet. 'What horny furballs our brave football team has turned into,' she says to herself, 'and still with no restraint on their sex drive. I'd have fucked him anyways, but no - he has to be on top, the beast.' Looking down on the shredded and cum-soaked remains of her skirt, the cheerleader sighs and walks down the sidewalk. You hear her think out loud, 'Oh well, one point for the furball. Hm, or maybe more - I'll have to check back later to see if he's preggers, and there could be some bonus points in it since he was Buffy's annoying ex-boyfriend Zack...'";
	now Cheerleader vs Furling is resolved;

Section 1 - Creature Responses

to say Furling wins:
	if Player is male: [male]
		project Figure of Furling_naked_icon;
		say "     Pulling off your clothes with barely any regard for not ripping them, the furling exposes your crotch. Looking at your [Cock of Player] manhood, he gives a satisfied growl, then sweeps you off your feet and lowers you to the ground. Holding you down with a large hand on your chest, he then brings his head to your crotch and starts licking your balls and cock. Despite a moment of apprehension as you see how many sharp teeth he has, your shaft quickly hardens under the furling's oral stimulation and careful sucking.";
		say "     Then suddenly, the maned head pulls up to look down into your face. 'Fuck - now!' an order is given, and the furling gets up to stand over you, pulling aside his loincloth to reveal a moist and dripping pussy between his legs. Then the large beast lowers himself onto your rigidly standing erection, his pussy enveloping your manhood in a warm and tight cave. What follows is a pretty wild and unrestrained coupling, mostly on the part of your former opponent, who aggressively fucks himself on your pole. Though that doesn't mean you don't get off on this too and thrust up against your dominating partner's pussy.";
		WaitLineBreak;
		say "     The thrusting and grinding gets harder and faster until you just can't hold out any more. Grunting in satisfaction, you thrust up one last time, then start blowing your load, with spurt after spurt of fertile seed shooting into your larger partner's womb. Then suddenly you hear a crunching sound left and right of your head. Looking over, you realize it's the furling's claws digging into the concrete floor as he holds on too tight when he joins you in his own mind-blowing orgasm. He stays like that for a moment to catch his breath, your hard shaft still inside his pussy. Then the muscled cuntboy pulls off and stands up. Giving you a last look [if scalevalue of Player < 4]from high above[end if], he says, 'Felt good. Nice guy.' Then he stalks off, leaving you lying there.";
		CreatureSexAftermath "Furling" receives "PussyFuck" from "Player";
	else: [female + neuter]
		say "     Pulling off your clothes with barely any regard for not ripping them, the furling exposes your crotch. Looking at your [if Player is not female]nonexistent [end if]genitals, he growls, 'Useless!' Then he gives you a shove, landing you prone on the ground. With an annoyed grunt, the large creature stalks off.";

To say Furling loses:
	project Figure of Furling_naked_icon;
	if Fightoutcome is 10: [normal combat win]
		say "[FurlingSexMenu]";
	else if Fightoutcome is 11: [seduction win]
		say "     Completely over-aroused, the furling begins to start leaking femcum uncontrollably from under his loincloth, dripping to the floor as he vainly attempts to rub one out on the pavement. You hear the transformed student loudly whimpering in frustration as this attempt of getting satisfaction makes all his muscles flex in agony, panting wildly as his bright eyes solely focus on what's between his legs. It's clear your seduction has outgrown the muscular cuntmans's will to overpower you, leaving you free to go on your way. But you clearly see that this is a beast of base instinct, is it fair to leave them like this?";
		let Furling_Initial_Choices be a list of text;
		if Player is male:
			add "Fuck the cum out of him." to Furling_Initial_Choices;
			add "Lay down and let him mount your cock." to Furling_Initial_Choices;
		[
		if Player is female:
			add "Scissor them right here." to Furling_Initial_Choices;
		]
		add "Leave, not your problem, it sucks to suck." to Furling_Initial_Choices;
		let Furling_Initial_Choice be what the player chooses from Furling_Initial_Choices;
		if Furling_Initial_Choice is:
			-- "Fuck the cum out of him.":
				LineBreak;
				if BodyName of Player is listed in infections of Taurlist:
					say "     You demand that the shaggy deviant worship your cock if he expects you to pleasure his cunt. The almost feral cunt-man drools at the sight of your [Cock of Player] cock, crawling forwards on all fours to kiss sloppily at the shaft. This soon escalates to him putting it in his mouth, but sadly not being too careful about doing that, so you feel the jarring touch of teeth against your sensitive pole. Rearing back and taking a few steps, you make the furling crawl over to you once more, shaming him for such hastiness. Luckily he's a quick learner, licking your sweaty balls and worshiping that hard cock without further complaints. When you tell him you're ready to fuck, the former student quickly gets on al fours, shoving his wet and dripping pussy against your hard member and panting loudly as your shaft spears his welcoming depths. As you fuck what likely was a former college football star, he lets out loud grunts of joy, not even attempting to hide his pleasure from whoever or whatever is around to see and hear the two of you.";
					say "     Eventually, you grow tired of the cuntman just bouncing himself on your shaft at his pace. Instead, you give a harsh thrust, smooshing him between the ground and your tauric body, followed by a full on rutting as your testicles slap the muscle slut's rear. Knowing you're close to cumming, you think he's trying to say something, but the babble is quickly silenced as your relentless cock delivers a deluge of cum into his needy womb, stuffing the furling's insides. That should teach him from trying to stop your deep thrusts for whatever he was saying. After the last throb of seed blasts into your cock-sheath, you unceremoniously pull out, your dick dangling underneath your body accompanied by the wet splash of a gush of cum onto the ground. You spend no time comforting the freshly bred beast and just walk away. He can clean up his own mess and you have other things to do with your time. [if a random chance of 1 in 2 succeeds]Before you're out of earshot, you're fairly certain that you hear the furling start moaning and grunting again - seems like someone else moved in and is taking their chance at enjoying your sloppy seconds. But that's not your problem...[end if][line break]";
				else:
					LineBreak;
					say "     Seeing the large furred man-beast at your mercy, you push his wrists into the ground, laying on top of him while he sobs from touch alone. 'Fuck... Please!' he whines needily, but you let him squirm for a little while longer. This muscle slut needs a little training to not tackle random people on the streets anyway. While still holding the furling down with one hand, you pull out your [Cock of Player] cock and prod its length at the completely soaked nether lips of your defeated opponent. His panting suddenly stops and his eyes focus on your face as he bites his lower lip in heightened arousal. He's already submitting so easily, just as you knew he would when you mercilessly teased the big brute. As you carefully buck your fuckstick to hotdog the furling's pussy, you hear the scrape of claws against the floor as he braces for you to take him hard, only to whine needily as you keep bucking against his crotch instead of slamming right in.";
					say "     You tell the transformed college student that if he wants your dick, he's going to need to stop attacking people randomly. As the furry brute's eyebrows draw together in response, you lean in and sweetly tell him that he's already quite a catch already and there are plenty of guys and gals out and about who'd just love to give him some love if he just... made himself available and beckoned them instead of trying to force things. It's doubtful if he really is in a position to understand and accept your words, given the heated haze you put him in, but there's at least a nod and a consoling grunt in response. That's enough for now - with a kiss below his half-open, panting lips, you finally enter into his heated depths. The randy furling lets out a breathless bellow in a mix of relief and lust as you give him what he needs and start hammering away at the wet, welcoming pussy.";
					WaitLineBreak;
					say "     The muscular beast writhes underneath you, his sculpted muscular chest rising and falling as he pants and bucks his crotch to meet your own. Every thrust into those squelching depths makes more his musky cunt-juices squirt out, splashing both of you and dripping to the ground. As you continue your primal tryst, you can't help but think that this former football player clearly doesn't miss his cock. ";
					if CockName of Player is "Orc Warrior" or CockName of Player is "Orc Breeder":
						say "The fur-bro gets ever more compliant and needy as you go along, pulling up his legs and wrapping them aroudn your hips you can hit inside them deeper. The effects of your orcish pre-cum soaking his sweet pussy no doubt, leading down a road of eager submission to even the hardest thrusts. Soon, you're practically clapping your balls to his cheeks while the furling lets out very short but quick pants in utter ecstasy. ";
					say "That sweet, moist pussy quivers under each thrust as you fuck its owner mercilessly, driving him to more than one orgasm while he cries in utter bliss. Despite any momentary thoughts of pacing yourself to keep going even longer, it's hard to hold back given your fuck-pet's need to be bred. Not that he can express himself in anything more than animalistic grunts right now, but the way his insides squeeze around you is more than clear, almost seeming to milk your dick in eager anticipation of your seed.";
					say "     More than happy to oblige, you pick up the pace as the furling's eyes lock in with your own, the big brute looking breathlessly at the mate who's giving him the best pounding his pussy ever felt! Jamming your whole length as deep as it can go, you bellow out in satisfaction as your hot cum jets deep into the transformed man's fertile depths. Happily whining in joy as the sensations of being filled with cum make another orgasm break over the furling, he grabs you with both of its big muscular-hairy arms and licks your cheek in joy. 'Good Fuck, Best Father!' He keeps you in an exceptionally slutty bear-hug, grinding his crotch against your own as further blasts of seed spurt into his insides, then slumps back onto the ground as your orgasm eventually ebbs off. Withdrawing from the squelching depths, your cock white and dripping with a frothy mix of cum and femcum, you move up to straddle the furling's chest and slap your still half-hard cock against his face. Following a demanding command to clean up the mess he made, the transformed student obediently licks your crotch to joyfully please his breeder, all the while your cum leaks from his well-fucked pussy and creates a small puddle.";
					WaitLineBreak;
					say "     Once you're satisfied with his services as a cock-cleaner, you get back to your feet and stand back, taking in the complete wreck you've made of this muscle slut. Tall, clawed and hulked out with muscles he may be, but you've turned the football player into little more than a needy cock-sheath and cum receptable. Still panting deeply to try to cool down, the thick fur not helping with that, the Furling tries to stand up, but falls back to land on his toned buttocks, his motor functions only slowly coming back. Maybe he will use this little timeout to think about his situation, or even listen to your earlier commands. Though even if he does, you might just have added fire to an oil spill by possibly knocking him up. If you did, his toned abs will soon swell whorishly with your spawn, and that'll put additional furlings onto the streets - all with the same sex drive as their 'mother'. In the end, furling claws are just not made for fingering, they're much more suited to pin a mate down and ride them until their womb is sprayed white with alabaster cum. [if Player is kinky]As you walk away and leave the muscle-slut behind, you can't help but contemplate just what would happen if you ran into a furling you fathered yourself...[end if][line break]";
				CreatureSexAftermath "Furling" receives "PussyFuck" from "Player";
			-- "Lay down and let him mount your cock.":
				LineBreak;
				say "     For once, you can't help but feel sympathy for these musclebrains, unable to think beyond their base desires due to the nanite influence. It must feel like hell when your pussy begs you to get a deep-dicking almost every hour. Offering yourself, you hope the nanites in your body realize you won the battle. Laying on the ground, you point your [Cock of Player] cock to the shagged contender, beckoning him closer with a finger. It's surprising just how fast someone with that much muscle mass can move - the furling makes a dive towards you, almost bowling you over in his barely controlled feral lust. With his hands braced on the ground on both sides of your head, face leaned in close enough to feel his hot breath, he makes a needy sound, pumping his crotch down against yours to rub up against you before pulling it back up. Seems he's got just enough restraint to realize that you're about to give him pleasure, not him taking it for himself. Eyes meeting each other as you're so close together, you communicate without even needing any words and your former opponent realizes that you're into giving him what he needs.";
				say "     With a bite of your lip and a nod, you grab the base of your hard shaft and hold it up straight - an offer that is enthusiastically accepted as the over-muscled football player impales his swollen pussy lips on your shaft with a breathy whimper. Starting to bounce up and down on your erection, his hot walls clench around your firm member in amazing, pleasurable ways that leave both of you moaning and panting in lust. To add more to the sensual fuck, he grips onto your shoulders, pivoting himself to rub his furred body all over you. Mashing tongues together, he rides you through a first orgasm that's not far off given how pent up you already had him, only to keep going as he desires more. In letting him use you for his pleasure, you've put yourself in an amazing, but also slightly frustrating position. Forgetting everything in the world while the cuntboy's sweet honeypot keeps convulsing around your meat, the former student instinctively seems to know that in order to keep going for a long time, he has to keep you from cumming, even while he rides out multiple orgasms in a row.";
				WaitLineBreak;
				say "     Eventually, as he gives another circle of his hips that heralds another climax, the over-sexed cuntboy growls, 'Breed me, want strong young in womb!' Gone is his restraint from earlier, the tempo speeding up relentlessly as his inner walls squeeze your cock eagerly for your seed. His body heat rests hotly against your body while the furling happily licks at your cheek in joy. As his grunts go in tune with the wet slaps of your crotches meeting, you're finally driven over the edge right along with him, erupting deep in the welcoming pussy's innermost depths. Your partner, well versed in the feeling of being came into, holds their head up high in stunned orgasmic bliss. Your balls pulsate until every last drop of cum is painting the inside of the furry beast's jock-pussy, your face starts to get covered in drool, the man licking at your lips in gentle fervor. Your completely unable to stop him as their tongue goes down your throat- sucking your face with loud slurps.";
				say "     ...the aftercare was supposed to be for a few minutes, but somehow, your cock is already standing up tall inside of the cum-covered walls. He looks at you with almost a joyful expression. 'Keep Going?' ";
				if Player is submissive:
					say "With an eager nod to please, the beastman pulls you out and drags you off to somewhere else on campus. Carefully he holds onto your physique as he walks through a completely cum covered dorm- the air heavy with the musk of a day-old orgy. Placing you on a somewhat clean couch, you both proceed to make out again as the red-furred cuntman eagerly keeps accepting your seed into his fertile pussy. Due to either the nanites or straight willpower, your exhausted body is able to hold for a while against their joyful ecstasy for a while, the Furling eagerly making you the top on a mating press to keep the cum inside of them. After almost what felt like hours, your body lays tiredly on top of them, he gives out a strangled sigh of relief- pussy completely covered in your seed from the inside out. With a laugh he lets you pull out, letting all the packed in cum drool rivers onto the sticky carpets. You're definitely sure you're gonna be just barely lucky to not have been infected by any of this, but you have a job to do. You leave your furred partner to enjoy the bliss of a well fucked pussy as you head back to where you first encountered them.";
				else:
					say "Unfortunately, the post nut clarity is reminding you that you can't enjoy jock pussy for the entire day. With a solemn nod, his face lowers in sadness as he gets off of you and walks off- cum dripping lewdly from his lips. You think that maybe he will find someone to help him with his insane lust, but sadly, that person will not be you.";
			-- "Leave, not your problem, it sucks to suck.":
				LineBreak;
				say "     This Nanite apocalypse will not guilt trip you to fucking a beast in heat, they wanted to rape you, its not your problem they got a taste of their own medicine. You hear their howls and whines even in the far distance as they keep failing to pleasure themselves.";

to say FurlingSexMenu:
	project Figure of Furling_naked_icon;
	setmonster "Furling";
	say "     During your fight, you've caught some glimpses of his crotch when that improvised loincloth swung a little - showing you that even though 'he' is otherwise looking male, there's a moist and swollen pussy between his legs. With how the fight has been going, it's clear that the furry beast will soon reach his limits. [bold type]What exactly do you want to do to him once that happens?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 1;
		now description entry is "Slide your [Cock of Player] shaft into his moist pussy";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 2;
		now description entry is "Take the furling's back door for a ride with your [Cock of Player] shaft";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger his pussy";
	now sortorder entry is 3;
	now description entry is "Work your fingers into his pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fist his pussy";
	now sortorder entry is 4;
	now description entry is "Slide your whole hand inside him";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pecs";
		now sortorder entry is 5;
		now description entry is "Grind your cock between his pecs";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his face";
		now sortorder entry is 6;
		now description entry is "Facefuck the furling";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him cunnilingus";
	now sortorder entry is 7;
	now description entry is "Lick his pussy";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Receive cunnilingus from him";
		now sortorder entry is 8;
		now description entry is "Grind your pussy against his face";
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
				if (nam is "Fuck his pussy"):
					say "[Furling_PussyFuck]";
				else if (nam is "Fuck his ass"):
					say "[Furling_AssFuck]";
				else if (nam is "Finger his pussy"):
					say "[Furling_Fingering]";
				else if (nam is "Fist his pussy"):
					say "[Furling_PussyFist]";
				else if (nam is "Fuck his pecs"):
					say "[Furling_PecFuck]";
				else if (nam is "Fuck his face"):
					say "[Furling_Facefuck]";
				else if (nam is "Give him cunnilingus"):
					say "[Furling_CunniGive]";
				else if (nam is "Receive cunnilingus from him"):
					say "[Furling_CunniReceive]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding you should focus on more important stuff right now, you land your last blow and see him fall back on his ass, then turn away and walk off, leaving the bruised furling behind alone.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Furling_PussyFuck: [vaginal]
	say "     Defeated, the large creature crashes down onto his thick, muscled ass, the ground shaking slightly from the impact of his massive form. His powerfully built chest heaves with ragged, desperate breaths, streams of sweat darkening the thick orange-red fur that covers his body. Bright orange eyes, moments before burning with aggressive challenge, are now fixed on you with total submission. The raw acceptance of the victor's privilege is clear in their depths as he remains on the ground, his brutish strength temporarily spent. Dropping your gear[if Player is not naked] and taking off your clothes[end if], you grab hold of your already growing erection and stroke it until it's fully hard. Then you kneel between your furry opponent's legs and pull up his loincloth to expose his ready and dripping pussy. As you bring your hand to it, stroking and spreading the sensitive pussy lips, the large creature raises its head to look at you and gives a needful croon.";
	if scalevalue of Player > 3:
		say "     Without any more hesitation, you bring your hard cock to the furling's opening, then thrust inside him, filling his warm cave with your manhood. Being inside him is better than you could have dreamed, with his juicy cunt tightly gripping your shaft, and satisfied moans inviting you to fuck him harder and deeper. Burying your hands in the furling's soft fur, you grip his muscled body tightly and really start going at it, pulling back and slamming forward until your hips meet. All bruises forgotten, your large partner wraps his arms and legs around you, holding and stroking your body as you fuck his pussy.";
	else:
		say "     Without any more hesitation, you bring your hard cock to the furling's opening, then thrust inside him, filling his warm cave with your manhood. Being inside him is better than you could have dreamed, with his juicy cunt tightly gripping your shaft, and satisfied moans inviting you to fuck him harder and deeper. Burying your hands in the furling's soft fur, you grip his muscled body tightly and really start going at it, pulling back and slamming forward until your hips meet. The furling looks at you and reaches out with a strong arm to caress you while murmuring 'So small - but soo good.' All bruises forgotten, your large partner then wraps his legs around you, pulling you even tighter in with each of your thrusts.";
	WaitLineBreak;
	say "     Rutting on the ground like mating beasts, the two of you make quite a bit of noise and it's a wonder that doesn't attract any opportunistic creatures - especially as the furling orgasms, giving a loud lust-filled roar as his pussy starts to drip with femcum. You're not far behind, thrusting deep inside him one last time as your hard shaft starts pulsing with spurt after spurt of your fertile seed. Breathing hard, you lean forward to rest on your furling's muscled chest, hands stroking his soft fur. Accompanied by a satisfied hum, your sexual partner strokes your back and says, 'Nice man. Make me feel good.' Followed by more humming and stroking.";
	say "     After lying there with you against his chest for a while longer, the furling takes hold of you and rolls over so you're on the bottom now, then stands up and walks away.";
	CreatureSexAftermath "Furling" receives "PussyFuck" from "Player";

to say Furling_AssFuck: [anal]
	say "     With a final, desperate lunge, the furling overextends, and you exploit the opening perfectly. A swift, brutal strike to his side sends the massive form stumbling. The magnificent beast lets out a sharp grunt of pain and surprise, his towering frame wavering for a moment before crashing backward with a ground-shaking thud. Defeated, the muscled brute lies there, his powerful chest heaving with ragged, exhausted breaths. The thick, musky scent of his exertion, a potent mix of sweat and primal pheromones, hangs heavy in the air. His bright orange eyes, slitted like a predator's, find yours. All the fight has drained from them, replaced by a raw, instinctual submission. A primal understanding is clear: the transformed student lost and is now yours to command, a massive, heat-radiating prize for you, the victor.";
	say "     Taking off your clothes, you grab hold of your already growing erection and stroke it until it's fully hard. Then you kneel between your furry opponent's legs and pull up his loincloth to expose his ready and dripping pussy, as well as the invitingly looking pink opening of his rear end. You just know he'll be tight as a drum - after all, who in their right mind would get the idea of ass-fucking a big shaggy beast with those muscles and claws. Hm... on the other hand - you did, and sanity has become a bit of an optional quality lately anyways. No matter what, your [Cock of Player] cock is throbbing in your hand almost as if its eager to plunge in all of its own. While slowly stroking up and down its length with one hand, you reach out and tap gently against the large creature's clit, rubbing it and playing a little with the pussy lips further down. The trans-male raises his head to look at you and gives a needful croon, with even more of his feminine fluids moistening the swollen pussy under your hand.";
	WaitLineBreak;
	say "     You've got other plans of course, so you swipe up the furling's slippery femcum and use it to lube your cock, then slide your hips a bit closer yet. When you give his buttocks a squeeze, then lift his legs, the red-furred guy asks in confusion, 'You fuck me now? Me needs it!' Simply smiling confidently at the muscular being lying before you in his so vulnerable and receptive state, you line up your shaft with his pucker and press the slick cockhead forward. The resistance of the muscle mounts for a second, then you're through, sliding into your opponent's tightly gripping chute with a grunt echoed by him. 'That's not me's pussy,' the former college student tells you with a concerned look on his face, starting to push up on his elbows.";
	say "     Having gotten over the shock of the first penetration, his anal muscles clench tight at the same time, trapping your dick in a death-grip that leaves not even a little wiggle room. You frantically get your hand on his clit again, rubbing it with circling movements - and it works, as your furry partner lets out a long moan and thuds back down, flat on the ground as he pants lustfully with every touch. His inner muscles relax at the same time, restoring your freedom to move - not to mention restoring the blood-flow to your best piece. Making sure to keep servicing the furling's feminine parts, you sink yourself all the way into his ass, eventually bumping his prostate - with an immediate result of having the wound-up beast holler out loud, twitching and thrashing as he has a mini-orgasm.";
	WaitLineBreak;
	say "     Raising his upper body up on both elbows, the transformed student looks at you wide-eyed, watching as you raise your hand slowly from his pussy and just fuck into the tight confines of his ass, thrusting in and out in a steady rhythm. He grunts in pleasure each time you hit his prostate again, biting his lip before finally saying, 'Ass sex is... nice too. Me likes it. But do not forget pussy.' With that, he catches your hand in his large clawed paw and guides you back to his nether lips, sighing pleasedly as you go on rubbing at the same time as fucking him. Letting his head sink back on the ground, he fully relaxes into giving himself to you and even wraps his legs around your hips, giving little twitches to motivate you for harder thrusts.";
	if scalevalue of Player > 3:
		say "     Without any more hesitation, you start fucking the furling's ass in earnest, hammering in and out and filling his tight chute with your manhood. Being inside him is better than you could have dreamed, with his inner muscles tightly gripping your shaft and satisfied moans inviting you to fuck him harder and deeper. Burying your free hand in the furling's soft fur, you brace on his broad chest and do some especially deep thrusts, pulling back and slamming forward until your hips meet. All bruises forgotten, your large partner wraps his arms and legs around you, holding and stroking your body as you fuck his ass.";
	else:
		say "     Without any more hesitation, you start fucking the furling's ass in earnest, hammering in and out and filling his tight chute with your manhood. Being inside him is better than you could have dreamed, with his inner muscles tightly gripping your shaft and satisfied moans inviting you to fuck him harder and deeper. Burying your free hand in the furling's soft fur, you brace on his broad chest and do some especially deep thrusts, pulling back and slamming forward until your hips meet. All bruises forgotten, your large partner wraps his arms and legs around you, holding and stroking your body as you fuck his ass, all the while murmuring 'So small - but soo good.'";
	WaitLineBreak;
	say "     Rutting on the ground like mating beasts, the two of you make quite a bit of noise and it's a wonder that doesn't attract any opportunistic creatures - especially as the furling orgasms, giving a loud lust-filled roar as his pussy lets out a small fountain of femcum, leaving both of your crotches wet and sticky. You're not far behind, thrusting deep inside him one last time as your hard shaft starts pulsing with spurt after spurt of your fertile seed, painting his inner walls white. Breathing hard, you lean forward to rest on your furling's muscled chest, hands stroking his soft fur. Accompanied by a satisfied hum, your sexual partner strokes your back and says, 'Nice man. Make me feel good.' Followed by more humming and stroking.";
	say "     After lying there with you against his chest for a while longer, the furling takes hold of you and rolls over so you're on the bottom now, then gently pulls himself off your shaft and stands up. With an affectionate croon he says, 'Later,' and walks away.";
	CreatureSexAftermath "Furling" receives "AssFuck" from "Player";

to say Furling_PussyFist: [fisting]
	say "     Kneeling between your furry opponent's legs, you pull up his loincloth to expose his ready and dripping pussy. As you bring your hand to it, stroking and spreading the sensitive pussy lips, the large creature raises its head to look at you and gives a needful croon. Without any more hesitation, you put two fingers against the wet opening between his pussy lips and push them into his inner passage. The furling immediately starts moaning loudly as you finger him, and between the gasps and moans you think you heard him say, 'More.' So you add another finger. It's a strangely arousing feeling to have three fingers in the tight, warm and very wet pussy of this large furry beast. Stimulating him a bit more and seeing him take three, then four fingers without any problems, you wonder if you could...";
	say "     You can, as it turns out - your whole hand slips into the furling's pussy with a wet slurp, kicking your furry partner's gasps and moans into a whole new gear. Stroking and fondling the inner passage of your former opponent with all of your fingers, it doesn't take long until you drive him over the edge. Trembling and moaning, the large creature orgasms, his femcum running down your arm to create a small puddle on the ground. A strange scraping noise has you look up for a second, but it turns out only to be the furling's claws digging shallow lines into the concrete below as he holds on to it too tightly. Pulling your hand out of his pussy, you wipe it dry against the furling's leg-fur, then stand up. With the large beast still panting softly and mumbling, 'Nice [if Player is purefemale]woman[else]guy[end if]. Make me feel good.' You leave him there and walk away.";
	CreatureSexAftermath "Furling" receives "Stroking" from "Player";

to say Furling_Fingering: [Fingering]
	say "     Defeated, the furling crashes down onto his thick, muscled ass, the ground shaking slightly from the impact of his massive form. His powerful chest heaves with ragged breaths, streams of sweat darkening the thick orange-red fur that covers his body. Bright orange eyes, moments before burning with aggressive challenge, are now fixed on you with total submission. The raw acceptance of the victor's privilege is clear in their depths as he remains on the ground, his brutish strength temporarily spent. No sound of protest escapes him as you approach his massive, heat-radiating body. Only the heavy sound of his panting fills the air. The thick, musky scent of his exertion is sharp and potent in the quiet space around you, mingling with the faint, sweet odor of his natural lubrication. He waits, his form pliant and receptive to whatever you desire, the shredded football shirt loincloth a thin barrier over his vulnerable sex, proof of his past life before this transformation.";
	say "     Reaching down, your hand finds the edge of the torn loincloth clinging to his sweat-slicked hips, the rough fabric surprisingly resilient despite its ragged state. With a firm tug, you pull the tattered material aside, exposing the raw, fur-framed expanse between his powerful thighs, the muscle definition visible even under the thick fur. His pussy, a needy pink slit nestled between the thick, dark fur, glistens invitingly, already slick with anticipation. This is a stark, almost unbelievable contrast to the sheer size and power of the form it belongs to. Spreading the sensitive nether lips gently, you reveal the inner depths of his needy sex. The tight, wet entrance beckons you closer. A low, rumbling 'Mmmf' comes from deep within his chest, a sound of pleasure rather than protest, confirming his readiness for you.";
	WaitLineBreak;
	say "     Navigating the thick fur, your fingers explore the soft, yielding flesh before sliding into his wet heat. The entrance is tight and intensely warm. His internal muscles clench instinctively around your digits, in a firm, gripping intensity that sends a jolt up your arm and resonates deep within your own core. A small, choked 'Mmmh... yes' escapes him. This is higher pitched than his usual grunts, acknowledging the sensations as you navigate the tight sheath of his willing passage, exploring the depth and texture within. The tightness and warmth of his insides draw you in. There is something wild about having this towering beast trembling and moaning from every swipe of your fingertips. His massive head tilts back slightly, the orange eyes in his fur-framed face focusing on you, hazy with dawning arousal.";
	say "     Your other hand finds the sensitive nub of his clit hidden between the folds at the top of his vagina, and you begin a focused rub, concentrating on that one point. The furling's gasps become more frequent now, sharp and strained. They tear past his sharp predator's teeth and long fangs as the stimulation intensifies, his breath coming in short, ragged bursts. 'Faster... need more!' he rumbles, his voice deepening, raw with boundless need, almost a growl. The moans escalate into ragged pants, punctuated by desperate whimpers that strip away the last vestiges of his brutish demeanor. His massive body tenses further. His muscled legs instinctively spread wider against the ground, offering greater access to his welcoming sex, every part of him now urging you on.";
	WaitLineBreak;
	say "     Increasing the speed and intensity of your strokes, caressing the pulsing clit under your touch and jamming your fingers into the slick depths of his pussy, you drive him closer and closer to the edge. His huge body trembles forcefully. Muscled thighs shake against the ground as he strains towards his climax, a powerful, beautiful beast pushed to its limit. The furling's low growls become frantic, the whimpers more desperate, his entire form vibrating with suppressed tension. His eyes are wide and glazed with pleasure. Muscles coil throughout his massive frame as he nears the point of no return, the raw scent of his arousal thick in the air, almost overwhelming your senses. 'Make me roar! Finish me!' he demands, the sound a powerful plea that rips from his lungs, a final, need-filled surrender.";
	say "     With a final, powerful surge of your fingers, the dam breaks completely. A loud, triumphant roar tears from his throat, a sound echoing the primal power of his species. His massive body convulses violently, his back arching as a thick flood of femcum gushes from his pussy, warm and copious against your hands, dripping down his furred inner thighs in streams. 'Good... so good!' he pants, sinking back down. A deep, satisfied hum vibrates within his chest as the intense climax finally ebbs away, leaving him slick and exhausted. He lies there for a moment, recovering. The raw scent of his come mingles with the musk of his fur. Slowly, he reaches out a massive, clawed hand. Its touch is surprisingly gentle. He offers a soft, affectionate pat to your arm, a clear sign of his deep satisfaction. 'Later,' he grunts, a low, rough promise, before gathering his strength, pushing himself up onto his thick-furred legs, and wandering off. You're left alone with the warm, sticky proof of his pleasure still coating your hand.";
	CreatureSexAftermath "Furling" receives "Stroking" from "Player";

to say Furling_PecFuck:
	say "     As the furling charges, you sidestep his brutish forward momentum, using his own power against him. Instead of meeting the assault head-on, you pivot, hook a leg behind his ankle, and pull. The sudden change in leverage sends the magnificent beast tumbling, his massive form hitting the ground with a heavy, resonating thud that shakes the earth beneath your feet. He lies there, momentarily stunned, his powerful chest heaving with ragged, exhausted breaths. The thick, musky scent of his exertion hangs heavy in the air. When his bright orange eyes find yours, all the fight has drained from them. In their depths is only a raw, instinctual submission, a primal understanding that the battle is over and the victor's spoils are yours to claim.";
	say "     You approach the downed beast, your own scent of victory sharp in the air as you drop your gear. Your thick, hardening cock springs free, ready for use. Straddling his massive torso, you plant your knees firmly on either side of his ribcage, pinning him beneath your weight. His hot, panting breath ghosts across your thighs. You plant your hands on the outer edges of his huge, furred pectoral muscles and shove them inward. The dense muscle mass yields under your strength, creating a deep, warm valley of flesh and coarse fur between them. The muscled brute lets out a low rumble, a sound of anticipation, as you position the head of your cock at the entrance of this newly formed channel, ready to claim him.";
	WaitLineBreak;
	say "     You drive your thick, hardening cock into the tight, fleshy channel you've created. The heat is immediate and intense, the friction of his coarse fur and warm skin creating an electrifying sensation around your shaft. A deep, guttural groan vibrates through his entire chest as you begin to set a slow, steady rhythm. He is completely at your mercy. As you fuck the deep cleavage between his pecs, the shaggy beast's clawed hand moves. His long fingers find the damp, torn fabric of his loincloth, pushing it aside to find his own glistening, needy pussy. A low, muffled moan escapes him as his own fingers slide into that tight, wet heat. '...Yes,' he grunts, the word thick with pleasure as he begins to pleasure himself in time with your thrusts.";
	say "     The pace quickens. Your hands grip his pecs tightly, squeezing the dense muscle with each powerful thrust, deepening the channel and increasing the friction on your cock. The transformed student's muffled groans begin to mix with desperate, needy whimpers. His own fingering becomes more frantic, his hips starting to twitch and buck weakly against the ground as he chases his own release. 'Fuck... harder,' he pants, the words a raw plea. The sight of his brutish form so completely undone, his powerful body trembling as he desperately pleasures himself while you use him, sends a fresh wave of dominant arousal surging through you. You grant his request, increasing the speed and force of your thrusts.";
	WaitLineBreak;
	say "     His entire nine-foot frame begins to tremble violently. The furling's fingers dig deeper into his own slick passage, his thrusts becoming more erratic, his own body straining towards the edge. His back arches, the powerful muscles of his abdomen and chest coiling tight as a bowstring. His eyes are wide and glazed with pleasure, his sharp fangs bared in a desperate grimace of overwhelming sensation. He is a beautiful, powerful creature being pushed to his absolute limit, and you intend to shatter him completely. You feel your own orgasm building, a tight knot of heat low in your gut, ready to explode in sync with his.";
	say "     With one final, brutal thrust, the raw tension snaps. A deep, guttural roar tears from his throat as his body convulses violently, a convulsive surge ripping through him. A thick, copious flood of warm femcum gushes from his pussy, drenching his hand and spilling in hot streams down his muscled belly. The sight of his release triggers your own. With a guttural groan, your orgasm erupts in a hot, powerful torrent. You spray your thick seed all over his heaving chest and neck, the sticky fluid coating his fur in thick, white ropes. He shudders uncontrollably, panting '...Good,' before his body goes limp, and he collapses into a deep, restorative doze. You pull back, rising to your feet as you leave the sleeping beast to his recovery.";
	CreatureSexAftermath "Furling" receives "Grinding" from "Player";

to say Furling_Facefuck:
	say "     With a final, desperate lunge, the furling overextends, and you exploit the opening perfectly. A swift, brutal strike to his side sends the massive form stumbling. The magnificent beast lets out a sharp grunt of pain and surprise, his towering frame wavering for a moment before crashing backward with a ground-shaking thud. Defeated, the muscled brute lies there, his powerful chest heaving with ragged, exhausted breaths. The thick, musky scent of his exertion, a potent mix of sweat and primal pheromones, hangs heavy in the air. His bright orange eyes, slitted like a predator's, find yours. All the fight has drained from them, replaced by a raw, instinctual submission. A primal understanding is clear: the transformed student lost and is now yours to command, a massive, heat-radiating prize for you, the victor.";
	say "     You approach the downed beast, your own scent of victory sharp in the air. The giant doesn't move, his acceptance total. You stand over him for a moment before dropping your loincloth. Your thick, hardening cock springs free, ready to claim its prize. Straddling his chest, you plant your knees on either side of his massive head, pinning him to the ground. His hot, panting breath ghosts across your thighs. You grip his thick, reddish mane with both hands, using the coarse fur as a handhold to control his head. 'Open,' you command, your voice low and dominant. Without hesitation, his mouth opens wide, the impressive set of sharp predator's teeth and long fangs on full display. He is ready for you to take what you have won.";
	WaitLineBreak;
	say "     Leaning forward, you guide your cock into his waiting mouth. The heat is immediate and intense, a wet, welcoming cavern. His tongue instinctively wraps around your shaft as you push past his lips, the slick texture a stark contrast to the hard enamel of his fangs, which he carefully keeps from scraping you. A deep, guttural sound rumbles in his throat as you slide deeper. As you begin to set a slow, steady rhythm, the shaggy beast's clawed hand moves. His long fingers find the damp, torn fabric of his loincloth, pushing it aside to find his own glistening, needy pussy. A low, muffled moan escapes him as his own fingers slide into that tight, wet heat, beginning a slow, steady rhythm of self-pleasure while you fuck his face.";
	say "     The pace quickens. You tighten your grip on his mane, pulling his head up to meet each powerful thrust, fucking his throat with brutal efficiency. The transformed student's muffled gagging mixes with his groans of pleasure, a desperate, primal symphony of submission. His own fingering becomes more frantic, his hips starting to buck weakly against the ground as he chases his own release. 'Yes... fuck,' he manages to grunt around your cock, the words barely intelligible but thick with need. You drive deeper with each stroke, feeling the powerful muscles of his throat clenching around you. The sight of this massive, powerful creature being so completely dominated, so thoroughly used, sends a fresh wave of arousal through you.";
	WaitLineBreak;
	say "     Tension coils tighter and tighter in his massive body. The furling's fingers dig deeper into his own slick passage, his thrusts becoming more erratic, his entire nine-foot frame trembling violently. You feel him getting close, his whole body straining towards the edge. You tell him to cum for you. 'MAKE ME!' he growls, the challenge muffled but clear. You answer by increasing the force of your thrusts, skull-fucking him with a savage intensity that pushes him over the precipice. His back arches off the ground, his muscles straining as he drives his fingers into himself one last time, his body convulsing in anticipation of the inevitable release.";
	say "     With a final, desperate surge from his hips, the dam breaks. A muffled roar tears from his throat as his body convulses violently. A thick, copious flood of warm femcum gushes from his pussy, drenching his hand and spilling in hot streams onto his muscled belly. The sight of his release triggers your own. With a guttural groan, you drive deep into his throat one last time, your orgasm exploding in a powerful, pulsing wave. You flood his throat with your hot cum, holding his head firmly until you are spent. He shudders uncontrollably, swallowing convulsively before collapsing back to the ground with a final, shuddering sigh. You pull out, leaving the beast to doze off and recover as you wander off to find your next adventure.";
	CreatureSexAftermath "Furling" receives "OralCock" from "Player";

to say Furling_CunniReceive:
	say "     With a final, desperate lunge, the furling overextends, and you exploit the opening perfectly. A swift, brutal strike to his side sends the massive form stumbling. The magnificent beast lets out a sharp grunt of pain and surprise, his towering frame wavering for a moment before crashing backward with a ground-shaking thud. Defeated, the muscled brute lies there, his powerful chest heaving with ragged, exhausted breaths. The thick, musky scent of his exertion, a potent mix of sweat and primal pheromones, hangs heavy in the air. His bright orange eyes, slitted like a predator's, find yours. All the fight has drained from them, replaced by a raw, instinctual submission. A primal understanding is clear: the transformed student lost and is now yours to command, a massive, heat-radiating prize for you, the victor.";
	say "     You approach the downed beast, your own scent of sweat and victory mingling with his. The giant doesn't move, his acceptance total. His powerful, fur-covered limbs remain slack against the ground. Grabbing a thick handful of the furling's reddish mane, you pull the brute's head back, forcing that furry face upward. A low, guttural rumble vibrates in his throat, a sound of acknowledgment, not protest. Once his head is secured, you step over the shaggy beast's massive chest and slowly lower yourself, straddling his face. The coarse fur of his mane prickles against the sensitive skin of your inner thighs. Your weight settles onto the massive form, a clear and undeniable assertion of your dominance. Without struggle, the transgender beast accepts this, his hot, panting breath ghosting across your skin as you position your slick, needy cunt directly over that waiting mouth.";
	WaitLineBreak;
	say "     The moment your swollen lips make contact, the furling obeys. From his mouth, a thick, surprisingly dexterous tongue emerges, hot and wet against your clit. '...Yours,' he groans, the word a muffled surrender against your flesh as the magnificent beast begins to lap at you, tasting the salty-sweet tang of your arousal. A deep groan escapes your lips as you grind your hips down, forcing your sex more firmly against that captive face. The pressure is electrifying. As the furling's tongue works on you with primal instinct, his massive, clawed hand moves. His long fingers find the damp, torn fabric of his loincloth, pushing it aside to find his own glistening, needy pussy. A low, muffled moan escapes the brute against your thigh as his own fingers slide into that tight, wet heat, beginning a slow, steady rhythm of self-pleasure.";
	say "     As the furling's own arousal builds, his tongue becomes more frantic, more desperate. The lapping turns into a ravenous sucking, his mouth creating a powerful suction around your clit that sends waves of intense pleasure through you. At the same time, you can feel the vibrations of his frantic fingering through the massive body, his hips starting to twitch and buck weakly beneath you. Deeper now, more guttural, the shaggy beast's muffled groans are a mix of his own building pleasure and his effort to please you. 'More...' he demands, the word thick and choked with need. You ride his face, your hips moving in a steady rhythm that matches the frantic pace of his tongue and the desperate pumping of his own fingers. This transformed student is completely lost to sensation.";
	WaitLineBreak;
	say "     Tension coils tighter and tighter in his massive body. The furling's fingers dig deeper into his own slick passage, his thrusts becoming more erratic, more powerful. The shaggy beast's entire nine-foot frame trembles violently, a beautiful, powerful creature being pushed to the absolute limit. 'Cum now!' he growls, the statement muffled but desperate. 'Wanna... ROAR!' The brute's back arches off the ground, his muscles straining as he drives his fingers into himself one last time, his body convulsing in anticipation of the inevitable release. The raw scent of the furling's climax, sharp and sweet, floods your senses a split second before the end.";
	say "     With a final, desperate push of your hips, the dam breaks for both of you. A muffled roar tears from his throat as your own scream of pleasure rips through the air. A thick, copious flood of warm femcum gushes from your cunt, soaking the furling's face and running in hot streams down his furry cheeks. Simultaneously, the muscled brute's body convulses violently as his own climax erupts, a hot, thick torrent of his fluids drenching his hand and spilling onto his muscled belly. The furry student shudders uncontrollably for a few moments, the shared orgasm rocking his massive frame. '...So good,' he pants, the words a broken whisper against the ground before he collapses with a final, shuddering sigh. A deep, satisfied hum vibrates in the beast's chest, leaving him utterly spent. His breathing slows as he drifts off into a deep, restorative doze. You pull back, the sticky proof of your mutual pleasure coating his face and your thighs, and rise to your feet, leaving the sleeping furling to his recovery as you wander off to find your next adventure.";
	CreatureSexAftermath "Furling" receives "OralPussy" from "Player";

to say Furling_CunniGive:
	say "     Defeated, the large creature crashes down onto his thick, muscled ass, the ground shaking slightly from the impact of his massive form. His powerfully built chest heaves with ragged, desperate breaths, streams of sweat darkening the thick orange-red fur that covers his body. Bright orange eyes, moments before burning with aggressive challenge, are now fixed on you with total submission. The raw acceptance of the victor's privilege is clear in their depths as he remains on the ground, his brutish strength temporarily spent. No sound of protest escapes him as you approach his massive, heat-radiating body, only the heavy sound of his panting filling the air. The thick, musky scent of his exertion is sharp and potent, mingling with the faint, sweet odor of his natural lubrication. He waits, his form pliant and receptive to whatever you desire, the shredded football shirt loincloth a thin barrier over his vulnerable sex, twisted aside by his fall, proof of his past life before this transformation.";
	say "     Reaching down, your hand finds the edge of the torn loincloth clinging precariously to his sweat-slicked hips, the rough, frayed fabric unexpectedly resilient despite its ragged state. With a firm, deliberate tug, you pull the tattered material fully aside, exposing the raw, fur-framed expanse of pink flesh nestled deeply between his powerful thighs. His pussy, a needy, slightly swollen pink slit framed by the thick, dark fur of his groin, glistens invitingly, already slick with eager anticipation. It is in stark, almost unbelievable contrast to the sheer size and overwhelming power of the form it belongs to. Spreading the sensitive nether lips gently with your fingers, you reveal the delicate inner depths of his needy sex. The tight, invitingly wet entrance beckons you closer, a promise of warmth and sensation. A low, rumbling 'Mmmf' comes from deep within his massive chest, a sound of building pleasure rather than protest, confirming his absolute readiness for your touch.";
	WaitLineBreak;
	say "     Dropping to your knees, you lean forward, lowering your head towards the dark fur of his groin. The thick, musky scent of his arousal intensifies as you draw nearer. Your lips make contact with the warm, wet folds of his pussy, tasting the subtle, salty-sweet tang of his fluids. Tongue exploring the yielding flesh, you flick it against the sensitive labia, tracing the delicate lines of his sex. A small, choked 'Mmmh...' escapes him, his large head tilting back slightly. You deepen the contact, drawing the outer lips of his pussy into your mouth, sucking gently, while your fingers continue to spread the entrance wider. The sound of your lips on his wet flesh is soft but distinct. As your mouth works its way across the sensitive, wet surface, your tongue finds the sensitive nub of his clit hidden between the folds and begins a focused, rhythmic lapping that makes his entire body twitch with dawning pleasure.";
	say "     While your mouth and tongue continue their devoted work on his clit, your other hand begins a deeper exploration. Your fingers slide past the yielding flesh of the entrance and into his wet heat. The passage is tight, almost constricting around your digits, intensely warm and slick with his eagerness. His internal muscles clench instinctively around you, not with rejection but in a firm, gripping intensity that sends a jolt up your arm. 'Mmmh... yes,' he gasps, the sound higher pitched than his usual grunts, acknowledging the building sensations as your fingers navigate the tight sheath of his willing passage, exploring the depth and texture within. His massive form trembles as you begin to stroke rhythmically inside him, the combination of your finger-fucking and the focused attention of your mouth driving him into a state of pure, overwhelmed sensation.";
	WaitLineBreak;
	say "     The combined stimulation is almost too much for the defeated furling. His gasps become sharper and strained, tearing past his impressive fangs. 'Faster... need more!' he rumbles, his voice deepening, raw with a boundless, consuming need that is almost a low growl. The moans escalate into ragged pants, punctuated by desperate whimpers that strip away the last vestiges of his brutish demeanor. His massive body tenses further, arching into your touch as his thick, muscled legs instinctively spread wider, offering greater access. His hips begin to buck weakly against your hand and mouth, a desperate, involuntary rhythm seeking release. Increasing the speed and intensity of your strokes, you drive the massive beast closer and closer to the edge, his huge body trembling forcefully as he strains towards his climax, a powerful, beautiful creature pushed to its limit.";
	say "     With a final, powerful surge of your fingers deep inside him and a prolonged, intense sweep of your tongue over his clit, the dam breaks. A loud, triumphant roar tears from his throat, echoing with primal power as his massive body convulses violently. A thick, copious flood of warm femcum gushes from his pussy, soaking your face and dripping down your chin in viscous streams. 'Good... so good!' he pants brokenly through the subsiding shudders, sinking back down onto the ground with a heavy thud. A deep, satisfied hum vibrates within his chest as the intense climax finally ebbs away, leaving him slick and utterly exhausted. He lies there for a moment, his breathing evening out, before slowly drifting off into a deep, restorative doze. You pull back, the warm, sticky proof of his pleasure still coating your face, and rise to your feet, leaving the sleeping beast to his recovery as you wander off to find your next adventure.";
	CreatureSexAftermath "Player" receives "OralPussy" from "Furling";

to say FurlingDesc:
	project Figure of Furling_clothed_icon;
	say "     A pretty large humanoid creature crosses your path and stops to look at you with bright orange eyes. They belong to an otherwise human-looking face with unlined features like a young man's and surrounded by a thick mane of reddish hair. Although covered by thick orange-red fur, his powerful build and strong muscles are easily recognizable. Add long claws on hands and feet to that and you know you have to watch yourself with one of these critters.";
	say "     He wears nothing but a loincloth made from a shredded football shirt - who knows if that's from before the person's transformation... or the remains of his last meal.";
	LineBreak;
	say "     While you're still studying his appearance, the furry beast suddenly roars, 'You're mine!' Just before he pounces on you.";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Furling"	"[PrepCombat_Furling]"

to say PrepCombat_Furling:
	setmongender 8;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Furling";
	add "Furling" to infections of FurryList;
	add "Furling" to infections of TransList; [cuntboy]
	add "Furling" to infections of BipedalList;
	now Name entry is "Furling";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The furling slashes you with its long claws.[or]With a back-handed blow, the furling throws you to the ground.[or]The furling gives you a tight bear-hug, almost crushing you.[or]Grabbing your arm, the furling sinks its teeth into it.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Furling loses]";
	now victory entry is "[Furling wins]";
	now desc entry is "[FurlingDesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a young man, though with brightly orange slitted eyes and an impressive set of sharp predator's teeth and long fangs. A thick mane of orange-red fur covers your head down to your shoulders, with two pointy fox-like ears poking out of it at the top";
	now body entry is "large, about ten feet tall and with a wide, powerful build. You have long arms bulging with muscles, ending in large clawed hands. A loose loincloth that looks like it once was a football shirt covers your crotch";
	now skin entry is "[one of]densely furred[or]orange-red furred[at random]";
	now tail entry is "You have a firm, muscular butt."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "uncut, human";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into the features of a young man. Your hair grows out till it covers your head in a thick mane of orange-red fur. Carefully exploring your mouth with your tongue, you realize you now have quite sharp teeth - including long fangs"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a tall form with a wide, powerful build. Your arms grow longer and more muscular, with your hands and feet acquiring sharp claws. An improvised loincloth coalesces out of a cloud of nanites around your hips";
	now skin change entry is "it sprouts thick orange-red fur all over";
	now ass change entry is "it tightens up into a firm, muscled shape";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 30;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90;
	now lev entry is 11; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Campus"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 8; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 80;
	now loot entry is "red fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "furling milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]large[or]muscular[at random]";
	now type entry is "humanoid";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Furling Infection"	"Infection"	""	Furling Infection rule	1000	false

This is the Furling Infection rule:
	if Player has a body of "Furling":
		trigger ending "Furling Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is female:
				if "Sterile" is not listed in feats of Player:
					say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them, making sure your needy pussy is filled often. Some time later, when a soldier comes along to scout the area, you take a shine to him and carry him off to your lair. Keeping him as yours alone, you make the man fuck you several times a day and soon your belly starts to bulge with his offspring...";
				else:
					say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them, making sure your needy pussy is filled often. Some time later, when a soldier comes along to scout the area, you take a shine to him and carry him off to your lair. Keeping him as yours alone, you make the man fuck you several times a day. Sadly, being sterile, your urge for a bellyful of little furlings is never fulfilled.";
			else if Player is male:
				if Player is mpreg_ok and "Sterile" is not listed in feats of Player:
					say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them. At that point, your animal mind usually has real problems fitting together your lack of female genitalia with the drive to be bred - you often grind your crotch and erect cock against your current mate's maleness before remembering that there is another way to your womb and sinking your asshole down on their cocks. Some time later, when a soldier comes along to scout the area, you take a shine to him and carry him off to your lair. Keeping him as yours alone, you make the man fuck you several times a day and soon your belly starts to bulge with his offspring...";
				else:
					say "     As you succumb to the infection, deep cravings to mate inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them. At that point, your animal mind usually has real problems fitting together your lack of female genitalia with the drive to be bred - mostly, you grind your crotch and erect cock against your current mate's maleness, making quite a mess of your fur when the two of you finally cum.";
			else:
				say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them, then rub your genderless crotch against their cocks, futilely trying to satisfy yourself. Over time, unfulfilled sexual needs cost you the last vestiges of sanity, making you a rampaging beast.";
		else:
			say "     When rescue comes, the soldiers are pretty cautious about coming close to the large, powerful and clawed creature you have become. They're rather surprised as you start talking to them in calm tones, and even then it takes quite a bit of work to calm their worries of you biting, clawing, squishing or rending people - looks like they had some bad experiences with some larger infectees. When you're finally brought to a holding facility outside the city, several doctors poke and prod you, mumbling about your large muscle density and healing capacity. After being given a shot to make you non-infectious, you're released.";
			say "     Returning to human society isn't easy as a large furred beast, with everything feeling rather small and fragile around you. Regular-sized people getting all frightened and scream-y when you accidentally rip a door from its hinges or something like that doesn't make it any easier. Finally you have enough and just leave everything behind, moving out into a large forest where you build a log cabin in the right size for yourself. Life is better out in nature, away from frightened little people - an idea some other changed seem to have had too. Over the following months, you notice some more people moving out into the wilds and even construct a kind of village several miles away. Maybe you'll visit them one of these days...";

Section 4 - Red Fur drop object

Table of Game Objects (continued)
name	desc	weight	object
"red fur"	"A tuft of orange-red fur. It's nicely soft."	1	red fur

red fur is a grab object.
Usedesc of red fur is "[redfuruse]".

It is temporary.

to say redfuruse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Furling";

instead of sniffing red fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Furling ends here.
