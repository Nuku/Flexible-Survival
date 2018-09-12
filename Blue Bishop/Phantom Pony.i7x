Version 1 of Phantom Pony by Blue Bishop begins here.
[Version 1 -- Commissioned]
"Any time is a good time for a ride!"

Table of GameCharacterIDs (continued)
object	name
Blot	"Blot"

Blot is a person. Blot is in Abandoned Storage Room.
the description of Blot is "[blotlook]".
the fuckscene of Blot is "[blotfuck]".
instead of sniffing Blot:
	say "     The object smells faintly of fresh synthetics, [if blotintense > 3]tinged with the heady aroma of your sex[else]but else isn't noteworthy[end if].";
Instead of conversing the Blot:
	say "     [one of]The object is inanimate[or]You imagine that won't go anywhere[or]As much as you can imagine such a thing being possible given the circumstances, this doesn't appear to be the case[or]You imagine you'd need peanut butter to make the inflatable horse talk.[run paragraph on] Good luck finding some[as decreasingly likely outcomes].";
to say blotlook:
	project the figure of Blot_icon;
	if blotintense is -1:
		say "     Standing there quietly in a corner of the stall, the else rustic aesthetic of the area is clashed harshly against a seemingly cartoonish, inflatable horse toy. Looking it over closely, it seems relatively harmless, and its 'purpose' is seemingly revealed by a lewdly placed hole between its hind legs.";
		say "     You're not sure why anyone would make such a thing -- assuming it isn't somehow the byproduct of this nanite plague -- as the seemingly flimsy thing couldn't possibly support the weight of an adult horse -- if it's meant as a standin for breeding. The tail of the toy is molded to be swept sideways, to ensure easy access, so it's clear it was designed to facilitate this purpose.";
		say "     There seems to be the word 'Blot' crudely carved into the wood next to it, so you imagine that's what it's called. It's entirely possible someone left it in this room, since nobody seems to go back here. In any case, you could probably use it yourself for 'relief', but the way things are you have no idea what might happen if you do...";
	else:
		blotdecay;
		say "     Standing there quietly in a corner of the stall, the else rustic aesthetic of the area is clashed harshly against a seemingly cartoonish, inflatable horse toy. As far as you're aware the thing is generally harmless, the hole between its legs plainly illustrating its purpose.";
		say "     You're still not sure why anyone would make such a thing -- assuming it isn't somehow the byproduct of this nanite plague. It's certainly deceptive in how well it can handle weight, but you can't possibly imagine this was ever meant for a proper horse. The tail of the toy is molded to be swept sideways, ensuring easy access and exposing the toy's cartoonish, rounded hips.";
		say "     'Blot' [one of]is[or]remains[stopping] carved into the wood next to it. You have no idea who named it this, why, and what might've happened to them.";
		say "     [italic type][if blotintense < 3]The thing looks completely inanimate.[run paragraph on] You're fairly certain there'll be little to no consequence in using it right now[else if blotintense < 5]The thing appears to be mostly in a mundane state right now, but it seems to subtly become excited as you approach.[run paragraph on] You could probably get away with using it[else if blotintense < 8]The thing seems tinged with a streak of wanton menace.[run paragraph on] You could probably get away with using it, but not for long[else if blotintense < 10]You feel ill at ease near the thing, as though you're being drawn to the tainted object.[run paragraph on] You don't think it'd be particularly wise to use it right now[else]The thing seems to undulate from the corners of your eyes, as though thrumming with an otherworldly need.[run paragraph on] You feel overwhelmingly drawn to the thing, but you'd have to be insane to use it now[end if]...[roman type][line break]";
	LineBreak;

Northeast of Milking Shed Main Room is Abandoned Storage Room.

The description of Abandoned Storage Room is "     Cordoned off from the rest of the milking shed, not too far from the generator, appears to be somewhat dilapidated and disregarded storage room. Dimly lit, there's a few old, obsolete tools stacked up against the walls, but is otherwise sparsely filled save for a rather jarring, brightly colored fixture at the far end.".

blotintense is a number that varies. blotintense is usually -1;
[
Variant for intensity:
0-2: 1 struggle, almost no sanity loss.
3-4: 2 struggle, minor sanity loss.
5-7: 3 struggle, moderate sanity loss.
8-9: 4 struggle, major sanity loss.
10+: 5 struggle, massive sanity loss.
]


