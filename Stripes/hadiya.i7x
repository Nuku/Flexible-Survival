Version 3 of Hadiya by Stripes begins here.
[Version 3.2 - Post-quest threesomes w/Hadiya & Gobby - Stripes]
[- Originally Authored By: Kaxin -]
[Expanded sex scenes and quest by Stripes.]
[Version 3.3 - Minor maintenance and character relocation - Luneth]

"Adds a situation to Flexible Survival with a very annoyed Hyena woman."

[ HP of Hadiya                                                                 ]
[  0 = not met                                                                 ]
[  1 = met                                                                     ]
[  2 = talked to her                                                           ]
[  3 = had sex (oral)                                                          ]
[  4 = got fucked                                                              ]
[  5 = player came early                                                       ]
[  6 = came on ass                                                             ]
[ 7-50 regular hyena infect                                                    ]
[  7 = regular infect set                                                      ]
[  8 = told about guitar                                                       ]
[  9 = found goblin thief                                                      ]
[ 10 = found item for goblin                                                   ]
[ 11 = goblin getting guitar                                                   ]
[ 12 = goblin late                                                             ]
[ 13 = both moved to bunker                                                    ]
[ 14 = talked at bunker                                                        ]

[ 50+ = male bitch infection                                                   ]
[ 50-56 = <nothing>                                                            ]
[ 57 = male hyena bitch set                                                    ]
[ 58 = told about guitar                                                       ]
[ 59 = found goblin thief                                                      ]
[ 60 = found item for goblin                                                   ]
[ 61 = goblin getting guitar                                                   ]
[ 62 = goblin late                                                             ]
[ 63 = both moved to bunker                                                    ]
[ 64 = talked at bunker                                                        ]

[        HP of Gobby                                                           ]
[  0 = not met/talked                                                          ]
[  1 = talked to him                                                           ]
[  2 = sexed him up                                                            ]

Section 1 - The Situation

Annoyed Hyena is a situation.
The sarea of Annoyed Hyena is "Junkyard".
when play begins:
	add Annoyed Hyena to badspots of hermaphrodite;
	add Annoyed Hyena to badspots of furry;

Instead of Resolving a Annoyed Hyena:
	say "     While exploring, you accidentally run face first into what at first seems a warm, furry wall. Upon recovering and taking a second look, you realize that it's actually a hyena. A tall, obviously intimidating hyena. Her sharp predatory teeth as well as the oversized tongue hanging out of her muzzle doesn't exactly give her the most pleasant looks, but her distinctive spotted red fur helps her stand out from the other hyenas that you've met in the past. She doesn't seem to be hostile to you, or at least not just yet to say the least... as she just seems to be more amused by your presence than anything else.";
	WaitLineBreak;
	say "     Her slacks seem to conceal an obvious bulge. Seems she's pretty much the same as the rest of the hyenas around here by the looks of it... though she at least covers it up!";
	WaitLineBreak;
	say "     'Well now, just what do we have here? Someone new around to have fun with... suppose I might be up for you visiting me. I definitely need more company. And by company, I mean a warm squealing bitch underneath me, giving me exactly what I want. Come on over and I promise I'll make you regret it later,' she growls with a big wink at you. 'I have a little shack set up nearby. Just come over anytime you want to get treated like the fucktoy that you are[if the player is submissive]. You seem like the type that needs a good, rough mistress[end if].' And with that, she just turns and disappears, leaving you slightly baffled and curious... but also very much wanting to see just what she has in store for you!";
	say "     Hyena Shack is now known.";
	now HP of Hadiya is 1;
	now Hyena Shack is known;
	now Annoyed Hyena is resolved;


Section 2 - Hyena Shack

Hyena Shack is a room. It is fasttravel. It is private.

The description of Hyena Shack is "[hyenashackdesc]".

to say hyenashackdesc:
	if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63):
		say "     A small looking wooden shack that she apparently built for herself. It's good enough to keep her out of the cold, and the hyena scent radiating strongly from it seems to keep out anyone that doesn't want to regret their intrusion. She's got quite a bit of stolen furniture though, as it's not like many people around are going to be objecting to it. And of course, Hadiya herself is never far to be found, usually fixing something inside the shack that has broken or just reclining and getting ready for her prey. Currently she's just reclining on a large sofa, sprawled out and looking very lazy as usual. She beckons you closer, seeing if you're dumb enough to actually do so.";
	else:
		say "     There's little of interest left here at Hadiya's old shack now that she's left. It seems like some of the junk she'd left behind has already been swiped, though the more ragged among her furniture still remains. There's lingering traces of her scent still here, though the stench of the junkyard's gradually taking over.";

the scent of Hyena Shack is "[if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63)]This places smells quite strongly of hyena herm and male sex[else]There's lingering traces of Hadiya's scent still here, though the stench of the junkyard's gradually taking over[end if].".


Section 3 - Hadiya

Hadiya is a person. Hadiya is in Hyena Shack.
The description of Hadiya is "[hadiyadesc]".
The conversation of Hadiya is { "Bend over!" }.
the scent of Hadiya is "Hadiya smells like a strong, dominant hyena herm.".
The fuckscene of Hadiya is "[sexwithHadiya]".
the icon of Hadiya is usually Figure of Hadiya_0_icon.
hgsqc is a number that varies.

to say hadiyadesc:
	if debugactive is 1:
		say "DEBUG (Hadiya) -> HP: [HP of Hadiya], hadiyafucked: [hadiyafucked], lastfuck: [lastfuck of Hadiya], Hyena Gang ref: [if hadiyahyg is true]Y[else]N[end if] <- DEBUG[line break]";
	if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63):
		say "     A tall, obviously intimidating hyena. The sharp, predatory teeth as well as the oversized tongue hanging out of her muzzle doesn't exactly give her the most pleasant looks, but her distinctive spotted red fur helps her stand out from the other hyenas that you've met in the past. Her shaggy fur about as well groomed as you can expect it to be in a situation like this. Just reclining against one of benches in her home and giving the intruder a curious look. She towers over you, and by the sharp claws and various weapons, knives, and other objects on her belt she definitely could give you a hard time if she wanted to. Though for now, it doesn't seem like she's in any hurry to actually use any of them.";
	else:
		say "     Hadiya is a tall, obviously intimidating hyena. The sharp, predatory teeth as well as the oversized tongue hanging out of her muzzle doesn't exactly give her the most pleasant looks, but her distinctive spotted red fur helps her stand out from the other hyenas that you've met in the past. Her shaggy fur is a little better groomed than before and she has even managed to clean it up a little, probably making Gobby do it for her. Despite living now in the relative safety of the library, she still carries her various weapons, knives and other objects on her belt, showing she's not to be messed with. She does seem a little more relaxed though, preferring to spend her time [one of]idly plinking away at her guitar[or]getting her goblin servant to brush her knotted fur[or]molesting her goblin plaything[or]chewing on a large bone[or]leaning back in a chair with her feet up[at random] at the moment.";

