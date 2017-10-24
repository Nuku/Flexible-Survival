Kitsune Hide Away by Kaleem mcintyre begins here.

"Adds a Foxy Hideaway"

Section 1 - Foxy Hideaway

Foxy Hideaway is a room. It is fasttravel. It is private.

The description of Foxy Hideaway is "All around you the scents of flora and fauna surround the small enclosed area kept hidden behind a single door. The smells of the various plants has your nose literally twitching a mile a minute as you smell everything from jasmine to lavender to roses to honeysuckles filling up the den of the silver vulpine. From what you can see Kitsune has placed a large four-poster bed in the middle of his hideaway, strange considering that there is grass growing throughout the floor around the feet of the plush sleeping pallet. There are also two nightstands on either side of the room with elegant lamps dominating the top of said stands, both are on but running at a low lighting. On both the left and right sides of the walls there are tapestries with silver and white nine-tailed kitsunes standing regal in place, almost as though they were watching the room for intruders. Besides the flowers growing throughout the room there are small ornaments, such as vases and other assorted pottery, placed onto the floor with incense sticks burning within them. With all of this grandiose ensemble collected together the room should feel oppressed, but maybe because of that it instead of in spite of it the area feels... open for some reason.".

instead of sniffing Foxy Hideaway:
	say "The scent of a male vulpine wafts gently throughout the room. This pleasant smell is chased by the strong musk of incense endlessly burning away inside of small ornamental jars.";

Section 2 - Kitsune

Kitsune is a man.
The description of Kitsune is "A beautiful silver vulpine stands on two digitigrade legs while looking at you with heated, but controlled eyes. Nine tails dance teasingly behind the fox-man's back as he smiles at you good-naturedly. His long and lithe form seems to almost sway slightly with the subtle motions of Kitsune rocking his hips from side to side. His smile soon turns saucy as Kitsune looks you up and down, his eyes lingering a particularly long time on your groin as though studying a tempting morsel, before he looks up into your face once again. With a predatory grin crossing his muzzle, you can't help but feel slightly on edge as the feral nature of the other shines through the graceful visage that the vulpine puts on for you. Though somewhat human-like in appearance there can be no doubt of the animal nature of the fox-man as Kitsune stares at you with a growing hunger. A slow sweep of a red tongue along full and pale lips lets you know not to forget this.".
The conversation of Kitsune is { "Hmmm!" }.
Kitsune is in Foxy Hideaway.

Kitsunetalk is a number that varies.
Kitsunearoused is a number that varies.

[
instead of linkactioning Kitsune when kitsunetalk > 0:
	say "Possible Actions: [link]talk[as]talk Kitsune[end link], [link]smell[as]smell Kitsune[end link], [link]fuck[as]fuck Kitsune[end link][if Kitsunefood < 5], [link]food[as]ask for food[end link][end if][if Kitsunewater < 5], [link]water[as]ask for water[end link][end if][line break]";
]

instead of sniffing Kitsune:
	say "Kitsune smells somewhat otherworldly and both sweetly masculine and yet dangerous at the same time. The odor makes you wonder about the other's true nature.";

instead of conversing the Kitsune:
	if Kitsunetalk is 0:[first time you encounter the npc text]
		say "'I've been waiting for you, little mortal. I'm so glad you've finally decided to come and claim your reward. The question next, however, is what will you claim exactly?' Kitsune looks at you with a predatory smile before winking knowingly in your direction. You swallow thickly as you wonder that yourself.";
		say "'You've done such a wonderful job at entertaining me that I think I'll stick around on this world to enjoy it some more. If you just so happen to come by every once in a while to visit, then that would make things all the better for both of us, don't you think?' Kitsune winks at you before licking his lips playfully.";
		increase Kitsunetalk by 1;
	else if Kitsunetalk is 1:
		say "[one of]'Hello little mortal, come to visit me today?'[or]'Believe it or not, I was actually waiting for you.'[or]'I keep wondering, but I'm just not sure of how you'd turn out if you became a kitsune.'[or]'This world is such a mess, always has been and will be in my opinion, but you seem to be trying to make it a better place.'[or]'I thank you for the time you have given to me by associating with me.'[or]'This world...or the other...which one indeed.'[or]'All the world is made up of, but fools, animal and men...and now sadly enough, a mixture of all three.[or]'Should I try and play some music for you? I think I have a flute around here...somewhere.'[or]'Have you ever heard of the Japanese legend about Inari? He's a rice deity in Asian lore, but really he's more of a grandfather figure to us kitsunes.'[or]'For every one hundred years that a kitsune ages he or she gains an additional tail. Care to guess how old I am? Hint...I'm not one thousand, yet.' [or]'Back home there aren't really that many of us kitsunes... Perhaps you would like to change that by becoming one of our numbers?' Kitsune says with a sly smile on his devious face.[or]'Falderal and fiddle dee dee...what a droll thing the human world can be sometimes. Will you make it more interesting for me, little one?'[at random]";


Section 3 - Kitsune requests

