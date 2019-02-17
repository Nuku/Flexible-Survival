Version 1 of Alexandra Breeding by Wahn begins here.
[Version 1 - Split off from Alexandra ]

"Adds Breeding scenes for Bad Alexandra the Doberwoman to the Flexible Survival game"

[ AlexandraBrutusInteraction                          ]
[  0: nothing yet                                     ]

[ Planned content                                     ]
[   1: let evil Brutus pound Alexandra + female player breeding option    ]
[   2: take Alexandra to the farm (choice menu for breeders to take her)  ]


[
For Breeding Alexandra
Player
Likes/fetishes: male doms, female subs or power bottom, Impregnation/Breeding, pregnancy, threesomes/multiple partners, collars with titles on them like breeder, tattoos with titles on them like breeder, oral and dirty talk for cock and ball worship, big balls, lots of cum, dirty talk
Dislikes: vore, unbirth, death, permanent appearance tf,  mind control [90% of the time], hard bondage by itself
Other comments: i like culting and peer pressure, like if someone likes getting bred they also what others to get bred too and they want to help make that happen, coerce them, and/or force them to do it. But it's nothing they wouldn't do themselves and prefer would do it with them and help them revel in the good parts
i like it when someone is so interested in something that the conviction they have drives them to find others to help or make them experience it.

Character
The gender of my player character is (usually): male or female
Feats my character often/always has: fertile, litter bearer, and other game-play feats that help me level and loot
Does the character usually use Automatic Survival?: no

Scenes
Pairings that interest me are (keep those that are fine by you): MF, FF, HF, HH
I prefer creature gender to be: female or male
When winning a fight, I like as its aftermath: sex, dom,
When losing a fight, I like as its aftermath: sex, sub, food and water taken
The following creatures I like the most (why?): most M or H/F
The following creatures I dislike the most (why?): those with content i don’t like or cause tf easily
This creature or infection could use an update (multiple possible, say what you think needs work): minotaur
I'd love to see as new creature: new tentacle monster

NPCs
I always/often bring home/visit these NPCs: always most to all of the ladies, when playing female i usually pick up fang and most of the men that are sexable art bunker except the pig
Threesomes and/or extra scenes between these bunker/library NPCs would be awesome:
The following NPCs I like the most (why?): Alexandra Nadia, Fang, Amy, Sarah and other ladies that interact with others
The following NPCs I dislike the most (why?): pig and because he is a slob
]