instead of conversing Hadiya:
	if debugactive is 1:
		say "DEBUG (Hadiya) -> HP: [HP of Hadiya], hadiyafucked: [hadiyafucked], lastfuck: [lastfuck of Hadiya], Hyena Gang ref: [if hadiyahyg is true]Y[else]N[end if] <- DEBUG[line break]";
	if HP of Hadiya is 0 or HP of Hadiya is 1:
		say "'So you actually came? [if lastfuck of hadiya - turns < 16]That didn't take long[else]It's about time you got your ass over here[end if]. How about you come on over and we can talk about what pops up?,' she adds with a grin and a rough laugh.";
		now HP of Hadiya is 2;
	else if HP of Hadiya is 13 or HP of Hadiya is 63:
		say "     'This place isn't half-bad,' Hadiya says, putting her feet up and stretching her furry arms. 'Sure beats living in a dump. I did prefer the privacy though, so I think I'll stick to staying up here. And that way I can practice my thrashing in piece,' she adds, running her claws across the strings of her guitar[if findwires is 2 and fixedgens is 2], causing it to wail from the amp she's hooked up[else], causing the electric guitar to give a muted wail[end if]. She curls the lip of her muzzle up a little. 'Damn. It needs some tuning. Gimme a sec. Gobby, come here and rub my paws while I take care of this,' she snaps at the little guy. He eeps and hops to it.";
		increase HP of Hadiya by 1;
	else if HP of Hadiya is 2 or HP of Hadiya is 3:
		say "     [one of]'Why am I even bothering to let you come around if you're not going to bend over for it?'[or]'This pussy and cunt of mine feel nice,' she says, almost teasing you with her touches to them, 'but this new cock of mine is so much better.'[or]'Why don't you be a good fucktoy for me and bend over and take it? I know it's what you've come here for. I might even give it to you, if I think you deserve it,' she says with a lecherous grin.[or]'You need a good dose of hyena in you, don't you, bitch?' she asks, rubbing her crotch before flopping back onto a padded chair, laughing.[or]She pulls out a bottle of liquor from under a chair and slams down half of it with a satisfied 'Ahhh.'[or]'Turn around and let me see that bitch ass of yours.'[at random]";
	else if hyg is 4 and a random chance of 1 in 3 succeeds and hadiyahyg is false:
		say "     'I hear you've been running around with that mangy hyena gang. I don't appreciate my fucktoy running around with the likes of them[if matriarchowned is 1]. And besides, what would they think if they knew their precious Matriarch was sneaking off to get fucked in the ass like the needy bitch she is,' she says with a chuckle. 'Speaking of, I think you need another reminder of just why I'm more than enough hyena for you,' she adds, pushing you down[else]. I should be more than enough to keep even a slutty bitch like you satisfied,' she adds, pushing you down[end if].";
		now hadiyahyg is true;
	else if ( HP of Hadiya is 7 or HP of Hadiya is 57 ) and guy is not banned:
		say "     'Hey, butt-boy! I've got a job for you. You've probably been wondering why I'm living here. Thing is, I'm trying to find my guitar. It was really bitchin['] - an all black flying-V with a flaming skull on it. My last boyfriend didn't like my playing and threw it out with a bunch of other junk... so I threw the dumb bitch out. I was so pissed,' she growls. 'Now, I've been looking all over the junkyard for it, but it hasn't turned up yet. It's been taking so long that I've been able to build this shack for myself with other stuff I've found. I want you to keep an eye out for it,' she says, giving your butt a firm squeeze.";
		increase HP of Hadiya by 1;
		now Goblin Thief is unresolved;
	else if ( HP of Hadiya > 7 and HP of Hadiya < 13 ) or ( HP of Hadiya > 57 and HP of Hadiya < 63 ) and a random chance of 2 in 5 succeeds:
		say "     '[one of]Have you found my guitar yet?'[or]Don't forget about my guitar.'[or]I've been all over this place looking for my guitar. Some [bold type]thief[roman type] must've swiped it.'[or]I found the rest of the junk that was thrown out, but my guitar wasn't there. Some [bold type]thief[roman type] must've swiped it.'[or]Those goblins have tunnels all through the junk piles. Dirty little thieves. Try finding a ['][bold type]goblin thief[roman type]['] and see if one of them has stashed it somewhere.'[in random order]";
	else if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63 ):
		say "     [one of][if lastfuck of hadiya - turns < 4]'Why are you bothering to stick around when I'm already done with you for now?'[else if lastfuck of hadiya - turns < 12]'How about you come back later and I'll give you what I know you need,' she rumbles, rubbing her crotch.[else]'How about you bring that sexy ass of yours over here and maybe I'll give you what I know you need,' she rumbles, rubbing her crotch.[end if][or]'This pussy and cunt of mine feel nice,' she says, almost teasing you with her touches to them, 'but this new cock of mine is so much better.'[or]'You're turning out to be a fine little fucktoy, aren't you? Such a good slut.'[or]'You need a good dose of hyena in you, don't you, bitch?' she asks, rubbing her crotch before flopping back onto a padded chair, laughing.[or]She pulls out a bottle of liquor from under a chair and slams down half of it with a satisfied 'Ahhh.'[or]'Turn around and let me see that bitch ass of yours.'[at random]";
	else:
		say "     [one of][if lastfuck of hadiya - turns < 2]'Why are you bothering to stick around when I'm already done with you for now?'[else if lastfuck of hadiya - turns < 6]'How about you come back later and I'll give you what I know you need,' she rumbles, rubbing her crotch.[else]'How about you bring that sexy ass of yours over here and maybe I'll give you what I know you need,' she rumbles, rubbing her crotch.[end if][or]'This pussy and cunt of mine feel nice,' she says, almost teasing you with her touches to them, 'but this new cock of mine is so much better.'[or]'You're turning out to be a fine little fucktoy, aren't you? Such a good slut.'[or]'You need a good dose of hyena in you, don't you, bitch?' she asks, rubbing her crotch before flopping back onto a padded chair, laughing.[or]She pulls out a bottle of liquor from under a chair and slams down half of it with a satisfied 'Ahhh.'[or]'Turn around and let me see that bitch ass of yours.'[or]Hadiya picks away at her guitar for a bit, playing it tunelessly[if findwires is 2 and fixedgens is 2] with the power off[end if].[or]You try to chat with Hadiya for a bit, but she's not really paying attention to you. She's more interested in having her goblin plaything lick her sheath and balls.[or]'This place sure beats living in a dump. I knew you'd be good for something,' she laughs.[at random]";


Section 4 - Sex with Hadiya

hadiyafucked is a number that varies. hadiyafucked is usually 0.
hadiyahyg is a truth state that varies. hadiyahyg is normally false.