to say blotfuck:
	if player is neuter:
		say "     You imagine that you wouldn't get a whole lot out of trying to have sex with the inanimate object.";
	else:
		blotdecay;
		say "     Are you sure? [if blotintense is -1]Who knows what will happen![else if blotintense > 4]You imagine it won't end well, by this point![end if]";
		if player consents:
			if blotintense is -1:
				say "     As you approach the curious toy, you start off by casually prodding the thing to see how it responds to your touch. It wobbles slightly against the poking, appearing completely inanimate. That particular query answered, you circle around to the rear of the inflatable pony.";
				if player is male:
					say "     The behind is a smooth, featureless curve save for a faintly visible fold, clearly your point of entry. The hole easily expands to occupy your exploring digits, and though it's quite soft and yielding there's no apparent lubrication from the thing. There's none laying around in the room, but you probably could use your saliva. Shall you? Else you'll get straight to the point.";
					if player consents:
						say "     [if scalevalue of player > 2]Setting yourself down to get[else]Your diminutive size granting you[end if] easy access to the hole, your tongue forces its way past the vinyl lips. Fairly straightforward, sterile taste of the material lightly entering your senses, the object doesn't seem to respond to being attended to in this manner, though it does seem to heat up more than you expect...";
						say "     Satisfied with your preparation";
					else:
						say "     Moving on";
					say ", you [if scalevalue of player < 4]climb onto the pony's back[else]crawl on top of the pony[end if], carefully aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance before forcing its way in. The toy [if cock length of player > 11]seems to easily take your cock, in spite of its impressive size; it takes a bit of work, but the pliable material stretches to handle its substantive girth[else]takes your cock without any difficulty, easily burying the organ into its pliable depths[end if].";
				else:
					say "     Its behind is a smooth, featureless curve save for a faintly visible fold. Clearly, there's not much here for you to really get out the thing, but there's nobody here to tell you what you can and can't do for a bit of fun!";
					say "     Briefly preparing yourself, [if scalevalue of player < 4]you climb onto the pony's back[else]you crawl on top of the pony[end if], grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's hindquarters. You quickly find yourself getting more pleasure out of this than you expected, driving you to continue.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to build up an earnest, the thing seems to quickly heat up against your touch, soon sweat-slicked body writhing against the slippery toy[if scalevalue of player > 3].[run paragraph on] You're slightly concerned that the toy might crumple under your impressive size, but it seems to slowly grow in size to accommodate its larger rider[end if]. By this point it getting plainly apparent that the object is indeed possessed by some otherworldly influence, your [bodytype of player] body beginning to stick to its surface, as though it's trying to cling to you. Its ability to hold on you seems fairly weak, however, meaning you could probably get away with using it, if only for a little while...";
				now blotintense is 0;
			else if blotintense < 3:
				say "     As you approach the curious toy, it looks like it's completely regressed to an entirely benign state, as inanimate as when you first encountered it. You make your way around to the rear of the inflatable pony.";
				if player is male:
					say "     Its smooth, near-featureless behind exposes your intended point of entry. The hole easily expanding to occupy your exploring digits, the soft and yielding material seems entirely devoid of any sexual fluids from before. Since this means it's devoid of lubrication, you consider using your saliva. Shall you? Else you'll get straight to the point.";
					if player consents:
						say "     [if scalevalue of player > 2]Setting yourself down to get[else]Your diminutive size granting you[end if] easy access to the hole, your tongue forces its way past the vinyl lips. Somewhat familiar, sterile taste of the material lightly entering your senses, the object barely responds to your touch, warming up only slightly as your slick, writhing organ prepares it.";
						say "     Satisfied with your preparation";
					else:
						say "     Moving on";
					say ", you [if scalevalue of player < 4]climb onto the pony's back[else]crawl on top of the pony[end if], carefully aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance before forcing its way in. The toy [if cock length of player > 11]seems to easily take your cock, in spite of its impressive size; it takes a bit of work, but the pliable material stretches to handle its substantive girth[else]takes your cock without any difficulty, easily burying the organ into its pliable depths[end if].";
				else:
					say "     Its smooth, near-featureless behind eagerly invites you to ride upon it. Gently running your hand across its surface, it's clear that any mess of the object you might've made prior is gone.";
					say "     Briefly preparing yourself, [if scalevalue of player < 4]you climb onto the pony's back[else]you crawl on top of the pony[end if], grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's hindquarters. ";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to build up an earnest, the thing quickly heats up against your touch, soon sweat-slicked, [bodydesc of player] form writhing against the slippery toy[if scalevalue of player > 3].[run paragraph on] You're slightly concerned that the toy might crumple under your impressive size, but it seems to slowly grow in size to accommodate its larger rider[end if]. Its otherworldly power ignited by your influence, your [bodytype of player] body begins to stick to its surface, weakly trying to cling to you, but otherwise having little power over its rider, for now...";
			else if blotintense < 5:
				say "     As you approach the curious toy, it subtly quivers in response to your mere presence. You make your way around to the rear of the inflatable pony.";
				if player is male:
					say "     Its smooth, near-featureless behind exposes your intended point of entry. The hole is already a bit open from your last adventure, or perhaps the soft and yielding material is trying to invite you? It's clearly already lubricated with your sexual fluids, but you could play around with it anyways. Shall you? Else you'll get straight to the point.";
					if player consents:
						say "     [if scalevalue of player > 2]Setting yourself down to get[else]Your diminutive size granting you[end if] easy access to the hole, your tongue makes its way past the vinyl lips. A mix of the somewhat familiar, sterile taste of the material and your own sex, the hole almost immediately clings to your face, trying to lock you in place in response to your slick, writhing organ's touch.";
						say "     Eventually managing to pull yourself free";
					else:
						say "     Moving on";
					say ", you [if scalevalue of player < 4]climb onto the pony's back[else]crawl on top of the pony[end if], carefully aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance before forcing its way in. The toy trembles under your weight, [if cock length of player > 11]easily stretching to accommodate the girth of your impressive[else]easily taking your[end if] cock as a latex-like substance begins to engulf it[if cockname of player is not listed in infections of internallist] and your [ball size][end if][if player is female and cocks of player > 2], as well as your cunt[sfn] and other rods[else if player is female and cocks of player > 1], as well as your cunt[sfn] and other rod[else if cocks of player > 2], as well as your other rods[else if cocks of player is 2], as well as your other rod[end if].";
				else:
					say "     Its smooth, near-featureless behind eagerly invites you to ride upon it. Gently running your hand across its surface, the object trembles under your touch, almost immediately trying to bind your digits to it before you pull yourself free once more.";
					say "     Briefly preparing yourself, [if scalevalue of player < 4]you climb onto the pony's back[else]you crawl on top of the pony[end if], grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's hindquarters. Almost immediately, you feel something wet flood your crotch, engulfing your [cunt size desc of player] cunt[sfn], and caressing you as you writhe.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to build up an earnest, the thing eagerly aids your motion, soon sweat-slicked, [bodydesc of player] form writhing against the sticky toy. [if scalevalue of player > 3]Inflating to accommodate your impressive size[else]Subtly vibrating with an otherworld influence[end if], it comes to life under your touch, soon making it difficult for your [bodytype of player] body to move without its aid as it clings to you...";
			else if blotintense < 8:
				say "     As you approach the curious toy, it subtly quivers in response to your mere presence. You make your way around to the rear of the inflatable pony.";
				if player is male:
					say "     Its smooth, near-featureless behind exposes your intended point of entry. The hole is already a bit open from your last adventure, or perhaps the soft and yielding material is trying to invite you? It's clearly already lubricated with your sexual fluids, but you could play around with it anyways. Shall you? Else you'll get straight to the point.";
					if player consents:
						say "     [if scalevalue of player > 2]Setting yourself down to get[else]Your diminutive size granting you[end if] easy access to the hole, your tongue makes its way past the vinyl lips. A mix of the somewhat familiar, sterile taste of the material and your own sex, the hole almost immediately clings to your face, trying to lock you in place in response to your slick, writhing organ's touch.";
						say "     Eventually managing to pull yourself free";
					else:
						say "     Moving on";
					say ", you [if scalevalue of player < 4]climb onto the pony's back[else]crawl on top of the pony[end if], carefully aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance before forcing its way in. The toy trembles under your weight, [if cock length of player > 11]easily stretching to accommodate the girth of your impressive[else]easily taking your[end if] cock as a latex-like substance begins to engulf it and the entirity of your hindquarters[if cocks of player > 2], along with your other rods[else if cocks of player is 2], along with your other rod[end if]";
					if player is female:
						say ". Feeling something wet flood your cunt[sfn][if anallevel > 1] and ass[end if], [if cunts of player > 1 or anallevel > 1]they quickly harden into thick, ridged appendages to pound you with[else]it quickly hardens into a thick, ridged appendage to pound you with[end if]";
					else if anallevel > 1:
						say ". Feeling something wet flood your ass, it quickly hardens into a thick, ridged appendage to pound you with";
					say ".";
				else:
					say "     Its smooth, near-featureless behind eagerly invites you to ride upon it. Gently running your hand across its surface, the object trembles under your touch, almost immediately trying to bind your digits to it before you pull yourself free once more.";
					say "     Briefly preparing yourself, [if scalevalue of player < 4]you climb onto the pony's back[else]you crawl on top of the pony[end if], grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's hindquarters. Almost immediately, you feel something wet flood your crotch, engulfing your [cunt size desc of player] cunt[sfn] and [if cunts of player > 1]their[else]your[end if] depths, quickly hardening into thick, ridged appendages to pound you with.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to build up an earnest, the thing eagerly aids your motion, soon sweat-slicked, [bodydesc of player] form writhing against the sticky toy. [if scalevalue of player > 3]Inflating to accommodate your impressive size[else]Subtly vibrating with an otherworld influence[end if], it comes to life under your touch, soon making it difficult for your [bodytype of player] body to move without its aid as it clings to you...";
			else if blotintense < 10:
				say "     As you approach the curious toy, it distinctly trembles in response to your mere presence. Somewhat cautiously, you make your way around to the rear of the inflatable pony.";
				say "     Its smooth, near-featureless behind invites your touch; however, it reacts quite intensely from the simplest of gestures and the surface liquefies enough to grip around your digits, pulling you close. Instinctively, after being thrown off balance, try to shove yourself free, but this only succeeds in pulling you closer.";
				say "     Forcibly, you're dragged [if scalevalue of player < 4]on top of the pony's back[else]over of the pony[end if], ";
				if player is male:
					say "eagerly encasing[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn][if cocks of player > 2] before taking the rest as well[else if cocks of player is 2] before taking the other as well[end if].";
					say "     The toy trembles under your weight, easily having consumed your[if cock length of player > 11] impressive[end if] meat as a latex-like substance quickly engulfs[if cockname of player is not listed in infections of internallist] your [ball size][else]the rest of your crotch[end if] as well";
					if anallevel > 1:
						say ". Soon, you feel the tainted material flood your [if player is female]cunt[sfn] and ass, pounding your holes with a quickly-expanding, quickly-hardening series of distinctly ribbed implements[else]your ass, pounding your hole with a quickly expanding, quickly-hardening series of distinctly ribbed implements[end if]";
					else if player is female:
						say ". Soon, you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a quickly-expanding, quickly-hardening series of distinctly ribbed implements";
					say ".";
				else:
					say "forcing you to grind against its smooth surface as your crotch is quickly engulfed in the latex-like substance";
					if anallevel > 1:
						say ". Soon, you feel the tainted material flood your cunt[sfn] and ass, pounding your holes with a quickly-expanding, quickly-hardening series of distinctly ribbed implements.";
					else:
						say ". Soon, you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a quickly-expanding, quickly-hardening series of distinctly ribbed implements.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight, you're barely given time to acclimate before the thing pounds you relentlessly. Sweat-slicked, [bodydesc of player] form writhing against the tightly binding toy, it [if scalevalue of player > 3]expands to fully accommodate your impressive size with each motion, squeezing[else]squeezes[end if] firmly against you as you're forced to endure its twisted need. Having reached a point of utterly deranged purpose, it shows absolutely no restraint in trying to fiercely abuse the bliss out of you...";
			else:
				say "     Choosing now to approach the twisted toy, of all times, it rumbles lowly and trembles in regards to your mere proximity.";
				say "     Before you're even given a chance to react, the pony opens up, wrapping latex-like tendrils around your limbs and near-instantly pulling you inside of it. [if scalevalue of player > 3]Tightly wrapped around your [bodytype of player] body as it gradually expands to accommodate your impressive size[else]Wrapped around your [bodytype of player] body[end if], ";
				if player is male:
					say "your partially-aroused, [cock size desc of player] cock[if cocks of player > 1]s are[else] is[end if] firmly gripped as they immediately and firmly pumped";
					if anallevel > 1:
						say ". Moreover, you feel the tainted material flood your [if player is female]cunt[sfn] and ass, pounding your holes with a quickly-expanding, quickly-hardening series of distinctly ribbed implements[else]your ass, pounding your hole with a quickly expanding, quickly-hardening series of distinctly ribbed implements[end if]";
					else if player is female:
						say ". Moreover, you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a quickly-expanding, quickly-hardening series of distinctly ribbed implements";
					say ".";
				else:
					if anallevel > 1:
						say "you feel the tainted material flood your [if player is female]cunt[sfn] and ass, pounding your holes with a quickly-expanding, quickly-hardening series of distinctly ribbed implements[else]your ass, pounding your hole with a quickly expanding, quickly-hardening series of distinctly ribbed implements[end if].";
					else:
						say "you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a quickly-expanding, quickly-hardening series of distinctly ribbed implements.";
					say "     Completely encased in the vinyl pony, there's no indication of your occupancy, save for your groans and lustful writhing[if player is male], in addition to your exposed, throbbing cock[smn], enveloped in a sheath presented as though it were the toy's own[end if]. This wasn't the wisest thing to do, you imagine it'll take a lot of work to escape this predicament, if it's even possible by this point...";
			WaitLineBreak;
			blotbind;
			now lastfuck of Blot is turns;