to say AlexandraBreedingMenu:
	project the figure of Alexandra_clothed_icon;
	LineBreak;
	say "     Walking up to Alexandra, you run one hand over her naked chest, cupping and squeezing one of her breasts, while the other slides behind her head to draw her closer to you. Giving your dobie bitch a forceful kiss, you tongue-wrestle with her a little and suck on the tip of her floppy appendage. Drawing back after a little while to look into her eyes, you then tell the canine ex-cop that you want to breed her like the slut she is, choosing studs to mount her and fill that belly with some pups. In reply, ";
	if "Cuckold" is listed in Feats of Player: [player is too much of a chump in her view for Alexandra to accept the demand]
		say "the tough bitch lets out a derisive bark, giving your chest a light shove. 'You think I care about what ideas you think up? I sleep with whom I want! You're tough in a fight, but we both know you're a weakling when it comes to defending your territory afterwards, so don't make me laugh with demands like that.' With a haughty look on her face, she just walks away from you after that, not even waiting for what you might say next.";
		stop the action;
	else if "Contraception" is listed in Traits of Alexandra: [sterile right now]
		say "the tough bitch's eyebrows rise and an annoyed look crosses her face. 'Really? You're a fucking kinky freak bastard! Sending me off to get my tubes tied by that lizard doctor and THEN whipping out your idea of breeding me. So you just wanna see your bad bitch pounded and filled with spunk without having to care for [if libido of Alexandra > 0]extra [end if]puppies? Fine! But you better choose some damn good studs if we're going through this charade, asshole!' Alexandra barks at you with a scowl, taking a step back and crossing her arms in front of her chest.";
	else if "Fertility Treatments" is listed in Traits of Alexandra: [she's been bred several times already and got a taste for it]
		say "the tough bitch lets out an amused bark, smirking at you as she lowers one hand to her belly. 'Why am I not surprised? You're one fucking kinky freak, boss! Just can't get enough of your dobie puppy mill swelling up and pushing out those pups, eh? Fine! But you better choose some damn good studs, not just any dirty mongrel!' Alexandra says and leans in closer, brushing her breasts against you in clear anticipation of being taken and filled with virile seed.";
	else if player is not male: [no dick]
		say "the tough bitch raises one eyebrow while sliding a hand down to your crotch, squeezing it suggestively. 'You know, if you're interested in breeding me you could get a dick yourself to do the deed. I could give you some suggestions of pretty fucking amazing schlongs I've seen out there on the roads.' Alexandra is grinning broadly now as she adds, 'Ever thought about having a horsecock swing between your legs? Or one of those ridged wyvern things, that's a fun option. Knotted dicks are the best of all though. Ah, but maybe this is something else, eh? Feeling kinky and wanting to own a bitch and make her put out for buddies? Fine, fine. But you better choose some damn good studs, not just any dirty mongrel!'";
	else if player is male:
		say "Alexandra looks at you in surprise, letting her hand slide down to your crotch and squeezing it suggestively. 'What? You don't wanna knock me up yourself? A strong, powerful guy makes the best puppies, just so you know boss. Don't think you need any help with the task, eh?! Ah, but maybe this is something else, eh? Feeling kinky and wanting to own a bitch and make her put out for buddies? Fine, fine. But you better choose some damn good studs, not just any dirty mongrel!'";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	say "     So, which partner do you want to pound Alexandra's pussy and breed her?";
	[]
	if "Feral Mutt" is listed in EncounteredEnemies of Player or "Feral Mutt Pack" is listed in EncounteredEnemies of Player: [Player knows the feral dogs]
		choose a blank row in table of fucking options;
		now title entry is "A feral mutt";
		now sortorder entry is 1;
		now description entry is "Let Alexandra get mounted by a street dog";
	[]
	if demon brute is tamed and DBCaptureQuestVar is 5: [evil Brutus]
		choose a blank row in table of fucking options;
		now title entry is "Your demon slave Brutus";
		now sortorder entry is 2;
		now description entry is "Let Brutus ravage Alexandra's pussy";
	[]
	if PlayerMet of Farmhand Horsemen is true and FriesianRelationship is 0: [saw them, no interaction]
		choose a blank row in table of fucking options;
		now title entry is "That pair of black stallion twins you saw at the McDermott Farm";
		now sortorder entry is 3;
		now description entry is "Let the Friesian farmhands double-team Alexandra";
	[]
	if PlayerMet of Farmhand Horsemen is true and FriesianRelationship is 1: [sexed them, don't know the names]
		choose a blank row in table of fucking options;
		now title entry is "That pair of black stallion twins you met at the McDermott Farm";
		now sortorder entry is 4;
		now description entry is "Let the Friesian farmhands double-team Alexandra";
	[]
	if PlayerMet of Farmhand Horsemen is true and FriesianRelationship is 2: [knows the twins]
		choose a blank row in table of fucking options;
		now title entry is "Karel and Isaac, the black stallion twins";
		now sortorder entry is 5;
		now description entry is "Let the Friesian farmhands double-team Alexandra";
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
				if (nam is "A feral mutt"):
					say "[AlexandraBreeding_Mutt]";
				else if (nam is "Your demon slave Brutus"):
					say "[AlexandraBreeding_EvilBrutus]";
				else if (nam is "That pair of black stallion twins you saw at the McDermott Farm" or nam is "That pair of black stallion twins you met at the McDermott Farm" or nam is "Karel and Isaac, the black stallion twins"):
					say "[AlexandraBreeding_Karel_Isaac]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the doberwoman bitch and tell her that you'll have to continue your conversation at another time. She looks at you in puzzlement, then turns her attention back to guarding the entrance.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AlexandraBreeding_Mutt:
	say "...";

to say AlexandraBreeding_EvilBrutus:
	if AlexandraBrutusInteraction is 0: [first time]
		project the figure of BrutusEvil_icon;
		if companion of player is demon brute: [already summoned]
			say "     Instead of saying anything further to the breeding bitch, you raise a hand to stroke the curve of your demontooth amulet and turn your head towards Brutus, the huge purple beast you have taken as your controlled slave. He scowls as he becomes aware of your attention, baring his sharp teeth at the indignity of having to serve. Despite this, the towering brute steps up as you command him to, then says in a growling voice, 'Yes... [master]?' ";
		else: [not the active companion]
			say "     Instead of saying anything further to the breeding bitch, you grab your demontooth amulet tightly in your fist, then murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. The towering brute says in a growling voice, 'Yes... [master]?' ";
		say "Glancing back at Alexandra and seeing the worried expression creeping over her face, you gleefully pronounce your command for the demon to take and breed her. In an instant reaction, Brutus's hand shoots forward and he wraps his clawed fingers around the former cop's throat, lifting her off her feet as she lets out a choked gurgle. As you quickly remind him of your standing order not to seriously hurt any of your companions, the demon focuses his blazing eyes on you and replies with clenched teeth creaking against each other, 'Of course. I obey.'";
		WaitLineBreak;
		project the figure of Alexandra_naked_icon;
		say "     Getting over her momentary shock, Alexandra starts to claw at the single strong arm with which Brutus is holding her up. She shows the strength of desperation inherent to people running out of air as she leaves bloody streaks across his skin, yet the demon brute endures this without even flinching once. Drawing Alexandra closer to his face, he licks her cheek and chuckles darkly as she tries to bite his tongue. 'Gonna make you scream, bitch!' he growls in arousal, his massive shaft rapidly filling out and coming to stand at attention. Meanwhile, the former cop's struggles start to become come more sluggish and weak as she gets close to run out of oxygen, prompting Brutus to let go of her with an annoyed grunt. Falling bonelessly to the ground, the dobie coughs and gasps for air, then is instantly pounced on by Brutus, who rips her jeans to shreds in a single rend with his clawed hand.";
		say "     Despite the show of violence, his sharp talons didn't even nick Alexandra's skin, demonstrating your control over the bloodthirsty demon's impulses. Of course, that doesn't protect her from the things you actually ordered Brutus to do to your breeding bitch. He's more than eager to take the bitch too, with the tip of his thick shaft literally oozing pre-cum that drips onto the ground in sticky strings. Alexandra is still gasping for air and unable to fight back as he grabs her by the back of the neck this time, lifting her into the air and shaking her a little. 'I wanna feel you on my shaft, little bitch!' he growls hungrily, then grabs her hip with his other hand to guide her crotch towards his cock. She gets in a weak kick to his side which doesn't really faze Brutus at all, with him just chuckling in response. Then he rams her down forcefully onto his erection, a toothy grin on his face as she screams at the sudden deep penetration.";
		WaitLineBreak;
		project the figure of BrutusEvil_icon;
		say "     Alexandra writhes in your demon pet's grasp as he slams more than a foot of cock into her, creating a visible bulge in her stomach. He isn't actually all the way in yet though, as you can see several more inches visible between his crotch and her widely stretched pussy lips. ";
		if Cunt Length of Alexandra + 2 < Cock Length of demon brute: [standard values: 10 (+2 stretching allowance) vs 18]
			say "Pushing the doberman ex-cop further down onto his erection, Brutus smile grows wide and predatory as Alexandra lets out a strained gasp. It seems he's reached the end of her pussy and is now nudging her cervix. Gleefully playing his tongue over his lips and sharp teeth, Brutus looks aside to you and growls, 'Breeding the womb is best!' With that, he rams himself home the rest of the way, [if TwistedCapacity of Alexandra is false]drawing a desperate scream from Alexandra as he violates her inner barrier[else]drawing a shocked gasp from Alexandra as he pushes past her inner barrier. The demon scowls for a second at the fact that she was able to take him without the pain he expected, then shrugs it off and concentrates on fucking her instead[end if]. Laughing out loud, the towering purple beast starts to use his captive as a human-sized fleshlight, pounding her up and down on his massive length.";
			if TwistedCapacity of Alexandra is false:
				increase Cunt Length of Alexandra by 1; [oversized fucks stretch characters bit by bit]
		else: [he actually fits into her]
			say "Pushing the doberman ex-cop further down onto his erection, Brutus smile grows wide and predatory as Alexandra lets out a strained gasp. Reaching depths into her that few regular males would, he gleefully plays his tongue over his lips and sharp teeth, then looks aside to you and growls, 'Gonna deep-dick your slut!' With that, he rams himself home the rest of the way. The demon scowls for a second at the fact that she was able to take him without the pain he expected, then shrugs it off and concentrates on fucking her instead. Laughing out loud, the towering purple beast starts to use his captive as a human-sized fleshlight, pounding her up and down on his massive length.";
		say "     It's an entrancing sight to see Brutus make use of your dobie bitch, hammering his whole length into her again and again and bulging the stomach of the lithe woman out as if she was already pregnant with his spawn. Despite the harsh treatment, it doesn't take long before Alexandra finds herself reacting to the stimulation of being fucked and she starts to let out breathless groans and gasps, her pussy leaking female juices over the demon's shaft and at least making it easier for him to slide in. Pounding away at her with no holds barred, the demon's arousal builds rapidly and he squeezes her hip and buttock hard with his clawed fingers, stopping just short of drawing blood. Finally he roars out loud and slams into her all the way, cum erupting into her womb. Brutus's head whip forward at the same time to chomp down on the top of Alexandra's shoulder. Or he would have, if Nermine's binding and your command didn't restrain him, so all she gets is an imprint of his impressive set of teeth.";
		WaitLineBreak;
		say "     The large balls of your demon slave churn and twitch as he pumps a deluge of cum into his play-toy, making her belly swell visibly as it fills up more and more. Before long, it looks like she's already pregnant and ready to pop out a whole litter of pups, and further demon seed starts to squelch out around the purple shaft stretching open her pussy. Brutus keeps holding, pawing and almost biting Alexandra while he rides out his orgasm, but as soon as he's shot his last spurt, he unceremoniously pulls her off his erection. As his thick purple shaft slips out of the stretched hole, a gush of cum accompanies it, splattering onto the floor and starting to trickle down the insides of her legs. Looking at the canine in his hand, hanging limply as he fucked her into a semi-conscious state, Brutus chuckles and then swings her over to you, letting go so she crumples at your feet. 'More pussy! This one is used up,' the demon then demands in a challenging tone.";
		now lastdobiemess is 89; [Brutus creamed her pussy]
		impregAlexandraChance with "Brutus"; [chance to knock her up]
		NPCSexAftermath Alexandra receives "PussyFuck" from Brutus;
		if player is female:
			say "     [bold type]What's your reply?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Tell him to fuck you next.";
			say "     ([link]N[as]n[end link]) - Shut the demon down and put him in the amulet for now.";
			if player consents:
				LineBreak;
				say "     You smile at the demon and tell him that you'll allow him to fuck you too, just because he did such a nice job with Alexandra. The towering creature's slick and dripping member twitches as he steps forward and reaches out, aching to just throw you down and rape you, but unable to do so thanks to the binding spell. You slip your clothes off slowly to tease the demon a bit, then lie down on your back spread your legs invitingly and command that he eat you out first. With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides passage and causing you to moan in lust.";
				WaitLineBreak;
				say "     With the musclebound creature eating you out, wiggling his tongue inside your vagina, you could almost just let him keep going like this... but no, it's time for the main event now. With an aroused gasp for him to fuck you, he is free to do he wanted right from the start. With a hungry growl, the demon is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your nether lips. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow hurting you by just slamming inside with quite as much force as he wanted. Finally he relents, venting his frustration by digging his claws into the ground left and right of your head with a crunch, then start to slowly press forward.";
				say "     The hot member of your infernal servant spreads your pussy lips around it, then sinks deeper into your body, creating pleasant feelings as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take and you're thankful that he can't go faster. Finally he bottoms out inside you, his shaft buried all the way and his two large cum-factories resting against your skin. Raising a hand to halt his movement by laying it on his chest, you force him to stop and try to get used to having him inside you. A few minutes later, you tell him to continue - slowly. Moving in and out, the bumps on Brutus's cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with your muscles being stretched out and getting used to it. This allows the creature to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession.";
				WaitLineBreak;
				say "     You can only take so much of the hard fuck your demon pet dishes out, and all the stimulation soon drives your arousal over the edge. [if player is male]With a loud moan, your [cock of player] shaft sprays cum all over your chest[else if player is female]With a loud moan, you orgasm, femcum running down from your stretched cunt[else]With a loud moan, your body shakes in orgasm[end if]. His duty at getting you off fulfilled, the constraints on the demon's libido fall away and he starts fucking you even harder to get himself off. Soon, he reaches his climax too - and with a deep, satisfied grunt, he begins to pump your bowels full of his infernal seed. With the head of his shaft pushing open your cervix, he easily fills your womb and vagina, with the remaining cum squirting out around the brute's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your stretched hole to create a white-ish pool under you.";
				LineBreak;
				if companion of player is demon brute: [is the active pet]
					say "     Satisfied, you sink to the floor and tell your captive demon to resume guarding you.";
				else: [back into the amulet]
					say "     Satisfied, you sink to the floor and moan the magic words to banish the demon again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
				NPCSexAftermath Player receives "PussyFuck" from Brutus;
			else: [chosen to banish him]
				say "     Giving Brutus an unimpressed look, you raise the demontooth amulet with one hand, then intone the magic words that Nermine taught you. He scowls and makes one step forward as if to attack you even as he already is turning into purple smoke that swirls towards the amulet in the air. Letting out a final aggressive roar that speaks of his desire for unrestrained rampage, the demon fully dematerializes a second or two later, then vanishes as he is drawn in by the magic.";
		else: [just banish him]
			say "     Giving Brutus an unimpressed look, you raise the demontooth amulet with one hand, then intone the magic words that Nermine taught you. He scowls and makes one step forward as if to attack you even as he already is turning into purple smoke that swirls towards the amulet in the air. Letting out a final aggressive roar that speaks of his desire for unrestrained rampage, the demon fully dematerializes a second or two later, then vanishes as he is drawn in by the magic.";
		WaitLineBreak;
		say "     A little while later, Alexandra comes to again, groaning as she half-pushes herself up from the floor and looks at you. 'You can be a downright bastard at times, you know that,' she growls, looking down over her cum-matted fur and wincing as she stands up a little while later. 'Fuck, that was one huge cock. And that beast it's attached to...' She shakes her head to clear it, then stumbles off to clean herself up. Glancing over her shoulder before she turns the corner behind a bookshelf, she says, 'Don't even think about fucking me for the next few hours. I need a break! And thanks to your asshole demon I need to find some new jeans too!'";
		now AlexandraBrutusInteraction is 50; [last fuck was a rough one]
	else if AlexandraBrutusInteraction is 50: [fucked roughly last time - she's not eager for a repeat]
		say "     A grin plays over your face as you lay a hand on Alexandra's stomach, then tell her that you want Brutus to breed her again. Her ears droop and fold back as she pulls back half a step, then scowls openly. 'Are you KIDDING me right now? That bastard is a fucking beast with a dick as thick as my arm and he's rough as fuck! Took ages for my insides to feel anywhere close to normal again after last time!' Looking at the dobie bitch, eyes following the curves of her well-sized breasts before returning to her face, you realize that she didn't actually walk away or say that she wouldn't follow your order, just that she's not very enthusiastic about the prospect of being a demon sex toy once more. Well, there certainly are ways to fix that...";
		if player is female:
			say "     [bold type]How do you make the pairing more palatable for Alexandra?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Warm your doggie up a bit first, touching and stroking her.";
			say "     ([link]N[as]n[end link]) - Join her in a threesome with Brutus breeding you both.";
			if player consents:
				LineBreak;
				say "[AlexandraBrutusBreedingWarmup]";
			else:
				LineBreak;
				say "[AlexandraBrutusBreedingThreesome]";
		else:
			say "[AlexandraBrutusBreedingWarmup]";
	else if AlexandraBrutusInteraction is 51: [fuck shared last time - she's eager for more]
		say "     A grin plays over your face as you lay a hand on Alexandra's stomach, then tell her that you want Brutus to breed her again. Her eyebrows rise and the dobie leans forward to press herself against your side. 'Want to make it another threesome with the beast? Having you there with me last time really made all the difference, even if it took ages for my insides to feel anywhere close to normal again afterwards!' Looking at the dobie bitch and the slight curl of a smile on her muzzle as she remembers your togetherness, you wonder if you should keep being this informal with her or rather remind her that she's yours to make use of any way you want, up to and including rough fucks by your demon pet.";
		if player is female: [females can join again]
			say "     [bold type]How do you want to have Alexandra fucked?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Remind her of her place, then give her to Brutus for a hard fuck.";
			say "     ([link]N[as]n[end link]) - Join her in a threesome with Brutus breeding you both.";
			if player consents:
				LineBreak;
				say "[AlexandraBrutusBreedingWarmup]";
			else:
				LineBreak;
				say "[AlexandraBrutusBreedingThreesome]";
		else: [male + neuter can only have her rough fucked or cancel]
			say "     [bold type]Given that you're not actually equipped with female parts right now, how do you want to deal with this?[roman type[line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Remind her of her place, then give her to Brutus for a hard fuck.";
			say "     ([link]N[as]n[end link]) - Tell her that you changed her mind.";
			if player consents:
				LineBreak;
				say "[AlexandraBrutusBreedingWarmup]";
			else:
				LineBreak;
				say "     Pulling the former cop against yourself, you kiss her deeply and grope her ass, then tell her that you changed your mind for now. She can get bred another time. 'Huh? Okay, you're the boss,' she says in a surprised tone, then shrugs and goes back to what she was doing before.";

to say AlexandraBrutusBreedingWarmup:
	project the figure of Alexandra_clothed_icon;
	say "     Moving closer to the former cop that you made your breeding bitch, you cup one of her breasts with your hand and lightly pinch her nipple, drawing a shuddering breath from Alexandra. Your other hand moves to her hip, stroking the short fur of her side, followed by a demanding kiss of her muzzle. Even with her panties in a twist as she is right now, Alexandra still reacts positively to your touch, obedience to her [master] cemented in her innermost self since you broke and claimed her. Making out with your canine companion, you stroke and touch her body, feeding the fires of her arousal until they're well and truly lit. Going back and forth to suckle on her erect nipples, you make the bitch whimper and pant in need. Finally snaking a hand into her jeans, you dip two fingers into the dripping wet snatch of the anthro dog, making her gasp in pleasure as you curl your digits and rub her insides.";
	say "     With your fingers inside her and your thumb on the pleasure-button of her clit, you ask the horny canine who and what she is. The answer is delivered in breathless pants and ecstatic barks, especially as you keep caressing her while she speaks, teasing the right words out of her. 'I'm Alexandra, your *Aaah, yes!* bad dog bitch! All yours boss! Your *nnnghhfffuuckkk!* breeding bitch! *Oooh, do that again!*' With Alexandra being in the aroused state that she is, you decide it's about time for a reminder too, so you quickly grab the back of her neck with your other hand, sharply pulling the loose fur there back as you look into her eyes. Gruffly reminding the woman that she couldn't resist you when she was still a goody two shoes cop, and she won't do so now, you end with the comment that she should know what you want to hear from her next. 'Nnghh! Fuck! Fine, I'll be your broodmare for that fucking demon and take his monster cock!'";
	WaitLineBreak;
	project the figure of Alexandra_naked_icon;
	say "     You give Alexandra a broad grin and tell her what a good dog she is, then pull your fingers from her pussy and hold them out for her to lick clean, slurping up her own juices. Adding a command for her to strip, the next thing you do is ";
	if companion of player is demon brute: [already summoned]
		say "stroking the curve of your demontooth amulet and turning your head towards Brutus, the huge purple beast you have taken as your controlled slave. He's standing close by, his huge purple shaft erect and throbbing from the show of Alexandra's domination. With a growling voice, he asks, 'Yes... [master]?' ";
	else: [not the active companion]
		say "grabbing your demontooth amulet tightly in your fist and murmuring the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. The towering brute says in a growling voice, 'Yes... [master]?' ";
	say "Turning back at Alexandra, by now dressed in nothing more than her bare fur, you give her body an appreciative glance as she hurries over to one of the sofas and lays back on it. She spreads her legs and reaches down to open the wet folds of her sex with two fingers, presenting herself for breeding. Giving the towering purple demon next to you a sharp smack on the ass, you gleefully give him the command to your command for the demon to get into her and breed the bitch. A bestial growl rises from the depths of Brutus's broad chest and he pounces on her in a second, closing in on the sofa with just three large strides.";
	say "     The demon reaches out to pin Alexandra down by her neck, but just as he is about to lay his clawed fingers on her, you tell him to freeze and saunter over to them. After stroking a hand over the dobie's wet slit, then across her stomach and to her breasts before going further up and making her suck your fingers, you explain that you want to see a good, hard fuck that leaves her well bred. Brutus strains against his binding, annoyed by even this little of a delay, and Alexandra looks up at him in trepidation, then at you with large eyes as you go on to say that she can tell Brutus how to fuck her as long as she keeps it interesting for you. And if she doesn't, you'll let him off his leash, or most of the way at least. 'Damn! Fuck me sideways, that's twisted even f-,' Alexandra exclaims in response, quickly followed by a scream of 'Wait you fucking monster!' as Brutus started moving again at her poorly chosen words.";
	WaitLineBreak;
	project the figure of BrutusEvil_icon;
	say "     After looking at you with a slightly nervous expression on her face, Alexandra turns her attention to the huge purple demon leaning over her and the massive prick standing erect above his crotch, showing a slow but steady trickle of pre dripping down from its tip. 'Damn, that's big. And you fucker just wanted to choke me and ram it in, didn't you?' Brutus snarls at her, then growls out the words, 'Yeah, you little whore! Gonna break that cunt of yours!' 'Oh no you won't! First of all, keep your paws off me at all times. And second - you're gonna be on the bottom. Lay down, on the ground right there as you wouldn't even fit this sofa properly.' With little choice but to obey, the demon brute does just that, coming to rest on his back with his upper body propped up on both elbows as he gives the doberwoman a challenging glare. 'Afraid of my dick, eh bitch? It's gonna go into you one way or another!' 'Shut up, beast! Not one more word from you. That's an order.'";
	say "     Stepping over to Brutus on her slender paws, Alexandra swallows visibly as she looks at his dick, then moves herself into position above him. Reaching down to grasp the shaft, she mutters, 'Thing's pretty hot too. But at least lube's not gonna be a problem.' As she says the second bit, another small gush of pre wells from Brutus's cum-slit and trickles over her fingers. The former cop proceeds to jerk up and down, spreading the slick fluid over the demon's dickhead and upper shaft before lowering herself to touch it with her nether lips. Closing her eyes, Alexandra grinds against the erection with her crotch for a little while, then says to herself, 'Slow and steady.' With that, your breeding bitch starts to push herself down on his member, suppressing a gasp as the tip slips into her body. Her widely stretched folds look pretty obscene around his throbbing shaft, with the fact that you're able to make both of them do this giving you a spike of arousal.";
	WaitLineBreak;
	say "     Panting loudly as she takes in gulps of air, Alexandra slides herself deeper slowly, first one inch then another. 'I'm getting there boss, just you see!' the dobie says with a determined expression on her face, a statement that gets answered by Brutus laughing darkly, followed by him thrusting his hips up violently and impaling her on his cock with the sudden move. Demonic laughter is joined by a howl from Alexandra as ";
	if Cunt Length of Alexandra + 2 < Cock Length of demon brute: [standard values: 10 (+2 stretching allowance) vs 18]
		say "Brutus penetrates her all the way, right past her inner barrier [if TwistedCapacity of Alexandra is false]and so sudden that the pain of her cervix being stretched doesn't even have time to register[else]which stretches readily to allow his entrance[end if]. Claws digging into the floor in frustration since he isn't allowed to grab her, Brutus makes Alexandra bounce on his crotch instead, each hammering thrust pushing her up to be coming down for the next one. He successfully penetrates her twice, then a third time before she shouts, 'FREEZE DIRTBAG! DO NOT FUCKING MOVE!'";
		if TwistedCapacity of Alexandra is false:
			increase Cunt Length of Alexandra by 1; [oversized fucks stretch characters bit by bit]
	else: [he actually fits into her]
		say "Brutus penetrates her all the way, his whole huge cock sinking into her vagina. Claws digging into the floor in frustration since he isn't allowed to grab her, Brutus makes Alexandra bounce on his crotch instead, each hammering thrust pushing her up. He successfully penetrates her twice, then a third time before she shouts, 'FREEZE DIRTBAG! DO NOT FUCKING MOVE!'";
	say "     Even as Brutus's motion ceases, he is chuckling and grinning at Alexandra, then sticks out his tongue and wiggles it as if licking her. 'Fucking hell!' Alexandra exclaims, then looks your way with a raised eyebrow. 'The things I do for you boss. But you'll get your knocked up bitch, don't you worry.' Glancing down, she barks at Brutus, 'Cum in me, now! No? Come on, this can't be the one thing you don't do on command. Bastard!' With a sigh, she then begins rocking against his motionless body, rock steady beneath the dobie despite the fact that he's basically in the middle of a gymnastics bridge and she's got her full weight on his middle. Alexandra's hands move to her stomach, cupping the bulge the demon's cock creates there as she fucks herself on him. 'Once you get past the beginning, this thing doesn't even feel half bad inside you. Had a girlfriend who was a size queen and would have loved even the penetration. But really, fucking hell - can't you do something about his personality? Lobotomize the beast maybe?'";
	WaitLineBreak;
	project the figure of Alexandra_naked_icon;
	say "     Alexandra doesn't wait for you to reply, instead leaning forward on Brutus's chest and bracing herself with both paw-hands against the demon's rock-hard abs. Her breathing is coming more quickly now and she's grinding against him with increased vehemence, a clear sign that she's getting closer to where she wants to go. Sauntering around the two of them to look at the spot where their bodies meet, you see that she's not the only one, as Brutus's balls look even fuller than usual, brimming with cum to put into the bitch riding him. Alexandra might have forbidden him to talk, or move, but he's breathing quite heavy too and his eyes seem to burn with an inner fire. A high-pitched bark makes you look up again, seeing Alexandra throwing her head back and whining needily as she starts to gush femcum over Brutus's crotch. Her inner muscles must be trembling and flexing hard around the demon, as he joins her in orgasm just moments later, made obvious by the way her stomach swells as a cum-geyser erupts inside her.";
	say "     With throb after heavy throb, the former cop is filled up by her demonic partner, bathing her innermost chambers in his infernal seed. The large balls of your demon slave churn and twitch as he pumps a deluge of cum into the bitch riding him, making her belly swell visibly as it fills up more and more. Before long, it looks like she's already pregnant and ready to pop out a whole litter of pups, and further demon seed starts to squelch out around the purple shaft stretching open her pussy. Brutus stays silent and motionless, as ordered by Alexandra, yet by the twitches of his lips and other facial features, you can discern that he'd be bellowing in satisfaction if he could. That and possibly throwing some degrading words at Alexandra. The dobie rides out her orgasm impaled on his dick, finally sinking forward onto Brutus's chest to catch her breath, then pulls herself off his shaft. As the thick purple shaft slips out of Alexandra's stretched hole, a gush of cum accompanies it and soaks Brutus's chest.";
	WaitLineBreak;
	say "     Bracing herself against the demon's hip as she gets her legs under herself somewhat shakily, Alexandra looks at you and clears her throat. 'There, happy now? Really hope the bastard's brood takes root and you don't make me do this again! But right now, I need a break. Gonna go clean myself up!' She quickly goes to grab her discarded clothing, then pauses for a second as she seems to get an idea. 'Give me this one, alright?! Since I'm playing your puppy mill and all that,' the dobie says to you, followed by a barked command to Brutus. 'Stay just like that and do not move an inch for the next... hour or so. And don't you dare relax for one second!' After that, she strides off and quickly vanishes from sight between some of the bookshelves.";
	say "     This leaves you standing next to Brutus, with the demon holding a precarious gymnastics pose and his crotch and lower chest soaked in cum and female juices that are slowly drying on him. A low, growling sound is coming from the depths of his broad chest, telling you all you need to know about what he's thinking of the position he's in. Since Brutus already is filled with deadly loathing for you and anyone else who'd dare to control him, you shrug and simply allow Alexandra's complaint to play out. She's been a good little doggie, so why not let her have a bit of revenge.";
	now lastdobiemess is 89; [Brutus creamed her pussy]
	now AlexandraBrutusInteraction is 50; [last fuck for her was a rough one]
	impregAlexandraChance with "Brutus"; [chance to knock her up]
	NPCSexAftermath Alexandra receives "PussyFuck" from Brutus;

to say AlexandraBrutusBreedingThreesome:
	project the figure of Alexandra_clothed_icon;
	say "     Moving closer to the former cop that you made your breeding bitch, you cup one of her breasts with your hand and lightly pinch her nipple, drawing a shuddering breath from Alexandra. Your other hand moves to her hip, stroking the short fur of her side, followed by a demanding kiss of her muzzle. Even with her panties in a twist as she is right now, Alexandra still reacts positively to your touch, obedience to her [master] cemented in her innermost self since you broke and claimed her. Making out with your canine companion, you stroke and touch her body, feeding the fires of her arousal until they're well and truly lit. Going back and forth to suckle on her erect nipples, you make the bitch whimper and pant in need. Finally snaking a hand into her jeans, you dip two fingers into the dripping wet snatch of the anthro dog, making her gasp in pleasure as you curl your digits and rub her insides.";
	say "     With your fingers inside her and your thumb on the pleasure-button of her clit, you tell the horny canine that she doesn't have to worry about taking Brutus's girth on her own. You'll be with her all the way, temper his worst urges and take that thick cock right along your favorite dobie. Her answer is delivered in breathless pants and ecstatic barks, especially as you keep caressing her while she speaks, teasing Alexandra even as she speaks. 'God, boss! You're *nnnghhfffuuckkk!* one kinky [bodyname of player in lower case]! Shit like this makes me glad I'm your bitch - your breeding bitch! *Oooh, do that again!*' You reward the former cop with some more stroking and touching, basically finger-fucking her for a little while before pulling out and presenting your hand for her to lick clean.";
	WaitLineBreak;
	say "     After slurping up her own juices like a good little bitch, she puts on a challenging expression and barks out, 'Sure he don't just wanna keep going, just the two of us? Hah, just kidding, I know you want to put that brute of a breeding stud into action!' ";
	WaitLineBreak;
	project the figure of BrutusEvil_icon;
	say "You give Alexandra a broad grin and tell her what a good dog she is, then add a command for her to strip and nod over to one of the library sofas not too far away. As the doberwoman saunters towards it, drawing your eye with her wagging tail and enticingly swinging hips, you ";
	if companion of player is demon brute: [already summoned]
		say "stroke the curve of your demontooth amulet and turn your head towards Brutus, the huge purple beast you have taken as your controlled slave. He's standing close by, his huge purple shaft erect and throbbing from the show he just witnessed. With a growling voice, he asks, 'Yes... [master]?' ";
	else: [not the active companion]
		say "grab your demontooth amulet tightly in your fist and murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. The towering brute says in a growling voice, 'Yes... [master]?' ";
	say "Informing him that he'll get to breed both Alexandra as well as yourself puts a toothy grin on his face, which draws into a snarl as you add that he act on direct command and should keep any comments to himself. Having demoted him to basically just a walking sex toy and sperm donor with that last part, you slap the demon's ass playfully and tell him to follow.";
	say "     Flanked by the towering presence of your demon slave, you strut towards Alexandra, who is waiting for you in a half-reclined pose on the sofa, nude down to her short fur. The doberwoman is cupping one of her breasts, with the fingers of her other hand down between her legs and playing with the dripping wet folds of her sex. 'Ready when you are, boss!' she says enticingly, letting her tongue dangle out of her open muzzle and curling the tip as if she was licking something. You climb right onto the sofa as you reach it, moving on top of your canine bitch and drawing her close in a tight embrace. Meeting her in a kiss that escalates into a full making-out session, you feel her breasts pressing against your front. Before long, she's also lifting her hips to grind against you, creating some quite pleasurable sensations as her nether lips [if player is male]rub your erection[else]brush against your own[end if].";
	WaitLineBreak;
	project the figure of Alexandra_naked_icon;
	say "     Having so much fun just kissing Alexandra and with her grinding against you, it takes a moment before you realize where the growling noise is coming from that starts a little while into your play: Brutus is still standing right next to the sofa, staring down at the two of you with hate-filled eyes and a massive, throbbing, purple cock standing proudly erect at crotch level. It is literally dripping with pre-cum, with another small spurt welling up from his cum-slit even as you watch. 'I was wondering how long I could keep you from remembering the fucker,' Alexandra says in a playful tone, raising her head to lick your neck and cheek. You give her breasts a grope in reply, then tell Brutus to kneel and pleasure both of you with his tongue. The controlled demon lets out an annoyed huff through his nose as he gets on the floor, then bends his horned head forwards.";
	say "     A moment later, you feel the touch of his warm tongue brush over your nether lips, licking a few times before he switches to Alexandra for a little while. The doberwoman enjoys his attention quite obviously, letting out a pleased bark and giving you a long french kiss right after that. Before long, the two of you are grinding your crotches against each other to share the demon's tongue and also feel each other's sex rubbing your own. Then suddenly, Alexandra stiffens in your arms and with a lewd groan, she starts getting really wet and dripping between her legs, climaxing from the stimulation. 'Fuuckkk,' she pants out between gasping breaths, a slightly embarrassed grin on her face. 'Coming without even getting a dick in me like some clueless virgin. What can I say, you feel nice boss, and our big bad down there isn't too bad with his tongue.'";
	WaitLineBreak;
	say "     With Alexandra still in the throes of her orgasm, you decide that she won't mind if you monopolize Brutus's attention for a little while and command him to get his tongue inside you, to pleasure and open up your pussy. The demon obeys with little more than a grumble, his slick appendage worming its way between your nether lips straight away. Then he's licking your inner passage, twitching the tip of his long tongue left and right to search for your most sensitive spots. Closing your eyes to concentrate on this pleasurable exploration, you feel him move inside you, then the large clawed hands of the demon on your thighs as he lifts you a little to drive his tongue even deeper. Soon you're panting and moaning from being tongue-fucked deeper than quite a few dicks would go. A pair of soft-furred paw-hands draws you back to reality, Alexandra taking your head in both hands and pulling it towards her own to kiss you.";
	say "     'That good, eh? You looked a bit out of it for a second there. Wanna share?' she asks in a playful tone, then licks your nose and wiggles her eyebrows. Weakly panting out for Brutus to switch to your canine partner for now, you are lowered again, then feel the ridges of the demon's horns pressing against your inner thighs and buttocks as he goes down on the doberwoman. She lets out a yipping bark as he starts to tongue-fuck her pussy, head lolling back from the pleasure that you felt just before. You look down at your dobie companion, naked and panting by your request, and can't help but feel quite satisfied at having claimed her as well as Brutus as your own. Squeezing Alexandra's breasts possessively and watching the play of her features through the sensations she's getting right now for a little while, you then command Brutus to take her pussy with his dick. The start of a dark chuckle reminds you to hastily add to the command to go only as hard as she wants him to, stopping the brute's more violent impulses in their tracks.";
	WaitLineBreak;
	say "     Feeling some movement behind yourself, you nevertheless keep your full attention on Alexandra herself. It doesn't seem she's realized yet what's coming next, as she's still lying back with her eyes closed, but that changes quickly before much longer. Her eyes shoot open as Brutus's dickhead touches her sex and presses in against it with its large girth, followed by an animalistic grunt as he penetrates her. Alexandra's arms whip forward reflexively and clutch onto your body in a tight embrace. 'Nngggaahhh! He's fucking big,' she pants into your ear, keeping her death-grip around your chest as more and more of that huge erection is slowly sunk into her body.' ";
	if Cunt Length of Alexandra + 2 < Cock Length of demon brute: [standard values: 10 (+2 stretching allowance) vs 18]
		say "Even with the preparation of having Alexandra eaten out and pre-stretched by the tongue fuck, it takes a minute or so for Brutus to get much of his length into her. Then the demon pauses and you can feel a clawed finger on your shoulder, poking you impatiently. Turning your head to look back over your shoulder, you ask him what's up, rescinding your order of shutting him up for a moment.";
		if TwistedCapacity of Alexandra is false:
			say "     'Bitch's too small! Womb fuck her?' Brutus asks hopefully, his face showing a broad grin full of countless sharp teeth as he anticipates a chance to torture someone violently. You just look at him for a little while, making him wait and impatiently lick his, then shake your head and say that he may only go as deep as he is now. Leaving the demon to gnash his teeth and scowl, you turn back to your dobie bitch and stroke her hair in a gesture of affection. 'Had me worrying there for a second,' Alexandra tells you in a playful, teasing tone before adding, 'But you'd never do that to your favorite breeding bitch, would you boss? Treating me like a street bitch you just grab and fuck right in the open.' It's almost as if she's challenging you to do so and wanting to prove her status as the toughest canine around.";
		else:
			say "     'Bitch's too small! Womb fuck her?' he asks hopefully. You start to open your mouth to reply, but before you can do so Alexandra butts in with the words, 'I can take it, dick-for-brains! Just you see!' Chuckling about her defending her tough bitch status, you nod for Brutus to go ahead and he gives a sharp thrust, penetrating her the rest of the way easily. The demon growls, apparently feeling cheated since she didn't show any pained spasms and Alexandra growls at him, 'Told ya, you dumb brute!' You can hear his teeth grind against each other, followed by an outburst of, 'When I get free I'll disembowel you little bitch and make you eat -' You stop him short at that point, forbidding him from saying anything for the rest of your threesome. 'Yeah, more fucking less growling,' Alexandra adds to your commands for the demon, then kisses you eagerly.";
	else: [he actually fits into her]
		say "Even with the preparation of having Alexandra eaten out and pre-stretched by the tongue fuck, it takes a minute or three for Brutus to bottom out inside her, given that he has to pause when she calls out curse-filled commands for him to do so. You can literally feel him through her, from the cock bulging out her belly and pressing against yourself that way.";
		say "     'Damn, I still can't believe that such gigantic dicks now can fit into me,' Alexandra pants out in a somewhat strained voice, giving you a squeeze. 'Good thing that this new body seems to be so stretchy and adaptable, otherwise I wouldn't want to know how gaping and blown out my pussy would be before long. Not only from taking guys like your demon stud here but also pushing out a litter of puppies and all that.' Stroking the fur of Alexandra's back, you tell her that you agree about that and then add that she's just the bitch you always wanted to own. 'Busty, fuckable and ready to serve as your puppy mill? Damn boss, you're one kinky fucker!' the former cop replies and licks the side of your neck affectionately.";
	WaitLineBreak;
	say "     Raising your head, you call out for Brutus to start fucking Alexandra, and he begins to stroke his massive shaft in and out of her, moving at a fast pace that speaks of his own pent-up lust and frustration. You wonder for a second if you should have him slow down, but right then your sexy dobie calls out, 'Fuck yeah, take me hard you fucking beast!' She likes it rough apparently, which isn't too surprising given what she's been through with yourself. Settling in for making out with her and touching the bitch, you're right in the action, feeling every thrust by Brutus through the bump in her belly it creates. It is fun to share her experience of writhing in pleasure from the demon's fuck, and you can see that Alexandra is rapidly being pushed towards a second orgasm. Yet since you don't know if she could last for a third, you decide to give her a bit of a cool-down phase in which she can just ride her current high. With an eager flutter in your voice, you command Brutus to switch to your own pussy.";
	say "     The demon growls deeply, no doubt wanting to inflict some payback on you, but the amulet's binding mitigates what would have been a vicious thrust to nothing more but him pushing at your sex somewhat impatiently. ";
	if Cunt Length of Player + 2 < Cock Length of demon brute and Player is not twistcapped: [player pussy depth (+2 stretching allowance) vs 18 - doesn't fit]
		say "Thanks to his expert prep-work earlier, your pussy is ready to stretch around his massive dickhead and Brutus can slide more of himself into you before eventually reaching the extent of what you can take. Given his binding's strictures on not actually being able to hurt you in any way, he stops right there and begins to fuck you just at this depth, giving you a wild ride even so. ";
	else: [he fits in the player - either naturally or through twisted capacity]
		say "Thanks to his expert prep-work earlier, your pussy is ready to stretch around his massive dickhead and Brutus can slide more of himself into you right away. It doesn't take long before the steady push makes him bottom out inside your body, with his weighty balls now pressing against your crotch too. 'Damn, I can feel his cock against my abs,' Alexandra says in a surprised tone from beneath you. 'Was it the same way with myself? Your pet really is a fucking monster in the dick department. A real fuckmonster, hah!' Brutus ignores her banter and your own moans and grunts and simply starts to fuck you in a wild ride. ";
	say "The thick purple shaft moving in and out of you is pleasantly warm, almost hot, which isn't too surprising given its owner's infernal descent. Besides this, the demon proves to be a quite good lover, with his shaft really hitting all the spots and him having the experience to use it well. As he drives your libido to new heights, you can't help but idly wonder how many victims he savaged with this dick to get so good, until you put a muzzle on his darker impulses and made him just pleasure Alexandra and you.";
	WaitLineBreak;
	say "     Enjoying the demon dicking for a little while, you eventually become aware of a hand moving between Alexandra and yourself. The dobie bitch is rubbing her clit with her fingers, showing that she's eager for some more loving. With a sigh, you command Brutus to stop and tell him to fuck your breeding bitch instead. The purple brute acts on this immediately, pulling out with a wet slurp and rams himself home into the canine underneath you, drawing a shocked gasp from her. Oops, seems like her asking for a hard fuck earlier allowed him some leeway there. Thankfully, the harsh entry doesn't stop Alexandra from enjoying the renewed fuck as they pick up right where they left it off earlier, with him deep-dicking her pussy again and again. You're so close to both of them that it almost feels like he's still fucking you two, maintaining your own state of high arousal right along theirs.";
	say "     The ecstatic three-way grinding between yourself, the doberwoman and the demon, quickly builds up towards a spectacular crescendo, with the sounds of sex echoing throughout the whole library. A high-pitched bark marks the beginning of the end, with Alexandra throwing her head back and whining needily as she starts to gush femcum over Brutus's and your own crotch. Her inner muscles must be trembling and flexing hard around the demon, as he joins her in orgasm just moments later, made obvious by the way her stomach swells as a cum-geyser erupts inside her, pumping a massive amount of infernal seed into her womb. With throb after heavy throb, the former cop is filled up by her demonic partner, bathing her innermost chambers in his infernal seed. The large balls of your demon slave churn and twitch as he pumps a deluge of cum into the bitch. Yet she isn't the only one you want bred right now, so you loudly call out for him to fill you too.";
	WaitLineBreak;
	say "     Reluctantly, Brutus pulls out of Alexandra, with a spurt of is seed splattering the pressed-together bellies of the bitch and yourself before he rams himself into your own stretched opening. Then you can feel the creamy whiteness of his cum bathe your insides in its warmth, with countless sperm starting the race to find an egg to impregnate. Fulfilling your plan of having the demon breed both your dobie bitch and yourself, the satisfaction you feel is enough to push you the last little step over the edge right along with the two of them, and you gasp in orgasm as your inner muscles start to twitch and tremble, milking more cum out of Brutus. Alexandra holds you in her arms as you come, making out with you happily and sharing your pleasure. The two of you caress and kiss for who knows how long, just riding out the sensations together and both feeling very nicely filled now.";
	say "     You stay entwined with Alexandra long enough for Brutus to actually recover his stamina for another go, and the demon starts to fuck into you again before you command him to stop and just go away for now. With a hostile grunt, he does just that, leaving you alone on the sofa with your dobie bitch. 'Well, that was fun. It's nicer with you being there with me, boss. But fuck am I sore down there, that dick is something else!' Alexandra remarks, then lightly pushes against your chest to make you rise a bit as she looks down. 'And look at that mess! He creamed us good, hah!' Reaching down to tough her stretched hole with a ginger touch, she jokingly adds, 'Man, it'll be a few hours till that's back to normal, even with the nanite thingys. Let's hope his brood takes, eh? Otherwise we'll have to have another go!' The kiss that follows tells you that she wouldn't be too opposed to doing so, not if you'll keep her company that time too.";
	now lastdobiemess is 89; [Brutus creamed her pussy]
	now AlexandraBrutusInteraction is 51; [last fuck for her was a shared, if rough one]
	impregAlexandraChance with "Brutus"; [chance to knock her up]
	NPCSexAftermath Alexandra receives "PussyFuck" from Brutus;
	NPCSexAftermath Player receives "PussyFuck" from Brutus;

to say AlexandraBreeding_Karel_Isaac:
	say "...";

Alexandra Cuckolding ends here.
