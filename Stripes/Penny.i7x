Version 1 of Penny by Stripes begins here.
[Version 1 - Bad Penny]

"Adds Penny the Doberwoman as an NPC to the Flexible Survival game"

Section 1 - Penny the Doberwoman

Penny is a person.
The description of Penny is "[pennydesc]";
The conversation of Penny is { "Yes Boss!" }.
pennystory is a truth state that varies.  pennystory is usually false.

[See Doberman file for collecting Penny.]

instead of sniffing the Penny:
	say "The Doberman smells of lust and sex.";

to say pennydesc:
	say "     The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she's become.  She has a strong, tough physique while still having a womanly figure with an average sized pair of breasts and a firm ass.  Her two-tone black and tan fur is a little disheveled and scruffy, especially atop her head where it's been styled into short spikes.  No longer restrained by her earlier desires, she's no longer supressing her lustful urges and can often be seen masturbating or even performing self-cunnilingus[if Fang is booked] when not on duty[end if].";
	say "     Speaking of her duty, she's stationed herself by the library entrance, acting as your rough and tough guard to the safe haven inside[if Fang is booked].  She shares this duty with Fang, alternating with the wolf[end if].  Having kept her nightstick, it hangs at the ready for those who would disturb the safety of your hideout.";


Instead of conversing the Penny:
	if hp of Penny is 1:
		say "     The Doberman female has obtained a leather jacket and some torn jeans for herself and swapped them for her uniform.  She looks around the library and pokes her head into the bunker.  'This is a pretty nice setup you've got for yourself here, boss,' she says.  'I can see that following you was definitely the right choice.  Soon there ain't going to be any law except what we make for ourselves and it's about time I figured that out.  So no more Officer Friedrich.  It's just Penny the bad dog.  Mmm... it feels so good to be a bad dog,' she says with a moan, having stuffed a paw into her jeans.  She rubs herself up against you.  'As promised, I'll be your slutty doggy bitch, boss.  I'm looking forward to it,' she says with a slow lick across your cheek as she fingers herself all the more.";
		now hp of Penny is 2;
	otherwise if a random chance of 1 in 3 succeeds and pennystory is false:
		say "     Penny takes a seat in one of the chairs, rocking on its back legs and lighting up a smoke.  'My folks were crooks.  Did drugs and petty crimes to pay for the habit.  It was a pretty shitty home to grow up in, so I was taken away by Child Services when they finally got caught.  Not that that was much better, but I tried to convince myself I was better than them.  I decided to become a cop and tried my best to be [']a moral and upright person['],' she says with obvious scorn for her previous self.";
		say "     'I tried to tell myself that my parents being crooks didn't matter, tried to act like stuff like that doesn't breed true.  But I always knew deep down I was lying and there's no use pretending otherwise,' she says with a growl, flicking away her cigarette.  'I'm a bad dog and am much better off just admitting it.  I certainly am enjoying myself a whole lot more as a slutty bitch, that's for damn sure.  Shit, I'm sick of talking about this crap.  Let's fuck!' she says with a growl as she hops out of the chair and grinds her body against yours.";
		attempttowait;
		now pennystory is true;
		now lastfuck of Penny is turns + 8;
		try fucking Penny;
	otherwise:
		say "     [one of]'Are you going to use your slutty bitch again soon?'[or]'I've been having beating up the strays who wander by.  It's much more fun dealing with them now that I'm willing to play with them afterwards.'[or]'Thanks again for knocking some sense into me, boss.  Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]Penny gives you a report on recent activity around the library while playing with her pussy.[or]'I hope something wanders by soon.  I'm in the mood to bust some heads,' she growls, running her paw over her nightstick.[at random]";


Section 2 - Sexxxings

Part 0 - Basic Sex Menu

instead of fucking the Penny:
	if lastfuck of Penny - turns < 6:
		say "     'As fun as this has been, I do need at least a short break before we go again, boss.'";
	otherwise if hp of Penny is 1:
		say "     She seems mighty eager, but you might want to talk to her first.";
	otherwise:
		say "[badpennysex]";

