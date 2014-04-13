Version 2 of Hadiya by Kaxin begins here.
[Version 2.1 - More sex and M-Hyena option - Stripes]

"Adds a situation to Flexible Survival with a very annoyed Hyena woman."

Section 1 - The Situation

Annoyed Hyena is a situation.
The sarea of Annoyed Hyena is "Junkyard";
when play begins:
	add Annoyed Hyena to badspots of hermaphrodite;
	add Annoyed Hyena to badspots of furry;

After resolving a Annoyed Hyena, try looking;

Instead of Resolving a Annoyed Hyena:
	say "     While exploring, you accidentally run face first into what at first seems a warm, furry wall.  Upon recovering and taking a second look, you realize that it's actually a hyena.  A tall, obviously intimidating hyena.  Her sharp predatory teeth as well as the oversized tongue hanging out of her muzzle doesn't exactly give her the most pleasant looks, but her distinctive spotted red fur helps her stand out from the other hyenas that you've met in the past.  She doesn't seem to be hostile to you, or at least not just yet to say the least... as she just seems to be more amused by your presence than anything else.";
	attempttowait;
	say "     Her slacks seem to conceal an obvious bulge.  Seems she's pretty much the same as the rest of the hyenas around here by the looks of it... though she at least covers it up!";
	attempttowait;
	say "     'Well now, just what do we have here?  Someone new around to have fun with... suppose I might be up for you visiting me.  I definitely need more company.  And by company, I mean a warm squealing bitch underneath me, giving me exactly what I want.  Come on over and I promise I'll make you regret it later,' she growls with a big wink at you.  'I have a little shack set up nearby.  Just come over anytime you want to get treated like the fucktoy that you are[if the player is submissive].  You seem like the type that needs a good, rough mistress[end if].'  And with that, she just turns and disappears, leaving you slightly baffled and curious... but also very much wanting to see just what she has in store for you!";
	now hp of Hadiya is 1;
	now lastfuck of Hadiya is turns;
	now Hyena Shack is known;
	now Annoyed Hyena is resolved;


Section 2 - Hyena Shack

Hyena Shack is a room. It is fasttravel. It is private.

The description of Hyena Shack is "     A small looking wooden shack that she apparently built for herself.  It's good enough to keep her out of the cold, and the hyena scent radiating strongly from it seems to keep out anyone that doesn't want to regret their intrusion.  She's got quite a bit of stolen furniture though, as it's not like many people around are going to be objecting to it.  And of course, Hadiya herself is never far to be found, usually fixing something inside the shack that has broken or just reclining and getting ready for her prey. Currently she's just reclining on a large sofa, sprawled out and looking very lazy as usual.  She beckons you closer, seeing if you're dumb enough to actually do so.";

the scent of Hyena Shack is "This places smells quite strongly of hyena herm and male sex.";

Section 3 - Hadiya

Hadiya is a person.  Hadiya is in Hyena Shack.
The description of Hadiya is "     A tall, obviously intimidating hyena.  The sharp, predatory teeth as well as the oversized tongue hanging out of her muzzle doesn't exactly give her the most pleasant looks, but her distinctive spotted red fur helps her stand out from the other hyenas that you've met in the past.  Her shaggy fur about as well groomed as you can expect it to be in a situation like this.  Just reclining against one of benches in her home and giving the intruder a curious look.  She towers over you, and by the sharp claws and various weapons, knives, and other objects on her belt she definitely could give you a hard time if she wanted to.  Though for now, it doesn't seem like she's in any hurry to actually use any of them.";
The conversation of Hadiya is { "Bend over!" };

