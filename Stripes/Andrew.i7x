Version 2 of Andrew by Stripes begins here.
[Version 2.2 - Another sex scene - player tops w/onlookers]

"Adds a primarily M/M Wolf NPC named Andrew to the Flexible Survival game."

[ HP of Andrew                      ]
[ 0 = Nothing                       ]
[ 1 = Talked w/him                  ]
[ 2 = Received oral                 ]
[ 3 = Had sex once                  ]
[ 4 = Had sex again                 ]
[ 5 = Gave oral                     ]
[ 6 = Had sex again                 ]
[ 7 = Covered in wolf cum           ]
[ 8 = Had sex again                 ]
[ 9 = Bukkake special               ]
[ 10 = Player tops w/ onlookers     ]

[ lust of Andrew                    ]
[ Andrew + Demon Brute pet          ]
[ 0 = no interaction                ]
[ 1 = plan rejected                 ]
[ 2 = demon sex show                ]
[ 3 = post demon-show talk          ]
[ 4 = redeemed demon sex show       ]
[ 5 = post redeemed demon sex show  ]
[ 100 = demon show ending           ]

Section 1 - Private Booths

Table of GameRoomIDs (continued)
Object	Name
Private Booths	"Private Booths"

Private Booths is a room. Private Booths is east of PALOMINO. The description of Private Booths is "     Looking around the shadowy, semi-private booths in this corner of the club, you spot several signs of patrons having used them for some fun. Many of the vinyl padded seats of the booths, and even some of the round tables, have large splatters of cum on them. While the booths themselves look rather new, it's clear that they've suffered a lot of wear recently, with fresh claw marks in the wood and cushions alike from mutated patrons in the throes of lustful passion.".

the scent of Private Booths is "The booths smell strongly of male lust of numerous varieties, though wolf is definitely omnipresent in the air in this area.".


Section 2 - Andrew

Table of GameCharacterIDs (continued)
object	name
Andrew	"Andrew"

Andrew is a man. Andrew is in Private Booths.
The description of Andrew is "     [one of]Sitting[or]Adjusting the sizable bulge in his pants while sitting[or]Watching the guys on the dance floor while sitting[or]Sipping idly at a drink while sitting[or]Rubbing the large bulge in his black cargo pants as a particularly sexy ass walks past him while he's sitting[as decreasingly likely outcomes] in the cornermost booth, this black furred wolf bobs his head to the beat. The fellow is of average height and build, but has a considerably lupine body. His arms end in paw-like hands and his legs have become digitigrade, though his wolf tail seems longer than those of others you've seen. He's going topless, wearing only a pair of black cargo pants held up by a rainbow belt. Below that brightly colored belt is a very sizable bulge that draws your eyes before you notice you're staring and look back up at his face. Having noticed your glance, his mischievous violet eyes look you over through his shaggy headfur as his ears perk in your direction and he gives you a lupine smile while twirling a fingertip in one of the messy splatters of white goo on the table at this particularly sticky booth.".
The conversation of Andrew is { "Sex?" }.
the icon of Andrew is figure of Andrew_icon;

the scent of Andrew is "Andrew is saturated with the scent of male lust, both his and that of many others.".

Instead of conversing the Andrew:
	if HP of Andrew is 0:
		now HP of Andrew is 1;
		say "     The wolf's tail swishes slowly as he smiles up at you. 'Well, hey there[if player is puremale], cute stuff[else if player is male], sweetie[end if],' he says with a slightly effeminate voice. 'I don't think we've had a chance to talk yet. I'm Andrew,' he says, offering you his paw. Deciding to be polite, you give it a quick shake. 'I kinda work here. Strictly volunteer, you see, helping to keep everyone's morale up in these troubled times. There are so many poor guys out there with strange changes. Powerful, new urges they can't cope with. And so here I am, ready and willing to help,' he chuckles in his soft voice while spreading his arms wide, almost knocking over the last of his black beer. 'Eep! Almost lost my fine brew there,' he says, finishing it off.";
		if player is male:
			say "     'So, care to join me in seeking a little relief from the stresses of this crazy city of ours?' he says, eyeing your crotch as he slides his long tongue along the inside of his glass to get the last few drops. He smiles mischievously as his violet eyes watch your reaction to his teasing tonguework.";
	else if lust of Andrew is 2:
		say "     The black wolf stretches, running his paws over his body. 'Oh man, that thing we did with your demon was great. Got a little out of hand there, but it was so much fun. Maybe we co...' he starts to say, but stops short when he notices Harold glaring at him from the bar. 'Uhh... I mean, we probably shouldn't do it again though. Several people went feral during the show and had to be thrown out.' He does his best to look contrite until the unicorn turns away, then flops back into his seat with a disappointed sigh.";
		say "     'Grumpy over there says he'll cut me off permanently if we try that again. Can you believe him? No more beer! Speaking of...' he adds, reaching for a half-full stein and draining it. 'Seriously though, as fun as that was, I've gotten plenty more requests for my [']personal services['] since the show. Nothing like being the center of an orgy to boost one's popularity,' he says with a happy giggle.";
		now lust of Andrew is 3; [repeat forbidden because of possible demonic escalation]
	else if lust of Andrew is 4:
		say "     The black wolf stretches, running his paws over his body. 'Oh man, that thing we did with your demon was great. Lots of audience participation too. Maybe we co...' he starts to say, but stops short when he notices Harold glaring at him from the bar. 'Uhh... I mean, we probably shouldn't do it again though. The cleanup afterwards was quite a bit of work.' He does his best to look contrite until the unicorn turns away, then flops back into his seat with a disappointed sigh.";
		say "     'Grumpy over there says he'll cut me off permanently if we try that again. Can you believe him? No more beer! Speaking of...' he adds, reaching for a half-full stein and draining it. 'Seriously though, as fun as that was, I've gotten plenty more requests for my [']personal services['] since the show. Nothing like being the center of an orgy to boost one's popularity,' he says with a happy giggle.";
		now lust of Andrew is 5; [repeat forbidden because of too much cleanup]
	else if player is male:
		say "[randombodypart]";
		say "     [one of]'Are you having a good time?'[or]'Grab a drink from the bar and let's chat.'[or]'Looking for a little fun, sweetie?' he asks softly.[or]'Looking to snuggle with this big, bad wolf,' he teases, rubbing his crotch.[or]'Need a little stress relief, honey.'[or]'I've been hanging out at this club since before the outbreak and I like it even better now.' He leans a little closer. 'Being able to fuck here in my booth is much more fun.'[or]'Mmm... what's say you snuggle up in here beside me,' he says with his vaguely feminine voice while sliding a finger slowly through one of the sticky puddles of cum on the table before licking it away from his fingertip.[or]'Have you tried the [']Black Wolf Beer[']? I help Harold make it,' he says, rubbing his bulging crotch. 'I highly recommend it.'[or]'Look at the set of buns on that one,' he giggles. 'Mm-Mm-Mmmm...'[or]'So what have you b...' he starts to ask, but trails off as a sexy [bodyselector] with a big cock walks into view.[or]You and the wolf chat, but it constantly devolves into him commenting on the sexual prowess of the various guys around the club as he spots them and waves. Noticing your frustration at his constant distraction, he gives you a hug and a grope. 'I'm sorry, hon. It's just tough being popular sometimes,' he says with an exaggerated sigh, before giving a girlish giggle and nipping you playfully. He becomes more attentive, at least long enough to finish your conversation.[in random order]";
	else:
		say "[randombodypart]";
		say "     [one of]'Are you having a good time?'[or]'Grab a drink from the bar and let's chat.'[or]'I've been hanging out this club since before the outbreak and I like it even better now.' He leans a little closer. 'Being able to fuck here in my booth is much more fun.'[or]'You should head onto the dance floor and have some fun,' he says with his vaguely feminine voice while sliding a finger slowly through the sticky puddles of cum on the table, drawing various dicks before licking the rest from his fingertip.[or]'Have you tried the [']Black Wolf Beer[']? I help Harold make it,' he says, rubbing his bulging crotch. 'I highly recommend it.'[or]'Have you heard this song before?' he asks.[or]'Look at the set of buns on that one,' he giggles. 'Mm-Mm-Mmmm...'[or]'So what have you b...' he starts to ask, but trails off as a sexy [bodyselector] with a big cock walks into view.[or]He mumbles some vague response to you as he leans across the table, eying the guys walking around.[or]You and the wolf chat, but it constantly devolves into him commenting on the sexual prowess of the various guys around the club as he spots them and waves. He's clearly very popular.[in random order]";


