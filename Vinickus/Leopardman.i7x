Version 3 of Leopardman by Vinickus begins here.
[Version 2 of Leopardman by Sarokcat begins here.]
[ Version 2 - Special variations added for Art Collector event]

"Adds a Leopardman to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say leopardman desc:
	project Figure of Leopardman_soft_icon;
	setmongender 3;  [creature is male]
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "     As you wander the deserted streets of the city, all of a sudden a large form jumps down into the street in front of you. As it stalks towards you, you get a good look at the powerful feline man. His strong body is covered with leopard-like fur, and as he rises up to two feet and flexes his claw-tipped hands, you get a very good look at his rather erect feline cock. Looking around quickly, you realize the leopardman waited until it was far too late for you to run before he leaped down from his hiding spot. As you prepare to fight, you can see a playful grin cross the muzzle of the obviously aroused feline. [one of]'This should be fun,' [or]'Let's play leopard and mouse, shall we?' [or]'I like it when they struggle a bit,' [or]'You look like you will make a fine Leopardess...' [or]'Let's see how long you can resist me, little prey...' [at random]he says as he leaps forward after his prey.";

to say Leopardman wins:
	project Figure of Leopardman_hard_icon;
	if inasituation is true:
		say ""; [dealt with at the event source]
	else if Player is female:
		say "     'That's it, I knew you couldn't resist a sexy cat like me for much longer, and now we can have some real fun with that lusty little pussy of yours...' the leopardman says with amusement as you abandon any further attempt at resistance and lie there helplessly sprawled out in front of the male beast. You find your heart beating faster as he stalks closer to you, his powerful male scent filling your mind with lust even as he moves his spotted feline form over you. You gasp as one of his clawed hands trails up the inside of your thighs teasingly, the feel of his soft hands tracing up your [bodydesc of Player] body making you moan with arousal, and causes the leopard to grin as he reaches your already damp female mound and rubs it teasingly.";
		say "     'Already nice and ready for me, I see. This is going to be fun,' he says with a smirk as he positions himself above you, your legs parting automatically for him as he lowers himself down onto you, your body reacting to his touch without any hesitation, your mouth open and panting with need as he guides the tip of his barbed feline cock up against your increasingly heat-filled sex. The leopardman seems increasingly amused as he thrusts himself slowly inside you, the feeling of his thick feline member spearing into you making you groan with delight as you begin to forget why you would want to resist something so pleasurable.";
		WaitLineBreak;
		say "     His soft thick spotted fur tickles pleasurably as it rubs up against your [Skin of Player] skin, as he begins to rock his hips forward against yours, his barbs massaging your inner walls with small bursts of pleasure, as he slides his feline cock in and out of your increasingly lust-filled form. You feel his sharp feline teeth brush your neck and you moan as he licks across your neck several times with his raspy feline tongue, the sensation seeming strangely erotic as he rubs his muzzle against your unprotected neck teasingly. The pleasure only seems to build within you as he speeds up his thrusts, all thoughts of anything except sex driven out of your mind as your senses are overwhelmed by his masculine musk, and the feel of his silken soft fur stroking over your [bodytype of Player] body as he continues to thrust that amazingly pleasurable feline cock into your needy passage.";
		say "     After what seems almost like an eternity of pleasure, the leopardman buries his head against your shoulders, his teeth scraping lightly against your skin as he holds you in place to receive his seed. You find yourself yowling helplessly like a cat as you feel his cock tense and fill your body with his warm, thick seed, your own orgasm smashing through you and making you feel increasingly bestial as he fills your body with his predatory seed. Eventually you can do no more than shudder limply underneath him as he pulls out of you with a look of satisfaction on his feline face, 'What a good little sexy slut you make,' he murmurs with amusement as he traces one of his clawed tips along the side of your face teasingly, 'Now that you know how good it can be, I look forward to seeing you again, my little soon-to-be Leopardess. In the meantime, though, I am sure there are still others out there for me to find and breed...' the leopardman says with a wicked grin as he begins to stalk off down the street, already looking for his next sexual conquest as he leaves you lying there trying to recover from the amazingly sexual experience.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Leopardman";
		infect "Leopardman";
	else if ( HP of Player > 0 and a random chance of 1 in 3 succeeds ) or ( player is submissive and a random chance of 2 in 3 succeeds ) or ( player is mpreg_ok and a random chance of 1 in 3 succeeds ):
		say "     'Well, I was certainly hoping for some more fun than this,' he rumbles as he looks over your body as you [if HP of Player > 0]give up the fight and submit to[else]collapse helplessly in front of[end if] the powerful and masculine feline. 'Without a proper breeding hole, what good are you?' the leopardman asks teasingly as he looks down at you, the evil grin spreading across his muzzle making you shudder slightly. 'Though you certainly act like a weak and needy female, now don't you?' he purrs in your ear as he pins you down suddenly. 'Maybe you just need a little more... encouragement.'";
		say "     What he means by this becomes clear as he grinds his hard erection against your backside and gets it lined up with your asshole. You find your heart beating faster as his powerful male scent fills your mind with lust even as one of his clawed hands trails up the inside of your thighs teasingly. The feel of his soft hands tracing up your [bodydesc of Player] body making you moan with arousal and causes the leopard to grin even as he slips a paw [if Player is male]to your [cock size desc of Player] [Cock of Player] manhood. 'Already hard, I see,' he rumbles. 'I knew there was a needy fucktoy somewhere inside you looking to get fucked and bred[else]across your bare groin. 'Nothing at all, eh?' he says in surprise. 'Well, let's see if we can't get you a proper pussy so you can get bred like you so clearly want next time[end if].' And with that said, he pushes his hips forward, sinking his pointed, barbed, feline rod into you.";
		WaitLineBreak;
		say "     You can't help but respond to his rough lovemaking, aroused at having such a strong and virile male atop you and stuffing your needy body. Your mouth hangs open as you pant with need as he thrusts into you rhythmically. The feel of his thick feline member spearing into you makes you groan with delight as you begin to forget why you would want to resist something so pleasurable[if Player is male]. Your cock twitches and dribbles precum with each delightful push against your prostate[end if].";
		say "     His soft thick spotted fur tickles pleasurably as it rubs up against your [bodytype of Player] form. As he rocks his hips forward against yours, his barbs massage your inner walls with small bursts of pleasure while his feline cock in and out of your increasingly lust-filled form. You feel his sharp feline teeth brush your neck and you moan as he licks across your neck several times with his raspy feline tongue, the sensation seeming strangely erotic as he rubs his muzzle against your unprotected neck teasingly. The pleasure only seems to build within you as he speeds up his thrusts, all thoughts of anything except sex driven out of your mind as your senses are overwhelmed by his masculine musk. The feel of his silken soft fur stroking over your [bodytype of Player] body as he continues to thrust that amazingly pleasurable feline cock into your needy passage gets you to moaning and mewling beneath him. The push of his thick rod inside you feels so wonderful, especially in how it feels against your sensitive prostate.";
		WaitLineBreak;
		say "     After what seems almost like an eternity of pleasure, the leopardman buries his head against your shoulders, his teeth scraping lightly against your skin as he holds you in place to receive his seed. You find yourself yowling helplessly like a cat as you feel his cock tense and fill your rectum with his warm, thick seed, claiming your body as he would a female's[if Player is male]. Your own orgasm smashes through you and makes you feel increasingly bestial as he fills your body with his predatory seed. You empty your load across the ground as his strong paw strokes you off while he rumbles for you to pump out all that unneeded semen[end if].";
		say "     Eventually you can do no more than shudder limply underneath him as he pulls out of you with a look of satisfaction on his feline face. He wipes his cock on your rear. 'You make for a pretty good fuck, you sexy slut. Now that you know how good it can be, I look forward to seeing you as a proper female and eager to be a sexy leopardess getting bred under me soon,' the leopardman says with a wicked grin as he begins to stalk off down the street, already looking for his next sexual conquest as he leaves you lying there. It takes you some time to recover from the amazingly sexual experience and be able to move on.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Leopardman";
	else:
		say "     'Well this doesn't look like much fun...' the leopardman says as he looks your body over as you collapse helplessly in front of the powerful and masculine feline. 'Without a proper breeding hole what good are you?' The leopardman asks teasingly as he looks down at you, the evil grin spreading across his muzzle making you shudder slightly. 'Though maybe all you need is a little bit of kitty cream to help you along... and another leopard is always a good thing... even if it is male... for now,' he says with amusement as he begins to stroke his thick feline cock teasingly, the sight of his furred hand stroking that pointed and barbed member seeming strangely erotic as he draws closer to you. Lost in the increasingly sexual sight of his powerful feline body, and with the scent of his erotic musk filling your head, you can only pant helplessly as he positions his thick cock in front of your mouth teasingly. Before you can think about what you are doing, you find your tongue licking the tip of his thick cock, the salty taste of his delicious meat filling your mouth as his hands grip the top of your head as he slowly guides himself into your mouth.";
		say "     'That's good, open wide for your cream little kitty,' you can hear the leopardman say from above you, his words filling your mind even as his meaty feline cock fills your mouth, your eyes drifting closed as your lips close around the leopardman's wonderful member, as strange increasingly sexual thoughts fill your mind. You can hear the pleasurable growl of the leopardman above you as he begins to thrust in and out of your mouth, his barbs rubbing against your tongue pleasingly even as the pointed tip of his feline cock rubs against the back of your mouth. Your own cock stiffens with arousal as you begin to lick and suck eagerly on the proud feline meat in your mouth, the strange salty flavor of his leopard cock is surprisingly addicting, and you find yourself growing ever more eager to taste the 'cream' the leopardman promised you as you begin to worship his cock enthusiastically.";
		WaitLineBreak;
		say "     Soon the Leopard is moaning and yowling with pleasure above you, every sexy sound you wring out of him as you work on his cock seems like a pleasant reward to your lust-addled mind, as you run your tongue over his amazing feline rod and your own rod twitches with desire. Before much longer, your efforts are rewarded, and his cock twitches as it fills your mouth with his wonderful cream, the salty and sweet taste of the leopardman's seed filling your mouth as you eagerly try to gulp down every last amazing drop. You hardly realize that your own cock is busy coating your chest with your own seed as you continue to lick and suck at the leopardman's member, while he yowls his orgasm and triumph out for all to hear.";
		say "     Eventually the leopardman pulls his spent cock out of your mouth, and you collapse back helplessly as he stands over you with amusement, 'I can see you liked your dose of cream little one,' he says with a chuckle of amusement. 'And while I am sure you can hardly wait for your next dose, there are still plenty of people out there that need to become sexy little leopards like me, and there are plenty of females out there that need a little belly full of leopard cubs as well. And maybe next time you will have a proper little pussy as well for me to fill full of cubs,' he says with an amused flick of his tail as he stalks off into the city, already on the hunt for his next playmate as you lie there and try to recover from the intense sexual experience.";
		CreatureSexAftermath "Player" receives "OralCock" from "Leopardman";
		infect "Leopardman";