Part 1 - Bad Penny Sex Selection

to say badpennysex:
	say "     You grab Penny in your arms and grope the Doberwoman, making her moan with lust.  She pants excitedly and squirms out of her jeans and jacket.  Just what do you feel like doing with your canine bitch this time?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Penny";
		now sortorder entry is 1;
		now description entry is "Fuck your slutty Doberman bitch.";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 2;
		now description entry is "Have Penny suck you off.";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get cunnilingus";
		now sortorder entry is 3;
		now description entry is "Have Penny lick your snatch.";
	choose a blank row in table of fucking options;
	now title entry is "Lick Penny";
	now sortorder entry is 4;
	now description entry is "Lick Penny's snatch.";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck Penny":
					say "[pennysex1]";
				otherwise if nam is "Blow job":
					say "[pennysex2]";
				otherwise if nam is "Get cunnilingus":
					say "[pennysex3]";
				otherwise if nam is "Lick Penny":
					say "[pennysex4]";
			otherwise:
				say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
		wait for any key;
		clear the screen and hyperlink list;

to say pennysex1:		[Fuck Penny]
	say "     You push the ex-cop down over one of the tables and spread her legs with a firm motion with your foot.  She whimpers softly in excitement and her short tail wags frantically as juices run down her legs.  Grinning at the sight, you get your cock lined up with her wet pussy and thrust into her, making her moan loudly.  Keeping her shoulders pinned down, you pound your [cock size desc of player] [cock of player] cock into her as she rocks her hips back into every thrust you make.";
	say "     'Oh yes!  Do me!  Fuck your slutty bitch,' she pants.  She [one of]moves her paws to grope her breasts and play with her nipples[or]grips the edge of the table, her claws digging into the wood[or]drools onto the table as her breasts are pressed firmly against the cool wooden surface[at random].  Your [cock size desc of player] cock [if cock length of player > 30]has stuffed your bad doggy bitch with a prominent and phallic bulge for your massive meat[otherwise if cock length of player > 20]makes a visible bulge in your bad doggy bitch[otherwise if cock length of player > 10]stuffs your bad doggy bitch such that she feels wonderfully tight and juicy around your shaft[otherwise]fucks your bad doggy bitch's wanton hole[end if].  Her cunt squeezes and clenches around your shaft, her body clearly needing this proper pounding you're giving her.";
	say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock, pushing you to orgasm moments later.  She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40].  Your massive load leaves the dobie bitch so bloated and full that she can't even move for some time, only able to rub her paws over her overstuffed womb as your seed slowly leaks out of her[otherwise if cock width of player > 20].  Your massive load leaves the dobie bitch with a full and bloated tummy that she happily strokes as she staggers back to her post[otherwise].  You drain your balls into the dobie bitch, leaving her well seeded and slowly leaking your cum from her well-fucked pussy[end if].";