Section 3 - Sexy Times

[
demon notes:
DBCaptureQuestVar is 5
DemonBruteStatus is 0 or 1
]

the fuckscene of Andrew is "[sexwithAndrew]".

to say sexwithAndrew:
	[puts Black Wolf as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Black Wolf":
			now monster is y;
			break;
	if HP of Andrew is 0:
		say "     Now that's rather forward of you. You should at least talk to the guy first.";
	else if player is not male:
		say "     Andrew shifts a little in his booth, his tail subconsciously moving to cover his groin. 'Oh... umm... well, I'm more of a man's man, you see? I mean, empirically speaking, I might consider it, but there's... just so many sexy guys here and they always get my motor running,' he says with a grin. 'Sorry, hon.'";
	else if lastfuck of Andrew - turns < 6:
		say "     'Mmm... I'm always up for more fun, but I promised one of the other guys some special wolf action and I don't want to disappoint him. Maybe later, hon.'";
	else if HP of Andrew is 1:
		say "     Andrew pulls you into the booth to snuggle with him, running his black paws across your [bodydesc of player] body, kneading at your chest. 'Mmm... I'm glad you took up my offer. I'm always eager to [']meat['] new guys,' he giggles, licking along your ear. A paw drifts down to your groin, fondling your cock as he grinds his bulging crotch against you. 'But since it's our first time, how about I get a taste for you,' he says, nipping at your neck. You moan and nod, eager to feel the playful wolf's muzzle and tongue on your dick.";
		say "     [if scalevalue of player > 3]Shoving the table out of the way of your large body and pushing[else]Pushing[end if] you to the back of the booth, he climbs onto the seat and buries his muzzle between your legs, licking and lapping eagerly at your erection. You moan softly and run your hands through the wolf's shaggy headfur. His tongue works up and down your shaft while fondling your nuts. His warm breath washes over your crotch as he takes you into his mouth eagerly. His head bobs and his tongue works you over with considerable skill, the wolf being clearly as well-practiced as he claimed.";
		say "     As he blows you, he undoes his belt and slides down his pants, freeing his large, lupine cock and heavy ballsack. His meat is a girthy ten inches with an thick knot at its base. It pulses as he strokes over it, dribbling considerable precum down over his shaft and sheath as well as onto the padded seat. Even with the sound of the club's music in the background, you start to hear the wet sounds of him sucking you off and stroking his slick cock.";
		say "     With the gay wolf working your [cock size desc of player] [cock of player] cock and the added show of him playing with himself, you cum quite hard, blasting shot after shot of your hot seed down his throat. His tongue slathers over your [if cock length of player > 16] shaft[else]balls[end if] as you cum. As your orgasm is finishing, he moans in pleasure and his ballsack tightens up before shooting large globs of cum from his throbbing dick. Some splatters onto you, onto him, the underside of the table and even the back of the booth beside you. Andrew sits up slowly, licks his muzzle and smiles happily. 'Mmm... very tasty. Come back for more any time, sweetie.'";
		now lastfuck of Andrew is turns;
		andrewinfect;
		now HP of Andrew is 2;
	else if HP of Andrew >= 4 and DBCaptureQuestVar is 5 and ( DemonBruteStatus is 0 or DemonBruteStatus is 1 ) and lust of Andrew is 0 and companion of player is demon brute:
		say "     Andrew smiles as the topic of sex comes up, but his attention wanders over to your enslaved demon, which has been standing imposingly behind you. Noting his interest, you ask him what he thinks of your bodyguard. 'Mmm... I think he's quite the impressive slab of meat. And I don't just mean those big muscles of his, sweetie. Would you be willing to... loan him to me for a bit? I could give him a bit of a... workout. I'm sure we could give everyone a show they won't soon forget,' he says with a grin as his eyes run over the demon's cock. The demon remains as stoic and scowly as ever, though you can see his cock stiffening and swelling at the prospect of getting some sexual relief.";
		say "     [bold type]Shall you order your demon slave to fuck Andrew?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[andrewdemonshow]";
		else:
			say "     Deciding it'd probably not be a good idea, you tell Andrew that so, adding that [if player is male]you'd be more than happy to have some fun with the wolf if he's up for it. 'Oh, I see how it is. You're just looking to get some of this,' he says, rubbing if large, firm package[else]he should probably stick to the playing with the regular club patrons for his fun. He sighs, but nods in agreement[end if].";
			now lust of Andrew is 1;
	else if HP of Andrew >= 4 and DBCaptureQuestVar is 7 and ( DemonBruteStatus is 0 or DemonBruteStatus is 1 ) and lust of Andrew is 0 and companion of player is demon brute:
		say "     Andrew smiles as the topic of sex comes up, but his attention wanders over to your demon companion, who has been standing imposingly behind you. Noting his interest, you ask him what he thinks of your bodyguard. 'Mmm... I think he's quite the impressive slab of meat. And I don't just mean those big muscles of his, sweetie. Would you be willing to... loan him to me for a bit? I could give him a bit of a... workout. I'm sure we could give everyone a show they won't soon forget,' he says with a grin as his eyes run over the demon brute's cock. Having heard the gay wolf talk about him, Brutus meanwhile is looking back at him with interest, and you can see his cock stiffening and swelling at the prospect of getting it on with the man.";
		say "     [bold type]Shall you give the ok for Brutus to fuck Andrew?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[AndrewBrutusShow]";
		else:
			say "     Deciding it'd probably not be a good idea, you tell Andrew that, adding that [if player is male]you'd be more than happy to have some fun with the wolf if he's up for it. 'Oh, I see how it is. You're just looking to get some of this,' he says, rubbing if large, firm package[else]he should probably stick to the playing with the regular club patrons for his fun. He sighs, but nods in agreement[end if].";
			now lust of Andrew is 1;
	else if HP of Andrew is 4 or ( HP of Andrew > 4 and a random chance of 1 in 6 succeeds):	[special - give oral]
		say "     Andrew grins at your offer and runs a paw down to the bulge in his pants. 'Mmm... How does a tasty treat sound, hot stuff? I've got something nice and sticky for you all saved up,' he says while hopping up to sit at the edge of the table. He unzips his fly and pulls out his swelling cock, running his fingers over the throbbing, lupine cock. A little precum dribbles down his pointed shaft as he slips his pants down completely. The scent of aroused wolf grows stronger and you lick your lips, longing to get a taste of that thick meat.";
		say "     Unable to resist the tantalizing offer, you bring your lips to his thick shaft and start licking and kissing at it. He moans softly and rubs his hands over your head, gently coaxing you to take it into your mouth. As he stuffs your mouth with his cock and starts thrusting into it, you work your tongue over him, excited by the taste of his precum and musky meat. You grope his heavy, enlarged balls with one hand, longing to taste their contents soon. 'Mmm... good work. Keep that up,' he says in his soft, girlish voice. 'You love this, don't you? Putting on a show for everyone with how much you love cock?'";
		say "     Awash in your own arousal, you'd agree with him if your mouth weren't stuffed with delicious wolf-cock, wanting to be as much a man-whore as the sexy wolf you're blowing. You're quite certain there's others around watching the show, probably having some fun of their own. Imagining all those different, sexy penises around you, being stroked, rubbing together, filling slick holes, turns you on all the more. You wiggle your rear and suck all the harder, which stimulates his cock to increase its flow of delicious precum. Grabbing his ass with your free hand, you slip a pair of fingers into his tailhole and prod at his prostate. This gets the wolf to howl in lustful release as he cums hard, blasting his thick seed into your mouth. His prodigious flow forces its way down your throat and stuffs your belly with hot semen. Just as your tummy's starting to feel full, he pushes your head back, letting the rest of his load spray onto your face, coating your head in his delicious, musky cum.";
		say "     A little dazed, but greatly aroused after your tasty meal of wolf cum, you're pushed up onto the table by Andrew. As you use your hands to wipe his seed into your mouth, he takes a hold of your throbbing [cock size desc of player] erection[smn] and strokes you quickly. Soon enough you moan and cum as well, spraying your hot load across yourself for everyone around to see what a horny cock slut you are as your [ball size] are drained.";
		now lastfuck of Andrew is turns;
		andrewinfect;
		if HP of Andrew is 4, now HP of Andrew is 5;
	else if HP of Andrew is 6 or ( HP of Andrew > 6 and a random chance of 1 in 5 succeeds):	[special - cummed over]
		say "[randomdesc]"; [yields 'slutname' - bottom]
		say "[randombodypart]"; [yields 'bodyselector' - top]
		while bodyselector is slutname:
			say "[randombodypart]";
		say "     Andrew grins at your offer and pulls you in for a kiss. He strokes a paw across your face and nibbles at your ear. 'Mmm... you looked so sexy before with my cum all over your [if HP of Andrew is 6]face[else]body[end if]. How about we get you nice and messy like that again?' he says with his faintly feminine voice with considerable eagerness. Clearly the wolf is very turned on by the prospect of getting you nice and sticky like that again. And remembering how delicious his hot load was, you find yourself aroused by the idea as well and readily agree. Smiling, he strips you down with his playful, groping paws before unzipping his pants to release his aroused member.";
		say "     With your hips at the edge of the table and your legs spread, he moves in between them and presses his thick cock down onto yours. You can feel his warm shaft and weighty balls atop your [cock size desc of player] man meat as his precum flows steadily, getting you both slick. He rubs his paws over them[if cocks of player is 1] both[end if], sliding them against one another as he masturbates you both. The feel of his slippery cock against your [cock of player] member[smn] is very arousing.";
		say "     As your cocks are rubbed and stroked together, you let your hands wander over your [bodydesc of player] body, teasing yourself. You notice several others gathered around the booth, watching the sexy show you two are putting on, so you increase your wanton display for them. To one side, you notice a [slutname] leaning over the booth to better watch the fun. Behind him is a [bodyselector] and it's quite clear that the pair have been inspired to have some fun of their own. Both pleased and aroused at having gotten the two males excited by your show, you reach over and stroke the [slutname]'s cheek, enjoying his moan as the [bodyselector] behind him thrusts firmly into him again.";
		say "     Turning your attention back to Andrew, you smile up at the wolf and lick your lips, moaning for him to cum. Judging by how wet your lower belly, crotch and cock[smn] are, he's certainly getting close. Grabbing his balls and rubbing them against yours, you beg him to spray his load all over you to show everyone what a big cock slut you are. His lupine cock twitches at this and releases a big spurt of pre across your [bodytype of player] chest, setting your own orgasm off.";
		say "     Your [cock size desc of player] [cock of player] shaft pulses beneath his, spraying your seed across your [if cock length of player < 10]belly and the underside of the wolf's cock[else]chest and face[end if]. Andrew strokes and pumps your cock[smn], making sure you have a long and enjoyable orgasm. Hearing grunts and moans to your side, you can see the couple in the other booth panting hard as the [bodyselector] cums in the [slutname]'s ass. All this sets your lupine lover off with a lustful howl that sends a big blast of wolfcum into your face. More delicious globs of his semen spray across your body and face, coating you in large splatters of musky seed. As you moan and pant while recovering from your powerful orgasm, you gather up globs of his sticky seed and lick them from your fingers. You even share a sample with the [slutname] and, from the look he and Andrew share, you expect he'll be bending over for the wolf soon.";
		now lastfuck of Andrew is turns;
		andrewinfect;
		if HP of Andrew is 6, now HP of Andrew is 7;
	else if HP of Andrew is 8 or ( HP of Andrew > 8 and a random chance of 1 in 4 succeeds):	[special - bukakke]
		say "[randomdesc]"; [yields 'slutname' - male 1]
		let male1type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 2]
		while bodyselector is slutname:
			say "[randombodypart]";
		let male2type be bodyselector;
		say "[randomdesc]"; [yields 'slutname' - male 3]
		while slutname is male1type or slutname is male2type:
			say "[randomdesc]";
		let male3type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 4]
		while bodyselector is male1type or bodyselector is male2type or bodyselector is male3type:
			say "[randombodypart]";
		let male4type be bodyselector;
		let randomcolorchoice be "gray ";
		let male1c be "";
		let male2c be "";
		let male3c be "";
		let male4c be "";
		if HP of Andrew is 8, sort randomcolorlist in random order; [fresh randomized set]
		if a random chance of 1 in 5 succeeds:
			now male1c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 5 succeeds:
			now male2c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 5 succeeds:
			now male3c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 5 succeeds:
			now male4c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