To say Leopardman loses:
	project Figure of Leopardman_hard_icon;
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "     The leopardman staggers back, his feline muzzle scrunched up in pain as he clutches at his wounds and glares at you for a minute. You don't give him a chance to react. With quick reflexes, you soon have him pinned to a nearby brick wall. It's got holes galore, and frankly isn't that stable, but you have the advantage, and you doubt he can topple anything in his weekend state.";
		LineBreak;
		say "What do you want to do with the Leopardman?";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Immediately fall to your knees and worship this feline adonis";
		now sortorder entry is 1;
		now description entry is "While he's at your mercy, why not show him true appreciation";
		[]
		if player is male: [Option only visible for males]
			choose a blank row in table of fucking options;
			now title entry is "Beg him to let you worship his paws";
			now sortorder entry is 2;
			now description entry is "Slip yourself under his big paws";
		[]
		if player is male: [Option only visible for males]
			choose a blank row in table of fucking options;
			now title entry is "Turn around and bend over, smacking your ass";
			now sortorder entry is 3;
			now description entry is "Feel him inside you and breed you";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Nevermind[as]100[end link][line break]";
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
					if (nam is "Immediately fall to your knees and worship this feline adonis"):
						say "[LeopardmanVictorySexOral]";
					if (nam is "Beg him to let you worship his paws"):
						say "[LeopardmanVictorySexPaw]";
					if (nam is "Turn around and bend over, smacking your ass"):
						say "[LeopardmanVictorySexAnal]";
			else if calcnumber is 100:
				say "Leave him?";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the Leopardman, shaking your head as he gives you a shocked look.";
					wait for any key;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say LeopardmanVictorySexOral:
	say "     With your body so close to his, you can't help but find yourself lost in the sight of the man, the feel of the man. His fur rubs against your skin, and it drives your mind wild, drawing a moan from your clenched lips. You try to keep a tough face, a war face, but the leopardman sees right through you. His lips curl up in one of the smarmiest grins of glee you have ever seen. It only drives you further from sane thought, leaving you with nothing but need. You are just about to beg to get to worship him, but he just licks his lips and pushes off the wall, forcing you to stumble a few feet back. It is then that he leans back against the wall and folds his arms. His head then nods towards his dripping erection. You now no longer have to beg, as he simply says, 'Suck,[if player is male] boy[else] bitch[end if].' You are then on your knees before him in seconds. There's nothing left to do but give in to your screaming mind.";
	say "     The first taste of his seed, his precum, forces a desperate moan from your lips. That sound illicites a chuckle of approval from above, and one that draws a strange glee from your primal mind. Your tongue has already lashed the tip of the barbed cock before you clean, and so the only thing left to do is wrap your lips around that object of worship. As soon as you've curled your mouth around his cock, the leopardman forces his hips forward and grabs your head. He's no longer leaning against the wall, and now hunches over your form as he drives his prick straight down your throat. It's hard to care, to think beyond what pleases him, especially with all of the aphrodisac-like smells surrounding you. His musk makes your mind fall into a mire of constant need, and there's nothing you can, or want to, do to crawl out.";
	WaitLineBreak;
	say "     There's nothing left but to worship this great male before you, to run your hands over his abdominals and thighs, all while he begins to pound your face and throat. You gag off and on for a few minutes as he picks up speed, as his soft barbs rub against your throat, and as he grows ever more vicious in lust. So with little other choice, you force your throat to behave; Soon he's easily pushing in and out of it as you constrict your esophagus each time he thrusts in, and loosen it as he pulls out. It makes it easy for him to keep a fast rhythm. Your hands soon stroke down his furred, muscled back as they trail towards his ass. Those digits of yours then grip at his muscled rear as he pounds into you with ever more force. You're left in a daze as you hang on for dear life.";
	say "     The leopardman shows little concern for you, and keeps up his savage thrusts for several more minutes. It's not until you start yanking him into you that you feel his hips flex, and his grip tighten. That feline cock even lurches and throbs as you both hold each other close. Your face is perpetually stuck in his crotch as he lets out a yowl that deafens all other sound. You then feel it: the first fiery founts of feline cum. You guzzle it down as if it is the nectar of the gods. If nothing else, it would serve as the perfect substitute. Eventually, everything has to end, and as the surges of seed slow to a dribble, he begins to slide out of your mouth. The leopardman then gives you a pat on the head and a few scratches behind the ears. 'Good job, slut,' he purrs out.";
	WaitLineBreak;
	say "     Once the feline rod is pulled out, the lopardman turns to leave. He glances back, though, and gives you a toothy grin. 'Next time you're under me, it'll be on my terms.' Then with a lusty purr, he sprints off.";
	CreatureSexAftermath "Player" receives "OralCock" from "Leopardman";
	infect "Leopardman";

