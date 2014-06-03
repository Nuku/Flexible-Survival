Version 4 of Alexandra by Stripes begins here.
[Version 4.4 - More tasks]

"Adds Alexandra the Doberwoman as an NPC to the Flexible Survival game"

Section 0 - Basic Structure

Alexandra is a person.  Alexandra is in Police Station.
The description of Alexandra is "[if hp of Alexandra < 50][alexandradesc_bg][otherwise][alexandradesc_gg][end if]";
The conversation of Alexandra is { "Yes Boss!" }.
Alexandrastory is a truth state that varies.  Alexandrastory is usually false.
Alexandrastory2 is a truth state that varies.  Alexandrastory2 is usually false.
Alexandrastory3 is a truth state that varies.  Alexandrastory3 is usually false.
Alexandracoffee is a truth state that varies.  Alexandracoffee is usually false.
lastPolicePatrol is a number that varies.  lastPolicePatrol is usually 255.
dobieanal is a truth state that varies.  dobieanal is usually false.
lastdobiemess is a number that varies.

[See Doberman file for collecting Alexandra.]

the scent of Alexandra is "[if hp of Alexandra < 50][alexandrascent_bg][otherwise][alexandrascent_gg][end if]";

Instead of conversing the Alexandra:
	say "[if hp of Alexandra < 50][alexandratalk_bg][otherwise][alexandratalk_gg][end if]";

the fuckscene of alexandra is "[sexwithAlexandra]";

to say sexwithAlexandra:
	if lastfuck of Alexandra - turns < 6:
		say "     'As fun as this has been, I do need at least a short break before we go again[if hp of Alexandra < 50], boss.'";
	otherwise if hp of Alexandra is 1:
		say "     She seems mighty eager, but you might want to talk to her first.";
	otherwise if hp of Alexandra < 50:
		say "[badAlexandrasex]";
	otherwise if hp of Alexandra >= 50:	[***]
		say "     'I don't think that'd be a good idea,' she says, taking a step back from you.  You nod and give her some space, though you catch sight of her gnawing at the edge of her canine lip and rubbing her thighs together.  From the scent of canine arousal, you can tell she's feeling the arousal of the infection, but doing her best to resist giving into it.  Given all that's happened, you probably shouldn't press the issue right now.";


Section 1 - Alexandra the Bad Girl

to say alexandrascent_bg:
	say "The Doberman smells of lust and sex, her scent intermixed with yours[if level of Alexandra is 2] and Fang's[end if].";

to say alexandradesc_bg:
	if hp of Alexandra < 3:
		say "     The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she's become[if lastdobiemess is 1 and lastfuck of alexandra - turns < 5].  The crotch of her jeans are still damp from the recent fucking she was given[otherwise if lastdobiemess is 2 and lastfuck of alexandra - turns < 5].  There is a damp stain on the ass of her jeans under her short tail from the recent fucking you gave the dobie's backside[otherwise if ( lastdobiemess is 5 or lastdobiemess is 7 ) and lastfuck of alexandra - turns < 5].  The crotch of her jeans is wet with the excess juices from her recent climax[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  The crotch of her jeans is wet with the stains of recent sex that smell strongly of wolf[end if].  She has a strong, tough physique while still having a womanly figure with an average sized pair of breasts and a firm ass[if lastdobiemess is 6].  The fur on her chest and breasts is spiked and messy with your semen still clinging to her fur[end if].  Her two-tone black and tan fur is a little disheveled and scruffy, especially atop her head where it's been styled into short spikes.  No longer restrained by her earlier desires, she's no longer suppressing her lustful urges and can often be seen masturbating or even performing self-cunnilingus[if Fang is booked] when not on duty[end if][if ( lastdobiemess is 3 or lastdobiemess is 6 or lastdobiemess is 97 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle is streaked with dry patches of your cum that she's occasionally licks at[otherwise if ( lastdobiemess is 4 or lastdobiemess is 98 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of your feminine juices across it[otherwise if lastdobiemess is 7 and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of when you last had that muzzle between your legs[end if][if level of Alexandra is 1].  She's found herself a black choker to wear in imitation of a dog collar to further show herself to be your fucktoy pet bitch[end if].";
		say "     Speaking of her duty, she's stationed herself by the library entrance, acting as your rough and tough guard to the safe haven inside[if Fang is booked].  She shares this duty with Fang, alternating with the wolf[end if].  Having kept her nightstick, it hangs at the ready for those who would disturb the safety of your hideout.";
	otherwise if hp of Alexandra is 3 or hp of Alexandra is 5:
		if lust of Alexandra > 12:	[visibly preggers]
			say "     The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she's become.  She has a strong, tough physique while still having a womanly figure.  Her tummy is very large and round now with her progressing pregnancy after the recent fucking you've given her, knocking the breeding bitch up with a litter of pups.  She's found a larger pair of jeans to wear, but still has to leave them unbuttoned to cope with her gravid belly[if lastdobiemess is 1 and lastfuck of alexandra - turns < 5].  The crotch of her jeans are still damp from the recent fucking she was given[otherwise if lastdobiemess is 2 and lastfuck of alexandra - turns < 5].  There is a damp stain on the ass of her jeans under her short tail from the recent fucking you gave the dobie's backside[otherwise if ( lastdobiemess is 5 or lastdobiemess is 7 ) and lastfuck of alexandra - turns < 5].  The crotch of her jeans is wet with the excess juices from her recent climax[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  The crotch of her jeans is wet with the stains of recent sex that smell strongly of wolf[end if].  Her breasts are also larger than when she first arrived, having swollen with her [if hp of Alexandra is 5]earlier [end if]pregnancy[if lastdobiemess is 6].  The fur on her chest and breasts is spiked and messy with your semen still clinging to her fur[end if].  No longer restrained by her earlier desires, she's no longer suppressing her lustful urges and can often be seen playing with her breasts or rubbing her bulging belly[if Fang is booked] when not on duty[end if][if ( lastdobiemess is 3 or lastdobiemess is 6 or lastdobiemess is 97 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle is streaked with dry patches of your cum that she's occasionally licks at[otherwise if ( lastdobiemess is 4 or lastdobiemess is 98 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of your feminine juices across it[otherwise if lastdobiemess is 7 and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of when you last had that muzzle between your legs[end if][if level of Alexandra is 1].  She's found herself a black choker to wear in imitation of a dog collar to further show herself to be your fucktoy pet bitch[end if].";
			say "     Speaking of her duty, she's stationed herself by the library entrance, acting as your rough and tough guard to the safe haven inside, not letting her current state hold her back[if Fang is booked].  She shares this duty with Fang, alternating with the wolf[end if].  Having kept her nightstick, it hangs at the ready for those who would disturb the safety of your hideout.";
		otherwise:				[slightly preggers]
			say "     The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she's become[if lastdobiemess is 1 and lastfuck of alexandra - turns < 5].  The crotch of her jeans are still damp from the recent fucking she was given[otherwise if lastdobiemess is 2 and lastfuck of alexandra - turns < 5].  There is a damp stain on the ass of her jeans under her short tail from the recent fucking you gave the dobie's backside[otherwise if ( lastdobiemess is 5 or lastdobiemess is 7 ) and lastfuck of alexandra - turns < 5].  The crotch of her jeans is wet with the excess juices from her recent climax[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  The crotch of her jeans is wet with the stains of recent sex that smell strongly of wolf[end if].  She has a strong, tough physique while still having a womanly figure.  Her tummy is looking a little more rounded and full after the recent fucking you've given her, knocking the breeding bitch up with a litter of pups[if hp of Alexandra is 5].  Her breasts are also fuller than when she first arrived, her earlier pregnancy having helped them grow[end if][if lastdobiemess is 6].  The fur on her chest and breasts is spiked and messy with your semen still clinging to her fur[end if].  Her two-tone black and tan fur is a little disheveled and scruffy, especially atop her head where it's been styled into short spikes.  No longer restrained by her earlier desires, she's no longer suppressing her lustful urges and can often be seen playing with her breasts or masturbating[if Fang is booked] when not on duty[end if][if ( lastdobiemess is 3 or lastdobiemess is 6 or lastdobiemess is 97 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle is streaked with dry patches of your cum that she's occasionally licks at[otherwise if ( lastdobiemess is 4 or lastdobiemess is 98 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of your feminine juices across it[otherwise if lastdobiemess is 7 and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of when you last had that muzzle between your legs[end if][if level of Alexandra is 1].  She's found herself a black choker to wear in imitation of a dog collar to further show herself to be your fucktoy pet bitch[end if].";
			say "     Speaking of her duty, she's stationed herself by the library entrance, acting as your rough and tough guard to the safe haven inside, not letting her current state hold her back[if Fang is booked].  She shares this duty with Fang, alternating with the wolf[end if].  Having kept her nightstick, it hangs at the ready for those who would disturb the safety of your hideout.";
	otherwise if hp of Alexandra is 4:
		say "     The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she's become[if lastdobiemess is 1 and lastfuck of alexandra - turns < 5].  The crotch of her jeans are still damp from the recent fucking she was given[otherwise if lastdobiemess is 2 and lastfuck of alexandra - turns < 5].  There is a damp stain on the ass of her jeans under her short tail from the recent fucking you gave the dobie's backside[otherwise if ( lastdobiemess is 5 or lastdobiemess is 7 ) and lastfuck of alexandra - turns < 5].  The crotch of her jeans is wet with the excess juices from her recent climax[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  The crotch of her jeans is wet with the stains of recent sex that smell strongly of wolf[end if].  She has a strong, tough physique while still having a womanly figure and a firm ass.  After her pregnancy, her breasts have gotten a little bigger and are even less covered by the open leather jacket than before[if lastdobiemess is 6].  The fur on her chest and breasts is spiked and messy with your semen still clinging to her fur[end if].  Her two-tone black and tan fur is a little disheveled and scruffy, especially atop her head where it's been styled into short spikes.  No longer restrained by her earlier desires, she's no longer suppressing her lustful urges and can often be seen masturbating or even performing self-cunnilingus[if Fang is booked] when not on duty[end if][if ( lastdobiemess is 3 or lastdobiemess is 6 or lastdobiemess is 97 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle is streaked with dry patches of your cum that she's occasionally licks at[otherwise if ( lastdobiemess is 4 or lastdobiemess is 98 ) and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of your feminine juices across it[otherwise if lastdobiemess is 7 and lastfuck of alexandra - turns < 5].  The dobie's muzzle fur is rough and sticky with the lingering traces of when you last had that muzzle between your legs[end if][if level of Alexandra is 1].  She's found herself a black choker to wear in imitation of a dog collar to further show herself to be your fucktoy pet bitch[end if].";
		say "     Speaking of her duty, she's stationed herself by the library entrance, acting as your rough and tough guard to the safe haven inside[if Fang is booked].  She shares this duty with Fang, alternating with the wolf[end if].  Having kept her nightstick, it hangs at the ready for those who would disturb the safety of your hideout.";
	if hp of Alexandra > 3:
		say "     Alexandra's [libido of Alexandra] pups are younger Dobermans, having matured quickly to be roughly in their teens[if libido of Alexandra > 4].  They are a mix of boys and girls among the litters[end if].  They are a rough and rambunctious lot who hang out in one of the side rooms most of the time.  They do go outside on occasion to find some trouble to get into.  They do seem fairly self-sufficient though.";


to say alexandratalk_bg:
	if hp of Alexandra > 1 and a random chance of 1 in 3 succeeds and Alexandrastory is false:
		say "     Alexandra takes a seat in one of the chairs, rocking on its back legs and lighting up a smoke.  'My folks were crooks.  Did drugs and petty crimes to pay for the habit.  It was a pretty shitty home to grow up in, so I was taken away by Child Services when they finally got caught.  Not that that was much better, but I tried to convince myself I was better than them.  I decided to become a cop and tried my best to be [']a moral and upright person['],' she says with obvious scorn for her previous self.";
		say "     'I tried to tell myself that my parents being crooks didn't matter, tried to act like stuff like that doesn't breed true.  But I always knew deep down I was lying and there's no use pretending otherwise,' she says with a growl, flicking away her cigarette.  'I'm a bad dog and am much better off just admitting it.  I certainly am enjoying myself a whole lot more as a slutty bitch, that's for damn sure.  Shit, I'm sick of talking about this crap.  Let's fuck!' she says with a growl as she hops out of the chair and grinds her body against yours.";
		attempttowait;
		now Alexandrastory is true;
		now lastfuck of Alexandra is turns + 8;
		try fucking Alexandra;
	otherwise if hp of Alexandra > 2 and a random chance of 1 in 3 succeeds and Alexandrastory is true and Alexandrastory2 is false:
		say "     Alexandra pulls out one of the chairs and sits in it backwards, resting her [if ( hp of Alexandra is 3 and lust of Alexandra > 12 ) or hp of Alexandra > 3]plump [end if]breasts atop the back of it.  'Yeah, things kind of sucked for a while after I was taken away from my dead-beat parents.  I had a tough time fitting in, felt everyone was always judging me, so I started pretending I was a good person and I was better than my folks.  Somewhere along the lines, I forgot I was pretending, but a part of me always knew.  So when things here went in the shitter, I guess I just kept on pretending.  Being a cop and pretending to be a good girl were the only thing I knew how to do,' she says shaking her head.";
		say "     'I just kept on believing my own lie and tried my best to be a good cop.  I'm glad you came along to knock some sense into me, boss.  I ain't nothing but a bad dog and I always was.  Now I just look the part and can enjoy it,' she says, leaning back and groping her breasts.  'I was so goddamned uptight before, I never had sex until you came along.  Didn't know what I was missing,' she adds, stuffing a few fingers into her open jeans.  'Mmm... but enough talking.  Let's fuck some more,' she says, knocking the chair to the ground as she gets up.  She presses her body to yours, moaning with lustful need.";
		attempttowait;
		now Alexandrastory2 is true;
		now lastfuck of Alexandra is turns + 8;
		try fucking Alexandra;
	otherwise if level of Alexandra is 1 and a random chance of 1 in 3 succeeds and Alexandrastory3 is false:
		say "     'It felt so good to have you take me like that out in the street, fucking me like the bitch I am,' she says with a soft moan, her paw in her jeans.  'Mmm... I've been feeling my cunt changing a little[if cocks of player > 0 and cockname of player is listed in infections of Knotlist] to conform better to your knot[otherwise if cocks of player > 0], becoming a better fit for your sexy cock[otherwise], getting hotter and wetter at just the thought of you playing with me[end if][if cocks of player > 0] and stretching out so it can give birth to as many pups as you want to breed in me[end if].  Mmm... just thinking about it's getting me all worked up again, boss?' she moans, pressing her body to yours.";
		attempttowait;
		now Alexandrastory3 is true;
		now lastfuck of Alexandra is turns + 8;
		try fucking Alexandra;
	otherwise if hp of Alexandra > 2 and no_AlexandraNPC - turns > 3 and a random chance of 1 in 3 succeeds:
		AlexandraNPCChat;
	otherwise:
		say "[alexandratalk_bg1]";		[access regular conversation content]


to say alexandratalk_bg1:
	if hp of Alexandra is 1:
		say "     The Doberman female has obtained a leather jacket and some torn jeans for herself and swapped them for her uniform.  She looks around the library and pokes her head into the bunker.  'This is a pretty nice setup you've got for yourself here, boss,' she says.  'I can see that following you was definitely the right choice.  Soon there ain't going to be any law except what we make for ourselves and it's about time I figured that out.  So no more Officer Friedrich.  It's just Alexandra the bad dog.  Mmm... it feels so good to be a bad dog,' she says with a moan, having stuffed a paw into her jeans.  She rubs herself up against you.  'As promised, I'll be your slutty doggy bitch, boss.  I'm looking forward to it,' she says with a slow lick across your cheek as she fingers herself all the more.";
		now hp of Alexandra is 2;
	otherwise if hp of Alexandra is 2:
		say "     [one of]'Are you going to use your slutty bitch again soon?'[or]'I've been having beating up the strays who wander by.  It's much more fun dealing with them now that I'm willing to play with them afterwards.'[or]'Thanks again for knocking some sense into me, boss.  Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]Alexandra gives you a report on recent activity around the library while playing with her pussy.[or]'I hope something wanders by soon.  I'm in the mood to bust some heads,' she growls, running her paw over her nightstick.[at random]";
	otherwise if hp of Alexandra is 3:
		if lust of Alexandra > 12:	[visibly preggers]
			say "     [one of]'It seems your naughty bitch has gotten herself knocked up, boss.'[or]'Thanks again for knocking some sense into me, boss.  Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]Alexandra gives you a report on recent activity around the library while rubbing her swollen breasts, milk leaking from her nipples.[or]'You're quite the stud, boss,' she moans, running her paws over her enlarged, pregnant belly.[or]'It looks like I'm going to have some pups,' she says, running her paws over her rounded belly with a shiver of excitement at the prospect.[or]'It's a little strange getting so pregnant so fast, but I guess that's what makes me a breeder bitch, isn't it?' she says with a smile.[at random]";
		otherwise:				[slightly preggers]
			say "     [one of]'Are you going to use your slutty bitch again soon?'[or]'I've been having beating up the strays who wander by.  It's much more fun dealing with them now that I'm willing to play with them afterwards.'[or]'Thanks again for knocking some sense into me, boss.  Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]Alexandra gives you a report on recent activity around the library while rubbing her breasts.[or]'I hope something wanders by soon.  I'm in the mood to bust some heads,' she growls, running her paw over her nightstick.[at random]";
	otherwise if hp of Alexandra is 4:
		say "     [one of]'Are you going to use your slutty bitch again soon?'[or]'I've been having beating up the strays who wander by.  It's much more fun dealing with them now that I'm willing to play with them afterwards.'[or]'My pups go out to have a little fun from time to time.  But don't worry.  They know to leave you along, boss.'[or]'It was pretty fun getting knocked up and having some pups.'[or]'It was really exciting getting used like a breeder bitch.  I'm looking forward to doing it again and again.'[or]'Thanks again for knocking some sense into me, boss.  Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]Alexandra gives you a report on recent activity around the library while playing with her pussy.[or]'My pups are a bunch of rough hounds like their bitch mother,' she says with a grin.[or]'I hope something wanders by soon.  I'm in the mood to bust some heads,' she growls, running her paw over her nightstick.[or]'My pups can be a bit of a handful, but it's nothing a good knock on the head doesn't fix,' she says.[or]'I hope you'll breed another litter in your bad doggy bitch soon.'[at random]";
	otherwise if hp of Alexandra is 5:
		if lust of Alexandra > 12:	[visibly preggers]
			say "     [one of]'It seems your naughty bitch has gotten herself knocked up, boss.'[or]'Thanks again for knocking some sense into me, boss.  Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]Alexandra gives you a report on recent activity around the library while rubbing her swollen breasts, milk leaking from her nipples.[or]'You're quite the stud, boss,' she moans, running her paws over her enlarged, pregnant belly.[or]'My pups go out to have a little fun from time to time.  But don't worry.  They know to leave you along, boss.'[or]'It looks like I'm going to have some more pups,' she says, running her paws over her rounded belly with a shiver of excitement at the prospect.[or]'My pups are a bunch of rough hounds like their bitch mother,' she says with a grin.[or]'It was a little strange at first, but I'm really looking forward to giving birth to more pups.'[or]'My pups can be a bit of a handful, but it's nothing a good knock on the head doesn't fix,' she says.[or]'I'm really enjoying being bred like the naughty bitch I am,' she says with a moan, reaching around her rounded belly to rub her pussy as best she can.[at random]";
		otherwise:				[slightly preggers]
			say "     [one of]'Are you going to use your slutty bitch again soon?'[or]'I've been having beating up the strays who wander by.  It's much more fun dealing with them now that I'm willing to play with them afterwards.'[or]'My pups go out to have a little fun from time to time.  But don't worry.  They know to leave you along, boss.'[or]'It was pretty fun getting knocked up and having some pups.'[or]'It was really exciting getting used like a breeder bitch.  I'm looking forward to doing it again and again.'[or]'Thanks again for knocking some sense into me, boss.  Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]Alexandra gives you a report on recent activity around the library while rubbing her breasts.[or]'My pups are a bunch of rough hounds like their bitch mother,' she says with a grin.[or]'My pups can be a bit of a handful, but it's nothing a good knock on the head doesn't fix,' she says.[or]'I hope something wanders by soon.  I'm in the mood to bust some heads,' she growls, running her paw over her nightstick.[or]She rubs her somewhat rounded belly.  'Mmm... got another litter on the way, boss,' she says with a smile.[at random]";


Section 2 - Bad Girl Sexxxings

Part 1 - Bad Alexandra Sex Selection