[		say "TEST:[line break]";
		say "male1type: [male1type][line break]";
		say "male2type: [male2type][line break]";
		say "male3type: [male3type][line break]";
		say "male4type: [male4type][line break][line break]";
		say "male1c: [male1c][line break]";
		say "male2c: [male2c][line break]";
		say "male3c: [male3c][line break]";
		say "male4c: [male4c][line break][line break]";]
		say "     Andrew grins at your offer and pulls you in for a kiss. He strokes a paw across your face and nibbles at your ear. 'Mmm... You looked so sexy before with my cum all over your face. How about we get you nice and messy like that again?' he says with his faintly feminine voice with considerable eagerness. Clearly the wolf is very turned on by the prospect of getting you nice and sticky like that again. You think about what he said, and with a grin you suggest something even more messy. Giving the gay wolf a kiss on the cheek, you whisper in his ear it might be more entertaining to invite some of the other patrons to join in on the fun.";
		say "     Andrew's ears perk up at your suggestion and he dashes out of the booth. While you wait for him to return you remove your clothes, stripping down naked and sitting on the edge the booth, idly stroking your [cock of player] [if cocks of player > 1]cocks[else]shaft[end if]. After a bit you hear some excited chatter as Andrew comes back in, trailing behind him four other males. Looking at them you see that he brought a rather mixed group, and ready to go, judging by the bulges in their clothes. You beckon them closer and watch them strip off their clothes, eagerly getting naked to join the fun.";
		say "     You see one a little more eager than the others, a rather endowed [male1c][male1type] walks up to you and push his leaky cock in your face. Now that one has broken the ice, the others move in closer, a [male2c][male2type] rubbing his swollen glans against your cheek. 'Mmm... put that tongue to work. Show us how well a cock-slut like you knows how to please.' Grinning widely, you eagerly start licking and kissing on his cock, slathering it with your tongue and sucking on his tip. Not to be undone, the [male2type] pushes his shaft against your mouth, making you divide your attention between the two of them. You lick and suck on first one cock, then the other, moaning softly at the taste of their cockflesh and the pre that starts to flow from them. Grabbing them with your hands, you rub and stroke on their cocks when they aren't in your mouth, pleasuring them with skill.";
		say "     After a few minutes, you hear some whispers from Andrew and the other two males. With a quick motion you suddenly have the delicious cocks pulled from your mouth. Now that the [male1type] and [male2type] have been pulled back from blocking your sight, you can see who the others Andrew found are. Standing to the side of the [male1c][male1type] is a [male3c][male3type], with a big grin on and his hand on his friend's shoulder. Between Andrew and the [male2c][male2type] is a [male4c][male4type] eagerly waiting his turn. Andrew leans in and licks your cheek, tasting some of the musky pre left there, and murring. 'How about you hop up on the table here, sweetie? Let all of us have a turn at you,' Andrew says in a lust-filled voice, patting one of the cum-stained tables.";
		say "     You eagerly agree and spring up on the table, sitting on the edge of it and pulling Andrew in close. You draw him down and give him a kiss, feeling his girthy shaft hot on your [cock size desc of player] [if cocks of player > 1]rods[else]rod[end if], taking his paws in your hands and placing them on your cocks, urging him to explore. Looking up from Andrew you crook your finger at the others, urging them in close. Reaching out you grab the cocks of the [male3type] and [male4type] and you begin pumping your hands on them. You let out a moan as Andrew begins stroking his hefty meat against your [cock of player] [if cocks of player > 1]erections[else]erection[end if], keeping a tight grip on [if cocks of player > 1]all of the[else]both of your[end if] throbbing cocks, frotting against you vigorously.";
		say "     Pulling the two males you have your hands on closer, you let go of their cocks and start to lick and suck on both of them eagerly. You moan loudly to them, showing them how much you enjoy having their cocks in your face. Keeping your hands on them, you stroke them as you pleasure them. The other two come up and stand over you, starting to jerk themselves off over you, watching you lash your tongue on the other two and looking at what Andrew is doing to you as well.";
		say "     As things heat up, moans and grunts almost overpower the music in the booth, the scent of male musk filling the atmosphere as pre coats your [bodydesc of player] body. Sloppy wet sounds add to the noise as pre and saliva flows more freely, your [cock of player] shaft throbbing heavily against Andrew's thick, knotted member. Your hands explore the drippy dicks, feeling their textures and veins as you try to bring the four sexy males around you to orgasm. Looking past them, you can see you've gathered an audience as others lean over from the neighboring booth or watch from the sidelines. From the expression on their faces, you can tell more than a few of them have some horny cocksucker tending to them right now.";
		say "     The first one to climax is the [male1c][male1type], voicing out a loud moan as his thick cock throbs heavily before starting to soak you and the table in cum, a few shots even hitting the other males. This sets off a chain reaction as hot jizz starts flying onto you, the other three covering your body in their seed and soaking your face and body. You moan and suck and lick on the two spurting cocks in front of you, enjoying the taste of the thick cream.";
		say "     Watching this sets Andrew off and with a howl his cock starts throbbing and blasting his cum all over you and the table you are laying on, as well as hitting the other males. The large spurts of cum he unleashes seem particularly thick and plentiful, even for him, soaking much of you in wolf semen. The feel of his cock throbbing against yours and the scents and sounds in the air, as well as the sight and feel of the cocks around you all cumming sets you off. Your [cock size desc of player] maleness swells and then throbs as you shoot your [cum load size of player] load onto yourself, adding to the thick coating of cream on you.";
		say "     After everyone is spent, the [male1type] and [male2type] sit down in a booth of their own, cuddling and snuggling with each other. The other two sit down in the messy booth with you and Andrew, the four of you cuddling and groping one another. Andrew leans in with a smile and licks some of the mixed cum off your cheek. 'That was a lot of fun, sexy. Looks like you've turned into quite the cum-slut,' Andrew says with a smirk. 'We'll have to do this again sometime.'";
		now lastfuck of Andrew is turns;
		andrewinfect;
		if HP of Andrew is 8, now HP of Andrew is 9;
	else if HP of Andrew is 9 or ( HP of Andrew > 9 and a random chance of 1 in 4 succeeds ):
		say "     'Up for more fun, are we? Hmmm... I'm pretty busy,' he says with some seriousness as he rises from his seat. 'But for you, I'm sure I can squeeze you into my tight schedule,' he adds with a grin as he slips down his cargo pants and bends over the messy table, putting his crinkled hole on tantalizing display. Reaching back, he slips a pair of digits into his back door and spreads it open with ease. 'See. I can be very accommodating,' he giggles teasingly.";
		say "     With such an offer before you, your manhood gets harder still. Grabbing that offered ass, you run your fingers through its black fur as you get your cock lined up. As you start sliding into him, he moves his paw to instead [if cockname of player is listed in infections of internallist]cup your balls[else]steady himself on the table[end if][if cock length of player > 24]. Grunting a little at your sheer size, he snatches up a half-full stein of beer and downs it. 'Ahhh- that's better. A little extra libation to help me cope with that impressive piece of yours[else]. Releasing a satisfying moan as you penetrate him, he takes a half-finished beer and drains it in a few gulps. 'Ahhh- [one of]my two favorite vices - fine drink and fine men[or]I so enjoy the pleasure of fine drink while in the company of a fine gentleman[at random][end if].'";
		say "     With your cock stuffed in the wolf's ass, you can feel his squeeze and tighten around you, milking at your cock now that it's adjusted to your presence. With a firm grip on his buttocks, you thrust firmly, drawing a soft moan from the lustful gay lupine. Knowing he can take it, you increase your pace, drilling harder and deeper into him. And true to form, he raises his ass a little higher and pushes back into every thrust.";
		say "     As the sticky sounds and moans of your fucking increase, the attention of the neighboring booths is drawn. Soon you have a few spectators admiring the show. Even while getting fucked hard and deep, the wolf is able to negotiate rendezvous with a few of the horny guys asking for a shot at his ass next. You get a few offers as well, which is quite tempting, but too much of your focus is on plowing the fine wolf you're buried in right now.";
		say "     After a good, long pounding, you feel your climax approaching. Sensing this as well, Andrew works that experienced ass with firm squeezes on your already aching cock. This sends you past your peak and you cum hard and long into his welcoming bowels. You drain your balls into him, emptying a [cum load size of player] load into him while he moans in satisfaction.";
		say "     When you're finished and have pulled out, Andrew rolls over and sits up on the table, jerking himself off quickly. He blasts his load into one of the empty beer mugs, nearly filling it. He then guzzles down his load and gives you a very sloppy and cum-filled kiss while those around watch on, many catcalling at this last show.";
		now lastfuck of Andrew is turns;
		andrewinfect;
		if HP of Andrew is 9, now HP of Andrew is 10;
	else:					[standard anal sex w/Andrew]
		if HP of Andrew < 8, increase HP of Andrew by 1;
		say "     Andrew grins at your offer and runs his paws over your [bodydesc of player] body with obvious lust. 'Mmm... I'm certainly up for some fun again, sweetie. Now what exactly did you have in mind?' he says with his slightly feminine voice while walking a paw down to your crotch[if player is female]. 'I'm up for either top or bottom. But if I top, I'd be taking your back door in, hon,' he says softly to make sure that'd be alright[else]. 'I'm up for either top or bottom, sweetie. What do you feel like?' he asks while nibbling your ear[end if].";
		say "     [bold type]Do you want to fuck him or get fucked?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fuck him.";
		say "     ([link]N[as]n[end link]) - Get fucked.";
		if player consents:
			say "     The wolf leans against the table and raises his tail, having gotten out of the cargo pants while you were deciding. His heavy balls and cock slap down onto the wood as he smiles back at you. His long tail swishes in slow invitation and you don't wait any longer. Moving in behind him, you grind your hard [cock of player] shaft against his rear and he moans playfully. 'Come on, honey. Show me what you can do.' Not wanting to disappoint, you line your glans up with his tight pucker and slowly sink into him. His asshole spreads with practiced ease, relaxing enough to take your [cock size desc of player] cock into him, but staying tight enough to squeeze and tug at it nicely. He moans in pleasure as you penetrate him, then reach around to stroke his lupine cock.";
			say "     As you fuck the wolf over the table, a few others around take notice for a little while but clearly aren't surprised or upset by it. Clearly a regular appearance, especially from the black wolf, they don't interrupt your fun together. A few other couples around do start up soon after though, adding to the experience. You pound him vigorously while stroking him off, your hand very slick from the copious amounts of precum running down his dick and pooling on the table. His inner walls rub over your sensitive shaft, moving and gripping around you to eventually drive you to a powerful orgasm that sends your hot seed deep into the gay wolf's asshole. Feeling your hot load filling him[if cock width of player > 16] more and more as your oversized balls drain[else if cock width of player > 8] as your large balls drain[end if], he howls in pleasure and cums hard, shooting his sticky load across the table and the back of the booth in another messy display. As his last shots are firing, he starts lapping up a big puddle of it within reach. After you pull out, he gives you a slobbery kiss that's rich with the taste of his semen and pats your ass in thanks for the nice fuck.";
			now lastfuck of Andrew is turns;
			andrewinfect;
		else:
			say "     [if scalevalue of player > 3]Pushing the table out of the way to make some extra space, the[else]The[end if] wolf leads you to climb into the booth with your ass up for him. His paws stroke over your rear, giving it an appreciative squeeze before he lines up his ten inch cock and slides it between your cheeks a few times. 'Mmm... I've got a nice, big dose of wolf saved up for you, [one of]sweetie[or]honey[at random],' he says, lining up his leaking glans against your pucker. He rubs it against your back entrance, letting his copious precum get you slick before slowly starting to ease into you. He takes his time at first, letting his pre soak your inner walls to ease his passage until he's finally sheathed himself into you and starts fucking you in earnest.";
			say "     As you moan beneath him each time his thick meat pushes against your prostate, Andrew slips a paw around to [if player is female]slide a finger over your wet folds. 'Such a naughty herm you are, taking it up the ass like a slutty boytoy,' he teases before moving his paw around your cock and stroking your throbbing maleness[else]wrap around your cock and start stroking you. 'Mmm... you've got a tight, sexy ass. I can hardly wait to get my knot into it,' he moans and thrusts harder, slapping his heavy ballsack against your thighs[end if]. Despite his words, he does hold back and take his time, making sure you get a long and wonderful ride before eventually pressing his knot against your pucker, stretching it around the thick base thanks to his excessive pre. Once fully tied with you, he howls lustfully, heard by many even over the loud music, and cums hard into you. The wolf's big load gets pumped into you, shot after shot of thick hot cum that starts to swell your tummy and pushes you to orgasm loudly as well, spraying your [if cock width of player > 16]huge load[else if cock width of player > 8]big load[else]sticky load[end if] onto the booth below you, adding to the many musky messes left by the well hung wolf and his many lovers. After his knot goes down and his softening shaft pops free with an overflow of wolfcum from your ass, he pats your messy bottom and gives you a kiss.[mimpregchance]";
			now lastfuck of Andrew is turns;
			andrewinfect;