to say pennysex2:		[Blow job]
	say "     You push the ex-cop down onto her knees, pressing your cock into her face.  She whimpers softly in excitement and wags her short tail quickly.  She sniffs your crotch and slides her canine tongue along your cock and balls before sliding her muzzle over your meat.  She uses her long tongue to eagerly lick along your shaft while you thrust into her warm, wet muzzle.  She rubs her paws over your [ball size][if cunts of player > 1] and finger your pussies[otherwise if cunts of player is 1] and finger your pussy[end if][if cocks of player > 1].  She alternates between your cocks, alternating between paws and muzzle on each of them[end if].";
	say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod makes it difficult for the dobie bitch to cope, but you persevere and manages to stuff your massive shaft down her throat, distending her mouth and body around it[otherwise if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod makes it a little difficult for the dobie bitch to cope, but you persevere and manage to stuff your massive shaft down her throat, causing a visible bulge in her mouth and throat[otherwise if cock length of player > 10]Your [cock size desc of player] [cock of player] rod stuffs your dobie bitch's muzzle and throat nicely, letting you fuck her muzzle and deep throat her[otherwise]Your [cock size desc of player] [cock of player] is easily handled by the dobie bitch's muzzle, leaving her free to slather it with her tongue[end if].  As you fuck her face, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up.  That is a command she's more than willing to comply with and moans happily.";
	say "     You are quite pleased with your training of the Doberwoman, having made her into a very eager and obedient plaything.  The blow job is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop.  Eventually this becomes too much and you pull her forward, burying her nose in your groin as your cock throbs and pulses, blasting your cum [if cock length of player > 20]directly into her belly[otherwise if cock length of player > 10]down her throat[otherwise]into her muzzle[end if].  You drain your [ball size] into her[if cock width of player > 40], leaving her belly so full and bloated that she can only lie there, rubbing her overful tummy[otherwise if cock width of player > 20], leaving her with a bloated bellyful of semen that she happily rubs with her paws as she wobbles back to her post[otherwise], feeding her your cum which she happily swallows down[end if].";

to say pennysex3:		[Get cunnilingus]
	say "     You push the ex-cop down onto her knees, pressing her muzzle to your [cunt size desc of player] pussy, ordering her to start licking.  She whimpers softly in excitement and wags her short tail quickly.  She sniffs your crotch and slides her canine tongue along your wet folds before sliding it into you.  She uses her long tongue to eagerly lick along your inner walls and lap up your flowing juices[if cocks of player > 1].  She runs her paws over your [cock size desc of player] [cock of player] cocks and your [ball size] while tending to your juicy cunt[otherwise if cocks of player is 1].  She runs her paws over your [cock size desc of player] [cock of player] cock and your [ball size] while tending to your juicy cunt[end if][if cunts of player > 1].  For a while, she alternates between your pussies, licking at each of them before finally settling on one and using her fingers to rub at your wet folds[end if].";
	say "     [if cunt length of player > 12 and cunt width of player > 8]She licks and laps at your vagina as deeply as she can reach with her tongue while your grind your [cunt size desc of player] pussy against her muzzle.  Wanting more, you end up pulling most of her muzzle into your spacious cunt, essentially fucking yourself with it while her tongue dives deeper.  She seems quite pleased to be used by you in this manner, the slutty doggy bitch lusting for any way you'd like to use or abuse her[otherwise if cunt length of player > 6]She licks and laps as deep as she can with her long doggy tongue while you grind your [cunt size desc of player] pussy against her muzzle[otherwise]She licks and laps at your vagina, reaching your very depths to brush across your cervix while you grind your [cunt size desc of player] pussy against her muzzle[end if].  Her excited panting brushes across your folds while that broad tongue of hers runs along your inner walls and stimulates you deep inside.  As you grind against her, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up.  That is a command she's more than willing to comply with and moans happily, working her tongue even faster.";
	say "     You are quite pleased with your training of the Doberwoman, having made her into a very eager and obedient plaything.  That slathering tongue is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop.  Eventually this becomes too much and you pull her forward as your cunt quivers and flows with a gush of your hot juices.  You soak the bitch's muzzle as she tries her best to lap it all up.  This sends you into another orgasm, drawing out your pleasure even further.  As you're panting and trying to recover you push her back, popping that tongue out of you with a wet slurp.  She smiles up at you and slowly licks your juices from her muzzle while fingering herself to a powerful climax of her own.";

to say pennysex4:		[Lick Penny]
	say "     Deciding to reward your slutty Doberman bitch, you push her backwards over one of the tables and spread her legs.  With a hand fondling her bosom, you press the other to her groin and slip a few fingers into her.  She yips and barks excitedly, panting happily as you start to play with her roughly.  Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
	say "     Once you're satisfied she's wet and ready for you, you lower your head between her legs and start licking over those glistening folds.  You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make.  At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her.  You keep this up, pleased to see the bad doggy slut squirming on the table and fondling her bosom and tweaking her nipples as you do all this.  When she cums, she releases a loud, excited bark and her hot juices soak your face and her groin.  The flow down onto the table, leaving a wet patch for her to soak in as she lies there to recover from her powerful climax.";


Penny ends here.