to blotdecay:
	if lastfuck of Blot - turns >= 4 and blotintense > 0:
		decrease blotintense by ((lastfuck of blot - turns) / 4);
		if blotintense < 0, now blotintense is 0;


to blotbind:
	psycheeval;
	libidoeval;
	now lustatt is libido of player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if clearnomore is 0, clear the screen;
		checkboundrecover;
		if lustatt > 99:
			blotbindorgasm;
			if libido of player > 12, decrease libido of player by (libido of player / 7) + 1;
			if blotintense < 11, increase blotintense by 1;
			now lustatt is libido of player;
			blotsanityorgasm;
			blotprogress;
		now enduring is false;
		checkblotsegment;
		say "[blotbinddesc]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link]Oblige[as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [blotstrugglebar][line break][run paragraph on]";
		if humanity of player < 1:
			if blotintense < 3:
				say "     Though it's pretty much inanimate, you're reached such a point of becoming deranged that you simply cannot control yourself any longer, riding the inflatable pony until it eventually changes. Drawing you inside itself, you're perpetually milked within the vinyl prison.";
			else if blotintense < 10:
				say "     Losing yourself to your overwhelming need on the inflatable pony, you're unable to fight back as it eventually draws you inside itself, perpetually milked within the vinyl prison.";
			else:
				say "     Losing yourself to your overwhelming need, trapped within this vinyl prison, the inflatable pony shows no relent in perpetually milking you.";
			say "     Eventually, you completely lose track of time. From your limited vision through the toy's eyes, it's very apparent that nobody is aware of your ultimate fate, doomed to constant abuse by this tainted suit...";
			WaitLineBreak;
			now bodyname of player is "Blotted";
			now humanity of player is 0;
			end the story saying "You are milked perpetually by the toy.";
			now Trixieexit is 1;
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < boundsegment:
					say "You struggle to ";
					if blotintense < 5:
						say "pull yourself free of the toy, [one of]creaking softly against your motions[or]sticky thing trying its best to keep you in place[at random].";
					else if blotintense < 10:
						say "pry yourself free of the toy's powerful hold, [one of]creaking and groaning against your protests[or]engulfing vinyl trying its best to pull you back within its hold[or]squeaking against your motions as you fight it[at random].";
					else:
						say "escape this prison of a toy, [one of]creaking and groaning around you[or]enveloping vinyl trying its best to keep you within its hold[or]squeaking against your motions as you fight it[at random]";
					LineBreak;
					blotsanitypassive;
					blotlust;
				else:
					say "     [if blotintense < 3]Easily[else if blotintense < 5]With relative ease[else if blotintense < 8]Eventually[else]Finally[end if], you manage to wrench yourself free and dismount the possessed toy, [if blotintense < 3]though it quickly regresses to a state of complete inanimacy[else if blotintense < 5]gradually cooling down and becoming inanimate once more[else if blotintense < 8]quivering for a moment as it slowly begins to fill the void you left[else if blotintense < 10]the mess of a thing trembling in distress over its now-missing rider[else]the thing practically crawling over to be one with you once more, forcing you to retreat even further[end if].";
					say "     You clean yourself off and prepare to go about your business once more. [if blotintense > 5]It's likely best that you leave the vinyl object alone until it 'cools down' a bit[else]The vinyl object seems relatively harmless, for now at least[end if]...";
					LineBreak;
					cleanboundmemory;
					WaitLineBreak;
					now Trixieexit is 1;
				WaitLineBreak;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if 1 is 1: [if obliging is true]
					say "You continue to [if blotintense < 5]ride the vinyl pony[else]oblige the vinyl pony's influence[end if], ";
					if blotintense < 8:
						say "[one of]loudly creaking against your weight[or]squeaking against your body as you rub against it[or]motion slicked by your perspiration[at random].";
					else:
						say "[one of]loudly creaking as it continues to milk you[or]squeaking as it uses your own sexual fluids to lubricate its motion[or]body trembling under its now-powerful influence[at random].";
					LineBreak;
					now obliging is true;
					blotsanitypassive;
					blotlust;
					now obliging is false;
				[else:
					say "     ABIDE NYI.";
					LineBreak;
					blotsanitypassive;
					increase lustatt by 35 + (lustadjust * 5);] [Not needed, keeping just in case]
				WaitLineBreak;
				next;
			else:
				now enduring is true;
				LineBreak;
				if boundrecover is true:
					if blotintense < 3:
						increase humanity of player by 1;
					else if blotintense < 5:
						increase humanity of player by 2;
					else:
						increase humanity of player by 3;
					if humanity of player > 100, now humanity of player is 100;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity[if blotintense > 4] within these confines[end if], recovering a small portion of your lost humanity.";
					LineBreak;
					blotlust;
					now boundrecover is false;
				else:
					say "     You choose to endure the toy's influence, ";
					If blotintense < 5:
						say "[one of]with what little power it has over you[or]creaking softly under your weight[at random].";
					else if blotintense < 8:
						say "[one of]softly creaking as it tries to work against your resistance[or]with what moderate power it has over you[or]squeaking under your weight as it tries nonetheless[at random].";
					else:
						say "[one of]barely able to resist the overwhelming power it has over you[or]creaking against you as it makes every effort in spite of you[or]seemingly undaunted by your efforts[at random].";
					LineBreak;
					blotlust;
					blotsanitypassive;
				WaitLineBreak;
				next;