Chapter 2 - Demon Show

to say andrewdemonshow: [evil Brutus + Andrew]
	say "     Deciding that the wolf's idea could be a lot of fun, you both conspire together on the details before he dashes off to make the arrangements. After a chat with the DJ and the dancers, the stage is cleared and the black wolf comes out for a sexy striptease show. While this gets some attention, it is not until you lead the demon on stage by a leash while heavy metal music plays that the audience truly becomes interested.";
	say "     Having found a leather belt to use as a collar, you pull on the chain attached to it and bring him center stage, tying him to one of the poles as you quietly ordering him to obey the wolf, fuck the wolf hard but not to harm him. When you step back, Andrew grabs the demon's hefty orbs and rubs them in his paws before moving to stroke his stiffening rod. His tongue plays across it, licking its ridged, bumped surface before leaning in and sucking lustfully on it. Ever the exhibitionist, the wolf makes sure to position himself so his audience gets a good view of his tonguework and the oversized phallus he's worshipping. Copious amounts of pre leak from the dark, pulsing shaft which either gets lapped up or spread across the rod to get it slick.";
	say "     After getting the demon's pole well lubed up, Andrew stretches out on a raised platform and orders the demon to fuck him. The monstrous demon, aroused and eager after the oral preparation, lunges atop the wolf, pinning him to the platform and driving his infernal rod into Andrew. The wolf howls in lustful pleasure as the demon takes him hard, driving most of his cock into that sexy ass in one go and driving the rest in on the second thrust. The black wolf's ebon cock throbs and pulses, spurting precum across himself as he's pounded into by your demon slave while a techno remix of Night on Bald Mountain plays.";
	say "     As the show goes on, the crowd becomes more and more worked up by the powerful display of raw sex. Pockets of sex start to break out, rapidly expanding into a full-on orgy with the wolf and the demon as the focus. You spot an opportunity to join in the fun and head over to one guy as he finishes sucking off another's cock."; [***]