to say LeopardmanVictorySexPaw:
	say "     With a glance down at his paws, you lose control. The sight of those fluffy, feline, furred and muscled paws just makes you a slave to lust. It seems the leopard notices your weakness, as his toes begin to wiggle and flick up and down. It's at that point that you lose all pretense of control over this situation. Even if you are the one that beat the leopardman, it won't give you control of your own base needs: or any way out of needing to worship those furred feline paws. You don't even notice that you have released the leopard until his own hands grip at your shoulders, pushing you down to your knees, and then onto your back. There's no resistance from you, and why would there be? There's such a sexy beast in control of you, and that's what you want, after all.";
	say "     The leopard grins down at you as he grazes a paw back and forth across your face. Each time you try and bring your nose closer, the paw pulls back. He keeps the teasing up for quite awhile, getting you to beg for him to smother you in his musk. There's not convincing him at first, but eventually he seems to grow bored with your begging, and sits on your stomach. His bubble butt is placed right against your dick, allowing his furred ass to tickle along your sensitive flesh. Most importantly, however, both of his paws move to your face, pressing against you, grinding into you, and wiping away the sweat and musky scents.";
	WaitLineBreak;
	say "     The paws are well cared for, with smooth pads, lush fur, and currently free of any smells other than the masculine. It's debilitating to your mind to have your nose filled with such a musky treat, to have your mind dragged down by those damn digitigrade feet. You're cock leaks fluids all along the leopard's ass, all along the fluffy, smooth fur on his chiseled cheeks. He even orients himself to where your cock rests right against the crack, almost letting you hotdog him. However, he's clearly just teasing you as he rubs his pawpads all over your nose. 'lick,' the leopard purrs out. It's a simple word, a simple command, and is all that is needed for your tongue to dart out and taste his musky pads.";
	say "     Your wet muscle laps along the smooth flesh of one paw's pads, dragging up and down from one side of each pad to the other. There's three on each foot, and the first foot, the first pad, is soon drenched in saliva as you spend several minutes just worshping it with every bit of effort you can muster. The purring from above sturs you on towards the next pad on that paw, letting your tastepuds be awash in yet more musk, fresh musk. The sweat comes off quickly, but the musk lasts just a bit longer, letting your mind get that much more drunk off it. The next pad is much like the second, leaving you almost entirely ignorant of your own cock, of your own need. There's only worship, only desire for your feline overlord.";
	WaitLineBreak;
	say "     There's a sensation of dampness along your stomach and lower chest, a feeling that's accompanied by that ass rubbing harder against your dick. The back of your mind knows what's happening, but the part in control in that moment doesn't care. The wetness gets more noticeable as you move onto the next paw, as you lather and salivate all over the first pad of that paw. As the taste of musk and sweat begins to grow mute there, you move onto your next target, and then your next. Once you've fully lathered every pad of both paws, your tongue laps between the toes, moving from one paw to the other, back and forth, making sure to constantly worship both, to have your tongue trapped between those toes almost nonstop.";
	say "     It's once this has been going on for several minutes that you feel a burst of wetness cover your torso. The rubbing against your cock grows more intense, and the pressure of the paws against your face grows stronger. The paws then leave your face, your mind still stuck in a daze as the leopard stands up, and by the time your eyes focus enough, and by the time your able to glance around, you're alone. That's when you take the chance to glance down at your torso. The feline came all over you, leaving your entire stomach, and most of your chest, thoroughly caked in cum. Without much other choice, and with your mind still lost to need, you begin to scoop the fluids up in your hands, smelling it before licking your hands clean. It's not until you're fully cleaned up that you realize what you just did. You're then left to simply gather your things and move on.";
	CreatureSexAftermath "Player" receives "OralCock" from "Leopardman";
	infect "Leopardman";

