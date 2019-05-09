Version 3 of Brian by Vinickus begins here.
[ Version 2 - Sex w/Brian - finally - added by Stripes]
[ Version 3 of Brian By Vinickus/Asbeoth begins here.]

"Adds a single-mindedly determined rhino named Brian to Flexible Survival."

[ HP of Brian                               ]
[ 0 = Not talked to him                     ]
[ 1 = Talked to him                         ]
[ 2 = Pounced and had sex                   ]

[ XP of Brian (anal sex on Brian)           ]
[ 0 = Brian not yet fucked                  ]
[ 1 = Offered to fuck him, but lost         ]
[ 2 = Brian has been fucked                 ]
[ 3 = Brian has been fucked again           ]

[ Brian's stats                             ]
[ cock length = 18 inches                   ]
[ cock width (ball size) ~ 16               ]
[ other stats comparable to Rhino infection ]

[ BrianRelationship                         ]
[   0: Haven't met or talked to             ]
[   1: Player met Brian                     ]
[   2: Player talked to Brian               ]

WallStanding is a number that varies. WallStanding is usually 1.
BrianVisit is a number that varies.
BrianRelationship is a number that varies.
BrianOral is a number that varies.

Section 1- Brian

Table of GameCharacterIDs (continued)
object	name
Brian	"Brian"

Brian is a man.
The description of Brian is "[BrianNPCDesc]".
The conversation of Brian is { "Ouch!" }.
Brian is in Border Wall.
The icon of Brian is figure of Brian_icon.
The scent of Brian is "     Brian smells like a man's man, masculine, musky, and sweaty.".

after going to Border Wall while BrianRelationship is 0:
	say "     You see an exceptionally large and sculpted rhino man, entirely consumed by one of the more unique infections running around. He's currently standing over by the massive wall next to the zoo, right in front of a large cluster of cracks arcing over the structure. The cracks shoot out over a good ten-foot radius, and you wouldn't be surprised if he was the cause of all that damage, him looking like an eight foot linebacker and all. However, he still has more muscle than a normal human could ever manage, linebacker or no. Then you remember that 'normal' is all relative now, and that's made even more obvious the longer your eyes sweep over the male.";
	say "     His giant body, in addition to defying many standards you had for amount of muscle possible, has skin you'd never expect a person to have: gray, rough looking leathery stuff. Even more parts of him surprise you though, like his shoulders and hips, which carry what looks to be armor, but organic, almost like chitin. One thing that isn't so unexpected, however, is how unsteady he is, possibly because of the fact that he is trying to balance such a large form on just two hooved feet. Above his hooves and past his muscle packed legs, a long, thick cock hangs over his baseball-sized testicles, knocking against his upper thighs with an almost audible slap of flesh on flesh. His face is like that of a rhino, stretching out into a muzzle that carries the same rough, almost armored look of the other parts of his body. Of course, he wouldn't be much of a rhino if he didn't have a bony horn protruding from right between his wide nostrils.";
	LineBreak;
	now BrianRelationship is 1;
	say "     As you get closer, you can see said nostrils expanding and contracting rapidly, for a reason you can't discern yet, not until you see his left hoof scrape across the ground over and over again, his muscles tensing, his head lowering, and then his body charging forward and slamming into the wall, causing rocks and debris to clatter off the slightly slanted structure.";
	now BrianRelationship is 1;

after going to Border Wall while BrianRelationship is 1:
	say "You see the rhino panting yet again as you watch him continue to pound the wall.";

to say BrianNPCDesc:
	if debugactive is 1:
		say "DEBUG -> BrianRelationship: [BrianRelationship], HP: [HP of Brian] <- DEBUG[line break]";
	say "     The sweaty rhino stands there watching you with his gleaming, blue eyes. His shoulders raise and lower as he pants, still not taking his eyes off you for a second, all too content to glare at you with a mix of lust and interest. Even though he breathes almost straight towards your face, you smell nothing foul, in fact, it smells a little good, as if he's managed to keep his oral hygiene up. However, it doesn't look like he has any kind of supplies other than food in his vast... homey field. You chock it up to nanites... or something even stranger, and move on.";
	say "     You see his form in all its glory when you look over the rest of his ripped form; down his eight-pack, over his Adonis belt that points right to his almost equine cock, eyes hovering over it before they continue to sweep over his muscled thighs, and finally down his defined legs and to his glossy, gray hooves. He's a hunk, that's for sure, and his chitinous shoulder 'pads' make him seem almost like a football player. And even though you can't see him from behind right now, you already have his muscled back and bubble-butt ingrained in your memory. His face is like that of a rhino, stretching out into a muzzle that carries the same rough, almost armored look of the other parts of his body. Of course, he wouldn't be much of a rhino if he didn't have a bony horn protruding from right between his wide nostrils.";
	LineBreak;
	if WallStanding is 0:
		say "You see Brian leaning against the damaged barrier wall, the hole next to him large enough to fit just about any living thing through it.";

Section 2 - Talk

Instead of conversing the Brian:
	if BrianRelationship is 0: [error]
		say "     <ERROR! Brian's variables are not properly set. Please report this on the FS Discord and quote this number: BrianRelationship: [BrianRelationship]>";
	else if BrianRelationship is 1: [first talk]
		say "     'Huh?' The large rhino man stops staring at the wall for a minute, his eyes darting around until they finally focus on you. 'Oh, hey. Not a good idea to go and sneak up on a guy like that,' he says, pushing a fist into the palm of his other hand, the action releasing several audible cracks before he mirrors the movement with his off hand, drawing out more sounds of knuckles cracking. He then precedes to look back at the cracked area of the wall a second later. 'The name is Brian, and you can, I'm sure, plainly see that I had a bit of a run-in with a rather unique mutant....well, I guess he more ran into me,' Brian chuckles lightly, his gray skin seeming to flush red in embarrassment, a jerking movement causing you to flick an eye to his groin.";
		WaitLineBreak;
		say "     'I'm sure a person of your ";
		if bodyname of Player is "Human" and player is pure:
			say "resistance,' ";
		else:
			say "curiosity,' ";
		say "he begins as he gestures at his large, rhino-like form, 'has seen things like this, and it's a big change no matter who you are. I mean, I wasn't a small guy before all of this, but now. I mean damn, right?' Brian chuckles out with a bit of tainted amusement. 'Some parts of it can be a bit distractin['], if ya know what I mean... but hey, at least I'm ripped,' he says while flexing.";
		say "     'I should be able to get us out of here right quick with this much muscle!' The excited rhino man shouts, 'I mean, ya know the military is watchin['] all the regular ways out of the city, but way I figures it, they won't be watchin['] this concrete bit. So once I crush this concrete bit into smaller bits, it'll be clear sailing from there!' Brian yells excitedly, pumping himself up to charge. He then turns back to the wall, lowers his head, and rams it again. The impact sends him reeling back from the wall, but beyond that the impact does little more than make him shake his head. You give one more glance to the wall, and can almost swear the cracks are thicker now, but that seems unlikely.";
		now BrianRelationship is 2; [The player has talked to him at least once]
	[else if BrianRelationship is 2:
		say "     ";]
	else if BrianRelationship > 1:
		say "     [one of]'One more should do it!' he says as he charges the wall.[or]'I'll have us out of here in no time!'[or]Brian is too busy holding his head from his last run at the wall to talk to you right now.[or]'Watch this one!' he says as he charges.[or]'Whoa,' Brian mutters as he reels back from the wall. 'I can hear magenta...' he mutters, and you decide it might be best trying to talk to him later.[or]'Chaaaaarge!'[or]'Hey, haven't I seen you somewhere before?' Brian asks blearily, his eyes unfocused as he tries to think.[or]'For the Horde!' Brian shouts as he leads a particularly vigorous charge at the wall. Sadly, the wall seems unimpressed at this impassioned cry, remaining standing, although Brian doesn't as he lands hard on his ass.[or]'If ya are just gonna stand there and watch, ya could like do some cheering or something,' Brian says as he eyes the wall again.[or]'Eat this, wallface!'[or]'Dude, you don't think all this headbanging is gonna hurt my brain any do yas?'[or]'Die concrete!'[or]'Whoa, I can still hear my brain ringing from that last hit...'[at random]";

Section 3 - Sex

the fuckscene of Brian is "[attemptsexwithbrian]".

to say attemptsexwithbrian:
	if Player is neuter:
		say "     You consider asking the rhino man for sex, but you can't see yourself being able to tempt him away in your current, genderless state.";
	else if BrianRelationship is 1: [Met but not talked to]
		say "     The rhino is repeatedly charging headlong at the concrete wall with all his might. You should probably talk to him and see what's up before blindly offering sex to this strange and possibly dangerous fellow.";
	else if lastfuck of Brian - turns < 3: [He got fucked within the last 9 hours]
		say "     '[one of]Mmmm... that sounds kinda tempting, but this wall ain't gonna knock itself down[or]Sure. Lemme just finish up with this first. Shouldn't be much longer[or]Not tonight. I've got a headache, honey[or]Just a few more hits first[or]Not today, wall!' he growls, pointing angrily at it and seemingly ignoring you. 'You're goin['] down[in random order],' he says as he lines up for another charge at the wall.";
	else if BrianRelationship >= 2 and XP of Brian is 0: [He has been talked to at the very least]
		if Player is female and Breast Size of Player > 2:
			say "     'Oh, hello there pretty lady,' the rhino almost whistles out. After he finishes talking, the big muscled man then turns to drink in your feminine form, one of his hooved feet scraping lightly across the ground. 'I'm glad to see you back, but how I didn't notice how fine you were before, I'll never.' Brian just glares at you as his hoof scrapes across the ground faster and faster, his cock soon joining as another obvious sign of arousal. Content with his displays of need, you walk over to him, his big, meaty hands helping you out of your gear, while his naked form rubs and grinds at your own throughout. With great speed the clothing is thrown off to the side, leaving you grinding into each other's bodies, both groping and kneading at each other as time goes on. Your eyes meet after several minutes of exploration, his hands gripping at your breasts as you begin to wonder about the main course.";
			say "[briansexmenu]";
		else:
			say "     'Sorry dude, but I only like to fuck the ladies. Well... I think anyways, it can be hard to remember sometimes,' Brian says in an absentminded manner as he stares at the wall. Brian hesitates for a moment as he eyes you though, clearly tempting the hard-headed mutant. Even as he moves back into charging position, he glances back at you and is uneven of the mark. Seeing your opportunity, you rush after him. A few paces behind, you end up tackling him down while he's dazed after running into the wall. Pinning him beneath you, you give him an aggressive kiss while getting into position atop him.";
			if Player is male:
				say "     [bold type]What do you want to do with the rhino now?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Fuck him!";
				say "     ([link]N[as]n[end link]) - Ride his cock!";
				if Player consents:
					LineBreak;
					say "[sexwithbrian00f]";
					now XP of Brian is 1;
				else:
					LineBreak;
					say "[sexwithbrian00r]";
			else:
				WaitLineBreak;
				say "[sexwithbrian00r]";
			now XP of Brian is 1;
			now lastfuck of Brian is turns;
			infect "Rhino";
	else if BrianRelationship >= 2 and XP of Brian >= 1: [He's been talked to and fucked at least once]
		say "     'Hmmm... It was awfully nice when you helped me out earlier. You could be onto something,' he says, rubbing his head. 'I could use a bit of a fuck break to catch my breath.' Steadying himself by putting his meaty arms around you, he helps you with your gear while giving you a kiss. You run your hands over his tough hide, finding the sensitive spots of his nipples, ass, cock and balls. As you get him good and riled up, you consider how you'd like to have some fun with the good-natured hunk.";
		say "[briansexmenu]";

to say briansexmenu:
	setmonster "Rhino";
	choose row MonsterID from the Table of Random Critters;
	say "     What do you want to do with Brian?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow him";
	now sortorder entry is 1;
	now description entry is "Suck the rhino's cock";
	[]
	if Breast Size of Player > 2:
		choose a blank row in table of fucking options;
		now title entry is "Titty-fuck";
		now sortorder entry is 2;
		now description entry is "Press his cock between your jugs";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked - vaginal";
		now sortorder entry is 3;
		now description entry is "Ride his cock";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked - anal";
		now sortorder entry is 4;
		now description entry is "Have the rhino pound your ass";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 5;
		now description entry is "Stuff the rhino's ass";
		if Cock Length of Player > 8:
			choose a blank row in table of fucking options;
			now title entry is "Frottage";
			now sortorder entry is 6;
			now description entry is "Grind and stroke your cocks against one another";
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
				if nam is "Blow him":
					say "[sexwithbrian01]";
				else if nam is "Titty-fuck":
					say "[sexwithbrian02]";
				else if nam is "Get fucked - vaginal":
					say "[sexwithbrian03]";
				else if nam is "Get fucked - anal":
					say "[sexwithbrian04]";
				else if nam is "Fuck him":
					if XP of Brian is 0 or XP of Brian is 1:
						say "[sexwithbrian05_prelim]";
					else:
						say "[sexwithbrian05]";
				else if nam is "Frottage":
					say "[sexwithbrian06]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the rhino, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say sexwithbrian00f:		[initial sex w/Brian - fuck him]
	say "     Wanting a go at the muscly rhino's ass, you raise up his hips and get your cock lined up between those firm cheeks. Clearly pent up, his cock twitches and slaps against his belly, drooling quite a bit of precum even before you've thrust into him. Still in a bit of a daze, he releases a confused groan as your [cock size desc of Player] [cock of Player] manhood pushes its way into his near-virgin ass. He's delightfully tight and his strong muscles grip tightly around your thrusting rod.";
	say "     As you expected, now that he's found himself with a horny rhino thrusting into him, he's more than willing to enjoy it. His meaty hands move to his dark gray shaft and start stroking it. He's better hung than the other rhinos running around here and the sight of him pumping at that eighteen inch member turns you on all the more. Leaning in, you give his rock-hard shaft a kiss on its drooling glans as the sexy male holds it up for you. You are treated to a taste of his musky pre, its taste strong with masculine virility thanks to its long need for release.";
	WaitLineBreak;
	say "     With the overloaded state of his balls, he ends up getting off a little sooner than you may have liked. And needing that release more than he realized, his load is a massive one when it comes - thick and heavy blasts going on for a minute or more that splatter his face, the grass behind him and the wall he's been so aggressively ramming. Between the sight of that and the way his inner muscles clamp down around you like a vice, you end up popping off partway through his release, filling his ass with your [Cum Load Size of Player] load. This leaves him flopped out on the grass, messy with his seed and leaking yours from his creamy pucker.";
	say "     'Now, that wasn't half-bad. Certainly feels lighter in there,' he adds, rubbing his balls. 'I should be able to get a good head of speed up now,' he says as he starts to rise. Before he can go charging off, you hold him back for a brief while with a passionate kiss followed by some licking to help get the worst of the sticky mess off his face and horn.";

to say sexwithbrian00r:		[initial sex w/Brian - ride him]
	say "     Wanting the muscly rhino's cock in you, you grab it and grind down onto it. Clearly pent up, it feels as hard as the wall he's been hitting. With a [if Player is female or the player is twistcapped]moan of pleasure [else]groan of difficulty[end if], you pop the dark gray shaft into your [if Player is female]juicy[else]tight[end if] hole. It is thick and filling, forcing your inner walls to stretch and shift to take it all. Better hung than the other rhino men in the zoo, he's got quite the large horn to take. Releasing a throaty moan, you bounce up and down in his lap, doing your best to get it all.";
	say "     As you expected, now that he's found himself with a horny rhino on his cock, he's more than willing to enjoy it. His meaty hands grab your hips and his shaft throbs inside you. Brian fucks you with the same single-minded enthusiasm as he did with battering the wall. Leaning in, you give him another kiss, this one more passionate, and grind your hips over his rock-hard pillar.";
	WaitLineBreak;
	say "     With the overloaded state of his balls, the ride is a little shorter than you may have liked, though that is counterbalanced by Brian's zeal. And needing that release more than he realized, his load is a massive one when it comes - thick and heavy blasts going on for a minute or more. You're left rounded in the belly even though much of it's leaked out of your overstuffed hole. Grunting and panting, the buff rhino makes a few last thrusts even after his orgasm has finally stopped. He gives you a little while to recover before helping you off his virile rod. Helping you away from the wall, he turns back to his foe and attacks it again with a fresh charge.[impregchance][impregchance]";

to say sexwithBrian01:		[oral on Brian]
	if BrianOral is 1:
		say "     With an excited snort, the rhino puts a hand around his meaty rod and points it to your mouth as you kneel down. You place a hand on his plump orbs and rub them as you start licking along his thick shaft. Twirling your tongue over his glans, you gather up the gooey pre that wells up from it, and discover his rich and musky taste. You get a noseful of his strong musky scent as well, your nose close enough to his virile manhood to pick up his manly smell. Add to that the growing scent of his exertion, and you find your mind fully submitting to this muscular stud: his smell overriding any thought of stopping your ministrations.";
		say "     Even as aroused as you are, it takes some effort to get his impressive cock into your mouth and down your throat, but your horny dedication eliminates any thought of giving up or slowing down. Eventually, your face is buried in his crotch and his heavy balls are nestled against your chest. Having succeeded, you slowly pull back and forward again, gradually increasing the pace as you bob over the gray pillar of meat.";
		WaitLineBreak;
		say "     Brian pants and grunts happily, his strong hands surprisingly tender as he caresses your head. As his moans of pleasure rise, you can tell he's getting close and begin fervently bobbing your head back and forth around his shaft, working your tongue along its entirety while doing so. This soon brings him over the edge and you're treated to blast after blast of his gooey load. You swallow down as much as you can of the rich spunk, but it comes too fast and too thick to consume completely. You end up with a sticky mess overflowing from your mouth and down your chest.";
		say "     Once spent, Brian breathes a happy sigh of relief and rubs his balls. Lighter for having been drained, at least for the moment, they weigh a little less heavily in his hand. The rhino smiles happily, then thanks you with a big kiss, not minding that it's flavored with his own spunk. After the kiss though, his break is over and he returns to his attempts to batter through the wall with his head.";
	else if BrianOral is 0 and player is puremale and Breast Size of Player < 3: [Initial oral on Brian that opens gay storyline]
		say "     With an excited snort, the rhino puts a hand around his meaty rod and points it to your mouth as you kneel down. You place a hand on his plump orbs and rub them as you start licking along his thick shaft. Twirling your tongue over his glans, you gather up the gooey pre that wells up from it, and discover his rich and musky taste. You get a noseful of Brian's strong musky scent as well, your nose close enough to his virile manhood to pick up his manly smell. Add to that the growing scent of his exertion, and you find your mind fully submitting to this muscular stud: his smell overriding any thought of stopping your ministrations.";
		say "     Even as aroused as you are, it takes some effort to get his impressive cock into your mouth and down your throat, but your horny dedication eliminates any thought of giving up or slowing down. Eventually, your face is buried in Brian's crotch and his heavy balls are tapping against your chest. Having succeeded in taking all of the intoxicatingly masculine cock into your mouth and throat, you slowly pull back and forward again, gradually increasing the pace as you bob over the gray pillar of meat.";
		WaitLineBreak;
		say "     Your bobbing picks up as time passes, and soon your gagging and salivating all over his cock, leaving globs of saliva behind on his meat each time you withdraw. As you keep up your messy blowjob, Brian pants and grunts happily, his strong hands surprisingly tender as he caresses your head. As his moans of pleasure rise, you can tell he's getting close and begin fervently bobbing your head back and forth over his throbbing shaft, working your tongue along it as you do so. As Brian's cock begins to get to its biggest, you feel the sheer amount of pre filling your mouth and throat grow, and as it does, you realize your chance.";
		say "     You immediately start gathering precum onto your index-finger from your own cock, and once you feel you have enough, you angle it between the rhino's cheeks, pushing past his anal ring and right into his prostate. 'Yeah! Take... cock, all of it,' he shouts out as he rams down your throat. 'Mmmm. A faggot like you doesn't deserve to breathe, just swallow my cock for a livin[']. I bet ya'd love to swallow my cock for the entire, worthless life you have left.' You then feel his cock swelling, the foot-and-a-half rod throbbing deep inside your throat, so deep that it almost feels like your stomach is being stretched. Of course, that doesn't actually happen until every pint that fills the big man's gray balls starts to shoot out of his dilating urethra. So many pints squirt out, that it begins to feel like gallons, and after that, the only amount you could imagine is closer to tub size.";
		WaitLineBreak;
		say "     The quantity of cum being pumped into you is quickly becoming the least of your worries though, as black begins to creep into the edge of your vision, the oxygen in your lungs completely gone as he keeps both hands digging into your scalp, holding you in his groin. As soon as your off hand grabs at a muscled ass cheek, he shows mercy, and before you are forced to enact a plan to fight him off, the gray cock quickly pulls from your throat and gets left to ooze over your tongue. Your lips are still closed tight right behind Brian's dickhead, but you're thankfully able to catch your breath through your nose. His rhino face than peers down at you with a good-natured smirk that almost immediately gets overwhelmed by a look of shock, his eyes and mouth now hanging open and just staring down at you in sheer fear.";
		say "     You pull off, asking him what's wrong, and as he moves his mouth, looking to be about to give an answer, you're forced to pull your finger out from his ass as well, which is swiftly followed by him turning around and yelling over his shoulder, 'leave!' And that's all you get from his raspy voice. You think about staying, but looking around, you figure it'd be best to leave for the moment.";

to say sexwithBrian02:		[titty-fuck]
	say "     Wanting that rock-hard pillar nestled between your breasts, you lower yourself to your knees and squeeze it between your tits. The rhino moans happily and rubs his meaty hand over your head. 'Mmm... now that's what I'm talkin['] about. Ain't nothing like a sexy pair of tits,' he says with a grin. His gray shaft throbs and drools precum as you rub your breasts around it. Licking your lips, you give its glans several kisses and licks while working your bosom around it. You tweak and pinch your nipples, playing with yourself as you work to get the rhino off.";
	say "     He thrusts gently, mostly letting you take care of it at your own pace. In time, he's panting and grunting that he's about to blow, so you lean in and lick frantically at his glans while working your titties against his meat until he blows. Wads of thick rhino cum splatter across your face and into your mouth. You lick up great gobs of it, but much of it ends up painting your face and dripping down onto your breasts. You lick up as much of it as you can get and rub the rest into your tits as a final show for the burly rhino stud.";

to say sexwithBrian03:		[vaginal on player]
	say "     You get into proper position beneath him, letting the horny rhino line up his throbbing member with your wet cunt. Wanting to savor it [if Cunt Length of Player < 10]and take it easy on you[end if], he starts by teasing his glans across your folds and lightly prodding at your vaginal opening. Able to feel the throb of his meat, you can tell he's quite excited by the prospect of stuffing your pussy. You grind back against him with a wiggle of your rear, inviting the big stud in. And when he does mount you properly, popping that thick cock of his a few inches into your heated and dripping cunny, you can't help but moan in pleasure.";
	say "     Brian works his shaft into you with steadily deeper thrusts, letting you enjoy every new inch of pulsing rhino-meat he plows into you. Reaching around, he [if Nipple Count of Player > 0 and Breast Size of Player > 0]fondles your breasts, his touch remarkably tender for someone with such meaty hands. He teases your nipples and[else]caresses your [bodydesc of Player] body, his touch remarkably tender for someone with such meaty hands. Sensually stroking your [bodytype of Player]form, he [end if]gets you moaning beneath him as you enjoy the pleasurable attention you're receiving. Your cunt tugs wantonly at his cock, encouraging the randy rhino to drive further into you. His copious precum adds to your own juices so that a musky mess runs down your thighs with each slurping motion. By the time he's fully inside you, Brian fucks you with the same single-minded enthusiasm as he did with battering the wall - and your body loves it.";
	WaitLineBreak;
	say "     Your rhino stud pants and grunts as his excitement builds and builds. You can feel the heavy slap of his overfull balls and the throb of his triple-sized cock inside you as his climax approaches. And like before, it is a powerful one when it arrives, one thick and potent blast after another until your womb is stuffed and his excess semen overflows around his softening shaft. Somewhere during this heavy breeding, your own orgasm is reached[if Player is male]; you cry out in orgasmic bliss as your cunt milks his manhood for its virile seed and you empty your load onto the grass [else]and you cry out in orgasmic bliss as your cunt milks his manhood for its virile seed[end if]. A spunky mess drools from your well-stuffed cunny once that gray cork is removed, though you're still left feeling deliciously warm and gooey inside from the sheer amount of it he's deposited in you.[fimpregchance]";

to say sexwithBrian04:		[anal on player]
	say "     You get into proper position beneath him, letting the horny rhino line up his throbbing member with your waiting asshole. Wanting to start easy on you, he simply presses his broad glans against your back door and prods lightly against it. Able to feel the throb of his meat and the drooling precum from it, you can tell he's quite excited by the prospect of mounting your ass. You grind back against him as you relax your pucker, inviting the big stud in. And when he does penetrate you properly, popping that thick cock of his a few inches into your backside, you can't help but [if scalevalue of Player > 3 or player is twistcapped]moan in pleasure[else]whimper a bit at first[end if].";
	say "     As Brian works his shaft into you with steadily deeper thrusts, he reaches around to take your [cock size desc of Player] cock in hand and stroke your [cock of Player] meat[if Cock Length of Player > 18]. He seems quite impressed with your [cock size desc of Player] size and pumps it with both hands[end if]. Enjoying the attention you're receiving, your pleasure grows and your inner walls slacken, allowing the randy rhino to drive further into you. His copious pre drools into you, helping to lubricate your anal walls as they're stuffed full of his dark gray shaft. By the time he's fully inside you, Brian fucks you with the same single-minded enthusiasm as he did with battering the wall - and your body loves it.";
	WaitLineBreak;
	say "     Your rhino stud pants and grunts as his excitement builds and builds. You can feel the heavy slap of his overfull balls and the throb of his triple-sized cock inside you as his climax approaches. And like before, it is a powerful one when it arrives, one thick and potent blast after another until your belly is stuffed and his excess semen overflows around his softening shaft. Somewhere during this heavy seeding, your own orgasm is reached and you dump your sticky load onto the grass as Brian pumps it out of you. When it's all over, he gives you a little while to recover before pulling out. A spunky mess drools from your well-fucked ass once that gray cork is removed, though you're still left feeling deliciously warm and gooey inside from the sheer amount of it he's deposited in you.[mimpregchance]";

to say sexwithBrian05_prelim:		[anal on Brian preliminary - not been fucked before]
	setmonster "Rhino";
	choose row MonsterID from the Table of Random Critters;
	if XP of Brian is 0:		[not suggested before]
		say "     When you suggest the rhino take a turn as bottom, he edges back a step. 'Hey now. I don't know about that. I mean, aside from that other rhino, there ain't been nobody in there...' he starts to protest. As you're pondering a way to convince him, he snaps his fingers. 'We'll wrassle for it. That seems fair,' he says with a big smile on his face. Looking at his bulging muscles, you have trouble seeing how that's quite fair. You don't even get a chance to refuse before he's coming at you.";
	else:					[trying again]
		say "     'Alright,' he says confidently. 'We'll wrassle for it again.' And with that, the rhino adopts a stance to charge.";
	let playernum be ( ( strength of Player ) * 2 ) + dexterity of Player + stamina of Player + level of Player;
	if "Martial Artist" is listed in feats of Player, increase playernum by 4;
	if "Black Belt" is listed in feats of Player, increase playernum by 4;
	if "Dominant" is listed in feats of Player, increase playernum by 2;
	if Player is submissive, decrease playernum by 2;
	let briannum be 75;  [approx equiv for Rhino]
	if hardmode is true, increase briannum by level of Player / 2;
	now briannum is a random number between 1 and briannum;
	now playernum is a random number between 1 and playernum;
	say "     [special-style-1][playernum][roman type] vs [special-style-2][briannum][roman type]: ";
	if Playernum > briannum:
		say "It is a tough match against your burly opponent, but you eventually manage to get him to the ground beneath you. Pinning him down, he's forced to concede to you. 'Nice going,' he pants. 'I guess that's that, then.' Being a good sport (and quite aroused after the exciting tussle), he seems quite ready to let you claim your victory prize. Quite turned on yourself, you're ready and raring to get to it as well.";
		WaitLineBreak;
		say "[sexwithBrian05]";
	else:
		say "Try as you might, you end up pinned beneath the muscly rhino as he uses his great strength against you. With you in such a position and the burly male hard after the exciting tussle, he seems quite ready now to claim his victory prize. And you're too turned on by this point to be that upset about how things turned out. You raise your ass, offering your [if Player is female]juicy pussy[else]crinkled hole [end if]to him.";
		WaitLineBreak;
		if Player is female:
			say "[sexwithBrian03]";
		else:
			say "[sexwithBrian04]";
		now XP of Brian is 1;

to say sexwithBrian05:		[anal on Brian]
	if XP of Brian < 2 or ( a random chance of 1 in 2 succeeds and XP of Brian > 2):
		say "     The sexy rhino stud moves into proper position beneath you and flicks his thin tail up, giving you a fine view of his muscular backside and the pinkish-gray ring nestled between those cheeks. Lining up your cock, you press it against his backdoor, drawing a [if XP of Brian < 2]brief twinge of concern[else]soft moan of anticipation[end if] from the big guy. Running your hands along his strong back, you knead his tense shoulders to help him relax before penetrating him. The feel of his hole around you is hot and tight when you do enter him, though it yields as the initial shock turns to pleasure for the rhino.";
		say "     The rhino's huge cock throbs between his legs, twitching and spurting pre each time you grind against his prostate[if XP of Brian < 2]. As you expected, now that he's found himself on the receiving end of a good fucking[else]. Having been on the receiving end before thanks to you[end if], he's quite willing to enjoy it. Your [cock size desc of Player] penis thrusts into him again and again while the panting male pushes himself back onto your meat each and every time. Like the rest of his body, his anal muscles are strong and grip tightly around your shaft, milking at it as he works his hips over your pole.";
		WaitLineBreak;
		say "     After getting a good, hard pounding, the rhino's in need of release. You can feel it pulsing in your hand and know it's ready to blow, so you quicken your pace and pump Brian's gray meat. The rhino groans and you feel his urethra bulge for an ephemeral moment before his thick seed starts spewing forth in gooey bursts. They splatter onto the grass beneath him in musky white stains. Encouraged by his own orgasm, as well as how his inner walls clamp down around you like a vice, you end up popping off partway through his release. You fill your muscular lover's ass with your [Cum Load Size of Player] load, painting his insides with your semen. You pump and thrust away until you're both drained and flop out on the grass to recover.";
		if XP of Brian < 2:
			say "     'Now, that wasn't half-bad,' he pants. 'Feels kind of strange and sticky, but nice and warm, too. I'd be up for that again sometime,' he adds as he starts to rise. 'Got to get back to that wall though. It ain't gonna knock itself down.' Before he can go charging off, you do hold him back briefly so you can share a passionate kiss with the big lug.";
			now XP of Brian is 2;
	else:
		say "     The big rhino shifts over onto all fours, again accepting his loss with good graces. His thin tail flicks up, providing you with a fine view of his muscular rear and the pinkish-gray ring waiting there for you[if anallevel is 3]. Rather than hop right to it, you grab that firm ass of his and lean in, giving his pucker several long licks. The manly scent of the sweat from his exertion arouses you all the more. You rim the big guy until he's panting and moaning before withdrawing your tongue and moving to mount him[else]. Rather than hop right to it, you take a few moments to rub a saliva-slick finger over his tailhole. With that added to the sweat of his exertion to wet his pucker, you move into position to mount him[end if].";
		say "     Pressing your [cock of Player] cock to the rhino's back door, you ease yourself into him. This draws a pleasured moan from your studly lover and his penis throbs and twitches between his legs. Reaching around, you take hold of it and stroke it slowly in time to your initial thrusts. This adds to the big guy's enjoyment and allows him to relax more easily to take your pulsing rod into his backside. Not that he's having nearly as much difficulty as his first time, his anus and rectum stretching to accept your [cock size desc of Player] penis pounding into him and soon he's grinding his hips back into your thrusts.";
		WaitLineBreak;
		say "     As your mutual pleasure builds, rather than keep going for the finish, you ease out of him. Brian gives a decidedly cute little whimper of disappointment when your cock pops free, clearly eager to continue as the bottom at this point. At your prompting, he rolls onto his side and offers himself to you again. In this new position, you take a few moments to cuddle with him before slipping your cock back into his needy hole. The moan of delight he gives as you do both makes you smile happily and re-fuels your arousal.";
		say "     The short break does add to your endurance though, giving you a chance to enjoy fucking him for a while longer before you're ready to pop. Not wanting to hold back your release again, you pound into him harder. With arms wrapped around one another, you push yourself hard and deep into him and unload. Shot after shot of sticky seed shoots into his bowels. His anal walls squeeze down around you hard and his stiff cock throbs between your bellies as it sprays rhino cum into the tight confines of the hugging, kissing lovers. By the time you're both spent, his ass is gooey with your cream and you both have messy chests from his large load. You lay there panting and kissing together for some time before he finally gets up to resume his attempts at personally battering down the wall.";
		if XP of Brian is 2, now XP of Brian is 3;

to say sexwithBrian06:		[frottage]
	say "     Enjoying being pressed up against him, you decide to enjoy the same pleasure in an even more intimate manner. Rubbing your groin against his, you press your throbbing meat to his own. [if Cock Length of Player < 18]The rhino can't help but smile smugly at how his impressive cock outsizes yours[else if Cock Length of Player is 18]The rhino grins happily at how you're just as well hung as he is[else]You can't help but grin smugly at how your [cock size desc of Player] cock[smn] outsize[smv] even his impressive meat[end if].";
	say "     Each of you put a hand around the grinding cocks, mutually stroking them as you kiss. Precum drools from your shafts and gets spread across his rhino penis and your [cock of Player] length[smn], making them nice and slick. The feel of his steely gray pillar throbbing against your erection[smn] is wonderful, two fine studs enjoying the sensation of their virile cocks pressed between them. And when the two of you cum, the eruption of musky semen splatters across you both; a deliciously manly mess that clings to your flesh and leaves you both reeking of sex and your lover.";


[Stash for currently unused code]
[
the linkaction of Brian is "[BrianLinkAction]".

to say BrianLinkAction:
	if BrianRelationship >= 1:
		say "Possible Actions: [link]talk[as]talk Brian[end link], [link]smell[as]smell Brian[end link], [link]fuck[as]fuck Brian[end link], [link]look[as]check out Brian[end link][line break]";

CheckingBrian is an action applying to nothing

Understand "check out Brian" as CheckingBrian.
[more "synonyms" for that command that you can type in]

Check CheckingBrian:
	if Brian is not visible, say "Who?" instead;

carry out CheckingBrian:
	say "     The sweaty rhino stands there watching you with his gleaming, blue eyes. His shoulders raise and lower as he pants, still not taking his eyes off you for a second, all too content to glare at you with a mix of lust and intrigue. Even though he breathes almost straight towards your face, you smell nothing foul, in fact, it smells a little good, as if he's managed to keep his oral hygiene up. However, it doesn't look like he has any kind of supplies other than food in his vast....homey field. You chock it up to nanites....or something even stranger, and move on.";
	say "     You see his form in all its glory when you look over the rest of his ripped form; down his eight-pack, over his Adonis belt that points right to his almost equine cock, eyes hovering over it before they continue to sweep over his muscled thighs, and finally down his defined legs and to his glossy, gray hooves. He's a hunk, that's for sure, and his chitinous shoulder 'pads' make him seem almost like a football player. And even though you can't see him from behind right now, you already have his muscled back and bubble-butt ingrained in your memory."; [Not needed at the moment]
]

Brian ends here.
