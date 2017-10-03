Version 2 of Diego by Sarokcat begins here.
[ Version 1 - Breakup of Zoo People file ]
[ Version 2 - Complete rewrite by Wahn - Talk Menu, Sex Menu, Gay Options, Expanded Endings]

"Adds a coyote named Diego to Flexible Survival."

Section 1 - Diego

Diegotalk is a number that varies.
CoyoteTricks is a number that varies.
DiegoChanged is a number that varies.
DiegoBitched is a number that varies.
DiegoFucked is a number that varies.
DiegoButtSlut is a number that varies.
LastDiegoTricked is a number that varies. LastDiegoTricked is usually 250.
DiegoTricked is a number that varies. DiegoTricked is usually 0.

Diego is a man.
The description of Diego is "[DiegoDesc]".
The conversation of Diego is { "Fooled you!" }.
Diego is in Park Entrance.
The icon of Diego is Figure of Diego_icon.

the linkaction of Diego is "[diegolinkaction]".

to say diegolinkaction:
	if diegotalk is 0:
		say "Possible Actions: [link]talk[as]talk Diego[end link], [link]smell[as]smell Diego[end link], [link]fuck[as]fuck Diego[end link][line break]";
	else:
		say "Possible Actions: [link]talk[as]talk Diego[end link], [link]smell[as]smell Diego[end link], [link]fuck[as]fuck Diego[end link], [link]trick[as]trick Diego[end link][line break]";

the scent of Diego is "Diego smells like a [if DiegoChanged is 0]male[otherwise if DiegoChanged is 1]herm[otherwise]female[end if] coyote.".

To say DiegoDesc:
	if debugactive is 1:
		say "DEBUG -> Diegotalk: [Diegotalk], CoyoteTricks: [CoyoteTricks], DiegoTricked: [DiegoTricked], LastDiegoTricked: [LastDiegoTricked], DiegoChanged: [DiegoChanged], DiegoBitched: [DiegoBitched], DiegoFucked: [DiegoFucked], DiegoButtSlut: [DiegoButtSlut] <- DEBUG[line break]";	
	if DiegoChanged is 2:
		say "     The former coyote man is now a pretty tan furred coyote bitch instead, and is eyeing you eagerly as she leans up against the wall dividing the park from the rest of the city. You can see one of her paws slowly straying down to her furred pussy as you approach, a smile playing across her muzzle as she rubs herself teasingly.";
	if DiegoChanged is 1:
		say "     The tan furred coyote herm is still here leaning up against the wall dividing the park from the rest of the city, and seems to be amused as you approach, one of her hands straying down to fondle both sets of her equipment as a smile tugs at her coyote muzzle.";
	if DiegoChanged is 0:
		say "     A tan-furred anthro coyote is leaning up against the wall dividing the park from the rest of the city, striking a relaxed, casual pose. It is quite obvious that he's a man - the guy doesn't wear any clothes on his wiry body, allowing open view of a pair of furry balls dangling between his legs, as well as a sheath just above. He eyes you curiously as you approach, one of his ears flicking in amusement as a small smile plays across his muzzle.";
		if DiegoButtSlut > 0:
			say "     You notice the antho canine's tail twitching upwards a little, as if he reflexively reacts to your presence by wanting to present his bare butt.";

Instead of conversing the Diego:
	if Diegotalk is 0:
		if graphics is true:
			project the figure of Diego_face_icon;
		say "     'Hey there,' the coyote-like man says with a grin. 'The name is Diego, my friend, and I have to say this is an unexpected surprise. Haven't seen too many people in these parts that haven't completely given into the pleasure.' Diego says as he readjusts his position against the wall to get a better look at you. 'Can't say how long that will last, of course. You look like you like to enjoy yourself as much as anyone else around here. And well, I'd be lying if I said this wasn't the most fun I've had in my life,' he says with a grin playing across his muzzle. 'Never been so glad to have a coyote nip me in my backyard. Course, everything seems much more amusing to me now also. Must be that whole trickster thing, eh?' The coyote man chuckles as he leans back against the wall happily.";
		say "     'Guess we will see how long you last here. Course, if ya need any advice about the creatures in the park feel, free to talk to me as much as you want. Of course I can't guarantee it will be GOOD advice - that whole trickster thing and all, ya ken?' he adds with a sly wink. 'Course, ya could always just wait here until the military finally gets itself together and comes to visit. Course, if I felt like it, I could always pull out a few more coyote tricks on them. That would be sure to slow them down a bit, if ya know what I mean. I'd only do something like that as a favor to a fellow trickster,' Diego snickers at the thought of the poor, tricked military fools.";
		increase Diegotalk by 1;
	else:
		say "[DiegoTalkMenu]";
		
to say DiegoTalkMenu:
	say "[line break]";
	say "What do you want to talk with Diego about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Share some ideas about tricks to play on people with him";
	now sortorder entry is 2;
	now description entry is "Develop tricks with Diego? [if DiegoChanged is 0]He[otherwise]She[end if] might very well do them if [if DiegoChanged is 0]he[otherwise]she[end if] likes your ideas";
	[]
	if carried of water bottle > 0 and CoyoteTricks > 4:
		choose a blank row in table of fucking options;
		now title entry is "Offer [if DiegoChanged is 0]him[otherwise]her[end if] a bottle of water to drink";
		now sortorder entry is 3;
		now description entry is "Hand a bottle of clean water to Diego";
	[]	
	if carried of dog milk > 0 and CoyoteTricks > 4 and DiegoButtSlut is 0 and DiegoChanged < 2: [Diego hasn't been opened for anal play and isn't fully feminine]
		choose a blank row in table of fucking options;
		now title entry is "Trick [if DiegoChanged is 0]him[otherwise]her[end if] into drinking dog milk";
		now sortorder entry is 4;
		now description entry is "Arrange for Diego to chug your bottle of transforming canine milk";
	[]
	if carried of orc cum > 0 and CoyoteTricks > 4 and DiegoChanged is 0 and DiegoButtSlut < 3: [Diego hasn't been transformed towards being female and isn't fully mpreg-able]
		choose a blank row in table of fucking options;
		now title entry is "Trick him into drinking orc cum";
		now sortorder entry is 5;
		now description entry is "Arrange for Diego to chug your bottle of orc cum";
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
				if (nam is "Just chat a bit"):
					say "[DiegoTalk1]";
				if (nam is "Share some ideas about tricks to play on people with him"):
					say "[DiegoTalk2]";
				if (nam is "Offer him a bottle of water to drink" or nam is "Offer her a bottle of water to drink"):
					say "[DiegoTalk3]";
				if (nam is "Trick him into drinking dog milk" or nam is "Trick her into drinking dog milk"):
					say "[DiegoTalk4]";
				if (nam is "Trick him into drinking orc cum"):
					say "[DiegoTalk5]";						
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro coyote woman, shaking your head slightly as [if DiegoChanged is 0]he[otherwise]she[end if] gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
				
to say DiegoTalk1:		
	if DiegoChanged is 2: [female]
		if graphics is true:
			project the figure of DiegoFem_face_icon;		
		say "     [one of]'I think I'm in heat!'[or]'God what I wouldn't give for a nice, thick, coyote cock right about now... to fill my empty pussy...'[or]'Hell I'm almost too horny to think about tricking anyone... almost.'[or]'This was the best trick I ever had played on me!' Diego says with a happy grin on her muzzle as she rubs her new body.[or]'You know, I hear there is an alpha wolf out there in the city looking for bitches... maybe we should go check it out together?' She asks with a twinkle in her eye.[or]'Where did you get that wonderful milk from anyways? Not that I won't be making some milk of my own as soon as I can find a nice stud to knock me up...' Diego says with a smile as she rubs her breasts eagerly.[or]'I wonder if there is any nice canine studs around who want to play hide the knot?'[or]'If you play with the felinoids in the park, you could end up a slutty little pussy for their amusement, doesn't that sound fun?'[or]'The skunk girls are all pets of the larger skunk-beasts. Nice little submissive pets for the strong skunks to fill up with their fertile seed... mmm' Diego moans and rubs herself, obviously aroused by the thought of being a beast's pet.[or]The coyote bitch pants and yips softly, obviously too busy masturbating to bother talking to a boring person like yourself.[or]'I saw a woman riding a horse go by here a while back, I'm pretty sure though the horse would be the one doing the riding eventually though, if you know what I mean.'[or]'God I never knew being a bitch was so much fun, I'm so glad this happened!'[or]'I wonder if any of those nice German Shepherds in town would like to play with a coyote.' she says with a speculative look on her face.[or]'I heard there was a woman caught by some huskies recently to be turned into a nice little submissive husky bitch. I can kind of envy her now,' she says with a smile.[at random]";
	otherwise if DiegoChanged is 1: [herm]
		if graphics is true:
			project the figure of DiegoFem_face_icon;		
		say "     [one of]'Damn fine trick you pulled there!'[or]'Thank God I still have my nice thick coyote cock' Diego says with a grin as he rubs said cock suggestively.[or]'Hell I can't decide whether I should pull a trick on you, or thank you for this.' She says as she gestures at her changed body.[or]'You know, I hear there is an alpha wolf out there in the city looking for pack-members, maybe you should go see if he has room for you?' She suggests with a twinkle in her eye.[or]'Where did you get that wonderful milk from anyways?' Diego says with a grin as she licks her lips.[or]'I saw a woman riding a horse go by here a while back, I'm pretty sure though the horse was the one doing the riding eventually though if you know what I mean.'[or]'There was a deer around here recently at some point, she looked kinda lonely if you know what I mean...'[or]'I wonder what's bigger...' Diego muses with a thoughtful expression on her muzzle, 'The horse cocks here in the park, or the zebra cocks in the zoo...'[or]'Careful around the cute chinchilla in the park, they are almost as tricky sometimes as I am.'[or]'I wonder how much those strange cock plants are going to keep spreading.'[or]'Cock and pussy, best of both worlds!'[or]'I heard there was a woman caught by some huskies recently to be turned into a nice little submissive husky bitch,' she says with a smile.[at random]";
	else: [male]
		if graphics is true:
			project the figure of Diego_face_icon;		
		say "     Diego says, '[one of]Hmm, advice eh? How's this, always remember to brush your teeth after giving a blowjob, good hygiene is still important!'[or]Have you tried looking in some of the small lairs in the park? You might find something worthwhile, just be careful to wait until no ones home before you take a peek.'[or]Don't mess with badgers, seriously even I wouldn't kid you about those dangerous buggers.'[or]I hear there was a doe hanging around here at some point, if ya want her to go with ya just make sure to grab her right away.'[or]Have you seen those handsome felinoids out there? Maybe you should try petting one a few times, I'm sure you will find it educational.'[or]I hear if you play with the small felines enough, a big strong alpha lion will show up.'[or]If you see some wyverns fighting in the park, you should probably just watch and not interfere, not your business right?'[or]There's some weird skunks out there, but I hear the bigger beasts are lots of fun to play with.'[or]Happy with your current look? Then this is definitely not the place to be.'[or]Don't worry about any of the plants you see moving around the park, just go give them a pet they are pretty much harmless.'[or]Have you seen any little yellow rodents in the park? Seems to me like something you might be interested in.'[or]Don't hit the chinchillas! Hurting something that cute has to be against some kinda law, you wouldn't want to get in trouble now would you?'[or]The bitches love the nice thick coyote cock.'[or]Feel like a real trickster today? Why not try tricking me and see what happens?'[or]I bet you can't trick old Diego here, just give it a try!'[at random]";

to say DiegoTalk2:
	try Diegotricking;
	
to say DiegoTalk3:
	if DiegoChanged > 0 and graphics is true:
		project the figure of DiegoFem_face_icon;	
	otherwise if graphics is true:
		project the figure of Diego_face_icon;	
	say "     Accepting your water bottle with eager paw-hands, Diego gives you a wide grin and says, 'That's downright neighbourly of you my friend. Thanks!' With that said, the coyote unscrews the lid, giving an almost imperceptible nod at the fact that it was still properly sealed. Leaning back his head, the anthro canine pours the water into [if DiegoChanged is 0]his[otherwise]her[end if] open muzzle, chugging it down thirstily. 'Aaah, now that hit the spot! Makes me feel more ready for playing tricks right away,' [if DiegoChanged is 0]he[otherwise]she[end if] says with a grin, tail wagging left to right.";
	decrease carried of water bottle by 1;
	extend game by 4;	
	