to checkblotsegment:
	if blotintense < 3:
		now boundsegment is 1;
	else if blotintense < 5:
		now boundsegment is 2;
	else if blotintense < 8:
		now boundsegment is 3;
	else if blotintense < 10:
		now boundsegment is 4;
	else:
		now boundsegment is 5;

to blotprogress:
	if blotintense is 3:
		say "     You begin to find it somewhat difficult to pull your limbs free of the inflatable pony, sticking to its surface rather firmly. Moreover, you feel a warm, latex-like substance ";
		if player is male:
			say "encase your dick[smn], [if cockname of player is not listed in infections of internallist]your [ball size], and coat[else]coating[end if] [if player is female]your cunt[sfn] and ass[else]your ass[end if][if player is female or anallevel > 1].[run paragraph on] It doesn't seem compelled to penetrate you just yet, though the undulating material certainly drives your need further[end if].";
		else:
			say "coat your cunt[sfn] and ass. It doesn't seem compelled to penetrate you just yet, though the undulating material certainly drives your need further.";
		say "     By the looks of things, this peculiar toy is only just getting started. Should you persist, things are clearly going to get a lot worse...";
	else if blotintense is 5:
		say "     You're forced to realize that your limbs have partially submerged into the inflatable pony! You're now completely at the whim of the vinyl construct's influence, of which it seems eager now to exploit";
		if player is male:
			say ". The undulating material pumps your [cock size desc of player] dick[smn] with such force that you rock against the toy with each motion, slicked by your own cum. [if player is female and anallevel > 1]Moreover, you feel something large and hard force its way into your cunt[sfn] and ass, the shape shifting around until it appear satisfied with a bulging, ribbed tool to rail you with.[else if player is female]Moreover, you feel something large and hard force its way into your cunt[sfn], the shape shifting around until it appear satisfied with a bulging, ribbed tool to rail you with.[else if anallevel > 1]Moreover, you feel something large and hard force its way into your ass, the shape shifting around until it appear satisfied with a bulging, ribbed tool to rail you with.[end if]";
		else:
			say ". The undulating material grinds against your [cunt size desc of player] cunt[sfn] with such force that you rock against the toy with each motion, slicked by your own honey. [if anallevel > 1]Moreover, you feel something large and hard force its way into your holes, the shape shifting around until it appear satisfied with a bulging, ribbed tool to rail you with[else]Moreover, you feel something large and hard force its way into your hole[sfn], the shape shifting around until it appear satisfied with a bulging, ribbed tool to rail you with[end if].";
		say "     It's becoming extremely difficult to keep a clear head and remain in control of the situation. If there was any wiser time to get off this crazy thing, it'd be right about now...";
	else if blotintense is 8:
		say "     Your limbs sink even deeper into the inflatable pony's body, making it increasingly difficult to figure out where you begin and the vinyl construct ends! Completely at its mercy as you're perpetually milked, it's difficult to stay focused, which is why the thing manages to surprise you with another tendril when your guard is lowered, forcing its way past your lips and down your throat.";
		say "     Substantial tentacle bulging from around your gaping maw, it's flooded to its absolute limit. Your ability to breathe is quickly returned to you, but it's clearly from within the toy itself, your taste and smell a swill of sterile synthetics and your sexual fluids. The whole aroma has an effect on you, making it even more difficult to stay focused.";
		say "     Your better judgment is blaring at you from the back of your head to pull out while you still can, [one of]there's no telling how far this goes[or]you're running out of time[stopping]!";
	else if blotintense is 10:
		say "     With one final pull, you're drawn entirely into the body of the inflatable pony. Your body is adjusted until it fits as much as a suit as it is a new prison. Completely unable to move, your vision is limited to the translucent eyes of the vinyl construct. All you can hear is your pained panting and the wet sound of your continued, unrelenting abuse.";
		say "     Outwardly, the Pony appears to have regressed to its inanimate state, though betrayed by your loud, muffled moans[if player is male], its occasional twitching, and your throbbing, material-coated cock[smn] hanging between its legs[else] and its occasional twitching[end if]. It's difficult to maintain even the slightest mental clarity at this point, the prospect of being milked by this toy eternally very close to a reality!";