[ You spot an opening near you if you want to join in on the orgiastic revelry.";
	if player consents:	]
	if 1 is 1:
		say "[randomdesc]"; [yields 'slutname' - male 1]
		let male1type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 2]
		while bodyselector is slutname:
			say "[randombodypart]";
		let male2type be bodyselector;
		let randomcolorchoice be "gray ";
		let male1c be "";
		let male2c be "";
		sort randomcolorlist in random order; [fresh randomized set]
		if a random chance of 1 in 5 succeeds:
			now male1c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 5 succeeds:
			now male2c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
[		say "TEST:[line break]";
		say "male1c: [male1c] / male1type: [male1type][line break]";
		say "male2c: [male2c] / male2type: [male2type][line break][line break]";]
		say "     The [male1c][male1type] you approach pulls you into his arms, giving you a wet, sticky kiss that's heavily flavored by the cum of the guy he just finished blowing. You're treated to a slick mouthful of semen as his tongue pushes past your lips to play with yours. He wraps his hand around your [cock of player] shaft, stroking it as he pulls you into his lap. Caught up in the rush of the orgy, you eagerly lower yourself onto his prick, moaning in pleasure as it spreads your [if player is female]pussy[else]ass[end if] open. He's rough and eager in his thrusting, pounding you hard and deep before finally cumming, filling you with his thick load. You push off him quickly and reach over for the pulsing [male2c]cock of a nearby [male2type]. Soon you're sucking him off while another unseen male mounts you and fucks your [if player is not female]creamy [end if]asshole.";
		say "     It continues like this for quite some time, the wild orgy growing more and more heated as the demon fucks the moaning, lustful wolf over and over again in numerous positions. Not that there's much opportunity for you or anyone to watch during the debauchery, but the wolf is dripping with demon seed after having his mouth and ass filled several times. While another pair of males take turns fucking your cum-slick ass, you do get a delightful view of the wolf being held up, legs raised and spread by the upright demon as he plows into Andrew's stretched anus for anyone to see. You are passed around through several partners, fucked by [if player is male]or fucking [end if]whomever is available, heedless of the consequences.[randomimpreg][randomimpreg]";
		randominfect;
		randominfect;
		randominfect;
		randominfect;
		decrease humanity of player by 25;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by 5;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by 5;
		now libido of player is libido of player / 2;
		if humanity of player >= 10:
			say "     The orgy is called to a halt as Harold strides up to you, horn aglow with white light, and shakes you roughly until you come to your senses enough to order the demon away. Andrew, having passed out some time ago, is a mess of sticky cum and reeks of male sex, though has an grin of blissful pleasure on his muzzle. The debauchery comes to an end fairly quickly once the demon is gone, though several patrons have to be ousted by the bouncers when they won't settle down on their own. After he's wiped down, Andrew's slowly nursed back to his senses by several pints of his favorite black beer.";
			now lust of Andrew is 2;
		else:
			say "     As the orgy continues unabated, Harold strides up to you, his horn aglow with white light. He shakes you roughly, trying to pull you to your senses, but you only see him as another male you can have sex with. Pushing him to the ground, you bear him down beneath you and pull out his cock. He tries to resist you, but as you sink yourself down onto his cock, the light of his horn wavers and soon fades. Soon he's fucking you with wild abandon like the others around you in this orgy of demonic-fueled lust while Tristian takes the stage and gets fucked by the demon in the stead of the unconscious wolf. It goes on and on, well past the point when everyone should have been exhausted. The unchecked infections run rampant through the club, infecting everyone present until they lose any remaining vestiges of humanity and self-control.";
			now humanity of player is 0;
			now DBCaptureQuestVar is 0;
			now demon brute is not tamed;
			now lust of Andrew is 100;
			if libido of player < 90, now libido of player is 90;
			end the story saying "You lose your mind to the infernal orgy you foolishly instigated.";