instead of conversing Hadiya:
	if hp of Hadiya is 0 or hp of Hadiya is 1:
		say "'So you actually came?  [if lastfuck of hadiya - turns < 16]That didn't take long[otherwise]It's about time you got your ass over here[end if].  How about you come on over and we can talk about what pops up?,' she adds with a grin and a rough laugh.";
		now hp of Hadiya is 2;
	otherwise if hp of Hadiya > 3 and hyg is 4 and a random chance of 1 in 3 succeeds and hadiyahyg is false:
		say "     'I hear you've been running around with that mangy hyena gang.  I don't appreciate my fucktoy running around with the likes of them[if matriarchowned is 1].  And besides, what would they think if they knew their precious Matriarch was sneaking off to get fucked in the ass like the needy bitch she is,' she says with a chuckle.  'Speaking of, I think you need another reminder of just why I'm more than enough hyena for you,' she adds, pushing you down[otherwise].  I should be more than enough to keep even a slutty bitch like you satisfied,' she adds, pushing you down[end if]";
		now hadiyahyg is true;
	otherwise if hp of Hadiya is 2 or hp of Hadiya is 3:
		say "     [one of]'Why am I even bothering to let you come around if you're not going to bend over for it?'[or]'This pussy and cunt of mine feel nice,' she says, almost teasing you with her touches to them, 'but this new cock of mine is so much better.'[or]'Why don't you be a good fucktoy for me and bend over and take it?  I know it's what you've come here for.  I might even give it to you, if I think you deserve it,' she says with a lecherous grin.[or]'You need a good dose of hyena in you, don't you, bitch?' she asks, rubbing her crotch before flopping back onto a padded chair, laughing.[or]She pulls out a bottle of liquor from under a chair and slams down half of it with a satisfied 'Ahhh.'[or]'Turn around and let me see that bitch ass of yours.'[at random]";
	otherwise:
		say "     [one of][if lastfuck of hadiya - turns < 4]'Why are you bothering to stick around when I'm already done with you for now?'[otherwise]'How about you come back later and I'll give you what I know you need,' she rumbles, rubbing her crotch.[otherwise if lastfuck of hadiya - turns < 12]'How about you bring that sexy ass of yours over here and maybe I'll give you what I know you need,' she rumbles, rubbing her crotch.[end if][or]'This pussy and cunt of mine feel nice,' she says, almost teasing you with her touches to them, 'but this new cock of mine is so much better.'[or]'You're turning out to be a fine little fucktoy, aren't you?  Such a good slut.'[or]'You need a good dose of hyena in you, don't you, bitch?' she asks, rubbing her crotch before flopping back onto a padded chair, laughing.[or]She pulls out a bottle of liquor from under a chair and slams down half of it with a satisfied 'Ahhh.'[or]'Turn around and let me see that bitch ass of yours.'[at random]";

the scent of Hadiya is "Hadiya smells like a strong, dominant hyena herm.";

hadiyafucked is a number that varies. hadiyafucked is usually 0.
hadiyahyg is a truth state that varies.  hadiyahyg is normally false.