to say LeopardmanVictorySexAnal:
	say "     You know what this man wants, his cock gives you quite the obvious image of need, and you know what your mind is screaming at you to do. So you step back, looking up and down the leopard as he raises a brow in confusion. He even begins to glance around for a way to escape, but before your new friend can leave, you turn around and bend over. You even go as far as to smack your ass. Without glancing back, you can't quite tell his response, but before you have to look, you feel fur against your rear. 'If I had known you were such a whore, I would have just told you to bend over,' the male purrs out. It's then that you feel the wet, barbed tip of your partner's cock rubbing between your cheeks. He begins to grind and hump at you, growing more insistent as he leaks along your lower back and butt. Only when it gets thoroughly damp down there, do you feel the tip start circling your hole.";
	say "     The barbs feel odd against your anus, but not bad, more like a mix of small tongues and insistent fingers. It catches you off guard enough to distract you as those barbs are soon placed directly against your hole. Luckily for you, the feline leaks like a broken sieve, and all his copious seed works quite well to slick the entry of that barbed dick. The leopard keeps applying more and more pressure to his penetration, not stopping his pushing until you feel a sudden pop and a sharp pain. Thankfully, that pain is quickly replaced by an odd sense of fullness, and an odd sense of pleasure. Both are no doubt caused by the way the barbs are scraping against the inside of your ass, and right against your prostate. It's strange how the leopardman seems to take his time, stroking down your sides to calm you down, even hunching over your form to lick at an ear. He goes so far as to whisper into said ear, 'Shh. You'll be alright. Soon you'll be taking me like a true whore.'";
	WaitLineBreak;
	say "     After a few minutes of his stroking, his whispers and intermittent licking, he jams his cock balls deep. The sudden movement forces you to fall over, catching yourself on your hands and knees. Your hands burn and your knees are suffering blunt pain. It all distracts you from the pillaging cock in your rear, and your mind only shifts from the pain when you feel that rod pulling out. The barbs scrape along your insides, driving a mewl of pleasure from your lips, and when those same barbs stop right on your prostate, those mewls grow stronger. The leopardman doesn't even comment, settling for slamming his cock right back in. His hips slam against your ass, his balls against your balls, and this new pace is soon the standard. He pulls out to the tip, and then slams back in to the base. His pace quickens with each thrust, each fuck of your insides. You're being driven to a mindless state of lust as he keeps his humping up, as his barbs keep scraping against your prostate. There's nothing to be done but to brace yourself and weather the storm of ecstasy.";
	say "     In, out, in, out, over and over and over he goes. You're mind seems to slip entirely into a state of suspended lust. There's no relief, no end, just constant bursts of pleasure through your entire body, from head to toe. The feline even begins to nibble at your ears, trading from one to the other as his humping grows more feverish. You swear you can feel the virile pre, that he's leaking out in impossible quantities, sloshing around inside you. It's when you think he can't get any rougher, that he slams into you with such force you can no longer support yourself. You fall onto the cold ground as he keeps you pinned with your ass raised. He then starts pounding at your ass at such a speed you'll no doubt have bruises. There's nothing to be thought or said in that moment, nothing for your mind to do but keep you breathing and conscious.";
	WaitLineBreak;
	say "     You start to wonder if the pleasure will even let you stay conscious, or let you keep your sanity, and when that thought comes to mind your cock lurches. There's no slowing down for the feline as your ass tightens from your oncoming orgasm, no slowing as you release copious amounts of seed onto the ground beneath you both. The leopardman doesn't even make a comment as your ass pulses around his cock. However, his cock soon lodges itself fully in your rear, his balls slamming against you as his hips are held tight to your ass. You then feel it, the surges of cum from that glorious rod, the pulses through it, and the throbbing of the testicles held against you. It doesn't end, it doesn't even slow down for several minutes. You could swear your stomach is bulging out from the onslought of cum this male is filling you with, and only when you start questioning if it'll ever end, does the cream filling stop.";
	say "     The feline then gives your neck a nibble and lick before yanking out of you. His sudden exit leaves you to collapse on the ground. It's then that you feel him wipe his cock onto your ass. Glancing behind you, you see his grin of absolute superiority, and then you see his ass as he walks away. You're left on the ground, leaking cum from your ass and cock as your still lust addled mind drives your thoughts. It's not for several minutes that you have the strength to stand and gather your belongings. Once everything is settled though, you manage to hobble off back to where you were before the pounding.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Leopardman";
	infect "Leopardman";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Leopard"; [name of the overall species of the infection, used for children, ...]
	add "Leopardman" to infections of FelineList;
	add "Leopardman" to infections of FurryList;
	add "Leopardman" to infections of NatureList;
	add "Leopardman" to infections of MaleList;
	add "Leopardman" to infections of BarbedCockList;
	add "Leopardman" to infections of SheathedCockList;
	add "Leopardman" to infections of BipedalList;
	add "Leopardman" to infections of TailList;
	now Name entry is "Leopardman";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The leopardman swipes at you with his sharp claws![or]The leopardman pounces you playfully![or]He darts forward quickly and lashes out with a closed fist![or]The leopardman pauses for a second to watch you carefully, before darting forward and swiping at your legs, knocking you down![or]The leopardman grabs your arms with his hands, and leans forward to give you a teasing kiss before releasing you.[or]He charges forward and knocks you into a wall, pinning you for a second while he rubs his soft fur against you.[at random]";
	now defeated entry is "[Leopardman loses]";
	now victory entry is "[Leopardman wins]";
	now desc entry is "[leopardman desc]";
	now face entry is "broad, sexy feline muzzle, with golden, slit-pupiled eyes and rounded feline ears sitting atop your new leopard-like face"; [ Face description, format as "Your face is (your text)."]
	now body entry is "powerful and lean, your well-muscled form carried easily on your powerful legs, their muscles designed for leaping and climbing, which rest easily on your rather paw-like feet. Your hands are tipped with sharp claws, easily suited for both combat and climbing"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]leopard spotted[or]leopard furred[or]Black and yellow spotted[or]soft furred[or]short fur covered[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a long, thin feline tail lashing teasingly behind you, its eager movements showing off your well-rounded ass, even as it twitches eagerly as if begging someone to pin it down and fuck you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feline[or]leopard[or]barbed[or]pointed[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it stretches forward, your nose flattening and your mouth spreading out as they merge together and begin to form a proper feline muzzle. Your eyes seem to blur for a second, and then the world sharpens around you as they become the slit pupils of a hunting cat, and as your changes finish with your new leopardlike ears coming to rest on the top of your head, you can feel your new feline muzzle stretching in a lewd grin as lustful thoughts fill your mind"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles shift under the skin, your feet shifting and the bones cracking as they become powerful feline paws and your legs shift to allow you to balance easily on your new, pawlike feet. Your hands feel strange as they shift and powerful leopardlike climbing claws push out of the tips of your slightly thicker and more powerful fingers"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a soft wave of short leopard spotted fur begins to cover your body, the fur rubbing against your skin softly as it grows in, making you shudder with pleasure as a proper coat of fur covers your body completely"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a thick feline tail begins to stretch out behind you, the increasingly sexy looking new appendage lashing back and forth teasingly with every step, as if inviting some sexy beast to come play with it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it is drawn up closer to your body by a feline sheath forming around it. Your cock itself continues to stretch and change as well, becoming pointed and small barbs growing out of it, both for your feline mate's pleasure and your own"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 18;
	now dex entry is 26;
	now sta entry is 16;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80;
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 11; [ Amount of Damage monster Does when attacking. ]
	now area entry is "High"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls ]
	now Nipple Count entry is 4; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 4;
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "Spotted fur";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]powerful[at random]";
	now type entry is "[one of]feline[or]leopard-like[or]pardine[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Table of Game Objects (continued)