to say badAlexandrasex:
	if lust of Alexandra > 12:
		say "     You grab Alexandra in your arms and run your hands over the pregnant Doberwoman, making her moan with lust.  She pants excitedly [if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]and licks her muzzle for lingering traces of your cum [end if]as you help her squirm out of her jeans and jacket[if lastdobiemess is 1 or lastdobiemess is 2].  The denim, still stained from your last fucking, is damp and musky with the scents of sex and arousal, old and fresh[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  The denim, still stained with her juices, is damp and musky with the scents of sex and arousal, old and fresh[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  The denim, still stained with signs of a recent fucking, is damp and musky with the scents of sex and arousal, old and fresh, canine and lupine[otherwise if lastdobiemess is 6].  Her chest fur, still marked with streaks of your cum, is marked with white on her breasts[end if].  With her heavy with pups, how shall you take your canine bitch this time?";
	otherwise:
		say "     You grab Alexandra in your arms and grope the Doberwoman, making her moan with lust.  She pants excitedly[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]and licks her muzzle for lingering traces of your cum [end if] and squirms out of her jeans and jacket[if lastdobiemess is 1 or lastdobiemess is 2].  The denim, still stained from your last fucking, is damp and musky with the scents of sex and arousal, old and fresh[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  The denim, still stained with her juices, is damp and musky with the scents of sex and arousal, old and fresh[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  The denim, still stained with signs of a recent fucking, is damp and musky with the scents of sex and arousal, old and fresh, canine and lupine[otherwise if lastdobiemess is 6].  Her chest fur, still marked with streaks of your cum, is marked with white on her breasts[end if].  Just what do you feel like doing with your canine bitch this time?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0 and lust of Alexandra <= 12:
		choose a blank row in table of fucking options;
		now title entry is "Bend her over";
		now sortorder entry is 1;
		now description entry is "Bend her over a table and fuck the bitch.";
	if cocks of player > 0 and lust of Alexandra <= 12:
		choose a blank row in table of fucking options;
		now title entry is "Against the wall";
		now sortorder entry is 2;
		now description entry is "Press your bitch against the wall and fuck her hard.";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "All fours";
		now sortorder entry is 3;
		now description entry is "Fuck your bitch on all fours.";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "Take her up the ass.";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 5;
		now description entry is "Have Alexandra suck you off.";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get cunnilingus";
		now sortorder entry is 6;
		now description entry is "Have Alexandra lick your snatch.";
	choose a blank row in table of fucking options;
	now title entry is "Lick Alexandra";
	now sortorder entry is 7;
	now description entry is "Lick Alexandra's snatch.";
	if cunts of player > 0 or cocks of player > 0 and lust of Alexandra <= 12:
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 8;
		now description entry is "69 with the dobie.";
	if cocks of player > 0 and ( hp of Alexandra > 3 or lust of Alexandra > 12 ):
		choose a blank row in table of fucking options;
		now title entry is "Titty fuck";
		now sortorder entry is 9;
		now description entry is "Fuck those lovely melons of hers.";
	if ( cocks of player > 0 or cunts of player > 0 ) and level of Alexandra is 2 and lastFangfucked - turns >= ( 9 - hp of Fang):
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Fang";
		now sortorder entry is 10;
		now description entry is "Share her with the wolf.";
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
				if nam is "Bend her over":
					say "[badAlexandrasex1]";
				otherwise if nam is "Against the wall":
					say "[badAlexandrasex2]";
				otherwise if nam is "All fours":
					say "[badAlexandrasex3]";
				otherwise if nam is "Anal":
					say "[badAlexandrasex4]";
				otherwise if nam is "Blow job":
					say "[badAlexandrasex5]";
				otherwise if nam is "Get cunnilingus":
					say "[badAlexandrasex6]";
				otherwise if nam is "Lick Alexandra":
					say "[badAlexandrasex7]";
				otherwise if nam is "69":
					say "[badAlexandrasex8]";
				otherwise if nam is "Titty fuck":
					say "[badAlexandrasex9]";
				otherwise if nam is "Threesome with Fang":
					say "[badAlexandrasex10]";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Alexandra is turns;
	wait for any key;
	clear the screen and hyperlink list;


Part 2 - Bad Alexandra Sex Scenes

to say badAlexandrasex1:		[Bend her over]
	say "     You push the ex-cop down over one of the tables and spread her legs with a firm motion with your foot.  She whimpers softly in excitement and her short tail wags frantically as juices run down her legs.  Grinning at the sight, you get your cock lined up with her wet pussy and thrust into her, making her moan loudly[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  Keeping her shoulders pinned down, you pound your [cock size desc of player] [cock of player] cock into her as she rocks her hips back into every thrust you make.";
	say "     'Oh yes!  Do me!  Fuck your slutty bitch,' she pants.  She [one of]moves her paws to grope her [if lastdobiemess is 6]cum-streaked [end if]breasts and play with her nipples[or]grips the edge of the table, her claws digging into the wood[or]drools onto the table as her breasts are pressed firmly against the cool wooden surface[at random].  Your [cock size desc of player] cock [if cock length of player > 30]has stuffed your bad doggy bitch with a prominent and phallic bulge for your massive meat[otherwise if cock length of player > 20]makes a visible bulge in your bad doggy bitch[otherwise if cock length of player > 10]stuffs your bad doggy bitch such that she feels wonderfully tight and juicy around your shaft[otherwise]fucks your bad doggy bitch's wanton hole[end if].  Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body clearly needing this proper pounding you're giving her.";
	if a random chance of 1 in 3 succeeds:
		say "     In the mood to take your time with the horny hound, you slow your thrusting and let your hands roam all over her, grabbing her like she's your property.  She pants and grinds back against you, loving being treated in such a manner, but her needy body wanting you to drill her hard.  You grin at her soft, needy whining but ignore it, choosing instead to play with her nipples, her ass, her juicy, cock-filled cunt.  Her sweet waters run down your crotch as she quivers around your meat.  You tease her clit lightly and whisper to her to beg for it like the slutty bitch she is.  She moans and tries to fight it briefly, mostly for your added amusement, before crying out for you to pound her and breed her, to drill her deep and use her like your slutty bitch.  You kiss the side of her muzzle, telling her she only had to ask and start doing just that, rocking the large table beneath you both as you slam against her sexy bottom.";
	otherwise:
		say "     Wanting to have wild go at it, you press your hands down onto her shoulders and slam into her hard and fast over and over again.  Under such an assault, your slutty bitch can only moan and pant, drooling onto the table.  Her juices run down your crotch as she quivers in delight with every thrust you make into her.  Even the large, heavy table starts to rock and shift a little as you slam against her sexy bottom, fucking her for all you're worth.";
	if cockname of player is listed in infections of Knotlist:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock as she cries out for you to tie with her.  Grabbing her shoulders, you drive hard into her and pop your swollen knot into her.  This has her cry out even louder and a second wave of her canine juices soak your crotch.  She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40].  Your massive load leaves the dobie bitch so bloated and full with your knot keeping all that hot jizm locked inside her womb.  Once your knot finally goes down and you withdraw, she flops to the floor, too stuffed to do anything but lie there and rub her paws over her overstuffed womb as your seed slowly leaks out of her[otherwise if cock width of player > 20].  Your massive load leaves the dobie bitch with a full and bloated tummy that, with your knot tying her to you, has nowhere to go but her womb.  Once your knot finally goes down and you withdraw, she staggers back to her post while happily stroking over her rounded belly[otherwise].  You drain your balls into the dobie bitch, your knot keeping your load locked inside her until it goes down and you're able to withdraw[end if].";
	otherwise:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock, pushing you to orgasm moments later.  She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40].  Your massive load leaves the dobie bitch so bloated and full that she can't even move for some time, only able to rub her paws over her overstuffed womb as your seed slowly leaks out of her[otherwise if cock width of player > 20].  Your massive load leaves the dobie bitch with a full and bloated tummy that she happily strokes as she staggers back to her post[otherwise].  You drain your balls into the dobie bitch, leaving her well seeded and slowly leaking your cum from her well-fucked pussy[end if].";
	now lastdobiemess is 1;
	let t be 2;
	increase t by level of Alexandra;
	if hp of Alexandra is even and a random chance of t in 5 succeeds:
		increase hp of Alexandra by 1;
		now lust of Alexandra is 1;

to say badAlexandrasex2:		[Against the wall]
	say "     You push the ex-cop over to the wall and press her against it.  You hold her arms spread and push her legs apart with a firm motion of your foot.  'Spread [']em, bitch,' you growl to her, causing her to moan and grind her rear back against you as she complies[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].";
	say "     'You'll never break me,' she growls playfully.  Her short tail wags frantically as juices run down her legs, showing just how much the rough treatment's turning her on.";
	say "     'We'll see about that,' you respond, pressing her to the stone and driving your [cock size desc of player] [cock of player] cock into her wet pussy.  She groans loudly and struggles weakly, encouraging you to push into her all the harder[if cock length of player > 30].  Your [cock size desc of player] shaft stuffs your bad doggy bitch with a prominent and phallic bulge from your massive meat[otherwise if cock length of player > 20].  Your [cock size desc of player] shaft makes a visible bulge in your bad doggy bitch[otherwise if cock length of player > 10].  Your [cock size desc of player] shaft stuffs your bad doggy bitch such that she feels wonderfully tight and juicy around your manmeat[end if].  You pound away at her hard and fast, enjoying the panting and moaning coming from her as you fuck her.  Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body clearly needing this proper pounding you're giving her.";
	if a random chance of 1 in 3 succeeds:
		say "     Wanting to continue to play it out, you pound away at her steadily, grinding her body against the wall as you really bear into her.  Her pussy squeezes around your cock each time you slam into her and her wet juices run down both your thighs.  You growl in her ear that she's can't hold out forever and soon she'll cum like the horny bitch she is.  Panting heavily now, she shakes her head, but grinds your ass against her all the harder, a clear demonstration of how she wants you claim her again.  Grunting as you push hard into her quivering hole, you bite firmly at her neck and shoulder while keeping her pinned to the wall like some prisoner or prize of yours.";
	otherwise:
		say "     You keep at it, drilling into her juicy hole while holding her against the while.  You nibble at her ear and tell her that she'll be your bitch from now on, that she just needs to beg for it.  Still wanting to keep playing, she struggles weakly as shivers of delight run through her at your mistreatment of her.  She clearly finds your dominance and breaking of her very erotic and wants to relive it again.  More than happy to reassert yourself as her master, you keep it up, driving your pulsing cock into her juicy cunt again and again while keeping her pinned down.  'Oh yes, you win.  I'm your bitch, your prize cunt.  Just don't stop fucking me, boss!' she cries out, unable to hold it in any longer.";
	if cockname of player is listed in infections of Knotlist:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock as she cries out for you to tie with her.  Pressing her firmly against the wall, you drive hard into her and pop your swollen knot into her cunt.  This has her cry out even louder and a second wave of her canine juices soak your crotch.  She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40].  Your massive load leaves the dobie bitch so bloated and full with your knot keeping all that hot jizm locked inside her womb.  Once your knot finally goes down and you withdraw, she flops to the floor, too stuffed to do anything but lie against the wall and rub her paws over her overstuffed womb as your seed slowly leaks out of her[otherwise if cock width of player > 20].  Your large load leaves the dobie bitch with a full and bloated tummy that, with your knot tying her to you, has nowhere to go but her womb.  Once your knot finally goes down and you withdraw, she staggers back to her post while happily stroking over her rounded belly[otherwise].  You drain your balls into the dobie bitch, your knot keeping your load locked inside her until it goes down and you're able to withdraw[end if].";
	otherwise:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock as she cries out for you to breed her.  Pressing her firmly against the wall, you drive hard into her a few more times before cumming hard.  She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40].  Your massive load leaves the dobie bitch so bloated and full that she can't even move for some time, only able to lie against the wall and rub her paws over her overstuffed womb as your seed slowly leaks out of her[otherwise if cock width of player > 20].  Your large load leaves the dobie bitch with a full and bloated tummy that she happily strokes as she staggers back to her post[otherwise].  You drain your balls into the dobie bitch, leaving her well seeded and slowly leaking your cum from her well-fucked pussy[end if].";
	now lastdobiemess is 1;
	let t be 2;
	increase t by level of Alexandra;
	if hp of Alexandra is even and a random chance of t in 5 succeeds:
		increase hp of Alexandra by 1;
		now lust of Alexandra is 1;

to say badAlexandrasex3:		[All fours]
	if lust of Alexandra > 12:		[visibly preggers]
		say "     Using some blankets for padding under her rounded belly, you get the ex-cop down on her hands and knees.  You grab her taut ass and give it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs.  Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy.  You tease your glans against her puffy, wet lips and grin as she moans and begs to get fucked.  Only after you've gotten her really worked up do you relent and thrust into your needy bitch, making her cry out as she's finally mounted.";
		say "     Keeping a firm grip on that sexy ass of hers, you pound into the Doberwoman with your [cock size desc of player] [cock of player] cock.  She pants [one of]and moans about how great it feels[or]and drools onto the floor with her tongue hanging out[or]as her plump[if lastdobiemess is 6], cum-streaked[end if] breasts sway with every thrust[at random].  Your [cock size desc of player] cock [if cock length of player > 30]stretches her juicy cunt wide and adds a bit of a phallic bulge to your bad doggy bitch's already rounded belly[otherwise if cock length of player > 20]stretches her juicy cunt open and plumps up your bad doggy bitch's already rounded belly a little further[otherwise if cock length of player > 10]stuffs your bad doggy bitch's cunt such that she feels wonderfully tight and juicy around your shaft[otherwise]fucks your bad doggy bitch's juicy hole[end if].  Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body responding to the much needed fucking.";
		say "     Alexandra moans beneath you, tongue hanging out and drool puddling on the floor as she pants like the needy bitch she is.  You release that delicious bottom of hers and let your hands slide over her body, petting her like a dog at first while calling her your good, bad girl before reaching around to rub her pregnant belly with a big grin at how well you've trained the once stuffy cop and have even knocked her up.  She pants at all this attention and moans softly as you reach a little further to grab her swollen, milk-laden breasts.  Playing with her nipples even gets some to leak out, showing she'll soon be ready to [if hp of Alexandra is 5]add another little of pups to her kennel of Doberman children[otherwise]drop her first little of Doberman children[end if].  Feeling you've teased her enough, you lean back up and start drilling your pulsing cock into her with renewed vigour, flush with the sense of your own strength and virility.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you drive your knot into her and lock your hips together.  She throws her head back and gives a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums.  Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her as you cum in the knocked-up doggy.  Feeling your semen shooting into her, she cries out even louder as a second rush of canine juices soak your crotch[if cock width of player > 40].  With your knot keeping it all inside her, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady.  When your knot finally goes down enough for you to pull out, she rolls over and can only lie there, rubbing her overfull tummy while moaning in pleasure as your semen slowly leaks out of her[otherwise if cock width of player > 20].  With your knot keeping it all inside her, your large load causes the dobie bitch's already full belly to swell a few more inches.  When your knot finally goes down enough for you to pull out, she rolls onto her side and chooses to stay there for a while, rubbing her bloated belly while your semen slowly leaks out of her[otherwise].  With your knot stuffing her, your hot load is kept locked inside her.  Once your knot finally goes down enough, you pull out and get her to lick you clean before she lies down to rest[end if].";
		otherwise:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum.  This sends the sexy canine over the edge and she releases a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums.  Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her as you cum in the knocked-up doggy while canine juices soak your crotch[if cock width of player > 40].  With much of it overflowing around your cock, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady.  Once you're, she rolls over and can only lie there, rubbing her overfull tummy while moaning in pleasure as your semen slowly leaks out of her[otherwise if cock width of player > 20]With much of it overflowing around your cock, your large load causes the dobie bitch's already full belly to swell a few more inches.  Once you're done, she rolls onto her side and chooses to stay there for a while, rubbing her bloated belly while your semen slowly leaks out of her[otherwise].  You fuck her until your balls are drained into the dobie bitch before withdrawing.  After pulling out, you get her to lick you clean[end if].";
	otherwise:					[not visibly preggers]
		say "     You push the ex-cop down onto her hands and knees, grabbing her taut ass and giving it a firm squeeze.  She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy.  You tease your glans against her puffy, wet lips and grin as she moans and begs to get fucked.  Only after you've gotten her really worked up do you relent and thrust into your needy bitch, making her cry out as she's finally mounted.";
		say "     Keeping a firm grip on that sexy ass of hers, you pound into the Doberwoman with your [cock size desc of player] [cock of player] cock.  She pants [one of]and moans about how great it feels[or]and drools onto the floor with her tongue hanging out[or]as her [if hp of Alexandra > 3 and lastdobiemess is 6]plump, cum-streaked [otherwise if hp of Alexandra is 3]plump [end if]breasts sway with every thrust[at random].  Your [cock size desc of player] cock [if cock length of player > 30]stretches her juicy cunt wide and makes a prominent and phallic bulge in your bad doggy bitch[otherwise if cock length of player > 20]stretches her juicy cunt open and produces a visible swelling in your bad doggy bitch[otherwise if cock length of player > 10]stuffs your bad doggy bitch's cunt such that she feels wonderfully tight and juicy around your shaft[otherwise]fucks your bad doggy bitch's juicy hole[end if].  Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body responding to the much needed fucking.";
		say "     Alexandra moans beneath you, tongue hanging out and drool puddling on the floor as she pants like the needy bitch she is.  You release that delicious bottom of hers and let your hands slide over her body, petting her like a dog at first while calling her your good, bad girl.  After petting her for a while, you lean forward and put an arm around her, rubbing her tummyfur and then moving on to grope her [if hp of Alexandra > 3]plump[otherwise]shapely[end if] breasts.  You tease and pinch her nipples while fucking her doggy-style for a while before leaning back up and grabbing her ass you you can get back to slamming hard into her, much to her delight after all the teasing.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you drive your knot into her and lock your hips together.  She throws her head back and gives a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums.  Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her as you try to breed your sexy bitch.  Feeling your semen shooting into her, she cries out even louder as a second rush of canine juices soak your crotch[if cock width of player > 40].  Your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jizm your knot's keeping locked inside her womb.  Once your knot finally goes down enough to pull out, she flops to the floor, too full and happy to do anything but lie there and rub her paws over her bloated belly as your seed slowly leaks out of her[otherwise if cock width of player > 20].  Your large load causes the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves.  With your knot tying her to you, there is nowhere for it all to go but her womb.  Once your knot finally goes down enough to pull out, she rises slowly and staggers back to her post while happily stroking over her rounded belly[otherwise].  With your knot stuffing her, your hot load is kept locked inside her.  Once your knot finally goes down enough, you pull out and get her to lick you clean[end if].";
		otherwise:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum.  This sends the sexy canine over the edge and she releases a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums.  Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her as you try to breed your sexy bitch while canine juices soak your crotch[if cock width of player > 40].  Your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jizm you're pumping into her.  Once you're done, she flops to the floor, too full and happy to do anything but lie there and rub her paws over her bloated belly as your seed slowly leaks out of her[otherwise if cock width of player > 20].  Your large load causes the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves.  Once you're done, she rises slowly and staggers back to her post while happily stroking over her rounded belly[otherwise].  You fuck her until your balls are drained into the dobie bitch before withdrawing.  After pulling out, you get her to lick you clean[end if].";
	now lastdobiemess is 1;
	let t be 2;
	increase t by level of Alexandra;
	if hp of Alexandra is even and a random chance of t in 5 succeeds:
		increase hp of Alexandra by 1;
		now lust of Alexandra is 1;