[This is blocked for the moment, as it conflicts with the same request from Steven]
[
kitfoodrequest is an action applying to nothing.
Understand "ask for food" as kitfoodrequest.
kitwaterrequest is an action applying to nothing.
Understand "ask for water" as kitwaterrequest.

Lastfoodrun is a number that varies. Lastfoodrun is usually 250.
Kitsunefood is a number that varies.
Lastwaterrun is a number that varies. Lastwaterrun is usually 250.
Kitsunewater is a number that varies.

Check kitfoodrequest:
	if Kitsune is not visible:
		say "From whom?" instead;
	else if Kitsunefood is 5:
		say "'Forgive me, little one, but I'm afraid that I've been able to find in the area for you.  You'll have to look elsewhere for more,' Kitsune bows low at this." instead;
	else if lastfoodrun - turns is less than 8:
		say "'I'm afraid you'll have to be patient. I need to make a run to see if there is any more food left in this city.'" instead;

Carry out kitfoodrequest:
	say "Kitsune smirks at you before going off...somewhere...and then returning with a bit of food for you. 'Please, take this and take care.'";
	increase carried of food by 1;
	now lastfoodrun is turns;
	increase Kitsunefood by 1;

Check kitwaterrequest:
	if Kitsune is not visible:
		say "From whom?" instead;
	else if Kitsunewater is 5:
		say "'Forgive me, little one, but I'm afraid that's all I've been able to find in the area for you.  You'll have to look elsewhere for more,' Kitsune bows low at this." instead;
	else if lastwaterrun - turns is less than 8:
		say "Water, water everywhere, but not a drop to drink.' Kitsune chuckles at this before waving a hand in front of you. 'Forgive me, but I have always liked that verse more than I should. I have no water for you at this moment, little one.'" instead;

Carry out kitwaterrequest:
	say "Kitsune nods to you and then goes about his way to collect some water. It takes a minute but soon the other returns to gracefully hand you a bottle of water. 'May this help you on your journey, little one.'";
	increase carried of water bottle by 1;
	now lastwaterrun is turns;
	increase Kitsunewater by 1;
]

Section 4 - Fucking Kitsune