to say AndrewBrutusShow: [cleansed Brutus + Andrew]
	say "     Deciding that the wolf's idea could be a lot of fun, the three of you conspire together on the details before Andrew dashes off to make the arrangements. After a chat with the DJ and the dancers, the stage is cleared and the black wolf comes out for a sexy striptease show. While this gets some attention, it is not until you lead Brutus on stage by a leash while heavy metal music plays that the audience truly becomes interested.";
	say "     Having found a leather belt to use as a collar and a chain leash to clip on to that, Brutus lets himself be led out on the center stage, acting like a barely controlled demon. He does a very impressive roar and lunges towards the audience, only to stop instantly as you theatrically order him to come over to one of the dancing poles. You loudly order Brutus to fuck the black wolf hard, but not to harm him. Your demon companion gives a demonstrative snarl towards the audience, then grumbles 'Yes, master.' and lowers his head. As he moves towards the pole and you tie the leash to it, you see a broad smile on Brutus's face, as he seems to have good fun playing around on stage and obviously looks forward to fucking Andrew.";
	WaitLineBreak;
	say "     When you step back, Andrew grabs the demon's hefty orbs and rubs them in his paws before moving to stroke his stiffening rod. His tongue plays across it, licking its ridged, bumped surface before leaning in and sucking lustfully on it. Ever the exhibitionist, the wolf makes sure to position himself so his audience gets a good view of his tonguework and the oversized phallus he's worshipping. Copious amounts of pre leak from the dark, pulsing shaft which either gets lapped up or spread across the rod to get it slick.";
	say "     After getting Brutus's pole well lubed up, Andrew stretches out on a raised platform and orders the demon to fuck him. The large demon, aroused and eager after the oral preparation, lunges atop the wolf, pinning him to the platform with a large hand on his chest and lining up his infernal rod with Andrew's hole. He holds back a second as the tip of his cock stretches Andrew's pucker wide around its girth, not actually wanting to hurt people during sex anymore, then quickly gets over that hesitation as the very experienced wolf takes his manhood without problems and moans for more. Andrew howls in lustful pleasure as the redeemed demon proceeds to take him hard, driving most of his cock into that sexy ass in one go and pushing in the rest in on the second thrust. The black wolf's ebon cock throbs and pulses, spurting precum across himself as he's pounded into by your demon companion while a techno remix of Night on Bald Mountain plays.";
	WaitLineBreak;
	say "     As the show goes on, the crowd becomes more and more worked up by the powerful display of raw sex. Some members of the audience even climb on the stage themselves, throwing off pieces of clothing in front of the cheering watchers and dancing suggestively to the music. Gravitating together in groups of two, three or even four, the soon fully naked dancers start rubbing against each other, stroking and touching, then getting down to suck and fuck each other. The eyes of everyone else in the room are riveted to the show on the stage with the wolf and the demon as the focus, with many of the watchers having to open up the fronts of their trousers to relieve some pressure on their raging boners.";
	say "[randomdesc]"; [yields 'slutname' - male 1]
	let male1type be slutname;
	say "[randombodypart]"; [yields 'bodyselector' - male 2]
	while bodyselector is slutname:
		say "[randombodypart]";
	let male2type be bodyselector;
	let randomcolorchoice be "gray ";
	let male1c be "";
	let male2c be "";
	sort randomcolorlist in random order; [fresh randomized set]
	if a random chance of 1 in 5 succeeds:
		now male1c is entry 1 of randomcolorlist;
		rotate randomcolorlist;
	if a random chance of 1 in 5 succeeds:
		now male2c is entry 1 of randomcolorlist;
		rotate randomcolorlist;
	say "     With you still standing on the edge of the stage, you get approached by a naked [male1c][male1type] who pulls you into his arms, giving you a wet, sticky kiss that's heavily flavored by the cum of the guy he just finished blowing. You're treated to a slick mouthful of semen as his tongue pushes past your lips to play with yours.";
	LineBreak;
	say "     Do you want to stay in the middle of this little orgy on the stage, or extricate yourself from the grasp of this pretty randy guy and join crowd to just watch the show?";
	say "     [bold type]Do you want to stay in the orgy or leave and watch the show?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take part in the orgy.";
	say "     ([link]N[as]n[end link]) - Step away and watch the show.";
	if player consents: [stay]
		say "     Going with the flow, you make out with the guy and move a hand to goose his ass. He wraps his hand around your [cock of player] shaft, stroking it as he moves to sit on the platform on which Andrew lies and pulls you into his lap. Caught up in the rush of the orgy, you eagerly lower yourself onto his prick, moaning in pleasure as it spreads your [if player is female]pussy[else]ass[end if] open. He's rough and eager in his thrusting, pounding you hard and deep before finally cumming, filling you with his thick load. You push off him quickly and reach over for the pulsing [male2c]cock of a nearby [male2type]. Soon you're sucking him off while another unseen male mounts you and fucks your [if player is not female]creamy [end if]asshole.";
		say "     It continues like this for quite some time, the wild bunch on the stage changing partners constantly as Brutus fucks the moaning, lustful wolf over and over again in numerous positions. The audience watching all this swells and ebbs as new people come in to watch while others pair up and leave to take care of each other's arousal in private. Soon, Andrew is literally dripping with demon seed after having his mouth and ass filled several times. While another pair of males take turns fucking your cum-slick ass, you do get a delightful view of the wolf being held up, legs raised and spread by the upright demon as he plows into Andrew's stretched anus for anyone to see. You are passed around through several partners, fucked by [if player is male]or fucking [end if]whomever is available, heedless of the consequences.[randomimpreg][randomimpreg]";
		randominfect;
		randominfect;
		randominfect;
		randominfect;
		decrease humanity of player by 15;
		WaitLineBreak;
		say "     Quite a while later, taking a breather after your last bit of fun in the public orgy on the stage, you find yourself lying between two males, a zebra and a German Shepherd who dozed off from exhaustion. Then suddenly, you feel a hand on your arm, softly shaking you to get your attention. It's Harold, the unicorn barman, who says 'You guys have had your fun, but I think it's time to cool down a bit. Some of the audience are getting too worked up. Someone'll crack and go feral on us if this keeps up.' Sitting up, you look over all the rather wet and sticky people on the stage, some of whom are still humping each other until Harold gets to them and tells them to stop. You see Brutus sprawled out on the platform, a limp but grinning Andrew just lying on his chest, his asshole still speared on the demon's now softening cock. Exhaustedly, you stand up and go get Brutus, who holds the wolf against his chest and carries him to his bunk in one of the back rooms of the club, where he puts him down to rest. After that, Brutus offers to clean you up with his forked tongue, happily licking up all the cum still on you.";
	else:
		say "     Pulling back from the randy guy, you grab a naked person who was watching you two with interest and give him a little push towards the pushy man. They embrace and grope each other, then get down to fuck as you climb off the stage. Joining the crowd of onlookers, you get handed a drink by someone and nip on it as you watch the little orgy on the stage and the demon and wolf at its center.";
		say "     It continues like this for quite some time, the wild bunch on the stage changing partners constantly as Brutus fucks the moaning, lustful wolf over and over again in numerous positions. The audience watching all this swells and ebbs as new people come in to watch while others pair up and leave to take care of each other's arousal in private. Soon, Andrew is literally dripping with demon seed after having his mouth and ass filled several times. While standing at the front and close to the stage, you do get a delightful view of the wolf being held up, legs raised and spread by the upright demon as he plows into Andrew's stretched anus for anyone to see...";
		WaitLineBreak;
		say "     Quite a while later, in a lull of the public orgy when most of the naked and sticky people on stage are taking a breather before continuing, Harold the unicorn barman walks over and gets on the stage. Stepping over all kinds of naked creatures as he makes his way across the stage, he puts his hand on those still going at it, softly shaking them till they can focus on him. He calmly says 'You guys have had your fun, but I think it's time to cool down a bit. Some of the audience are getting too worked up. Someone'll crack and go feral on us if this keeps up.' to different people a few times, which starts a slow procession of cum-dripping participants leaving the stage to go clean up. You see Brutus sprawled out on the platform, a limp but grinning Andrew just lying on his chest, his asshole still speared on the demon's now softening cock. Making your way to them, you go get Brutus, who holds the wolf against his chest and carries him to his bunk in one of the back rooms of the club, where he puts him down to rest.";
	now lust of Andrew is 4;


