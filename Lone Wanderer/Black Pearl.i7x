Version 1 of Black Pearl by Lone Wanderer begins here.
[Version 1 - New Event, item and endings interacting with Kyrverth's quest	]
[Written by Lone_Wanderer, coded by Speedlover						]

Section 0 - Event

Curious Pearl is a situation.
The sarea of Curious Pearl is "Beach".
The level of Valuable RLD Artifact is 5. [minimum level to find the event]
Curious Pearl is inactive.

when play begins:
	add Curious Pearl to badspots of furry;
	add Valuable Warehouse Artifact to badspots of feral;

Instead of resolving Curious Pearl:
	if KyrverthStage is 3:
		say "     Remembering Kyrverth's desire for treasure, you look around whether you can find anything. Somehow you know that something is under one of those rocks; it's hidden within the sand in plain sight. What you pull out has your mouth agape - a large sphere that lacks any color. In fact this orb even seems to absorb most of light that hits its smooth, pitch black surface. Some of the light is still reflected, leaving a brilliant shimmer. Turning it with your hands, this thing does really seem to be perfect with its spherical shape. At some point you blink rapidly as some reflected [if daytimer is day]sunlight[else]moonlight[end if] directly shines into your eyes. You feel a bit confused and spaced out, as if everything you were doing before is gone. Judging by the [if daytimer is day]sun[else]moon[end if] you do seem to have been standing around here for a while. This pearl does seem to have an influence over you, and you don't know whether carrying it around is a good idea...";
		say "     [bold type]Will you take it?[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take it.";
		say "     ([link]N[as]n[end link]) - Leave it be.";
		if player consents:
			say "     You stash it away nonetheless. Hopefully this will appease the dragon.";
			increase score by 5;
			now Kyrverthitemget is 5;
			now Resolution of Curious Pearl is 2; [Stolen the artifact]
		else:
			say "Considering it's effect on you, it's probably best if you leave it here. You drop it and head back to where you started";
			now Resolution of Curious Pearl is 1; [Player did not steal the artifact]
	else:
		say "     While strolling leisurely along the beach you feel something call out to you. You can't quite pin what it is or from where it's coming from, but you know that there is something really valuable here. It seems like hunch but you don't know where to look. After a few minutes of seemingly aimlessly looking around you give up and continue whatever you were doing before.";
	ResolveKyrverthItemEvents;

Section 1 - Item definition and usage

Table of Game Objects (continued)
name	desc	weight	object	sortname (indexed text)
"Black Pearl"	"It's a sphere with a smooth, reflective surface lacking in any color. It's slightly smaller than a soccer ball, which leaves you wondering how large the oyster containing this must have been, yet you have a feeling that the origin of this pearl is something different"	3	Black Pearl

Black Pearl is a grab object.
the usedesc of Black Pearl is "[blackpearlusing]".
it is part of the player.
It is temporary.

instead of sniffing the Black Pearl:
	say "The black pearl rests in your hands, feeling comfortable and warm on touch. The orb does compel you to close in with your head and take a whiff of the blackness. It smells... you cannot quite pin the smell but it does make you feel powerful. The taste of this abyss feels familiar, your saliva slickening the blackness and somehow, it feels like this should be what you should be doing. You forcibly drag your face away when you realize that you had been rubbing your face all over the pearl to get more of its smell and taste.";

to say blackpearlusing:
	say "     This pearl already had quite some influence over you, so why did you decide to take it away from Kyrverth? This dangerous sphere was at least far away from you, unable to tempt you to look at it, feel it. And yet... you cannot resist taking it out of your bag, marvelling at the flawless globe in your hands. What is this thing and why can you not stop thinking about it? As if searching for this answer, you keep staring at the orb, trying to scope the surface of the blackness for anything odd. You do see something in it though... It's... your face, licking your lips as you stare at yourself. Why are you licking your lips... because you need to lick over this orb perhaps? Poking the pearl with your tongue, you feel a shiver going down your spine. This feels right. Bathing the orb in your saliva for some reason, you take note that the orb does carry the salty taste of the sea and fish.";
	say "     Odd, how did you not notice this before? The pearl did have an otherworldly feel before, but now it seems like that you've always known what it is. As you are licking and tasting the orb, your tongue elongates and widens a bit, fit to taste more of the pearl at once. Deciding that this isn't enough you try to open your mouth as wide as possible, trying to explore even more of this pearl, but somehow you find yourself able to open your mouth wider than ever before. Realizing you are different, you pull your head off in surprise. Looking at it again, your face has shifted into that of an eel; your snout is pointed with a wide mouth, armed with lots of sharp, small teeth while your eyes have reoriented themselves to each side of your now pointed head.";
	WaitLineBreak;
	say "     While it is hard to tell the skin color on your head, it seems to be just as black as the perfect darkness of this treasure, but somehow, this doesn't seem to matter. Your head is better fit to pleasure yourself on the pearl now. A bit unsure, you move the pearl again towards your mouth. This thing is doing something to you, and yet, you don't seem to be able to fight it, or rather you don't want to fight it. Opening your wide mouth, you are now able to fit the large pearl inside, able to properly lick the orb from every angle. While this pearl is in your mouth, you also end up sucking on the orb, enjoying more of its salty and fishy taste. The taste does feel compelling enough that you do want to swallow the pearl, but something tells you that you aren't quite done with it yet. When you take out the pearl again, you discover that the change has spread from your head downwards, your neck also having extended. Your skin has changed along with it, your old [skin of player] skin peeling off to reveal a pitch-black layer of scales.";
	if breast size of player > 0:
		say "     Your breasts fall off to the ground with the rest of the old skin peeling away from your front. Good riddance, you think. You weren't too fond of them anyway. Wait, didn't you have good memories of playing with them? ";
	else:
		say "     Your chest also isn't safe from having its skin fall off, revealing that you don't have nipples anymore on your improved black skin. Good riddance, you think. They were just traces of a gender that you were never meant to be. Wait, where did that thought come from? ";
	say "This black sphere did feel amazing in your mouth. Maybe it'll also make the rest of your body feel good. With that thought, you push and roll the pearl from your head and down to your chest, rubbing it along your front. Indeed, this amazing orb does its job of making you feel good; you feel all warm and tingly at the spots where it touches you, making your legs feel weak. With this treatment, your body experiences more drastic changes; your spine elongates into a tail, which keeps growing and thickening. This change continues until you're able to support yourself on your changed extremity. This new lower half of yours is also adorned with a fin tracing your tail all the way up to your back and head. All of your body except for your legs grow, making you into quite a hulking large beast. Your legs on the other hand keep shrinking and lose definition until they are absorbed into your body.";
	WaitLineBreak;
	say "     Your towering height is formidable enough that you could make any human person cower before your vast form. In fact, you seem to be big enough that you could give a wyvern a hard time. You could constrict one in your coils, conquer one of those lesser dragons easily if you felt like doing that. An idea hits you. If this pearl already makes your body feel tingly and great, what would happen if you rubbed it on your crotch? ";
	if player is male:
		say "Your [if cock length of player < 18]comparatively small[else]previously oversized cock[end if] cock didn't grow along with the rest of your body yet, but you feel like that this isn't negotiable. You have to play with it now. With your larger now clawed hands, you press the black sphere against your [if cocks of player > 1]cocks[else]cock[end if], coaxing a moan out of your lips. While you are content to eventually get yourself off, you wonder if you can also satisfy the pearl by doing something similar? ";
		if cock length of player < 18:
			say "But your cock is so small, too puny to allow the pearl into it. Determined, you don't let this thought stop you as you grab your dick with one hand and hold the almost soccer ball-sized globe against your tip. The cool feeling against your throbbing length has you breathe out deeply. Pushing against your cock, the feeling of you rubbing over your cock instead causes you to grumble in deep frustration. To your relief, your cock does start swelling to accommodate your goal. You keep tugging and pumping at your length, believing that the masturbation does help your sudden growth spurt.";
		else:
			say "Your cock is almost perfect, its size almost enough to bury this treasure within you. Planting the blackness on your cock tip, you take note on how your cock still slightly grows to allow this object to gain even easier purchase within your dick. Breathing out in satisfaction, you start masturbating your changing length as you feel the round thing sink into your cumslit. ";
		say "Your new cock is equally dark like the pearl, and it is sporting a few lengthy protrusions that sort of looks like the whiskers that you would find on a catfish or something similar. Without wasting any time to explore your new dick further, you shove the dark sphere impatiently against your urethra. Thankfully, your cock does seem to have grown enough, so the pearl is going to be able to travel all the way through. The feeling of penetrating your own cock with this orb has you throw yourself on your back. Eventually, the pearl is within your dick and you can feel the protrusion on your urethra, the only proof left that it ever was there.";
		WaitLineBreak;
		say "     You trace the pearl and softly push against it with your dominant hand while you claw at the floor with the other. Taking this slowly, the pearl keeps sinking until it finally disappears past your genital slit, probably landing within your prostate or balls. You don't really care about this, as the internal stimulation finally has you orgasm, making you spurt cum all over yourself. It's remarkable how long this orgasm lasts, painting your own black snout and chest. Some of your cum drips over your nostrils, filling you with your own scent, similar to the one of the black pearl, salty and yet fishy. Compelled by the smell, you lose track of time and lick yourself clean with your long tongue, obsessing over the texture, color and the smell... especially the strong smell of your own load. You made this magnificent alabaster juice and it deserves to be lapped up by an equally magnificent being such as yourself. Certainly you need to share it with lots of others.";
	else if player is female:
		say "Your [if cunt length of player < 18]comparatively small[else]previously belly bulgingly huge[end if] vagina didn't grow along with the rest of your body yet, but you feel like this isn't negotiable. You have to play with it now. With your larger now clawed hands, you press the black sphere against your [if cunts of player > 1]cunts[else]cunt[end if], coaxing a moan out of your lips. While you are content to eventually get yourself off, you wonder if you can also satisfy the pearl by doing something similar? ";
		if cunt length of player < 18:
			say "But your opening is so small, too narrow to allow the pearl into it. Determined, you don't let this thought stop you as you push the almost soccer ball sized globe harder against your vagina, rubbing the pearl intently against your labia and clitoris. The cool yet slippery feeling has you breathe out deeply, and somehow, the sensations of your vagina grow more intense, as if you are gaining more space to rub yourself on with the pearl. Growling out in frustration that you are still not big enough, you end up pushing against your opening harder, only being able to latch onto a small part of the pearl. But before your very own eyes, your opening keeps growing along with your pussylips and clitoris. In fact, your clitoris keeps growing longer in shape than it did before.";
		else:
			say "Yes, you are already almost perfect - your vagina will serve perfectly, its size certainly almost enough to bury this treasure within you. Planting the blackness on your lips, you take note of how your vagina still slightly expands to allow this object to gain even easier purchase within these folds. Breathing out in satisfaction, you start fingering yourself with your clawed, thick digits, preparing your depths for the arrival of this slickened orb. Playing with yourself for a little while, you feel that you are warmed up enough and start pushing the perfect sphere against your folds. Rumbling in pleasure, you witness your folds changing as you see your labia practically latching on to your beloved, little thing, your clitoris following suit.";
		WaitLineBreak;
		say "Trembling in pleasure at the completed changes, you see that your crotch, just like all of you, is pitch-black. Examining your new cunt more closely you take note that your elongated clitoris is prehensile, able to lick along the orb that is practically getting sucked in by your contracting muscles. Just like your tongue, it also seems to have its own sense of taste and your mind is overwhelmed with these new sensations. You can taste the orb and your own juices by stroking over it with your new appendage. On both sides of your cunt, you can also see several protrusions similar to the ones that make the beard of a catfish. They are very sensitive, ";
		if vorelevel is 3 or "Vore Predator" is listed in feats of player:
			say "and they would allow you to lick your prey with them while your improved clitoral length pins them. Spurred on by that fantasy, you let your walls do their work. ";
		else:
			say "and you can even move them forward. Surprised, you realize that you can even grasp the pearl with them, helping yourself in a new way to push your treasure down your greedy depths. ";
		say "You rub your new clitoris all over the pearl until it's gone, making its journey through you and stopping within your womb.";
	else:
		say "What is this? You don't have any proper organ to submerge this magnificent blackness within. No, you refuse to give up. You need this thing inside of you, and yet, you feel like you can't just swallow it down. It seems wrong to do that. Lying down on your back, your long and thick tail splayed all across the floor, you rub the abyssal sphere against your crotch, hoping to make it grow you an organ worthy of keeping it inside... but nothing happens, except for it feeling great against your body. Groaning out in frustration, you keep rubbing the pearl against your crotch until you realize you still have another opening. Yes, this will do!";
		say "     Getting ready for this act, you start relaxing and drive one of your clawed digits into your anus, fingering yourself. Unfortunately, your state of mind doesn't allow you to get much more than one of your thick fingers inside, and you just press the black pearl against your opening in your impatience. Surprisingly, you do end up relaxing as the cool yet slickened ball is pressed against your anal ring. It feels like never before were you able to relax better, and your opening gives way easily. With a 'plop', your anus even latches onto the pearl, changing when the black orb starts entering you. It seems that triangular, little shapes have grown within your anal ring which you can extend at will, similar to your claws. They seem to be perfectly made for this situation as these little 'mandibles' are perfectly able to latch onto the pearl and keep pushing it in. When it finally enters you, you roar out in a strained yet pleasurable state when you feel the orb still travel along your intestines, rubbing against your most sensitive spots, until you lose track of it, the shape having disappeared into you forever.";
	say "     With the pearl inside of you, you have been completed and you roar out a high pitched noise, announcing your return to this world.";
	WaitLineBreak;
	now bodyname of player is "Leviathan";
	now facename of player is "Leviathan";
	now tailname of player is "Leviathan";
	now skinname of player is "Leviathan";
	now cockname of player is "Leviathan";
	end the story saying "You have become the Leviathan.";

Section 2 - Endings

when play ends:
	if bodyname of player is "Leviathan":
		say "     The Great Leviathan has awakened. How could you have been blind your entire life? You were always destined for greatness and divinity. It just took this magnificent pearl to bring it out of you. ";
		if location of play is beach:
			say "Standing on the beach, you squint at the light reflecting in the water. Without a second thought, you slither towards the water, feeling somewhat vulnerable out here. You need to dive down back into the darkness, to grow and establish your rule over the sea again. ";
		else:
			say "Memories of a distant past come flooding to you, giving you a sense of urgency to head back to the beach. There are preparations to be made and the sea does need the presence of its worthy ruler again. ";
		say "Back in the sea, you dwell in the deeps, finding refuge within some old ruins. For the years to come, you occasionally come out to hunt for unsuspecting prey to ";
		if vorelevel is 3 or "Vore Predator" is listed in feats of player:
			say "stuff them down your [if player is male]majestic rod[else]depths[end if]. Once done playing with them, you release them with mind-shattering orgasms. Your prey always finds themselves not only turned into a form similar to yours, but also malleable to your will.";
		else:
			say "constrict them in your coils. The sight of these land dwellers screaming and fighting for air in your coils does feel exhilarating. None can hope to free themselves of your grasp. Nearly all of them find themselves surprised, but also grateful, when you don't drown them in the seemingly infinite depths of the ocean but instead bring them to your sanctuary. Within the ruins, your captives start taking a shape similar to yours, as you end up showing your affections to them daily, making sure that they all mature nicely. This treatment also has your new disciples be very open to your suggestions and commands; many end up devoting themselves to you with the ones who leave you still making others into creatures of the void.";
		say "     One day, you'll rise from the abyss again and finish what you started years ago, but this time, nobody will be able to stop you.";

Black Pearl ends here.