to say DiegoTalk4: [transform Diego towards being female]
	if DiegoChanged is 1: [herm Diego]
		if graphics is true:
			project the figure of DiegoFem_face_icon;		
		say "     'Hey you have more of that wonderful milk.' Diego says with a grin on her new muzzle as she sniffs the air, her coyote tail wagging behind the herm coyote eagerly. 'Well the damage is already done, and that stuff tasted amazing so one more drink couldn't hurt - right?' Diego says as she looks at you hopefully, eyeing the bottle of milk you are holding out teasingly.";
		say "     [bold type]Do you give Diego some more of the milk?[roman type][line break]";
		if player consents:
			say "     [line break]";
			say "     You grin as you hand the eager coyote herm another container of the thick transformative canine milk, enjoying the eager look on her muzzle as she quickly gulps down another dose of the milk. 'Ah that's still so damn good...' Diego says with a smile as she finishes drinking the liquid, handing the empty container back to you as she strokes herself absently. 'Hey wait,' the coyote herm says as she moans again, staggering a bit as her body obviously begins to heat up from within as she begins to change. 'I'm already a herm, what now? Oh shit no...' The coyote pants out as her hands go down to her thick canine cock, rubbing at it and stroking it as it seems to shrink into her body.";
			say "     'Noooo...' Diego pants out as she strokes her vanishing cock with her increasingly paw like hands, the rest of her body seeming to change into a slightly more bestial form as well. 'Oh god,' She moans as she ceases to be a male completely, her rod vanishing into her body even as her breasts swell larger, 'Feels so good...' Diego moans as the new female's hands begin to rub and stroke herself erotically. The newly formed bitch begins to yip in pleasure as she moves her paw-like hand over her new mound, finally letting out a long coyote howl as she brings herself to orgasm before leaning up against the wall panting.";
			say "     [WaitLineBreak]";
			say "     Eventually Diego looks back at you with a satisfied grin on her face. 'Guess fool me twice, shame on me eh?' she says, seeming not at all displeased as her paws begin to roam her new body again. 'I'd probably be annoyed, if this wasn't the best feeling ever...' The coyote bitch says with a smile on her muzzle as she looks at you happily. 'I feel so damn horny and sexy like this, it's amazing. Hell I think I might even be in heat!' She says eagerly, panting happily at the prospect while her paws begin to rub over her soft fur again, the trickster obviously forgetting you are there watching as she begins to pleasure herself yet again.";
			decrease carried of dog milk by 1;
			now DiegoChanged is 2;
			now the icon of Diego is Figure of DiegoFem_icon;
			say "     [line break]";			
		else:
			say "     'Aw, still your probably right, best not to push my luck.' The coyote herm says as she shoots your backpack a longing look as you put the milk away, before settling back up against the wall with a sigh.";
	otherwise if DiegoChanged is 0: [male Diego]
		if graphics is true:
			project the figure of Diego_face_icon;
		say "     Deciding to play a whole different sort of trick - on Diego, this time - you rummage around in your backpack until you find the milk from the canine you fought earlier. 'Hey something smells good there,' the tricky coyote says as you set down the bottle on the low wall surrounding the park, then proceed to flash it through his line of sight a few more times as you re-arrange the packing order of your supplies.";
		say "     'Damn,' Diego says with a sad smile as he looks at you with large coyote eyes, 'It's just so much work tricking the man, very very thirsty work if you know what I mean.' The trickster says with a smile on his muzzle, 'Why not help a fellow out, if you know what I mean?' He says hopefully as he eyes the bottle of milk right on top of your still open backpack.";
		say "     [bold type]Do you decide to continue and give him the changing milk?[roman type][line break]";
		if player consents:
			say "     [line break]";
			say "     Handing the transformative drink to the unsuspecting coyote, you watch eagerly as Diego leans his head back and pours the thick liquid into his open maw, gulping it down thirstily. 'Damn that hit the spot, thanks bud,' Diego says as he hands the empty container back to you, before pausing with a strange look on his muzzle. 'Oh shit,' The coyote man says as he doubles over for a second, his hands going to his groin and chest as he moans slightly, 'What kind of milk was that?' The changing coyote says as he begins to pant with need as he rubs himself, 'God it feels so good.' Diego moans, as you can see his chest swelling out with a new pair of soft breasts. The changing coyote moans, as he straightens up and leans back against the wall, eyes half closed in pleasure as his hands reach down to stroke at his crotch.";
			say "     One of his hands rubbing along his stiff rod eagerly, while the other reaches underneath his cock to rub and stroke at her brand new female opening. The sight makes you grin as the lust-filled new coyote herm moans wantonly as she plays with herself, your own body growing excited as she brings herself to orgasm, her seed coating one hand, even as her wet juices spill out over the other as she shudders in ecstasy. Panting from pleasure and exertion, Diego lowers her head and looks at you with a wry grin on her muzzle. 'Well damn, that was a nice trick there,' The coyote herm admits as her hands begin to wander over her changed body again. 'I guess you got me that time then, maybe I should give you a little reward for being such a good trickster?' The new herm says with a lewd wink as she eyes your body eagerly.";
			decrease carried of dog milk by 1;
			now DiegoChanged is 1;
		else:
			say "     [line break]";					
			say "     'Damn, what a tease.' Diego says sadly as you slip the milk back into your pack, 'I taught you too damn well it seems.' The coyote says with a sigh as he watches the milk vanish back into your pouch.";
			
to say DiegoTalk5: [transform Diego towards being open for anal]
	if graphics is true:
		project the figure of Diego_face_icon;	
	if DiegoButtSlut is 1 or DiegoButtSlut is 2: [already open for anal, virgin or not]			
		say "     As you start digging in your backpack, Diego raises his head and sniffs the air. 'I think I know what you're up to my friend. Got some more 'nut milk' you wanna share with your coyote buddy, don't you?' he says with a grin his tail wagging eagerly. 'Well, with how great it tasted last time, you don't have to trick me into taking it...' the canine trickster adds with a hopeful look, licking his lips as you pull out your bottle of orc cum, waving it around teasingly.";
		say "     [bold type]Do you give Diego some more orc cum to drink?[roman type][line break]";
		if player consents: [give it to Diego]
			say "     [line break]";
			say "     Unscrewing the lid of the bottle, you step up to your canine friend - but this time, you playfully bat away his paw-hand as he reaches for it. Instead of just giving the coyote the bottle of cum, you put your other hand on the anthro's chest, feeling his warmth and the beat of his heart, then slide it up and behind his neck. Getting a good grip of the lusciously soft neck-fur on your buddy, you pull Diego's head back in a demanding tug - to which the coyote gives an aroused grunt, chuckling as his own paw-hand begins to stroke your side. As he opens his maw wide, tongue pushed out eagerly, you pour a first dollop of cum on it.";
			say "     Tightening your grip on the back of his neck a little stops the canine from just gulping it down right away, instead allowing the creamy-white cum to slowly trickle over his tongue. You add a little more once or twice, savouring the moment of feeding this panting male his tasty treat. Looking down, Diego's reddish shaft is already well on its way of pushing out of his sheath, hardening further with every moment. You move your hand from his neck to one of the large ears on the coyote, stroking its sensitive shape in sensual slowness. Then you lean in and whisper what a good dog he is, saying that that deserves a reward - and with that, you start pouring half the bottle of orc cum into Diego's maw.";
			say "     [WaitLineBreak]";
			say "     Your trickster buddy thirstily gulps down more and more of the creamy treat, even licking the last drop off his lips and reaching out for more as you eventually pull away the bottle. 'Damn that hit the spot, thanks bud. I love the taste. Wanna give me the rest of it too?' Diego says as eyes the plastic bottle in your hand, his words slurred just a little bit as the potent seed starts showing an effect. 'Got quite a kick after a moment - good stuff,' he moans and gives you a lusty grin, one paw-hand moving to slide around your hips and pull you closer, the other reaching for the bottle in your hand. You happily accept the naked canine rubbing up against your side, the longer fur on his cheeks tickling your face, but at the same time, you do keep the remaining amount of 'nut-milk' out of Diego's grasp.";
			say "     Sliding your arm down behind Diego, you move a hand past his wagging tail and give the firm buns on his wiry body a squeeze, then dip a finger into the coyote's quivering pucker. 'OooohhhHH! Yeah, that feels good. Finger my ass!' the aroused canine calls out in pleasure, by now wholly unconcerned about anyone hearing him admit to the great feelings he gets from having his tailstar played with. You proceed to toy with Diego a bit, sliding in your finger to brush against his prostate for a second, then pulling out to just circle his pucker in a slow caress before - almost - penetrating it again and again. 'God, I'm so horny right now! Give me MORE!' Diego moans deeply and humps his erection against the side of your hips a little.";
			say "     [WaitLineBreak]";
			say "     Having gotten the anthro canine desperately aroused, you tell him to get on all fours and raise his rear like a bitch waiting to get mounted. He looks into your eyes for a second while giving a beaming grin, then says in an amused tone, 'Well played, bud. You're good at getting what you want.' With a happy lick to your face, the canine lets go of you and drops to all four paws, his lithe form waiting for you with raised butt and wagging tail. You take in the sight with great pleasure at having pushed the formerly so vehemently straight coyote this far, then plant a hand on one of his soft-furred, firm buttocks and give it a a possessive squeeze. Moving on from that after a good long moment of just groping him, you slide two fingers against Diego's pucker, sinking them into his readily stretching back passage.";
			say "     Finger-fucking your moaning and barking buddy, you push your digits in and out of his asshole in a steady rhythm, eventually adding a third finger to open him up even wider. Then at one point, you yank your fingers out of his gripping hole and bring up the bottle you're still holding. Gaping open as it is from waiting for your fingers to return, it is quite easy to pour the rest of the orc warrior's load into your canine trickster and you can't help but grin widely at the nice sight of his cream-filled hole. Diego lets out a breathless gasp as the potent load starts to soak into his inner walls to be absorbed.";
			say "     [WaitLineBreak]";
			say "     Reflexively pulling closed, the canine's pucker sends out a little bit of the orc cum squirting out - only for you to catch it with your fingers and proceed to push it back inside him. Sliding your digits into the now slick and wet back passage of the anthro coyote, you push the cum deeper and deeper, stretching open his insides to let it sink in and massaging it into Diego's prostate. Of course the anal stimulation as well as copious amounts of aphrodisiacs absorbed through his stomach and ass do push the coyote past all limits of arousal - and he howls out loud as he starts to come within moments, his whole body trembling as his balls send forth pulse after pulse of cum to splatter the ground under him.";
			say "     As Diego rocks back against your hand during his orgasm, your fingers are wedged into him deeply - and you feel something quite interesting happen. One moment, your fingertips are pressed against a yielding, yet quite solid wall of his inner passage, just a bit behind the coyote's prostate. And then... it seems to pull back from your finger, that one spot getting deeper?! A heartbeat later, you can't feel any push-back against your fingertip anymore, the sensation replaced by a snug ring of muscle closing in to surround your digit lower down.";
			say "     [WaitLineBreak]";
			say "     You pull your hand back a little and feel around some more - there's Diego's prostate (making him twitch a little as you push against it), and further inside him... is that 'second pucker'? No matter what it is, the canine gasps in pleasure as you push against and through it with your finger, wiggling the fingertip in what seems to be some enclosed space in Diego's insides. As Diego's orgasm winds down eventually, you end your exploration and slip the fingers out of him, wiping them against his soft fur. After that, he sinks down on the floor, sitting down on a clean spot beside the cum puddle his orgasm left and pants loudly to cool his overheated body down.";
			say "     'That was *pant* something else *pant*,' he says and looks up at you, a beaming grin spreading over his muzzle. 'I'm so glad you tricked me into drinking that first bottle. These feelings are just unbelievable!' For now, you decide to keep quiet about what you felt happening up his butt. Given the source of the trickster's creamy filling and the life-cycle of the all-male orc tribe, you do guess that your canine friend is due for quite a few more unbelievable things. Like a litter of puppies for example... not yet right now would be your guess, as the breeding pouch just formed, but quite likely after another anal adventure for Diego.";
			decrease carried of orc cum by 1;
			now DiegoButtSlut is 3;
		else: [nope, just easing]
			say "     [line break]";					
			say "     'Damn - what a tease,' Diego remarks as you slide the bottle back into your pack with a grin, then close the zipper and swing the backpack over one shoulder. Licking his lips thirstily, he flicks an ear in amusement as he adds, 'I taught you too damn well it seems.'";
	otherwise if DiegoButtSlut is 0: [straight Diego]
		say "     Deciding to play a whole different sort of trick - on Diego, this time - you rummage around in your backpack until you find the small bottle of creamy cum you milked out of an orc's thick green prick. Just looking at it reminds you to be quite impressed with the brute's virility - especially since this wasn't even his full load, but rather just what fit in the body. 'Hey something smells good there,' the tricky coyote says as you set down the bottle on the low wall surrounding the park, then proceed to flash it through his line of sight a few more times as you re-arrange the packing order of your supplies.";
		say "     'Damn,' Diego says with a sad smile as he looks at you with large coyote eyes, 'It's just so much work tricking the man, very very thirsty work if you know what I mean.' The trickster says with a smile on his muzzle, 'Why not help a fellow out, if you know what I mean?' He says hopefully as he eyes the bottle of what he must think is milk right on top of your still open backpack.";
		say "     [bold type]Do you decide to continue and give him the orc cum?[roman type][line break]";
		if player consents: [give it to Diego]
			say "     [line break]";
			say "     Handing the bottle to the unsuspecting coyote, you watch eagerly as Diego unscrews the top of the bottle and sniffs at it. His tail starts wagging slowly as he remarks, 'Hmm, smells good. Does it have almonds in there?' Grinning, you tell him that it's some sort of nut-milk, but don't expand into more detail. He raises the bottle and calls out 'Cheers!', then leans his head back and pours the thick liquid into his open maw, gulping it down thirstily. 'Damn that hit the spot, thanks bud. I love the taste,' Diego says as he hands the empty container back to you, before pausing with a strange look on his face.";
			say "     'Oh wow,' the coyote man says as he has to brace himself against the wall as he sways a little. 'You didn't tell me it had alcohol in it. Got quite a kick after a moment, good stuff.' Slurring his last words just a bit, the coyote looks amused and pretty turned on - obviously so, as the reddish shaft of his cock starts to push out of Diego's sheath. Explaining that it isn't exactly alcohol that's giving your canine friend his buzz, you watch with amusement as he starts panting loudly and lowers a hand to rub his manhood. 'God, I'm so horny right now!' Diego moans and strokes his shaft up and down.";
			say "     [WaitLineBreak]";
			say "     After a few more moments in which you can almost see the coyote's arousal build up higher and higher, Diego adds, 'And... there's this tingly feeling back here...' With that said, he reaches back to his tail, letting out a bark of, 'OH GOD! Tha's... wow!' as he brushes the quivering ring of his pucker with a finger. 'Why does this turn me on so much?' your tricked buddy asks himself, then turns his head to look at you with a wide eyes. 'Just what kind of milkshake did you give me?!' comes a somewhat breathless question next, followed by a lusty groan as he can't help but stroke over his tailstar once more.";
			say "     The jig's up - so you grin widely at Diego, explaining that he chugged down a whole bottle of orc cum. The canine gapes at you for a second, then closes his maw and lowers his head, coming back up with a wry grin on his muzzle. Chuckling, he admits, 'Well damn, that was a nice trick right here and now! Played this fool of a dog like a fiddle - and I thought I was milking you for a drink! And a damn tasty one at that - even if it left me with a downright weird sensation back under the tail.' Taking a deep breath, the coyote then reaches back again to calmly poke at his pucker again - which causes his whole body to shiver in arousal, complete with a little spurt of pre from his hard cock.";
			say "     [line break]";
			say "     [bold type]Do you leave the anthro dog to figure out his now much more sensitive back passage on his own, or do you want to introduce Diego to being fingered yourself?[roman type][line break]";
			say "     [line break]";
			say "     ([link]Y[as]y[end link]) - Watch him finger his ass till he comes.";
			say "     ([link]N[as]n[end link]) - Slide your digits up the coyote's rear end and show him a good time.";
			if player consents: [watch him experiment]
				say "     [line break]";
				say "     Standing back, you watch with amusement as the - up till now - quite vehemently straight coyote works himself up to actually sliding a finger up his sensitive tailstar. As he does so, Diego lets out a loud moan that expresses how shockingly good it feels to him - soon followed by an orgasmic howl as he bumps his prostate. With the fingers of his other hand wrapped around his throbbing erection, the coyote squeezes his bulging knot tightly, no doubt imagining that it is buried in a willing bitch as he shoots a heavy load all over the ground.";
			else: [get into the action]
				say "     [line break]";
				say "     Stepping up close to Diego, you put your hand on his, causing the coyote to look at you and say, 'Hey, what are you do-oooohhhhHHH!' His question leads over into a drawn-out moan as you nudge his fingers aside and poke at the canine's tailstar, stroking the all new pleasure spot he hasn't gotten used to yet. Then you gather up a bit of spit and pull your hand away from the coyote for a moment, letting the gob drip down on your fingers. Bringing your hand back down to the trickster's buttocks, you rub his rear entrance teasingly, then push in against it and slowly work your digits inside. Diego can't help but moan loudly at the feeling of his tight hole being stretched by your fingers.";
				say "     Enjoying the fact that you're molesting the asshole of a - up till now - quite vehemently straight male coyote, you slowly slide in and out just a little, drawing moans of pleasure from your trickster buddy. Then you decide to push deeper and feel around a little, soon finding the anthro coyote's prostate. For a second, you just rest your fingertips on the little bulge, then give it a rub - which immediately draws an orgasmic howl Diego. With his inner muscles suddenly clamping tight around your digits, the coyote trembles all over and his hand squeezes the bulging knot of his cock tightly. He is no doubt imagining having his prick buried in a willing bitch as he shoots a heavy load all over the ground - but both of you know that it was your stimulation that pushed him over the edge.";
			decrease carried of orc cum by 1;
			now DiegoButtSlut is 1; [anal ok Diego]
		else: [nope, just easing]
			say "     [line break]";					
			say "     'Damn - what a tease,' Diego remarks as you close up your pack and shift it back to hang over one shoulder. Licking his lips thirstily, he flicks an ear in amusement as he adds, 'I taught you too damn well it seems.'";

