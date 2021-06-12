Version 2 of Tyrannosaurus Male by Gherod begins here.

"Adds a male anthro Tyrannosaurus encounter to the Museum."

[ Version 1 - Created File ]
[ Version 2 - Lust Victory variant and more sex scenes ]

to say GenerateTrophyList_Tyrannosaurus_Male:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "tyrannosaurus male tooth" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (25 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "iron pipe" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Tyrannosaurus Male Wins:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if scalevalue of player < 2:
			say "     As you drop to your knees in front of the t-rex man, he immediately stops as he observes you, looking at him from a lower perspective, declaring your surrender intent, as you are left with no choice. 'That's where you should be, bitch. A much more fitting position for someone like you.' he says with a mocking tone, 'You're even too tiny to be of any use to me... But I still have something for you.' He then brings his hand over his crotch and unzips his pants before your eyes, releasing his thick and veiny cock which pops out heavily from its confines, hardening by each passing second. You are then pinned down helpless under his boot, an impressive weight that you cannot outmatch, no matter how much you struggle...";
			WaitLineBreak;
			say "     He then strokes himself, bringing his cock to full erection and tugs on his own nuts, which seem to be full. 'You should be thanking me for what you're about to get, runt.' he says, grinning at you with that impressive toothy smirk, jerking himself off at a rapid pace, truly enjoying the fact he is much stronger and much bigger than you, and you can only watch him pleasure himself as you remain completely at his mercy. Soon, the tyrannosaurus man begins to grunt and moan, jerking his hips together with his stroking motions faster and harder... 'Fuck yes... Open that mouth, you little bitch.' he orders, pressing his boot down on you, to the point it starts to hurt, and impatient, he shouts again 'I said, open up, bitch!', aiming his cock at your face...";
			say "     You have no other option other than to obey him, and you open your mouth as a generous thick load comes to greet you in abundance, covering your entire head as he makes sure you get every single drop of his spunk on you. 'Fuck yeaaah... Get it all over that bitch body, you little cunt. You like getting bathed in my jizz?' - he asks mockingly, as the last drops ooze out of his cock - 'Bet you're gonna come back for more like the cock addicted bitch you are. There's a lot more of that in these big balls, here.' Then, the dino man simply walks away, leaving you alone in a puddle of his man juices, used and forgotten.";
			WaitLineBreak;
			say "     It takes a while until you can clean yourself off and gather your things to leave, but you eventually do so. Hopefully no other beast will catch the scent of the cum that used to be all over your body just a while ago...";
			CreatureSexAftermath "Player" receives "Other" from "Tyrannosaurus Male";
		else if HP of Player > 0: [player submitted]
			say "     As you drop to your knees in front of the t-rex man, he immediately stops as he observes you, looking at him from a lower perspective, declaring your surrender intent... Which turns out to be a rush for him, as you notice his bulge twitching at the sight of a submissive like you. 'Hah! How pathetic, can't even stand on your own feet for one second after seeing me?' he asks with a mocking tone, bringing his hand over his crotch and unzipping his pants before you, releasing his thick and veiny cock which pops out heavily from its confines, hardening by each passing second.";
		else:
			say "     As you drop to your knees in front of the t-rex man, he immediately stops as he observes you, looking at him from a lower perspective, declaring your surrender intent, as you are left with no choice. 'That's where you should be, bitch. A much more fitting position for someone like you.' he says with a mocking tone, bringing his hand over his crotch and unzipping his pants before you, releasing his thick and veiny cock which pops out heavily from its confines, hardening by each passing second.";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 3; [adjust the latter number for the number of options]
		if randomnumber is:
			-- 1: [facefuck]
				say "     His large and powerful hand slips onto the backside of your head and pulls you to him, your lips coming to touch the gleaming tip of the muscular reptile's cock, which is throbbing hard by now. 'Open up, slut. Gotta take it all in.' he orders, now squeezing your jaw while grabbing his dick to slap you in the face repeatedly. It's a heavy one, and it does hurt slightly as he does it. 'It ain't gonna suck itself, bitch. Get to work!' The strong tyrannosaurus impatiently begins to thrust his member past your lips, pushing them apart with his length as it sinks inside, rubbing against your tongue and traveling deeper towards your throat as your skull is held in place.";
				say "     'Mmh... You like that dick, little slut?' His veiny cock continues to throb, its girth forcing your jaw to nearly dislocate in order to take its whole size, and you have no choice but to endure the whole ordeal. He continues to push it all the way in until his nutsack pokes at your chin and his meat threatens to occupy your esophagus, then slaps your face a bit too hard for your comfort. 'Yeah... you can take it all in, eh? Well, if you couldn't, I'd force it in, anyway.' Once he is done feeling up your oral depths, he pulls out, only to thrust in again, holding you still as he gets started on fucking your mouth. With your lips wrapped tight around the strong dinosaur man's meatlog, he takes a great amount of pleasure shoving it in and out of your mouth.";
				WaitLineBreak;
				say "     His relentless thrusting continues on for the next moments, as he grunts and taunts you. He slaps your face frenquently, and sometimes really hard, spits on your face and humilliates you, calling you all sorts of nasty names from [']bitch['] to [']cocksucker['], and everytime he does either of those, you can feel his member throbbing and pulsing, immensely turned on by all of it. It is certain that he gets off from treating you rough and dominating you, as his pounding movements increase in speed and force. 'What a fucking good throat. I should make you my personal bitch, taking my dick in you everyday... You'd like that, wouldn't you, you fucking slut?' he taunts, again with that mocking tone of his at the end, giving you a gentle stroke on the cheek... followed by a hard slap that nearly makes you choke on his dick.";
				say "     'Yeah... Since you've been such a good cocksleeve and I'm feeling really generous... I'm gonna let you drink my load. Sounds good, right?' says the reptile man, laughing to himself as he puts on his full effort at facefucking you, so much that you even feel the insides of your head bouncing as he holds you and thrusts into your throat. Soon, his balls are rising up and the cum gets pumped through his manhood, to be delivered down your throat and directly to your stomach, as he pushes his cock all the way in. Each throb is accompanied by a thick spurt of jizz that fills your belly with each passing second, a total of time through which you cannot even breathe. He only pulls out once the last drop of his load is safely deposited in you.";
				WaitLineBreak;
				say "     'You've been such a good [boygirl]... Like getting fed my jizz?' he asks mockingly, as the very last drops ooze out of his still half-hard cock - 'Bet you're gonna come back for more like the cock addicted bitch you are. There's a lot more of that in these big balls, here.' Then, the dino man simply walks away, leaving you alone with his own man juice leftovers still slipping from the corner of your mouth.";
				say "     It takes a while until you can clean yourself off and gather your things to leave, but you eventually do so. Hopefully no other beast nor mutant will be in your way...";
				CreatureSexAftermath "Player" receives "OralCock" from "Tyrannosaurus Male";
			-- 2: [cum on face]
				say "     'I've got a special something for you.' he says, as you are then pinned down under his boot, pressing down on your torso, at an impressive force that you cannot outmatch, no matter how much you struggle, at your current state... 'How much you like a free meal delivery?' You see what he means when he begins to stroke himself, bringing his cock to full erection and tugging on his own nuts, which seem to be full. 'You should be thanking me for what you're about to get, runt.' he says, grinning at you with that impressive toothy smirk, jerking himself off at a rapid pace, truly enjoying the fact he has the upper hand over you, and you can only watch him pleasure himself as you remain completely at his mercy.";
				say "     Soon, the tyrannosaurus man begins to grunt and moan, jerking his hips together with his stroking motions faster and harder... 'Fuck yes... Open that mouth, you little bitch.' he orders, pressing his boot down on you, to the point it starts to hurt, and impatient, he shouts again 'I said, open up, bitch!', aiming his cock at your face... and you have no other option other than to obey him. Opening your mouth, the next thing that hits you is his generous thick load that comes to greet you in abundance, covering your entire head as he makes sure you get every single drop of his spunk on you. 'Fuck yeaaah... Get it all over that bitch face, you little cunt. You like getting fed my jizz?' - he asks mockingly, as the last drops ooze out of his cock - 'Bet you're gonna come back for more like the cock addicted bitch you are. There's a lot more of that in these big balls, here.' Then, the dino man simply walks away, leaving you alone in a puddle of his man juices, used and forgotten.";
				WaitLineBreak;
				say "     It takes a while until you can clean yourself off and gather your things to leave, but you eventually do so. Hopefully no other beast will catch the scent of the cum that used to be all over your body just a while ago...";
				CreatureSexAftermath "Player" receives "Other" from "Tyrannosaurus Male";
			-- 3: [get fucked]
				say "     'Now, bend the fuck over and let me see that [if player is female]pussy, bitch[else]ass, punk[end if]!' he orders, as he walks up to you and swings his heavy foot-long of a throbbing meat against your cheek, effectively cock-slapping you so hard you fall to the side, hands on the floor and almost all on fours with the force alone. It is almost how he wanted you. Since you are already on the way to be bending over as he ordered, you readjust your position until your [if player is naked]naked butt[else]soon to be exposed butt, as he moves in to remove your lower gear,[end if] is turned towards him. Almost immediately after, you feel that warm rod land on top of your asscheeks as he examines your rear.";
				if player is female:
					say "     'Bitch, raise that ass so I can see your cunt, or you want me to do all the work?' he tells you, slapping your ass hard as he speaks, so you do your best to arch your back as much as you can. He is not the most patient fellow, either, so not soon after you are doing it, he is already grabbing your butt and giving you a lift himself. 'Nice and wet... Is that you happy to see me?' he teases you as he begins to rub his cock against your moist curls, letting you feel his dick pushing into your sex slowly as he buries inch after inch of manhood into you.";
				else:
					say "     'Bitch, you better spread those cheeks, or you want me to do all the work for you?' he tells you, slapping your ass hard as he speaks, so you do your best to show him your butthole, pulling those buttocks apart as much as you can. He is not the most patient fellow, either, so not soon after you are doing it, he is already grabbing your butt and spreading your cheeks himself. 'What a tight little pucker you've got... It's gonna feel so good around my cock...' he teases you as he begins to rub his dick against your anus, letting you feel it pushing into you slowly as he buries inch after inch of manhood deeper inside.";
				WaitLineBreak;
				say "     'Fuck yeah... I needed a little bitch like you to fuck silly... Bet you like this dick up your [if player is female]slutty cunt[else]tight ass[end if], eh?' he keeps taunting you, slapping your buttcheeks even harder than before as he proceeds to thrust into you, without any regard for your comfort. All he cares about is fucking your [if player is female]pussy[else]ass[end if] as hard as he can to get all the pleasure from it. His balls come swinging against you with each pounding as he picks up the pace soon enough, fucking you deep and hard with the strength of a dinosaur... which he kind of is. Grabbing your hips from behind, he adds the momentum to his thrusts and continues on fucking until your legs are shaking.";
				say "     The persistent dino man's stamina seems quite sizable as he makes use of your [if player is female]womanhood[else]hole[end if] with all the vigor he can muster, calling you all sorts of nasty names from [']bitch['] to [']cocksucker['], and everytime he does either of those, you can feel his member throbbing and pulsing, immensely turned on by all of it. It is certain that he gets off from treating you rough and dominating you, as his pounding movements continue to increase in speed and force. 'You're such a good slut... How does that dick feel in you? Could make you my sex slave... I bet you'd like that, you little bitch!' he goes on, still fucking you as hard as he can, slapping your asscheeks hard and treating you like a total [if player is male]man [end if]whore.";
				WaitLineBreak;
				say "     But all things have to come to an end, and his draws near. Eventually, the anthro tyrannosaurus' cock begins to throb massively, and his rhythm does not break for even a second, not until you feel his warm load coating your inside as it is so generously shot, spurt after spurt, as the dino man grunts and moans, enjoying his climax to the last moment. After you have earned a good fuck and a hard spanking from the t-rex man, he pulls out and stands up to leave. 'Bet you're gonna come back for more like the cock addicted bitch you are. Don't worry, once you do, there's a lot more of that in these big balls, here, to breed you.' Then, the dino man simply walks away, leaving you alone as his man juices leak from your [if player is female]lower lips[else]hole[end if], used and forgotten.";
				if player is female:
					CreatureSexAftermath "Player" receives "PussyFuck" from "Tyrannosaurus Male";
				else:
					CreatureSexAftermath "Player" receives "AssFuck" from "Tyrannosaurus Male";

to say Tyrannosaurus Male Loses:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if fightoutcome is 11: [submitted by libido victory]
			say "     With how sexy and tantalizingly seductive your moves were, you managed with your last few to put an end to this fight, having turned on the dino man so much that he had just sank to his knees, unzipped his pants and took his throbbing rod in hand. You made him become debilitatingly aroused, so much in fact that he dropped all the will to attack you, as shown by his lusty gaze over your body. 'Fuck... How the... How are you so fucking sexy?!' he asks, while giving that thick foot-long of a dick some mindless strokes, admiring every inch of your figure as if you were some [if player is female]goddess[else]god[end if] of love. 'My dick's so hard it gets hard to fucking think... Because of a little sexy bitch like you...! Fuck! Why don't you come here and finish the job?!'";
			say "     You could do as he says, but it is you who is in total control of the situation...";
		else:
			say "     After delivering the final strike on the dino man, he grunts in frustration, as he is unable to fight back due to how much you have done to hinder him. 'Grr! How can a little bitch like you do so much...! This time you've won, but the next... I'm gonna make you bend over...!' he taunts you, amidst more grunting, but those are no longer threats you should worry about. After all, you have defeated him, and that means you get to have your way with the anthro tyrannosaurus man.";
		LineBreak;
		say "     [bold type]What do you want to do with him, if anything?[roman type][line break]";
		say "[TyrannosaurusMaleVictorySexMenu]";

to say TyrannosaurusMaleVictorySexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tie him up and edge him";
	now sortorder entry is 1;
	now description entry is "Use your hands to keep his dick hard and on edge";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a pity blowjob";
	now sortorder entry is 2;
	now description entry is "If you enjoy sucking a dick, why not take the chance";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 3;
	now description entry is "Give him what he really wants... in your way";
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
				if (nam is "Tie him up and edge him"):
					say "[TyrannosaurusMaleVictorySexEdging]";
				else if (nam is "Give him a pity blowjob"):
					say "[TyrannosaurusMaleVictorySexBlowjob]";
				else if (nam is "Ride his cock"):
					say "[TyrannosaurusMaleVictorySexRideCock]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Maybe he is not worth your attention at all, so you just leave him ranting and shouting all he wants, not even minding any additional words he says, and just continue what you were doing before all this.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say TyrannosaurusMaleVictorySexEdging:
	say "     You do have an idea of what to do to the strong dinosaur man that would be fun, and that involves getting close to him. However, such a powerful reptilian person could prove a challenge in case things get rough, but to your fortune, he happens to have some stuff with him that you can use to tie his hands, like a rope! So, you get behind him, use the fact he is still weak from the fight, grab him by the wrists and tie his hands up with the best of your abilities, to ensure he does not break free during the time you are going to spend with him. Obviously, he offers some resistance and complains, but nothing you cannot control. 'Hey! Stop that! No one ties me up, what the fuck are you doing?!'";
	say "     He really poses no meaningful threat to your efforts at making him stay still, and once you are satisfied immobilizing him the way you want, you are fully free to touch and feel up that scaled musclebound figure of his. Though you know he could just try to bite your hands once they lay on his chest, he does not... Meaning that perhaps he likes this a bit. 'H-hey, come on... Did you really need all of this to touch me like that?' Sure, he does not seem comfortable, but the bulge in his pants talks for itself. Slowly, you reach down his waist and begin to unzip the fly, to soon to reveal the thick veiny cock that comes popping out of its confines in earnest arousal.";
	WaitLineBreak;
	say "     Once you've got that meat in your hands, you start stroking it steadily, careful and gentle touches to bring his cock to full erection. It does not take long, either. Soon, the beast is grunting to your caresses as you rub his dick just enough to get him built up. You cannot help but notice the heavy hanging nuts underneath, looking so deliciously full... And you won't empty them for a while. First, you have to keep working that shaft, rubbing your fingers all over the veiny thick cavernous body which only throbs in response, and then only so slightly pick up the pace. You want him to steadily approach the edging point without giving him too much stimulation, so that every motion delivers exactly the amount of pleasure you want to deliver.";
	say "     'Ungh... Fuck... you...! Just make me cum, already!' he says, as an order rather than a request, but you will not have it. Well, at first, you act like you are going to let him, as you stroke his cock faster and harder, your hands rubbing up and down along his thick shaft with perseverance, and as he begins to give signs that he is approaching the point of no return... You abruptly stop, only giving him the slowest jerking possible, then stop and just squeeze his pulsing rod, to which he grunts in frustration. 'FUCK...! Just make me cum! What the fuck are you doing...! C-come on...' Of course, you let him know you simply want to enjoy the size of his rock hard cock in your hands a bit more, and he does not even know how to respond. He just remains there, breathing in a joy he does not want to admit, with his manhood throbbing so much between your fingers.";
	WaitLineBreak;
	say "     But enough is enough. Figuring that you have had enough after a few minutes edging the large reptilian, you decide to allow him to cum. Fast stroking motions and tugging on his big balls does the trick soon enough, and he quickly makes it to the edge once more. 'Fuck, please, make me cum... I fucking need to cum...!' his words reach your ears sounding like they are being told by someone in an almost mindless state, which is pure lust that the anthro tyrannosaurus is feeling. Perhaps it is time to let it happen, after all, and not long before you set his climax loose, he explodes a generous load all over his chest and rippled abs, a sticky mess that comes out hard for a good while as each shot, powerfully launched, is delivered throughout his orgasm.";
	WaitLineBreak;
	say "     'Oh fuck... You... Little... Next time we meet, I'm gonna fucking bend you over and make you take it... You hear me?!' shouts the dinosaur man amidst heavy breathing and, for some reason, not sounding all that intimidating, now.";
	say "     Perhaps you should leave him tied up like he is and leave before he tries to turn the tables. You have an idea that he would try to, given the chance. And he really does not look happy once you turn tail to return to your own affairs, cursing and shouting at you as you disappear in the distance, leaving him behind.";

to say TyrannosaurusMaleVictorySexBlowjob:
	say "     You do have an idea of what to do to the strong dinosaur man that would be fun, and that involves getting close to him. Though, as soon as he knows what you intend to do, he shows you a smile... as toothy and as scary as it looks, but it is a show of joy. 'Ah, you wanna suck my dick? By all means, come here! Bet you can't resist it...' he says, teasing you as he takes his cock in hand and swings it around, successfully drawing your eyes as you get down to begin working on it. At first, you use your hands to feel that foot-long of a cock, girthy and meaty, throbbing and pulsing in your grasp as you give it a few strokes. Only then do your lips reach for it, giving it a kiss before your tongue joins the action.";
	say "     Licking it all over has the dino man grunting impatiently, though you know by how hard he is that he enjoys having his dick played with like that. 'Hope you're gonna actually suck it, at some point...' he says, though you want to take your time to truly appreciate his dick and hanging heavy balls as much as you would like, feeling his junk all over before finally beginning to slide the shaft past your lips. 'Mmh, fuck yeah... Bet you wanted to do that since the first moment you saw me...' he continues to tease you with his natural cockiness, but you know better than to pay mind to anything he says. You are here to enjoy his cock in your way, and that is what you do, even if it means that you are pleasing him a lot.";
	WaitLineBreak;
	say "     His meat tastes good, leaking lots of precum as you continue to suck on it, pulling it as deep as you can while fondling his sack. You feel his hand brushing against your head, but he does not do anything with it, only lets it lay on the back of your skull and follows your movements. The blowjob you are giving him seems to be enough to make him happy, as shown by how hard his erection is. 'Could've just dropped the fight... I'd have given you my dick, gladly...' he mutters, and you continue putting on your best efforts at sucking his dick, to the point you start feeling it throb even more. His grunting intensifies as you bring him closer and closer to the point of no return, and you definitely intend to cause him to shoot that load.";
	say "     'You're gonna make me cum... Fuck...' warns the dino man, which is exactly what you wanted. Soon enough, a couple more tongue moves and sucking with your lips sets his orgasm, then you pull out immediately, grab his dick with your hands and stroke it as fast as you can, covering the anthro t-rex man with his own spunk. 'Fuuuuck!' he shouts, groaning and moaning as his climax goes on, spunk after spunk landing on top of his scales. It was quite a load! 'Could've fucking swallowed it! I'm fucking drenched, now...!'";
	WaitLineBreak;
	say "     While he complains, he certainly seemed to have enjoyed your treat, so you part ways for now and leave him behind, covered in his own cum... He is not happy about it, but you are, and that is what matters.";
	CreatureSexAftermath "Player" receives "OralCock" from "Tyrannosaurus Male";

to say TyrannosaurusMaleVictorySexRideCock:
	say "     You do have an idea of what to do to the strong dinosaur man that would be fun, and that involves getting close to him. Though, as soon as he knows what you intend to do, he shows you a smile... as toothy and as scary as it looks, but it is a show of joy. All is followed up by you moving towards him with your bottom half exposed and eyes focused on his throbbing member, which he just took in hand. 'So you wanna sit on my dick? Could've said that right from the start... Bet you were thinking about it the moment you saw me.' he says, teasing you as he swings his dick around, drawing your gaze to wherever it moves. Figuring that you just want to get started with this, you begin to crouch down, grab his manhood and point it towards [if player is female]your wet labia[else]your pucker[end if].";
	say "     He is eager to feel his pulsing member inside you, but you want to take your time to feel it stretch your entrance, so you slowly have it slide into you while he leans his head back and moans through the entire time, right until it goes fully inside you, with how much you can hold. 'Mmh... Yeah... Feels so good...' At first, your movements are slow and steady. Squatting on his cock, you keep moving up and down to get used to his size, then once it becomes easy for you, it is time to pick up the pace. You give him quite a view of your own body as you bounce on his erection, the girthy meat feeling like it pushes through the insides of your [if player is female]pussy[else]ass[end if], and it definitely keeps on throbbing, a sign that your now more willing partner is enjoying his time.";
	WaitLineBreak;
	say "     'Fuck yeah... Of course you'd love riding me...' he says, in an attempt to provoke you, but you know better than to pay mind to anything he says. You are here to enjoy yourself, and part of that enjoyment comes from having that big hard cock inside you. As you continue to jump on him, your rhythm intensifies as you begin to bring him closer and closer to orgasm. A hand around his nuts, which so happily swing around as he, too, joins your efforts with some increasingly more intense thrusts, is enough to send him towards the edge. Though, you do not want it to happen quite then, and alternating your pacing is a good way to keep him just steadily approaching the point of no return. 'I'm gonna fill you up, bitch...'";
	say "     While he chuckles and enjoys calling you demeaning names, despite his current position, you keep working on his dick with your [if player is female]pussy[else]ass[end if] until his grunting gets louder. 'Nngh, fuck...! Gonna cum inside you... I'm fucking gonna breed you...!' You do feel his manhood throbbing like crazy while inside you, and soon, you feel his strong hands grabbing your hips and holding you still as he buries as much of his dick as he can deep inside you. It is not like you were going to stand up anytime soon, but it clearly shows how much he gets off from just the idea of filling you up with his spunk. By now, his full load is being delivered right up your [if player is female]womb[else]bowels[end if], spurt after spurt of warm seed coating your insides.";
	WaitLineBreak;
	say "     As his orgasm goes on, yours is also set off, eventually. You cannot help but [if player is male]cum all over yourself and the dino man as you stroke your own [cock of player] dick[else]quiver as this powerful wave of pleasure shakes you around and all over[end if]... and right until he finishes his generous deposit of creamy seed. 'Mmh... fuck... Why did you fight me, then? Could've just said you wanted my dick, I'd have given it to you... gladly.' he says with a mischievous chuckle. For now, you are pretty much done with the male anthro tyrannosaurus, so you prepare to get up and be on your way.";
	say "     Seems like your former enemy was left happy and satisfied, he does not even curse at you as you leave him behind.";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Tyrannosaurus Male";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Tyrannosaurus Male";

to say Tyrannosaurus Male Desc:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     In front of you stands a tall anthropomorphic dinosaur man, with the head of a tyrannosaurus, to be precise. His musclebound figure is covered by a black tank top, green camo pants below and combat boots, but as he seems to be missing his tags, you cannot know for sure if he used to be a soldier or simply scavenged some unfortunate human's equipment. He seems to have found an iron pipe, which he is arming himself with, walking towards you ready to strike. With a cocky, toothy grin, which actually looks quite scary given the fact his mouth features many sharp teeth, he eyes you from head to feet as he throws a taunt. 'Looking to get beaten up and fucked like the rest of them? You should just be on your knees now, bitch.'";
		say "     The dino man does not waste any time and rushes to attack you!";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Tyrannosaurus";
	add "Tyrannosaurus Male" to infections of ReptileList;
	add "Tyrannosaurus Male" to infections of FurryList;
	add "Tyrannosaurus Male" to infections of NatureList;
	add "Tyrannosaurus Male" to infections of MaleList;
	add "Tyrannosaurus Male" to infections of BipedalList;
	add "Tyrannosaurus Male" to infections of TailList;
	now Name entry is "Tyrannosaurus Male";
	now enemy title entry is "";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He leaps forward and goes for a bite on you with a big chomp.[or]The dinosaur man charges and swipes towards you with one clawed hand.[or]The anthro tyrannosaurus swings his large steel pipe towards you![or]He surprises you with an unexpected kick on your leg joint, which nearly knocks you over.[or]The dino man snaps at you with a fast bite, his many sharp teeth cutting through your skin like needles.[or]He slips behind you, grabs you with his arm around your neck and tries to incapacitate you! Fortunately, you manage to escape his grasp, for now.[at random]";
	now defeated entry is "[Tyrannosaurus Male Loses]";
	now victory entry is "[Tyrannosaurus Male Wins]";
	now desc entry is "[Tyrannosaurus Male Desc]";
	now face entry is "scaly, resembling an angry pre-historic tyrannosaurus, with a fierce and dangerous look, small dinosaur eyes, a long reptilian snout and a large mouth covered with many very sharp teeth";
	now body entry is "reptilian, covered in powerful muscles, with sharp claws in place of nails";
	now skin entry is "dark green and scaled";
	now tail entry is "You have a long scaly tail swinging heavily behind you.";
	now cock entry is "[one of]thick[or]uncut[or]mostly human-looking[at random]";
	now face change entry is "it flows into a reptilian shape, a long snout with a big mouth covered by many sharp teeth. It gives you a very angry and intimidating look";
	now body change entry is "your bones creak and crack as they morph into a very powerful and muscular reptilian body";
	now skin change entry is "very small scales of a dark gree color flow over your body";
	now ass change entry is "a long reptilian tail emerges from above your ass, twitching about lightly";
	now cock change entry is "your shaft swells and thickens with sudden arousal, attaining a lighter green tone along its foreskin";
	now str entry is 29;
	now dex entry is 15;
	now sta entry is 19;
	now per entry is 13;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;
	now lev entry is 8;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 21;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Museum";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 30;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "tyrannosaurus male tooth";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "tyrannosaurus man-milk";
	now CumItem entry is "tyrannosaurus cum";
	now TrophyFunction entry is "[GenerateTrophyList_Tyrannosaurus_Male]";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]scaled[or]muscled[or]strong[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "reptilian";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"tyrannosaurus male tooth"	"A single sharp tooth from an anthro male tyrannosaurus. Just rubbing the tip slightly leaves a lingering sensation of pain."	0	tyrannosaurus male tooth

tyrannosaurus male tooth is a grab object.
It is temporary.
tyrannosaurus male tooth is infectious.
Strain of tyrannosaurus male tooth is "Tyrannosaurus Male".
Usedesc of tyrannosaurus male tooth is "[TyrMToothUse]";

to say TyrMToothUse:
	say "Holding the tooth between your fingers, you gently press your fingertip against its sharp tip. It pierces through your skin like a needle, and strangely, it disintegrates after a while, your skin having absorbed some of its properties.";

instead of sniffing tyrannosaurus male tooth:
	say "It smells like the inside of a beast's mouth. Not very pleasant.";

Table of Game Objects (continued)
name	desc	weight	object
"tyrannosaurus cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Tyrannosaurus Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	tyrannosaurus cum

tyrannosaurus cum is a grab object.
tyrannosaurus cum is cum.
tyrannosaurus cum is infectious.
Strain of tyrannosaurus cum is "Tyrannosaurus Male".
Usedesc of tyrannosaurus cum is "[tyrannosaurus cum use]";

to say tyrannosaurus cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing tyrannosaurus cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"tyrannosaurus man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Tyrannosaurus Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	tyrannosaurus man-milk

tyrannosaurus man-milk is a grab object.
tyrannosaurus man-milk is milky.
Purified of tyrannosaurus man-milk is "distilled milk".
tyrannosaurus man-milk is infectious.
Strain of tyrannosaurus man-milk is "Tyrannosaurus Male".
Usedesc of tyrannosaurus man-milk is "[tyrannosaurus man-milk use]";

to say tyrannosaurus man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the reptilian man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing tyrannosaurus man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Tyrannosaurus Male ends here.