to say badAlexandrasex4:		[Anal]
	if lust of Alexandra > 12:
		say "     Using some blankets for padding under her rounded belly, you get the ex-cop down on her hands and knees.  You grab her taut ass and give it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs.  Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy.  You tease your glans against her puffy, wet lips before aiming a little further up and push against her crinkled anus.";
		if dobieanal is false:
			say "     'I... that's...' she starts to say, her ears dipping a little as she realizes what you have in mind.  'I've never done anything like that before,' she whimpers.  From the way her tail's still wagging, you can tell she's excited by the prospect, so you give another press against her tailhole.  'Mmm... alright, let's get kinky, boss,' she moans.";
		otherwise:
			say "     'Mmm... I think you're feeling kinky again, boss,' she whimpers.  'Come on, then.  Use your dirty doggy bitch,' she moans, pressing her rear back against your cock, urging you to fuck her ass again.";
		say "     Grabbing her ass tightly, you thrust forward, pushing your cock into her [if dobieanal is false]virgin [end if]hole and start fucking her.  You're prepared to start slow, but Alexandra pushes back, urging you to fuck her rough and hard.  You give her rear a swat and call her such a bad, dirty doggy and pound away at her.  Your [cock size desc of player] cock [if cock length of player > 30]stretches her back door wide and adds a bit of a phallic bulge to your bad doggy bitch's already rounded belly as you bugger her[otherwise if cock length of player > 20]stretches her back door open and plumps up your bad doggy bitch's already rounded belly a little further as you bugger her[otherwise if cock length of player > 10]stuffs your bad doggy bitch's wonderfully tight anus[otherwise]buggers your bad doggy bitch's back door[end if].  Her anal walls squeeze and pull around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her dark pucker[end if], her body pushing back eagerly into every thrust.  Her pregnant belly rocks with every hard push into her sexy bottom.  She may moan and whimper at being fucked up the ass, but she pants and leaks juices constantly as well, clearly very turned on by being used in such a way.";
		say "     As you keep fucking that tight ass of hers, you slip a hand between her legs to tend to her needy cunt, rubbing over her juicy folds and slipping a few fingers into her.  You start by just teasing her clit and a few sensitive spots, but soon switch it up to pumping your fingers into her quivering hole in [one of]tandem[or]counterpoint[at random] to your thrusts into her ass[if dobieanal is false].  You have quite a bit of fun training your bitch, finding she's taking to being an anal slut quite readily[otherwise].  You are quite pleased by how well your bitch is taking to being an anal slut[end if] and fuck her all the harder for it, much to her increasing delight.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you force your knot into her tight hole and tie with her.  She gives a loud whimper as your thick bulb is crammed into her, but her juices soak her crotch as well as she cums hard.  Her rectum clenches down around your knot and her anal muscles squeeze your shaft, milking it for all you can give.  'Oh yes, fill my [if dobieanal is false]virgin[otherwise]naughty[end if] bitch ass,' she cries out.  Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40].  Held in by your thick knot, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady.  Once your knot finally goes down enough to pull out, she collapses to the floor, too full and well fucked to move.  She lies there, panting and rubbing her overfull belly while your seed pours out of her gaping anus[otherwise if cock width of player > 20].  With your knot tying her to you, your large load pools in her bowels, causing the dobie bitch's already full belly to swell a few more inches.  Once your knot finally goes down enough to pull out, she flops onto her side, too worn out to get up after such a rough ride.  She lies there panting, stroking her bloated belly as your seed slowly leaks from her creamy hole[otherwise].  With your knot stuffing her, your hot load is kept locked inside her to pool in her bowels.  Once your knot finally goes down enough, she flops onto her side, unable to stand quite yet after such a rough ride.  She lies there panting, content to rub a finger at her creamy hole[end if].";
		otherwise:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum.  She gives a loud whimper as your [cock of player] shaft is crammed into her, but her juices soak her crotch as well as she cums hard.  Her anal muscles squeeze your shaft, milking it for all you can give.  'Oh yes, fill my [if dobieanal is false]virgin[otherwise]naughty[end if] bitch ass,' she cries out.  Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40].  With much of it overflowing around your cock, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady.  Once you're done and pull out, she collapses to the floor, too full and well fucked to move.  She lies there, panting and rubbing her overfull belly while your seed pours out of her gaping anus[otherwise if cock width of player > 20].  With much of it overflowing around your cock, your large load pools in her bowels, causing the dobie bitch's already full belly to swell a few more inches.  Once you're done and have pulled out, she flops onto her side, unable to stand quite yet after such a rough ride.  She lies there panting, stroking her bloated belly as your seed slowly leaks from her creamy hole[otherwise].  You fuck her tight ass until your balls are drained into the dobie bitch before withdrawing.  She flops onto her side, unable to stand quite yet after such a rough ride.  She lies there panting, content to rub a finger at her creamy hole[end if].";
	otherwise:
		say "     You push the ex-cop down onto her hands and knees, grabbing her taut ass and giving it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs.  Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy.  You tease your glans against her puffy, wet lips before aiming a little further up and push against her crinkled anus.";
		if dobieanal is false:
			say "     'I... that's...' she starts to say, her ears dipping a little as she realizes what you have in mind.  'I've never done anything like that before,' she whimpers.  From the way her tail's still wagging, you can tell she's excited by the prospect, so you give another press against her tailhole.  'Mmm... alright, let's get kinky, boss,' she moans.";
		otherwise:
			say "     'Mmm... I think you're feeling kinky again, boss,' she whimpers.  'Come on, then.  Use your dirty doggy bitch,' she moans, pressing her rear back against your cock, urging you to fuck her ass again.";
		say "     Grabbing her ass tightly, you thrust forward, pushing your cock into her [if dobieanal is false]virgin [end if]hole and start fucking her.  You're prepared to start slow, but Alexandra pushes back, urging you to fuck her rough and hard.  You give her rear a swat and call her such a bad, dirty doggy and pound away at her.  Your [cock size desc of player] cock [if cock length of player > 30]stretches her back door wide and makes a prominent and phallic bulge in your bad doggy bitch as you bugger her[otherwise if cock length of player > 20]stretches her back door open and produces a visible swelling in your bad doggy bitch as you bugger her[otherwise if cock length of player > 10]stuffs your bad doggy bitch's wonderfully tight anus[otherwise]buggers your bad doggy bitch's back door[end if].  Her anal walls squeeze and pull around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her dark pucker[end if], her body pushing back eagerly into every thrust.  She may moan and whimper at being fucked up the ass, but she pants and leaks juices constantly as well, clearly very turned on by being used in such a way.";
		say "     As you keep fucking that tight ass of hers, you slip a hand between her legs to tend to her needy cunt, rubbing over her juicy folds and slipping a few fingers into her.  You start by just teasing her clit and a few sensitive spots, but soon switch it up to pumping your fingers into her quivering hole in [one of]tandem[or]counterpoint[at random] to your thrusts into her ass[if dobieanal is false].  You have quite a bit of fun training your bitch, finding she's taking to being an anal slut quite readily[otherwise].  You are quite pleased by how well your bitch is taking to being an anal slut[end if] and fuck her all the harder for it, much to her increasing delight.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you force your knot into her tight hole and tie with her.  She gives a loud whimper as your thick bulb is crammed into her, but her juices soak her crotch as well as she cums hard.  Her rectum clenches down around your knot and her anal muscles squeeze your shaft, milking it for all you can give.  'Oh yes, fill my [if dobieanal is false]virgin[otherwise]naughty[end if] bitch ass,' she cries out.  Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40].  Held in by your thick knot, your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jizm your knot's keeping locked inside her bowels.  Once your knot finally goes down enough to pull out, she collapses to the floor, panting and rubbing her bloated belly while your seed pours out of her gaping anus[otherwise if cock width of player > 20].  With your knot tying her to you, your large load pools in her bowels, causing the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves.  Once your knot finally goes down enough to pull out, she flops onto her side, unable to stand quite yet after such a rough ride.  She lies there panting, stroking her rounded belly as your seed slowly leaks from her creamy hole[otherwise].  With your knot stuffing her, your hot load is kept locked inside her to pool in her bowels.  Once your knot finally goes down enough, she flops onto her side, unable to stand quite yet after such a rough ride.  She lies there panting, content to rub a finger at her creamy hole[end if].";
		otherwise:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum.  She gives a loud whimper as your [cock of player] shaft is crammed into her, but her juices soak her crotch as well as she cums hard.  Her anal muscles squeeze your shaft, milking it for all you can give.  'Oh yes, fill my [if dobieanal is false]virgin[otherwise]naughty[end if] bitch ass,' she cries out.  Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40].  Your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jizm you're pumping into her bowels.  Once you're done and have pulled out, she collapses to the floor, panting and rubbing her bloated belly while your seed pours out of her gaping anus[otherwise if cock width of player > 20].  Your large load pools in her bowels, causing the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves.  Once you're done and have pulled out, she flops onto her side, unable to stand quite yet after such a rough ride.  She lies there panting, stroking her rounded belly as your seed slowly leaks from her creamy hole[otherwise].  You fuck her tight ass until your balls are drained into the dobie bitch before withdrawing.  She flops onto her side, unable to stand quite yet after such a rough ride.  She lies there panting, content to rub a finger at her creamy hole[end if].";
	now lastdobiemess is 2;
	now dobieanal is true;