Diegotricking is an action applying to nothing

Understand "Trick Diego" as Diegotricking.
Understand "Trick military" as Diegotricking.
Understand "Trick coyote" as Diegotricking.
Understand "delay military" as Diegotricking.

Check Diegotricking:
	If Diego is not visible, say "Who?" instead;

carry out Diegotricking:
	if DiegoChanged > 0 and graphics is true:
		project the figure of DiegoFem_face_icon;	
	otherwise if graphics is true:
		project the figure of Diego_face_icon;	
	if LastDiegoTricked - turns is less than 6:
		say "     'Sorry bud, only so much time for tricking people in the day,' Diego says as [if DiegoChanged is 0]he shakes his[otherwise]she shakes her[end if] head sadly, 'Trick people too much and it just gets stale, so come back and try again later.'";
		stop the action;
	now LastDiegoTricked is turns;
	say "     Diego gives an impish grin as you approach him and say that you got an idea, then says, 'Oh? So you think a new little trickster like you can pull one out of his hat that beats my tricks? Let's see what you got!'";
	say "     [line break]";
	let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
	if 2 is listed in bookcollection, increase bonus by 2;
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Intelligence Check):[line break]";
	increase diceroll by bonus;
	if diceroll is greater than 18:
		say "     As you lay out the plan you've come up with, Diego exclaims happily, 'Woah amazing! Are you sure you aren't part coyote? I mean, damn that's one impressive trick!' The coyote shakes [if DiegoChanged is 0]his[otherwise]her[end if] head in admiration and pats the side of your arm in a friendly manner. 'That kinda trick will get some extra effort on my part. Can't wait to put it into action, hah! Should take those silly military types ages to get it all sorted out!' Letting his eyes roam over the city stretching out around you, the coyote grins broadly - no doubt imagining the chaos he'll create in short order. And that all thanks to your help.";
		increase CoyoteTricks by 2;
		extend game by 18;
		if CoyoteTricks > 4 and DiegoChanged is 0 and DiegoButtSlut is 0:
			say "     [line break][line break]";
			say "     Turning his attention back to you, the anthro canine licks his lips and then says, 'Damn, playing so many tricks on the man is making a dishonest coyote mighty thirsty. You wouldn't happen to have anything to help a fellow out now would you?' He gives you a hopeful look, glancing over to your gear.";
			say "     ([bold type]Diego trusts you enough to accept something to drink from you now. Maybe give him some water, or other liquids that could have fun effects on the guy.[roman type])[line break]";		
		if CoyoteTricks > 3 and prankevent is 0:
			now Prank Aftermath is not resolved;
			now prankevent is 1;
	otherwise if diceroll is greater than 12:
		say "     As you lay out the plan you've come up with, Diego gives a happy grin and says, 'Dang that's a good one! Not quite up to my usual standards of course, but pretty damn good!' The coyote nods to you with [if DiegoChanged is 0]his[otherwise]her[end if] canine head, then lets [if DiegoChanged is 0]his[otherwise]her[end if] eyes roam over the city stretching out around you. 'I think I'll try your idea on some of the army scouts - might just earn ya a bit of time, and create fun for me.'";
		extend game by 6;
		increase CoyoteTricks by 1;
		if CoyoteTricks > 4 and DiegoChanged is 0 and DiegoButtSlut is 0:
			say "     [line break][line break]";
			say "     Turning his attention back to you, the anthro canine licks his lips and then says, 'Damn, playing so many tricks on the man is making a dishonest coyote mighty thirsty. You wouldn't happen to have anything to help a fellow out now would you?' He gives you a hopeful look, glancing over to your gear.";
			say "     ([bold type]Diego trusts you enough to accept something to drink from you now. Maybe give him some water, or other liquids that could have fun effects on the guy.[roman type])[line break]";
		if CoyoteTricks > 3 and prankevent is 0:
			now Prank Aftermath is not resolved;
			now prankevent is 1;
	else:
		say "     As you lay out the (admittedly pretty lame) plan you've come up with, Diego says derisively, 'You call that a trick?' Snickering at your pathetic attempt, the coyote waves you closer in a conspiratory way and adds, 'Now listen well - THIS is how a master trickster does things!' [if DiegoChanged is 0]He[otherwise]She[end if] whips out a trick that almost makes you stagger back in shock from the sheer nerve and lewdness that Diego possesses in spades. Even just imagining the chaos he'll create makes you feel a bit less human and more used to the new reality of this city...";
		decrease humanity of player by 10;

the fuckscene of Diego is "[SexWithDiego]".

to say SexWithDiego:
	if CoyoteTricks < 5: [not done enough tricks]
		say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and lets his eyes wander over your form. 'Hmm... maybe. I'll really have to think about your offer for a while,' he says, reaching down to adjust his furry balls a little. 'There's lots of gals in this city here who want some of this, so I don't just hump anyone. And since you aren't much of a trickster, I don't know if if you're worth my while...' he goes on to say, finishing up with a grin and a wink.";
		say "     [bold type]Sounds like he wants you to join in for his pastime of playing tricks on people.[roman type][line break]";
		stop the action;
	otherwise if cocks of player > 0 and DiegoChanged is 0 and DiegoButtSlut is 0: [male+herm player and regular male Diego]
		if cunts of player > 0: [herms]
			say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and lets his eyes wander over your form. 'Hmm you look pretty good there,' Diego says with some interest, 'Sadly though, I can already tell you have a trick hidden away next to your lovely treat.' The coyote says as he gestures to your cock. 'Nice try there - but this coyote is just here for the ladies. Better luck next time, eh? Be sure to come back to me if you happen to become a full woman though.'";
		else: [male]
			say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and crosses his arms while taking in your form. 'Heh, you want to play with a hot coyote stud like me?' Diego says with amusement, 'Hard to blame you for that I know, but I think I'll pass. You may be a good trickster, but figuring out the two guys arrangement isn't a trick I happen to be interested in. Why don't you go out and have some fun, then come back as a lovely female, eh?'";
	otherwise if lastfuck of Diego - turns < 6:
		if DiegoChanged is 2: [FemDiego]
			say "     'Sorry there stud,' Your little coyote bitch pants as she looks up at you with a happy expression on her muzzle, 'I still haven't recovered from last time yet, maybe you should try coming back just a little later?' Diego asks somewhat pleadingly.";
			stop the action;
		else: [herm Diego or regular]
			say "     'Sorry there, the little coyote can only come out to play every so often,' Diego says with a smirk on [if DiegoChanged is 1]her[otherwise]his[end if] muzzle.";
			stop the action;
	else:
		say "[DiegoSexMenu]";