to say blotbinddesc:
	if blotintense < 3:
		say "     Riding the inflatable pony, [one of]it creaks softly against your touch[or]it squeaks against your motion[or]it softly buckles under the weight of your motions[at random]. The thing appears to be completely inert right now, having only the slightest power. You imagine your only active option is to [bold type]S[roman type]truggle and climb off it, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these circumstances, though there is little need to.";
	else if blotintense < 5:
		say "     Riding the inflatable pony, [one of]it creaks softly against your touch[or]it squeaks against your motion[or]it softly buckles under the weight of your motions[at random], having engulfed your [if player is herm]cock[smn] and cunt[sfn][else if player is male and anallevel > 1]cock[smn] and ass[else if player is male]cock[smn][else if player is female and anallevel > 1]cunt[sfn] and ass[else]cunt[sfn][end if] within its tainted, vinyl grasp. Its influence is growing to a point of some concern, though it's still relatively weak. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
	else if blotintense < 8:
		say "     Riding the inflatable pony, [one of]it creaks softly against your touch[or]it squeaks against your motion[or]it softly buckles under the weight of your motions[at random], ";
		if player is male:
			say "having engulfed your cock[smn] [if player is female and anallevel > 1]while pounding your cunt[sfn] and ass with large and distinctly moulded implements[else if player is female]while pounding your cunt[sfn] with large and distinctly moulded implements[else if anallevel > 1]while pounding your ass with large and distinctly moulded implements[else]within its tainted, vinyl grasp[end if]";
		else:
			say "pounding your cunt[sfn][if anallevel > 1] and ass[end if] with large and distinctly moulded implements";
		say ". Limbs stuck firmly against the tainted object's surface, it's clear that the thing is reaching dangerous levels of power. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
	else if blotintense < 10:
		say "     [one of]Now f[or]F[stopping]orced to ride the inflatable pony, [one of]it creaks loudly against you[or]it squeaks against your hard motion[or]it buckles under the weight of your constant motions[at random], ";
		if player is male:
			say "having engulfed your cock[smn] [if player is female and anallevel > 1]while relentlessly pounding your cunt[sfn] and ass with large and distinctly moulded implements[else if player is female]while relentlessly pounding your cunt[sfn] with large and distinctly moulded implements[else if anallevel > 1]while relentlessly pounding your ass with large and distinctly moulded implements[else]within its powerful, vinyl grasp[end if]";
		else:
			say "relentlessly pounding your cunt[sfn][if anallevel > 1] and ass[end if] with large and distinctly moulded implements";
		say ". Limbs stuck firmly against the tainted object's surface as you're forced to fellate a large and intoxicating tendril, its power has reached dizzying proportions. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
	else:
		say "     Trapped within the confines of the inflatable pony, [one of]it creaks loudly all around you[or]it squeaks against your hard motion[or]its surface yields to your touch, but isn't inclined to let your escape[at random], ";
		if player is male:
			say "having engulfed your cock[smn] [if player is female and anallevel > 1]while relentlessly pounding your cunt[sfn] and ass with large and distinctly moulded implements[else if player is female]while relentlessly pounding your cunt[sfn] with large and distinctly moulded implements[else if anallevel > 1]while relentlessly pounding your ass with large and distinctly moulded implements[else]within its overwhelming, vinyl grasp[end if]";
		else:
			say "relentlessly pounding your cunt[sfn][if anallevel > 1] and ass[end if] with large and distinctly moulded implements";
		say ". Barely able to see anything through the eyes of the thing as you're forced to fellate a large and intoxicating tendril, it's clearly reached the apex of its power! You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";