Instead of fucking Kitsune:
	[puts Kitsune as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Kitsune":
			now monster is y;
			break;
	choose row monster from table of random critters;
	if lastfuck of Kitsune - turns is less than 6:
		say "'Forgive me little one, but I'm afraid my energy reserves are a bit low at the moment.' Kitsune bows to you somewhat sadly. 'If you'll come back then I'll be ready to [']wrestle['] under the covers with you again.' A devious smile plays out across the handsome kitsune's face and you get the feeling that something is going on behind those azure eyes of his. 'Perhaps when we do, I can give you a more suitable form to play with?' A slow caress of one of the silver vulpine's tails across your shoulder let's you know what the other means by this.";
	else if Kitsunearoused is 0:
		say "Seeing you seeing him aroused must be doing something to Kitsune because without too much warning, save a quick flick of his numerous tails, the other is moving over to kiss you fully on the lips. The vulpine man seems to be either very pent up or just very happy to have you in his arms because he quickly begins to slip his tongue into your mouth to wrestle your tongue into submission. Not wanting to completely give in to the other you fight back as best you can with your own rampant organ thrusting forward into Kitsune's tender maw. Your hands come up to massage the strong backside of your vulpine lover and quickly you can tell that you are doing something right as the lithe frame of Kitsune shudders and then pushes forward into you. As the moment between the two of you stretches out into endless seeming minutes you no longer find yourself caring about anything else happening in the world outside as you exchange both breath and tastes with your kitsune lover. The fact that the heavy fullness of the fox-man's sex is pushing up deeply into your front only serves to drown out your senses as all that you are wraps around all that Kitsune is. From what you can feel it would seem that it won't be much longer before the vulpine is taking you under him like the willing vixen he probably hopes you'll want to become... or vice versa.";
		say "Pulling back from the other you can see that Kitsune's muzzle is slightly matted down with the leftover drool of your shared kiss and without thinking you find your lips and tongue ghosting along the side of the vulpine's snout to clean him up. A happy whimper comes from the other at this and on the inside you feel as though you've done a good thing.";
		now Kitsunearoused is 1;
		now lastfuck of Kitsune is turns;
	else if Kitsunearoused >= 1:
		say "'Well, I see that someone has gotten a little feisty at the moment,' Kitsune snickers as he looks at you with smoldering azure eyes glowing with lustful intent.";
		say "     [bold type]'How would you like to play with me today?'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Kitsune Submissive.";
		say "     ([link]N[as]n[end link]) - Kitsune Dominant.";
		if player consents:
			LineBreak;
			let pick be 0;
			if cocks of player > 0 and cunts of player > 0:
				say "Deciding that you want to see the sexy fox-man play the part of your submissive, you smile darkly at him and then take him into a hard embrace before whispering your desires in his ear. The silver vulpine shivers slightly and then nods at you before asking you how you wish to have him.";
				say "     [bold type]Which sex do you use on him?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Cock.";
				say "     ([link]N[as]n[end link]) - Cunt.";
				if the player consents:
					LineBreak;
					now pick is 1;
				else:
					LineBreak;
					now pick is 2;
			else if cocks of player > 0:
				now pick is 1;
			else if cunts of player > 0:
				now pick is 2;
			if pick is 1:
				say " After taking your hand into his own, Kitsune leads you back to his four-poster bed with a sly smile. The silver vulpine seems to exclude an air of submission about himself as he slowly strips himself of his loincloth and then proceeds to crawl onto his mattress on all fours. Quickly all nine of his tails spread out for into a wide fan to reveal the other's pink puckered tailhole and from what you can see, the vulpine has already oiled himself in preparedness for his encounter with you. Not seeing any reason to delay in giving the willing fox-man what he obviously desires, you hurriedly strip your clothes off and then casually kick them to the side before pouncing on your lover. Crawling over onto Kitsune's backside, you waste little time in lining your rigid cock up with the other's tailstar and then once you have a clear aim you slowly press your hips forward so as to stretch the vulpine open with your hard [cockname of player] dick. A quiet hiss makes you look up at your lover, but a slow shake of the fox-man's head lets you know that the other is okay, or at least making a good pretense of the situation.";
				say "Not wanting to bring the other man any undue pain you still your hips for a moment and allow Kitsune the time needed to adjust. It takes almost a minute before the vulpine is ready, but once he is you can almost not believe how tight and warm Kitsune is as he thrusts himself back onto you. Taking you all the way to the hilt the fox-man is quick to show you how submissive he is not as he pounds himself back and forth over you with growing abandon. Quickly seeing that the other is trying to control the situation between you two you grab Kitsune around the waist to hold him steady before showing him exactly who is in charge here. A quiet keen from the other has the silver vulpine submitting himself to you and then going still slightly as he allows you to fully dominate his body. Grunting and groaning with restless desire you slide your eager cock back and forth inside of Kitsune's vice tight fuckhole, loving the feel of his warmth and tightness, while at the same time leaning over him to brush your front against his back. Panting heavily into the vulpine's ears you take one of his pointed appendages in your mouth and then nibble on it playfully before reaching a hand down to stroke the fox-man's twitching cock.";
				WaitLineBreak;
				say "A yelp of praise goes through Kitsune as he had not been expecting that; however, the vulpine takes it with growing adoration for you as his insides clamp down almost painfully tight onto your length. Moaning and gasping as the heat and feel of your lover overcomes your senses, you can feel that you'll explode inside of him soon as you hammer inside of Kitsune's ass with increasing force. The bed beneath the two of you beats against the wall like a war drum before battle as you continue to thrust both fast and furious inside of your lover. Kitsune lets out wailing howl when he feels you pull on one of his tails, your twitching hands having felt the plush appendage and grabbed onto it before you could stop yourself. The yowl seems to be more of excitement than of pain and in your sex-addled mind you can't help but tug just a little harder on the fluffy attachment to coax more cries from your partner.";
				say "Muzzle panting, tails waving, and body growing heady with the pleasant scent of both sweat and sex mingling into his fur, you soon find Kitsune becoming an incarnation of ecstasy as he gives himself over to the passion of the moment. You smile predatorily as you release the other's now soggy ear in favor of biting down onto the fox-man's nape in a dominating hold. That seems to do it for Kitsune because just as soon as your teeth clamp down onto the vulpine's tender neck the other yelps, freezes, and then lifts his head to let out a howl so loud that you're sure someone outside must be hearing it. Though your concern for the outside world is almost moot at this point as you feel the vulpine splatter the hand you have stroking his cock with his cum. At the same time the fox-man is releasing himself into your palm the muscles of Kitsune's rear lock up so tight onto you that your orgasm can't help but discharge itself inside of the depths of the other's heated rump. Yelping in time with Kitsune's yowl you both find your climaxes coming together with the same intense force just as shudders rack up and down the sides of both of your spines.";
				WaitLineBreak;
				say "By the time the two of you come down from your respective sexual highs, both of you can't help but pant and shiver as the pure ecstasy of the moment caresses itself up and down your bodies. Kitsune whines as you pull your hand out from under him -- his cock is still shooting cum after all -- and upon looking at the mess the other has made you find yourself smiling in perverted delight right as you lift your wet hand up to lick Kitsune's seed up from off of your fingers.";
				now Kitsunearoused is 2;
				kitsuneinfect;
				now lastfuck of Kitsune is turns;
			else if pick is 2:
				say "Growling in a somewhat feral-like manner, you strip out of your clothing and then pounce on top the silver vulpine. Kitsune meeps slightly as his back hits the mattress of his four-poster bed; thankfully he was so near to it at the time, but the fox-man soon can't think about his luck as you restlessly tear his loincloth off from around his waist and then proceed to pump the other's hard cock from out of his silver furred sheath. A hiss goes through Kitsune as your fingers quickly bring him to full arousal within seconds. Azure eyes narrowing slightly as he slides his eyelids to half mast, the pleasure of being touched in such a manner finds itself getting to the vulpine on a whole other level, though maybe because it's you who's pumping him and not some random stranger. Grunting and groaning, the fox-man has little time to appreciate your hand maneuvers because just as soon as his tapered red rocket is standing up to its full eleven inch length, you are mounting him with your wet puss.";
				say "Grunting as your cunt flutters opens to accept the vulpine's hard canine-like dick into your body, you don't spend long in waiting to grow accustomed to the other's length as you pull yourself up to slide Kitsune out of you. The vulpine croons as your juice box pulls away from him even as his legs, arms and tails are all madly twitching from the exquisite feel of your depths drawing away from him. However his moans quickly turn to gasps as you thrust yourself back down onto him. Feeling the fox-man's cock hitting up on well past your clitoris on up into your cervix, you reach out to grab hold of the covers of the bed as pure electric pleasure dances up your spine. Taking a moment to adjust to such powerfully pleasurable feelings, you growl in a true canine manner before lifting yourself up off of Kitsune again, only to slam down onto the other for a second time. An unsteady rhythm starts before long as you repeat these motions again and again and again as you hurriedly begin to fuck your lover.";
				WaitLineBreak;
				say "For his part Kitsune seems to be taking things rather well. With his cock being massaged by your tender insides the fox-man finds himself falling into the arms of absolute bliss as you continue to dance on top of his lap. Though not exactly what he would have expected, the vulpine is quick to get into the groove of things as he counterbalances your thrusts with his own upward thrusts of his hips. A yip pours out from both of you as the vulpine pushes deeper into your cervix -- your tender insides are almost unprepared for the girth that is the fullness of the vulpine's cock as his knot soon begins to inflate just outside of you. Licking your lips at the thought of being filled so properly by the other, you lean your head down to breathe deeply into Kitsune's face, startling the other somewhat as he blinks confused blue eyes up at you. This confusion is soon cast away in favor of you licking the underside of his neck in a submissive gesture that you can't figure out right at the moment.";
				say "It doesn't matter though, because soon the fox-man has you by the waist and is growling at you passionately while pricking his claws into your sides. You're almost not ready for the vulpine to slam you down onto his half-hard bulb of flesh when he does so, but thankfully you're a seasoned pro at handling this sort of thing. And yet, your fluttering netherlips seem to be quite shocked by the press of the round bulge against them as they are forced to spread to newer dimensions. However, this soon turns to a twisted kind of pleasure for you as Kitsune continues to stuff you full while at the same time pumping you steadily up and down his leaking cock. Grunts spill out from both of your lips just the same as precum and honey ooze down the both of your legs. Rocking the bed with enough force to make the headboard slam into the back wall, you don't pay any attention to anything else going on around you as you spread your legs wide and then hammer yourself fully onto your silver vulpine lover's knot. A yelp comes from Kitsune once you are sheathed completely onto his hard bulb of flesh and without warning the fox-man howls out loud just in time for you to feel his cock flex and then surge with the onslaught of his orgasm.";
				WaitLineBreak;
				say "The heat and pure feel of such hot cum filling up the depths of your cunt makes you howl in time with Kitsune as you climax sneaks up on you without warning. Jerking as your back arches in between Kitsune's hold, you wrap your body tight around your lover as he begins to shudder as your wet snatch clamps vice tight around him. A flood of your own juice spreads over and around the vulpine's rigid length, and before long the knot inside of you can no longer hold anything back as you drench both the fox-man and your own thighs with the mixture of your love liquor. A quiet chuckle goes through Kitsune and you move your face over to look down into the other man's eyes to see what the joke is on. What you find is the devious smile of the other caressing Kitsune's face and a silent coil of fear, right before the silver vulpine leans up to place a chaste kiss onto your lips. Opening your mouth in shock, you inadvertently allow the other man to slip his tongue into your maw. Swirling his organ around inside and across your teeth before pulling back to snicker at you, it would seem that all the kitsune wanted was to see your surprise in order to spice up the waning climaxes you both are sharing. Your ire at this lasts all the way until the fox-man pulls his half deflated knot out of you. The feeling of no longer having your vulpine lover inside of you makes you somewhat doleful, but that sentiment only lasts until Kitsune wraps his arms around you in order to lay you down on top of him. You both end up snuggling up together and then drifting off to sleep before long.";
				now Kitsunearoused is 2;
				kitsuneinfect;
				now lastfuck of Kitsune is turns;
			else:		[genderless]
				say "Realizing that you lack the right [italic type]equipment[roman type], you sadly breath a heavy breath before smiling demurely at Kitsune. Kitsune lifts up your chin to press a finger against your lips before replacing his finger with his lips.";
		else:
			LineBreak;
			let pick be 0;
			if cunts of player > 0:
				say "Blushing and then whispering into Kitsune's ear after shuffling over to him somewhat nervously, you try and let the silver fox-man know what you want without having to spell everything out in clear detail. Your heart nearly jumps into your throat when you hear the other growl at you in want. An air of dominance comes over the vulpine like a thick fog and instantly you can feel your stomach tighten up into knots.";
				say "     [bold type] Which part of yourself should you let Kitsune have though?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Cunt.";
				say "     ([link]N[as]n[end link]) - Ass.";
				if the player consents, now pick is 1;
			if pick is 1:
				LineBreak;
				say "Bashfully asking Kitsune to fill your wet cunt, you get a surprise when not only does the Kitsune nod to show his acceptance of your request but then backs himself away from you to get down onto all fours. Your eyes are slightly mesmerized as you watch the form of the silver fox-man melt and then shift until -- once again -- the Kitsune takes on the animal-like form you remember seeing that one time before. Standing as rigid and proud as he had on that day you blush warmly as you slowly strip off your clothes and then reveal to the Great Dane sized fox your juicy box. Gaping slightly in readiness for your lover, Kitsune doesn't waste any time as he bumps his canid head into your legs, telling you without words to get down onto your knees. Complying with what your mate wishes, you find yourself getting into the classic doggy position just in time to feel something warm and wet caressing itself onto the sides of your female folds.";
				say "Turning back to look at the other you can just barely make out the sight of Kitsune's head dipped down into the spread opening of your legs. Blushing somewhat at both the feeling of the fox's thick tongue slipping inside of you and the knowledge of what is going to be stuffing itself into your hot puss soon, you shuffle your thighs open just a little bit more as you silently ask the vulpine to continue preparing you for what's to come. The silver fox seems grateful for your aid because he quickly pushes his cool and moist nose inside of your cunt, well past your clitoris, on close up into the lower area of your cervix. Not knowing how the other is breathing around your honeyed depths, you find yourself not caring much as the fox's tongue is soon cleaning you out and spreading you open into new and unusual dimensions. A few licks later your legs feel like they are about to turn into melted butter and you actually whine like a vixen in heat as you shake your rump for Kitsune to move things forward to the main event. Thankfully Kitsune does just that as he pulls himself out of you to lick his snout just before you can collapse onto the floor. It's a good thing you have some strength remaining to hold yourself up because just as soon as he is done sampling the flavor of your cunt the fox is placing himself up and across your backside.";
				WaitLineBreak;
				say "You grunt as the weight of the male vulpine bears down on you, but soon that grumble turns into a moan as Kitsune lines himself up with your netherlips and then spears himself home into your depths with a hard, but accurate thrust. A keening cry leaves the two of you, though for very different reasons as you both connect to each other in a primordial way. As for the fox, he is enjoying burying himself deeply into your snatch as the exquisite pleasure of your tightness nearly makes the mythical creature's nine tails stand on end as he slides his hips while slowly pressing deeper into you. For you on the other hand, you find yourself crying out as the girth of the large and tapered animal-like shaft is drilling a new hole inside of you as Kitsune steadily buries his bone inside of your cunt. While there is pleasure in the fox's actions, there is also pain, and you find yourself digging your hands into the grass underneath your body as you will yourself to relax for your mate.";
				say "By the time Kitsune is pressed flush up against your behind, both you and he are panting for air as the union between you both has become almost fiery in definition. Hot and sweaty from the exertion, you breathe deeply down against the grass before whimpering as Kitsune's narrow vulpine head eases down next to your face to lick a slimy tongue across your cheek. Smiling lovingly to the other, you nod your head to the fox to let him know that you are ready and then brace yourself as Kitsune slowly pulls himself back to withdraw from your snatch. Hard and uncompromising, the long length of the vulpine shaft that Kitsune carries in between his legs slips out of you like a sword leaving a samurai's sheath, and the vulpine pulls out of you until only his tip remains inside of your folds. Still gazing at you with azure eyes filled with concern, you nod at the vulpine and receive a tentative whimper from the dominant male before the other thrusts his haunches fully back into you. Pain and pleasure lance throughout your spine as Kitsune soon starts to breed you like a vixen of his kind.";
				WaitLineBreak;
				say "Saying that the fox is rough would be a lie, but saying that his motions are gentle would be an even bigger one. Somewhere in between concern and lust, Kitsune fucks you with the passion of the animal that he truly is. Grinding his balls into your backside, hammering his furry hips into your thighs with almost bruising force, the fox moves as though slightly possessed as his rampant cock fills you to the brim while at the same time his tongue caringly licks out across your neck and face, almost soothingly so as he shows his concern for you. Somewhere in the midst of things you might have been flattered by the show of such devotion, but currently all you can do is fight to stay in control of yourself as your eyes threaten to roll back and your tongue hangs out from the overload of physical pleasure. The feel of Kitsune's cock hitting you in all the right spots along the inner folds of your body seems to be igniting a greater fire inside of you as you buck and moan back against the other in an almost unconscious manner.";
				say "Like a female needing to be bred with pups, you find your body grows hotter and hotter the longer Kitsune pumps his way steadily into your vagina all the way into your cervix. The big animal seems to know what he's doing as the fox wriggles his hips around with somewhat twitchy motions in an effort to get all of your pleasure spots. You gasp, keen, whimper and shout as Kitsune fucks you almost brutally at the same time he is caressing your chin with his tongue. The feeling of something large swelling back behind you snaps you out of your erotic daze as you wonder about the thing in question, but soon your answer comes as Kitsune humps into you once and then twice harder than before and then locks you both together on the end of his knot. Going stock-still both you and the fox freeze as the instinctual information of what has just occurred passes between both of your minds. Once the knowledge has implanted itself into both of your psyches Kitsune raises his head to the ceiling above to howl his release into your fertile cunt. It's only a second after the howl begins that you feel molten heat spread out into your body, causing your already elevated temperature to flare to new heights.";
				WaitLineBreak;
				say "A visceral scream rents from out of your mouth as you absorb the mythic creature's cum into the inner sanctum of your hot juice box all the way up into your stomach. A second later a trigger goes off somewhere inside of you because without you being conscious of it your body just erupts with heavenly pleasure as your honey floods out and around Kitsune's cock on down onto the other's bulbous girth locking the two of you tightly into each other. The fox seems to enjoy the feeling though because once he lowers his head onto to the back of your sweat-soaked neck, he quickly moves to take your nape into his jowls and then hold tightly onto you in an animalistic mating hold. A shiver runs up your spine as you realize what this gesture means, but at the same time you can't help but give yourself over to it as your mate continues to fill you to the brim with his seed. Taking a peek to look down at yourself you find that you're stomach is slightly filling out with the fox's cum. A blush forms on your face before you can stop it.";
				say " By the time Kitsune is ready to relieve himself from inside of your still-tight nethers the other is almost groggy with exhaustion. That doesn't stop him from pulling out of you however when you give a whimper up at him. Pulling his hips back with a slow shuffle, you gasp and then hiss as the half-bloated bulb at the end of the vulpine's cock slides free from you with an audible popping noise. Your legs tense up instinctively as you feel your juice and Kitsune's cum drizzling down from between your legs. Yet you don't have to worry about wasting the precious gift you had been given as before you can blink a firm muzzle and wet tongue are slipping inside of you to clean up the leakage. A slightly perverted smile crosses your face as you think about how thorough your quadruped lover is in his ministrations as you feel his tongue wiggle up on through your tender cervix.[impregchance]";
			else:
				LineBreak;
				say "Walking past Kitsune to go over to the fox-man's bed, you strip yourself free from your clothing without a word spoken. Letting the fox-man know exactly what you want and how you want it without having to speak a word, you make yourself ready for your lover to take you as you lay yourself down onto the flat of the plush mattress and then wiggle your ass up at the vulpine. Kitsune seems to accept this behavior with good humor as he throws his own loincloth off and then gets down onto his hands and knees to shift his shape into that of his more animal-like form. Watching with wide eyes as the feral fox comes over to you, you don't hesitate in moaning aloud when you feel Kitsune dipping his head down to spread your puckered taint open with his flat, but broad tongue. A whimper pierces free from your lips as the dexterous organ whips its way inside of you all the way up to your pleasure button and then over the small hidden mound until you are visibly jerking up and down on the bed from the spikes of pleasure going through you.";
				say "You could almost swear that you heard a laugh come from behind you, but this can't be right since Kitsune's muzzle is currently buried up into your ass. Not bothering to wonder on this for long, you gasp and then shiver when the other pulls himself free from your ass and then gives an audible lick of his lips before growling at you hotly. Looking into the other's azure blue eyes, you don't stop yourself from dropping your eyes down to have a look at the vulpine's midsection when a slight tint of red catches the corner of your vision. Twisting your head down some to have a look see at what the fox is packing, you smile approvingly as Kitsune lifts his right rear leg up to show you what you're dealing with. Longer than a foot with a thick girth and a tapered head, the fox's cock is a thing of both beauty and wonder as you look at it with lustful eyes. Dripping from the head of the shaft are thick beads of precum and idly you find yourself wondering what it would be like to have that animal-like cock thrusting into the back of your throat as you bury your face into Kitsune's groin.";
				WaitLineBreak;
				say "Again you can swear that you can hear a laugh come from Kitsune, but upon snapping your gaze up to the fox's silvery face you find that the vulpine is merely smiling at you instead of all out laughing. You fleetingly wonder if the other can laugh in this form but before you can ponder over this for too long Kitsune has lowered his hind leg back to the floor and is now walking up to you. A lick across your cheek has you smiling at the other and then turning your head around so that you can lower your front more fully onto the mattress of the other's bed. A huff of pleasure comes from Kitsune at seeing you in this position and quickly the fox mounts you like a normal canine would. Four long limbs wrap themselves tightly around your body as Kitsune hugs you firmly up into his furry chest and you have to chuckle at the disbelief of actually wanting to let another creature fuck you in this position, right before you moan as the fox slides his eager cock into your awaiting body. A gasping shudder makes you tense up as the turgid length back behind you moves steadily through your rectum, but before you can become too tight for him to move Kitsune places his head down next to yours to lick you across the face. The calming feel of the fox's tongue sweeping across your lips and nose has you relaxing enough to let the vulpine hilt himself inside of you completely.";
				say "The touch of fur against your body feels almost electric to you and you don't stop from shuddering as your mate pumps his hips steadily into your ass until he fully inserts himself into your rectum. This fact mixed with the feel of Kitsune's heavy weight on your back and the knowledge that the vulpine is pressed hip to ass with you takes you above and beyond the realm of sensuality as you pant openly into the fox's concerned face. Still looking at you with careful azure eyes Kitsune rumbles quietly to ask you if you are alright. Your answer to him comes when you shove back onto the other's cock with a hard enough push to almost topple the mounted canid. Growling at you for your presumptuousness Kitsune barks once and then curls his legs around you even tighter before starting to drill your ass a new hole. Restless motions make up the play between the both of you as you almost fight the other for the right to breed. Growling and bucking, your hips move in time with Kitsune's own frantic motions as the vulpine taps his furry nuts into your underside. The weight of the furry orbs are so heavy against your taint that you blush somewhat at the knowledge that soon their contents will be swimming around inside of your guts when Kitsune finishes with you.";
				WaitLineBreak;
				say "Moaning and gripping the sheets of the bed you try not to look into the burning azure eyes of the fox having his way with you, but you can't help but turn your head into Kitsune's as the vulpine laves his tongue across your cheek. Opening your muzzle to swallow the fidgety organ you give your mate a sloppy kiss, the likes of which surprise the hell out of Kitsune, as you continue to push yourself back into the other. The beating your ass is taking is one that you know you're going to regret later on when you try to sit on something, but then again it'll be well worth it you think perversely. That is until you feel a bloated bulge at the end of the fox's cock getting fuller as it gains extra added girth with the every passing second the kitsune uses to hammer himself deeply into your backside. Remembering that canines have knots at the end of their dicks you prepare yourself for the worst when Kitsune's forward thrusts start to become wilder as his bulb grows thicker. When the right leg of the fox goes up into the air you stifle a yelp of pain by biting into the covers when Kitsune finally knots you. Shuddering and crying out as the other buries his bloated orb deeper and deeper into your rectum while still keeping up his restless thrusts, you are not prepared for what happen next.";
				say "Like the animal he has become Kitsune growls and then snaps his teeth around the juncture between your neck and your throat to symbolize your submission underneath him. Yowling the from pain of wickedly sharp fangs burying themselves into your shoulder you find yourself arching up into the other, exactly what Kitsune wanted you to do, and then howling in ecstasy as orgasm rips through you. [if cocks of player is greater than 0] Your, up until now, ignored cock soon gushes with cum as your climax takes you over the edge and into oblivion. [else if cunts of player is greater than 0] Your fluttering nethers twitch and then spread as they ooze honey out from between your legs onto the grassy ground beneath your feet.";
				WaitLineBreak;
				say "Kitsune is not long in chasing after you in the frantic race towards rapture as the fox lifts his fangs free from your neck and then tips his head up to howl at the ceiling powerfully. A shudder goes through the mythical creature's body just in time for you to feel a blazing heat spill forward into your guts. You have to actually suck air through your teeth as you feel the pressure of the flood going through you so powerfully that it act bursts through into your stomach which subsequently makes you feel dizzy from both the heat and intensity. Because of your position you can't see it, but had you been able to you would have notice a small mound starting to swell up inside of your tummy from the rising tide of fox cum filling you to the brim. Flush with orgasm you can only turn your head to the side to nuzzle Kitsune's snout when the other brings his own head down to pant quietly into your face. This definitely has been an experience that you are looking forward to repeating, you think just before passing out onto the top of Kitsune's bed. You never notice when the other pops himself free from your loosened tunnel an hour later, or to how the vulpine stuffs his tongue underneath your rump to clean his seed from out of you with his playful organ.[mimpregchance]";
			now Kitsunearoused is 2;
			kitsuneinfect;
			now lastfuck of Kitsune is turns;


to kitsuneinfect:
	[puts Kitsune as lead monster]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Kitsune":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Kitsune";
	now non-infectious entry is true;


Section 5 - Monster Insertion

to say Kitsune loss:
	say "These are filler messages and should not be seen, as there's no fight with Kitsune.";

to say Kitsune attack:
	say "These are filler messages and should not be seen, as there's no fight with Kitsune.";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Kitsune";
	now attack entry is "[one of]The tall fox man laughs while shooing you away playfully. A blue ball of flame appears in his hand when you don't back down.[at random]";
	now defeated entry is "[Kitsune loss]";
	now victory entry is "[Kitsune attack]";
	now desc entry is "A silver furred vulpine stands on two digitigrade legs while looking at you calculatingly. Piercing azure eyes glare at you somewhat hotly as if the fox-man is trying to undress you with his eyes. Just exactly who or what is this creature that stands with nine soft and flowing tails at his backside? The loincloth tied over his waist tells you nothing, save that the other is well endowed."; [ Description of the creature when you encounter it.]
	now face entry is "a silver foxy muzzles now makes up the mask that is your face. With all of the normal vulpine highlights that make you appear as a fox, the only thing that differentiates you from the other canids around here is the fact that you're eyes are piercing blue. Deep and fathomless, it appears as though you have more wisdom than what would be considered normal for a mortal"; [You have a (your text) face."]
	now body entry is "now that of a creature who is one of both vulpine and human in genetic makeup. A lithe frame hides the dense muscles you have underneath your thick pelt of soft fur. On down your twin digitigrade legs hold you steadily as you balance yourself on your rough paw pads. Grace and poise seem to be the words that define you as the power inside of your veins almost sings with mystical energy"; [ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]silver fur[or]heavy pelted[or]kitsune coat[or]supremely fluffy fox fur[at random] over your"; [ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "A single fox tail sways behind you, swaying almost as if lonesome in want of others to be alongside of it. Thick and luxurious in texture, your tail does possess a sort of superior quality about itself that others would find themselves in awe of were they to look at you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]vulpine[or]canid[or]tapered[or]sheathed[or]thickly knotted[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your eyes blink as you notice that your face has pushed out to form a narrow fox muzzle coloured with moonlight silver fur. Cocking your head to the side you notice that you can hear the wind blowing around you and gape when you realize that your ears have pushed up on top of your head. Long and furry, the twitching folds flip up and down as you move them out of instinct, not to mention curiosity. Looking between your face you notice that you have a black dotted nose, a few whiskers on each side of your snout and finally that your tongue is now long and thick as you pop the organ out from your muzzle"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you notice that the form you now support is one that is covered from neck down to toe in silver fur. Slightly confused as to what has happened to you, you find that your body now has taken on the form of a silver kitsune, the same as Kitsune himself. Tall and imposingly powerful, you feel as the your heart is beating somewhat slower as your senses seem to come alive in a newfound way as you can literally [italic type]feel[roman type] things that you never had before"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "scratch at yourself lightly while trying very, very hard not to. What you come to find by looking down at yourself is that you now have a silver pelt of fur gracing your body. The itching was from the fur pushing out from beneath your skin"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "you wiggle your rump around as though trying to get something from off of your backside. Grunting and finally reaching back to take a scratch you find that you now have a single silver vulpine tail wagging behind you somewhat happily as you stare at it intensely"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "you shuffle your legs together as you feel something pushing and changing down between your legs. Not wanting to look, but knowing that you have to, you let your vision stray down and then gasp at the sight of a silver sheath and tapered shaft both starting up at you. Faintly you wonder if a knot has come included with this package but upon pulling your sheath back you realize that -- yep -- you have a small bulb at the end of your vulpine dick."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 18;
	now cha entry is 20;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;
	now lev entry is 12; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 8; [ Amount of Damage monster Does when attacking. ]
	now area entry is "nowhere";
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls ]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 4; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10;
	now cunt width entry is 5;
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Dropped item.  Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"Use [one of] to vary ]
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is true;
	now non-infectious entry is true;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Kitsune":
		if humanity of player is less than 10:
			say "Without knowing it your mind soon begins to push all of your human thoughts away to replace them with that of a kitsune's. This turns out to be both a blessing and a curse as new thoughts and memories, many of them too indescribable to the human mind, soon start to flood into your brain without you being able to control them. A keening cry soon makes you drop down onto your knees as your body begins to illuminate with a bluish light, the likes of which start to actually make the shadows around you crawl around like snakes. Power. Pure and unadulterated power is now coursing throughout your body, but without the control needed to handle it your form is soon turning in on itself to try and stop the sudden influx of energy. A cool hand ghosts over your head and instantly everything just stops. Blinking and then looking up with confused azure eyes you find the one that had given you your form staring down at you somewhat bemused.";
			say "'I had a feeling that this might happen, though honestly I was hoping that it wouldn't.' Kitsune says and you can only tilt your head to the side as you try and figure out what the other means. 'Don't try and think right now. You'll only make yourself sick, little kit.' The soothing voice of the other kitsune speaks into your head and instantly you want to do nothing more than cuddle up with the other in order to bury yourself underneath the older male's fluffy silver tails. 'Let's leave this place and return home, there is much I have to begin teaching you about how to be a proper kitsune.' With a flick of his graceful silver hand Kitsune summons up a large blue ball of fire and then brings it to his muzzle to blow against the flame. The mystic fire turns into a rolling cloud that soon over takes both you and he and the next thing that you know you are being transported away from the mundane world of humans. No one you know would ever see you again because in the other world where Kitsune resides you would spend the next nine hundred plus years studying how to be a proper kitsune. Though four hundred or so of those years would be spent as the other's bed mate.";
		else:
			say "By the time the military comes in to clean up the city you and Kitsune have gotten close enough to each other than you decide not to part. The silver fox-man is amused with the human's attempts to study him, but only because he spends nine-tenths of the time confusing their machines on the who/how/what of what he is. In the end they scientist who had examined the two of you end up releasing you after Kitsune's DNA finally makes them surrender to their own ignorance. Of course this matters little to you because once you and Kitsune have stepped out into the free world you both spend the next hundred or so years getting to know each other even better than before, while at the same time you receive lessons on how to be a proper kitsune from the other male. As the years roll by more and more tails slip out from your backside, beautifully fluffy as well as luxuriously soft, the flowing appendages become the key sight for others to know you by as the title Many-Tales soon follows you around like a restless spirit. One reason why others call you this is because of your numerous tails, which you almost never seem to conceal with your powers, and two because of the stories you tell others when asked by them to retell some of your past during your more idle hours. Kitsune spends a lot of time teasing you about this when you two are alone together, but you return his jibes by calling him Old Man whenever he does. This results in a lot of fights between you two, though most of them good natured one, but it also ends with a lot of passionate make up sex with your long time friend.";

[ Edit this to have the correct name as well]


Kitsune Hide Away ends here.