Section 8 - Miscellaneous Subroutines

to andrewinfect:
	[puts Black Wolf as lead monster for possible impregnation]
	setmonster "Black Wolf";
	infect "Black Wolf";


randomcolorlist is a list of text that varies.[@Tag:NotSaved] randomcolorlist is usually { "pink ", "red ", "green ", "blue ", "teal ", "yellow ", "white ", "black ", "purple ", "gray ", "maroon ", "golden ", "cyan ", "peach " }.

Section x - Not for release

andrewtesting is an action applying to nothing.

understand "andrewtest" as andrewtesting.

carry out andrewtesting:
	if 1 is 1:
		say "[randomdesc]"; [yields 'slutname' - male 1]
		let male1type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 2]
		while bodyselector is slutname:
			say "[randombodypart]";
		let male2type be bodyselector;
		say "[randomdesc]"; [yields 'slutname' - male 3]
		while slutname is male1type or slutname is male2type:
			say "[randomdesc]";
		let male3type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 4]
		while bodyselector is male1type or bodyselector is male2type or bodyselector is male3type:
			say "[randombodypart]";
		let male4type be bodyselector;
		let randomcolorchoice be "gray ";
		let male1c be "";
		let male2c be "";
		let male3c be "";
		let male4c be "";
		if HP of Andrew is 8, sort randomcolorlist in random order; [fresh randomized set]
		if a random chance of 1 in 5 succeeds:
			now male1c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 5 succeeds:
			now male2c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 5 succeeds:
			now male3c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 5 succeeds:
			now male4c is entry 1 of randomcolorlist;
			rotate randomcolorlist;
		if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
		say "TEST:[line break]";
		say "male1type: [male1type][line break]";
		say "male2type: [male2type][line break]";
		say "male3type: [male3type][line break]";
		say "male4type: [male4type][line break][line break]";
		say "male1c: [male1c][line break]";
		say "male2c: [male2c][line break]";
		say "male3c: [male3c][line break]";
		say "male4c: [male4c][line break][line break]";


Section 9 - Endings

when play ends:
	if lust of Andrew is 100:
		say "     The wild debauchery at the Palomino goes on and on, the safe haven falling into a den for the demonic orgy. It becomes a nexus of infection that spreads out and corrupts the surrounding area. During the wild sex, the demon takes the amulet from you and drapes it around Andrew's neck with a sinister grin. Your last order to the demon had been to obey Andrew, to fuck him hard and to not harm him, all of which he's done, in a dark and twisted way. Having screwed the wolf into a wild lust, Andrew is no more than a puppet for the demon, his only desire now is for the demon to keep fucking him. And remaining unharmed by the harsh pounding, the demon can screw the wolf for hours on end before he passes out. Whenever the wolf is unconscious, the demon simply switches to fucking a few of the horny supplicants in the crowd to keep the scent of infernal lust heavy in the air so the orgy never ends. The Palomino Club, briefly a safe haven from the menace of feral mutants, has become a source of them that cannot be stopped.";

Andrew ends here.