to blotbindorgasm:
	if blotintense < 3:
		say "     Finally overtaken by bliss, your ";
		if player is male:
			say "cock pumps your [cum load size of player] load into the toy[if cocks of player > 2], its brothers staining its hind legs[else if cocks of player is 2], its brother staining its hind legs[end if]. [if cock width of player > 23]Briefly bulging to contain your impressive release, it seems to recede and acclimate to the torrent[else]Eagerly, it seems to consume your release, motion further slicked by it[end if]";
		else:
			say "cunt[sfn] ache[sfv] against the toy, staining it with your juices";
		say ". Trembling subtly in the wake of this, it seems to feed off your [if player is male]cum[else]ecstasy[end if], [if blotintense < 2]gradually changing[else]close to changing[end if] as you're compelled to continue riding it.";
	else if blotintense < 5:
		say "     Finally overtaken by bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into the toy, engulfing vinyl milking it for as long as it can. [if cock width of player > 23]Briefly bulging to contain your impressive release, it seems to recede and acclimate to the torrent[else]Eagerly, it seems to consume your release, motion further slicked by it[end if]";
		else:
			say "cunt[sfn] ache[sfv] against the toy, engulfing vinyl prolonging your bliss for as long as it can";
		say ". Trembling further in the wake of this, it's further empowered by your [if player is male]cum[else]ecstasy[end if], [if blotintense < 4]gradually changing[else]close to changing[end if] as you're driven to continue riding it.";
	else if blotintense < 8:
		say "     Finally overtaken by bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into the toy, engulfing vinyl milking it for as long as it can[if player is female and anallevel > 1] while pounding your holes[else if player is female] while pounding your hole[sfn][else if anallevel > 1] while pounding your hole[end if]. [if cock width of player > 23]Briefly bulging to contain your impressive release, it seems to revel in the torrential flood[else]Eagerly, it seems to consume your release, motion further slicked by it[end if]";
		else:
			say "cunt[sfn] ache[sfv] against the toy, pounding vinyl milking you for as long as it can";
		say ". Groaning under you in the wake of this, it's further empowered by your [if player is male]cum[else]ecstasy[end if], [if blotintense < 7]gradually changing[else]close to changing[end if] as you're forced to continue riding it...";
	else if blotintense < 10:
		say "     Overtaken by bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into the toy, engulfing vinyl milking it for as long as it can[if player is female and anallevel > 1] while pounding your holes[else if player is female] while pounding your hole[sfn][else if anallevel > 1] while pounding your hole[end if]";
			if cock width of player > 23:
				say ". Very quickly, you feel your hot release flood your maw through the rubbery tube, pumping you full with what excess it's ill-equipped to contain itself";
			else:
				say ". Starting to develop an excess of your release, you feel the hot fluid flood your maw through the rubbery tube, pumping you with what it can no longer contain";
		else:
			say "cunt[sfn] ache[sfv] against the toy, pounding vinyl milking you for as long as it can. It seems compelled to make you taste your own honey, flooding your senses through the rubbery tube";
		say ". Visibly trembling under you, it's even further empowered by your [if player is male]cum[else]ecstasy[end if], [if blotintense < 9]gradually changing[else]close to changing[end if] as you're forced to continue riding it...";
	else:
		say "     Sent crashing into bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into your prison, vinyl material milking it for as long as it can[if player is female and anallevel > 1] while pounding your holes[else if player is female] while pounding your hole[sfn][else if anallevel > 1] while pounding your hole[end if]";
			if cock width of player > 23:
				say ". Body awash in your hot release, you very quickly, you feel it flood your maw through the rubbery tube, pumping its occupant with the excess";
			else:
				say ". Warmth of your hot release awash against you, you feel it gradually flow into your maw through the rubbery tube, pumping its occupant with the slight excess";
		else:
			say "cunt[sfn] ache[sfv] against the toy, pounding vinyl milking you for as long as it can. Warmth of your hot honey awash against you, it seems compelled to make you taste your own juices, flooding your senses through the rubbery tube";
		say ". Barely seeming to respond to your ecstasy, it's clear the thing has reached the apex of its purpose, seemingly more than happy to continue abusing its encased prisoner.";