name	desc	weight	object
"Spotted fur"	"A small tuft of black and yellow fur, it is very soft and seems like it would feel nice against your skin."	1	  Spotted fur

Spotted fur is a grab object. Understand "fur" as Spotted fur. Spotted fur is infectious. Strain of Spotted fur is "Leopardman".

instead of sniffing Spotted fur:
	say "The tuft of fur smells faintly of the powerful feline it came from.";

Usedesc of Spotted fur is "You take out the strangely attractive small tuft of fur you acquired earlier, rolling the soft fur between your fingers, you find the feel of the fur to be strongly sensual. Enjoying the pleasant feel of the fur, you begin to slowly rub the small bundle of fur over your skin, the silken soft fur tuft tickling your cheeks and chest as you trail it lightly over them several times, making you smile happily. After several passes however you go to trail it along your cheek again, only to realize the fur tuft is no longer there, looking down, you see where bits of the leopardlike fur have anchored themselves into your skin, giving you a small patch of sensual fur of your own to stroke, and you can almost feel the leopardlike changes moving throughout the rest of your body...";


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Leopardman Infection"	"Infection"	""	Leopardman Infection rule	1000	false

This is the Leopardman Infection rule:
	if Player has a body of "Leopardman":
		trigger ending "Leopardman Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is male:
				if Player is female:
					say "     With your new powerful sexual instincts overwhelming you, you finally give in to your body's changes, your amazingly sexy new predatory body feels amazingly wonderful as you stalk the streets looking for anything to sate your increasingly powerful lust. Your lithe new body and climbing ability makes catching several of the sexy beasts wandering around the city, using their slutty little bodies for your pleasure before hauling their exhausted forms back to your newly found den. Before long you have a lovely little stable of men and women to play with whenever the mood strikes you, enjoying their moans of pleasure as your own sexy leopardlike infection slowly begins to overpower their bodies and their bodies begin to become more and more feline under your sexual assault.";
					say "     When the military arrives however, things change for a bit as you capture several soldiers to feed your nearly insatiable lust, and while their squad mates eventually manage to track down your den and their former teammates, your group of leopardlike beasts makes short work of converting the soldiers that find you. You are still forced to abandon your den now that its location is known though, but you find yourself looking forward to building a nice sexy new den, where you can give birth to lots of little leopards, and drag your prey off to transform them and fill their slutty empty bellies with lots of little leopard cubs as well... You and your fellow leopardlike recruits just know that you are going to have so much fun with all these lovely little military personnel, and afterwards, who knows where you will find some new sexy prey to play with?";
				else:
					say "     You find your new predatory instincts growing increasingly more powerful as you give in to the pleasures of your new form, and before long you are enjoying prowling the streets of the deserted city looking for prey to chase, and people to transform. And while you are certainly one of the most powerful, and definitely one of the sexiest predators stalking the streets, the lack of unchanged people to stalk and play with is rather frustrating for a while, though you do find plenty of females of other species to sate your lusts on. This all changes when the military begins its campaign to free the city, and you find yourself overwhelmed with new prey to stalk, and while the soldiers are rather dangerous prey, you find that only adds spice to your hunt. While you have several close calls, you manage to catch several of the soldiers alone for more than long enough to have some fun and spread your infection to them, before letting them rejoin their squads trying to hide their new feline changes.";
					say "     You begin to truly enjoy the challenge as you find more and more creative ways to infect the soldiers, and as those you already began to infect with your powerful leopard seed return to the city, it becomes easier and easier to tempt them to come off alone for their next dose... though they often start bringing an unsuspecting new recruit or two to share in the transformation. Eventually you have a number of slutty leopardwomen who are too changed to returned to their base camp settling in throughout the city, and a few even manage to become sexy leopardmen like yourself, much to your feline amusement. And as the military tries to recover from its various defeats in the city, you find yourself grinning a feral grin as you wait for the soldiers still in camp to finish their transformations so you can continue to spread your wonderful new species far and wide once the blockade begins to crumble...";
			else:
				say "     Giving in to your new powerful instincts you find yourself enjoying your new predatory form as you stalk the city most nights looking for fun. You encounter several of those sexy leopardmen as you wander around the city, and enjoy every memorable encounter immensely, as you tease and taunt them and lead them a merry chase before allowing them to catch you and sate their lusts on your all too willing body. Few of the other creatures in the city pose much threat to your new predatory leopardlike form, and those that do are far too slow and clumsy to catch you. At least until the military arrive and combat begins to break out all over the city, you soon find the annoyance of all these untransformed soldiers running around to be extremely annoying as they stir up all kinds of trouble throughout the city. Feeling rather upset at the disturbance, you soon find yourself seeking more peaceful territory, your sleek leopardlike form making it rather easy to sneak through the military blockade and make your way out into the wilderness beyond the city.";
				say "     Your instincts keep you moving as you travel farther and farther from the city, looking for a new safe territory to set up in, and it isn't long after you find a nice spot of forest to set up in that you realize just what your instincts were telling you. You find yourself grinning ferally as you stake out your new home and set up a proper den in the area, finding yourself enjoying the sensation of your belly swelling with new life. Before long you know that you won't be the only leopard in this area, and you will have some lovely little cubs to hunt and play with, and you are already enjoying picking out which of the unsuspecting males from the nearby towns will help give you your next litter and help you spread your wonderful feline species even further...";
		else:
			if Player is male:
				if Player is female:
					say "     When the military rescue teams find you, you are barely holding on to your sanity due to the extremely powerful sexual instincts of your new predatory body, and you are extremely grateful to them as they take you back to their camp so you can get some help. At the military camp, you find it harder than ever to resist spreading your infection amongst all the sexy soldiers and scientists, the sight of all the unsuspecting people wandering around sparking your new predatory instincts. You are careful to downplay this to the scientists that talk to you, but you are also eager for some manner of help, and so you bring it up several times while talking to them. They seem rather surprised by your honesty, and with your new sensitive senses you can tell they are definitely more than a little bit aroused by your new leopardlike body as well.";
					say "     Unable to let you go in good conscience given your admission, they keep you there on the base while they look into finding a possible cure for your overwhelming lust, or at least a way for you to function in normal society again. And while there is some talk of transferring you to a more secure isolation facility where some of the other more feral captives have been sent, you are more than able to use your sexy new body and their own response to your predatory scent to avoid that fate. It isn't much longer before several of the scientists and lab assistants give in to temptation and convince you to sate your ever-increasing lust with them. Your new sexual body finds their attention to be increasingly flattering as well, as the people you play with seem to become increasingly addicted to the powerful pleasure you share together.";
					WaitLineBreak;
					say "     Before long many of your so-called captors are starting to sport several feline features as well, much to your increasing amusement, and mild dismay, as they begin to enjoy their changes more and more. It is soon obvious that most of the scientists you have infected are no longer bothering to look for a cure, instead more interested in enjoying their new sexual instincts and ensuring that their changes aren't discovered. Of course, they ensure you have plenty of uninfected visitors as well, though after being locked in with you for a while, none of them remain uninfected for very long. Eventually you find yourself enjoying the situation just as much as they seem to be, your new predatory instincts enjoying the pleasure and the sex more than you ever thought was possible, and while you still retain some measure of restraint compared to the beasts inside the city, you find the spread of your leopardlike infection to be amazingly arousing as well.";
					say "     Unfortunately, the fun can't last forever, and when some of the scientists changes become impossible to hide any longer, they arrange your release while the military tries to deal with the sudden explosion of leopards in their midst, and their soldiers eager submission to the powerful predators. Leaving the camp behind, you find a smile tugging at your feline muzzle as you and a decent-sized group of people in varying stages of becoming leopards head out into the world. As you look for a new place for you and your fellow leopards to settle and begin to hunt for new converts, you realize they finally did find a way to help you deal with your new sexual instincts, and as you rub your feline belly with anticipation of all the little sexy leopard cubs you can look forward to in the future, you find yourself looking forward to sating those new instincts of yours as often as possible...";
				else:
					say "     When the military finally arrives to rescue the survivors, they are somewhat surprised by your leopardlike appearance, but end up taking you back to their camp with them anyways. You find your new predatory instincts aroused by all the sexy women wandering around the military camp, though you manage to restrain yourself from acting on them while their scientists try to discover if you are a threat or not. Not wanting to spend the rest of your life in some sort of confinement, you act nice and polite, and even ask about joining the military yourself at some point. Once their suspicions about you are put to rest however, they release you so they can deal with more dangerous matters within the city, just as you expected they would. Soon you are prowling down the streets of another city, your dangerous and sexy form attracting you plenty of attention as you try to figure out what to do with your life now that you are free.";
					say "     Prowling the bars and clubs is surprisingly amusing, and you find you enjoy the hunt and the chase as you seduce woman after woman at the clubs, spreading your leopard seed far and wide as you find a new partner to play with most every night. Eventually you manage to get a job at one of the clubs, as you prove to be such a big draw yourself, and you settle in for a while to enjoy yourself. Before long, many of the regulars at the club have also started to acquire some feline features, much to your amusement, and you enjoy staying there to ensure that there are plenty of well-bred leopardesses in the area that won't be forgetting you anytime soon. After a while, when the hunting in the area begins to get too easy, you begin to hunt for fresher hunting grounds and new clubs to prowl, eager to continue to enjoy your new more predatory lifestyle for many years to come.";
			else:
				say "     When the military finally arrives to rescue the survivors, they are somewhat surprised by your leopardlike appearance, but end up taking you back to their camp with them anyways. You find your new predatory instincts aroused by all the sexy men wandering around the military camp, though you manage to restrain yourself from acting on them while their scientists try to discover if you are a threat or not. You are careful to make sure that the scientists think you nice and tame, despite your predatory looks, once their suspicions about you are put to rest however, they release you so they can deal with the much more dangerous matters within the city, just as you expected they would. Soon you are prowling down the streets of another city, your dangerous and sexy form attracting you plenty of attention as you try to figure out what to do with your life now that you are free.";
				say "     Prowling the bars and clubs soon gets you all kinds of attention from those who find your predatory form to be strangely attractive, and before long you find yourself becoming increasingly popular among a certain crowd, and you rarely go home alone at night. Your popularity doesn't go unnoticed for long, and you eventually receive several offers to work as a model for several different companies. The modeling only increases your popularity, and soon you are enjoying a life of mild luxury as a feline model. You find your bodies['] appetites for sex are as large as ever, however, and you often play with many different sexy models whenever the opportunity presents itself, even transforming the best of them into sexy leopardmen themselves. The spread of leopardlike models and your ever-growing popularity only makes you grin with amusement as more and more time passes, and eventually people begin clamoring to grow a lovely spotted feline coat of their own... Spots are definitely going to be the 'in' thing this season.";

Leopardman ends here.