to say badAlexandrasex5:		[Blow job]
	say "     You push the ex-cop down onto her knees, pressing your cock into her face.  She whimpers softly in excitement and wags her short tail quickly.  She sniffs your crotch and slides her canine tongue along your cock and balls before sliding her muzzle over your meat.  She uses her long tongue to eagerly lick along your shaft while you thrust into her warm, wet muzzle[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if].  She rubs her paws over your [ball size][if cunts of player > 1] and finger your pussies[otherwise if cunts of player is 1] and finger your pussy[end if][if cocks of player > 1].  She alternates between your cocks, alternating between paws and muzzle on each of them[end if][if lust of Alexandra > 12].  You can't help but grin as you look down at the pregnant bitch eagerly working over the cock that's knocked her up[end if].";
	say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod makes it difficult for the dobie bitch to cope, but you persevere and manages to stuff your massive shaft down her throat, distending her mouth and body around it[otherwise if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod makes it a little difficult for the dobie bitch to cope, but you persevere and manage to stuff your massive shaft down her throat, causing a visible bulge in her mouth and throat[otherwise if cock length of player > 10]Your [cock size desc of player] [cock of player] rod stuffs your dobie bitch's muzzle and throat nicely, letting you fuck her muzzle and deep throat her[otherwise]Your [cock size desc of player] [cock of player] is easily handled by the dobie bitch's muzzle, leaving her free to slather it with her tongue[end if][if cockname of player is listed in infections of Knotlist].  She rubs at your swollen knot and slides her tongue across it with a low, muffled moan[end if].  As you fuck her face, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up.  That is a command she's more than willing to comply with and moans happily.";
	say "     [if cock length of player > 20]She does her best to cope with your [cock size desc of player] shaft and lavishes attention upon it[otherwise]She lavishes attention upon your [cock size desc of player] shaft[end if] with her muzzle, mouth and tongue, doing her best to please her master.  Her paws rub and stroke at your exposed length whenever she pulls her muzzle back for a breath and over your [ball size][if cunts of player > 1] and [cunt size desc of player] cunts[otherwise if cunts of player is 1] and [cunt size desc of player] cunt[end if] the rest of the time.  You rub her head and ears like you would a dog, which sets her tail wagging anew.  Grinning, you call her your good, bad dog again, ordering her to keep sucking your cock to earn her creamy treat.";
	if lust of Alexandra > 12:
		say "     [one of]You are quite pleased with your training of the Doberwoman, having made her into a very eager and obedient plaything.  The blow job is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop[or]You're quite pleased with how she's doing; for someone with no experience before you started training her, she's coming along very nicely.  Definitely an enthusiastic slut, you'll definitely enjoy your hard-earned prize for a good, long time if you have anything to say about it[at random].  Eventually this becomes too much and you pull her forward, burying her nose in your groin as your cock throbs and pulses, blasting your cum [if cock length of player > 20]directly into her belly[otherwise if cock length of player > 10]down her throat[otherwise]into her muzzle[end if].  You drain your [ball size] into her[if cock width of player > 40], leaving her already swollen belly so big she can hardly move at all.  She can only lie there, rubbing her overfull tummy while moaning in pleasure[otherwise if cock width of player > 20], leaving her with a bloated bellyful of semen that further inflates her rounded belly.  This leaves her so full and plump that she chooses to lie there, rubbing her bulging belly[otherwise], feeding her your cum which she happily swallows down.  She happily rubs her paws over her full belly as she heads back to her post[end if].";
	otherwise:
		say "     You are quite pleased with your training of the Doberwoman, having made her into a very eager and obedient plaything.  The blow job is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop.  Eventually this becomes too much and you pull her forward, burying her nose in your groin as your cock throbs and pulses, blasting your cum [if cock length of player > 20]directly into her belly[otherwise if cock length of player > 10]down her throat[otherwise]into her muzzle[end if].  You drain your [ball size] into her[if cock width of player > 40], leaving her belly so full and bloated that she can only lie there, rubbing her overfull tummy[otherwise if cock width of player > 20], leaving her with a bloated bellyful of semen that she happily rubs with her paws as she wobbles back to her post[otherwise], feeding her your cum which she happily swallows down[end if].";
	now lastdobiemess is 3;

to say badAlexandrasex6:		[Get cunnilingus]
	say "     You push the ex-cop down onto her knees, pressing her muzzle to your [cunt size desc of player] pussy, ordering her to start licking.  She whimpers softly in excitement and wags her short tail quickly.  She sniffs your crotch and slides her canine tongue along your wet folds before sliding it into you[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, sets to work eagerly to get another taste of you[end if].  She uses her long tongue to eagerly lick along your inner walls and lap up your flowing juices[if cocks of player > 1].  She runs her paws over your [cock size desc of player] [cock of player] cocks and your [ball size] while tending to your juicy cunt[otherwise if cocks of player is 1].  She runs her paws over your [cock size desc of player] [cock of player] cock and your [ball size] while tending to your juicy cunt[end if][if cunts of player > 1].  For a while, she alternates between your pussies, licking at each of them before finally settling on one and using her fingers to rub at your wet folds[end if][if lust of Alexandra > 12].  You can't help but grin as you look down at the pregnant bitch eagerly lapping at your twat, knowing that you're the one who's knocked her up after fucking her juicy cunt[end if].";
	say "     [if cunt length of player > 12 and cunt width of player > 8]She licks and laps at your vagina as deeply as she can reach with her tongue while your grind your [cunt size desc of player] pussy against her muzzle.  Wanting more, you end up pulling most of her muzzle into your spacious cunt, essentially fucking yourself with it while her tongue dives deeper.  She seems quite pleased to be used by you in this manner, the slutty doggy bitch lusting for any way you'd like to use or abuse her[otherwise if cunt length of player > 6]She licks and laps as deep as she can with her long doggy tongue while you grind your [cunt size desc of player] pussy against her muzzle[otherwise]She licks and laps at your vagina, reaching your very depths to brush across your cervix while you grind your [cunt size desc of player] pussy against her muzzle[end if].  Her excited panting brushes across your folds while that broad tongue of hers runs along your inner walls and stimulates you deep inside.  As you grind against her, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up.  That is a command she's more than willing to comply with and moans happily, working her tongue even faster.";
	say "     [if cunt length of player > 12 and cunt width of player > 8]With her muzzle stuffed in your cunt, she works her tongue frantically, licking at your inner walls and reaching as deep as she can with it as she chases after your juices.  She turns and rocks her muzzle inside you as best she can with you holding her head tightly to yourself, letting the soft fur over it run across your sensitive walls[otherwise]With her muzzle pressed to your cunt, she works her tongue inside you frantically, licking at your inner walls and chasing after your juices[end if].  Shivers of delight run through you as you hold her in place, keeping her at her task.  With your juices filling her muzzle and your scent filling her nose, the horny bitch whines lustfully and does her best to please you with that long, slobbery tongue of hers.  You chuckle and call her your slutty, pussy-eating bitch, which makes her tail wag all the more.";
	say "     You are quite pleased with your training of the Doberwoman, having made her into a very eager and obedient plaything.  That slathering tongue is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop.  Eventually this becomes too much and you pull her forward as your cunt quivers and flows with a gush of your hot juices.  You soak the [if lust of Alexandra > 12]pregnant [end if]bitch's muzzle as she tries her best to lap it all up.  This sends you into another orgasm, drawing out your pleasure even further.  As you're panting and trying to recover you push her back, popping that tongue out of you with a wet slurp.  She smiles up at you and slowly licks your juices from her muzzle while [if lust of Alexandra > 12]reaching around her gravid belly to finger[otherwise]fingering[end if] herself to a powerful climax of her own.";
	now lastdobiemess is 4;

to say badAlexandrasex7:		[Lick Alexandra]
	if lust of Alexandra > 12:
		say "     Deciding to reward your slutty Doberman bitch, you help her to lie backwards over one of the tables and spread her legs.  With a hand fondling her bosom, you press the other to her groin and slip a few fingers into her while kissing her pregnant belly[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She yips and barks excitedly, panting happily as you start to play with her eagerly.  Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     Once you're satisfied she's wet and ready for you, you lower your head between her legs and start licking over those glistening folds.  You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make.  At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her[if dobieanal is true and lastdobiemess is 2].  Switching hands, you bring your wet fingers down to her recently used asshole and rub them across her pucked hole[otherwise if dobieanal is true].  Switching hands, you bring your wet fingers down to her asshole and rub them across her puckered hole[end if][if dobieanal is true].  After some light teasing and licking, you plunge your slick fingers into her even as you push some fingers from your other hand into her pussy, stuffing both holes in one firm motion.  This has her arch her back and cry out in delight, panting heavily as you have your way with her body.  She moans particularly loud with you rub both sets of fingers together, stimulating her sensitive inner walls from both sides at once[end if].  You rub and tease your fingers inside her between licking over those juicy folds of hers, making sure to lavish plenty of attention upon her clit between telling her that this is her reward for being such a good, bad doggy slut for you.";
		say "     You keep this up, pleased to see the bad doggy slut moaning on the table and fondling her [if lastdobiemess is 6]cum-streaked [end if]bosom and tweaking her nipples as you do all this.  Milk leaks from her breasts as she pinches her dark nipples.  Enjoying the sight of the enthusiastic cop now debasing herself to be your needy bitch, you can't help but smile and give your clit a kiss and a slow lick.  Keeping it up, you work your tongue over that sensitive nub, making her hips quiver with growing excitement.  When she cums, she releases a loud, excited bark and her hot juices soak your face and her groin.  You'd almost swear she tastes better now, her juices having a richer flavour.  The flow runs down onto the table, leaving a wet patch for her to soak in as she lies there to recover from her powerful climax.  You wipe your hand across her muzzle, spreading her juices over it so the scent can be a reminder of the pleasure her obedience brings.";
	otherwise:
		say "     Deciding to reward your slutty Doberman bitch, you push her backwards over one of the tables and spread her legs.  With a hand fondling her bosom, you press the other to her groin and slip a few fingers into her[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She yips and barks excitedly, panting happily as you start to play with her roughly.  Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     Once you're satisfied she's wet and ready for you, you lower your head between her legs and start licking over those glistening folds.  You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make.  At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her[if dobieanal is true and lastdobiemess is 2].  Switching hands, you bring your wet fingers down to her recently used asshole and rub them across her puckered hole[otherwise if dobieanal is true].  Switching hands, you bring your wet fingers down to her asshole and rub them across her puckered hole[end if][if dobieanal is true].  After some light teasing and licking, you plunge your slick fingers into her even as you push some fingers from your other hand into her pussy, stuffing both holes in one firm motion.  This has her arch her back and cry out in delight, panting heavily as you have your way with her body.  She moans particularly loud with you rub both sets of fingers together, stimulating her sensitive inner walls from both sides at once[end if].  You rub and tease your fingers inside her between licking over those juicy folds of hers, making sure to lavish plenty of attention upon her clit between telling her that this is her reward for being such a good, bad doggy slut for you.";
		say "     You keep this up, pleased to see the bad doggy slut squirming on the table and fondling her bosom and tweaking her nipples as you do all this.  Enjoying the sight of the enthusiastic cop now debasing herself to be your needy bitch, you can't help but smile and give your clit a kiss and a slow lick.  Keeping it up, you work your tongue over that sensitive nub, making her hips quiver with growing excitement.  When she cums, she releases a loud, excited bark and her hot juices soak your face and her groin.  The flow runs down onto the table, leaving a wet patch for her to soak in as she lies there to recover from her powerful climax.  You wipe your hand across her muzzle, spreading her juices over it so the scent can be a reminder of the pleasure her obedience brings.";
	now lastdobiemess is 5;


to say badAlexandrasex8:		[69]
	if cocks of player > 0:
		say "     Deciding to reward your slutty Doberman bitch with both a treat and some fun of her own, you get her to lie on the floor.  Moving beside her, bringing your cock to her face even as you nuzzle between her legs.  She whimpers softly in excitement and wags her short tail quickly.  She sniffs your crotch and slides her canine tongue along your cock and balls before sliding her muzzle over your meat.  She uses her long tongue to eagerly lick along your shaft while you thrust into her warm, wet muzzle[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if].  She rubs her paws over your [ball size][if cunts of player > 1] and finger your pussies[otherwise if cunts of player is 1] and finger your pussy[end if][if cocks of player > 1].  She alternates between your cocks, alternating between paws and muzzle on each of them[end if][if lust of Alexandra > 12].  You can't help but grin as you look down at the pregnant bitch eagerly working over the cock that's knocked her up[end if].";
		say "     As she sets to work on your cock, you run a hand across her thigh and raise her leg.  With a hand petting her tummy like a dog, you press the other to her groin and slip a few fingers into her[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She yips and barks excitedly, panting happily as you start to play with her roughly.  Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod makes it difficult for the dobie bitch to cope, but you persevere and manages to stuff your massive shaft down her throat, distending her mouth and body around it[otherwise if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod makes it a little difficult for the dobie bitch to cope, but you persevere and manage to stuff your massive shaft down her throat, causing a visible bulge in her mouth and throat[otherwise if cock length of player > 10]Your [cock size desc of player] [cock of player] rod stuffs your dobie bitch's muzzle and throat nicely, letting you fuck her muzzle and deep throat her[otherwise]Your [cock size desc of player] [cock of player] is easily handled by the dobie bitch's muzzle, leaving her free to slather it with her tongue[end if][if cockname of player is listed in infections of Knotlist].  She rubs at your swollen knot and slides her tongue across it with a low, muffled moan[end if].";
		say "     As you fuck her face, you bury your face between her legs and get to work eagerly lapping at her juicy pussy.  You lick over those glistening folds, sliding your tongue across her sensitive petals, which only seems to encourage her all the more.  You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make.  At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her.  You keep this up, pleased to have the bad doggy slut squirming in pleasure as she sucks you off.";
		say "     Feeling your orgasm approaching, you pick up the pace, lavishing attention upon her juicy folds and swiping your tongue across her throbbing clit in long licks that make her pussy quiver around the fingers stuffed into it.  When she cums, she sucks down hard on your cock, burying her nose in your groin as your penis throbs and pulses, blasting your cum [if cock length of player > 20]directly into her belly[otherwise if cock length of player > 10]down her throat[otherwise]into her muzzle[end if].  You drain your [ball size] into her[if cock width of player > 40], leaving her belly so full and bloated from your [cum load size of player] load that she can only lie there, rubbing her overfull tummy[otherwise if cock width of player > 20], leaving her with a bloated bellyful of semen that she happily rubs with her paws[otherwise], feeding her your cum which she happily swallows down[end if].  When you're done, you push her head back and smile as she licks her muzzle, chasing after as much of your creamy load as she can get.  As she's doing this, her paw drifts down to finger finger herself to another powerful climax.  With your head right there to watch, this makes for a lovely show as you bask in the afterglow[if cock width of player > 40].  When that's done, she rolls over onto her back, unable to rise quite yet with her belly so full, so you leave here there for now[otherwise if cock width of player > 20].  When that's done, you both get up and she wobbles back to her post, rubbing her full belly[otherwise].  Only when that's done do you both get back up, her heading back to her post[end if].";
	otherwise:
		say "     Deciding to reward your slutty Doberman bitch with both a treat and some fun of her own, you get her to lie on the floor.  Moving beside her, bringing your juicy pussy to her face even as you nuzzle between her legs.  She whimpers softly in excitement and wags her short tail quickly.  She sniffs your crotch and slides her canine tongue along your wet folds before sliding it into you[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if].  She uses her long tongue to eagerly lick along your inner walls and lap up your flowing juices[if cunts of player > 1].  For a while, she alternates between your pussies, licking at each of them before finally settling on one and using her fingers to rub at your wet folds[end if].";
		say "     As she sets to work on your cunny, you run a hand across her thigh and raise her leg.  With a hand petting her tummy like a dog, you press the other to her groin and slip a few fingers into her[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She yips and barks excitedly, panting happily as you start to play with her roughly.  Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     [if cunt length of player > 12 and cunt width of player > 8]She licks and laps at your vagina as deeply as she can reach with her tongue while your grind your [cunt size desc of player] pussy against her muzzle.  Wanting more, you end up pulling most of her muzzle into your spacious cunt, essentially fucking yourself with it while her tongue dives deeper.  She seems quite pleased to be used by you in this manner, the slutty doggy bitch lusting for any way you'd like to use or abuse her[otherwise if cunt length of player > 6]She licks and laps as deep as she can with her long doggy tongue while you grind your [cunt size desc of player] pussy against her muzzle[otherwise]She licks and laps at your vagina, reaching your very depths to brush across your cervix while you grind your [cunt size desc of player] pussy against her muzzle[end if].  Her excited panting brushes across your folds while that broad tongue of hers runs along your inner walls and stimulates you deep inside.  As you grind against her, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up.  That is a command she's more than willing to comply with and moans happily, working her tongue even faster.";
		say "     As you grind against her muzzle, you bury your face between her legs and get to work eagerly lapping at her juicy pussy.  You lick over those glistening folds, sliding your tongue across her sensitive petals, which only seems to encourage her all the more.  You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make.  At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her.  You keep this up, pleased to have the bad doggy slut squirming in pleasure as she eats you out.";
		say "     Feeling your orgasm approaching, you pick up the pace, lavishing attention upon her juicy folds and swiping your tongue across her throbbing clit in long licks that make her pussy quiver around the fingers stuffed into it.  When she cums, she squirms her slathering tongue around inside you and this becomes too much.  You pull her forward as your cunt quivers and flows with a gush of your hot juices.  You soak the bitch's muzzle as she tries her best to lap it all up.  This sends you into another orgasm, drawing out your pleasure even further.  As you're panting and trying to recover you push her back, popping that tongue out of you with a wet slurp.  She smiles at you and slowly licks your juices from her muzzle while fingering herself to another powerful climax of her own.  With your head right there to watch, this makes for a lovely show as you bask in the afterglow of your two back-to-back orgasms.";
	now lastdobiemess is 7;


to say badAlexandrasex9:		[Titty fuck]
	if lust of Alexandra > 12:
		say "     Eying those enlarged, milk-filled jugs of hers, you decide you'd like to feel them around your cock.  With a firm hand on her shoulder, you get the ex-cop to obediently lie down on the floor.  Moving atop the pregnant dobie, you rest your ass against her rounded belly and slide your [cock size desc of player] [cock of player] cock between her breasts[if lastdobiemess is 6].  Her bosom, still stained with your semen from last time, is a sexy sight[end if].  She grins and runs her paws over her tits, teasing her nipples as she presses her mounds around your shaft.  Milk flows from her nipples, running down her furry breasts and across your shaft.  Leaning her head down, she licks and kisses at your cock as you thrust between her melons[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if].  You scritch her ears, telling her what a good doggy bitch she is and enjoy the soft feel of her furry flesh against your shaft.";
	otherwise:
		say "     Eyeing those enlarged jugs of hers, you decide you'd like to feel them around your cock.  With a firm hand on her shoulder, you get the ex-cop to obediently lie down on the floor.  Moving atop her, you rest your ass against her taut belly and slide your [cock size desc of player] [cock of player] cock between her breasts[if lastdobiemess is 6].  Her bosom, still stained with your semen from last time, is a sexy sight[end if].  She grins and runs her paws over her tits, teasing her nipples as she presses her mounds around your shaft, letting you thrust between them.  Leaning her head down, she licks and kisses at your cock as you thrust between her melons[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if].  You scritch her ears, telling her what a good doggy bitch she is and enjoy the soft feel of her furry flesh against your shaft.";
	say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod only allows part of it to be held by her breasts, but it is still quite warm and enjoyable[otherwise if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod allows it to be barely gripped in full by her breasts, but it is still quite warm and enjoyable[otherwise]Your [cock size desc of player] [cock of player] rod is stuffed nicely between your dobie bitch's breasts, letting you fuck her tits with ease[end if][if cockname of player is listed in infections of Knotlist].  Your swollen knot rubs at the underside of her breasts[end if].  As you fuck her tits, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up.  That is a command she's more than willing to comply with and moans happily, working her tongue excitedly across your flesh and pinching her nipples.";
	say "     You are quite pleased with your training of the Doberwoman, having made her into a very eager and obedient plaything.  The feel of her larger breasts against your shaft is very nice and her lustful eagerness for it pleased you to see in the corrupted cop.  Your stiff cock dribbles precum onto her fur as you thrust between her lovely mounds[if lust of Alexandra > 12] and milk starting to leak from her nipples and down her furry globes to further wet your shaft.  You can't help but grin, knowing your slutty bitch has a little of pups you've sired on her way, the thought of which makes you feel strong and virile[end if].  Feeling your climax coming, you moan that you've got a creamy treat to mark your bitch with on the way, taking a few more thrust and trying to hold out to enjoy it just a little longer.  Eventually this becomes too much and you thrust eagerly and cum hard, blasting your [if cock width of player > 40]massive[otherwise if cock width of player > 20]huge[otherwise] sticky load across her bosom and over her muzzle.  Her mouth, open wide, catches as much of it as she can get, gulping down your seed[end if].  When you're done, she gets up slowly, paws rubbing over her messy bosom and rubbing your cum into her tits.";
	now lastdobiemess is 6;


to say badAlexandrasex10:		[Threesome with Fang]
	if lust of Alexandra > 12:		[visibly preggers]
		say "     Using some blankets for padding under her rounded belly, you get the ex-cop down on her hands and knees.  You grab her taut ass and give it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs.  Pleased at the sight, you kneel behind her and slip a few fingers into her pussy.  You frig her canine cunt and enjoy her whimpers of delight as she starts to moan and beg for you to fuck her.";
	otherwise:
		say "     You push the ex-cop down onto her hands and knees, grabbing her taut ass and giving it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2].  Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[otherwise if lastdobiemess is 5 or lastdobiemess is 7].  Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[otherwise if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99].  Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].  She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs.  Pleased at the sight, you kneel behind her and slip a few fingers into her pussy.  You frig her canine cunt and enjoy her whimpers of delight as she starts to moan and beg for you to fuck her.";
	say "     At this point, you pull your fingers abruptly away and call Fang over.  The wolf, watching the action attentively from the door, rushes over, nosing at the Doberwoman's juicy cunt.  'But boss, I thought you were gonna...' she starts to say, but you spank her ass with a hard swat just as the wolf's tongue slathers across her pussy.  She whimpers and her tail wags excitedly.";
	say "     'If you're going to slut around with the hounds like some common bitch, then I may as well get to enjoy the show.'  You run a hand down Fang's back, encouraging him to mount the ex-cop, which he does without delay.  Reaching under, you stroke the wolf's cock and get it lined up, watching it spear into the Doberwoman's puffy folds as she cries out lustfully as you get the wild beast to fuck her.";
	say "     Once inside her, Fang starts to got at it[if lust of Alexandra > 12], showing some restraint because of her pregnancy, but still[end if] giving her a good, hard pounding that has them both panting.  After watching that red spear of meat slip in and out of your bitch for a while, you decide it's time to get in on the action and move around to the front of her.  Grabbing her head firmly, you press her face to your crotch, forcing her to start licking at your loins";
	if cocks of player > 0:		[sucks cock]
		say ".  She slides her canine tongue along your cock and balls before sliding her muzzle over your meat.  Her long tongue licks eagerly along your shaft while the wolf's thrusts press her forward onto it[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if].  She rubs her paws over your [ball size][if cunts of player > 1] and finger your pussies[otherwise if cunts of player is 1] and finger your pussy[end if][if cocks of player > 1].  She alternates between your cocks, alternating between paws and muzzle on each of them[end if][if lust of Alexandra > 12].  You can't help but grin as you look down at the pregnant bitch eagerly working over the cock that's knocked her up[end if].";
		say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod makes it difficult for the dobie bitch to cope, but between Fang's insistent pounding from behind and you pushing in from the front, you manage to stuff your massive shaft down her throat, distending her mouth and body around it[otherwise if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod makes it a little difficult for the dobie bitch to cope, but with the help of Fang's insistent pounding from behind her, you manage to stuff your massive shaft down her throat, causing a visible bulge in her mouth and throat[otherwise if cock length of player > 10]Your [cock size desc of player] [cock of player] rod stuffs your dobie bitch's muzzle and throat nicely, letting you fuck her muzzle and deep throat her while she's getting pounded from behind[otherwise]Your [cock size desc of player] [cock of player] is easily handled by the dobie bitch's muzzle, leaving her free to slather it with her tongue while she's getting pounded from behind[end if][if cockname of player is listed in infections of Knotlist].  She rubs at your swollen knot and slides her tongue across it with a low, muffled moan[end if].  As you fuck her face, you rub a hand over her head and scritch her ears, calling her your slutty bitch who bends over for the animals.";
		say "     [if cock length of player > 20]She does her best to cope with your [cock size desc of player] shaft[otherwise]She lavishes attention upon your [cock size desc of player] shaft[end if] while the wild beast atop her fucks her.  Her paws rub and stroke at your exposed length whenever she pulls her muzzle back for a breath and over your [ball size][if cunts of player > 1] and [cunt size desc of player] cunts[otherwise if cunts of player is 1] and [cunt size desc of player] cunt[end if] the rest of the time.  You rub Fang's head[if hp of Fang is 3 or hp of Fang is 4], telling your strong alpha to fuck that bitch hard[otherwise] as you would a dog, telling him to fuck that bitch hard[end if], causing the ex-cop to whimper in shameful delight.";
		if lust of Alexandra > 12:
			say "     Alexandra releases a muffled moan around your cock as her hips quiver and her tonguework becomes more frantic.  Grinning and knowing she's cumming from the humiliating fuck she's getting, you scritch her ears and call her your good, bad girl through gritted teeth, cumming moments later [if cock length of player > 20]directly into her belly[otherwise if cock length of player > 10]down her throat[otherwise]into her sucking muzzle[end if].  Fang howls as well as he pumps his hot wolf semen into her, having tied with the doggy bitch.  Between your [cum load size of player] load and Fang's, [if cock width of player > 40]her already swollen belly is left so big she can hardly move at all.  She can only lie there, rubbing her overfull tummy while moaning in pleasure[otherwise if cock width of player > 20]leaving her with a bloated bellyful of semen that further inflates her rounded belly.  She is left her so full and plump that she chooses to lie there, rubbing her bulging belly[otherwise]she happily swallows down all she can get while the wolf's seed fills her womb.  She happily rubs her paws over her full belly as she heads back to her post[end if].";
		otherwise:
			say "     Alexandra releases a muffled moan around your cock as her hips quiver and her tonguework becomes more frantic.  Grinning and knowing she's cumming from the humiliating fuck she's getting, you scritch her ears and call her your good, bad bitch through gritted teeth, cumming moments later [if cock length of player > 20]directly into her belly[otherwise if cock length of player > 10]down her throat[otherwise]into her sucking muzzle[end if].  Fang howls as well as he pumps his hot wolf semen into her, having tied with the doggy bitch.  Between your [cum load size of player] load and Fang's, [if cock width of player > 40]her belly is left so full and bloated that she can only lie there, rubbing her overfull tummy[otherwise if cock width of player > 20]she is left with a bloated bellyful of semen that she happily rubs with her paws as she wobbles back to her post[otherwise]she happily swallows down all she can get while the wolf's seed fills her womb.  She happily rubs her paws over her full belly as she heads back to her post[end if].";
		now lastdobiemess is 97;
	otherwise:			[eats pussy]
		say ".  She slides her canine tongue along your wet folds before sliding it into you[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98].  Her muzzle, still a little messy from the last time you used it, sets to work eagerly to get another taste of you[end if].  Her long tongue licks eagerly along your inner walls and lap up your flowing juices while the wolf's thrusts press her cool nose against your clit[if cunts of player > 1].  For a while, she alternates between your pussies, licking at each of them before finally settling on one and using her fingers to rub at your wet folds[end if][if lust of Alexandra > 12].  You can't help but grin as you look down at the pregnant bitch eagerly lapping at your twat, knowing that you're the one who's knocked her up after fucking her juicy cunt[end if].";
		say "     [if cunt length of player > 12 and cunt width of player > 8]She licks and laps at your vagina as deeply as she can reach with her tongue while your grind your [cunt size desc of player] pussy against her muzzle.  Wanting more and helped along by Fang's rough pounding, you end up pulling most of her muzzle into your spacious cunt, essentially fucking yourself with it while her tongue dives deeper.  She seems quite pleased to be used by you in this manner, the slutty doggy bitch lusting for any way you'd like to use or abuse her[otherwise if cunt length of player > 6]She licks and laps as deep as she can with her long doggy tongue while Fang's thrusting grinds her muzzle against [cunt size desc of player] pussy[otherwise]She licks and laps at your vagina, reaching your very depths to brush across your cervix while Fang's thrusting grinds her muzzle against your [cunt size desc of player] pussy[end if].  Her excited panting brushes across your folds while that broad tongue of hers runs along your inner walls and stimulates you deep inside.  As you fuck her face, you rub a hand over her head and scritch her ears, calling her your slutty bitch who bends over for the animals.";
		say "     [if cunt length of player > 12 and cunt width of player > 8]With her muzzle stuffed in your cunt, she works her tongue frantically, licking at your inner walls and reaching as deep as she can with it as she chases after your juices.  She turns and rocks her muzzle inside you as best she can with the wild beast pistoning into her, letting the soft fur over it run across your sensitive walls[otherwise]With her muzzle pressed to your cunt, she works her tongue inside you frantically, licking at your inner walls and chasing after your juices as best she can with the wild beast pistoning into her[end if].  Shivers of delight run through you as you hold her in place, keeping her at her task.  With your juices filling her muzzle, your scent filling her nose and wolf cock filling her cunt, the horny bitch whines lustfully and does her best to please you both.  You rub Fang's head[if hp of Fang is 3 or hp of Fang is 4], telling your strong alpha to fuck that bitch hard[otherwise] as you would a dog, telling him to fuck that bitch hard[end if], causing the ex-cop to whimper in shameful delight.";
		say "     Alexandra releases a [if cunt length of player > 12 and cunt width of player > 8]muffled moan from inside your clenching pussy[otherwise]long moan[end if] as her hips quiver and her tonguework becomes more frantic.  Grinning and knowing she's cumming from the humiliating fuck she's getting, you scritch her ears and call her your good, bad girl through gritted teeth, cumming moments later with a gush of juices.  You soak the [if lust of Alexandra > 12]pregnant [end if]bitch's muzzle as she tries her best to lap it all up as Fang starts to howl as he pumps his hot wolf semen into her, having tied with the doggy bitch.  This sends you into another orgasm, drawing out your pleasure even further.  As you're panting and trying to recover you push her back, popping that tongue out of you with a wet slurp.  She smiles up at you and slowly licks your juices from her muzzle while still tied to the wolf cumming inside her.";
	now lastdobiemess is 98;


Part 3 - Event Scenes w/Fang

to say badAlexandraFang0:
	say "     You catch sight of Alexandra and Fang over by the door to the library.  While she's on guard, he's sniffing around her with obvious interest.  She acts like she's unaware of his attention, but you can see her tail wagging excitedly as he noses between her legs.  When his teeth catch onto the seat of her jeans and start tugging on them, she unzips them and starts squirming out of them, moving onto all fours.  'That's right, you big, bad wolf.  You've found yourself a juicy bitch,' she barks.";
	say "     Shall you [link]enjoy the show (Y)[as]y[end link] as your two guards become better acquainted or do you object and [link]break them up (N)[as]n[end link], preferring to keep the Doberwoman all for yourself?";
	if the player consents:
		say "     Moving into a better position to watch the show, you smile at Alexandra as she wags her rear invitingly for the feral wolf.  Requiring no more coaxing, he pounces atop the dog woman and drives his cock into her with a lustful growl.  She moans and pants as he shifts position and starts fucking away at your prize bitch, sharing in your spoils to stake a claim of his own on, and in, her.";
		say "[badAlexandraFang1]";
	otherwise:
		if hp of Fang is 3 or hp of Fang is 4:
			say "     Heading over towards the large wolf and the doberman bitch, you start to tell them to break it up, but Fang ignores you.  He pounces atop the dog woman and drives his cock into her with an angry growl at you, causing you to slink back.  You try to approach again, but he growls and snaps at you and you slink back from your alpha wolf, submitting to his dominance of you.  Seeing you give in and backing off, he growls 'watch' at you before turning his attention back to her.  It seems like you'll have to witness Fang using your prize bitch and accept him using her whenever he wants to lay claim to her.";
			say "[badAlexandraFang1]";
		otherwise if cocks of player is 0 and cunts of player > 0:
			say "[badAlexandraFang3]";
		otherwise if cocks of player is 0:
			say "     You start to head over to the wolf and doberman, intent on showing her who she really belongs to, but you stop short after a few steps.  Remembering that you have no means to properly reinforce to your bitch that she's your sex toy if you lack a sex of your own.  You can only settle in to watch and accept that Alexandra'll need to get what her bitch body needs from Fang until you're better equipped to satisfy her.  As you're sitting down somewhere lined up for the sexy show, Fang pounces atop your prize bitch, sharing in your spoils to stake a claim of his own on, and in, her.";
			say "[badAlexandraFang1]";
		otherwise:
			say "[badAlexandraFang2]";

to say badAlexandraFang1:
	say "     Alexandra pants and moans like a bitch in heat as the wild wolf pounds into her.  As you watch, his throbbing red cock drives into her juicy canine cunt over and over again, her puffy lips stretched around that thick rod.  Her breasts sway and she pants, drooling onto the ground as she gets a rough pounding like the kind she's been trained to enjoy.  Between her raw cries of lust, she moans about being a bitch, a slut and an animal, and the wolf is more than happy to treat her as such.";
	say "     As they continue to fuck, Fang's pace grows faster still and the wet, slick sounds of them going at it grow louder.  Watching this, you grow increasingly aroused, the sight of the policewoman so debased as to give herself willingly to an animal to be fucked and bred is very exciting[if cocks of player > 0].  Taking a hold of your throbbing cock[smn], you start playing with yourself.  You work your hand over your hard shaft, stroking in time to the wolf's frantic thrusts[otherwise if cunts of player > 0].  Slipping a hand between your legs to your wet folds, you start playing with your.  You pump a few fingers into your cunt, working in time to the wolf's frantic thrusts[otherwise].  Lacking a proper gender of your own, you run your hands all over your body, rub your bare groin and tease yourself as best you can[end if].  The show is very exciting and you find yourself longing for a chance to share the needy bitch with the wolf in the future.";
	say "     Grinding his knot against her puffy folds, he slowly spreads them open a little more with every hard thrust into her.  Finally, her needy cunt stretches open enough and allows the thick bulb entrance before clamping down around it.  The two lustful canines howl as Fang's ballsac twitches visibly and hot juices run down Alexandra's legs  The wolf bites down onto the back of her neck as he cums heavily into her and she quivers and pants in ecstasy at this rough treatment[if cocks of player > 0 or cunts of player > 0].  Seeing them getting off and knowing the wolf's hot semen is flooding into the ex-cop has you working your hand frantically, cumming hard moments later[end if].";
	say "     After draining his balls, the wolf climbs off of her and turns around while still tied in her, remaining locked inside her left she were a normal dog.  She flops down, tired but satisfied, rubbing at her stretched cunt and the base of the wolf cock locked inside herself with a sigh of pleasure.  From the look of them, they'll certainly be going at it again sometime soon.  You'd best be keeping an eye on your prize bitch from now on.";
	say "[line break]";
	if "Top Dog" is listed in feats of player:
		say "     Your [']Top Dog['] feat has been replaced by the [']Cuckold['] feat.  Your [bold type]perception[roman type] has gone up by one and your earlier [bold type]charisma[roman type] bonus has been removed.";
		remove "Top Dog" from feats of player;
		decrease charisma of player by 1;
	otherwise:
		say "     You and Alexandra have earned the [']Cuckold['] feat, making her more fertile.  Your [bold type]perception[roman type] has also gone up by one.";
	add "Cuckold" to feats of player;
	increase perception of player by 1;
	now level of Alexandra is 2;			[shared bitch]
	now A_Fang is false;				[new dialog for new status]
	now lastdobiemess is 99;			[last used by Fang]
	attempttowait;


to say badAlexandraFang2:
	say "     Growling angrily at your wolf, you grab him by the scruff of the neck as he's preparing to make the leap onto the doberman's back.  He waves his paws in the air, as if trying to grab at the bitch so close.  His cock is hard and throbbing, dribbling with precum.  You hold him and give him a shake before shoving him aside.  'No, Fang, this bitch is mine,' you add, making the beta wolf slink back a couple of yards.";
	say "     During this, Alexandra's risen to her feet and is quite angry that you've denied her a good and proper fucking from the wolf.  'Oh?  I'm all yours, am I?' she growls, pulling off her jacket to get herself completely nude.  'How about you prove it, boss?'  Clearly goading you in search of the rough sex you've denied her, you make a grab for her.";
	say "     A brief struggle ensues with you trying to pin the obstinate bitch down which ends with her tumbling out the door of the library and into the open street.  You pounce on her before she can get back up, fighting to pin her down.  She continues to resist, barking for you to fucking take her if you're going to take her and freeing your crotch between trying to push you off.  Frustrated by your prize bitch being such a bad girl, you pin down her shoulders and drive your [cock of player] shaft into her hard, spreading her cunt[if cock length of player > 20] wide[end if], making her cry out in pleasure.  Growling dominantly down at her, you fuck her out in the plain view of the city for all to see as you stake your claim on her once again.";
	say "     The sex is rough and wild, your hands groping lustfully at her breasts and hips while you pound away at her.  She pants and moans, her legs locked around your hips and her paws clawing and scratching at your back.  These scratches leave deep red marks that will take time for even the nanites to heal, but the pain of them only reinvigorates your drive to pound her bitch cunt to reminder her why you're the boss.  As you're fucking her, Fang can only watch on as you stake a fresh claim on the Doberwoman and so knows she's yours, cock hard but untended.";
	say "     As you're nearing your peak, you grab her by the muzzle and hold it closed, turning her to face you while fucking her.  'I'm the boss here, aren't I?' you growl.  She can only whimper and nod, her jaws held shut by your firm grip.  'That's right.  And that means this fucking muzzle of yours is mine,' you say, pushing her head back before grabbing her breasts roughly, groping them painfully hard.  As you squeeze her [if ( hp of Alexandra is 3 and lust of Alexandra > 12 ) or hp of Alexandra > 3]plump [end if]tits, fresh juices soak her crotch.  'And these fucking tits of yours are mine too,' you add, pinching her nipples.  Your hands then run down to her hips, squeezing her rear hard and pulling her up into another thrust.  'And that hot ass of yours, and especially,' you rumble in her ear as you pause your thrusting for a second, 'that bitch cunt of yours.  Mine!' you drill into her one last time, cumming hard.  This sets her off as well, crying out loudly with a barking howl of lust and pleasure as you fill her womb with your hot seed.";
	say "     When you're done cumming in her[if cock width of player > 30] and she's left so stuffed she struggles to move with all your virile semen in her[otherwise if cock width of player > 20] and she's left with a bulge in her belly from all your virile semen in her[end if], you pull out and wipe your cock off across her panting muzzle.  She looks up at you with increased submission and loyalty from the rough and public claiming of her.  Feeling satisfied, you march back to the library doors and pull them open.  Turning to her, you whistle and tell her to come back inside, calling her like a dog.  She responds obediently, staggering to her feet and walks back in - naked, leaking cum and wagging her tail as she goes.  Once she's in, you step back out, grab Fang by the scruff of the neck and drag him back in as well.  You're quite confident that they both now know she belongs to you exclusively.";
	say "[line break]";
	say "     You and Alexandra have earned the [']Top Dog['] feat, making her more fertile.  Your [bold type]charisma[roman type] has also gone up by one.";
	add "Top Dog" to feats of player;
	increase perception of player by 1;
	decrease hp of player by 10;
	now level of Alexandra is 1;			[unshared bitch]
	now A_Fang is false;				[new dialog for new status]
	now lastdobiemess is 1;
	if hp of Alexandra is even and a random chance of 3 in 5 succeeds:
		increase hp of Alexandra by 1;
		now lust of Alexandra is 1;
	attempttowait;

to say badAlexandraFang3:
			say "     You start to head over to the wolf and doberman, intent on showing her who she really belongs to, but you stop short after a few steps.  Lacking a cock of your own at the moment means you're ill-equipped to show the bitch her place beneath you or to provide her cunt with the proper fucking that she needs right now.  It looks like you'll just have to settle for sharing her with the wolf.  As you're sitting down somewhere lined up for the sexy show, Fang pounces atop your prize bitch, sharing in your spoils to stake a claim of his own on, and in, her.";
	say "     Growling angrily at your wolf, you grab him by the scruff of the neck as he's preparing to make the leap onto the doberman's back.  He waves his paws in the air, as if trying to grab at the bitch so close.  His cock is hard and throbbing, dribbling with precum.  You hold him and give him a shake before shoving him aside.  'No, Fang, you don't get to cum in my favourite bitch,' you add, making the beta wolf slink back a couple of yards.";
	say "     During this, Alexandra's risen to her feet and is quite angry that you've denied her a good and proper fucking from the wolf.  'Oh?  And if I'm not to get it from the wolf here,' she growls, pulling off her jacket to get herself completely nude, 'where'm I going to get it, miss bossy?'  Clearly goading you in search of the rough sex you've denied her, you grab her nightstick and tell her that if she wants a cock so badly, you'll just have to improvise.";
	say "     A brief struggle ensues with you trying to pin the obstinate bitch down which ends with her tumbling out the door of the library and into the open street.  You pounce on her before she can get back up, fighting to pin her down.  She continues to resist, barking for you to fucking take her if you're going to take her and freeing your crotch between trying to push you off.  Frustrated by your prize bitch being such a bad girl, you pin down her shoulders and push her legs apart before stuffing a few fingers into her, making her cry out in pleasure.  Growling dominantly down at her, you replace those fingers with the shaft of the nightstick, pushing it unceremoniously into her cunt.";
	say "     The sex gets wild and rough once you shift positions and lower yourself down onto the handle of the nightstick, stuffing the ridged grip into your pussy.  With a hand to steady it, it makes for an improvised strap-on for fucking her out in the plain view of the city for all to see as you stake your claim on her once again.  Your free hand gropes lustfully at her breasts and hips while you pound away at her.  She pants and moans, her legs locked around your hips and her paws clawing and scratching at your back.  These scratches leave deep red marks that will take time for even the nanites to heal, but the pain of them only reinvigorates your drive to pound her bitch cunt to reminder her why you're the boss.  As you're fucking her, Fang can only watch on as you stake a fresh claim on the Doberwoman and so knows she's yours, cock hard but untended.";
	say "     As you're nearing your peak, you grab her by the muzzle and hold it closed, turning her to face you while fucking her.  'I'm the boss here, aren't I?' you growl.  She can only whimper and nod, her jaws held shut by your firm grip.  'That's right.  And that means this fucking muzzle of yours is mine,' you say, pushing her head back before grabbing her breast roughly, groping them painfully hard.  As you squeeze her [if ( hp of Alexandra is 3 and lust of Alexandra > 12 ) or hp of Alexandra > 3]plump [end if]tit, fresh juices soak her crotch.  'And these fucking tits of yours are mine too,' you add, pinching her nipple.  Your hand then run down to her hips, squeezing her rear hard and pulling her up into another thrust of the nightstick.  'And that hot ass of yours, and especially,' you rumble in her ear as you pause your thrusting for a second, 'that bitch cunt of yours.  Mine!' you drill into her one last time, cumming hard.  This sets her off as well, crying out loudly with a barking howl of lust and pleasure as you rapidly pound the nightstick into her over and over again.";
	say "     When you're done cumming and she's been pounded into a stupor, you grip the base of the nightstick and pop the handle out of you with a wet slurp before quickly yanking it out of her thoroughly abused hole.  As you wipe it across her chest, she looks up at you with increased submission and loyalty from the rough and public claiming of her.  Feeling satisfied, you march back to the library doors and pull them open.  Turning to her, you whistle and tell her to come back inside, calling her like a dog.  She responds obediently, staggering to her feet and walks back in - naked and with her juices running down her thighs, wagging her tail as she goes.  Once she's in, you step back out, grab Fang by the scruff of the neck, run the nightstick meaningfully across his ass as a warning and drag him back in as well.  You're quite confident that they both now know she belongs to you exclusively.";


Section 4 - Sarah and Alexandra

to say badAlexandraSarah0:
	say "     Looking over, you happen to notice Alexandra and Sarah together at the husky girl's cot.  You discretely move a little closer in case the Doberman bad girl is looking for a fight as she'd hinted.  When you do, you're pleased to see them talking amiably enough.  Your husky pet giggles happily as she pets one of her puppies, in one of her rare, talkative moods instead of wallowing fully in her canine slut nature as she's wont to do.";
	say "     '...can be a bit of a pawful at times, but any trouble they give is more than worth it.  Still, I get tired at times and it'd be nice if there was someone else to keep them occupied while Master and I are having sex.";
	say "     'Yeah, at least mine mostly hang out in the side rooms together when they're not getting into trouble outside.'  Sarah seems concerned at this, probably because of what almost happened to her out in the city, but Alexandra just grins proudly and continues on.  'They're a tough lot, so it's alright.  Let the little punks have their fun, I say.  I already warned them that I'd beat the lot of them black and blue if they ever brought anything back or get followed back here.'";
	say "     The husky girl, as if not exactly sure how she feels about this statement, muses aloud.  'Well, what if we let my pups play with yours sometimes.  That might keep them from risking going outside as much and give me a break sometimes as well.'";
	say "     Rubbing her muzzle, the Doberwoman looks at the nearby pups.  Like their mother, they're cute huskies, but a little younger.  'I dunno, they don't look like they can stand up to my lot.  My kids play rough.  They'd probably want to take advantage of your pups, especially your girls.'";
	say "     Sarah just smiles and giggles at this.  'Oh, that's fine.  I've been training them to be good, subby pets.  Having some dominant playmates will be good for them.  It'll be a much safer way for your pups to burn off some of that extra energy they have.'";
	say "     'Well, maybe,' she replies with a sly grin and a rub on the husky's head.  'How about you show me a little of what you've been teaching them?'  Alexandra sits down on Sarah's cot, scooting in close to her and runs her paws over your husky slut's body, sending shivers of pleasure through her.";
	say "     Clearly excited, she can't help but respond and reach out for the Doberman's sexy body.  'Mmm... that sounds like fun, but I don't know.  I belong to Master.  Would Master be okay with us playing together?'";
	say "     Alexandra sinks a pair of fingers into the husky's pussy while turning her head in your direction with the other paw.  'The boss's been watching us for a while.  Wanting to see if we'll make out, I expect.  What do you say, boss?  You want your bitch sluts to put on a show for you?'";
	if the player consents:
		say "     Having been spotted, you move to an open bunk in clear view of them.  With a grin and a little wave, you motion for them to resume their fun, which they do enthusiastically.  Alexandra pushes Sarah onto her back with a firm shove and, while fingering the husky's sopping pussy, she kisses her new friend.  Sarah moans and barks, descending into her slutty pet role as the more aggressive female manhandles her.  Alexandra squeezes the horny husky's large breasts, causing some milk to leak out as she whimpers.  Seeing this, she grins and presses her muzzle to the leaking nipple, taking a sample of your pet's milk.";
		say "     During this rough groping and molestation by the Doberman, the husky girl strips the clothes off her fellow bitch while panting and moaning in enjoyment like the horny, submissive pet she is.  And once nude, Alexandra sits up and grabs the husky's head, pressing her muzzle between her thighs to the Doberwoman's juicy muff.  'Mmm... get licking, honey.  I'm top bitch around here and you need to show me what you've been teaching those pups of yours.'";
		say "     The husky girl's tail wags excitedly and she gives right in, her canine tongue slathering across Alexandra's juicy pussy in long, slow licks before diving deep into her.  As you watch, she does her best to please her new tough friend and fellow bitch fucktoy, tongue agilely pleasuring the horny canine's cunt and even diving back to lick across her asshole a few times.  She tries her best to ensure you have a good view of the action, but at times, her enthusiasm for it gets the better of her.  But even though you can't always see it, you can tell she's giving it her all and the Doberwoman responds loudly and lustfully as she's eaten out by the horny slut, cumming several times.";
		say "     After a particularly powerful orgasm that leaves her panting and dripping, she grabs the husky girl and yanks her up into her lap.  With Sarah sitting on one of Alexandra's strong thighs with her legs spread, you're given a fine view of both the canine pussies you've been fucking and filling with pups.  As they kiss muzzle to muzzle with canine tongues entwined, the Doberman bitch spreads the husky's folds and sinks a few fingers into her again while groping her breasts roughly, all in a wanton display for you.  She gropes and finger-fucks the husky to a few orgasms of her own before they're both sated and collapse onto the bunk, panting in post-orgasmic bliss.  Looking down at them, you can't help but smile at how the two are getting along.";
		now lastfuck of Alexandra is turns + 2;
		now lastsarahfucked is turns + 2;
	otherwise:
		say "     Alexandra and Sarah are clearly disappointed when you tell them to break it up, but they do so.  Alexandra whispers to Sarah to send over her pups whenever she wants them to play with hers.";


Section 5 - Everyturn Rule (pregnancy and Fang)

an everyturn rule:
	if Alexandra is booked and hp of Alexandra < 50:
		if lust of Alexandra > 0:
			increase lust of Alexandra by 1;
			if level of Alexandra is 1 or level of Alexandra is 2 and a random chance of 1 in 3 succeeds, increase lust of Alexandra by 1;
			if lust of Alexandra >= 24 and skipturnblocker is 0:
				say "Your thoughts wander back to Alexandra and you feel a need to go check in on her.";
				if libido of Alexandra is 0:
					now libido of Alexandra is a random number between 2 and 4;
				otherwise:
					increase libido of Alexandra by a random number between 1 and 4;
					if level of Alexandra is 1 or level of Alexandra is 2, increase libido of Alexandra by a random number between 0 and 1;
				now lust of Alexandra is 0;
				now hp of Alexandra is 4;
		otherwise if Fang is booked and Alexandra is booked and player is in Grey Abbey Library:
			if xp of Alexandra is 0, now xp of Alexandra is turns;	[starts counter on any turn (except turn 0, which will start next turn)]
			if level of Alexandra is 0:
				if lastFangfucked - turns >= 8 and lastfuck of Alexandra - turns >= 6 and xp of Alexandra - turns >= 16:
					say "[badAlexandraFang0]";
			otherwise if level of Alexandra is 1 and hp of Fang is 3 or hp of Fang is 4:
				if lastFangfucked - turns >= 8 and lastfuck of Alexandra - turns >= 6 and xp of Alexandra - turns >= 16:
					say "     As you're taking a moment before getting on to other tasks, you hear some soft growling coming from the door.  Heading over, you notice that Fang's sniffing around Alexandra again.  She's lightly trying to push him away at first, but soon relents and is squirming out of her jeans.  This rankles you a little after having gone through the trouble to stake your claim on her earlier, but with Fang as your alpha, you're no longer in a position to keep her exclusively to yourself.  Soon enough, she's dropped onto all fours and is mounted by the big, strong wolf.  Seeing you there, he growls 'watch' at you before turning his attention back to her.  It seems like you'll have to witness Fang using your prize bitch and accept him using her whenever he wants to lay claim to her.";
					say "     What's yours is yours, but what's yours is his, it seems.";
					say "[badAlexandraFang1]";
		otherwise if A_Sarah is true and A_Sarah2 is false and sarahpups > 3 and libido of Alexandra > 3 and the player is in Bunker and lastfuck of Alexandra is not turns and lastsarahfucked is not turns and a random chance of 1 in 6 succeeds:
			say "[badAlexandraSarah0]";
			now A_Sarah2 is true;
		if level of Alexandra is 2 and a random chance of 1 in 12 succeeds:
			now lastdobiemess is 99;


Section 6 - Police Station

Police Station is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Police Station is "[policestationdesc]";
the scent of Police Station is "Despite the cleanup, there's still a lingering scent of sex in the air.".

PSdoor is a door.  North of Police Station is PSdoor.  PSdoor is dangerous.  North of PSdoor is Wandering the City.
the marea of PSdoor is "Outside".

Police Lockerroom is a room.  It is sleepsafe.  Police Lockerroom is east of Police Station.
The description of Police Lockerroom is "[policelockerdesc]".
The scent of Police Lockerroom is "Despite the cleanup, there's still a lingering scent of sex in the air.".

to say policestationdesc:
	if hp of Alexandra is 50:
		say "     The directions from Alexandra lead you down a side street just off from a major intersection.  While there's some mutant activity along those streets, the side street is thankfully bare of trouble.  Clearly the policewoman's presence has at least driven off the feral creatures right around the station for the moment.";
		now hp of Alexandra is 51;
	say "     The police station itself is one of the newer, smaller sort.  It is only a few stories tall and many of its walls are mirrored glass above the first floor while the ground floor has a stone facade with reinforced windows and heavy doors.  It would be quite secure, had it not needed to contend with an outbreak of monsters.  Large sections of the upper floor windows have been shattered and the armoured doors don't look like they'll quite close properly anymore, they've been so warped and bent.  The parking lot is mostly empty of cars, though there are a few wrecked cruisers still stained inside with sexual fluids.";
	if hp of Alexandra < 57:
		say "     Inside, you find that the destruction is not just to the outside of the building, though Alexandra's made some effort to clean up, pushing aside or throwing out ruined desks and filing cabinets.  She's set up a cot for herself next to one of the intact desks.";
	otherwise:
		say "     Some of the destruction inside has been cleaned up by this point, with the worst of the ruined furniture removed.  The walls and floors have been cleaned by Jimmy's enthusiastic helpfulness, though marks from many of the stains remain.  Alexandra has a cot for herself set up next to one of the intact desks.";
	say "     [link]North[end link] leads out of the station and back into the city while [link]east[end link] heads into the locker rooms.";

to say policelockerdesc:
	if hp of Alexandra < 57:
		say "     This room was once the lockerroom area of the station, where the cops could get changed when coming on and off duty.  It looks like this place was hit pretty hard, with lots of torn clothes and cum stains littering the floor.  Many of the lockers have been knocked over or even torn asunder by clawed hands.  It looks like Alexandra started to clean up this room, but there's still much more to be done.  There's a few cots wedged in here for others to use.";
	otherwise:
		say "     This room was once the lockerroom area of the station, where the cops could get changed when coming on and off duty.  The room's been cleaned up quite a bit.  The destroyed lockers have been removed and the open space now has some bunks in it.  The remaining lockers have been pushed to one wall to be a place where those staying here can store their few personal belongings or a change of clothes[if hp of Jimmy >= 3].  Jimmy's cheerfully made quite the effort to clean up the place, having scrubbed away most of the messy stains left after the outbreak[end if].";
	if paula is lockered:
		say "     Paula's converted a small corner of this room into her nurse's station.  The medical supplies, which she's put herself in charge of, are secured in some lockers to prevent misuse.  She's also set aside a cot to use as her examination table.";


A person can be policed. A person can be lockered. A person is usually not policed. A person is usually not lockered.

Definition: A person(Called X) is policed:
	If x is the player, no;
	if x is Velos, no;
	if the location of x is Police Station, yes;
	no;

Definition: A person(Called X) is lockered:
	If x is the player, no;
	if x is Velos, no;
	if the location of x is Police Lockerroom, yes;
	no;


Section 7 - Good Alexandra

to say alexandrascent_gg:
	say "     The dog woman has a canine scent to her.";

to say alexandradesc_gg:
	say "     Alexandra, once a cop for the city, has been transformed into a Doberman woman by the infection.  She's remained in uniform, showing her attempt to keep up her duties, wearing a light blue shirt, darker pants and a policeman's hat.  She's got a rather normal, human build, but with some traces of canine features, showing especially on her paw-like hands and feet.  Her head is fully that of a Doberman Pinscher, with a long muzzle and her short fur has the two-tone black and tan markings of the breed.  She has an average sized rack on her under her shirt.";

to say alexandratalk_gg:
	if hp of Alexandra is 50:
		now hp of Alexandra is 51;
	if hp of Alexandra is 51:
		say "     'It's good to see that you're still holding out.  It's been a while since I've met anyone as coherent as you, so I could really use the company.  Here, let me show you around,' she says, leading you around the station.";
		say "     'As you can see, things got pretty bad here.  Like I'd mentioned, we were responding to calls as everything started to fall apart.  A lot of the officers simply never returned from those calls.  The few that did either must have been tainted by sexual fluids or had brought those they'd arrested, or both.  Things got out of hand quickly, the infection spreading through the office and through the lockout, building upon itself.'";
		say "     You ask her how she got out of there, if things were so bad.  'I was lucky, I guess.  Just before things boiled over completely, I'd gone outside to assist a canine team, only to find them merging with their dogs and fucking like animals.  I was grabbed and they tried to pull me down to rape me just as some muscled brute of a creature crashed out the front doors and rammed right into the canine unit's van.  More of them charged out the windows, leaping to the ground and running off into the city.  In the confusion, I was able to make a break for it, but I'd already been infected and kept changing.";
		say "     'When morning came and I returned, the station had been deserted save for a few lingering mutants.  I drove them off and decided to stay, hoping to help any survivors who came looking for police assistance.  When no one turned up, I went out on my own, trying to find citizens to help.  I... think I was starting to crack by the time I ran into you.  I'm not going out on patrol as much for a while.'";
		now hp of Alexandra is 52;
	otherwise if hp of Alexandra < 56 and a random chance of 1 in 3 succeeds:
		say "[alexandra_supplies]";
	otherwise if hp of Alexandra > 51 and a random chance of 1 in 3 succeeds and Alexandrastory is false:
		say "     Alexandra leans back in her chair and rubs her brow.  'My parents were criminals, doing drugs and committing petty crimes to pay for the habit.  It wasn't a very good home to grow up in, so I was taken away by Child Services when they were finally caught.  That wasn't much better, but it let me learn that I didn't have to be like them.  When I grew up, I decided to become a police officer and tried my best to be an example to others,' she says, subconsciously sitting back up straighter.";
		say "     'I told myself that my parents being criminals didn't matter and that I didn't need to end up like them.  I think that drive to be [']a good and moral person['] helped motivate me to stay sane.  At least for a while,' she adds, rubbing her brow.  'Things were starting to get rather confused towards the end.  Beating up the mutants.  Writing them tickets.  I was getting so worked up about trying to hold the city together that I was probably going to crack entirely soon.  So I'm really glad you came along when you did.  I really appreciate you talking some sense into me, that's for sure.  Uggh... I'm tired of talking about this stuff.  I'm going to do a quick walkaround to clear my head,' she says with a growl as she hops up out of her chair and heads off, a hint of canine arousal in the air in the wake of her departure.";
		now Alexandrastory is true;
	otherwise if hp of Alexandra >= 57 and a random chance of 1 in 3 succeeds and Alexandrastory is true and Alexandrastory2 is false:
		say "     Alexandra leans back in her chair and rubs her brow.  'Things were pretty hard for a while after I was taken away from my neglectful parents.  I had a tough time fitting in, feeling that everyone was judging me, so I did my best to be a good person and prove that I was better than my folks.  I was probably really just trying to prove it to myself.  So when things collapsed during the outbreak, I guess my infected mind started obsessing over that more and more,' she says shaking her head.";
		say "     'I just kept trying to prove myself and do my best to be a good cop.  But I was getting more and more confused on what that meant in this crazy, over-sexed city.  I'm glad you came along and talked some sense into me before I became another sex-crazy monster.  I've been transformed into a dog woman and I need to learn how to deal with that.  There's nothing to be gained from pretending this crisis will go away if I keep acting like a police officer.  I need to try helping people get through this mess instead of trying to act like the city hasn't fallen completely apart";
		say ".'";
		now Alexandrastory2 is true;
[		if hp of Alexandra > xxx:		[***]
			say ".'  Alexandra gets out of her chair and grabs you by the wrist, pulling you in close.  'Enough talk for now though.  Those 'dog woman urges' could use some relief.'";
			attempttowait;
			now Alexandrastory2 is true;
			now lastfuck of Alexandra is turns + 8;
			try fucking Alexandra;				]
	otherwise if hp of Alexandra >= 58 and a random chance of 1 in 3 succeeds and Alexandracoffee is false:
		say "     'Oh, I almost forgot.  I found this a little while ago, but hadn't had a chance to get it working yet,' she says, getting up and heading over to a box in the corner.  Pulling out a small gas cooker from it, a little battered but functional, she sets it up on one of the desks.  With a little help from you to get it cleaned up, she manages to get it running.  Some coffee, also among the items in the box, is brewed up for you and [if the number of policed people + the number of lockered people > 1]the others[otherwise]Jimmy[end if] to enjoy - a rare treat these days.";
		say "     'Oh, that's the stuff,' Jimmy says with a sigh of pleasure as he downs a hot mouthful.";
		increase lastfuck of Jimmy by 6;
		if Paula is lockered:
			say "     'Be careful, that stuff'll stunt your growth,' Paula teases him.  Jimmy gives a flat 'Ha-ha' in response and takes another big gulp.";
			increase lastfuck of Paula by 6;
		if Stella is lockered:
			say "     'You got any tea in there,' Stella comments, sniffing around in the box.  Not finding any, the dalmatian's forced to take the coffee, though she drinks it down as eagerly as the rest of you.  'Bleck.  Well, that's at least perked me up,' she laughs, her cock stiffening as the buzz of caffeine runs through her.";
			increase lastfuck of Stella by 6;
		[***other NPCs in station can get added]
		say "     'Mmm... how I missed you, old friend,' Alexandra says as she takes the last cup.  'Life blood of cops.  Now if only we had some doughnuts,' she says with a grin.  You all enjoy the hot cup of joe, the mood in the place improving considerably thanks to it.";
[		if hp of Alexandra > ***, increase lastfuck of Alexandra by 6;	]
		increase morale of player by 3;
		decrease thirst of player by 6;
		if thirst of player < 0, now thirst of player is 0;
		now Alexandracoffee is true;
	otherwise if hp of Alexandra > 51 and no_AlexandraTask - turns > 3 and a random chance of 1 in 3 succeeds:
		AlexandraTaskChat;
	otherwise:
		say "[alexandratalk_gg1]";		[access regular conversation content]


to say alexandratalk_gg1:
	if hp of Alexandra < 56:
		say "     [one of]'It's good to see a friendly face from time to time,' she says, her tail wagging.[or]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here.  Things have been pretty quiet lately, so it must be helping.'[or]'Thanks for making the effort to talk to me.  I might've gone over the edge and permanently become a crazy police dog or something if not for you to talk to.'[or]'It's been hard to deal with this sex-crazed city at times.  The urges you get, you know,' she says.  You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you a report on recent activity around the police station.[or]'You need to be careful out there.  There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants.  Just because someone can talk to you doesn't mean they're sane or safe.'[or]'I've noticed that there's different mutants in different parts of the city.  They're probably centered around where that infection first broke out or they were first able to breed more of themselves.'[or]'Let me know if you find anyone else out there.  I could use some good news.'[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize.  We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[at random]";
	otherwise if hp of Alexandra is 56:
		say "     [one of]'It's good to see a friendly face from time to time,' she says, her tail wagging.[or]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here.  Things have been pretty quiet lately, so it must be helping.'[or]'Thanks for making the effort to talk to me.  I might've gone over the edge and permanently become a crazy police dog or something if not for you to talk to.'[or]'It's been hard to deal with this sex-crazed city at times.  The urges you get, you know,' she says.  You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you a report on recent activity around the police station.[or]'You need to be careful out there.  There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants.  Just because someone can talk to you doesn't mean they're sane or safe.'[or]'I've noticed that there's different mutants in different parts of the city.  They're probably centered around where that infection first broke out or they were first able to breed more of themselves.'[or]'Let me know if you find anyone else out there.  I could use some good news.'[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize.  We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[or]'Thanks again for those supplies.  It should make things a lot easier once people start taking shelter here.'[at random]";
	otherwise:
		say "     [one of]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here.  Things have been pretty quiet lately, so it must be helping.'[or]'Thanks for all your help around here.  I don't think I'd have been able to pull this off alone.  You've been a good friend,' she says with a smile and a funny look before turning her attention to some of her notes.[or]'It's been hard to deal with this sex-crazed city at times.  The urges you get, you know,' she says.  You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you a report on recent activity around the police station.[or]'You need to be careful out there.  There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants.  Just because someone can talk to you doesn't mean they're sane or safe.'[or]'I've noticed that there's different mutants in different parts of the city.  They're probably centered around where that infection first broke out or they were first able to breed more of themselves.'[or]'Good work finding survivors.  If you locate others, don't forget that this is a safe place for them.  We'd be happy for more company here,' she says with a grin.[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize.  We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[at random]";
[		say "***";		]

to say alexandra_supplies:
	if hp of Alexandra is 52:
		say "     'I've started turning the police station into a defended shelter for those who need it, but we'll need some supplies for those too weak or scared to forage.  Also, if we've already got a good stockpile, it'll be easier to convince people to come here.  I'm sorry to trouble you with this, but I'd really appreciate it if you could scavenge some extra supplies for me.  I've already started, but another six meals and six days worth of fresh water would really help.'";
		if carried of food >= 6 and carried of water bottle >= 6:
			say "     Having enough of the food and water supplies in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.'  She gives you a quick kiss on the cheek, then realizes what she's done.  'Ah... umm...'  She blushes at her ears and scoops up the supplies clumsily, hurrying off toward the storage lock-up.  There is a hint of canine arousal in the air after her departure.";
				decrease carried of food by 6;
				decrease carried of water bottle by 6;
				increase score by 25;
				now hp of Alexandra is 56;
			otherwise:
				say "     Not wanting to part with your much-needed supplies, you politely tell her you'll be on the lookout for additional supplies.  If you get enough for your own needs, perhaps you can help her out then.";
				now hp of Alexandra is 53;
		otherwise if carried of food >= 6:
			say "     Having the food supplies she needs already in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.  Ah... umm...'  She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of food by 6;
				increase score by 10;
				now hp of Alexandra is 54;
			otherwise:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some.  If you get enough for your own needs, perhaps you can help her out then.";
				now hp of Alexandra is 53;
		otherwise if carried of water bottle >= 6:
			say "     Having the water supplies she needs already in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.  Ah... umm...'  She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of water bottle by 6;
				increase score by 10;
				now hp of Alexandra is 55;
			otherwise:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some.  If you get enough for your own needs, perhaps you can help her out then.";
				now hp of Alexandra is 53;
		otherwise:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of food > 0 or carried of water bottle > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";
			now hp of Alexandra is 53;
	otherwise if hp of Alexandra is 53:	[gave neither yet]
		say "     'I was wondering if you'd had any luck finding those supplies we'll need here.  Like I said, I could use another 6 food and 6 water rations to improve the stockpiles I've got.  Did you manage to find what I need?'";
		if carried of food >= 6 and carried of water bottle >= 6:
			say "     Having enough of the food and water supplies in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.'  She gives you a quick kiss on the cheek, then realizes what she's done.  'Ah... umm...'  She blushes at her ears and scoops up the supplies clumsily, hurrying off towards the storage lock-up.  There is a hint of canine arousal in the air after her departure.";
				decrease carried of food by 6;
				decrease carried of water bottle by 6;
				increase score by 25;
				now hp of Alexandra is 56;
			otherwise:
				say "     Not wanting to part with your much-needed supplies, you politely tell her you'll be on the lookout for additional supplies.  If you get enough for your own needs, perhaps you can help her out then.";
		otherwise if carried of food >= 6:
			say "     Having the food supplies she needs in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.  Ah... umm...'  She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of food by 6;
				increase score by 10;
				now hp of Alexandra is 54;
			otherwise:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some.  If you get enough for your own needs, perhaps you can help her out then.";
		otherwise if carried of water bottle >= 6:
			say "     Having the water supplies she needs in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.  Ah... umm...'  She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of water bottle by 6;
				increase score by 10;
				now hp of Alexandra is 55;
			otherwise:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some.  If you get enough for your own needs, perhaps you can help her out then.";
		otherwise:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of food > 0 or carried of water bottle > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";
	otherwise if hp of Alexandra is 54:	[already gave food]
		say "     'I was wondering if you'd had any luck finding those supplies we'll need here.  Thanks again for the food you brought, but like I said, I could use another 6 water rations to improve the stockpiles I've got.  Did you manage to find what I need?'";
		if carried of water bottle >= 6:
			say "     Having the water supplies she needs in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.  Ah... umm...'  She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.  There is a hint of canine arousal in the air after her departure.";
				decrease carried of water bottle by 6;
				increase score by 10;
				now hp of Alexandra is 56;
			otherwise:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some.  If you get enough for your own needs, perhaps you can help her out then.";
		otherwise:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of water bottle > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";
	otherwise if hp of Alexandra is 55:	[already gave water]
		say "     'I was wondering if you'd had any luck finding those supplies we'll need here.  Thanks again for the water you brought, but like I said, I could use another 6 food rations to improve the stockpiles I've got.  Did you manage to find what I need?'";
		if carried of food >= 6:
			say "     Having the food supplies she needs in your pack, shall you give them over to her?";
			if the player consents:
				say "     The doberwoman smiles happily, a canine grin on her face.  'I knew I could count on you.  Thanks a lot, hon.  Ah... umm...'  She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.  There is a hint of canine arousal in the air after her departure.";
				decrease carried of food by 6;
				increase score by 10;
				now hp of Alexandra is 56;
			otherwise:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some.  If you get enough for your own needs, perhaps you can help her out then.";
		otherwise:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of food > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";



[ hp of Alexandra ]
[ 0 = still roaming ]
[ 1-49 = Bad Alexandra ]
[ 1 = At bunker, no talk ]
[ 2 = At bunker, talk ]
[ 3 = First preggers ]
[ 4 = Gave birth ]
[ 5 = Preggers again ]
[ 50+ = Good Alexandra ]
[ 50 = At police station, no visit ]
[ 51 = Been to police station ]
[ 52 = Talked ]
[ 53 = Supply request: food/water needed ]
[ 54 = Food given/water needed ]
[ 55 = Water given/food needed ]
[ 56 = Both given ]
[ 57 = Brought in a survivor (Jimmy) ]
[ 58 = Medical supplies (and Paula?) ]

[ lust of Alexandra ]
[ 0 = not preggers ]
[ 1-12 = lightly preggers ]
[ 13-24 = plumply preggers ]
[ if ( hp of Alexandra is 3 and lust of Alexandra > 12 ) or hp of Alexandra > 3  =  bigger breasts ]

[ libido of Alexandra ]
[ number of offspring ]

[ level of Alexandra ]
[ Alexandra + Fang ]
[ 0 = no contact ]
[ 1 = unshared ]
[ 2 = shared ]

[ xp of Alexandra ]
[ turn when both Fang and Alexandra are determined to be present]

[ lastdobiemess ]
[ 0 = no sex ]
[ 1 = fucked pussy ]
[ 2 = anal ]
[ 3 = oral ]
[ 4 = cunn ]
[ 5 = licked her ]
[ 6 = tits ]
[ 7 = 69 ]
[ 97 = Fang + oral ]
[ 98 = Fang + cunn ]
[ 99 = Fang ]

[     policerepair      ]
[ 0 = task not assigned ]
[ 1 = task assigned     ]
[ 2 = partial windows   ]
[ 3 = completed windows ]
[ 4 = partial doors     ]
[ 5 = completed doors   ]
[ 6 = miscellaneous     ]


Section 9 - Conversation on other NPCs

[
Thoughts on others:
Coleen - 
Elijah - 
Onyx - 
Icarus - 
...
]

A_Candy is a truth state that varies.  A_Candy is usually false.
A_Sven is a truth state that varies.  A_Sven is usually false.
A_Fang is a truth state that varies.  A_Fang is usually false.
A_Philip is a truth state that varies.  A_Philip is usually false.
A_Mack is a truth state that varies.  A_Mack is usually false.
A_Sam is a truth state that varies.  A_Sam is usually false.
A_Snow is a truth state that varies.  A_Snow is usually false.
A_Sandra is a truth state that varies.  A_Sandra is usually false.
A_Sally is a truth state that varies.  A_Sally is usually false.
A_Sarah is a truth state that varies.  A_Sarah is usually false.
A_Sarah2 is a truth state that varies.  A_Sarah2 is usually false.
A_Coleen is a truth state that varies.  A_Coleen is usually false.
A_Solstice is a truth state that varies.  A_Solstice is usually false.
A_David is a truth state that varies.  A_David is usually false.
A_Elijah is a truth state that varies.  A_Elijah is usually false.
A_Onyx is a truth state that varies.  A_Onyx is usually false.
A_Helen is a truth state that varies.  A_Helen is usually false.
A_Xerxes is a truth state that varies.  A_Xerxes is usually false.
A_Icarus is a truth state that varies.  A_Icarus is usually false.
no_AlexandraNPC is a number that varies.  no_AlexandraNPC is usually 255.

to AlexandraNPCChat:
	let AlexandraNPC be a list of numbers;
	if A_Candy is false and Candy is bunkered, add 1 to AlexandraNPC;
	if A_Sven is false and Sven is bunkered, add 2 to AlexandraNPC;
	if A_Fang is false and Fang is booked, add 3 to AlexandraNPC;
	if A_Philip is false and Philip is bunkered, add 4 to AlexandraNPC;
	if A_Mack is false and Mack is bunkered, add 5 to AlexandraNPC;
	if A_Sam is false and Sam is bunkered, add 6 to AlexandraNPC;
	if A_Snow is false and Snow is booked, add 7 to AlexandraNPC;
	if A_Sandra is false and Sandra is bunkered, add 8 to AlexandraNPC;
	if A_Sally is false and Sally is bunkered, add 9 to AlexandraNPC;
	if A_Sarah is false and Sarah is bunkered, add 10 to AlexandraNPC;
[	if A_Coleen is false and Coleen is bunkered, add 11 to AlexandraNPC;	]
	if A_Solstice is false and Solstice is booked, add 12 to AlexandraNPC;
	if A_David is false and David is booked, add 13 to AlexandraNPC;
[	if A_Elijah is false and Elijah is bunkered, add 14 to AlexandraNPC;
	if A_Onyx is false and Onyx is booked, add 15 to AlexandraNPC;		]
	if A_Helen is false and Helen is booked, add 16 to AlexandraNPC;
	if A_Xerxes is false and Xerxes is booked, add 17 to AlexandraNPC;
[	if A_Icarus is false and Icarus is booked, add 18 to AlexandraNPC;	]
	if AlexandraNPC is empty:
		now no_AlexandraNPC is turns;
		say "[alexandratalk_bg1]";
	otherwise:
		sort AlexandraNPC in random order;
		if entry 1 of AlexandraNPC is 1, say "[A_NPC01]";
		if entry 1 of AlexandraNPC is 2, say "[A_NPC02]";
		if entry 1 of AlexandraNPC is 3, say "[A_NPC03]";
		if entry 1 of AlexandraNPC is 4, say "[A_NPC04]";
		if entry 1 of AlexandraNPC is 5, say "[A_NPC05]";
		if entry 1 of AlexandraNPC is 6, say "[A_NPC06]";
		if entry 1 of AlexandraNPC is 7, say "[A_NPC07]";
		if entry 1 of AlexandraNPC is 8, say "[A_NPC08]";
		if entry 1 of AlexandraNPC is 9, say "[A_NPC09]";
		if entry 1 of AlexandraNPC is 10, say "[A_NPC10]";
[		if entry 1 of AlexandraNPC is 11, say "[A_NPC11]";	]
		if entry 1 of AlexandraNPC is 12, say "[A_NPC12]";
		if entry 1 of AlexandraNPC is 13, say "[A_NPC13]";
[		if entry 1 of AlexandraNPC is 14, say "[A_NPC14]";
		if entry 1 of AlexandraNPC is 15, say "[A_NPC15]";	]
		if entry 1 of AlexandraNPC is 16, say "[A_NPC16]";
		if entry 1 of AlexandraNPC is 17, say "[A_NPC17]";
[		if entry 1 of AlexandraNPC is 18, say "[A_NPC18]";	]

to say A_NPC01:	[Candy]
	say "     'How can you stand that prissy raccoon boy, boss?' she whispers to you as Candy prances into the library to get a book.  'He's such a silly flake.  He's nothing but a useless wimp.  I could take him with one hand tied behind my back.'  Candy gives a cheery smile and wave, ignoring the glare the Doberwoman's giving him[if cocks of player > 0].  He gives his fluffy tail a big swish[end if].";
	now A_Candy is true;

to say A_NPC02:	[Sven]
	say "     'I noticed you've got another fucktoy stashed away here - that quiet snow leopard.  Good for you, boss.  At least you understand that it's now a world where what you can take is yours, and that includes whatever sexy playthings you want.  I might like a go at him sometime... though I might play a little rougher than he's used to,' she adds with a toothy grin.";
	now A_Sven is true;

to say A_NPC03:	[Fang]
	if level of Alexandra is 0:
		say "     'How'd you manage to snag one of those wolves to guard this place, boss?' she asks, clearly impressed with you.  'He looks like a lot of fun.  I might just bend over for him some time you're too busy to take care of your bitch,' she adds with a wink while rubbing a paw around in her shorts.";
	otherwise if level of Alexandra is 1:
		say "     'You don't need to worry, boss.  That wolf's comes sniffing around from time to time, but that's it.  Since you've staked your claim, we both understand whose bitch I am,' she says, remembering the scene with obvious delight.";
	otherwise:
		say "     'That wolf that helps me guard this place, he's a quiet one.  Doesn't say much, but damn if he's not a lot of fun to sneak out back with.  I can see why you [if hp of Fang < 3]wanted to keep him[otherwise]bend over for him[end if].'";
	now A_Fang is true;

to say A_NPC04:	[Philip]
	say "     'That pig you found is nothing but a stupid, useless slob.  Does nothing but wallow in his own filth.  He reminds me of my father,' she growls, grinding one fist into her palm.";
	now A_Philip is true;

to say A_NPC05:	[Mack]
	say "     'That grey squirrel you found is quite the big boy,' she says, licking her chops.  'Mmm-mmm!  I'd be tempted to get a taste of his nut butter, but he seems to only have eyes for you[if Snow is booked] and that other squirrel[end if] right now.  Oh well, maybe later,' she adds, sliding a paw back into her jeans to play with herself.";
	now A_Mack is true;

to say A_NPC06:	[Sam]
	say "     'That taur friend of yours came up looking for a sample.  [if hp of Sam < 30]He[otherwise]She[end if] said a blood sample would be fine, but what fun is there in that?' she says with a barking laugh.";
	now A_Sam is true;

to say A_NPC07:	[Snow]
	say "     'That squirrel you found,' she says, nodding towards Snow, 'has got some sweet melons on her.  And that fine piece of meat I wouldn't mind riding either.  I see that bushy tail of hers swish and part of me just wants to jump her bones.  If she'd shut up about those stupid squirrels of hers for a while, I might even do it.'";
	now A_Snow is true;

to say A_NPC08:	[Sandra]
	say "     'That silly bunny girl you found may act all cute and innocent, but she's one kinky slut.  I've caught her pawing off to some messed up shit going on with the critters outside more than once.  Now, I don't have a problem with that,' she says, slipping a paw into her own jeans.  'World's gone to hell and people can get up to whatever kind of kinky shit they like now that there's nobody's around to say they can't.'";
	now A_Sandra is true;

to say A_NPC09:	[Sally]
	say "     'That huskybunny slut you found is quite a bit of fun, I must say.  I borrowed her for a bit, boss,' she says with a wink.  'Now, I seen a lot of critters out there, but nothing quite like her.  I'm not sure what you did to get your hands on such a sweet-ass fucktoy, but I expect you'll not be telling that story to the military if they ever get off their asses and get us out of here.";
	now A_Sally is true;

to say A_NPC10:	[Sarah]
	say "     'Couldn't help noticing that you've got another doggy pet.  Are you planning on being a playah and making a little harem of bitches for yourself, boss?  That's fine by me as long as they remember who's top dog around here,' she says with a growl while smacking a fist into her palm.";
	now A_Sarah is true;

to say A_NPC12:	[Solstice]
	say "     Alexandra casually takes you aside and speaks low to you.  'That raven-fox-thing you brought here's being real dodgy with me ever since she found out I was a cop.  I didn't say nothing to her, but you should know that we got word from Interpol about someone using [']Solstice['] and other aliases not too long before this whole mess happened.  Now, descriptions and stuff aren't no good anymore, but she certainly matches the profile they sent.  She's wanted for questioning regarding numerous illegal raids upon archaeological sites, among other stuff.  Now, I don't rightfully care at this point what she's been up to or what she might want to do now that the world's going to hell - she can take everything that's not nailed down and have her fun for all I care - but you need to know what you might be getting into with her, boss.'";
	now A_Solstice is true;

to say A_NPC13:	[David]
	say "     'I tried to ask David, that boytoy soldier of yours, when the military is going to get off their asses and help us, but he got real cagey about it.  He tried to claim the whole 'need-to-know-basis' and 'the-enemy-could-find-out' excuses, but I think he - like the whole god damned lot of them - just don't shit about what's goin['] on!' she growls, knocking a stack of books off the table before storming off.";
	now A_David is true;

to say A_NPC16:	[Helen]
	say "     Alexandra scritches her chin as she watches Helen running around on all fours after a ball the Doberwoman's just tossed to her.  'I gotta know, boss.  What'd you do to her to make her like that?' she asks, sounding a little impressed.  You try to explain the situation to her, but she just nods and winks.  'Whatever you say, but I'd recommend you come up with a better story for the military if they ever turn up.  Whatever it is, I'll be sure to back you up on it, boss.'";
	now A_Helen is true;

to say A_NPC17:	[Xerxes]
	say "     Alexandra scritches her chin as she watches Xerxes running around on all fours after a ball the Doberwoman's just tossed to him.  'I gotta know, boss.  What'd you do to him to make him like that?' she asks, sounding a little impressed.  You try to explain the situation to her, but she just nods and winks.  'Whatever you say, but I'd recommend you come up with a better story for the military if they ever turn up.  Whatever it is, I'll be sure to back you up on it, boss.'";
	now A_Xerxes is true;


Section 10 - Tasks and Hints

Part 0 - Setup

AT_Matt is a truth state that varies.  AT_Matt is usually false.
AT_Mouse is a truth state that varies.  AT_Mouse is usually false.
AT_Sandra is a truth state that varies.  AT_Sandra is usually false.
AT_Snow is a truth state that varies.  AT_Snow is usually false.
AT_Philip is a truth state that varies.  AT_Philip is usually false.
AT_RLD is a truth state that varies.  AT_RLD is usually false.
AT_Sven is a truth state that varies.  AT_Sven is usually false.
AT_Marks is a truth state that varies.  AT_Marks is usually false.
AT_Lisa is a truth state that varies.  AT_Lisa is usually false.
AT_Diego is a truth state that varies.  AT_Diego is usually false.
AT_Qytat is a truth state that varies.  AT_Qytat is usually false.
AT_Sarah is a truth state that varies.  AT_Sarah is usually false.
AT_Jimmy is a truth state that varies.  AT_Jimmy is usually false.
AT_Paula is a truth state that varies.  AT_Paula is usually false.
AT_Repair is a truth state that varies.  AT_Repair is usually false.
AT_Stella is a truth state that varies.  AT_Stella is usually false.
no_AlexandraTask is a number that varies.  no_AlexandraTask is usually 255.


to AlexandraTaskChat:
	let AlexandraTask be a list of numbers;
	if hp of doctor matt is 0 and AT_Matt is false, add 1 to AlexandraTask;
	if hospquest is 1 and AT_Mouse is false, add 2 to AlexandraTask;
	if Needy Rabbit Girl is unresolved and AT_Sandra is false, add 3 to AlexandraTask;
	if Hyper Squirrel Girl is unresolved and AT_Snow is false, add 4 to AlexandraTask;
	if Hungry Piggy is unresolved and AT_Philip is false, add 5 to AlexandraTask;
	if AT_RLD is false, add 6 to AlexandraTask;
	if Hidden Kitty is unresolved and AT_Sven is false and AT_RLD is true, add 7 to AlexandraTask;
	if Policeman is unresolved and AT_Marks is false and AT_RLD is true, add 8 to AlexandraTask;	[***]
	if Mouse Taur is unresolved and AT_Lisa is false and AT_RLD is true, add 9 to AlexandraTask;
	if AT_Diego is false, add 10 to AlexandraTask;
	if Gryphon Guard is unresolved and AT_Qytat is false, add 11 to AlexandraTask;
	if Zoo Entrance is unknown, add 12 to AlexandraTask;
	if Husky Pack is unresolved and AT_Sarah is false, add 13 to AlexandraTask;
	if Eager Dal is unresolved and AT_Stella is false, add 14 to AlexandraTask;
	if AT_Jimmy is false and guy is not banned and hp of Alexandra >= 56:
		if hp of Jimmy is 0:
			add { 50, 50, 50, 50, 50, 50 } to AlexandraTask;
		otherwise:
			add { 50, 50 } to AlexandraTask;
	if AT_Repair is false and hp of Alexandra >= 56:
		if policerepair is 0:
			add { 51, 51, 51, 51, 51 } to AlexandraTask;
		otherwise:
			add { 51, 51 } to AlexandraTask;
	if hp of Jimmy > 2 and hp of Alexandra >= 56 and AT_Paula is false:
		add { 52, 52, 52, 52, 52, 52 } to AlexandraTask;
	if hp of Alexandra >= 56 and lastPolicePatrol - turns < 8:
		add { 53 } to AlexandraTask;
	if AlexandraTask is empty:
		now no_AlexandraTask is turns;
		say "[alexandratalk_gg1]";
	otherwise:
		sort AlexandraTask in random order;
		if entry 1 of AlexandraTask is 1, say "[A_Task01]";		[Trevor Labs hint/directions]
		if entry 1 of AlexandraTask is 2, say "[A_Task02]";		[City Hospital hint/directions]
		if entry 1 of AlexandraTask is 3, say "[A_Task03]";		[Sandra hint]
		if entry 1 of AlexandraTask is 4, say "[A_Task04]";		[Snow hint]
		if entry 1 of AlexandraTask is 5, say "[A_Task05]";		[Philip hint]
		if entry 1 of AlexandraTask is 6, say "[A_Task06]";		[RLD warning/directions]
		if entry 1 of AlexandraTask is 7, say "[A_Task07]";		[Sven hint]
		if entry 1 of AlexandraTask is 8, say "[A_Task08]";		[Sgt Marks warning]
		if entry 1 of AlexandraTask is 9, say "[A_Task09]";		[Lisa hint]
		if entry 1 of AlexandraTask is 10, say "[A_Task10]";	[Diego warning]
		if entry 1 of AlexandraTask is 11, say "[A_Task11]";	[Qytat hint]
		if entry 1 of AlexandraTask is 12, say "[A_Task12]";	[Zoo warning/directions]
		if entry 1 of AlexandraTask is 13, say "[A_Task13]";	[Sarah hint]
		if entry 1 of AlexandraTask is 14, say "[A_Task14]";	[Stella hint]
		if entry 1 of AlexandraTask is 50, say "[A_Task50]";	[Police Quest 1 - Jimmy]
		if entry 1 of AlexandraTask is 51, say "[A_Task51]";	[Police Extra 1 - Repairs]
		if entry 1 of AlexandraTask is 52, say "[A_Task52]";	[Police Quest 2 - Med supplies/Paula]
		if entry 1 of AlexandraTask is 53, say "[A_Task53]";	[Police Extra 2 - Patrols]
		


Part 1 - Hints (<50)

to say A_Task01:
	say "     'There's a lab in the city that seems to still be active.  They seem to know a fair bit about what's going on in the city, but they were really tight-lipped because I'm a cop.  You might have better luck finding out what's going on.  I'd like you to go there and check it out.  Whatever they're doing, they probably need some help.  You might be able to get some info if you go along with it.'";
	if Outside Trevor Labs is unknown:
		say "     She gives you some directions to the place, called Trevor Labs.  You vaguely remember hearing about the place before the outbreak, but they didn't seem to be very public with the type of work they were doing.  You'll have to remember to go check it out sometime.";
		now Outside Trevor Labs is known;
	now AT_Matt is true;

to say A_Task02:
	say "     'I spotted some activity on the upper level of the city hospital.  Something's definitely going on there, though I can't really get in to find out what.  I'd hoped my being a police officer would be able to convince them to let me in, but the orderlies just attacked.  You might want to go check it out, but be careful of the creatures roaming the halls[if City Hospital is unknown].  Getting to the hospital can be a little tricky, but this path is fairly clear.  I'd recommend you take the following route to get there..[run paragraph on][end if].'";
	now City Hospital is known;
	now AT_Mouse is true;

to say A_Task03:
	say "     'I spotted a [bold type]rabbit girl[roman type] in the city.  She didn't seem as far gone as some of the others, but when I tried to approach her, she ran off.  You might want to keep your eyes open for her.'";
	now AT_Sandra is true;

to say A_Task04:
	say "     'While I was patrolling the city, I ended up getting followed around by a [bold type]squirrel girl[roman type] for a while.  She followed me and seemed to be trying to get me to chase her, but I never managed to get her.  You'll need to be fast and observant if you want to catch her.";
	now AT_Snow is true;

to say A_Task05:
	say "     'It's really disgusting what this infection is doing to some people.  I came across a pig man wallowing in his own filth at one point.  He was a stupid, lazy slob and only wanted to eat and lay around doing nothing.  He reminded me father,' she says, a bit of a growl in her voice.";
	now AT_Philip is true;

to say A_Task06:
	say "     'There's some really over-sexualized creatures out there, many of them concentrated in the seedier part of town.  Cock creatures, horny succubi, hookers, pimps and more.  If you approach [if Entrance to the Red Light District is unknown]the area around the strip clubs and sex shops around these streets,' she says, outlining the area she's talking about, '[otherwise]there, [end if]you need to be really careful or you could end up joining them as another sex slut roaming the red light district of town.'  There's the faint scent of canine arousal as Alexandra talks to you about what she saw out there.";
	if Entrance to the Red Light District is unknown:
		say "You now know how to locate the Entrance to the Red Light District.";
		now Entrance to the Red Light District is known;
	now AT_RLD is true;

to say A_Task07:
	say "     'Now, I've already warned you about the red light district of town, but I did spot someone who might still be a survivor at the edge of the area.  It looks like he had a bit of a run in with one of those snow leopards, but you should still keep your eyes open for that [bold type]hidden kitty[roman type] if you're poking around there.'";
	now AT_Sven is true;

to say A_Task08:
	say "     'While I was searching around in the high rise district, I ran into another cop.  At first, I was really hopeful that we'd be able to work together and do more to help out, but he had other plans.  I tried to restrain him, but we were pretty evenly matched and he eventually pulled out some tear gas.  If you run into a [bold type]policeman[roman type] down there, don't trust that tiger cop.  He may have been a cop once, but he certainly doesn't act that way anymore.'";
	now AT_Marks is true;

to say A_Task09:
	say "     'I ran into the rather... friendly... [bold type]mouse taur[roman type] while in the red light district.  It seems she runs a [bold type]porn store[roman type] somewhere down there.  I didn't go there myself, not wanting to risk being tempted, but it's probably safe enough if you want to look into it.'";
	now AT_Lisa is true;

to say A_Task10:
	say "     'As you might expect, there's quite a bit of activity at the city park with lots of animal infections cropping up.  If you go there, there's also a coyote hanging around.  He's quite the troublemaker and isn't to be trusted.  He was really closemouthed about what he's been doing, but it's pretty clear he's been up to no good.  I haven't caught him in the act yet, but I know he's harassing the soldiers and the other mutants, which is only going to make things worse for everyone in the long run.'";
	now AT_Diego is true;

to say A_Task11:
	say "     'I spotted one of those herm gryphons flying around carrying a banner.  I'm not quite sure what that was all about, though I did notice her directing a few other gryphons to other spots.  Since they were up on the roof, I couldn't make out where they were going.  Just keep an eye out for a [bold type]guard gryphon[roman type] on top of buildings and see if you can find out what's going on with her.'";
	now AT_Qytat is true;

to say A_Task12:
	say "     'The zoo's become... well, a zoo.  With all the wild animals that were there, we've got a lot of exotic and dangerous infections running around.  I saw cheetahs, rhinos, tiger and wolf taurs, and even a giant zookeeper roaming around there, just to name a few.  I expect our city's hyena problem started there as well.  Be careful if you go poking around there, or you might become just another wild animal person stalking the grounds.'";
	now Zoo Entrance is known;

to say A_Task13:
	say "     'Those weak little huskies aren't much trouble on their own, but I've seen some of them roaming as a [bold type]husky pack[roman type].  They could be more trouble, sniffing out the few remaining survivors before the military can come in to rescue everyone.  Be on the lookout for them, but be ready for a fight.'";
	now AT_Sarah is true;

to say A_Task14:
	say "     'There's several transformed people out there who're still fairly sane even if they're no longer human.  For many of those transformed, it seems the infection's too much for them.  But there may be some who're stable enough to stay sane even if they're no longer human.  It's a bit hazy, but I recall coming across a rather forward dalmatian herm off in the red light district.  She gave me some attitude when I tried to tell her to go home and wait for rescue, but she left peacefully enough.  You should keep an eye out for that [bold type]eager dal[roman type], as she might still be sane.";
	now AT_Stella is true;


Part 2 - Tasks (50+)

to say A_Task50:	[See Jimmy.i7x for event and NPC content]
	if hp of Jimmy is 0:
		say "     'Earlier, I'd tried tracking down some help from the government, but the area around the capitol building has been destroyed.  We'd gotten a sketchy report that night of a volcanic eruption near the State Capitol Building, but we could hardly believe it.  But when I went there looking for help after the outbreak, it turned out to be true.  Thankfully, it wasn't large eruption, but it was enough to burn down much of the immediate area.  Strangely, the soot and ash in the air still lingers around that part of the city, but hasn't drifted elsewhere.'  [if Approaching the Capitol Building is unknown]She informs you of a fairly safe route you can take to get into the area[otherwise]She pauses for a moment, thinking about the odd behaviour of the ash cloud there[end if].";
		say "     'Much of the remaining population in the area has been turned into automatons, metal-skinned people without minds or emotions past their programmed lusts.  I wasn't able to discover much more before leaving the area, but I'd like you to go check it out and see if you can look into the [bold type]automaton activity[roman type] there.  They seem to be up to something, but I wasn't able to figure it out.  But be careful, the creatures in that part of the city are particularly strange and dangerous.'";
		now Approaching the Capitol Building is known;
		now Government Assistance is resolved;
		now Automaton Activity is unresolved;
		now hp of Jimmy is 1;
	otherwise if hp of Jimmy is 1:
		say "     'Have you had a chance to look into the [bold type]automaton activity[roman type] around the Capitol Building?  Hopefully you'll have better luck at it than I did.  I can smell that they're up to something,' adds says, tapping her muzzle.";
	otherwise if hp of Jimmy is 2:
		say "     Having told Alexandra about what happened with the automatons and the corgi, she's concerned for the little fellow.  'A small guy like that won't be able to stand up to the monsters roaming around there.  You should go back there and look for him as soon as you get the chance.'";
	otherwise:
		say "     'Good work rescuing Jimmy from those automatons.  He wouldn't have been able to get out of that situation without your timely assistance.  He's great to have around; really helps with morale and keeping this place clean.  He's always so helpful.";
		now AT_Jimmy is true;


to say A_Task51:
	if policerepair is 0:
		say "     'There's been quite a bit of damage done here that I'd like fixed up.  I don't mean we need to rebuild the place, but we do need to block up the broken windows and stuff like that.  If we're going to provide a safe place to stay for a while, we can't allow crazed mutants to sneak in to get at them.  I managed to scrounge up some tools and hardware, but I need help doing the work.  It's not something I really know much about.  There's quite a bit to do, but whenever you're ready to [bold type]repair the police station[roman type], just let me know.";
		now policerepair is 1;
	otherwise if policerepair < 6:
		say "     'We've got some more work to do to [bold type]repair the police station[roman type].  Just let me know when you're ready to get back to it.";


policerepairing is an action applying to nothing.
policerepair is a number that varies.
lastpolicerepair is a number that varies.  lastpolicerepair is usually 255.
pr_task01 is a truth state that varies.  pr_task01 is usually false.
pr_task02 is a truth state that varies.  pr_task02 is usually false.
pr_task03 is a truth state that varies.  pr_task03 is usually false.
pr_task04 is a truth state that varies.  pr_task04 is usually false.
pr_completion is a number that varies.
Understand "repair the police station" as policerepairing.
Understand "repair police station" as policerepairing.
Understand "repair the station" as policerepairing.
Understand "repair station" as policerepairing.
Understand "repair police" as policerepairing.
Understand "fix the police station" as policerepairing.
Understand "fix police station" as policerepairing.
Understand "fix the station" as policerepairing.
Understand "fix station" as policerepairing.
Understand "fix police" as policerepairing.

check policerepairing:
	if AT_Repair is true, say "You've done pretty much all you can." instead;
	if hp of Alexandra < 56 or policerepair is 0, say "She hasn't mentioned anything about that yet." instead;
	if player is not in Police Station or Alexandra is not visible, say "You should go talk to Alexandra about that." instead;
	if lastpolicerepair is turns, say "Alexandra needs a bit of a break before getting back to the repairs." instead;

carry out policerepairing:
	if pr_task01 is false:
		let bonus be ( stamina of player minus 10 ) divided by 2;
		increase bonus by pr_completion;
		let dice be a random number from 1 to 20;
		say "STAMINA - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice is greater than 12:
			if pr_completion is 0:
				say "     Offering to help Alexandra out with the repairs, you accompany her upstairs to check out the broken windows.  There's quite a few of them to block up, so you set to work with her.  Since you can't replace the windows, you're going to have to screw plywood to their frames.  The worst part of it are those plywood sheets, you and the policewoman having to carry them up the stairs one by one.  Partway through this sweaty work, you notice the Doberwoman's top's gotten quite damp with her sweat.  Wishing her shirt was white, you still get a partial view of her breasts through the light blue material, especially the outline of those dark nipples of hers.  The sight of them helps spur you on to keep going until the work is done.  Once finished, you and Alexandra take a well-deserved break.";
				increase policerepair by 2;
			otherwise:
				say "     Getting back to the task of boarding up the broken windows, you and Alexandra carry the remaining plywood sheets up the stairs and put them into place.  Thankfully, you do get one perk from all this hard labour.  The Doberwoman's top gets quite sweaty from all the heavy lifting.  While you wish her shirt was white, you're still able to get a partial view of her breasts through the light blue material, especially the outline of those dark nipples of hers.  The sight of them helps spur you on to keep going until the work is done.  Once finished, you and Alexandra take a well-deserved break.";
				increase policerepair by 1;
			increase score by 10;
			now pr_task01 is true;
			now pr_completion is 0;
		otherwise:
			if pr_completion is 0:
				say "     Offering to help Alexandra out with the repairs, you accompany her upstairs to check out the broken windows.  There's quite a few of them to block up, so you set to work with her.  Since you can't replace the windows, you're going to have to screw plywood to their frames.  The worst part of it is the plywood sheets, you and the policewoman having to carry them up the stairs one by one.  Carrying the plywood sheets up the stairs is tiring work and wears you down.  You get some of the work done, but eventually have to stop and take a break.  You'll need to get back to it later to finish the rest of them.";
				increase policerepair by 1;
			otherwise:
				say "     Getting back to the task of boarding up the broken windows, you and Alexandra carry more plywood sheets up the stairs and put them into place.  It's tough going and you're still not able to get it all done, but you've gotten closer to completion.  You stop work to take a break, thankful at least that you're making progress.";
			increase score by 1;
			increase pr_completion by 2 + ( bonus + dice ) / 5;
	otherwise if pr_task02 is false:
		let bonus be ( strength of player minus 10 ) divided by 2;
		increase bonus by pr_completion;
		let dice be a random number from 1 to 20;
		say "STRENGTH - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice is greater than 12:
			if pr_completion is 0:
				say "     Offering to help Alexandra with further securing the building, the two of you go around barricading the other doors.  You have to go around the offices, finding desks and filing cabinets and so forth to move in front of them.  You do make it a point to set up one barricade that's fairly easy to tear down from the inside in case of emergency.  It's a lot of hard work, but you and Alexandra have some fun laughing at some of the odd trinkets and junk you find on the desks.  While it's bittersweet for her to be reminded that her fellow officers are gone, reminiscing about them does help her with the grieving process.  As an added bonus, you do find some hidden snacks buried in some of the desks as well, some of which you share with her while taking a break.";
				decrease hunger of player by 6;
				if hunger of player < 0, now hunger of player is 0;
				increase carried of chips by 1;
				increase policerepair by 2;
			otherwise:
				say "     Returning to barricading the other exits from the building, you and Alexandra drag around more heavy furniture to block them.  You do make it a point to set up one barricade that's fairly easy to tear down from the inside in case of emergency.  It's a lot of hard work, but you and Alexandra have some fun laughing at some of the odd trinkets and junk you find on the desks.  While it's bittersweet for her to be reminded that her fellow officers are gone, reminiscing about them does help her with the grieving process.  As an added bonus, you do find some hidden snacks buried in some of the desks as well.";
				decrease hunger of player by 6;
				if hunger of player < 0, now hunger of player is 0;
				increase carried of chips by 1;
				increase policerepair by 1;
			increase score by 10;
			now pr_task02 is true;
			now pr_completion is 0;
		otherwise:
			if pr_completion is 0:
				say "     Offering to help Alexandra with further securing the building, the two of you go around barricading the other doors.  You have to go around the offices, finding desks and filing cabinets and so forth to move in front of them.  The two of you do as much of this back-breaking labour as you're able to take before finally having to stop and take a break to recover.";
				increase policerepair by 1;
			otherwise:
				say "     Returning to barricading the other exits from the building, you and Alexandra drag around more heavy furniture to block them.  You make more headway, but eventually have to stop again to rest your weary muscles.  Thankfully, you've made more progress and are getting closer to finishing this task.";
			increase score by 1;
			increase pr_completion by 2 + ( bonus + dice ) / 5;
	otherwise if pr_task03 is false:
		let bonus be ( dexterity of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "DEXTERITY - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice is greater than 12:
			say "     Suggesting that the two of you get back to work on the building, you head off to take care of a bunch of other repairs and maintenance issues.  At this point, it's more to make the place more livable rather than for security.  You work away with her for a few hours, doing what you can here and there to help out.  Catching sight of that cute ass in those tight pants of hers, you make sure to give her some tasks that have her bending over or kneeling down so you can look it over.  And from the little grin on her muzzle and the wag of her tail, it seems she's caught onto your ploy.  She makes no objection and you even catch a whiff of canine arousal coming from the policewoman the next time she's on her knees to do something.";
			increase score by 10;
		otherwise:
			say "     Suggesting that the two of you get back to work on the building, you head off to take care of a bunch of other repairs and maintenance issues.  At this point, it's more to make the place more livable rather than for security.  You work away with her for a few hours, doing what you can here and there to help out.  Catching sight of that cute ass in those tight pants of hers, you make sure to give her some tasks that have her bending over or kneeling down so you can look it over.  And from the little grin on her muzzle and the wag of her tail, it seems she's caught onto your ploy.  She makes no objection and you even catch a whiff of canine arousal coming from the policewoman the next time she's on her knees to do something.  Unfortunately, this distracts you and you end up banging yourself with a hammer, scraping yourself with a knife and give yourself a few other minor injuries over the course of your repairs.";
			decrease hp of player by 8 + ( level of player / 4 );
			increase score by 5;
		if hp of Jimmy > 3:
			say "     Jimmy brings in drinks for you both at one point.  'Thanks so much for helping out with all this.  You two are doing a super job,' the chipper corgi says.  'You deserve something special for all your hard work.  Can I interest either of you in a quick pick-me-up?' he adds with a wink, tail wagging excitedly.  Still smelling Alexandra's arousal, she seems briefly tempted, but regains her composure and declines.  She states that it'd be fine by her if you want to take Jimmy's offer";
			if cocks of player is 0 and cunts of player is 0:
				say ".  Lacking any genitals for the corgi to play with, you're forced to decline as well.  The little guy seems briefly disappointed, but perks back up soon enough.";
			otherwise:
				say ".  Shall you do so?";
				if the player consents:
					if cocks of player > 0 and anallevel is not 1:
						say "     Deciding to take his offer quite literally, you pick up the little guy into your arms.  As you kiss the cute corgi, Alexandra politely excuses herself until you two are done.  Kneading his ass with one hand, you guide your cock until his tail with the other.  The little guy moans softly and his tail wags excitedly.  Easing him down slowly, you let your [cock of player] cock pop into his tight tailhole[if cock length of player > 15].  Due to your size, you have to go quite slow at first and never manage to bury yourself fully into him, but that doesn't stop either of you from enjoying it[otherwise if cock length of player > 7].  Due to your size, you have to take it slow at first, but eventually you're able to bury yourself fully into him, much to your mutual enjoyment[otherwise].  Your [cock size desc of player] shaft slips fairly easily into his tight little buns and soon you're buried fully into him, much to your mutual enjoyment[end if].";
						say "     You bounce the cute fellow easily up and down your cock.  He pants and moans as you fuck his ass.  His own canine cock throbs against your belly, the six-inch red rod spurting precum onto it with every press of your penis against his prostate.  As his excitement builds, his knot swells up and soon he's spurting dog cum across the both of you with a cry of ecstasy.  Feeling him clamp down around your shaft, you push deep into him one last time and cum, pumping your [cum load size of player] load into the happy doggy.";
						say "     Easing him off your shaft and setting him back down, he has to clutch your leg for support.  'Oh wow!  I mean... I'd never... that was awesome.  I wish I knew how great that felt; I'd've been doing that for years had I known.'  Taking a seat on the floor, you cuddle the cute guy, wiping up the mess you've made with a [if cock width of player >= 12]few rags[otherwise]rag[end if].  After a few more kisses, you let Alexandra know you're ready to get back to work.";
						now hp of Jimmy is 5;
						increase score by 5;
					otherwise:
						say "[Jimmysex01]";
				otherwise:
					say "     The cute corgi's a little disappointed at your response, but nods.  'Sorry, I don't mean to distract you from your work.  We can just talk while you get back to it,' he says cheerfully.";
			say "     Jimmy sticks around to help you two out, mainly by passing you any tools and hardware you might need.  The three of you talk while working, enjoying each other's company.  The cute corgi, when he catches onto your little game with Alexandra doing all the floor level work, grins and gives you a playful elbow to the thigh.  He joins you in taking in the fine view of the doberwoman's tight buns.  Knowing she's being watched by her two friends, the scent of her arousal returns.  The three of you are in fine spirits by the time you finish everything up, though you and Alexandra are rather worn out from all your hard work.";
			decrease thirst of player by 6;
			if thirst of player < 0, now thirst of player is 0;
		otherwise:
			say "     The two of you talk while working, enjoying each other's company.  You can't help but notice that Alexandra's lightened up quite a bit since you'd first met her.  Letting the conversation drift towards how sex has gotten quite prevalent, you try to see how she feels about the matter.  She starts to respond, then realizes what you're asking and gives you a narrow look.  Trying to look innocent, she harrumphes and gets back to work.  Though from the way she gives her ass a wiggle and the increase in the scent of her arousal, you can tell she's not as upset about it as she's letting on.  The two of you finish up the work in fine spirits, but are both rather worn out.";
		say "     As you're putting away the tools, Alexandra comes up to you.  'You've been a big help here.  I wouldn't have been able to handle all of this on my own.  Here, how about you take this?' she says, offering you one of the carpentry hammers from the tool set.  'This might come in handy and would make for a pretty good weapon in a pinch.  I think I can trust you not to kill anyone with this, so you can use it to defend yourself against those mutants.  They heal pretty quick, so they should survive as long as you don't go overboard.'";
		say "     You have gained a [bold type]claw hammer[roman type].  When all you have is a hammer, every mutant looks like a nail.";
		increase carried of claw hammer by 1;
		increase score by 10;
		increase policerepair by 1;
		now pr_task03 is true;
	otherwise if pr_task04 is false:
		let bonus be ( perception of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "PERCEPTION - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice is greater than 12:
			say "     You go around the police station, looking for any more work that needs to be done.  You find the occasional thing to take care of, but most of the stuff that still needs to be done at this point is beyond the limited capabilities of you and your supplies.  You do deal with a few more odds and ends, and it looks at first like you've done a very thorough job.";
			say "     You do come across a door in the service area that you'd not noticed before because it's partially obscured behind some cardboard boxes and a whiteboard.  Investigating further, you discover it opens onto a small hallway with a janitor's closet and a service door to the outside.  This steel door's in rough shape, having gotten quite bent and no longer closing properly.";
			if intelligence of player > 15:
				say "     Looking at the damaged door, you realize it'd take quite a bit of work to get it bent back into shape and properly reseated.  You're about to go grab the tools you'll need for this when you realize a far better solution.  After taking some quick measurements, you unscrew the first door you'd found and, with Alexandra's help, get it mounted in place of the exterior door.  Adding the door hardware, you're able to get his door to close and lock properly.  A few heavy objects are added as a further barricade and this potential back entrance is fully secured.  Work smarter, not harder.";
				increase policerepair by 3;
			otherwise:
				let bonus be ( strength of player minus 10 ) divided by 2;
				let dice be a random number from 1 to 20;
				say "STRENGTH - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
				if bonus + dice is greater than 12:
					say "     You have to go back and get some bigger tools to deal wit the damaged door.  Telling Alexandra about the problem, she joins you in trying to deal with it.  You do your best to try and pound the door back into shape, but it's very hard work.  By the time you're done, your muscles ache, but you're able to pretty much undo the warp in it, getting it straight enough to close nicely and latch tight.  It doesn't look very pretty, but it works well enough.  A few heavy objects are added as a further barricade and this potential back entrance feels more secure.  Great work.";
					increase policerepair by 2;
				otherwise:
					say "     You have to go back and get some bigger tools to deal wit the damaged door.  Telling Alexandra about the problem, she joins you in trying to deal with it.  You do your best to try and pound the door back into shape, but it's very hard work.  You are able to partially undo the warp in it, getting it straight enough to partially close and to latch.  It's still in bad shape and you can see outside through the top and bottom corner, but at least it's not hanging open.  A few heavy objects are added as a further barricade and this potential back entrance feels more secure.  Good going.";
					increase policerepair by 1;
			now pr_task04 is true;
		otherwise:
			say "     You go around the police station, looking for any more work that needs to be done.  You find the occasional thing to take care of, but most of the stuff that still needs to be done is beyond the limited capabilities of you and your supplies.  You do deal with a few more odds and ends, but it looks like you've done a very thorough job.  The place certainly isn't in great shape, but it looks a little better than before and seems quite secure thanks to your hard work.  Alexandra seems pleased as well, thanking you with a quick hug before regaining her composure.";
		say "     'Ahem.  Sorry about that.  You've just been such a good friend.  Thanks again for all your help.'  She straightens her shirt and heads off quickly, claiming she needs to do some rounds.  The scent of canine arousal lingers for a little while even after her departure.";
		increase score by policerepair * 3;
		now pr_task04 is true;
		now AT_Repair is true;
	follow the turnpass rule;
	now lastpolicerepair is turns;


Table of Game Objects (continued)
name	desc	weight	object
"claw hammer"	"A carpentry hammer with a strong head and a clawed back."	3	claw hammer

claw hammer is an armament. It is part of the player. It has a weapon "[one of]your hammer[or]your claw hammer[or]your carpenter's hammer[or]the hammer[or]the claw hammer[at random]". The weapon damage of claw hammer is 6. The weapon type of claw hammer is "Melee". It is not temporary.

the scent of the claw hammer is "The sturdy hammer smells of metal and sweat.";



[
Obtain some medical supplies from the Hospital?  Paula? - secondary (potential gain)
Perform some repairs via stat checks.  Limited number of attempts per turn.
]


to say A_Task52:	[See Paula.i7x for rescue and NPC content]
	say "     'I was thinking we should have some medical supplies here in case of emergencies.  I figured I'd go check out the city hospital to get them.  I'll be heading out there shortly.  Did you want to come along?  I should be fine, but the help would be appreciated if you're free.'";
	say "     Shall you accompany the doberwoman on her scavenging expedition?";
	if the player consents:
		say "[paula_rescue]";
	otherwise:
		say "     Stating that you have other things to deal with, you leave her to go on her expedition.  Trusting her to be able to handle herself, she doesn't disappoint, returning a few hours later with some medkits and other medical supplies.  She seems a little worn out, but in good spirits for her success at finding the items in an examination room.";
		now hp of Paula is 1;
	now AT_Paula is true;
	now hp of Alexandra is 58;


to say A_Task53:	[Patrols]
	say "     'Actually, I was thinking it was about time to go on patrol again.  I don't want any sex-crazed mutants getting too comfortable coming near here, [if the number of policed people + the number of lockered people > 6]especially now that we've got several survivors living here[otherwise]especially once more survivors start hearing about this place and showing up[end if].  While it'd certainly be safer for both of us to go together,' she says, her stubby tail wagging a little at the prospect, 'there shouldn't be any real problem.  One of us should stay here on guard.  Did you want to patrol around the area?";
	now fightoutcome is 100;
	if the player consents:
		say "     Alexandra wishes you good luck.  'I'll see you when you get back,' she says.  You head out in the neighbouring city and wander the area surrounding the station on the lookout for trouble";
		if a random chance of 3 in 5 succeeds:
			say ".  You end up coming across a mutant getting a little too curious about the police station for your liking.  Going over to check it out, your suspicions are confirmed when the creature notices you and advances.";
			now battleground is "Outside";
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Your battle over, you complete your patrol and return to the police station.  You fill Alexandra in on your encounter and she thanks you for dealing with the creature and for taking a turn on patrol for her.";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:
				say "     After you recover from your loss, you stagger your way back to the station and fill Alexandra in on your encounter.  Sparing her some of the messier details, you warn her to keep an eye out for the creature the next time she goes out.  She thanks you for going out and facing that threat to help protect the station house.";
			otherwise:
				say "     Making your escape from the creature, you do your best to draw it away from the station before losing it.  Once you've managed that, you sneak back around and return to the police station.  You fill Alexandra in on your encounter and tell her to keep an eye out for the creature the next time she goes out.  She thanks you for going out and facing that threat to help protect the station house.";
		otherwise:
			say ".  The trip is thankfully uneventful, most of the mutants knowing to steer clear of what they see as the Doberman cop's territory.  You patrol for a few hours before eventually returning.  Alexandra thanks you again for taking a turn on patrol for her.";
		follow the turnpass rule;
	otherwise:
		say "     Alexandra nods and grabs her nightstick and thermos, getting ready to go out.  'Alright.  I'll be back in a while.'  You nod to her and watch her head out.  She returns some time later, [one of]a little scruffy from a fight[or]none the worse for wear[or]a little dirty, but otherwise fine[or]safe and sound[or]nursing a sore shoulder[at random].";
	now lastPolicePatrol is turns;
	if fightoutcome >= 20 and fightoutcome < 100, decrease lastPolicePatrol by 8;	[player lost/fled = added delay before asked to patrol again]


Section 11 - Endings

when play ends:
	if alexandra is booked and hp of Alexandra < 50:
		if humanity of player < 10:
			say "     When the Doberwoman realizes that you're not going to be returning, she strikes out into the city[if libido of alexandra > 0] with her offspring[end if].  After beating up several other canines and a few lightly infected survivors she manages to track down, [if libido of alexandra > 0]they form[otherwise]she forms[end if] a gang of rough canine thugs.  With herself as the alpha and gang leader, her pack, formed mostly newly infected Dobermans and her offspring, fight for a claim a chunk of the city as their own.  They have little concern for boundaries or rules and happily take whatever they want, be it goods or sex, from any they happen to accost.";
		otherwise:
			say "     When the military come through to rescue what sane survivors they can find, Alexandra gets herself cleaned up and back in her uniform.  She backs you up on whatever information or stories you want to tell the military, her presence adding credence to your claims once they check her exemplary record as a policewoman.  You both have a bit of a snicker about this during a private moment while you grope your bitch's ass.  It's tough for her to put on the act as a good cop now that she's your bad girl through and through, but thankfully she's processed quickly in an attempt by the military to get more cops available to help with the problem of escaping creatures.";
			say "     Once you're released, she's ready and waiting for you, loyal only to you[if level of Alexandra is 2] and Fang[end if].  Clearly very worked up and frustrated after so long without fucking you, the first night you're together again is one long, rough fuck session where you reward your bad girl with the hardest, rawest sex you can until you're both exhausted to the point of passing out as the sun comes up.  From that point on, she sticks with you loyally, acting your gruff, no-nonsense muscle for any task you need.  Be it bodyguard, enforcer, goon or fucktoy bitch, she will do whatever you request, the meaner the act or the rougher the sex, the better.";
			if libido of Alexandra > 0:
				say "     Alexandra's [if libido of Alexandra > 10]numerous [end if]offspring are a roughshod pack of dogs.  They are unsavoury punks through and through, making trouble, running in gangs and generally doing whatever they like.  Aside from you, the only authority they respect is their tough-as-nails mother and her firm right hand.";


[ scraps for later


  There's not much of a police force left since this crazy infection rolled through.  I figure most every cop in the city got overwhelmed.  As this crazy thing was happening, we were all called out to incidents popping up everywhere.  Of course, it's not like cops can do much against this sort of thing, so all that did was make sure we all were at the outbreak points, getting changed into sex-crazed creatures like everyone else.
...
Sgt Marks reference.



Informing you that her name is Officer Friedrich, she explains how she's been trying to help around here as best she can by trying to keep those infected from slipping any further.  As you talk about what you've been seeing, she even shares some water with you.
You talk to her a little about what you've seen as well.  

other rooms:
holding cells
lockup/storage
police lockerroom
chief's office

actual tasks:
- supplies
- help survivor(s)
- defend police stn
- track "criminal"


]

Alexandra ends here.