to say sexwithHadiya:
	setmonster "Herm Hyena";
	if debugactive is 1:
		say "DEBUG (Hadiya) -> HP: [HP of Hadiya], hadiyafucked: [hadiyafucked], lastfuck: [lastfuck of Hadiya], Hyena Gang ref: [if hadiyahyg is true]Y[else]N[end if] <- DEBUG[line break]";
	if ( HP of Hadiya >= 13 and HP of Hadiya < 50) or HP of Hadiya >= 63:
		say "[bracket]***Revision of Hadiya's sex scenes is forthcoming. Until then, there may be some material relating to the old location. - The Mgmt[close bracket][line break]";
	if HP of Hadiya is 0 or HP of Hadiya is 1:
		say "Why don't you see what she has to say to you first?";
	else if HP of Hadiya is 13 or HP of Hadiya is 63:
		say "You should probably talk to her first to see how she's settling in.";
	else if lastfuck of Hadiya - turns < 12 and ( HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63 ) ):
		say "She just grins at you. 'Eager to be fucked more, are you? Too bad, I'm busy now. Come back later.'";
	else if lastfuck of Hadiya - turns < 6:
		say "She just grins at you. 'Eager to be fucked more, are you? Too bad, I'm busy now. Come back later.'";
	else if player is not male:
		say "     'Yeah, not really interested in you. I'm more into the boys if you know what I mean. Though I can take them in between just as well. Grow some parts and we'll talk.'";
	else if ( HP of Hadiya >= 14 and HP of Hadiya < 50 ) or ( HP of Hadiya >= 64 and HP of Hadiya < 100 ) and a random chance of 3 in 10 succeeds:
		say "[hadiya_gobby_3somes]";
	else if HP of Hadiya >= 6 and a random chance of 2 in 5 succeeds:
		say "     You approach Hadiya again, finding yourself needing more of her rough attention to satisfy you. She grins and spreads her arms, as if welcoming you for a hug and kiss. But as you come into her arms, she locks her jaws around your throat and grips you tightly, dropping you to the floor beside her plush chair. Her paws grab your ass roughly, claws digging into you as she bares your bottom. Holding it up, she starts grinding her shaft against it, spurting precum across it, tantalizing your asshole with gooey pre and brushes of her throbbing maleness.";
		WaitLineBreak;
		say "     You moan in pleasure, growing more and more excited, but soon frustrated as well, for she makes no attempt to penetrate her fucktoy. With her jaws still around your neck, you moan softly, a weak 'Please...' With that, she releases your throat and licks across it slowly. 'Mmm... beg for it. Beg your mistress to fuck you, to pound her cock into you, to use you like the horny bitch you are,' she rumbles. Another lick and another grind across your rear sends shivers down your spine. Soon enough, you're begging her to take you rough and hard. She laughs at this, but finally gives you what you need, driving her pulsing rod into you, cramming it into your [bodytype of player] body.";
		WaitLineBreak;
		say "     Your asshole is pried open roughly by the hyena's cock, spread and forced to take her throbbing meat. After all the teasing, or perhaps you're just starting to need it rough, this feels wonderful, filling a vacancy in you that only your hyena mistress can fill. When her jaws are back around your throat, she starts pounding away at you, your body bent beneath her as she tears into you with her pointed, animal cock and pressing you downwards with each slamming thrust. Your cock dribbles and drools, trapped between your groin and your mistress's furry belly - so very hard. Her hips slam into yours, her cock bruising your prostate from how hard she's slamming into you, making you whimper and moan, in ecstasy despite (or perhaps even because of ) the pain.";
		WaitLineBreak;
		if HP of Hadiya is 6 and player is female and "One Way" is not listed in feats of player and "Herm Preferred" is not listed in feats of player and "Female Preferred" is not listed in feats of player and "Always A Pussy" is not listed in feats of player:
			say "     After pounding away at you in this position for a long, long time, she flips you over, putting you on all fours and mounting you like an animal. You grind your ass back against her, sore and tired, but still needing that hot, gooey reward inside you. As she's sinking her shaft into you, her paw strays to your pussy, completely forgotten in the excitement, and brushes over it lightly. 'Here you are, such a needy bitch taking it up the ass. You don't need this pussy at all, do you? When you get fucked, you just want it in your ass, so it's just getting in the way. Your mistress doesn't want it, so you don't need it, do you?' she rumbles in your ear, moving her paw to play with your cock and your balls.";
			say "     [bold type] Do you agree with your mistress, no longer wanting and needing your pussy?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				LineBreak;
				say "     Hadiya laughs as you admit that getting it in the ass is all you really need and plows into you hard and deep, grinding her knot against your pucker. 'That's my good slut, knows what's best for him - whatever Mistress wants.' You moan and nod, pressing back against her knot as your anus spreads, letting it pop into you, tying you to her. It pulses and throbs inside you as she pumps your cock all the faster. 'Cum for me, you bitch. Show me how much you love it.' You moan happily, finally having her permission to cum and blasting your hot seed across the floor after holding back for so long. With your ass clenching and milking around her cock, she cums soon after, giving you a hot, thick rush of hyena seed that fills your bowels and makes you cum all the more. You are both left panting and leaking as the last of your seed dribbles out. When her knot eventually goes down, she pulls free, pushes you down into the mess of your cum on the floor and flops back into her chair, not bothering to pull up her pants. After such a long, fulfilling, aching pounding, your ass is deliciously sore and you're too weak to get up for some time. Eventually you slink off, making a show of your soreness that has your mistress grinning even as your pussy shrinks down a little.[mimpregchance]";
				decrease cunt length of player by 2;
				decrease cunt width of player by 1;
				if cunt length of player <= 0 or cunt width of player <= 0:
					now cunt length of player is 0;
					now cunt width of player is 0;
					now cunts of player is 0;
					say "     With a wet slurp that your mistress finds so satisfying, your pussy shrinks away completely and closes up, leaving you the male bitch she so desires.";
				now HP of Hadiya is 57;
			else:
				LineBreak;
				say "     Hadiya growls angrily as you disagree, biting down hard onto your shoulder and squeezing your cock painfully. Bruising your shoulder and even drawing blood, she pounds at you as hard as she's ever done. This bashes her knot against your anus over and over again, forcing it open painfully fast and locking you to her. The pain and rough penetration hurt, but as she cums wildly in anger, you can't help but moan, your body almost needing her seed in you after such a long, rough fucking. Having held back so long, you finally can cum and do so very hard, painting the floor beneath you with your seed. The moment your mistress is done cumming, she's standing up, pushing at your ass with her paws. Your asshole, unwilling to give up her knot at first, is forced open painfully again and her cum spills out when she gets free. You tumble to the floor, landing in the mess of your own seed. You lie there while the red hyena flops into her chair angrily, not bothering to pull up her pants.[mimpregchance]";
				now HP of Hadiya is 7;
		else:
			say "     After pounding away at you in this position for a long, long time, she flips you over, putting you on all fours and mounting you like an animal. You grind your ass back against her, sore and tired, but still needing that hot, gooey reward inside you. As she's sinking her shaft into you, her jaws go to your shoulder, gripping it tight so she can ram back into you. Her paws grab your cock and balls, stroking over them as she seeks to tie with you. You moan as her strong jaws, designed of crushing bone, squeeze down on your shoulder. It aches and bruises, but no more, showing you how much control your sexy mistress has - unlike you, her begging, needy bitch.";
			WaitLineBreak;
			say "     The red-furred hyena plows into you hard and deep, grinding her knot against your pucker and you press back against it as your anus spreads. It pops into you, tying you to her. Her red cock pulses and throbs inside you as she pumps your cock all the faster. 'Cum for me, you bitch. Show me how much you love it.' You moan happily, finally having her permission to cum and blasting your hot seed across the floor after holding back for so long. With your ass clenching and milking around her cock, she cums soon after, giving you a hot, thick rush of hyena seed that fills your bowels and makes you cum all the more. You are both left panting and leaking as the last of your seed dribbles out. When her knot eventually goes down, she pulls free, pushes you down into the mess of your cum on the floor. Grabbing your head, she has you lick her clean before flopping back into her chair, not bothering to pull up her pants. After such a long, fulfilling, aching pounding, your ass is deliciously sore and you're too weak to get up for some time. Eventually you slink off, making a show of your soreness that has your mistress grinning.[mimpregchance]";
			if HP of Hadiya is 6 and ( "One Way" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Female Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player), now HP of Hadiya is 7; [skip query]
			if HP of Hadiya is 6 and ( "Male Preferred" is listed in feats of player or "Single Sexed" is listed in feats of player ), now HP of Hadiya is 57; [skip query]
			if HP of Hadiya is 6:
				if hgsqc < 2:
					increase hgsqc by 1;
				else:
					now HP of Hadiya is 57; [repeated male results in male target]
		hadiyahyenaify;
		now lastfuck of Hadiya is turns;
	else if HP of Hadiya >= 4 and a random chance of 2 in 5 succeeds:
		say "     'Mmm... Mistress is going to play with her sexy toy again,' she rumbles, pushing you down over [if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63 )]a barrel in the yard[else]the footrest she was using[end if]. As you yelp, she wraps her paw over your mouth, keeping it closed. Pinning you down with her [if scalevalue of player < 4]larger body[else]strong body[end if], she bares your ass and rubs her cock against it. 'You don't have any objections, do you?' she asks, getting her meaty missile lined up. You try to say something, but it comes out as a mumble as she keeps you muzzled.";
		WaitLineBreak;
		say "     'I didn't think so. Not from a needy bitch like you,' she laughs, thrusting hard into you. Your anus is once again spread open by the horny hyena as she drives into you with little consideration for warming you up. As her hand moves away, all you can do is cry out at the rough intrusion. By the time her paw makes it to your cock moments later, you're already hard and leaking with arousal. Clearly taking this as a sign of consent, she starts pounding away at you, sliding her pointed red shaft in and out of you.";
		WaitLineBreak;
		say "     It seems this time your hyena mistress is willing to be more generous with you, playing with your cock and kneading your balls, all rather roughly, but even that's becoming a turn on. It shows that you're hers, a plaything for her to grope and fondle as she drives into you again and again, one that enjoys her use and abuse just to get another dose of thick, creamy hyena cum. She bites at your left shoulder, bruising your flesh and kneading at it with her sharp teeth. As before, the added sensation skirts the edge between pain and pleasure, making everything more intense and arousing.";
		WaitLineBreak;
		if HP of Hadiya is 4:
			say "     This rough play of hers continues until you cum with a loud, long moan, resulting in the hyena thrusting particularly hard into your clenching, milking asshole. 'Did I say you could cum yet, bitch?' she rumbles, pounding you violently, setting the barrel to rocking on its side as her knot slams against your back door again and again. 'You don't get to cum until I say so or I do. Understand,' she growls, slapping your ass. As she keeps it up, your poor, abused pucker is forced open to take her knot, letting the wildwoman tie with you. Grabbing your shoulders, making the left one ache all the more as she cums, as you, now oversensitive after your climax, feel every pulse and throb of the meaty knot inside you as she pumps her hot load into you. She flops atop you, panting heavily. She reaches for your nuts, giving them a squeeze, a warning to wait next time. When her knot goes down, she pulls out roughly and leaves you flopped over the barrel, ass showing and cum leaking from your stretched hole.[mimpregchance]";
			now HP of Hadiya is 5;
		else:
			if a random chance of 1 in 2 succeeds:
				say "     This rough play of hers continues, but you know better this time and do your best to hold back[if a random chance of 1 in 3 succeeds or the player is submissive]. You moan for her to let you cum, which makes her laugh[else]. You whimper and bite your lip, trying to hold it back until she's done[end if]. As she's obviously very pent up, her thrusting intensifies and the [if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63)]barrel starts to rock a little[else]footrest starts to tip over[end if]. Soon she's ready and drives into you hard, your pucker giving way and letting the wildwoman tie with you. She switches to biting your other shoulder and pumps at your cock all the harder, making you cum across the [if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63)]wooden barrel[else]padded footrest[end if] as she pumps her hot load into you, claiming your ass once again. The pleasure you feel after all the rough pounding is intense - the throbbing knot, the spurting shaft, the thick, flowing semen. Once drained, she flops down overtop of you and runs her tongue across your cheek in a slow lick. 'Much better, little bitch,' the red-furred hyena says. You can't help but smile at her praise, glad to have pleased your mistress.[mimpregchance]";
			else:
				say "     This rough play of hers continues, but you know better this time and do your best to hold back. You [if a random chance of 1 in 3 succeeds or the player is submissive]moan for her to let you cum, which makes her laugh[else]whimper and bite your lip, trying to hold it back until she's done[end if]. She continues to pound away at you steadily, her precum having make your hole slick and juicy for her to fuck. Just before you think you can't take any more, she pulls out suddenly and takes her meat in her paws. She strokes her pulsing shaft and kneads her heavy balls, growling as she cums hard, painting your ass with her seed. 'Mmm... that's my bitch, messy and sticky with my seed,' she moans between gritted teeth even as she continues to cum, draining those large balls onto you. Having the scent of her on you is too much to take and you slide off the [if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63)]barrel[else]footrest[end if], stroking yourself until you cum all over yourself while she watches and laughs at her horny plaything.";
				if HP of Hadiya is 5, now HP of Hadiya is 6;
		hadiyahyenaify;
		now lastfuck of Hadiya is turns;
	else if a random chance of 2 in 5 succeeds: [She's thirsty]
		say "     'I'm not really up for anything right about now... though I might be a little... thirsty.' She licks her lips suggestively, showing off those feral teeth of hers, making you have very mixed feelings about the whole thing, but the raging hardness that soon greets her oversized paw helps tell her exactly what you think about the situation. 'That's a good boy. Give me what I want and you probably won't get hurt.'";
		say "     With those reassuring words, the hyena just shoves you down on the nearest pile of clothes and pins you there with her [if scalevalue of player < 4]greater[else]not inconsiderable[end if] weight, not exactly helping your arousal anyway. Just tearing your pants off with a single swipe of her claws, reducing the crotch to shreds and allowing your straining shaft to be released. Bobbing in the air, she quickly wraps her paw around the very base of it, stroking... squeezing it. Bumping her nose against the very tip to see just what your scent is. 'Quite the delicious looking cock you've got here. It would be a shame if anything happened to it, now wouldn't it?' she asks with an evil chuckle.";
		WaitLineBreak;
		say "     Wrapping her lips around the very tip of it, she takes it into the heat of her maw, starting to suckle on it greedily. Applying a firm suction, inch after inch just disappearing into her, though thankfully she doesn't seem to be using her teeth just yet. The large tongue lapping along the underside, getting a better taste of it even as you moan and try to resist the urge to thrust into her maw, as you doubt she would take kindly to such a thing.";
		say "     Grazing her teeth lightly against either side of your shaft, you can't help but whimper... but it just seems to be her toying with her prey more than anything else. Bobbing her head slowly, she relaxes her grip on the shaft to replace her teeth with the warm, welcoming suction. Wet sounds coming from her lips as she starts to work on getting the drink that she desires. Squeezing her lips right back around the shaft as she pulls back until just the head remains. Her tongue probes at your slit to sample some of the droplets of stickiness that you're already beginning to produce.";
		WaitLineBreak;
		say "     Suckling firmly on the head, she urges you to produce more, which you happily do. Already moaning in arousal, instinctively reaching down to cup the back of her head only to have your hand knocked away angrily, and the tip of your shaft nipped in the process. A warning about exactly who is in control in this situation... though soon enough she relaxes and gets back to work. Her movements are quick and needy, not letting you savor it at all, just trying to get her sticky gift as soon as she possibly can.";
		say "     Something that you're happy to provide, your hips involuntarily thrusting upwards to feed her more of your throbbing need. Something that she doesn't seem to mind, permitting you to do this, just letting out a warning growl in the process. The slick movements of her tongue coming faster and fast, until it's simply too much for you to take. With a strangled warning you erupt suddenly inside her waiting muzzle. Something that she gulps down... not letting a single drop leak out, just making it all disappear into her furry maw.";
		say "     Satisfied for the moment, she finally pulls back, grinning back up into your eyes. 'Not bad, I'll definitely use you more later...'";
		if HP of Hadiya is 2, now HP of Hadiya is 3;
		hadiyahyenaify;
		now lastfuck of Hadiya is turns;
	else:
		say "     'There you are, now... it's time for you to help serve your Mistress.' The obviously worked up hyena doesn't waste any time with disrobing. Unbuttoning her pants and tugging them down just enough that you can see the thick, red-fleshed and canine cock already pushing it's way out of her sheath. Her heavy, furry orbs obviously quite full and needing someone to help empty them. '[if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63)]It's been quite a long time since I've had regular company. I might need you around quite a bit after this[else]Being here certainly has its advantages. It's nice to have my slutty bitch handy when I need a change of pace[end if].' She lets out a growl, sinking her paw down to wrap around the emerging tip, stroking it steadily while you watch, getting herself nice and firm. 'Now, I'm going to get myself off, but I wouldn't want to do anything without your full consent,' she taunts, obviously teasing you.";
		say "     [bold type] 'So, want to get fucked?' she asks bluntly.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			LineBreak;
			say "     'That's exactly what I was hoping you'd say.' Immediately, she grabs you and forces your body up against the wall[if HP of Hadiya < 13 or ( HP of Hadiya >= 50 and HP of Hadiya < 63)] of her shack[end if]. Just ramming it there, using her [if scalevalue of player < 4]greater weight[else]not inconsiderable weight[end if] to keep you pinned just in case you change your mind. Soon enough, you start to feel the warm bulge of her arousal grinding up against your rear, pushing and kneading against it while using the pressure to help get her aroused and ready. 'Not much one for foreplay, but I know what I want. And what I want happens to be that tight ass of yours. I'm going to make you my personal little bitch. I want you to come crawling back every time you feel the urge to get fucked. To crave me pounding that tight little rump of yours. To make it fit me like a glove...'";
			WaitLineBreak;
			say "     'Soon enough she tires of teasing you, and prods the thick head of her cock right up against your pucker. Far too big for your body, she doesn't really seem to care much about that. Not even bothering to use any kind of lubrication. Just starting to thrust, applying a steady pressure up against the pucker while she keeps you pinned against the wall, unable to get away from her. She just takes you. The steady pressure against your entrance ever so slowly forcing it to stretch, just barely managing to wedge her cockhead inside you and pierce your body with the pulsing heat of her hyena shaft. Once the initial penetration is done, she quickly takes advantage of it - the rest of her cock just ramming it's way inside your body with a single feral thrust, the loud slap of her furry balls against your rear letting you know that she's fully inside. The pain from her careless entry is unbelievable, like someone just shoved their arm inside of you without warning. Your body screams with pain, aching from the sheer amount that it's been forced to stretch to take the horny hyena woman but unable to push her out no matter how hard you clench.'";
			WaitLineBreak;
			say "     She groans in pleasure. 'You have no idea how badly I've been needing a good fuck,' she whispers into your ear just before she sinks her teeth into it. She bites down ferally while starting to roll her hips, adding some more stimulation to her eager lust. Though it's not long at all before she starts to tug back, forcing her cock right back out of your resisting body only to swiftly reverse her course and just plunge right back inside. Making your body stretch to take her once again, she resumes her lusty movements, starting to fuck you right up against the wall. Each thrust just ramming your chest into it, your own stiff hardness pinned up against the wall, aching with need as she completely ignores your own pleasure in favor of her own. But despite the rough treatment... or maybe because of it, you can't help but feel incredibly aroused. The pain slowly fades to a dull ache after long minutes of her pounding. And eventually you even start to enjoy yourself, though the hyena doesn't seem to care the slightest bit about all that.";
			WaitLineBreak;
			say "     She obviously is very pent up and wants to make sure that you'll be remembering her for a good long time after she's done with you. The powerful thrusts of her hips just pounding your body against the wall, plunging the full length of her cock inside you, making you moan in obvious arousal at the feeling of warmth and fullness deep inside your bowels. The pain mixes with pleasure, but you can only hold on and take it, helpless underneath the dominant hyena and her desires. Her lust quickly rises to a fever pitch, and she finally unloads inside you. Letting out a muffled cackle, she just hilts herself one last time. Her cock pulses, firing hot sticky ropes of her seed deep inside you, staining the inner walls with her sticky hot seed.[mimpregchance]";
			say "     Yanking her cock out, she gives your rump a firm slap. 'Pretty good, come back when I'm ready and you can help me out again,' she snarls, obviously done with you for now.";
			if HP of Hadiya < 4:
				now the vmusings of Hadiya is "[hadiyamusing]";
				now HP of Hadiya is 4;
		else:
			LineBreak;
			say "     After hearing that, she doesn't bother to waste time. 'Guess you'll just have to use your other end then.' Placing one of her oversized paws on your shoulder and applying some of her natural hyena strength, she forces you down onto your knees in front of her. Your view is completely dominated by the sight of the swollen red flesh of her aroused length. The scent of her feminine musk almost overpowering, you simply can't help yourself, beginning to nuzzle against the very tip. Pressing your lips against the tapering tip to get a direct taste of her shaft, something that makes the hyena let out a satisfied little cackle. 'That's a good bitch, keep it up.'";
			WaitLineBreak;
			say "     Finally unable to take it anymore, you quickly wrap your lips around the welcoming heat of her shaft, taking it into your lips and starting to suckle on it like a good bitch. Tightening your lips around it, you start to apply a firm pressure to the shaft, tongue lapping at the slit to better serve her. Of course, being a hyena, she isn't quite satisfied with this for very long. Letting out a short little grunt, she wraps her other paw around the back of your head and starts to push it, forcing you to take more and more of her shaft, disappearing into your jaw, stretching it out and causing a dull ache from the sheer amount of girlcock that she's feeding you.";
			WaitLineBreak;
			say "     'There we are, not bad. You must have practiced on some of my sisters,' she taunts above you, hips starting to move, not satisfied until she completely wedges every last inch of her pulsing hyenahood into your waiting maw. Forcing it right down your throat, making you gag. There is little chance to adjust to the sheer size of it while she grinds those musky furry balls of hers right up against your nose, letting you get used to her scent as well as her taste. Finally, she mercifully pulls back, letting you breathe once more.";
			WaitLineBreak;
			say "     Not for long though, as she starts to fuck your face, taking it like just another hole to be pounded for her own pleasure. The pent up hyena giving you little time to actually taste her as she works her way towards her climax. The base of her cock swells up in the telltale signs of her knot, engorged muscle bumping up against your face again and again. It is far too big to actually fit inside you, though she quite enjoys the stimulation anyway. Long past the point of no return, it only takes her a few more moments of this to reach her climax. With a sharp growl, she sinks her claws into your shoulders for support. The shaft jumps and pulses deep inside your throat, firing her hot sticky gift right down into your stomach, giving you no chance to actually taste her. Warming your belly, the sheer amount of her seed just continues to flow until she suddenly dismounts, yanking her cock back, popping it free of your gasping lips, satisfied for the moment.";
			WaitLineBreak;
			say "     Wiping her still hard cock clean on your lips, she smears it with her own unique scent, just grinning down at her prey as she does. 'Not bad. Now get out of here, I'll use you again once I'm recovered,' she grumbles.";
			if HP of Hadiya is 2, now HP of Hadiya is 3;
		hadiyahyenaify;
		now lastfuck of Hadiya is turns;


to say hadiya_gobby_3somes:
	say "     'Mmm... get over here Gobby. I want the two of you going to town on this,' she says, giving her heavy cock a meaningful stroke. As her goblin servant comes over, she pushes you down to your knees and slaps her manmeat across your face. You give a soft whimper, mostly for show, and obediently start licking at the herm's drippy shaft. With the goblin at the other side, the two of you start slathering your tongues across the hyena dick.";
	say "     Hadiya releases an excited growl and puts a paw on each of your heads, guiding you both towards the tip of her cock. Meeting there, the two of you kiss. She gives a laugh and presses your faces together all the more. 'That's so sweet. It's good to see my sluts getting along so well,' she says, grinding her cock against your faces while your tongues slide against one another's. The two of you kiss for about half a minute before breaking it off before the aggressive hyena gets demanding for attention to her penis again. Besides, the kiss has made you even more eager to get at that cock.";
	say "     Gobby lets you go at it first, ducking a little lower so he can slather attention upon the herm's hefty ballsack. You take the opportunity to take Hadiya's erection into your mouth. You suck down on her throbbing member while your tongue slides across it. That red pillar twitches and throbs in your mouth, drooling pre down your throat as you suck on it, the flow encouraged by the goblin's determined licking across her sac and swelling knot.";
	say "     Eventually she pushes you back, letting the goblin have a turn sucking her while you swap to her scrotum. Gobby struggles a bit with taking all of the hyena's cock into his maw, but he does his best for his beastly mistress, though having her paw forcing him onto her prick certainly accounts for how much of it's been shoved in. Even with the thorough cleaning the goblin's tongue gave them, her arousing scent is strong and musky off of her balls. The hyena's scent fills your senses as you press up against that furry sac and get to licking.";
	say "     You and the goblin swap positions like this a few times, taking turns sucking her cock and occasionally both licking it together. The flow of precum from it picks up as you pleasure the hyena and eventually she climaxes with a lustful growl";
	if a random chance of 1 in 3 succeeds:
		say " while you've got your lips wrapped around it. You're fed shot after shot of her sticky seed, forced to swallow it down as she keeps a tight grip on you as she cums. And when she does release you, Gobby's there to go for another kiss, his tongue delving into your mouth after the remaining traces of his mistress's load before finally breaking it off.";
	else if a random chance of 1 in 2 succeeds:
		say " while Gobby's got it stuffed into his mouth. He releases a gurgling moan and does his best to swallow down the hyena's large load. And you can tell it's large from how those big balls of hers are pulsing over and over again, sending numerous blasts into her servant's belly. By the time she's done and lets him go, he's full with her seed and collapses back onto the floor with a soft moan. His crotch bulges quite predominantly as well.";
	else:
		say ". Both you and Gobby happen to be licking across her glans at the time and so you both get splattered with sticky ropes of her semen. Catching what you can on your tongues and in your mouths, you're both still left messy and sticky by the time she's done. The two of you kiss again and lick up as much of the excess cum as you can get from the other's face before finally parting.";
	increase lastfuck of Gobby by 2;
	hadiyahyenaify;
	now lastfuck of Hadiya is turns;


Section 5 - Hadiya's Guitar

Goblin Thief is a situation. Goblin Thief is resolved.
The sarea of Goblin Thief is "Junkyard".

Instead of resolving Goblin Thief:
	if debugactive is 1:
		say "DEBUG (Hadiya) -> HP: [HP of Hadiya], hadiyafucked: [hadiyafucked], lastfuck: [lastfuck of Hadiya], Hyena Gang ref: [if hadiyahyg is true]Y[else]N[end if] <- DEBUG[line break]";
		say "DEBUG (Gobby) -> HP: [HP of Gobby], lastfuck: [lastfuck of Gobby] <- DEBUG[line break]";
	if HP of Hadiya is 8 or HP of Hadiya is 58:
		say "     While wandering among the junk piles, you round one heap to come across a goblin from behind. As you attempt to slip away unnoticed, you hear him grumbling aloud to himself.";
		say "     '...upid King. Taking all the good stuff. It's not fair! Gobby done good. Stole that leather jacket fair and square. First guitar, now leather jacket. Gobby doesn't know how to play, he says. So! Gobby could learn. He's not dumb. Clever goblin. Is not fair!'";
		say "     Hearing this piques your interest and, hopeful that it might be Hadiya's guitar, you reverse direction again. Sneaking up on the grumbling goblin, you grab him from behind and push the dirty creature to the ground. Twisting his arm, you ask him for more info on this guitar.";
		WaitLineBreak;
		say "     'What guitar? Gobby don't know nothing,' he squeals shiftily. It takes a little not-so-gentle persuasion to get him talking, but it doesn't take too long before he gives. 'Okay! Okay! Gobby found a guitar in trash. Shiny and black with cool fire skull on it. But Goblin King took it from Gobby. He takes all the best stuff. Big meanie.'";
		say "     'I've been looking for it. The owner wants it back,' you respond. 'Show me where it is.'";
		say "     He squeals and shakes his head at that. 'No. Can't tell. Secretest of secret goblin tunnels. Too secret. Too dangerous for outsiders... But Gobby could get it for you,' he adds hastily. 'Yeah! Let Gobby go and he'll bring it back for you. Gobby is good thief.'";
		say "     Not falling for such an obvious ploy, you keep a firm grip on him. 'And you'd do this out of the goodness of your heart, little thief? I don't think so,' you growl. 'What if I gave you something in return?'";
		WaitLineBreak;
		say "     It takes a little more coaxing, but the goblin's upset that their king took a leather jacket he'd [']found['] for himself. With the king wearing it now, you know he can't take it back, so you offer him a new one in payment. This clearly piques his interest enough that you can ease your grip and start negotiating the trade.";
		say "     'You give Gobby new jacket. Gobby gets guitar for you,' he says eagerly.";
		say "     You have to shake your head at this. 'No way. You give me the guitar and then you can get your jacket.'";
		say "     'No. You forget. Gobby get jacket or you no get guitar,' he snaps back. 'How does Gobby know you even have jacket for Gobby?'";
		say "     'Fine! I'll bring you a leather jacket. If you like it, you can have it when you bring me the guitar.'";
		say "     'Deal!'";
		say "     And thus with your bargain struck, the two of you go your separate ways for now. Hmmm... where'll you even find a leather jacket small enough to fit a goblin?";
		increase HP of Hadiya by 1;
		now Goblin Thief is resolved;
	else if HP of Hadiya is 9 or HP of Hadiya is 59:
		say "ERROR-Hadiya-[HP of Hadiya]E: You should not be able to get this result. Event should be closed at this time.";
		now Goblin Thief is resolved;
	else if girl's jacket is not owned:
		say "     As you approach the spot where you'd met Gobby, you're about to go there to meet with him when you remember that you dropped that leather jacket he wants somewhere. You'd best go back and get it if you want to make the deal with him.";
	else if (HP of Hadiya is 10 or HP of Hadiya is 60):
		say "     Returning to the spot where you met Gobby the goblin, you need only wait around briefly for him to pop up. 'Ah. You is back. Gobby wasn't sure you would. Have you got it?' he asks eagerly. Pulling out the girl's leather jacket, you do your best to act confident on its value, but it turns out to be unnecessary. He turns out to be quite pleased with it when he pulls it on for a test.";
		say "     'Very nice. New. Still got tags and everything. Pretty colors and fits Gobby very good too,' he says, tugging on the cuffs. 'Other one was so big Gobby could only get his fingertips through.' He zips the jacket up and down several times, perhaps testing it or simply happy he can use his hands in this one. The goblin waves his arms around happily, nimble hands moving wildly as he even does a little spin. The short-cut jacket only covers his upper body, leaving his belly uncovered and showing the ratty shirt beneath it.";
		WaitLineBreak;
		say "     When Gobby stops capering about, he composes himself. 'Gobby guesses this is good enough,' he says, trying to sound serious. 'I is getting the guitar now,' he adds, starting to turn away, but you catch him by the shoulder.";
		say "     'No way! We've got a deal. You give me the guitar and then you get to keep the jacket. Besides,' you add with a tug on his nice, new jacket, 'you don't want the Goblin King seeing this one and taking it as well, now do you?'";
		say "     Gobby hisses in shock at this. 'No-no! You is right. You make good on deal; so does Gobby. You keep pretty jacket safe for Gobby, friend. Gobby be back in a day with guitar.' He takes it off carefully, folds it up and passes it back to you with a smile. You nod to your new [']friend['] and stow the jacket away. After wishing him good luck, you shake and part ways.";
		increase HP of Hadiya by 1;
		now lastfuck of Gobby is turns;
	else if ( HP of Hadiya is 11 or HP of Hadiya is 61 ) and lastfuck of Gobby - turns < 8:
		say "     Passing close to the spot where you met Gobby, you swing over there. You wait for a while to see if he pops up, but then you remember he'd said he'd need a day to get the guitar for you.";
	else if ( HP of Hadiya is 11 or HP of Hadiya is 12 or HP of Hadiya is 61 or HP of Hadiya is 62 ) and lastfuck of Gobby - turns < 12:
		say "     Heading to the mound where you'd met Gobby the goblin, you wait there for him to show. You end up waiting there for a while, but he [if HP of Hadiya is 12 or HP of Hadiya is 62]still [end if]doesn't turn up. He'd said he'd be back in a day with the guitar, but there's no sign of him yet[if HP of Hadiya is 12 or HP of Hadiya is 62]. You're starting to get a little worried. Knowing how much he liked the jacket, you'd almost expected him to be back early rather than be late[end if]. You hope the little guy's okay, but can't really do anything other than check back again later.";
		if HP of Hadiya is 11 or HP of Hadiya is 61, increase HP of Hadiya by 1;
	else if HP of Hadiya is 11 or HP of Hadiya is 12 or HP of Hadiya is 61 or HP of Hadiya is 62:
		say "     Returning to the area of the junkyard where you met Gobby the goblin, you wait there for him to show. You're just about to sit down[if HP of Hadiya is 12 or HP of Hadiya is 62] this time[end if] when he pops up. He looks around furtively before rushing over to you. 'Hisssss. You got jacket? Quick-quick!' he says, making grabby-hands. 'Gobby in trouble. Goblins looking for him. Nearly caught.'";
		say "     Opening up your pack, you start taking out the leather jacket. 'Where's the guitar?' you ask, keeping a firm grip on his reward even as you look around in case a mob of angry goblins are going to appear at any second.";
		WaitLineBreak;
		say "     'Yes-yes! Right here. Hidden good for friend,' he says, going over to one of the nearby junk mounds. He moves a few things and reaches under an overturned bathtub, pulling out the guitar. While it seems to have had a rough life, having lots of nicks and scratches, it does indeed match Hadiya's description.";
		say "     Making the exchange, Gobby nuzzles the leather with a happy sigh before pulling it on hastily. 'Oh, Gobby is in so much trouble. Must run. Must hide. King very upset after he woke up and guitar was gone.' He gives a little giggle. 'King can't hold his liquor and Gobby gave him too many beers. Was easy. But hangover and missing guitar means Goblin King is pissed. Oh, where can Gobby hide?' he bemoans.";
		WaitLineBreak;
		say "     Looking down at the little guy, you can't help but feel a little sorry for the mess you've gotten him into. You know what you should probably do about it, but you put it off for the moment. You instead take him by the arm and lead him back to Hadiya's shack quickly, telling him to join you while you return the guitar.";
		say "     'You really know owner? Gobby thought friend was lying about that part,' he says. 'I is sorry for not believe you. Who is owner?' When you tell him, he gives a nervous squeal and clings a little closer to you. It seems the goblins have run afoul of Hadiya and prefer to steer clear of her.";
		WaitLineBreak;
		move Gobby to Hyena Shack;
		move player to Hyena Shack;
		WaitLineBreak;
		say "     Arriving at the shack with Hadiya's guitar, she takes it happily from you even as she eyes the goblin at your side. 'And is this the little squeaker who stole it,' she growls, leaning in menacingly.";
		say "     Gobby shivers beneath her toothy glare. 'I is f-f-finding it,' he says softly, inching closer to you. 'G-g-g-goblin King took it from me, b-b-but I got it back. Did n-n-n-not know it was y-y-yours. But Gobby is sorry, Goblin King is very upset now. He will make the goblins attack even The-Red-Toothy-Beast to get it back once he finds out you've got it.'";
		WaitLineBreak;
		say "     He shivers a little as Hadiya looks him up and down. The hyena, apparently known as The-Red-Toothy-Beast to the goblins, grabs the little guy and gives a rumbling growl as she pulls him close. 'You're quite the little troublemaker, aren't you? You're going to have to make it up to me for a long, hard time, bitch,' she growls in his pointed ear. 'You're lucky you're kind of cute in that slutty jacket of yours.' She rubs a paw over his belly before slipping it under the leather jacket to tweak a nipple. 'I could eat you right up,' she adds with a nibble along his neck and on his sensitive ear. He shivers, moans and mouths a [']help me['] to you, but you can also see how hard he is from the bulge in his dirty loincloth. Knowing the dominant hyena'll get what she wants in the end and that he'll be safe enough (more or less) in her not-so-tender care, you consider slipping away for now.";
		WaitLineBreak;
		say "     'Hey! Where do you think you're going, bitch? You're the one that roped this little guy into all this. And it's not like I can stay here either if the other goblins are going to be harassing me to get my guitar back. Not that I have any reason to stick around any longer in this hellhole.' She's advanced on you by this point, poking you firmly with a furry finger. 'You're going to take us back to your place now. It'll be nice to get out of here... and I'll be able to show you my appreciation properly,' she adds with a toothy grin[if player is male] and a molesting grope of your ass[end if].";
		say "     For a moment there, it looked like you might have been able to avoid sheltering the goblin thief at the bunker, but instead you've found yourself with two dirty guests now. As her bitch and cock slut, you're in no position to disagree with Hadiya - she'd just fuck you until you gave in anyhow. Well, at least you should be able to enjoy her rough attention more often, if that's what you're in the mood for.";
		WaitLineBreak;
		move Hadiya to Sitting Area;
		move Gobby to Sitting Area;
		move player to Sitting Area;
		WaitLineBreak;
		say "     Arriving at the library, you quickly show the hyena around, the goblin following along with an amp he's been made to carry on his back[if the number of booked people + the number of bunkered people > 0]. After some introductions, kept brief due to the lingering odor of the junkyard on them[else]. After the tour[end if], the red-furred hyena picks a side room on the upstairs level as her living space. Gobby happily drops his burden and the Hadiya tosses down her guitar and the small pack she brought. Aside from some supplies and a dirty sleeping bag, she doesn't have much. The hyena grabs the little guy, pressing his face into her crotch so she might introduce him to his other duties.";
		now the icon of Hadiya is Figure of Hadiya_icon;
		project the Figure of Hadiya_icon;
		if HP of Hadiya is 11 or HP of Hadiya is 12:
			now HP of Hadiya is 13;
		else if HP of Hadiya is 61 or HP of Hadiya is 62:
			now HP of Hadiya is 63;
		now lastfuck of Hadiya is 255;
		now carried of girl's jacket is 0;
		now Goblin Thief is resolved;
		now battleground is "void";
	else:
		say "ERROR-Hadiya-[HP of Hadiya]E: You should not be able to get this result. Event should be closed at this time.";
		now Goblin Thief is resolved;

Section 6 - Gobby

Gobby is a man.
The description of Gobby is "[gobbydesc]".
The conversation of Gobby is { "Yes, O Great-Red-Toothy-Beast!" }.
the scent of Gobby is "Hadiya's scent clings to Gobby.".
The fuckscene of Gobby is "[sexwithGobby]".
the icon of Gobby is Figure of Gobby_icon.

to say gobbydesc:
	if debugactive is 1:
		say "DEBUG (Gobby) -> HP: [HP of Gobby], lastfuck: [lastfuck of Gobby] <- DEBUG[line break]";
	say "     Gobby looks like your typical goblin male - short, green and brown skinned and spindly. What's different about him is his attire. Aside from the girl's leather jacket you found for him, Hadiya's gotten some kids-sized slacks and a [one of]pink[or]heart[or]unicorn[or]girly[or]red[in random order] t-shirt to wear. His face and ears are long and pointed in structure, with slightly pointed teeth in his grinning mouth. While by no means pretty, he does look kind of cute in a strange way now that he's gotten himself all cleaned up and is dressed in his cute outfit. And while Hadiya treats him like her plaything and servant, she's not malicious about it and he seems to be happy enough with the situation as well.";

instead of conversing Gobby:
	if debugactive is 1:
		say "DEBUG (Gobby) -> HP: [HP of Gobby], lastfuck: [lastfuck of Gobby] <- DEBUG[line break]";
	if HP of Gobby is 0:
		say "     Managing to pull Gobby aside while Hadiya's distracted by picking her teeth with a claw, you ask the little guy how he's doing.";
		say "     'Gobby is good, friend. All goblins know to be careful of The-Red-Toothy-Beast, but now she is Gobby's protector. I is happy to serve Mistress Hadiya. And while Gobby is sore,' he says, rubbing his ass a little, 'she is always making sure Gobby is rewarded as well.' He gives a little grin and returns to Hadiya, who slips a paw down the front of his slacks to fondle him.";
		increase HP of Gobby by 1;
	else:
		say "     [one of]'Mistress Hadiya likes Gobby's special jacket.'[or]'Thank you for letting Mistress Hadiya and Gobby stay here.'[or]'Sneaky Gobby is finding foods for Mistress and him to eat. Hadiya says we can't be freeloaders.'[or]'Hadiya-Mistress has said Gobby can [']thank['] friend for helping us whenever you like.'[or]'Gobby is servant to The-Red-Toothy-Beast. I is a lucky goblin.'[in random order]";


Section 7 - Sex with Gobby

to say sexwithGobby:
	if debugactive is 1:
		say "DEBUG (Gobby) -> HP: [HP of Gobby], lastfuck: [lastfuck of Gobby] <- DEBUG[line break]";
	if HP of Gobby is 0:
		say "You should check up on the little guy first.";
	else if player is neuter:
		say "You'll need at least some genitals for the goblin to play with if you're going to lure him away from his mistress for some fun.";
	else if lastfuck of Gobby - turns < 6:
		say "Gobby seems a little preoccupied with his hyena mistress at the moment.";
	else:
		if player is male and HP of Gobby > 1 and lastfuck of Hadiya - turns >= 6 and a random chance of anallevel in 7 succeeds and anallevel > 1:
			say "     Wanting a go at the goblin's ass, you grab the little guy's rear and pull out your cock. He gives a little squeak and squirms, but doesn't pull away. His nimble hands clutch your shaft [if cockname of player is not listed in infections of InternalList] and balls[end if], stroking and teasing to get you fully hard. As he's doing so, you slip those tight pants of his down, baring his bottom.";
			WaitLineBreak;
			say "     'Hey, if you sluts are going to go at it, I want in on this action,' Hadiya growls with a grin on her muzzle. 'Gobby, get over here and put that mouth of yours to work.'";
			say "     'Yes, Oh-Great-Toothy-Beast. Of course, mistress,' he responds obsequiously and hurries over to take her canine shaft in hand. He starts off by licking and kissing at it while fondling her balls.";
			say "     Not having forgotten you, he arches his tight little ass into the air as he plunges his mouth over the dribbly pole. You spread those cheeks of his and grind your [cock size desc of player] shaft between them, drawing [if cock length of player > 20]a nervous whimper[else]a soft moan[end if] from the goblin. After smearing some of your pre over his pucker to help ready it, you get lined up and sink into his [if cock length of player > 20]overly tight[else if cock length of player > 10]tight[else]snug[end if] hole with a satisfied moan. You sink into him slowly at first, letting his small bottom adjust to having you in him.";
			WaitLineBreak;
			say "     As you fuck the little guy, you're treated to the sight of him blowing his mistress. The sight of him licking and sucking on that big red hyena dong that you've done the very same with is quite exciting. And the delightful way his asshole squeezes and tugs at your thrusting rod feels wonderful as well. You grab his hips and increase your pace a little, which has Hadiya grab the goblin's head and jam her cock and knot hard into his mouth.";
			say "     'Come on, you horny slut,' she growls commandingly at you. 'Pound his ass harder. It makes his throat clench nice and tight.' Your mistress's insistence is all that's needed to wear down your remaining restraint and you stop going easy on the slutty goblin beneath you. And if his throat is anything like his clenching asshole, it must feel wonderful when it clamps down with every hard push you make. Hadiya certainly seems pleased, tongue lolling from the side of her hyenine muzzle. Soon you're all cumming, the goblin getting fed sticky semen from both ends even as his own balls splatter their load across the floor. He's left panting and moaning by the time you pull out, sticky and [if cock width of player > 20]bloated [end if]full of semen.";
			now lastfuck of Hadiya is turns;
		else if player is male:
			say "     At your beckon for Gobby to come over, he excuses himself from his mistress's side to join you. Already having pulled out your [cock of player] cock[smn], he takes it in hand and rubs his nimble hands along your firm flesh. His fingers are soon joined by his tongue before he slides his mouth down over it. He licks and sucks on your manhood with an eagerness that goes beyond just his gratitude[if cockname of player is not listed in infections of internallist and cock length of player > 12]. His fingers work over the remainder of your [cock size desc of player] shaft that's too much for him to take comfortably into his mouth, sometimes moving down to play with your [ball size][else if cockname of player is not listed in infections of internallist]. His fingers move down to play with your [ball size] while he sucks you off[else if cock length of player > 12]. His fingers work over the remainder of your [cock size desc of player] shaft that's too much for him to take comfortably into his mouth[else]. His hands rest on your hips as he bobs his mouth over your [cock size desc of player] shaft[end if][if cocks of player > 1]. He remains fairly focused on the one cock he's tending to, working to give it his full attention to satisfy you[end if].";
			say "     With Hadiya watching on, a paw casually rubbing her half-hard member with a grin on her muzzle, you enjoy the fine blow job the goblin's providing. Putting a hand on his head, you get him to quicken the pace as your excitement grows. You rub his pointed ears, drawing a happy sigh from him that gets him sucking harder. Soon enough you're balls tighten up and you feel the rush of ecstasy as you pump your hot load into the goblin's mouth. He makes a show of swallowing [if cock width of player > 15]down the last mouthful[else]it down[end if] after you're done. After licking you clean, he heads back to his mistress's side, giving her the same treatment after the show.";
		else:
			say "     At your beckon for Gobby to come over, he excuses himself from his mistress's side to join you. Already having taken a seat with your legs spread, he kneels between them and runs a nimble hand across your dewy flesh. His fingers play across your folds, working to get you increasingly aroused before bringing in his long tongue to join in. He licks and fingers at your pussy with an eagerness that goes beyond just his gratitude, as Hadiya doesn't permit him to play with her pussy either[if cunts of player > 1]. His tongue remains largely focused on the one pussy he's eating out to satisfy you while leaving his hands to shift between them[end if].";
			say "     Hadiya only glances over with a momentary interest, mainly eying Gobby's butt rather than his eager pussy-licking. You're certainly enjoying it though and place your hand on his head. You pet him and rub his pointed ears, drawing a happy sigh from him that encourages him to delve deeper. Soon enough your back arches and you press your crotch to his face as you climax. Your inner walls squeeze around his wriggling tongue[if cunts of player > 1] and questing fingers[end if] as you cry out in orgasmic release. He works [itthemf] back and forth inside your clenching, tugging tunnel[sfn] while your hot juices run down his pointed chin. After licking you clean, his long tongue makes a show of licking your remaining juices from his lips. That done, he rushes back to his mistress's side.";
		now lastfuck of Gobby is turns;
	if HP of Gobby is 1, now HP of Gobby is 2;


Section 8 - Infection by Hadiya

to hadiyahyenaify:
	if HP of Hadiya >= 50:
		[puts Herm Hyena as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Herm Hyena":
				now monster is y;
				now sex entry is "Male";
				infect;
				now sex entry is "Both";
				break;
	else:
		infect "Herm Hyena";


Section 9 - Endings

when play ends:
	if ( ( HP of Hadiya >= 13 and HP of Hadiya < 50 ) or ( HP of Hadiya >= 63 and HP of Hadiya < 100 ) ) and humanity of player >= 10:
		say "     When Hadiya and Gobby are taken by the military, she insists that they stay together. During the waiting period, they are both given a quick screening. While the hyena passes, the goblin does not fare as well. While he's fairly stable, his previous identity - if he ever had one - has been lost. In the end, he is given a conditional release under Hadiya's care.";
		say "     After her release, Hadiya becomes a Zephyr operative, doing field work for them. On the occasions you do get to see her, she doesn't talk about it much[if player is male]. She much prefers to use those opportunities to enjoy the company of her slutty sub[end if]. Gobby remains with her, acting as servant and housekeeper while she's on mission... or so you're told. There's the occasional slip that leads you to suspect the goblin thief and his nimble fingers accompany her on some missions.";
		say "     A couple of years after the events in the city, you're surprised to find out that Hadiya's become pregnant. Her kids turn out to be a mix of red-skinned and -furred goblins, some with hyena-like heads. And while their relationship as harsh mistress and loyal servant remains unchanged, you can tell there is a bond of love there as well. Hadiya's certainly quite proud of her tough little brood of hybrid scrappers, but carrying, birthing and raising them gets added to her reasons to [']punish['] her sextoy servant. Despite her complaints on these matters, she's pregnant again soon enough with another hybrid litter.";


Section 10 - Character Notes

[ Hadiya:
- Hadiya's not particularly sociable, preferring her largely solitary life. Being a bit of a misanthrope, she prefers simply having some playmates who'll put up with her attitude and desires for rough, dominant sex.
- Once at the library, Hadiya is not interested in taking over, being top dom or anything like that. The player is her bitch when they're together, but she doesn't care what he does or whether top/bottom with others. She will only be top with others (males/herms only) and will flat out refuse if they try to insist/force it.
- She treats Gobby like her plaything and servant as an extension of the circumstances of their meeting and their sexual relationship than out of some desire to enslave or mistreat him. She's not particularly mean or malicious about it, making sure he gets 'rewarded' for his good service in return with the occasional blow job, hand job or fucking. Aside from making him lug the amplifier (done as payback for her troubles), it's all in good fun.
- Hadiya's actually a pretty good guitar player, though she'll require power for her amp and a little time to get used to playing with her claws to be able to demonstrate it. She does prefer just thrashing away at it over playing musically though.
]

[ Gobby:
- Gobby has inconsistent grammar when dealing with verbs. He also has a tendency to refer to himself in the third person or by name instead of using 'I', though he does use the latter rarely.
- Gobby is happy with his new role as Hadiya's plaything and servant. While initially scared of her, he's in awe of his good fortune to be taken in and protected by 'The-Red-Toothy-Beast'. She doesn't mistreat him beyond making him do some menial tasks for her and being her sexual playtoy. And while the latter can be a little rough at times, the goblin is used to a much harsher life and has come to enjoy her rough attentions.
- Gobby refers to Hadiya as: Mistress, Mistress Hadiya, Hadiya-Mistress, (O Great-)Red-Toothy-Beast, Fearsome One, and occasionally directly by name.
- Gobby sneaks out occasionally to swipe some more supplies for him and his mistress out in the city.
- He may also, at Hadiya's prompting, swipe some minor thing from another resident to get them to come up and see her. She uses the opportunity to offer to sex them up. Gobby's 'punishment' for his thieving is more fun with his mistress.
]


Hadiya ends here.
