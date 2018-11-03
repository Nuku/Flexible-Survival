Version 1 of Kitsune Expansion by Dys starts here.

Section 0 - Variables

[None for the moment]

Section 1 - Talk

[To be added]

Section 2 - Sex

to say Kitsune_NewMaleDomScenes:
	say "     Blushing and then whispering into Kitsune's ear after shuffling over to him somewhat nervously, you realize you should let the silver fox know what you want. Your heart nearly jumps into your throat when you hear the other growl at you in want. An air of dominance comes over the vulpine like a thick fog and instantly you can feel your stomach tighten up into knots. What are you going to request to do with him?";
	blank out the whole of table of fucking options;
	[New Scene!]
	choose a blank row from table of fucking options;
	now title entry is "Service him orally";
	now sortorder entry is 1;
	now description entry is "Please Kitsune with you mouth";
	[Old Legacy Scene]
	choose a blank row from table of fucking options;
	now title entry is "Let the fox mount you";
	now sortorder entry is 2;
	now description entry is "Have Kitsune shift to his feral form and mount you";
	[New Scene!]
	choose a blank row from table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 3;
	now description entry is "Ride the fox's cock, letting him use his tails to his advantage";
	[New System!!]
	[choose a blank row from table of fucking options;
	now title entry is "Let him decide";
	now sortorder entry is 4;
	now description entry is "See just how well the fox knows you";]
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows from table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[line break][link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows from table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber from table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is:
					-- "Service him orally":
						say "[Kitsune_ServiceOrally]";
					-- "Let the fox mount you":
						say "[Kitsune_OldAnalDom]";
					-- "Ride his cock":
						say "[Kitsune_RideCockAnal]";
					-- "Let him decide":
						say "[Kitsune_Decide]";

Section 2.1 - Individual Scenes

to say Kitsune_ServiceOrally:
	say "     [if player is submissive]Timidly[else]Eagerly[end if], you make your suggestion to the fox, watching his expression to see if he likes the idea. You're met with a small smirk and another lustful growl as the vulpine closes the gap between the two of you, locking his muzzle with your [if player is MuzzleFaced]own in a heated kiss, his tongue flicking across your teeth and into your maw eagerly. The deep french kiss is erotic and exciting, all the things you could've wanted from the wonderful vulpine, and you can't help but melt into his embrace.[else]face, his tongue brushing against your lips, seeking entrance. You quickly grant him what he wants, embracing the lustful yet awkward kiss, feeling his tongue swirling around inside your mouth.[end if] Of course, it doesn't last forever. Soon enough, Kitsune breaks the kiss, your mouth connected to his by a strand of saliva. He grins salaciously at you before stepping back and shifting into his quadrupedal form, [if player is FeralBodied]making sure that his chest is level with the top of your head[else]adjusting his size so the top of his head comes up to your chest[end if].";
	say "     It would seem your silvery companion wants you to enjoy him in his more natural form, which only serves to excite you further. You [if player is FeralBodied]duck your head down, going into a slight crouch to fit yourself beneath him, wiggling closer to his groin[else]get down on your hands and knees, crawling beneath him to his waiting sheath[end if]. The masculine musk rolling off of him is intoxicating, a wonderful, heady aroma that makes you shiver in arousal. Eager to get started, you extend your tongue to lick along his heavy sack, letting the salty taste fill your senses. Involuntarily, you moan as you continue to work those hefty nuts with your tongue, occasionally taking one into your mouth to suckle. If the small, lusful growl from the fox above you is any indication of how much he's enjoying this, you can't wait to see how much he'll like your next step. You eagerly move on to his sheath, lapping along the plump, fuzzy flesh, feeling it throb and pulse under your teasing tongue. Slowly but surely his length begins to emerge, the entire tool slipping free in just under a minute of your expert treatment.";
	WaitLineBreak;
	say "     Deciding it's time to move on to the main event, you wrap your lips around the tip of his pulsing member. Immediately, a spurt of pre lands on your tongue, setting your tastebuds alight with Kitsune's exotic musky flavor, making you desire more. He's not one to deny you this as you feel a gentle tail pressing against the back of your head, urging you on. A low growl reinforces the fox's desire, so you quickly and eagerly oblige him, taking a bit of his length past your lips, swirling your tongue around its girth. You continue this treatment for just a bit longer, electing to tease the vulpine.";
	if scalevalue of player > 3: [Small player]
		if player is twistedcapped: [Player is able to take it all.]
			say "     You're only able to play with him for a few moments before he steps forward, suddenly forcing a few inches into your mouth. You moan loudly around the fox's meat, your tongue continuing to caress the parts you can reach as his hips gently buck, using your maw as one may use a more traditional orifice. You hear him huff and growl as he takes another step forward, forcing another few inches into you, this time breaching your throat and bulging it lewdly. Further and further the fox presses in before his knot finally kisses your lips, a promise of what you know is coming soon. He withdraws about halfway, his tails moving sporadically behind him betraying just how much he's enjoying this, their movements jolting and twitching as he thrust in once more. His knot pats against your lips with every thrust he makes, getting louder and louder as he grows more determined to tie you. You can feel his cock twitching and throbbing as his climax approaches, but it seems he [italic type]needs[roman type] that extra pleasure from tying to push him over the edge.";
			WaitLineBreak;
			say "     With a low growl of determination, Kitsune pushes into you with all his might, a tail holding your head still as his knot finally pushes past your resisting jaw. Alarmingly, though, he doesn't stop there, instead pushing even further, taking advantage of your body's twisted properties and stretching your jaw even wider as even his knot nears your throat. He pushes hard, giving a low growl as he feels your pliable form yielding around him, his knot finally slipping into your throat where it begins to swell, well and truly locking you together. Thankfully your corrupted form allows you to take it without pain, even as his knot reaches its full size and his climax begins. His entire cock undulates and twitches as he begins to spurt rope after rope of his hot vulpine seed into your depths, nearly going straight into your stomach. All that cum flowing into you with nowhere to go causes your stomach to swell steadily, to the point you almost start to look pregnant. Finally, after what feels like an eternity, his climax begins to taper off, ending with just a few smaller spurts of thick cum.";
			say "     Now the two of you simply lie in wait, Kitsune panting in exhaustion. He's truly given you everything he has, yet even still his tails gently caress your form, doing his best to help you relax as the two of you wait for his knot to go down.";
		else: [Player is unable to take it all, though depending on chance, Kitsune might force the knot in anyway.]
			if a random chance of 3 in 4 succeeds:
				say "     Eventually, you move your head down, taking more and more of Kitsune's length into your mouth, soon feeling his tapered tip pressing against the back of your throat. You give a soft whine of disappointment at being unable to take more, but a gentle growl from the fox gives you a boost of determination. You rise off of his length until only his tip remains in your mouth, flicking your tongue around it a bit before slowly taking it to the back of your throat once more. This time, you actively try to feed yourself more of the shaft, feeling the tip beginning to spread your throat wide. You grimace in slight pain, but press on, trying your best to please him. Throat bulging outwards, you eventually have to stop. This doesn't seem to bother Kitsune as he looks at you lustfully, tails gently caressing your form as you work his cock.";
				WaitLineBreak;
				say "     Seeming pleased with your effort thusfar, his tails wrap around your form, stopping you as he decides to take over the fun. He growls lustfully as he thrusts into your [if player is MuzzleFaced]maw[else]mouth[end if]. He's not too harsh, but fast enough that you can tell he's beginning to approach his climax. He grunts as his cock twitches and throbs inside you, and you [if player is FeralBodied]moan eagerly as you feel his thrusts growing more frantic, driving him closer and closer to his impending climax[else]decide to give him that last bit of help to push him over the edge, hands reaching up to grip at his knot, feeling it pulse and throb under your fingers[end if]. With a loud howl, he cums, thick strands of fox cum spilling straight down your throat. You do your best to swallow down the seed, but the sheer volume of it is a bit too much to handle, and some of it spills from the coreners of your mouth. Eventually, his flow tapers down, your belly bloated with what you were able to swallow and your body stained with what you weren't. He gives you a pleased, happy look as he pulls his cock from your mouth, turning around to give your face a gentle lick as he comes down from his high.";
			else:
				say "     <Kitsune gently uses the player's maw for a bit before moving on to rougher fucking. Eventually, he overcomes the player's body's resistance, and manages to knot their mouth.>";
				WaitLineBreak;
				say "     <Player gets filled heavily by kitsune's seed, but still not as much as throat knotting. A bit leaks out of the player's nose.>";
	else:
		say "     Another soft growl from the fox urges you on, [if player is FeralBodied]taking a step forward to take another few inches of his shaft into your [if player is MuzzleFaced]maw[else]mouth[end if].[else]wrapping your hands around his shaft just a bit further down, giving it gentle pumps as you take another few inches into your mouth eagerly.[end if] Kitsune let's you continue on your own for a bit, but he seems to be growing a tad bit impatient as his hips suddenly lurch forward, cramming another several inches into you. You can feel his tip press against the back of your throat and you can't help but let out a low moan as he starts thrusting into your mouth at a gentle yet steady pace. As he grows more and more eager, his thrusts get faster and faster until he manages to breach your throat, pressing the final few inches up to the knot inside your mouth. He growls and barks as he redoubles his efforts, his large knot making soft pats as he works to get it past your lips. Harder and harder he presses, until finally, it slips in with a lewd pop. It quickly begins to throb and swell even larger, locking it behind your teeth until he's well and truly finished with you.";
		WaitLineBreak;
		say "     You groan lowly around the cock embedded in your mouth and throat, body jolting gently as Kitsune makes his final thrusts to push himself over the edge. You can feel his entire shaft undulate and throb as he reaches his climax, the rush of rich fox seed spilling straight down your throat. You do your best to gulp it down eager, rope of rope of the thick cream quickly filling your stomach. It does stop at that, though, the flow continuing until your belly starts to swell with its volume. Only then does the stream seem to taper off, slowly but surely ending with a final few spurts. You feel a tail gently caressing your belly as Kitsune lets out a content rumble. It seems the two of you will be stuck like this for a fair bit while the fox's afterglow wears off.";
	Kitsune_FuckFinish;


to say Kitsune_RideCockAnal:
	say "     <Placeholder>";
	Kitsune_FuckFinish;

Section 2.2 - Kitsune Decide

to say Kitsune_Decide:
	say "     <super duper placeholder. This will be a very big thing when done.>";
	Kitsune_FuckFinish;


Section 2.4 - Functions

to Kitsune_FuckFinish:
	now Kitsunearoused is 2;
	kitsuneinfect;
	now lastfuck of Kitsune is turns;

Section 3 - Legacy Scenes

to say Kitsune_OldAnalDom:
	setmonster "Kitsune";
	say "Walking past Kitsune to go over to the fox-man's bed, you strip yourself free from your clothing without a word spoken. Letting the fox-man know exactly what you want and how you want it without having to speak a word, you make yourself ready for your lover to take you as you lay yourself down onto the flat of the plush mattress and then wiggle your ass up at the vulpine. Kitsune seems to accept this behavior with good humor as he throws his own loincloth off and then gets down onto his hands and knees to shift his shape into that of his more animal-like form. Watching with wide eyes as the feral fox comes over to you, you don't hesitate in moaning aloud when you feel Kitsune dipping his head down to spread your puckered taint open with his flat, but broad tongue. A whimper pierces free from your lips as the dexterous organ whips its way inside of you all the way up to your pleasure button and then over the small hidden mound until you are visibly jerking up and down on the bed from the spikes of pleasure going through you.";
	say "You could almost swear that you heard a laugh come from behind you, but this can't be right since Kitsune's muzzle is currently buried up into your ass. Not bothering to wonder on this for long, you gasp and then shiver when the other pulls himself free from your ass and then gives an audible lick of his lips before growling at you hotly. Looking into the other's azure blue eyes, you don't stop yourself from dropping your eyes down to have a look at the vulpine's midsection when a slight tint of red catches the corner of your vision. Twisting your head down some to have a look see at what the fox is packing, you smile approvingly as Kitsune lifts his right rear leg up to show you what you're dealing with. Longer than a foot with a thick girth and a tapered head, the fox's cock is a thing of both beauty and wonder as you look at it with lustful eyes. Dripping from the head of the shaft are thick beads of precum and idly you find yourself wondering what it would be like to have that animal-like cock thrusting into the back of your throat as you bury your face into Kitsune's groin.";
	WaitLineBreak;
	say "Again you can swear that you can hear a laugh come from Kitsune, but upon snapping your gaze up to the fox's silvery face you find that the vulpine is merely smiling at you instead of all out laughing. You fleetingly wonder if the other can laugh in this form but before you can ponder over this for too long Kitsune has lowered his hind leg back to the floor and is now walking up to you. A lick across your cheek has you smiling at the other and then turning your head around so that you can lower your front more fully onto the mattress of the other's bed. A huff of pleasure comes from Kitsune at seeing you in this position and quickly the fox mounts you like a normal canine would. Four long limbs wrap themselves tightly around your body as Kitsune hugs you firmly up into his furry chest and you have to chuckle at the disbelief of actually wanting to let another creature fuck you in this position, right before you moan as the fox slides his eager cock into your awaiting body. A gasping shudder makes you tense up as the turgid length back behind you moves steadily through your rectum, but before you can become too tight for him to move Kitsune places his head down next to yours to lick you across the face. The calming feel of the fox's tongue sweeping across your lips and nose has you relaxing enough to let the vulpine hilt himself inside of you completely.";
	say "The touch of fur against your body feels almost electric to you and you don't stop from shuddering as your mate pumps his hips steadily into your ass until he fully inserts himself into your rectum. This fact mixed with the feel of Kitsune's heavy weight on your back and the knowledge that the vulpine is pressed hip to ass with you takes you above and beyond the realm of sensuality as you pant openly into the fox's concerned face. Still looking at you with careful azure eyes Kitsune rumbles quietly to ask you if you are alright. Your answer to him comes when you shove back onto the other's cock with a hard enough push to almost topple the mounted canid. Growling at you for your presumptuousness Kitsune barks once and then curls his legs around you even tighter before starting to drill your ass a new hole. Restless motions make up the play between the both of you as you almost fight the other for the right to breed. Growling and bucking, your hips move in time with Kitsune's own frantic motions as the vulpine taps his furry nuts into your underside. The weight of the furry orbs are so heavy against your taint that you blush somewhat at the knowledge that soon their contents will be swimming around inside of your guts when Kitsune finishes with you.";
	WaitLineBreak;
	say "Moaning and gripping the sheets of the bed you try not to look into the burning azure eyes of the fox having his way with you, but you can't help but turn your head into Kitsune's as the vulpine laves his tongue across your cheek. Opening your muzzle to swallow the fidgety organ you give your mate a sloppy kiss, the likes of which surprise the hell out of Kitsune, as you continue to push yourself back into the other. The beating your ass is taking is one that you know you're going to regret later on when you try to sit on something, but then again it'll be well worth it you think perversely. That is until you feel a bloated bulge at the end of the fox's cock getting fuller as it gains extra added girth with the every passing second the kitsune uses to hammer himself deeply into your backside. Remembering that canines have knots at the end of their dicks you prepare yourself for the worst when Kitsune's forward thrusts start to become wilder as his bulb grows thicker. When the right leg of the fox goes up into the air you stifle a yelp of pain by biting into the covers when Kitsune finally knots you. Shuddering and crying out as the other buries his bloated orb deeper and deeper into your rectum while still keeping up his restless thrusts, you are not prepared for what happen next.";
	say "Like the animal he has become Kitsune growls and then snaps his teeth around the juncture between your neck and your throat to symbolize your submission underneath him. Yowling the from pain of wickedly sharp fangs burying themselves into your shoulder you find yourself arching up into the other, exactly what Kitsune wanted you to do, and then howling in ecstasy as orgasm rips through you. [if player is male] Your, up until now, ignored cock soon gushes with cum as your climax takes you over the edge and into oblivion. [else if player is female] Your fluttering nethers twitch and then spread as they ooze honey out from between your legs onto the grassy ground beneath your feet.";
	WaitLineBreak;
	say "Kitsune is not long in chasing after you in the frantic race towards rapture as the fox lifts his fangs free from your neck and then tips his head up to howl at the ceiling powerfully. A shudder goes through the mythical creature's body just in time for you to feel a blazing heat spill forward into your guts. You have to actually suck air through your teeth as you feel the pressure of the flood going through you so powerfully that it act bursts through into your stomach which subsequently makes you feel dizzy from both the heat and intensity. Because of your position you can't see it, but had you been able to you would have notice a small mound starting to swell up inside of your tummy from the rising tide of fox cum filling you to the brim. Flush with orgasm you can only turn your head to the side to nuzzle Kitsune's snout when the other brings his own head down to pant quietly into your face. This definitely has been an experience that you are looking forward to repeating, you think just before passing out onto the top of Kitsune's bed. You never notice when the other pops himself free from your loosened tunnel an hour later, or to how the vulpine stuffs his tongue underneath your rump to clean his seed from out of you with his playful organ.[mimpregchance]";
	now Kitsunearoused is 2;
	kitsuneinfect;
	now lastfuck of Kitsune is turns;

Kitsune Expansion ends here.