to blotlust:
	let obladj be 1;
	if obliging is true:
		now obladj is 2;
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2;
	if blotintense > 9:
		increase lustatt by ((35 + (lustadjust * 6)) * obladj) / endureadj;
	else if blotintense > 7:
		increase lustatt by ((32 + (lustadjust * 5)) * obladj) / endureadj;
	else if blotintense > 4:
		increase lustatt by ((30 + (lustadjust * 4)) * obladj) / endureadj;
	else if blotintense > 2:
		increase lustatt by ((27 + (lustadjust * 3)) * obladj) / endureadj;
	else:
		increase lustatt by ((25 + (lustadjust * 2)) * obladj) / endureadj;

to blotsanitypassive:
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2;
	if blotintense > 9:
		decrease humanity of player by (6 + (psycheadjust * 2)) / endureadj;
	else if blotintense > 7:
		decrease humanity of player by (4 + psycheadjust) / endureadj;
	else if blotintense > 4:
		decrease humanity of player by (3 + psycheadjust) / endureadj;
	else if blotintense > 2:
		let tempnum be (2 + psycheadjust);
		if tempnum > 1 and enduring is true:
			decrease tempnum by 1;
		decrease humanity of player by tempnum;
	else:
		if (enduring is false and a random chance of 1 in 2 succeeds) or (enduring is true and a random chance of 1 in 4 succeeds):
			decrease humanity of player by 1;