instead of fucking hadiya:
	if hp of Hadiya is 0 or hp of Hadiya is 1:
		say "Why don't you see what he has to say to you first?";
		stop the action;
	if lastfuck of Hadiya - turns is less than 12:
		say "She just grins at you. 'Eager to be fucked more, are you? Too bad, I'm busy now. Come back later.'";
		stop the action;
	now lastfuck of Hadiya is turns;
	let lust be 0;
	let oversized be 0;
	let response1 be "";
	[puts Herm Hyena as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Herm Hyena":
			now monster is y;
			break;
	if cocks of player is 0:
		say "     'Yeah, not really interested in you. I'm more into the boys if you know what I mean. Though I can take them in between just as well. Grow some parts and we'll talk.'";
	otherwise if a random chance of 2 in 5 succeeds: [She's thirsty]
		say "     'I'm not really up for anything right about now... though I might be a little... thirsty.'  She licks her lips suggestively, showing off those feral teeth of hers, making you have very mixed feelings about the whole thing, but the raging hardness that soon greets her oversized paw helps tell her exactly what you think about the situation.  'That's a good boy.  Give me what I want and you probably won't get hurt.'";
		attempttowait;
		say "     With those reassuring words, the hyena just shoves you down on the nearest pile of clothes and pins you there with her [if scalevalue of player < 4]greater weight[otherwise]not inconsiderable[end if], not exactly helping your arousal anyway.  Just tearing your pants off with a single swipe of her claws, reducing the crotch to shreds and allowing your straining shaft to be released.  Bobbing in the air, she quickly wraps her paw around the very base of it, stroking... squeezing it.  Bumping her nose against the very tip to see just what your scent is. 'Quite the delicious looking cock you've got here.  It would be a shame if anything happened to it, now wouldn't it?' she asks with an evil chuckle.";
		attempttowait;
		say "     Wrapping her lips around the very tip of it, she takes it into the heat of her maw, starting to suckle on it greedily.  Applying a firm suction, inch after inch just disappearing into her, though thankfully she doesn't seem to be using her teeth just yet.  The large tongue lapping along the underside, getting a better taste of it even as you moan and try to resist the urge to thrust into her maw, as you doubt she would take kindly to such a thing.";
		attempttowait;
		say "     Grazing her teeth lightly against either side of your shaft, you can't help but whimper... but it just seems to be her toying with her prey more than anything else. Bobbing her head slowly, she relaxes her grip on the shaft to replace her teeth with the warm, welcoming suction.  Wet sounds coming from her lips as she starts to work on getting the drink that she desires.  Squeezing her lips right back around the shaft as she pulls back until just the head remains.  Her tongue probes at your slit to sample some of the droplets of stickiness that you're already beginning to produce.";
		attempttowait;
		say "     Suckling firmly on the head, she urges you to produce more, which you happily do.  Already moaning in arousal, instinctively reaching down to cup the back of her head only to have your hand knocked away angrily, and the tip of your shaft nipped in the process.  A warning about exactly who is in control in this situation... though soon enough she relaxes and gets back to work.  Her movements are quick and needy, not letting you savor it at all, just trying to get her sticky gift as soon as she possibly can.";
		attempttowait;
		say "     Something that you're happy to provide, your hips involuntarily thrusting upwards to feed her more of your throbbing need.  Something that she doesn't seem to mind, permitting you to do this, just letting out a warning growl in the process.  The slick movements of her tongue coming faster and fast, until it's simply too much for you to take.  With a strangled warning you erupt suddenly inside her waiting muzzle.  Something that she gulps down... not letting a single drop leak out, just making it all disappear into her furry maw.";
		attempttowait;
		say "     Satisfied for the moment, she finally pulls back, grinning back up into your eyes.  'Not bad, I'll definitely use you more later..'";
		if hp of Hadiya is 2, now hp of Hadiya is 3;
		hadiyahyenaify;
	otherwise if hp of Hadiya >= 6 and a random chance of 3 in 5 succeeds:
		say "     You approach Hadiya again, finding you needing another more of her rough attention to satisfy you.  She grins and spreads her arms, as if welcoming you for a hug and kiss.  But as you come into her arms, she locks her jaws around your throat and grips you tightly, dropping you to the floor beside her plush chair.  Her paws grab your ass roughly, claws digging into you as she bares your bottom.  Holding it up, she starts grinding her shaft against it, spurting precum across it, tantalizing your asshole with gooey pre and brushes of her throbbing maleness.";
		attempttowait;
		say "     You moan in pleasure, growing more and more excited, but soon frustrated as well, for she makes no attempt to penetrate her fucktoy.  With her jaws still around your neck, you moan softly, a weak 'Please...'  With that, she releases your throat and licks across it slowly.  'Mmm... beg for it.  Beg your mistress to fuck you, to pound her cock into you, to use you like the horny bitch you are,' she rumbles.  Another lick and another grind across your rear sends shivers down your spine.  Soon enough, you're begging her to take you rough and hard.  She laughs at this, but finally gives you what you need, driving her pulsing rod into you, cramming it into your [bodytype of player] body.";
		attempttowait;
		say "     Your asshole is pried open roughly by the hyena's cock, spread and forced to take her throbbing meat.  After all the teasing, or perhaps you're just starting to need it rough, this feels wonderful, filling a vacancy in you that only your hyena mistress can fill.  When her jaws are back around your throat, she starts pounding away at you, your body bent beneath her as she tears into you with her pointed, animal cock and pressing you downwards with each slamming thrust.  Your cock dribbles and drools, trapped between your groin and your mistress's furry belly - so very hard.  Her hips slam into yours, her cock bruising your prostate from how hard she's slamming into you, making you whimper and moan, in ecstasy despite (or perhaps even because of ) the pain."; 
		attempttowait;
		if hp of Hadiya is 6 and cunts of player > 0 and "One Way" is not listed in feats of player and "Herm Preferred" is not listed in feats of player and "Female Preferred" is not listed in feats of player and "Always A Pussy" is not listed in feats of player:
			say "     After pounding away at you in this position for a long, long time, she flips you over, putting you on all fours and mounting you like an animal.  You grind your ass back against her, sore and tired, but still needing that hot, gooey reward inside you.  As she's sinking her shaft into you, her paw strays to your pussy, completely forgotten in the excitement, and brushes over it lightly.  Here you are, such a needy bitch taking it up the ass.  You don't need this pussy at all, do you?  When you get fucked, you just want it in your ass, so it's just getting in the way.  Your mistress doesn't want it, so you don't need it, do you?' she rumbles in your ear, moving her paw to play with your cock and your balls.  Do you agree with your mistress, no longer wanting and needing your pussy?";
			if the player consents:
				say "     Hadiya laughs as you admit that getting it in the ass is all you really need and plows into you hard and deep, grinding her knot against your pucker.  'That's my good slut, knows what's best for him - whatever mistress wants.'  You moan and nod, pressing back against her knot as your anus spreads, letting it pop into you, tying you to her.  It pulses and throbs inside you as she pumps your cock all the faster.  'Cum for me, you bitch.  Show me how much you love it.'  You moan happily, finally having her permission to cum and blasting your hot seed across the floor after holding back for so long.  With your ass clenching and milking around her cock, she cums soon after, giving you a hot, thick rush of hyena seed that fills your bowels and makes you cum all the more.  You are both left panting and leaking as the last of your seed dribbles out.  When her knot eventually goes down, she pulls free, pushes you down into the mess of your cum on the floor and flops back into her chair, not bothering to pull up her pants.  After such a long, fulfilling, aching pounding, your ass is deliciously sore and you're too weak to get up for some time.  Eventually you slink off, making a show of your soreness that has your mistress grinning even as your pussy shrinks down a little.[mimpregchance]";
				decrease cunt length of player by 2;
				decrease cunt width of player by 1;
				if cunt length of player <= 0 or cunt width of player <= 0:
					now cunt length of player is 0;
					now cunt width of player is 0;
					now cunts of player is 0;
					say "     With a wet slurp that your mistress finds so satisfying, your pussy shrinks away completely and closes up, leaving you the male bitch she so desires.";
				now hp of Hadiya is 17;
				hadiyahyenaify;
			otherwise:
				say "     Hadiya growls angrily as you disagree, biting down hard onto your shoulder and squeezing your cock painfully.  Bruising your shoulder and even drawing blood, she pounds at you as hard as she's ever done.  This bashes her knot against your anus over and over again, forcing it open painfully fast and locking you to her.  The pain and rough penetration hurt, but as she cums wildly in anger, you can't help but moan, your body almost needing her seed in you after such a long, rough fucking.  Having held back so long, you finally can cum and do so very hard, painting the floor beneath you with your seed.  The moment your mistress is done cumming, she's standing up, pushing at your ass with her paws.  Your asshole, unwilling to give up her knot at first, is forced open painfully again and her cum spills out when she gets free.  You tumble to the floor, landing in the mess of your own seed.  You lie there while the red hyena flops into her chair angrily, not bothering to pull up her pants.[mimpregchance]";
				now hp of Hadiya is 7;
				hadiyahyenaify;
		otherwise:
			say "     After pounding away at you in this position for a long, long time, she flips you over, putting you on all fours and mounting you like an animal.  You grind your ass back against her, sore and tired, but still needing that hot, gooey reward inside you.  As she's sinking her shaft into you, her jaws go to your shoulder, gripping it tight so she can ram back into you.  Her paws grab your cock and balls, stroking over them as she seeks to tie with you.  You moan as her strong jaws, designed of crushing bone, squeeze down on your shoulder.  It aches and bruises, but no more, showing you how much control your sexy mistress has - unlike you, her begging, needy bitch.";
			attempttowait;
			say "     The red-furred hyena plows into you hard and deep, grinding her knot against your pucker and you press back against it as your anus spreads.  It pops into you, tying you to her.  Her red cock pulses and throbs inside you as she pumps your cock all the faster.  'Cum for me, you bitch.  Show me how much you love it.'  You moan happily, finally having her permission to cum and blasting your hot seed across the floor after holding back for so long.  With your ass clenching and milking around her cock, she cums soon after, giving you a hot, thick rush of hyena seed that fills your bowels and makes you cum all the more.  You are both left panting and leaking as the last of your seed dribbles out.  When her knot eventually goes down, she pulls free, pushes you down into the mess of your cum on the floor.  Grabbing your head, she has you lick her clean before flopping back into her chair, not bothering to pull up her pants.  After such a long, fulfilling, aching pounding, your ass is deliciously sore and you're too weak to get up for some time.  Eventually you slink off, making a show of your soreness that has your mistress grinning.[mimpregchance]";
			if hp of Hadiya is 6 and ( "One Way" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Female Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player), now hp of Hadiya is 7;	[skip query]
			hadiyahyenaify;		
	otherwise if hp of Hadiya >= 4 and a random chance of 3 in 5 succeeds:
		say "     'Mmm... Mistress is going to play with her sexy toy again,' she rumbles, pushing you down over a barrel in the yard.  As you yelp, she wraps her paw over your mouth, keeping it closed.  Pinning you down with her [if scalevalue of player < 4]larger body[otherwise]strong body[end if], she bares your ass and rubs her cock against it.  'You don't have any objections, do you?' she asks, getting her meaty missile lined up.  You try to say something, but it comes out as a mumble as she keeps you muzzled.";
		attempttowait;
		say "     'I didn't think so.  Not from a needy bitch like you,' she laughs, thrusting hard into you.  Your anus is once again spread open by the horny hyena as she drives into you with little consideration for warming you up.  As her hand moves away, all you can do is cry out at the rough intrusion.  By the time her paw makes it to your cock moments later, you're already hard and leaking with arousal.  Clearly taking this as a sign of consent, she starts pounding away at you, sliding her pointed red shaft in and out of you.";
		attempttowait;
		say "     It seems this time your hyena mistress is willing to be more generous with you, playing with your cock and kneading your balls, all rather roughly, but even that's becoming a turn on.  It shows that you're hers, a plaything for her to grope and fondle as she drives into you again and again, one that enjoys her use and abuse just to get another dose of thick, creamy hyena cum.  She bites at your left shoulder, bruising your flesh and kneading at it with her sharp teeth.  As before, the added sensation skirts the edge between pain and pleasure, making everything more intense and arousing.";
		attempttowait;
		if hp of Hadiya is 4:
			say "     This rough play of hers continues until you cum with a loud, long moan, resulting in the hyena thrusting particularly hard into your clenching, milking asshole.  'Did I say you could cum yet, bitch?' she rumbles, pounding you violently, setting the barrel to rocking on its side as her knot slams against your back door again and again.  'You don't get to cum until I say so or I do.  Understand,' she growls, slapping your ass.  As she keeps it up, your poor, abused pucker is forced open to take her knot, letting the wildwoman tie with you.  Grabbing your shoulders, making the left one ache all the more as she cums, as you, now oversensitive after your climax, feel every pulse and throb of the meaty knot inside you as she pumps her hot load into you.  She flops atop you, panting heavily.  She reaches for your nuts, giving them a squeeze, a warning to wait next time.  When her knot goes down, she pulls out roughly and leaves you flopped over the barrel, ass showing and cum leaking from your stretched hole.[mimpregchance]";
			now hp of Hadiya is 5;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				say "     This rough play of hers continues, but you know better this time and do your best to hold back[if a random chance of 1 in 3 succeeds or the player is submissive].  You moan for her to let you cum, which makes her laugh[otherwise].  You whimper and bite your lip, trying to hold it back until she's done[end if].  As she's obviously very pent up, her thrusting intensifies and the barrel starts to rock a little.  Soon she's ready and drives into you hard, your pucker giving way and letting the wildwoman tie with you.  She switches to biting your other shoulder and pumps at your cock all the harder, making you cum across the wooden barrel as she pumps her hot load into you, claiming your ass once again.  The pleasure you feel after all the rough pounding is intense - the throbbing knot, the spurting shaft, the thick, flowing semen.  Once drained, she flops down overtop of you and runs her tongue across your cheek in a slow lick.  'Much better, little bitch,' the red-furred hyena says.  You can't help but smile at her praise, glad to have pleased your mistress.[mimpregchance]";
			otherwise:
				say "     This rough play of hers continues, but you know better this time and do your best to hold back[if a random chance of 1 in 3 succeeds or the player is submissive].  You moan for her to let you cum, which makes her laugh[otherwise].  You whimper and bite your lip, trying to hold it back until she's done[end if].  She continues to pound away at you steadily, her precum having make your hole slick and juicy for her to fuck.  Just before you think you can't take any more, she pulls out suddenly and takes her meat in her paws.  She strokes her pulsing shaft and kneads her heavy balls, growling as she cums hard, painting your ass with her seed.  'Mmm... that's my bitch, messy and sticky with my seed,' she moans between gritted teeth even as she continues to cum, draining those large balls onto you.  Having the scent of her on you is too much to take and you slide off the barrel, stroking yourself until you cum all over yourself while she watches and laughs at her horny plaything.";
				if hp of Hadiya is 5, now hp of Hadiya is 6;
		hadiyahyenaify;
	Otherwise:
		say "     'There you are, now... it's time for you to help serve your Mistress.'  The obviously worked up hyena doesn't waste any time with disrobing.  Unbuttoning her pants and tugging them down just enough that you can see the thick, red-fleshed and canine cock already pushing it's way out of her sheath.  Her heavy, furry orbs obviously quite full and needing someone to help empty them.  'It's been quite a long time since I've had regular company.  I might need you around quite a bit after this.'  She lets out a growl, sinking her paw down to wrap around the emerging tip, stroking it steadily while you watch, getting herself nice and firm.  'Now, I'm going to get myself off tonight, but I wouldn't want to do anything without your full consent,' she taunts, obviously teasing you.  'So, want to get fucked?' she asks bluntly.";
		if the player consents:
			say "     'That's exactly what I was hoping you'd say.'  Immediately, she grabs you and forces your body up against the wall of her shack.  Just ramming it there, using her [if scalevalue of player < 4]greater weight[otherwise]not inconsiderable weight[end if] to keep you pinned just in case you change your mind.  Soon enough, you start to feel the warm bulge of her arousal grinding up against your rear, pushing and kneading against it while using the pressure to help get her aroused and ready.  'Not much one for foreplay, but I know what I want.  And what I want happens to be that tight ass of yours.  I'm going to make you my personal little bitch.  I want you to come crawling back every time you feel the urge to get fucked.  To crave me pounding that tight little rump of yours.  To make it fit me like a glove...'";
			attempttowait;
			say "     'Soon enough she tires of teasing you, and prods the thick head of her cock right up against your pucker.  Far too big for your body, she doesn't really seem to care much about that.  Not even bothering to use any kind of lubrication.  Just starting to thrust, applying a steady pressure up against the pucker while she keeps you pinned against the wall, unable to get away from her.  She just takes you.  The steady pressure against your entrance ever so slowly forcing it to stretch, just barely managing to wedge her cockhead inside you and pierce your body with the pulsing heat of her hyena shaft.  Once the initial penetration is done, she quickly takes advantage of it - the rest of her cock just ramming it's way inside your body with a single feral thrust, the loud slap of her furry balls against your rear letting you know that she's fully inside.  The pain from her careless entry is unbelievable, like someone just shoved their arm inside of you without warning. Your body screams with pain, aching from the sheer amount that it's been forced to stretch to take the horny hyena woman but unable to push her out no matter how hard you clench..'";
			attempttowait;
			say "     She groans in pleasure. 'You have no idea how badly I've been needing a good fuck,' she whispers into your ear just before she sinks her teeth into it.  She bites down ferally while starting to roll her hips, adding some more stimulation to her eager lust.  Though it's not long at all before she starts to tug back, forcing her cock right back out of your resisting body only to swiftly reverse her course and just plunge right back inside.  Making your body stretch to take her once again, she resumes her lusty movements, starting to fuck you right up against the wall.  Each thrust just ramming your chest into it, your own stiff hardness pinned up against the wall, aching with need as she completely ignores your own pleasure in favor of her own.  But despite the rough treatment... or maybe because of it, you can't help but feel incredibly aroused.  The pain slowly fades to a dull ache after long minutes of her pounding.  And eventually you even start to enjoy yourself, though the hyena doesn't seem to care the slightest bit about all that.";
			attempttowait;
			say "     She obviously is very pent up and wants to make sure that you'll be remembering her for a good long time after she's done with you.  The powerful thrusts of her hips just pounding your body against the wall, plunging the full length of her cock inside you, making you moan in obvious arousal at the feeling of warmth and fullness deep inside your bowels.  The pain mixes with pleasure, but you can only hold on and take it, helpless underneath the dominant hyena and her desires.  Her lust quickly rises to a fever pitch, and she finally unloads inside you.  Letting out a muffled cackle, she just hilts herself one last time.  Her cock pulses, firing hot sticky ropes of her seed deep inside you, staining the inner walls with her sticky hot seed.[mimpregchance]";
			say "     Yanking her cock out, she gives your rump a firm slap.  'Pretty good, come back when I'm ready and you can help me out again,' she snarls, obviously done with you for now.";
			if hp of Hadiya < 4:
				now the vmusings of Hadiya is "[hadiyamusing]";
				now hp of Hadiya is 4;
			hadiyahyenaify;
		otherwise:
			say "     After hearing that, she doesn't bother to waste time.  'Guess you'll just have to use your other end then.'  Placing one of her oversized paws on your shoulder and applying some of her natural hyena strength, she forces you down onto your knees in front of her. Your view is completely dominated by the sight of the swollen red flesh of her aroused length.  The scent of her feminine musk almost overpowering, you simply can't help yourself, beginning to nuzzle against the very tip.  Pressing your lips against the tapering tip to get a direct taste of her shaft, something that makes the hyena let out a satisfied little cackle.  'That's a good bitch, keep it up.'";
			attempttowait;
			say "     Finally unable to take it anymore, you quickly wrap your lips around the welcoming heat of her shaft, taking it into your lips and starting to suckle on it like a good bitch.  Tightening your lips around it, you start to apply a firm pressure to the shaft, tongue lapping at the slit to better serve her.  Of course, being a hyena, she isn't quite satisfied with this for very long.  Letting out a short little grunt, she wraps her other paw around the back of your head and starts to push it, forcing you to take more and more of her shaft, disappearing into your jaw, stretching it out and causing a dull ache from the sheer amount of girlcock that she's feeding you.";
			attempttowait;
			say "     'There we are, not bad.  You must have practiced on some of my sisters,' she taunts above you, hips starting to move, not satisfied until she completely wedges every last inch of her pulsing hyenahood into your waiting maw.  Forcing it right down your throat, making you gag.  There is little chance to adjust to the sheer size of it while she grinds those musky furry balls of hers right up against your nose, letting you get used to her scent as well as her taste.  Finally, she mercifully pulls back, letting you breathe once more.";
			attempttowait;
			say "     Not for long though, as she starts to fuck your face, taking it like just another hole to be pounded for her own pleasure.  The pent up hyena giving you little time to actually taste her as she works her way towards her climax.  The base of her cock swells up in the telltale signs of her knot, engorged muscle bumping up against your face again and again.  It is far too big to actually fit inside you, though she quite enjoys the stimulation anyway.  Long past the point of no return, it only takes her a few more moments of this to reach her climax.  With a sharp growl, she sinks her claws into your shoulders for support.  The shaft jumps and pulses deep inside your throat, firing her hot sticky gift right down into your stomach, giving you no chance to actually taste her.  Warming your belly, the sheer amount of her seed just continues to flow until she suddenly dismounts, yanking her cock back, popping it free of your gasping lips, satisfied for the moment.";
			attempttowait;
			say "     Wiping her still hard cock clean on your lips, she smears it with her own unique scent, just grinning down at her prey as she does.  'Not bad.  Now get out of here, I'll use you again once I'm recovered,' she grumbles.";
			if hp of Hadiya is 2, now hp of Hadiya is 3;
			hadiyahyenaify;

to hadiyahyenaify:
	if hp of Hadiya < 17:
		[puts Herm Hyena as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Herm Hyena":
				now monster is y;
				now sex entry is "Male";
				infect;
				now sex entry is "Both";
				break;
	otherwise:
		infect "Herm Hyena";



Hadiya ends here.