to say DiegoSexMenu:
	setmonster "Coyote";			
	if graphics is true:
		project the figure of Diego_face_icon;	
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	if DiegoChanged < 2:
		choose a blank row in table of fucking options;
		now title entry is "Suck Diego's cock";
		now sortorder entry is 1;
		now description entry is "Give [if DiegoChanged is 0]him[otherwise]her[end if] a blow-job";
	[]
	if (cocks of player > 0 and (DiegoChanged > 0 or DiegoButtSlut > 0)):
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck [if DiegoChanged is 0]him[otherwise]her[end if]";
		now sortorder entry is 2;
		now description entry is "Use the coyote's mouth";
	]
	if (cunts of player > 0 and DiegoChanged < 2):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's dick (vaginal)";
		now sortorder entry is 3;
		now description entry is "Let the coyote fuck you";
	[]
	if (DiegoChanged < 2):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's dick (anal)";
		now sortorder entry is 4;
		now description entry is "Let the coyote fuck you";
	[]
	if (cocks of player > 0 and DiegoChanged > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's pussy - Fuck against the wall";
		now sortorder entry is 5;
		now description entry is "Fill the coyote's pussy with your cock";
	[]
	if (cocks of player > 0 and DiegoChanged > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's pussy - Doggystyle";
		now sortorder entry is 6;
		now description entry is "Fill the coyote's pussy with your cock";
	[]
	if (cocks of player > 0 and DiegoChanged > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's pussy - From behind, against the wall";
		now sortorder entry is 7;
		now description entry is "Fill the coyote's pussy with your cock";
	[]		
	if (cocks of player > 0 and DiegoButtSlut > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's ass - Fuck against the wall";
		now sortorder entry is 8;
		now description entry is "Fill the coyote's ass with your cock";
	[]
	if (cocks of player > 0 and DiegoButtSlut > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's ass - Doggystyle";
		now sortorder entry is 9;
		now description entry is "Fill the coyote's ass with your cock";
	[]
	if (cocks of player > 0 and DiegoButtSlut > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's ass - From behind, against the wall";
		now sortorder entry is 10;
		now description entry is "Fill the coyote's ass with your cock";
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
				if nam is "Suck Diego's cock":
					say "[DiegoSex1]";
				otherwise if (nam is "Face-fuck [if DiegoChanged is 0]him[otherwise]her[end if]"):
					say "[DiegoSex2]";
				otherwise if (nam is "Take Diego's dick (vaginal)"):
					say "[DiegoSex3]";
				otherwise if (nam is "Take Diego's dick (anal)"):
					say "[DiegoSex4]";
				otherwise if (nam is "Take Diego's pussy - Fuck against the wall"):
					say "[DiegoSex5]";
				otherwise if (nam is "Take Diego's pussy - Doggystyle"):
					say "[DiegoSex6]";
				otherwise if (nam is "Take Diego's pussy - From behind, against the wall"):
					say "[DiegoSex7]";										
				otherwise if (nam is "Take Diego's ass - Fuck against the wall"):
					say "[DiegoSex8]";
				otherwise if (nam is "Take Diego's ass - Doggystyle"):
					say "[DiegoSex9]";
				otherwise if (nam is "Take Diego's ass - From behind, against the wall"):
					say "[DiegoSex10]";						
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro coyote, shaking your head slightly as [if DiegoChanged > 0]she[otherwise]he[end if] gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DiegoSex1: [face-fuck Diego]
	if DiegoChanged is 2: [femDiego]
		say "     ";
	otherwise if DiegoChanged is 1: [hermDiego]
		say "     ";
	otherwise if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     ";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			now DiegoButtSlut is 4; [Diego mpregged]
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the coyote eyes your proudly erect cock thoughtfully. He's trying to keep his composure, but you can easily tell that the male canine is getting excited by the way his tail twitched up and is slowly wagging behind his back. You can't help but grin as you press closer to his body and reach out, stroking his soft fur teasingly. 'I guess we could do that, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, his tongue starting to hang out of his muzzle as the scent of an aroused male speaks to his new instincts.";
		say "     Since the coyote male stays slightly on the fence about this, you slide your arm around his shoulder and run your fingers through the soft and thick fur over his neck, then grip it tightly, pulling his head back a little. The anthro canine reacts with an aroused grunt, allowing himself to be man-handled like this and wagging his tail. Looking down, you see that his cock even is starting to poke out of its sheath - the trickster is getting turned on by the rough treatment. Grinning at Diego, you tighten your grip a little more and then tell him that he should be a good dog and kneel.";
		say "     [WaitLineBreak]";
		say "     Giving a lusty rumble from the depths of his throat, starts to sink to the ground, getting to just the right height in front of your crotch. Still keeping your hold on his neck-fur, you pull the canine towards your crotch and <...>";
		say "     [WaitLineBreak]";
		say "     Eventually, you relax your grip on his neck, slowly drawing your rod out of his long muzzle, even as Diego is still lapping at it with his tongue. You can feel a grin tugging at your face as the coyote licks his lips and gives your manhood a hungry gaze. You have a feeling that the lovely little coyote won't be forgetting this particular trick anytime soon...";	
		if DiegoButtSlut is 1: [anal OK Diego]
			now DiegoButtSlut is 2; [Diego fucked anally by the player]
	now lastfuck of Diego is turns;
	coyotify;

to say DiegoSex2: [BJ for Diego]
	if DiegoChanged is 1: [herm]	
		say "     <WIP SCENE>";	
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	else: [male Diego]			
		say "     <WIP SCENE>";	
						
to say DiegoSex3: [player pussy fucked by Diego's dick]
	if DiegoChanged is 1: [herm]
		say "     'Hey glad you still want to come play with Diego even after that trick you pulled on me,' the coyote herm says with a grin as she looks at your female body lustily. 'Well I have to admit that was a pretty good trick of yours,' she adds, rubbing her new breasts with one hand while lowering the other to stroke her half-erect cock. 'Now I think I should pay you back with a nice little trick of my own,' she says teasingly as she draws closer to you, one of her furred hands reaching out to stroke along your chest as she lowers her muzzle to whisper in your ear. 'A nice, thick, knotted, coyote trick, to put right in your eager body...' She whispers teasingly, her words making you gasp even as she wraps her arms around you and drags you both down onto the soft grass.";
		say "     The coyote herm laughs at the look of arousal on your face, and when you open your mouth to say something she locks her soft muzzle over your mouth, silencing you as her tongue darts around in your mouth teasingly. Thoughts of protest are soon the last thing on your mind as her soft hands roam your body, the coyote on top of you still knowing just how to tease and arouse a woman. Giving in to the pleasure, you are soon rubbing up against her soft-furred breasts, while her cock is brushing against your damp needy feminine opening. The teasing of the tricky coyote soon has you lifting your body up to meet her cock, trying to get the tricky herm to fill you up properly. You're panting eagerly as each teasing pass brings you closer to the wonderful pleasure you know is coming.";
		say "     [WaitLineBreak]";
		say "     Finally you lift yourself up in just the right moment and her cock slips right inside you, making you gasp as the burning emptiness inside you is filled with Diego's coyote rod. She wastes no time with any more teasing once she has her cock in your slick pussy, and Diego begins thrusting eagerly into your body, her eyes closed tight in pleasure as she lets out short yipping noises with every thrust. The feel of her knot pressing up into your body is simply amazing. At first it was small, just some little bulges at the base of her rod, but now it is spreading you wider with each thrust at it seeks to lock the two of you together. You can tell as you stare up at Diego with lust clouded eyes that the coyote above you is panting with just as much lust as you are.";
		say "     Soon her knot swells up fully while the coyote's shaft is lodged all the way inside you, making you groan as it ties the two of you together. As her thrusts speed up, your hands clench her fur tightly in rapidly building arousal. Then all too soon, she begins to shoot her seed into your needy body. The feel of that wonderful canine cock spurting into you is more than you can stand, and you find yourself crying out as well as your body spasms around Diego's thick meat. The two of you collapse together on the grass, her cock still buried deep in your body as you both pant and try to recover from the intense experience.[fimpregchance]";
		say "     Eventually her knot goes down far enough that she can pull it out of you with a soft popping noise, leaving you feeling strangely empty, even though you are still nice and full of her wonderful coyote seed... The coyote herm slowly crawls back over to the wall, leaning her back against it as she pants in exhaustion and pleasure, a teasing grin on her muzzle as she winks at you. Without another word, you slowly haul yourself back up to your feet, and begin to retrieve your equipment, keeping a careful eye on the tricky coyote just in case.";
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	else: [male Diego]
		say "     'Well after all that tricking and flirting, how could I say no?' Diego says with an amused grin, his paw-like hand reaching out and pulling you closer to him. 'What say we have a go right here then?' the coyote trickster adds with a grin as he moves around you until he is pressing your body up against the wall he was leaning on. 'Hmm, I like what I see,' he says with a grin as his hands roam down your body. You open your mouth to say something, only for the tricky coyote to take advantage of this fact - his long muzzle presses up against your face and he pushes his tongue inside your mouth, tangling with your own in a pleasant little wrestling match. Meanwhile, the coyote's paw-hands settle on your ass, rubbing it softly.";
		say "     'Now now,' Diego pants out as he breaks the deep kiss, 'No more tricks for today, now it's time for you to get your treat.' The male coyote grins widely as his stiff cock rubs up against your crotch. Wasting no more time, he lifts your ass lightly with both his paw-hands slid under your thighs, giving himself a better angle as his cock-tip probes at your hot passage. You find yourself moaning as your back is pressed up against the cool wall, your legs automatically wrapping around the hot coyote stud as he sinks his thick rod into your needy body. 'God you feel so good!' Diego moans as he begins to thrust into you in short powerful thrusts, each one pressing you into the wall as you find your hands gripping his shoulders tightly, encouraging the strong coyote to fuck you even harder.";
		say "     [WaitLineBreak]";
		say "     Soon you feel the base of his cock swelling up inside you, making you moan as he continues to pound you against the park wall. The rough texture of the wall against your back, combined with your sexy coyote's soft fur against your [skin of player] skin creates an interesting sensation that melds together in the sexual haze you're in. Diego's breath comes out in harsh panting as his thrusts speed up, his knot reaching its full extent and locking the two of you together. Then suddenly, he grunts deeply and starts filling your body with his thick, rich seed.[fimpregchance]";		
		say "     Feeling the coyote's cum erupting into you, with the throb of his cock sending little tingles of pleasure up your spine, your own powerful orgasm is triggered just moments later. You find yourself throwing your head back and panting as your body shakes with pleasure. 'Oh yeah, now that was a sweet treat,' Diego mutters as the two of you stay there, your bodies still locked together against the wall by his knot. You find yourself enjoying some moments of silence with him, just holding and stroking each other while Diego's knot slowly deflates until eventually, he is able to pull out with a soft pop. Planting a kiss on your lips, the coyote then sets you back down on your own feet. 'Come back again anytime,' the canine stud says as he leans up against the wall again, seeming to need its support to keep himself stable after all the exertion.";
	now lastfuck of Diego is turns;
	coyotify;	

to say DiegoSex4: [player ass fucked]
	if cunts of player > 0 and DiegoButtSlut is 0: [player has a pussy and Diego isn't ready for anal himself]
		say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and lets his eyes wander over your form. 'Hmm, you look pretty good there,' Diego says with clear interest, but then raises one eyebrow questioningly and adds, 'There's one thing I don't understand though - why would you want me to put my little coyote treat up your rear end? Got a sexy pussy on you, I can tell.' The coyote gestures at your crotch and taps the side of his muzzle, indicating that he can smell your arousal. 'So what do you say? Wanna take this dishonorable gentleman's cock in your pussy?'";
		stop the action;
	else: [Diego plunges his cock into the player's ass]
		say "     'Well after all that tricking and flirting, how could I say no?' Diego says with an amused grin, his paw-like hand reaching out and pulling you closer to him. 'And especially after your neat trick in showing me how much fun one can have with someone's rear end. What say we have a go right here then?' the coyote trickster adds with a grin as he moves around you until he is pressing your body up against the wall he was leaning on. 'Hmm, I like what I see,' he says with a grin as his hands roam down your body. You open your mouth to say something, only for the tricky coyote to take advantage of this fact - his long muzzle presses up against your face and he pushes his tongue inside your mouth, tangling with your own in a pleasant little wrestling match. Meanwhile, the coyote's paw-hands settle on your ass, rubbing it softly.";
		say "     'Now now,' Diego pants out as he breaks the deep kiss, 'It's time for you to get your treat.' The male coyote grins widely as his stiff cock rubs up against your crotch. Wasting no more time, he turns you around and pushes against your upper back, guiding you to lean against the wall, ass sticking out towards him. With a swift tug from eager fingers, the coyote pulls your pants off, pulling one foot after the other out of them throwing the garment aside casually. Crouching behind you, Diego says in an amused tone, 'You know, after your little 'nut-milk' trick, I was inspired to think up a few new things myself. Let me show you...' With that, the coyote kneads your buttocks gently and pulls them apart a little, then runs his long tongue up your crack.";
		say "     [WaitLineBreak]";
		say "     Diego proceeds to lap at your hole with eager attention, putting in some slow long licks intermixed with poking the tip of his tongue against your pucker. As you start to relax and push back a little, his slick organ even pushes into you, wiggling around in a quite pleasurable fashion. One thing's for sure - this canine trickster really puts a lot of energy into polishing up his repertoire of 'tricks', giving him a surprising talent for eating your ass out despite being a novice. Eventually raising his muzzle after one more long lick, Diego asks, 'What do you think? Is this nice new trick to spring on people?' Thinking about fit, young military men being put in all sorts of situations that lead to being licked by your trickster friend, you moan out your resounding agreement.";
		say "     Tail wagging wildly, your canine buddy stands up behind you and leans in against you, pressing his soft-furred body against your backside. 'Knew you'd like it,' he whispers into your ear in a very satisfied tone, then reaches down to fondle your slick and relaxed hole. His fingers push into you and give [if cocks of player > 0]your prostate[otherwise]a sensitive spot[end if] a nice little stroke, making you groan out in lust. 'After helping me test out the new trick, I'll now give you an especially big and hard treat,' Diego says with a grin and licks your earlobe, then proceeds to line himself up with your pucker.";
		say "     [WaitLineBreak]";
		say "     The horny coyote grips the side of your hips with one paw-hand and pulls you a little further into bending over, giving himself a better angle as his cock-tip probes at your hot passage. You find yourself moaning as your bracing hands are pressed up against the cool wall, giving the hot canine stud behind you the needed push-back to sink his thick rod into your body. 'God your ass feels so good!' Diego moans as he begins to thrust into you in short powerful thrusts, each one making his furry balls smack against your ass. Your groans of pleasure as he bottoms out again and again encourage the strong coyote to fuck you even harder. One especially nice thing about being taken by Diego is his canine cock - the feel of his knot pressing up into your body is simply amazing.";
		say "     At first it was small, just some little bulges at the base of his rod, but now it is spreading you wider with each thrust at it seeks to lock the two of you together. You can tell from the intensity of Diego's humping and his breathless panting that the coyote is feeling just as much arousal and lust as you are. Soon his knot swells up fully while the coyote's shaft is lodged all the way inside you, making you groan as it ties the two of you together. As his thrusts speed up ever more, Diego's paw-hands clench around your hips tightly and with a loud howl, he begins to shoot his seed deep into your receptive body. The feel of that wonderful canine cock spurting into you is more than you can stand, and you find yourself crying out as well as your body spasms around Diego's thick meat.";
		say "     [WaitLineBreak]";
		if cocks of player > 0:
			say "     Your own cock swings up and down from the intensity of the coyote still humping against you, throbbing with the rapid beat of your heart and the pulse of cum blasting through it, spraying the wall with your load. It almost seems like your orgasms are linked up, as each spurt of Diego's cock inside you is immediately answered by another of your own. Pressed closely together as you ride out your shared orgasms, the two of you lean against the wall, with Diego soon sliding his arms around you from behind, embracing your chest in a gesture of affection. Even when new spurts of cum eventually taper off, his cock is still buried deep in your body and tied to it, giving both of you the time to enjoy some shared moments of togetherness.[mimpregchance]";
		otherwise if cunts of player > 0:
			say "     Your pussy feels really hot and tingly from the sheer intensity of the coyote still humping against your rear and femcum squirts out of it, dripping copiously onto the grass below. It almost seems like your orgasms are linked up, as each spurt of Diego's cock inside you is immediately answered by a spike of arousal from your own body. Pressed closely together as you ride out your shared orgasms, the two of you lean against the wall, with Diego soon sliding his arms around you from behind, embracing your chest in a gesture of affection. Even when new spurts of cum eventually taper off, his cock is still buried deep in your body and tied to it, giving both of you the time to enjoy some shared moments of togetherness.[mimpregchance]";
		else:
			say "     Your whole body feels really hot and tingly from the sheer intensity of the coyote still humping against your rear. It almost seems like your orgasms are linked up, as each spurt of Diego's cock inside you is immediately answered by a spike of arousal from your own body. Pressed closely together as you ride out your shared orgasms, the two of you lean against the wall, with Diego soon sliding his arms around you from behind, embracing your chest in a gesture of affection. Even when new spurts of cum eventually taper off, his cock is still buried deep in your body and tied to it, giving both of you the time to enjoy some shared moments of silence with the other.[mimpregchance]";			
		say "     After a little while of just holding and stroking each other, Diego's knot slowly deflates until eventually, he is able to pull out with a soft pop. Turning you around and planting a kiss on your lips, the coyote then gives you a broad grin and wags his tail wildly. 'Come back again anytime,' the canine stud says as he leans up against the wall again, seeming to need its support to keep himself stable after all the exertion.";
	now lastfuck of Diego is turns;
	coyotify;	
								
to say DiegoSex5: [Diego's pussy fucked - lift her and fuck against the wall]
	if DiegoChanged is 2: [full FemDiego]
		say "     'I thought you would never ask!' the coyote female says with a grin on her muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running her paw-hands over her changed body, she smiles at you and wags her tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' she says teasingly as you approach, spreading her legs slightly as she leans back up against the wall behind her.";
		say "     'Claim your prize then!' she says in a half-moan as she reaches out one of her paws to stroke your [skin of player] side. Grinning at the eager invitation, you waste no time in moving your body up against hers, pinning the coyote to the wall as she moans eagerly in need. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as her arms wrap around you eagerly and her body rubs against yours.";
		say "     [WaitLineBreak]";
		say "     Already highly aroused by the feeling of her sensual body pressing up against yours and the strong scent of a bitch in heat, you need no further encouragement as you rub your [cock of player] rod up against Diego's crotch. She pants eagerly as your tip begins to probe the soft folds, her body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside her. 'Oh god yes,' the coyote bitch moans eagerly, shuddering at the feel of your rod inside her body. Clutching you tightly and panting out needy words, she makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within her is almost too much for the former male, as she groans and yips instinctively in pleasure, her furred legs reaching up to wrap around your body and hold you close. This female Diego's body feels wonderful around your cock as you press her up against the wall, moving in swift sharp thrusts within her warm passage as she clings to your body. 'Yesss, fuck me, make me a proper bitch,' you can hear Diego whispering softly over and over again as she rests her head on your shoulder, her sighs of pleasure encouraging you to pump into her amazing body even harder.";
		say "     [WaitLineBreak]";
		say "     Soon the feel of her body moving up against yours and the amazing feeling of your cock buried deep inside her is too much for you, and you cry out as your [cock of player] rod begins to spill its life-giving seed into your bitch's fertile womb. Your cries mingle with her own bestial howl of ecstasy as the feel of being filled like a proper bitch triggers her own orgasm, her new instincts obviously victorious over any lingering traces of her old male personality.";
		say "     Coming down from the pleasure of the intense mating, the two of you collapse against the wall in a tangle of limbs, her body still wrapped around yours as she moans happily at being bred. 'Thank you so much,' Diego whispers into your ear, as her paw-like hands hold you close, 'Thank you for fucking me properly, and thank you for tricking me into becoming a bitch.' She says as she licks your cheek and rubs her muzzle against your neck.";
		say "     [WaitLineBreak]";
		say "     'I never realized how much I would love being a bitch, being your bitch,' the coyote female says with a grin, as the two of you begin to untangle yourselves from each other. Standing up, you help your newly bred coyote bitch up as well, leaving her leaning up against the wall as she recovers, and somehow you know she will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take her like the prize bitch she now is...";
		if DiegoBitched < 2:
			now DiegoBitched is 2;
	else: [carry wall fuck with herm Diego]
		say "     'Well you know, that is an interesting offer...' Diego says as the herm eyes your proudly erect cock thoughtfully. You can easily tell though, that while she is trying to hide her excitement, your offer has immediately caused her new opening to grow damp. She even spreads her legs slightly as she leans back up against the wall behind her. Also, her tail gives her away by lifting up eagerly behind her, making you grin as you press closer to her changed body. Reaching out, you stroke her soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, her tongue starting to hang out of her muzzle as the scent of an aroused male speaks to her new instincts.";
		say "     Already highly aroused by the feeling of her sensual body pressing up against yours and the strong scent of a bitch in heat, you need no further encouragement as you rub your [cock of player] rod up against Diego's crotch. She pants eagerly as your shaft slides along her own and you close your hand around both of them, jerking slowly up and down. 'Oh god yes,' the coyote herm moans eagerly, humping against your hand a little. After a moment of running your finger teasingly around the tip of her pointed cock, you push the hard rod up a little and feel for the trickster's balls with your other hand. Diego's family jewels are nice and full in their furry sack, and just under them the real prize you're going for is hidden - the wet snatch this anthro canine now calls her own, thanks to your little trick with the milk.";
		say "     [WaitLineBreak]";
		say "     After sliding a finger in between Diego's nether lips and finding her moist and ready, you immediately shift your erection down to line up with it. She groans in lust as your tip begins to probe the soft folds, her body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside her. 'Fuck YEAH,' the coyote bitch moans eagerly, shuddering at the feel of your rod inside her body. Clutching you tightly and panting out needy words, she makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within her is almost too much for the relatively new herm, as she groans and yips instinctively in pleasure, her furred legs reaching up to wrap around your body and hold you close. Diego's feminine parts feel wonderful around your cock as you press her up against the wall, moving in swift sharp thrusts within her warm passage as she clings to your body. 'Take me, take me deep like a bitch,' you can hear Diego whispering softly over and over again as she rests her head on your shoulder, her sighs of pleasure encouraging you to pump into her amazing body even harder. You can't help but greatly enjoy how easily the once tricky coyote is overcome by the needs of her new body.";
		say "     [WaitLineBreak]";
		say "     The sensations of having a strong male pumping his rod into her, washing over the coyote herm's lust-fogged mind, make her react instinctively as she grinds her crotch against yours in order to push your rod deeper. With a broad grin on your face, you slide your arms up behind her soft-furred back, stroking her a little before gripping the scruff of her neck possessively. Moments of hard fucking later, Diego cries out, her legs wrapping even tighter around you as her body shudders in orgasm. The hard cock of the herm coyote, with a fully swollen knot and all, stands straight up between the two of you and erupts with cum-shot after cum-shot, splattering both of your chests and even your chin with the coyote's load.";
		say "     Meanwhile, Diego's inner muscles tremble and twitch around your erection, creating very pleasurable sensations that trigger your own orgasm mere moments later. You eagerly spill your seed into her waiting body, spurt after spurt of your cum filling the coyote herm. After your spurts of cum eventually taper off, you relax your grip on her neck, slowly drawing your rod out of her dripping pussy, even as her body trembles with the aftershocks of her intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego slowly drops to her knees, leaning heavily against the wall to brace herself. You have a feeling that the lovely little coyote won't be forgetting this particular trick anytime soon...";	
		if DiegoBitched < 1:
			now DiegoBitched is 1;				
	now lastfuck of Diego is turns;
	coyotify;		
				
to say DiegoSex6: [Diego's pussy fucked - doggystyle]
	if DiegoChanged is 2: [full FemDiego]		
		say "     'I thought you would never ask!' the coyote female says with a grin on her muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running her paw-hands over her changed body, she smiles at you and wags her tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' With that said, she drops down to all fours on the ground before you, her newly changed body makes the stance seem both more natural on her, and very sexy.";
		say "     As you approach, Diego turns her rear towards you and lifts her tail eagerly to give you a perfect view of her heat-swollen filled pussy. 'Why don't you claim your little coyote like a proper bitch?' She pants out as she glances at you over her shoulder, waving her ass slightly as her tail wags eagerly in anticipation. The sight of the formerly dominant coyote on all fours before you as she gives in to her female instincts makes you smile, and your cock is already hard and ready as you reach out and begin to stroke her soft fur.";
		say "     [WaitLineBreak]";
		say "     Diego moans as she shifts her stance slightly, rubbing her body up against your touch as you position yourself behind her, stroking your cock tip lightly over her silken folds teasingly as you watch her moan in need. 'Please, please I need it so badly...' The coyote bitch begs, lustily, your male presence overwhelming her with the need to be bred. Her heat-filled scent filling your nose tells you just how ready she is for you, and you groan in pleasure as you push yourself into her warm body. The feel of her tight passage welcoming your cock is amazing!";
		say "     You begin panting yourself as you start to rock your hips forward into the eager bitch beneath you, your hands gripping her fur tightly with each thrust. 'God yes,' Diego pants out underneath you, rocking back into each of your thrusts eagerly, 'Claim me please, fill me up and make me your bitch,' She moans, as she surrenders herself fully to her transformed body's need to be mated and claimed. The sound of her eager voice as she begs to be bred makes you feel strong and dominant as you thrust into her body even faster, your orgasm building quickly as she yips underneath you.";
		say "     [WaitLineBreak]";
		say "     Finally your body tenses and you cry out in pleasure as your cock explodes into the new bitch, spilling its seed into her receptive pussy as she lets out a coyote howl of victory at fulfilling her new role in life as a bitch. Gasping from the intense orgasm, you hold Diego close for a few minutes, feeling your cock slowly soften inside her, before eventually pulling out of her eager body and staggering to your feet.";
		say "     Without you inside her, Diego collapses to the ground, lying on the soft grass for a minute, before rolling over and sitting up still panting from the recent exertion. 'Thanks. God I needed that,' your bitch says with a smile on her muzzle as she rubs her stomach with her paws. 'I never imagined anything could feel this good before...' She says with a dreamy look on her muzzle, before blinking and looking at you. 'I think I'm your bitch now, it just feels... right somehow,' Diego says with a smile on her muzzle as she hauls herself up on her still shaky legs, before reaching out to stroke your cheek with one of her paws lightly.";
		say "     [WaitLineBreak]";
		say "     'Thank you, for claiming me properly,' She says as she leans forward and gives you a soft lick on the cheek. 'It just feels right to do it doggystyle - and with such a crafty trickster too,' the coyote bitch says with a soft grin, before staggering back over to the wall and leaning up against it for support. 'Anytime you want to play with your bitch again, you know where I am.' She says with a wink, as you gather your stuff together to set out into the city again, grinning at the change a few little tricks managed to bring about in your bitch.";
		if DiegoBitched < 2:
			now DiegoBitched is 2;
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the herm eyes your proudly erect cock thoughtfully. You can easily tell though, that while she is trying to hide her excitement, your offer has immediately caused her new opening to grow damp. Also, her tail gives her away by lifting up eagerly behind her, making you grin as you press closer to her changed body. Reaching out, you stroke her soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, her tongue starting to hang out of her muzzle as the scent of an aroused male speaks to her new instincts. With that said, the coyote herm slowly turns her back to you and drops down to all fours on the ground. Her newly changed body makes the stance seem both more natural on her, and very sexy.";
		say "     Diego lifts her tail in a soft invitation, giving you a clear view of her now wet and swollen coyote pussy, with her cock dangling erect underneath her body. You approach to give her new female parts some much-needed attention by your [cock of player] cock. Diego moans as your hands stroke through the soft coyote fur of her inner thighs, rubbing and teasing her until she raises her ass up into the air even higher. The sight of the formerly dominant coyote on all fours before you as she gives in to her female instincts makes you smile, and your cock is already fully hard and ready as you rub its tip against her new entrance. It is just so much fun to see how easily the once tricky coyote is overcome by the needs of her new body.";
		say "     [WaitLineBreak]";
		say "     Diego pants eagerly as your tip begins to probe her soft folds, her body eagerly spreading itself open before you as you shift your hips forward and push your cock into her. Her soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into her body. Diego's inner muscles massage your cock needily even as you draw back and begin to thrust into her again. She moans and begins to yip as her new small breasts begin to bounce underneath her body in time to your thrusts, her tongue lolling out of her muzzle as she gasps in time with your thrusting.";
		say "     The sensations of having a strong male pumping his rod into her, washing over the coyote herm's lust-fogged mind, make her react instinctively as she thrusts her hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along her soft-furred back, before gripping the scruff of her neck possessively. Moments of hard fucking later, Diego cries out, her body shuddering in orgasm - causing her trembling inner muscles to trigger your own. You eagerly spill your seed into her waiting body, spurt after spurt of your cum filling the coyote herm.";
		say "     [WaitLineBreak]";
		say "     Eventually, you relax your grip on her neck, slowly drawing your rod out of her dripping pussy, even as her body trembles with the aftershocks of her intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego collapses on the ground, lying in the sticky patch her cock sprayed a heavy load over. You have a feeling that the lovely little coyote won't be forgetting this particular trick anytime soon...";	
		if DiegoBitched < 1:
			now DiegoBitched is 1;			
	now lastfuck of Diego is turns;
	coyotify;		

to say DiegoSex7: [Diego's pussy fucked - take her against the wall]
	if DiegoChanged is 2: [full FemDiego]				
		say "     'I thought you would never ask!' the coyote female says with a grin on her muzzle. 'It seems this trickster's been caught and it's time to punish her,' she says in a playful tone as she runs her paws up and down her changed body. She's obviously becoming more and more excited by the second as she turns to face the wall and arches up her tail to show off her damp pussy. She rests her paws against the wall and spreads her legs as if she's getting arrested. 'You'd best check to make sure I'm not hiding any more tricks,' she says with a teasing sway of her hips. Grinning at her eager invitation, you waste no time in moving your [bodydesc of player] body up against hers, pressing her forward to lean harder against the wall as she moans eagerly in need.";
		say "     Grabbing her between the legs, you rub at her juicy muff and slip a pair of fingers into her, frigging her hot cunt quickly. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as her rear grinds back against you. Already highly aroused by the feeling of her soft-furred body pressing up against yours and the strong scent of a bitch in heat, you need no further encouragement as you rub your [cock of player] rod up against her crotch. Diego pants eagerly as your tip begins to probe her soft folds, her body eagerly spreading itself open before you as you shift your hips forward and push your cock into her.";
		say "     [WaitLineBreak]";
		say "     'Oh god yes,' the coyote bitch moans eagerly, shuddering at the feel of your rod inside her body as she clutches you tighter. Her needy words make you grin with amusement as you begin to slowly thrust into her. The feel of your cock moving within her is almost too much for the former male, as she groans and yips instinctively in pleasure, her furred bottom pushing back into each thrust. Diego's body feels wonderful around your cock as you wrap your arms around her tightly and bang the needy bitch. You move in swift sharp thrusts within her warm passage, holding on to your tricked trickster.";
		say "     'Yesss, fuck me, make me a proper bitch...' you can hear Diego whispering softly over and over again as you play with her breasts and tease her nipples. Her needy words only encourage you to pump into her amazing body even harder. Soon the breathtaking feeling of your cock buried deep inside her, having your way with this horny female, is too much for you to contain anymore. You groan out in pleasure as your [cock of player] rod blasts hot seed into your bitch's eager womb. Your cries mingle with her own bestial howl of ecstasy as the feel of being filled like a proper bitch triggers her orgasm, her new instincts obviously victorious over any lingering traces of her old male personality.";
		say "     [WaitLineBreak]";
		say "     Coming down from the pleasure of the intense mating, the coyote sags forward against the wall with you still pressed behind her and buried in his sticky cunt. She moans happily at being bred. 'Thank you so much,' Diego whispers softly as her hips continue to grind back against you softly, savouring the feeling of your hot load inside her. 'Thank you for fucking me properly, and thank you for tricking me into becoming a bitch,' she says as she licks your cheek and rubs her muzzle against your neck. 'I never realized how much I would love being a bitch. Being your bitch,' he coyote female adds with a grin as the two of you begin to untangle yourselves from each other.";
		say "     Pulling back a little, you run your hands over Diego's rear and down to finger her fresh-creamed pussy, fingering the sexy coyote to get a few more lovely moans from her. Then you move your hand to her muzzle and have her lick your fingers clean. After that's done, you leave her there, leaning up against the wall as she recovers. Somehow you know she will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take her like the prize bitch she now is...";
		if DiegoBitched < 2:
			now DiegoBitched is 2;
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the herm eyes your proudly erect cock thoughtfully. You can easily tell though, that while she is trying to hide her excitement, your offer has immediately caused her new opening to grow damp. Also, her tail gives her away by lifting up eagerly behind her, making you grin as you press closer to her changed body. Reaching out, you stroke her soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, her tongue starting to hang out of her muzzle as the scent of an aroused male speaks to her new instincts.";
		say "     The coyote herm slowly turns her back to you, her tail lifting up in a soft invitation as she leans forward and braces herself on the wall, legs spreading out instinctively as she positions herself for you. Her upturned tail gives you a clear view of her now wet and swollen coyote pussy, with her cock dangling erect underneath her body. You approach to give her new female parts some much-needed attention by your [cock of player] cock. Diego moans as your hands stroke through the soft coyote fur of her inner thighs, rubbing and teasing her until she raises her ass up into the air even higher. Her coyote head comes to rest up against the wall as you begin to rub the tip of your cock against her new entrance, enjoying how easily the once tricky coyote is overcome by the needs of her new body.";
		say "     [WaitLineBreak]";
		say "     Diego pants eagerly as your tip begins to probe her soft folds, her body eagerly spreading itself open before you as you shift your hips forward and push your cock into her. Her soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into her body, her passage massaging your cock needily even as you draw back and begin to thrust into her again. Diego moans and begins to yip as her new small breasts begin to bounce underneath her body in time to your thrusts, her tongue lolling out of her muzzle as she gasps in time with your thrusting.";
		say "     The sensations of having a strong male pumping his rod into her, washing over the coyote herm's lust-fogged mind, make her react instinctively as she thrusts her hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along her soft-furred back, before gripping the scruff of her neck possessively. Moments of hard fucking later, Diego cries out, her knees locking as her body shudders in orgasm - causing her trembling inner muscles to trigger your own. You eagerly spill your seed into her waiting body, spurt after spurt of your cum filling the coyote herm.";
		say "     [WaitLineBreak]";
		say "     Eventually, you relax your grip on her neck, slowly drawing your rod out of her dripping pussy, even as her body trembles with the aftershocks of her intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego slowly drops to her knees, leaning heavily against the wall to brace herself. In doing so, she is leaning right against the splatters of her own cum on the wall, leaving your freshly-fucked bitch a bit of a mess. You have a feeling that the lovely little coyote won't be forgetting this particular trick anytime soon...";	
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	now lastfuck of Diego is turns;
	coyotify;

to say DiegoSex8: [Diego's ass fucked - lift him and fuck against the wall]
	if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     'I thought you would never ask!' the coyote male says with a grin on him muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running him paw-hands over his changed body, he smiles at you and wags his tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' he says teasingly as you approach, spreading his legs slightly as he leans back up against the wall behind him.";
		say "     'Claim your prize then!' he says in a half-moan as he reaches out one of him paws to stroke your [skin of player] side. Grinning at the eager invitation, you waste no time in moving your body up against his, pinning the coyote to the wall as he moans eagerly in need. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as his arms wrap around you eagerly and his body rubs against yours.";
		say "     [WaitLineBreak]";
		say "     Already highly aroused by the feeling of his sensual body pressing up against yours and the strong scent of a horny stud, you need no further encouragement as you rub your [cock of player] rod up against Diego's crotch. He pants eagerly as your tip begins to probe the soft folds, his body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside him. 'Oh god yes,' the coyote stud moans eagerly, shuddering at the feel of your rod inside his body. Clutching you tightly and panting out needy words, he makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within him is almost too much for a guy relatively new to anal sex, making him groan and yip instinctively in pleasure. Diego's body feels wonderful around your cock as you press him up against the wall, moving in swift sharp thrusts within his warm passage as he clings to your body. 'Yesss, fuck me, make me your cumdump,' you can hear Diego whispering softly over and over again as he rests his head on your shoulder, his sighs of pleasure encouraging you to pump into his amazing body even harder.";
		say "     [WaitLineBreak]";
		say "     Soon the feel of his body moving up against yours and the amazing feeling of your cock buried deep inside him is too much for you, and you cry out as your [cock of player] rod begins to spill its potent seed into your butt-slut's hungry hole. Your cries mingle with his own bestial howl of ecstasy as the feel of being filled like a bitch in heat triggers him own orgasm, his new instincts obviously victorious over the lingering traces of his old more dominant personality.";
		say "     Coming down from the pleasure of the intense mating, the two of you collapse against the wall in a tangle of limbs, his body still wrapped around yours as he moans happily at being bred. 'Thanks. God I needed that,' your canine playmate says with a smile on his muzzle as he rubs his stomach with his paws. 'I never imagined anything could feel this good before...' he says with a dreamy look on his muzzle, before blinking and looking at you.";
		say "     [WaitLineBreak]";
		say "     'I never realized how much I would love being a butt-slut, and yours,' the coyote male says with a grin, as the two of you begin to untangle yourselves from each other. Standing up, you help your newly bred coyote trickster up as well, leaving him leaning up against the wall as he recovers, and somehow you know he will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take him like the prize slut he now is...";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			now DiegoButtSlut is 4; [Diego mpregged]	
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the male coyote eyes your proudly erect cock thoughtfully. You can easily tell though, that while he is trying to hide his excitement, he is getting more and more aroused. The way his tail twitched up and is slowly wagging behind his back is a clear sign for that. He even spreads his legs slightly as he leans back up against the wall behind him. You can't help but grin as you press closer to his lean and athletic body. Reaching out, you stroke his soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, his tongue starting to hang out of his muzzle as the scent of an aroused male speaks to his new instincts.";
		say "     Already highly aroused by the feeling of his sensual body pressing up against yours and the scent of horny canine, you need no further encouragement as you rub your [cock of player] rod up against Diego's crotch. He pants eagerly as your shaft slides along his own and you close your hand around both of them, jerking slowly up and down. 'Oh god yes,' the coyote male moans eagerly, humping against your hand a little. After a moment of running your finger teasingly around the tip of his pointed cock, you push the hard rod up a little and feel for the trickster's balls with your other hand. Diego's family jewels are nice and full in their furry sack, and a little further back from them the real prize you're going for is hidden - the eager and trembling pucker this anthro canine now calls him own, thanks to your little trick with the orc cum.";
		say "     [WaitLineBreak]";
		say "     After sliding a finger against Diego's tailstar and finding it easily penetrated, you immediately proceed to hook your hands under his thighs, lifting the coyote up and pressing him against the wall. 'Fuck Yeah,' the coyote trickster moans eagerly, wrapping his legs around your midriff and holding on to your shoulders - which allows you to use at least one hand to line yourself up with his asshole. He groans in lust as your tip begins to probe the tight opening, his body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside him. 'Nnngh, you feel so good inside,' the male coyote moans eagerly, shuddering at the feel of your rod inside his body. Clutching you tightly and panting out needy words, he makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within him is almost too much for a guy relatively new to anal sex, as he groans and yips instinctively in pleasure, his furred legs reaching up to wrap around your body and hold you close. Diego's gripping asshole feels wonderful around your cock as you press him up against the wall, moving in swift sharp thrusts within his warm passage as he clings to your body. 'Fuck me, fuck me deep.' you can hear Diego whispering softly over and over again as he rests his head on your shoulder, his sighs of pleasure encouraging you to pump into his amazing body even harder. You can't help but greatly enjoy how easily the once tricky coyote is overcome by the needs of his new body.";
		say "     [WaitLineBreak]";
		say "     The sensations of having a strong male pumping his rod into him, washing over the coyote stud's lust-fogged mind, make him react instinctively as he grinds his ass against your crotch in order to push your rod deeper. With a broad grin on your face, you slide your arms up behind his soft-furred back, stroking him a little before gripping the scruff of him neck possessively. Moments of hard fucking later, Diego cries out, his legs wrapping even tighter around you as his body shudders in orgasm. The hard cock of the male coyote, with a fully swollen knot and all, stands straight up between the two of you and erupts with cum-shot after cum-shot, splattering both of your chests and even your chin with the coyote's load.";
		say "     Meanwhile, Diego's inner muscles tremble and twitch around your erection, creating very pleasurable sensations that trigger your own orgasm mere moments later. You eagerly spill your seed into his waiting body, spurt after spurt of your cum filling the coyote male. After your spurts of cum eventually taper off, you relax your grip on his neck, slowly drawing your rod out of his dripping ass, even as his body trembles with the aftershocks of his intense submissive experience. You can feel a grin tugging at your face, as he clutches you tightly for a few moments more, then lets himself be lowered to stand on his own paws. Without your support, Diego has to lean heavily against the wall to keep standing. You have a feeling that the usually so cocky coyote won't be forgetting this particular trick anytime soon...";	
		if DiegoButtSlut is 1: [anal OK Diego]
			now DiegoButtSlut is 2; [Diego fucked anally by the player]
	now lastfuck of Diego is turns;
	coyotify;	
	
to say DiegoSex9: [Diego's ass fucked - Doggystyle]
	if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     'I thought you would never ask!' the coyote male says with a grin on his muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running his paw-hands over his lean and athletic body, he smiles at you and wags his tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' With that said, he drops down to all fours on the ground before you, his anthro body making the stance seem pretty natural on him, and very sexy.";
		say "     As you approach, Diego turns his rear towards you and lifts his tail eagerly to give you a perfect view of his trembling tailstar as well as a swinging pair of furry balls and his hard cock. 'Why don't you claim this little coyote like a proper prize?' He pants out as he glances at you over his shoulder, waving his ass slightly as his tail wags eagerly in anticipation. The sight of the formerly dominant coyote on all fours before you as he gives in to his now submissive instincts makes you smile, and your cock is already hard and ready as you reach out and begin to stroke his soft fur.";
		say "     [WaitLineBreak]";
		say "     Grabbing between the coyote's legs, you stroke along the base of his shaft, where the yet faint bulge of his knot lies, then give his furry balls a good grope before moving on too Diego's pucker. After rubbing his quivering opening for a moment to tease him, you slip a pair of fingers into him, tickling his prostate gently. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as his rear grinds back against you.";
		say "     Already highly aroused by the feeling of his soft-furred body pressing up against yours and the attractive masculine scent of the needy butt-slut, you need no further encouragement as you rub your [cock of player] rod up against his crotch. Diego pants eagerly as your tip begins to probe his back door, his body eagerly spreading itself open before you as you shift your hips forward and push your cock into him.";
		say "     [WaitLineBreak]";
		say "     'Oh god yes,' the coyote trickster moans eagerly, shuddering at the feel of your rod inside his body as he clutches you tighter. His needy words make you grin with amusement as you begin to slowly thrust into him. The feel of your cock moving within him is almost too much for a guy relatively new to anal sex, as he groans and yips instinctively in pleasure, his furred bottom pushing back into each thrust. Diego's body feels wonderful around your cock as you wrap your arms around him tightly and bang the needy butt-slut. You move in swift sharp thrusts within his warm passage, holding on to your tricked trickster.";
		say "     'Yesss, fuck me, make me your cumdump...' you can hear Diego whispering softly over and over again as you reach around to tease his nipples and play with his rock-hard cock. His needy words only encourage you to pump into his amazing body even harder. Soon the breathtaking feeling of your cock buried deep inside him, having your way with this horny male, is too much for you to contain anymore. You groan out in pleasure as your [cock of player] rod blasts hot seed into your doggie's receptive asshole. Your cries mingle with his own bestial howl of ecstasy as the feel of being filled like a bitch in heat triggers his orgasm.";
		say "     [WaitLineBreak]";
		say "     While your own manhood still throbs against his inner walls, depositing more and more cum, Diego splashes his own canine seed all over the grass he is kneeling on. Gasping from the intense orgasm, you hold Diego close for a few minutes, feeling your cock slowly soften inside him, before eventually pulling out of his eager body and staggering to your feet. Without you inside him, Diego collapses to the ground, lying on the soft grass for a minute, before rolling over and sitting up still panting from the recent exertion.";
		say "     'Thanks. God I needed that,' your canine playmate says with a smile on his muzzle as he rubs his stomach with his paws. 'I never imagined anything could feel this good before...' He says with a dreamy look on his muzzle, before blinking and looking at you. 'I think I'm your canine slut now, it just feels... right somehow,' Diego says with a smile on his muzzle as he hauls himself up on his still shaky legs, before reaching out to stroke your cheek with one of his paws lightly.";
		say "     [WaitLineBreak]";
		say "     Pushing gently against his chest to make him lie back, you run your hands over Diego's front and crotch, then down between his legs to finger his freshly-creamed asshole. As you slip him two of your fingers, the sexy coyote lets out a few more lovely moans for you. Then you move your hand to his muzzle and have him lick your fingers clean. After that's done, you give him some time, leaning up against the wall as he recovers. Somehow you know he will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take him like the prize slut he now is...";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			now DiegoButtSlut is 4; [Diego mpregged]	
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the coyote eyes your proudly erect cock thoughtfully. He's trying to keep his composure, but you can easily tell that the male canine is getting excited by the way his tail twitched up and is slowly wagging behind his back. You can't help but grin as you press closer to his body and reach out, stroking his soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, his tongue starting to hang out of his muzzle as the scent of an aroused male speaks to his new instincts.";
		say "     The coyote male slowly turns his back to you, then drops down to all fours on the ground, his anthro body making the stance seem pretty natural on him, and very sexy. His tail lifts up in a soft invitation as he moves to give you a perfect view of his trembling tailstar as well as a swinging pair of furry balls and his hard cock. You approach to give his now much more receptive rear entrance some direly-needed attention by your [cock of player] cock. Diego moans as your hands stroke through the soft coyote fur of his inner thighs, rubbing and teasing him, as well as cupping his balls, until he raises his ass up into the air even higher.";
		say "     [WaitLineBreak]";
		say "     The sight of the formerly dominant coyote on all fours before you as he gives in to his submissive instincts makes you smile, and your cock is already fully hard and ready as you rub its tip against his trembling pucker. It is just so much fun to see how easily the once tricky coyote is overcome by the needs of his now more receptive body. Diego pants eagerly as your tip begins to probe his ring of muscle, his pucker easily stretching as you shift your hips forward and push your cock into the coyote.";
		say "     His soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into his body, his inner muscles massaging your cock needily even as you draw back and begin to thrust into him again. Diego moans and begins to yip as his cock begins to swing and bounce in time to your thrusts, his tongue lolling out of his muzzle as he gasps in time with your thrusting.";
		say "     [WaitLineBreak]";
		say "     The sensations of having a strong male pumping his rod in and out of his tailstar, washing over the coyote stud's lust-fogged mind, make him react instinctively as he thrusts his hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along his soft-furred back, before gripping the scruff of his neck possessively.";
		say "     Moments of hard fucking later, Diego cries out, his body shuddering in orgasm - sending long spurts of canine semen to shoot out from his knotted cock and splash the grass he is kneeling on. The squeeze of his trembling inner muscles around your member triggers your own orgasm just moments later. You eagerly spill your seed into his waiting body, spurt after spurt of your cum filling the male coyote.";
		say "     [WaitLineBreak]";
		say "     Eventually, you relax your grip on his neck, slowly drawing your rod out of his cream-filled asshole, even as his body trembles with the aftershocks of his intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego collapses to the ground, lying on the soft grass for a minute before rolling over and sitting up still panting from the recent exertion. You have a feeling that the usually so cocky coyote won't be forgetting this particular trick anytime soon...";	
		if DiegoButtSlut is 1: [anal OK Diego]
			now DiegoButtSlut is 2; [Diego fucked anally by the player]
	now lastfuck of Diego is turns;
	coyotify;	
	
to say DiegoSex10: [Diego's ass fucked - against the wall, police style]
	if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     'I thought you would never ask!' the coyote male says with a grin on his muzzle. 'It seems this trickster's been caught and it's time to punish him,' he says in a playful tone as he runs his paws up and down over his lean and athletic body. He's obviously becoming more and more excited by the second as he turns to face the wall and arches up his tail to show off a pink tailstar trembling in anticipation. He rests his paws against the wall and spreads his legs as if he's getting arrested. 'You'd best check to make sure I'm not hiding any more tricks,' he says with a teasing sway of his hips. Grinning at his eager invitation, you waste no time in moving your [bodydesc of player] body up against his, pressing him forward to lean harder against the wall as he moans eagerly in need.";
		say "     Grabbing between the coyote's legs, you stroke along the base of his shaft, where the yet faint bulge of his knot lies, then give his furry balls a good grope before moving on too Diego's pucker. After rubbing his quivering opening for a moment to tease him, you slip a pair of fingers into him, tickling his prostate gently. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as his rear grinds back against you. Already highly aroused by the feeling of his soft-furred body pressing up against yours and the attractive masculine scent of the needy butt-slut, you need no further encouragement as you rub your [cock of player] rod up against his crotch. Diego pants eagerly as your tip begins to probe his back door, his body eagerly spreading itself open before you as you shift your hips forward and push your cock into him.";
		say "     [WaitLineBreak]";
		say "     'Oh god yes,' the coyote trickster moans eagerly, shuddering at the feel of your rod inside his body as he clutches you tighter. His needy words make you grin with amusement as you begin to slowly thrust into him. The feel of your cock moving within him is almost too much for a guy relatively new to anal sex, as he groans and yips instinctively in pleasure, his furred bottom pushing back into each thrust. Diego's body feels wonderful around your cock as you wrap your arms around him tightly and bang the needy butt-slut. You move in swift sharp thrusts within his warm passage, holding on to your tricked trickster.";
		say "     'Yesss, fuck me, make me your cumdump...' you can hear Diego whispering softly over and over again as you reach around to tease his nipples and play with his rock-hard cock. His needy words only encourage you to pump into his amazing body even harder. Soon the breathtaking feeling of your cock buried deep inside him, having your way with this horny male, is too much for you to contain anymore. You groan out in pleasure as your [cock of player] rod blasts hot seed into your doggie's receptive asshole. Your cries mingle with his own bestial howl of ecstasy as the feel of being filled like a bitch in heat triggers his orgasm.";
		say "     [WaitLineBreak]";
		say "     Coming down from the pleasure of the intense mating, the coyote sags forward against the wall with you still pressed behind him and buried in his cream-filled asshole. He moans happily at being bred. 'Thank you so much,' Diego whispers softly as his hips continue to grind back against you, savouring the feeling of your hot load inside him. 'Thank you for fucking me properly, and thank you for tricking me into trying out playing with my butt,' he says as he licks your cheek and rubs his muzzle against your neck. 'I never realized how much I would love being fucked. Being your butt-slut,' he coyote male adds with a grin as the two of you begin to untangle yourselves from each other.";
		say "     Pulling back a little, you run your hands over Diego's rear and down to finger his freshly-creamed asshole, fingering the sexy coyote to get a few more lovely moans from him. Then you move your hand to his muzzle and have him lick your fingers clean. After that's done, you give him some time, leaning up against the wall as he recovers. Somehow you know he will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take him like the prize slut he now is...";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			now DiegoButtSlut is 4; [Diego mpregged]
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the coyote eyes your proudly erect cock thoughtfully. He's trying to keep his composure, but you can easily tell that the male canine is getting excited by the way his tail twitched up and is slowly wagging behind his back. You can't help but grin as you press closer to his body and reach out, stroking his soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, his tongue starting to hang out of his muzzle as the scent of an aroused male speaks to his new instincts.";
		say "     The coyote male slowly turns his back to you, his tail lifting up in a soft invitation as he leans forward and braces himself on the wall, legs spreading out instinctively as he positions himself for you. His upturned tail gives you a clear view of his cock and furry balls dangling underneath his body. You approach to give his now much more receptive rear entrance some direly-needed attention by your [cock of player] cock. Diego moans as your hands stroke through the soft coyote fur of his inner thighs, rubbing and teasing him, as well as cupping his balls, until he raises his ass up into the air even higher. His coyote head comes to rest up against the wall as you begin to rub the tip of your cock against his back door, enjoying how easily the once tricky coyote is overcome by the desire to feel someone in his sensitive back passage.";
		say "     [WaitLineBreak]";
		say "     Diego pants eagerly as your tip begins to probe his ring of muscle, his pucker easily stretching as you shift your hips forward and push your cock into the coyote. His soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into his body, his inner muscles massaging your cock needily even as you draw back and begin to thrust into him again. Diego moans and begins to yip as his cock begins to swing and bounce in time to your thrusts, his tongue lolling out of his muzzle as he gasps in time with your thrusting.";
		say "     The sensations of having a strong male pumping his rod in and out of his tailstar, washing over the coyote stud's lust-fogged mind, make him react instinctively as he thrusts his hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along his soft-furred back, before gripping the scruff of his neck possessively. Moments of hard fucking later, Diego cries out, his knees locking as his body shudders in orgasm - sending long spurts of canine semen to shoot out from his knotted cock, splattering the wall he is leaning against. The squeeze of his trembling inner muscles around your member triggers your own orgasm just moments later. You eagerly spill your seed into his waiting body, spurt after spurt of your cum filling the male coyote.";
		say "     [WaitLineBreak]";
		say "     Eventually, you relax your grip on his neck, slowly drawing your rod out of his cream-filled asshole, even as his body trembles with the aftershocks of his intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego slowly drops to his knees, leaning heavily against the wall to brace himself. In doing so, he is leaning right against the splatters of his own cum on the wall, leaving your freshly-fucked doggie a bit of a mess. You have a feeling that the usually so cocky coyote won't be forgetting this particular trick anytime soon...";	
		if DiegoButtSlut is 1: [anal OK Diego]
			now DiegoButtSlut is 2; [Diego fucked anally by the player]
	now lastfuck of Diego is turns;
	coyotify;

when play ends:
	if DiegoBitched is 2: [player fucked FemDiego]
		if humanity of player is less than 10:
			if cocks of the player is greater than 0:
				say "     Not long after you surrender to your new instincts, Diego begins to hunt you down, worried that you haven't come by to claim your bitch in a while. Seeing the coyote bitch looking for you, you remember some of the tricks the two of you played before, and your instinct-driven mind comes up with a cunning plan. With a bit of work, you manage to trap yourself an unsuspecting coyote, and are more than happy to show her just how happy you are to 'play' with her still malleable body. Soon the tricky coyote is changing again into a more suitable form to be your mate, as you coat her with your seed, coaxing her into begging and moaning for the changes you work on her body. Eventually you let your new pet loose, properly trained, and with her belly already swelling with your offspring, the two of you head out into the city and to embrace your new life together.";
			else:
				say "     Not long after you surrender to your new instincts, Diego does as well, unable to resist the strong needs of a coyote bitch in heat as she hunts you down. The bitch seems happy to see you too have given in to the pleasures of a purely female form, and eagerly joins you in your new life, even though her form is slightly different than your own, she seems strongly attached to you. Eventually the results of your mating with her begin to show though, and she retreats into the city to bear your coyote pups. You only see her occasionally after that, the needs of your pups distracting her, as well as her driving instincts to find a new coyote mate keeping her busy, just as your own instincts do for yourself...";
		else:
			if cocks of the player is greater than 0:
				say "     Rescued from the city with your mind intact, you meet Diego again in the military camp, the coyote bitch being picked on by several of the soldiers for all the tricks she pulled on them. Unable to just let it happen, you stand up for your bitch and shame the soldiers into leaving her alone. Diego is extremely relieved to see you, and is glad to let you know that she has been the model of a good coyote bitch while she waited for you to return and claim her. The military is more than eager to release the two of you together, practically shoving you out of the camp in an attempt to get the tricky coyote as far away from them as possible.";
				say "     The situation makes you grin as you head out with Diego to try to figure out how to fit into the world after your experiences in the city. Though soon it is obvious that some of your playing around in the city bore fruit, as Diego starts to show evidence of being pregnant with a litter of pups. She eagerly moves in with you when you eventually find a place to stay, and quickly begins devoting that crafty mind of hers to find way to better increase your standing in your new life. Soon though, your strange little family is enlarged by a quartet of coyote pups, and Diego's attention is diverted to her new role as a happy mother, although she does start dropping hints about wanting to be 'claimed' again sometime soon...";
			else:
				let randomnumber be a random number from 1 to 2;
				if randomnumber is:
					-- 1:
						say "     Rescued from the city with your mind intact, you meet Diego again in the military camp. The coyote bitch is happy and eager to see you there, if somewhat disappointed in the fact that you are lacking your glorious cock. Still she is more than happy to point out that your claiming of her body has borne fruit, as evidenced by her softly swelling belly. When the military finally let you go, the tricky coyote bitch manages to get herself released as well, following you out into the world and staying as near you as possible as you both try to fit back in with society.";
						say "     You come to enjoy her amusing company enough that you hardly protest when she moves in with you, taking care of most of the chores even as her belly grows larger. Soon your strange little family is enlarged by the addition of several cute little coyote pups around the place, getting into things and making you both smile. You settle into your life outside the city even easier with a new companion like Diego to keep you company and amused, although you start to worry when the coyote starts talking about finding a nice stud to claim you both...";
					-- 2:
						say "     Rescued from the city with your mind intact, you meet Diego again in the military camp. The coyote bitch is happy and eager to see you there. She seems amused at the fact that you too have ended up changed into a proper female, and she is more than happy to rub and tease your new body even as she tells you how happy she is with her own change. When the military finally release the two of you, Diego stays in close contact with you, often sending you teasing letters about how happily her belly is swelling from your mating in the city, and how much more fun she is having as a proper bitch.";
						say "     Her happy acceptance of her new female status perks you up as you try to settle into your new life, and the pictures she sends you of your little coyote pups can't help but make you smile. Although her latest teasing letter about finally finding a lovely coyote stud to play with, and the invitation to come join her sometime so her new stud can return the favor you did for her in the city and give you some pups in your own belly, is strangely attractive...";
	otherwise if DiegoBitched is 1 or DiegoChanged is 2 or DiegoChanged is 1: [player fucked HermDiego, or femDiego]
		if humanity of player is less than 10:
			say "     Not long after you give in to your new instincts, Diego gives into hers as well, the powerful instincts of both a male and female coyote finally overcoming the trickster's resistance. Soon the new coyote herm is prowling the streets, setting traps and tricks for both infected and military alike, and eagerly enjoying the bodies of anyone she can manage to trap. Her very presence on the streets makes things more dangerous for many of its inhabitants, but somewhere in your new more instinct driven mind, you know that if you ever were to encounter the coyote again, you could have such fun turning the tricks on her once more...";
		else:
			say "     When the rescue comes, the coyote you tricked is still waiting at the park for the military to arrive, several of whom are less than pleased to see the trickster that was plaguing their advance waiting there so casually. A few hours later, in one of the advance camps around the city, Diego finds her new body put to great use by the military men - with them taking out their pent-up sexual frustration on her. Distracted in the heat of the moment by arousal and the need to pay Diego back for every taunting comment about how easy their buddies were to trick, the soldiers gang-bang the coyote all night long - totally forgetting that she is still very much infectious.";
			say "     The next morning a lovely new group of coyotes spreads out throughout the military camp, reveling in their canine bodies as they trick the rest of the soldiers into surrendering, as well as sabotaging most of the machines and weaponry. The advance into the city grinds into a halt not long after you are released back out into the world, and from what you hear, it is unlikely to start again anytime soon with many of these devious tricksters loose in and around the city...";
	otherwise if DiegoChanged is 0 and DiegoButtSlut is 0 and CoyoteTricks > 1: [not feminized, not ok with anal and gay sex]
		if humanity of player is less than 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     When the military finally sends more soldiers to evacuate all those not actively resisting from the city, Diego the coyote meets them on his own terms - meaning that the crafty trickster only ever gets 'caught' by squads of female soldiers. Despite his rising infamy in official military circles, the smooth-talking canine always manages to convince the women to let him go after a few hours in his company. What might have something to do with that are the whispered barracks-rumours about his skills with a long tongue and knotted cock, leaving his human captors more than curious to experience it themselves - and willing to free Diego in their post-coital bliss.";
			say "     Thanks to the more and more widespread use of transformation immunity booster shots, none of the women sprout fur or tails afterwards, but what usually gets forgotten in all the chaos is that laying with a highly potent male bears other risks... and after a week or two, the number of pregnancies with coyote cubs spikes to all-time heights. Meanwhile, Diego enjoys doing his tricks on everything and everyone in the city, often playing one group of transformed beings against another or causing all sorts of mishaps for the advancing troops from outside the city. His exploits become legendary before much longer when communication with advance camp Bravo in the city is re-established, revealing his masterpiece of trickery - a whole camp of army men and women talked into servicing a horny minotaur...";
	otherwise if DiegoButtSlut is 1: [ok with anal]
		if humanity of player is less than 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     When the military finally sends more soldiers to evacuate all those not actively resisting from the city, Diego the coyote meets them on his own terms - meaning that the crafty trickster only ever gets 'caught' by rather small squads of soldiers in more out of the way places of the city. Despite his rising infamy in official military circles, the smooth-talking canine always manages to convince the men and women involved to let him go after a few hours in his company. What might have something to do with that are the whispered barracks-rumours about his skills with a long tongue and knotted cock, as well as a grippingly tight ass, leaving his human captors more than curious to experience it themselves - and willing to free Diego in their post-coital bliss.";
			say "     Thanks to the more and more widespread use of transformation immunity booster shots, none of Diego's bed-mates sprout fur or tails afterwards, but what usually gets forgotten in all the chaos is that laying with a highly potent male bears other risks... and after a week or two, the number of pregnancies with coyote cubs spikes to all-time heights. Meanwhile, Diego enjoys doing his tricks on everything and everyone in the city, often playing one group of transformed beings against another or causing all sorts of mishaps for the advancing troops from outside the city. His exploits become legendary before much longer when communication with advance camp Bravo in the city is re-established, revealing his masterpiece of trickery - a whole camp of army men and women talked into servicing a horny minotaur...";
	otherwise if DiegoButtSlut is 2: [had anal with the player]
		if humanity of player is less than 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     Rescued from the city with your mind intact, you meet Diego again in the military camp, the coyote being picked on by several of the soldiers for all the tricks he pulled on them. As it turns out, he was finally captured since he kept returning to your usual spot outside the park entrance, hoping to meet up with you again. After getting some hints from questioning people they were rescuing, these soldiers set a trap for your sexy coyote friend, out of which even the crafty trickster couldn't escape. Unwilling to leave your fuck-buddy canine to their mercy - especially after some comments about 'showing that mutt how it feels to be fucked over' start to come up from one or two guys rubbing their crotches - you stand up for Diego and shame the soldiers into leaving him alone.";
			say "     Diego is very relieved to see you and strokes a paw-hand down your side as he leans in to give a doggy kiss in greeting. With a wink, he whispers that he did have a foolproof plan to trick the guys and get of dodge after enjoying being dicked, and that he nevertheless is quite happy for you to have come to his 'rescue'. As eventually an officer comes to investigate what's going on with the prisoner having a visitor and all the whispering, Diego lets him know that he promises to from now on be a poster boy of a good coyote citizen (standing beside him, you see the crossed fingers behind his back). With all the other troubles they have, the military is more than eager to release the two of you together, practically shoving you out of the camp in an attempt to get the tricky coyote as far away from them as possible.";
			say "     The situation makes you grin as you head out with Diego to try to figure out how to fit into the world after your experiences in the city. Though he gets his own place - rent-free, thanks to some clever tricks that leave the landlord mightily confused - the coyote usually hangs out with you, always happy to share details about his newest plans - and your bed. Thanks to that crafty mind of his, your shared lot in the somewhat chaotic society emerging after the advent of the nanite age is usually on the rise, allowing for some very nice time to be had. All in all, the coyote is a really nice friend, wing-man and fuck-buddy to have.";
	otherwise if DiegoButtSlut is 3: [Diego mpreg-able]
		if humanity of player is less than 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     When the military finally sends more soldiers to evacuate all those not actively resisting from the city, Diego the coyote meets them on his own terms - meaning that the crafty trickster only ever gets 'caught' by rather small squads of soldiers in more out of the way places of the city. Despite his rising infamy in official military circles, the smooth-talking canine always manages to convince the men and women involved to let him go after a few hours in his company. What might have something to do with that are the whispered barracks-rumours about his skills with a long tongue and knotted cock, as well as a grippingly tight ass, leaving his human captors more than curious to experience it themselves - and willing to free Diego in their post-coital bliss.";
			say "     Thanks to the more and more widespread use of transformation immunity booster shots, none of Diego's bed-mates sprout fur or tails afterwards, but what usually gets forgotten in all the chaos is that laying with a highly potent male bears other risks... and after a week or two, the number of pregnancies with coyote cubs spikes to all-time heights. Meanwhile, Diego's own altered physiology (thanks to your little trick with bottles of orc cum) leaves the trickster to a surprising discovery too - as his trained abs eventually swell with the child of one of the hunky soldiers he took up his ass and unknowingly let breed him. The coyote chuckles at the realization, leaving him to remember you fondly for a very nice trick indeed. Soon he is joined by a teenage son in his efforts to play tricks on everything and everyone in the city. They often play one group of transformed beings against another or cause all sorts of mishaps for the advancing troops from outside the city. Diego's exploits become legendary before much longer when communication with advance camp Bravo in the city is re-established, revealing his masterpiece of trickery - a whole camp of army men and women talked into servicing a horny minotaur...";
	otherwise if DiegoButtSlut is 4: [Diego mpregged]
		if humanity of player is less than 10:
			say "     While you give in to your new instincts, Diego proves resistant to his more basic urges and keeps being the crafty trickster that you knew. Soon after, he spots you out in the streets and starts to think up an all new trick to involve his former associate in. It doesn't take all that long for him to arrange things, and before the next sunrise the trickster successfully lures you to a blind alley, at the end of which two rather worse-for-wear soldiers hide, a man and a woman. Disarmed, with ripped uniforms, and quite exhausted from fleeing the immensely dangerous - but relatively slow - hydra that Diego goaded into attacking them, the two of them aren't in any shape to fight back against anything at that moment.";
			say "     As you pick up and devour the last piece of candy that the coyote laid down to lure you in, you hear a little bit of noise from the alley (an old can, casually dropped from an overlooking window by a familiar paw-hand) and move to investigate, soon finding the people Diego chose to put at your mercy. The coyote watches what happens next with a grin from up high, grinning all the while, then eventually gives a mock salute and quietly says, 'So long buddy, and have fun. I certainly will, while looking out for you.' With a gentle pat on the bulge of his stomach holding your child, the coyote murmurs, 'It's the least I can do for what might have been a trickster as good as myself.' Then, he steps back into the darkness, already thinking up a new trick to play on someone...";
		else:
			say "     Rescued from the city with your mind intact, you meet Diego again in the military camp, the coyote being picked on by several of the soldiers for all the tricks he pulled on them. As it turns out, he was finally captured since he kept returning to your usual spot outside the park entrance, hoping to meet up with you again. After getting some hints from questioning people they were rescuing, these soldiers set a trap for your sexy coyote friend, out of which even the crafty trickster couldn't escape. Unwilling to leave your fuck-buddy canine to their mercy - especially after some comments about 'showing that mutt how it feels to be fucked over' start to come up from one or two guys rubbing their crotches - you stand up for Diego and shame the soldiers into leaving him alone.";
			say "     Diego is very relieved to see you and strokes a paw-hand down your side as he leans in to give a doggy kiss in greeting. With a wink, he whispers that he did have a foolproof plan to trick the guys and get of dodge after enjoying being dicked, and that he nevertheless is quite happy for you to have come to his 'rescue'. As eventually an officer comes to investigate what's going on with the prisoner having a visitor and all the whispering, Diego lets him know that he promises to from now on be a poster boy of a good coyote citizen (standing beside him, you see the crossed fingers behind his back). With all the other troubles they have, the military is more than eager to release the two of you together, practically shoving you out of the camp in an attempt to get the tricky coyote as far away from them as possible.";
			say "     The situation makes you grin as you head out with Diego to try to figure out how to fit into the world after your experiences in the city. While still working on getting new jobs and places to stay at, your coyote buddy seems to develop some sort of stomach bug all of a sudden - chucking up his breakfast one morning. A quick trip to a doctor soon after that does reveal that it isn't anything bad but rather the opposite - turns out that your little trick with the orc cum created another interesting result - Diego is pregnant with a small litter of coyote pups, fathered by yourself. Finding himself a soon to be parent, Diego reacts with tail-wagging joy and pulls you close for a deep kiss.";
			say "     Soon after, the two of you find a new place together - rent-free, thanks to some clever tricks that leave the landlord mightily confused - with the coyote sharing your life and bed, happily awaiting the birth of your children. Thanks to that crafty mind of his, your shared lot in the somewhat chaotic society emerging after the advent of the nanite age is usually on the rise. All in all, the coyote is a really nice friend and partner to have, and the trio of little pups he gives birth to are the joy of your lives. Diego's attention is somewhat diverted to his new role as a happy father, although he does start dropping hints about wanting to be bred again sometime soon...";

to say MaleDiegoSuccumbEnding:
	say "     While you give in to your new instincts, Diego proves resistant to his more basic urges and keeps being the crafty trickster that you knew. Soon after, he spots you out in the streets and starts to think up an all new trick to involve his former associate in. It doesn't take all that long for him to arrange things, and before the next sunrise the trickster successfully lures you to a blind alley, at the end of which two rather worse-for-wear soldiers hide, a man and a woman. Disarmed, with ripped uniforms, and quite exhausted from fleeing the immensely dangerous - but relatively slow - hydra that Diego goaded into attacking them, the two of them aren't in any shape to fight back against anything at that moment.";
	say "     As you pick up and devour the last piece of candy that the coyote laid down to lure you in, you hear a little bit of noise from the alley (an old can, casually dropped from an overlooking window by a familiar paw-hand) and move to investigate, soon finding the people Diego chose to put at your mercy. The coyote watches what happens next with a grin from up high, grinning all the while, then eventually gives a mock salute and quietly says, 'So long buddy, and have fun. I certainly will.' With that, he steps back into the darkness, already thinking up a new trick to play on someone...";	

Diego ends here.