to blotsanityorgasm:
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2;
	else:
		if struggleatt > 0, decrease struggleatt by 1;
	if blotintense > 9:
		decrease humanity of player by (15 + (psycheadjust * 5)) / endureadj;
	else if blotintense > 7:
		decrease humanity of player by (9 + psycheadjust * 3) / endureadj;
	else if blotintense > 4:
		decrease humanity of player by (7 + psycheadjust * 2) / endureadj;
	else if blotintense > 2:
		decrease humanity of player by (5 + psycheadjust) / endureadj;
	else:
		decrease humanity of player by (3 + psycheadjust) / endureadj;

to say blotstrugglebar:
	say "[close bracket]";
	if blotintense > 9:
		say "-";
	if blotintense > 7:
		say "[if struggleatt > 3]X[else]-[end if]";
	if blotintense > 4:
		say "[if struggleatt > 2]X[else]-[end if]";
	if blotintense > 2:
		say "[if struggleatt > 1]X[else]-[end if]";
	say "[if struggleatt > 0]X[else]-[end if][bracket]";

when play ends:
	if bodyname of player is "Blotted":
		say "     You're eventually discovered by a rescue team and -- albeit reluctantly -- brought back for study. Between the distracting sounds of your moans and panting, you gather from the scientists that the toy itself is once again completely harmless, though it's now connected to you in such a way that removing it will most certainly kill you.";
		say "     When it's clear there's nothing that can be done for you, you're eventually shipped from place to place, until the sting of your fate subsides in the consciousness of those who have been caring for you. Eventually, some seedy types manage to buy you off and cart you to a brothel that specializes in your 'Type'.";
		say "     Apparently, the pony is still 'Rideable'[if player is male and anallevel < 3 and cunts of player is 0], especially with your cock[smn] exposed, like they are[end if]. Customers from far and wide come to make use of you, now subject to the whims of the pony and these complete strangers, who you can only barely glimpse at through your prison's eyes.";
		say "     It's clear the pony has some sort of intelligence to it, as it does eventually ease up to make the task of being perpetually milked not completely banal over time, and it does seems to shake things up with you on the occasion by varying the stimulation or coming up with different implements or just doing something peculiar. Ultimately, though, it seems content subjecting you to this eternal fate, and over time it manages to convert you to its way of thinking...";


Phantom Pony ends here.
