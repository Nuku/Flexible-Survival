Version 1 of Dino Pack by Qazarar begins here.

Section 1 - Monster Responses

DinoPackEvolution is a number that varies. DinoPackEvolution is usually 0.[@Tag:NotSaved]
DinoPackPrey is a number that varies. DinoPackPrey is usually 0.[@Tag:NotSaved]

[ DinoPackEvolution                                          ]
[   0: base state                                            ]
[   1-2: tracking                                            ]
[   3-4: alternate dino form and scenes                      ]
[   5+: bad end becomes possible if enabled                  ]

[ DinoPackPrey                                               ]
[   0: Choice not reached                                    ]
[   1: playable Bad End enabled                              ]
[   2: playable Bad End blocked off                          ]


to say DinoPackLoss:
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
		if DinoPackPrey is 1:
			say "[EvolveDinoPack]";
	else: [regular scene]
		if(DinoPackEvolution < 3):
			if (mdasslevel > 5 and a random chance of 1 in 3 succeeds): [anal focused gangbang]
				say "     The pack finally wears you out, and you crumple to your knees. For a moment, they circle around you, laughing their strange reptilian laugh. Before you have any time to rest, however, a pair of them stalk forward. Together they grab you, and force your head and upper body down towards the ground, leaving your huge ass sticking out and completely vulnerable. You are completely at their mercy, but they do not take advantage of your defenseless state, instead continuining their prowling dance around you. You know instinctively that they won't let you get away unfucked, and they are merely toying with their prey, as is their right as the victors.";
				say "     Knowing there's no point in resisting, you instead submit to their plans, fully embracing whatever they do to you. The dinos seem to be pleased by how quickly you give in, and the tight circle around you draws in even closer. Before, they made you beg and plead before they would give you even the slightest taste of pleasure, and this time they do the opposite to you. They press in all around you, and with no time wasted whatsoever, they start tussling to see who gets the first go at you, masturbating furiously above you, and more besides. Though you can't clearly see the ones behind you, you can feel the occasional massive cock slapping against your titanic ass, leaving it jiggling each time. The clamor quiets down when one finally claims the honor of pounding you first - by virtue of slamming his huge dino dick home, directly into your waiting passage.";
				WaitLineBreak;
				say "     You jolt unconsciously in reaction to the sudden pleasure, the minor discomforts of the rapid assault all being overwhelmed by the feeling of fullness deep within you, and the sensations emenating outward from the penetration. For a moment, that initial thrust is the only thing you can think of, your entire world comprised of his cock and your ass. Then it comes crashing down, beautifully, as he begins thrusting into your huge rear. Once more you become aware of the other dinosaurs, all watching you get fucked, eagerly awaiting their turn, each one showing off their delicious looking dicks to you. Some teasing their shafts with their claws, others being toyed with by your hands, something you didn't even realize you were doing. Your vision is as full of oversized reptilian members as you are.";
				say "     The constant pounding in and out drives you forward, wildly indulging in all the pleasures offered by the dinosaurs around you. Each thrust reminds you of why you gave in so easily to the dinos, the cavalcade of cocks encouraging you to be the slut you already were within. Eventually, the almost meditative bliss you had reached from being fucked is made even more incredible by the first of many cocks reaching its peak, and spilling its reptilian seed deep into your rear. Several of the others immediately start to match it, unleashing torrents of cream across your face and hands, with several other jets covering your massive jiggling ass. As the little dinos who have finished start to pull away from you, leaving you empty, you beg to be filled again and again by them.";
				WaitLineBreak;
				say "     Fortunately for you, the pack of dinosaurs is ready to save you from the discomfort of leaving your ass unfilled. The mass around you shifts, several new members jockeying for space around you, once more surrounding you in fresh dicks. Even faster than before, they resolve into new positions, leaving you once more taking care of several with your hands and mouth, and a new lining up the tip of his massive shaft with your back entryway. However, right as he began to thrust into you, another dino decides not to wait, and presses his member up against your opening as well. Your eyes widen, but you're unable to do anything more than wiggle your ass slightly, something that doesn't deter them in the least. The newest dino behind you starts to apply pressure, and after a moment, his cock manages to stretch you enough to start sliding in alongside the other shaft, the two incredibly large members teaming up to spread you open more than ever before.";
				say "     So much is going on that you can't focus on any one source of pleasure, instead being overwhelmed from every angle. Your attention drifts back and forth to the various ways you're being used by the dinos. Several members of the pack start to erupt onto you even as you're being railed by two at once, and yet another one starts to shoot more of their enchanted jizz down your throat. The pair behind you lose their previous rythm, and start to thrust in and out at different times from the other, leaving you completely overpowered by the sensation. Being fucked in so many ways by the reptiles leaves you completely out of it, becoming nothing more than a receptacle for their lusts.";
				say "     Finally, they reach the end of their use of you, every last one still toying with you slamming completely in, before unleashing a flood of seed into both ends. You can still feel your rear rippling from that final thrust, as their massive balls work overtime to stuff as much into you as possible. Just when you muster the concentration to wonder if you can even take any more, their overpowering orgasms come to an end, and they pull their oversized shafts slowly out of you. You're left dazed in the middle of a pool of cum almost as wide as your ass, with your hole still gaped open from your rough treatment. In contrast, the pack around you seems somewhat worn out, but their smug aura is unchanged. 'Well, that was a good time, little slut. I know you'll be coming back for more sooner or later, and we'll be happy to treat you right again.' Once more they let out their mocking laughter as they leave you to recover from their victory, and the only thing you wonder is what they'll do next time.";
				infect "Magic Drake";
			else if (mdasslevel > 5 and a random chance of 1 in 3 succeeds):
				say DinoBargain;[magic drake combo scene]
			else: [teasing, blowjobs, and bukkake]
				say "     The pack finally wears you out, and you crumple to your knees. They start to circle around you, and make sounds that seem to be laughter. '[if mdasslevel > 2]It seems you're just as much of a little weakling as the mistress said, practically asking to get defeated by us. I think[else]Oh, you barely put up a fight. I guess you were just asking for this, hmm? Well,[end if] it's about time for us to show you why we're the real hunters around here.' You can't help but nod along, already giving up control to the superior dinosaurs. In moments, their circle draws closer, and their massive shafts seem to grow even harder and more enticing, clearly preparing to show you your proper place. Finally the one that spoke stops moving when he is directly in front of you, his huge member pointing directly at your face. He makes no motion to bring it closer to you, [if player is submissive]but you still find yourself licking your lips in anticipation before stopping[else]clearly taunting you[end if].";
				if mdasslevel > 2: [slutty scene]
					say "     The others give you no time to reflect on your instinctual act, instead pressing in closer, trapping you fully between the myriad of wonderfully oversized cocks. They remain just out of reach, each bobbing up and down as they pleasure themselves, leaving you completely torn on what to do. Yet again you are left without time to think, as they immediately launch into a tirade of taunts. 'Oh, you really are a slut, aren't you? Can't take your eyes off our cocks for even a minute.' You wish you could deny them, but they're completely right. Despite your best efforts you remain entranced by all of their massive members, but not quite able to take that first step. You hear another chuckle from one of the dinos behind you, as they continue mocking you. 'Don't worry, you can have what you want. You just need to admit that you want it.'";
					WaitLineBreak;
					say "     Even in the face of their taunting ultimatum, you know deep down what you're going to choose. You're already craving the sensation of those oversized cocks in your mouth, filling you with everything they can give. You hold out as long as you can, staying completely still as the reptiles slowly stroke their shafts, until finally you can stand it no longer. You lean forward and start licking at the head of the massive cock before you, desperate to service it as fully as you can. The sight of you giving in to your own weakness acts as a signal, and the as yet untouched lizards all close the final distance as well, rubbing their huge dicks all over you, even as their mocking words wash over you. Their taunts can't affect you any more, as the only thing in your focus are the huge cocks all around.";
					say "     After several moments of diving down on the first cock, you finally gather enough clarity of thought to engage further, lifting your hands from your sides in order to grab two of the shafts prodding at you. As you glide up and down the saurian member, you begin to slide your hands back and forth across the others, bringing as much pleasure to the pack as you can. In no time at all you're treated with the first reward for your efforts, as one of the cocks you're jerking starts spasming in your hand, releasing blast after blast of cum onto your face and front. With that splash of semen comes a familiar tingling sensation, much like what you experience when the Magic Drake works her wiles on you. The feeling only drives you to work harder, and you waste no time in moving your hand to another waiting dino, ready to repeat the job.";
					say "     From there you descend into a veritable sea of cocks and cum, slowly working your way through the pack three dicks at a time. A splurt of enchanted jizz from one side is followed by a flood of the very same down your throat, and all you can do is move on to the next pair. Despite yourself, you revel in the action, the knowledge of your slutty choices only amplifying the entire sensation you're experiencing. Finally, however, it comes to an end, with even the large reservoirs of fluids held by each dino emptied onto your skin. They pull back from you, before hurling one final taunt. 'Oh, look at you just kneeling in a pool of cum, like the slut you are. But you're our slut, and a slut for the mistress, and I think that will be far better than anything else you would have been doing.' After those words, the circle breaks, and the crowd of dinos trek off, completely satisfied. On the other hand, you're left glazed and humiliated, eventually lifting yourself back onto your feet, staggering back off into the museum, already dreaming of the next time you run into them.";
					infect "Magic Drake";
					infect "Magic Drake";
					if DinoPackEvolution < 3:
						increase DinoPackEvolution by 1;
				else: [normal loss]
					say "     The others give you no time to reflect on the taunts, instead pressing in closer, entrapping you in a cage of oversized cocks. They remain just out of your reach, each bobbing up and down as they pleasure themselves, leaving you helpless before them. Clearly taking great joy in your growing awareness of your situation, they immediately launch into a tirade of taunts. 'Oh, you really are a slut, aren't you? Can't take your eyes off our cocks for even a minute.' You try to argue otherwise, but your pleas fall on deaf ears. 'Oh, you may not know it yet, but you're a slut deep down, and we'll teach you eventually'.";
					WaitLineBreak;
					say "     Even in the face of their mockery, you're unable to muster up any resistance. Perhaps there's more truth to their barbs than you would like to admit? You quickly shake your head as if attempting to dislodge the unexpected thoughts, but it doesn't quite clear your mind completely. Even as you try and focus on inconsequential, unarousing details, you keep noticing exactly the opposite. Attempts to focus on a nearby display case lead to watching the shimmering traces of pre on their members, thoughts of ancient artifacts drifting into thoughts about overfilled balls. It seems that the dino pack somehow notices this shift in your thoughts, your growing weakness acting as a signal. The lizards all close in further around you, their work pleasuring themselves on increasing in speed, the scent of their oncoming release growing heavy in the air.";
					say "     You try not to react to their actions, but can't quite keep yourself from opening your mouth and leaning forward just in time for the first of the massive shafts to start spasming, releasing blast after blast of cum onto your face and front. From there you briefly enter a world consisting only of cocks and cum, the pack slowly releasing its combined bounty onto you. A splurt of enchanted jizz from one side is followed by a flood of the very same onto your face and mouth, and all you can do is passively take everything they offer you. After what seems like an eternity, it comes to an end, with even the large reservoirs of fluids held by each dino emptied onto your skin. They pull back from you, before hurling one final taunt. 'Oh, look at you just kneeling in a pool of cum, like the slut you are. You may not have given in completely yet, but you will soon enough.' After those words, the circle breaks, and the crowd of dinos trek off, completely satisfied. On the other hand, you're left glazed and humiliated, eventually lifting yourself back onto your feet, staggering back off into the museum, already dreaming of the next time you run into them.";
					infect "Magic Drake";
					if DinoPackEvolution < 3:
						increase DinoPackEvolution by 1;
		else: ['evolved' dino scenes]
			if DinoPackEvolution < 4: [intro and oral]
				say "     These changed reptiles seem to be far more fearsome than they have been before, and you're easily worn out until you collapse. In a familiar fashion, they quickly encircle you, leaving no path to escape even if you could muster the strength to stand again. They press in closer, and you can tell that some fundamental thing has changed in these dinosaurs from what they were before, something about them is almost more pure than ever. Unfortunately, you aren't able to properly consider what this might mean, as rather than let you consider the changes, they instead start to drown you in them almost literally. The crowd presses in towards you, and their far more titanic endowments coming at you from every angle, forcing their new forms into your face as well as everywhere else.";
				say "     The sheer presence of their weighty shafts is enough to dizzy you, a sensation further amplified by the primal scent of the predators currently showing you your place. That is far from enough to satisfy them, however, and soon they launch into an all-too familiar scene reminiscent of your first meeting with the then much-smaller creatures. Every surface of your body is being pressed and rubbed by their monstrous members, a steady flow of preseed already starting to drip onto you as they work. Too exhausted to respond, you remain kneeling in place as they put you in yours, exerting their primal dominance over you.";
				WaitLineBreak;
				say "     Soon their actions start to shift from an almost leisurely display of power into a more frenetic act of passion, their own pleasure starting to overwhelm their restraint. Their reptilian hips rock back and forth, your slicked skin providing ample pleasure to the oversized cocks even as a matching pleasure blooms in you. Finally, they can take no more, a moment signified by the sudden twitching and jerking of the myriad shafts surrounding you, until they at last erupt. Multiple waves of creamy saurian spunk are unleashed onto every inch of you, liquid proof of your loss – and their gain.";
				say "     With the act itself at an end and their pleasure worked through, for the moment, the hint of mischief has returned to their actions. Their familiar snickering almost-laughter surrounds you from each side as they enjoy the sight of you prostrate before them, plastered with their essence. Several moments of that amusement is enough for them, at least for now, and they finally turn and leave you where you lie, to recover on your own time. Something strange is going on with these creatures, now, and one way or another you'll find out what – if it doesn't find you first.";
				now DinoPackEvolution is 4;
			else if (DinoPackEvolution is 4 and DinoPackPrey is 0): [some anal, choice point]
				say "     Once more you find yourself succumbing to the predations of the freshly empowered dinosaurs, their pack tactics more than a match for you. It doesn't take long before you find yourself being surrounded by the pacing reptiles, their new size looming over you menacingly. You know them well enough to understand just how much they would love to pounce on you, stuffing and humiliating you – and you know equally well that they're waiting for you to admit how much you'd love it as well, to make it all the sweeter for them. You shiver, not from any cold in the air, but simply from the knowledge that they're likely not going to be disappointed for long.";
				say "     Time seems to lose all meaning as their familiar mocking calls ring out, enough to bewilder your sense of reality alongside your burgeoning lusts, until finally the weight of the combined factors puts a crack in your resolve. While your physical strength has somewhat returned, it's to no particular benefit of yours, only used to turn over and put yourself in a new submissive position for them. Seeing that you've decided to give in to them, the pack edges in even closer, endowments twitching in anticipation. They're getting exactly what they want, and you're starting to think that it's just as much what you want.";
				WaitLineBreak;
				say "     The moment of contemplation is broken as one of the reptiles decides to take initiative, dashing ahead of his fellows and earning himself a premier position at your posterior. In no time at all you go from simply presenting yourself for their amusement to being pressed under their scaled hide, with even more colorful predators approaching. For a split second, he's preparing his move and lining himself up for his attack – and only a second. He takes the plunge, in more ways than one, and you gasp loudly from the sheer force of penetration, his dick spearing you wide open.";
				say "     Fortunately for them, and less fortunately for your throat, one of the other dinos takes the gasp as an open invitation, leaping forward to stuff you from the opposite end as well. Before you've even had time to fully process the reaming in your rear, you find yourself pinned between the pair, the additional cock more than enough to bring you to a stupefied state. You passively take what they offer you, a receptacle for their primal lusts and little else. The massive shaft in your ass thrusts energetically, pounding deeper into you and hitting every sensitive spot you didn't know you had along the way, and at the same time managing to force you even deeper down the length in your mouth. A moment later, the other dino returns the favor, fucking you right back again. It quickly becomes a vicious cycle as you're bounced back and forth between the two, with no reprieve in sight from the pleasurable onslaught.";
				WaitLineBreak;
				say "     While most of your world has been reduced to your holes and those monstrous shafts that are filling them so deeply, you can still hear the rest of the pack all around you, eagerly chittering as they await their own turns with your helpless body. The knowledge that they're all so desperate to use you sends a shudder through your form, the very idea supplementing the furious rush of burning desire already threatening to overwhelm you. Quickly it moves beyond simply threatening, as you unconsciously cry out in orgasm from the sheer sensations driven into you. The creatures who have driven you to this are continuing without even noticing your climax, your wail of submission muffled by the dick currently keeping you airtight.";
				say "     You start to lose track of time entirely, the relentless fucking you're taking from every side more than enough to keep any coherent thought from forming in your mind, instead leaving you with half formed ideas and vague feelings of wanting more. Eventually each dino is replaced by another of their fellows, but you can hardly tell the difference, as your defilement continues on just the same even with new actors. You are forced to orgasm several more times throughout the events, enough that your limbs are shaky and your mind in a haze, at least until something changes enough to break through your lust-fogged brain.";
				WaitLineBreak;
				say "     For the first time in who knows how long, your mouth is left completely empty for more than just the seconds used to swap partners. You look up, and see that for the moment at least, most of the saurians are apparently satisfied, and the whole ordeal has been reduced to a single one lazily finishing up in your ass. You're given just enough peace to realize that things are coming to a close, and to feel a faint longing at the thought of that same ending. As they finally start to leave, abandoning you as an exhausted mess on the ground, you can't help but wonder, [bold type]do you want them to leave?[roman type]";
				if Player consents:
					say "     Your will holds firm, despite the lust that assaults you. Being defeated by these creatures can feel overwhelming, but you're certain there's a limit to what you're willing to take from them.";
				else:
					say "     Though you may refuse to admit it to yourself out loud, some part of you deep down can't help but dream of how much further the rabbit hole can go, and of how much pleasure they can inflict upon you along the way. Whatever the future may hold between you and them, an essential part of yourself is ready for it. Perhaps the dinos themselves will be able to tell that you've given in long before the rest of you ever notices.";
					now DinoPackPrey is 1;
			else if (DinoPackPrey > 0 and a random chance of 1 in 2 succeeds): [hyper oral]
				say "     You almost find yourself smiling already as you're defeated again by the cunning dinosaur pack. Through might or through guile, it seems they continue to get the best of you, and you're starting to find it difficult to hate it. Regardless of how the conflicting thoughts resolve, you know they've bested you, and don't they deserve to be rewarded for that? You have enough presence of mind still to make them a tempting offer of their own, and from your defeated position you open your mouth wide and beg with your eyes, clearly offering them all the oral attention they could desire.";
				say "     While several of the dinos seem slightly conflicted about your actions, one instead has no hesitation, immediately rushing ahead to take advantage of your open invitation, perhaps fearing you'll change your mind if given even a brief moment to reconsider. Regardless of why, you find the tip of a massive reptilian shaft being pressed against your lips in no time at all, the taste already having you eager to take things further. You take a moment to lick around the head, almost thankful that he's decided to use the powerful shaft on you, and for a brief time at least he allows you to continue with your teasing.";
				WaitLineBreak;
				say "     Eventually he tires of the simple action you're giving him, and he starts to thrust his hips impatiently. Understanding what he wants, you pull back just enough to line his tip up with your mouth once more, and wait. It takes mere seconds before he starts to thrust forward, slowly sinking his colossal member into your maw. You can feel yourself stretching wider to accommodate his sheer size, and can't help but be impressed – by both him and you. Not letting the extreme girth stop you from doing your best, you use what leverage you can to give additional pleasure to the reptile, moving your tongue and lips to enhance the experience even more for him. Not deterred by your single minded focus, the remaining have started closing in as well, their own shafts throbbing and dripping in anticipation.";
				say "     Unwilling to simply leave all the other dinosaurs to their own devices, you use a free hand to beckon them inward. As they advance, you prepare yourself to help them with whatever you can, rather than leave them pent up, ready to use your hands and more besides to offer them some measure of relief. They seem to take this well, pressing in closely to use not just your hands, but much of your exposed flesh as a prime surface to frot on – or in the case of a few pent up specimens, as target practice with their well endowed weaponry.";
				WaitLineBreak;
				say "     Of course, your priority is still taking care of the virile shaft directly in front of you, and you haven't let this minor distraction stop you from giving it the care it deserves. Soon your worshipful attentions start to bear fruit, ever suck and bob building more pressure inside, until you can feel the powerful throbbing of an encroaching climax. Deep in your throat you can feel a telltale tremor that marks the coming flood, and you lean into it with gusto, pushing yourself as far down the lengthy cock as you can. He gratefully responds, delivering you a bountiful gift directly into your stomach.";
				say "     The other dinos do their best to match the output of the faucet you're tapped directly into, adding several more waves to the total pressure coming at you. Finally the tide starts to subside, and with a loud pop you're able to dislodge yourself from the ever so slightly diminished shaft. Several of the pack seem to have left already, while the others are still processing their own climaxes, or simply admiring the fresh coat of paint you've been so generously given. Eventually they all gather together once again and leave you alone, but you're more than certain you'll see them again.";
				if DinoPackPrey < 2:
					increase DinoPackPrey by 1;
			else: [hyper pounding w/ bad end option]
				say "     Once again, like clockwork, you find yourself laying defeated at the claws of the powerful pack. They consistently manage to defeat you, somehow, and it makes it all the more difficult to think of defeating them in the future, knowing their own sheer power. Against your own conscious thought, you sink to your hands and knees, leaving yourself in an even more vulnerable position for the victors of your struggle, willing to let them take the prize they've earned wholeheartedly. As you've seen time and again, the ravenous reptiles seem very satisfied that you've accepted your loss, and chitter happily to each other as they circle in closer, as if deciding how to handle you this time.";
				say "     The moments between your submission and their decision seem to stretch on for an eternity, but snap back into their proper place when they seem to resolve their plan and advance further towards you. Before they chose to use your mouth, so you offer it to placate them, but this does little more than amuse them. Instead you find your expectations thrown aside as one leaps atop you from outside your line of sight, and with little fanfare is already starting to rub his member back and forth across your supple flesh. Someone less experienced with how the larger reptiles act might think that itself is their goal, but you've seen and felt enough to know that he is simply preparing himself for the inevitable followup step.";
				WaitLineBreak;
				say "     The helplessness you face in your position is only magnified by the knowledge that it was your own weakness that led directly to where you are. The overwhelming sensation of your defeat still lingers upon you, and does little to soften the blow when the predator decides to finally take what they've earned, and attempts to thrust into you. You feel a direct shock as he prods your entrance, not quite managing to penetrate in a single stroke -  the vastly increased size held by the dinosaurs is clearly greater than you can take without even more effort. At the same time, however, he continues to jackhammer with his hips, each half-thrust sending another spike of sensation through your spine as he tries to fix that particular problem.";
				say "     As the stress is heaped upon you and your rear alike, the atmosphere is further saturated with desperate lusts as the other members of the pack watch eagerly, their own members already hardening as they await their own chances to take pleasure from you. Your body tries to resist the insistent entry, but you can feel yourself starting to succumb to the overwhelming situation you find yourself in, the head of the oversized member making it slightly further into your less and less unwilling passage with each successive jab. Unconsciously you find the lust assaulting you from all sides manifesting in a series of breathy gasps, foreshadowing the unavoidable outcome.";
				WaitLineBreak;
				say "     Finally the victorious lizard above you has done enough, and with a powerful thrust, the mighty member sinks into your far too eagerly awaiting ass. Your entire being is for a brief moment subsumed into the lusts of the watching pack, a sultry moan of ecstasy echoing through the air, as the lightning bolts of pleasure course through your entire body. You can barely tell when he starts thrusting in earnest, the same shaft that moments ago couldn't even fit in you already starting to glide back and forth with something nearing ease as your insides succumb to the primal virility on display. Mere moments into the renewed fucking, and your mind already starts losing its hold on the situation, individual thrusts blurring into a single extended moment of pure pleasure as the evolved being has its way with you.";
				say "     While you are uncertain how much time truly passes in your state, you're still sure that your fucking at the hands of the dinos is shorter than what you'd experienced before. The feeling of your insides wrapped around the thick members proves to be as quick of a road to pleasurable heights for him as it was for you, as he thrusts deeply in one mighty instant, before filling you with a torrent of reptilian seed. A powerful orgasm blazes through you, and your sexual high sinks to a somewhat more manageable horny buzz, leaving you to reflect on the feelings inflicted by the reptilian reaming – or so you think.";
				WaitLineBreak;
				say "     Your recovery is cut short when the dino that had taken the initiative is swiftly replaced, and your ordeal begins again at the hands of the next. While your mind is still somewhat fogged by lust, the implications are able to sink in fully. Before, the dinos have been willing to settle to a degree, with some being satisfied by your hands or mouth, letting you simplify the entire exercise and tackle them with slightly more ease. Today, it seems they are perfectly wiling to wait for a turn with your hole, and that means you'll be tackled by every single member of the pack, a number completely beyond your addled comprehension.";
				say "     As if gifted with divine prophecy, your brief glimpse at the future quickly comes true. The already mind-numbing ordeal you were dealt by the first dino is repeated almost verbatim with several more, each time the lust overcoming your senses in a blur. Each peak you hit from the powerful thrusts enough to rattle your thoughts, keeping you from thinking too hard about what else is in store for you. Soon, each successive instance starts to blur together completely, the haze of lust never fully dissipating, until it reaches a point where you are completely insensate, passed out at the lusty claws of the dino pack.";
				WaitLineBreak;
				if DinoPackPrey is 2: [moves to playable bad-end location]
					say "     When you return fully to consciousness, you expected to find yourself laying blissed out in a huge puddle of reptilian jizz, abandoned to the mercy of the city. This time, your predictions are only half right. It's true that you have woken up partially submerged in dinosaur goo, with a faint tickle of lust on the edges of your mind, but that's where the familiarity ends. Instead of the familiar stately sight of the museum, you instead seem to be on a small stretch of sandy beach, completely unlike the city's own public beach, with a looming primal looking jungle above you. Somehow, even with as unsafe as the city could be, you think you're in more danger as ever.";
					FeatGain "Automatic Survival";
					move player to Abandoned Shore;
					if carried of Gilded Staff > 0:
						say "     You feel a slight presence among your carried gear, and as you look you can see the gilded staff given by the magic drake vanish into nothingness. It seems that she's decided to leave you to the mercy of the pack.";
						now carried of Gilded Staff is 0;
				else:
					say "     Finally you awaken from your lust-drunk state, lying in a shockingly deep pool of reptilian release, your mind even now grasping at faint traces of the lust that so overwhelmed you so recently. It seems that the dinosaur creatures have abandoned you to the mercies of the city now that they're finished with you, at least for the moment. You reluctantly climb to your feet, exhaustion still clinging to your very core, and return to your adventures.";



to say DinoPackVictory:
	if inasituation is true:
		say ""; [dealt with in the file where the event is described]
	else:
		say "     As you land a final solid blow, your target is knocked to the ground. In that moment, the other dinos all scatter, darting away from the site of the battle and quickly disappearing around corners and through doorways. The single remaining dinosaur is lying on the ground, helpless before you, massive cock just waiting to be used.";
		say "     [bold type]You could easily have your way with him if you want.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have fun with the little dinosaur.";
		say "     ([link]N[as]n[end link]) - Leave it be.";
		if player consents:
			say "     Now that you've decided to enjoy the colorful reptile, it's simply a matter of how. You could (Y=Ride, N=Suck).";
			if player consents:
				if player is male:
					if (player is female and anallevel < 3): [herm ride]
						say "     The huge endowment sported by the dino practically demanded that you ride it, so what else are you to do? The massive dinosaur cock is already quite hard, but you kneel in front of him and begin to work up and down it with both hands, giving it that extra bit of attention to bring it to its full potential. Only a few moments of this are necessary, leaving the shaft firm between your hands, and dripping precum slightly from the tip. You pause to admire your handiwork, as well as the generous gift these small reptiles have, before finally moving on with your task. You rise fully, and position yourself above the shaft, ready to take it into yourself as deep as possible.";
						say "     After several seconds of hesitation, at last you brace yourself, and take the plunge. Lowering yourself downward, the narrow tip of the reptilian shaft starts to slowly spread open your lower lips. You gasp as you inch further and further down, the member within you slowly growing in width, stretching you further and further. At the same time, your own pleasure starts to mount, growing greater with each ridge being eased into your pussy. Eventually the titanic shaft becomes thick enough that you can barely move yourself further down it, instead merely basking in the feeling of being so incredibly full of cock. Rather than force yourself deeper onto the shaft, you start to roll your hips, grinding the ridges already within you against your insides, stimulating you even further.";
						say "     Eventually the twisting pleasure within you brings you to a peak, your shaft unleashing a load of your own as you begin to climax around the incredible dinosaur shaft. As you squirm in your own ecstasy, it seems to be enough to drive the dino over the edge, as the massive cock within you starts to spray loads of prehistoric seed within you, filling you even more than before. The intense combination of pleasures blurs your perception, everything flowing together until you finally come down from your sexual high, leaving you with a cunt full of dinosaur cream, as the shaft delivering the gift slowly slips out of you. Slowly you stagger to your feet, still slightly dazed from your act, and return to your wandering, leaving the dino behind.";
					else: [male ride]
						say "     The huge endowment sported by the dino practically demanded that you ride it, so what else are you to do? The massive dinosaur cock is already quite hard, but you kneel in front of him and begin to work up and down it with both hands, giving it that extra bit of attention to bring it to its full potential. Only a few moments of this are necessary, leaving the shaft firm between your hands, and dripping precum slightly from the tip. You pause to admire your handiwork, as well as the generous gift these small reptiles have, before finally moving on with your task. You rise fully, and position yourself above the shaft, ready to take it into yourself as deep as possible.";
						say "     After several seconds of hesitation, at last you brace yourself, and take the plunge. Lowering yourself downward, the narrow tip of the reptilian shaft starts to slowly spread open your rear entrance. You gasp as you inch further and further down, the member within you slowly growing in width, stretching you further and further. At the same time, your own pleasure starts to mount, growing greater with each ridge being eased into your ass. Eventually the titanic shaft becomes thick enough that you can barely move yourself further down it, instead merely basking in the feeling of being so incredibly full of cock. Rather than force yourself deeper onto the shaft, you start to roll your hips, grinding the ridges already within you against your insides, stimulating you even further.";
						say "     Eventually the twisting pleasure within you brings you to a peak, your body shaking beyond your control as you begin to climax around the incredible dinosaur shaft. As you squirm in your own ecstasy, it seems to be enough to drive the dino over the edge, as the massive cock within you starts to spray loads of prehistoric seed within you, filling you even more than before. The intense combination of pleasures blurs your perception, everything flowing together until you finally come down from your sexual high, leaving you with a stomach full of dinosaur cream, as the shaft delivering the gift slowly slips out of you. Slowly you stagger to your feet, still slightly dazed from your act, and return to your wandering, leaving the dino behind.";
				else:
					if (player is female and anallevel < 3): [female ride]
						say "     The huge endowment sported by the dino practically demanded that you ride it, so what else are you to do? The massive dinosaur cock is already quite hard, but you kneel in front of him and begin to work up and down it with both hands, giving it that extra bit of attention to bring it to its full potential. Only a few moments of this are necessary, leaving the shaft firm between your hands, and dripping precum slightly from the tip. You pause to admire your handiwork, as well as the generous gift these small reptiles have, before finally moving on with your task. You rise fully, and position yourself above the shaft, ready to take it into yourself as deep as possible.";
						say "     After several seconds of hesitation, at last you brace yourself, and take the plunge. Lowering yourself downward, the narrow tip of the reptilian shaft starts to slowly spread open your lower lips. You gasp as you inch further and further down, the member within you slowly growing in width, stretching you further and further. At the same time, your own pleasure starts to mount, growing greater with each ridge being eased into your pussy. Eventually the titanic shaft becomes thick enough that you can barely move yourself further down it, instead merely basking in the feeling of being so incredibly full of cock. Rather than force yourself deeper onto the shaft, you start to roll your hips, grinding the ridges already within you against your insides, stimulating you even further.";
						say "     Eventually the twisting pleasure within you brings you to a peak, your shaft unleashing a load of your own as you begin to climax around the incredible dinosaur shaft. As you squirm in your own ecstasy, it seems to be enough to drive the dino over the edge, as the massive cock within you starts to spray loads of prehistoric seed within you, filling you even more than before. The intense combination of pleasures blurs your perception, everything flowing together until you finally come down from your sexual high, leaving you with a cunt full of dinosaur cream, as the shaft delivering the gift slowly slips out of you. Slowly you stagger to your feet, still slightly dazed from your act, and return to your wandering, leaving the dino behind.";
					else: [neuter ride]
						say "     The huge endowment sported by the dino practically demanded that you ride it, so what else are you to do? The massive dinosaur cock is already quite hard, but you kneel in front of him and begin to work up and down it with both hands, giving it that extra bit of attention to bring it to its full potential. Only a few moments of this are necessary, leaving the shaft firm between your hands, and dripping precum slightly from the tip. You pause to admire your handiwork, as well as the generous gift these small reptiles have, before finally moving on with your task. You rise fully, and position yourself above the shaft, ready to take it into yourself as deep as possible.";
						say "     After several seconds of hesitation, at last you brace yourself, and take the plunge. Lowering yourself downward, the narrow tip of the reptilian shaft starts to slowly spread open your rear entrance. You gasp as you inch further and further down, the member within you slowly growing in width, stretching you further and further. At the same time, your own pleasure starts to mount, growing greater with each ridge being eased into your ass. Eventually the titanic shaft becomes thick enough that you can barely move yourself further down it, instead merely basking in the feeling of being so incredibly full of cock. Rather than force yourself deeper onto the shaft, you start to roll your hips, grinding the ridges already within you against your insides, stimulating you even further.";
						say "     Eventually the twisting pleasure within you brings you to a peak, your body shaking beyond your control as you begin to climax around the incredible dinosaur shaft. As you squirm in your own ecstasy, it seems to be enough to drive the dino over the edge, as the massive cock within you starts to spray loads of prehistoric seed within you, filling you even more than before. The intense combination of pleasures blurs your perception, everything flowing together until you finally come down from your sexual high, leaving you with a stomach full of dinosaur cream, as the shaft delivering the gift slowly slips out of you. Slowly you stagger to your feet, still slightly dazed from your act, and return to your wandering, leaving the dino behind.";
			else: [sucking the dinos. later add scene variants for player sizes]
				say "     You decide to take advantage of the state the adorable lizard by swallowing his oversized member, a task as exciting as it is daunting. Wasting no time, you bring your head in closer, ready to enjoy everything before you. From there you extend your tongue, and start to run it up and down the huge reptilian shaft, showering it in oral affection. Finally, you shift position and bring the head into place just outside your mouth. You take the plunge, and start making your best attempt to swallow that massive dinosaur cock, pushing ever so slowly down the length, feeding more of it into you inch by inch. Unfortunately, the shaft is just too much for you to handle completely, as each ridge is ever so slightly wider than the last. Despite your best efforts you were only able to impale your throat a third of the way down before it was too wide for your mouth to open any further.";
				say "     Undaunted, you work up and down the portion you are able to engulf, massaging as much as you can with your mouth. Finally you know your hard effort is about to be rewarded when the incredible shaft starts to throb more intensely. Just in time you pull yourself back to the tip, a deluge of spunk flowing into your mouth, an amount large enough that despite your position and readiness your face is still marked by overflowing streaks. For a time all you can do is attempt to swallow as quickly as possible, until at least the flow abates, leaving you sated, if now perhaps somewhat worn out. With your task done, you've gotten all you need from the little dinosaur, and there's nothing more for you to do to him. You simply leave the reptile to recover, as you return to the city.";
		else:
			WaitLineBreak;
			say "     Deciding against it, you turn around and head off, leaving the remaining dino to fend for itself.";


to say DinoBargain:
	say "     Once more you lay beaten and defeated in the center of a ring of the tiny dinos. They have proven their superior skills, and you are eagerly awaiting the moment when they prove how superior they are in other ways as well. However, after a moment, you realize that isn't quite what's about to happen. Instead of dominating you with their mighty dicks, several of the reptiles seem to be quietly discussing something. As much as you may want to know what's going on, you wait patiently, knowing that you're certain to enjoy anything they come up with. When they finally stop talking and turn back to you, you're surprised once more, as rather than torment you with their endowments, they press in tightly around you and lift you up into the air. Before you can react, the pack is already carrying you away.";
	say "     It doesn't take long for you to realize exactly where they're taking you, as they enter the red light district. Sure enough, you're soon brought into a small square, and placed on the ground before the Magic Drake. The dinos spread out around you, before looking expectantly at the drake. She raises her staff slowly, eyeing you in your new place on the ground as she does so. 'You have done well, bringing my familiar back to me, and shall be rewarded.' A single twist of her phallic staff, and you can feel a tingling in the air, like what you feel each time the drake has worked her magic on you. This time, however, you're instead watching her do the same to three of the dinos. Their already huge shafts and balls start growing to even greater proportions, dwarfing their reptilian forms in a cascade of cockflesh.";
	WaitLineBreak;
	say "     The newly blessed dinosaurs each shudder and moan, the sensation of their new endowments clearly too much, each of them cumming on the spot, a miniature flood of spunk flowing out of each one of them. Unconsciously you lick your lips in anticipation, because surely such impressive cocks wouldn't exist if you weren't going to be given the honor of serving them? Even as you imagine various ways of enjoying those members, the other dinos are clearly in awe of what the chosen three were given, chittering excitedly at each other. After several moments of this, the empowered dinos finally seem to get a hold of themselves, turning their attention towards you. The drake looks on, grinning at the sight before her, before speaking. 'Go ahead. I've given you your payment, now why don't you put it to use showing my familiar their place? I promise that they'll enjoy it.'";
	say "     In a familiar action, the dinos gather around you, all excited to stuff you full of their shafts—this time however, the majority of the drakes are also somewhat apprehensive, proving themselves to act deferential towards the three with the largest dicks. On the other hand, those three exude confidence, stepping right up behind you with no hesitation. For a moment you're puzzled about why they aren't each taking up a different position around you, but a few stray words as they whisper to each other reach your ears and you understand. Rather than try and fill all of your holes at once, each seems eager to make their first taste of this size a perfect one by starting with your magnificent ass.";
	WaitLineBreak;
	say "     You start to get antsy, as you were expecting to be fucked already by this point, and the suspense is starting to get unbearable. You let out a whiny moan and shake your rear at them, hoping to entice them into action, and finally get yourself satisfaction. That incentive seems to be enough to shake them out of their silent argument, as not a moment later you feel an oversized cock tip lined up against your passage, slowly pressing inwards. For a moment you don't think it will be able to go any further, but the dino above you starts to increase the pressure, and finally the rest of the shaft follows the head, spreading you open. You're not sure if you ever could have fit something so large if it weren't for all the practice you have from dealing with the Magic Drake, but it seems all the time getting railed by her has paid off in terms of capacity. The reward for your success is more work—and the fact that he starts thrusting into you with his massive dinosaur shaft.";
	say "     Though one dino has already claimed the grand prize, the others aren't going to simply leave the two of you to fuck like animals in solitude. The remaining enhanced reptiles get in front of you, putting their cocks right up against you, jostling for the position. Their attempts leave their pre smeared across your face, and you learn that it smell far more potent than it did when they were smaller. As much as you wish you could lose yourself in the sensations, you know you have more to contribute, and the dinosaurs are unlikely to let you get away with giving it less than your all. You muster your focus as best as you can while still being pounded so fiercely from behind, ready to do your best to service the two juicy cocks still left alone.";
	WaitLineBreak;
	say "     You require no further prompting from them, and start to kiss and lick at the cock head on the left, exploring it thoroughly. Before the other can get antsy, you switch and start to repeat the process, keeping the first at full mast with some gentle care from your hands. Unable to decide how to proceed further, you continue to alternate foreplay to each member, making sure that both of them are as ready as they're ever going to be. You can tell by the moans of the two dinos that they have no complaints about your process, eagerly awaiting your next trick—and rather than disappoint your newest fans, you resolve to try and make one of their dicks disappear.";
	say "     The next time you switch from one dino to the other, you follow up your teasing with more focused attention. You slowly switch from sucking at one part of the head to spreading your lips as far as you can, trying to fit as much in your mouth as possible. Unlike the work from the reptile behind you, getting the tip of the shaft into your mouth is a process that takes some serious doing. You're making progress though, slowly and steadily. The one left without you stuck on his cock mutters a few complaints, but they flow over you easily as you focus everything on this one dick. Eventually you make it far enough for your lips to get past the entire head, and another several inches beyond that manage to slide into your throat almost on accident, with how much easier it is in comparison.";
	say "     For a moment, you simply bask in the sensations of the member you're servicing. The texture, taste, smell, all of them fill your mind the same way the shaft fills your mouth. However much you may want to though, you don't allow yourself to dwell on the magnificent member, not when you still have so much to do. You push past the enticing thoughts, and start to work your way further down the shaft once more, letting the dinosaur dick slip deeper into you with each passing second. You go down smoothly for a time, taking what seems to be an infinite amount of meat into your throat, though in reality it's likely closer to a foot or so. Unfortunately, you then reach the limit of what you're able to take on your own terms.";
	WaitLineBreak;
	say "     Things are much more fortunate for the well endowed dinos, though, since you aren't the one setting the terms. For a moment you're at your limit, using a free hand to feel the huge girth in your throat from the outside, marveling at the sheer size, when suddenly the dino above you takes control of the situation. He starts to pull back slightly, before thrusting forward much more quickly, an act he starts repeating. What gentle coaxing couldn't solve, a more forceful approach proves more successful in handling, and his energetic attempts to breed your face start to increase the maximum depth that his member can reach. In many ways, you are no longer a participant in the action, reduced to toy for the enchanted reptiles to use, bounced between two massive shafts without a care.";
	say "     Even though they're not particularly aiming for your pleasure, you can feel the rising waves of excitement anyway. In truth, being used like that by them only makes the pleasure more intense, and with their cocks as large as they are, it would be almost impossible for them to miss every sensitive spot inside you. You start to shudder as an orgasm builds, only to suddenly stop. You hear a laugh from somewhere off to the side, and though you can't see clearly enough to focus with you being fucked so hard, you realize it can only be the magic drake. 'Oh, don't be naughty now. A good pet should only come when all of their masters are done, you seem to be forgetting one.'";
	WaitLineBreak;
	say "     She's right, as always, and you're disappointed in yourself for being so distracted, even if it was by such juicy shafts. Though it's difficult to do while being bounced back and forth on a pair of hard rods, you manage to maneuver your arms around enough to wrap your hands around the almost-forgotten shaft of the third gifted dino. He lets out another one of their familiar reptilian laughs, and starts humping back and forth through your hands, even as you try and pleasure him with them. 'Took you long enough. I guess its hard to blame you for getting so wrapped up in our cocks, since you're such a slut, but don't do it again.' You would try and nod a response, but with your throat held in place around a hard member, the most you can do is make vague sounds of assent.";
	say "     From there, you fall into something of a dazed state, being completely filled while also trying to manually please a third mammoth shaft, all under the watchful eyes of the magic drake and remaining members of the dino pack. You do your best to keep up with what's going on, twirling your tongue here, tracing your fingers along the edge of the cockhead there, but the vast majority of the work is being done by the dinosaurs as they ravage you with seemingly limitless energy, even as you're magically held on the brink of your peak. A person could lose themselves in the repeated jackhammering, and indeed you start to do so, but at last the pace starts to shift, their thrusts becoming uneven, and breaking you from your reverie.";
	say "     A cheer arises from the watching crowd, which combines with the change in their brutal fucking to lead you to the conclusion—they must be nearing their own climaxes. Involuntarily you let out a faint whining noise, unable to wait for their release, particularly as you suspect it may be the key to your own. Even if you wouldn't be able to come from the feeling of them filling you, you'd still want it to happen, for these enhanced dinos to truly mark you as a slut, and give you exactly what you deserve, what you desire. Fortunately for your needy holes and the watching crowd, they don't leave you waiting for long.";
	WaitLineBreak;
	say "     Each of the shafts filling you seem to get even harder, something you thought was totally impossible. With how far the thick members fill you, you can just as clearly feel them throbbing and twitching far more than before, the overburdened sack in front of your eyes starting to contract, all signs pointing to the inevitable eruption on its way. You give in completely, already anticipating being pumped full of their sticky seed. However, at the last possible moment before you achieve that goal, the trio pull back, snickering audibly at your clear shock and disappointment, even as they reach their peak.";
	say "     Rather than being poured into you, their combined releases are instead jettisoned directly onto you, spurt after spurt splashing its way onto your skin. They belittle you in a dozen minor ways as you receive their offering, enough that their words blur together into a wave of mockery, only making you shiver with greater pleasures. Before they continue much further, however, they fall silent as the drake speaks again. 'Well, isn't that just the best look for you? White is a good color for you, you should wear it more often, familiar.' She pauses for a moment to watch as the torrent continues to soak you, their loads seemingly infinite—the drake's enhancement at work.";
	say "     'Well, my little gift to these helpful critters is certainly proving a success. I can see how much you love it, so don't worry, I'll make sure that you can get your fill as often as you like. And with how eager you've been, I suppose you've earned something of a treat to go with it.' The drake comes closer, her own erection showing how clearly she enjoys the sight. 'Once you're done with my familiar, put them somewhere safe, hmm? They'll be back soon enough, hungry for more.' Following her declaration, she jiggles her staff, even as her remaining hand makes a similar motion with her shaft. Her equally enchanted load is added to the mix, and you feel a tingle wash over and through you as it does so, barely discernible against the overwhelming sensations.";
	say "     The moment it finishes, the force keeping you from climaxing erodes, and in that same instant you immediately reach that peak as well. In the midst of repeated deluge of their dino spunk, you cry out from that perfect moment of pleasure[if player is male], your own release lost in the mess coating you[end if]. The overwhelming feelings are finally too much, and you start to lose consciousness, your final thoughts only of the sounds of laughter and the heady scent of cum. Some time later, you awaken in a daze, to find yourself alone once again, with a thick cream coating as your parting gift.";

to say DinoPackDesc:
	setmongender 3;
	if inasituation is false: [regular text]
		if DinoPackEvolution > 2: [evolved desc]
			say "     You see a large pack of reptilian creatures swarming in front of you. They bear a heavy resemblance to the tiny raptors you've fought before, but the difference in size is undeniable. Not only are the critters themselves larger, so too are their stiff members, each one wielding a truly menacing weapon clearly meant for battering holes into submission. The gleam of cunning is impossible to miss, leaving you wary of their plans.";
		else: [normal desc]
			say "     A whole pack of small reptiles, covered in bright scales of various colors and with wickedly sharp teeth and claws, much like those of a velociraptor. The most clearly visible feature is that they have incredibly disproportionate endowments, each dinosaur toting a turbo sized cock, almost the size of their bodies, complete with a matching external sack quite unlike your average lizard. Despite their size, you can see from the gleam in their eyes that they are clearly intelligent. Before you can think further, they suddenly dart forward and swarm you!";
	else:
		say ""; [dealt with at the source]

Section 2 - Monster Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Tiny Dino";
	add "Tiny Dino" to infections of ReptileList;
	add "Tiny Dino" to infections of FurryList;
	add "Tiny Dino" to infections of MaleList;
	add "Tiny Dino" to infections of TaperedCockList;
	add "Tiny Dino" to infections of InternalCockList;
	add "Tiny Dino" to infections of BipedalList;
	add "Tiny Dino" to infections of TailList;
	add "Tiny Dino" to infections of OviImpregnatorList;
	now Name entry is "Tiny Dino";
	now enemy title entry is "Dino Pack"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]Several dinos nip at your heels.[or]Two of them manage to rake you with their claws.[or]One leaps at you, landing a savage blow.[at random]";
	now defeated entry is "[DinoPackVictory]";
	now victory entry is "[DinoPackLoss]";
	now desc entry is "[DinoPackDesc]";
	now face entry is "like that of a dinosaur, with a long reptilian snout filled with sharp teeth"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "reptilian, with powerful muscles built for hunting"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]colorfully scaled[or]finely scaled[or]scaled[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a relatively short tail with a thick base."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]reptilian[or]saurian[or]dinosaur[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it flows into a reptilian shape"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your bones creak and crack as they morph into a more suitable form for hunting, leaving you with the lithe body of a dinosaur"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "very small scales of various colors flow over your body"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a short reptilian tail emerges from above your ass, twitching about lightly"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your shaft swells with sudden arousal as the end tapers out to a point, bulbous ridges forming along the length as the shaft takes on a purplish color, finally settling into a reptilian length"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 15;
	now dex entry is 18;
	now sta entry is 15;
	now per entry is 18;
	now int entry is 15;
	now cha entry is 12;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 75;
	now lev entry is 10; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking.]
	now area entry is "Museum"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 18; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 4; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is true;
	now libido entry is 35; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]scaly[or]lithe[or]dinosaur[at random]";
	now type entry is "saurian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is "Magic Drake"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Endings


Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Dino Pack Idol"	"Leaving"	""	Dino Pack Idol rule	100	false

This is the Dino Pack Idol rule:
	if ending "Dino Pack Idol" is triggered:
		the Player has left;


Section 4 - Abandoned Island
[Adds a playable bad-end state, trapped on an island with the evolved pack]

Table of GameRoomIDs (continued)
Object	Name
Abandoned Shore	"Abandoned Shore"

Abandoned Shore is a room.
Description of Abandoned Shore is "     The beach stretches out far and wide, but looks pristine, untouched by human hands.".

Table of GameRoomIDs (continued)
Object	Name
Lost Jungle	"Lost Jungle"

Lost Jungle is a room.
Description of Lost Jungle is "     The tree canopy is dense, with only faint beams of light streaming through the foliage. The undergrowth is equally tightly bound, making every movement a chore, and concealing possible danger on every corner.".
Abandoned Shore is west of Lost Jungle.

Table of GameRoomIDs (continued)
Object	Name
Forgotten Temple	"Forgotten Temple"

Forgotten Temple is a room.
Description of Forgotten Temple is "     The strange temple ensconsced in the jungle is foreboding, with an ominous feeling looming in the air. This is the location of something important, you can tell, though whether that is in the past or future is a mystery.".
Lost Jungle is south of Forgotten Temple.

Table of GameRoomIDs (continued)
Object	Name
Empty Fields	"Empty Fields"

Empty Fields is a room.
Description of Empty Fields is "     Your vision is filled with an almost unnaturally empty field, with rolling grass and a mere few trees dotting the landscape. There isn't a hint of a building in sight.".
Abandoned Shore is south of Empty Fields.
Forgotten Temple is east of Empty Fields.

Table of GameRoomIDs (continued)
Object	Name
Mysterious Altar	"Mysterious Altar"

Mysterious Altar is a room.
Description of Mysterious Altar is "     The heart of the temple is clearly here, in this imposing altar. It rests in the center of everything, atop a large dias, easily drawing all attention to its presence. The strange power of this place is most concentrated here, waiting almost longingly for something.".
Forgotten Temple is southwest of Mysterious Altar.

after going to Lost Jungle while (a random chance of 1 in 3 succeeds): [use these to call events, Altar is safe - until you succumb completely]
	say "[DinoPackHunt]";

after going to Forgotten Temple while (a random chance of 1 in 3 succeeds): [use these to call events, Altar is safe - until you succumb completely]
	say "[DinoPackHunt]";

after going to Empty Fields while (a random chance of 1 in 3 succeeds): [use these to call events, Altar is safe - until you succumb completely]
	say "[DinoPackHunt]";

after going to Abandoned Shore while (a random chance of 1 in 3 succeeds): [use these to call events, Altar is safe - until you succumb completely]
	say "[DinoPackHunt]";

after going to Mysterious Altar while (DinoPackEvolution > 10): [use these to call events, Altar is safe - until you succumb completely]
	say "     Something seems different about the air at the altar, a charged power hanging in the air. The tension you feel on the island seems even stronger here now, and you have little doubt that it holds the fate the creatures here have been pushing you towards. The only question left is whether you'll submit to their predatory might?";
	if Player consents:
		say "[DinoPackIslandEnding]";
	else:
		say "     The temptation remains hanging, to give in to the pressure and the hunt, but for now, at least, you will endure.";

to say DinoPackHunt: [being hunted by the evolved dinos]
	say "[EvolveDinoPack]";
	say "     It seems that once more the howling pack of predators has caught your scent, turning your slow and measured survival into a frantic chase. You do your best to evade them though the dangerous environments of the strange island, but their forms are honed for this exact scenario, leaving you completely hopeless in evading them on foot. Finally the group surrounds you, prowling with the casual ease you've come to recognize so clearly. They feel they have nothing to fear from you, and you have a suspicion they may be right.";
	now inasituation is true;
	challenge "Dino Pack";
	if (fightoutcome < 20) or (fightoutcome > 29): [winning or fleeing]
		say "     Though they are ferocious indeed, you are able to ward off the attack from the swarming dinos, and slip back into the mazelike interior of the island. You are victorious for now, but the battle has left you worn and weary. Since the pack seems to be hale and hearty against each time you see them, you only know the next time will be more difficult still.";
		now inasituation is false;
	else: [lose to the dinos]
		if DinoPackEvolution > 15:
			say "[DinoPackIslandEnding]";
		else:
			say "     All the effort you put into trying to avoid the dinosaurs all around you, and still you find yourself once again brought to your knees, surrounded by horny beasts ready to take out their post-hunt euphoria on your supple flesh. Beaten down as you are there's little you can do to resist them in this state, and you consign yourself to being used as a pleasure toy for the dinos, and biding your time until later for your escape.";
			say "     As usual, the creatures do not disappoint. Their prowling quickly turns into teasing, as they flaunt their superiority both physical and sexual, showing their large endowments at every opportunity as they communicate to each other in their own reptilian tongue, no doubt planning how to properly share their spoils. Every now and then one darts forward and assaults you, not with their claws, as those have been proven beyond a doubt already, but with their saurian shafts. Each darting motion brings with it a stinging sensation as you're slapped by the weapons between their legs, teaching you with certainty what will follow – they may have succeeded in their hunt tonight, but there's little doubt that you'll be the one swallowing meat.";
			say "     Finally their own teasing proves more than enough for them, as several members of the group reach enough arousal that they refuse to wait any longer, and pounce on you with their mightiest attacks. The massive members assault you from every direction in mere moments, pressing up against your face just as easily as they plop onto your back, force themselves into your hands, and prod up against your rear. As lustful as they are, their attentions have raised your own far beyond that, leaving you almost insensate in response to their aggressive action. As a result, your lust-clouded mind is unable to decide which meaty shaft to focus on first.";
			WaitLineBreak;
			say "     That decision is swiftly taken out of your hands, as the dino in front of you has decided that your panting mouth would be better served wrapped around his cock. He pulls back just enough to line up his tip, before he starts to forcefully slide it forward into your mouth. Once upon a time you may have been able to resist such an action, but the many times you've been subjected to such attentions at their reptilian claws leaves you weak, and the head slides into you with minimal effort, your only noticeable reaction being the muffled moans that spill forth around the cylindrical seal.";
			say "     Despite the sheer overwhelming nature of the act, this itself is not enough for the remainder of the pack surrounding you. A frenzy of reptilian chittering erupts, feeling almost like the cheering of a crowd, and is immediately followed by an equally frenetic push towards stuffing you from other directions as well. Their massive shafts start to split you open, spearing you with the formidable girth of a predator. When combined with the mounting arousal from before, the act of penetration is enough for their own pre-seed to already begin to flow, giving you a tantalizing taste of what's to come.";
			say "     Alongside that flow is another, deeper and subtler at once, as their dominant energy seems to surge within you, shaping you further to meet their desires. You feel as if your every inch is becoming softer, more pliable, and easier to hunt. Your already formidable rear is further enhanced, the size increasing to more easily accommodate the prodigious saurian cocks that are already ravaging you, leaving you forever marked as their prey.";
			WaitLineBreak;
			say "     This marks a turning point in the reptilian gangbang, as the group starts to rapidly speed towards their own individual pleasure peaks, their thrusts growing faster and less coordinated, all while their various grunts and indicators of pleasure become somewhat more ragged and disjointed. Your own  satisfaction has been long since forgotten by all participants, but nonetheless lurid sensation wells up within you in response to the furious copulation. The sheer primal strength of these predators is more than enough to fill you with longing and need, something that only their monstrous shafts can deliver you from. At the same time, your defeated body offers them the very thing they need most in this moment as well, and so you are fated to trade your welcoming holes for their primal dominance.";
			say "     In the end, there's only one way your lost battle can truly end. The building pleasure is enough to cause your vision to go blurry, everything around you merely a blur of sexuality and more, relegated to secondary when considered to the physical sensations you're being overwhelmed with. Your pliant body is working wonders on the dino pack as well, and finally they're almost ready to slake their lusts upon you. Their thrusting reaches a fever pitch, your ears filled with their signature sounds as wholly as your body is filled with their massive shafts. Finally, in a single moment everything happens at once, the sensation almost enough to cause your brain to shut off momentarily.";
			WaitLineBreak;
			say "     The most obvious and most important thing that happens is a veritable flood of saurian spunk that starts to flow into you from both of your filled holes, filling you to the brim with their essence and sending sparks of pure submission racing up your spine. The forceful thrusts and jets of seed accompanying their reptilian orgasm feels like it robs of you of what little control of your body you had left, leaving you merely a puppet operated by their strings. At the same time, the minor note of your own climax rushes through you, the shatteringly powerful pleasure echoing through your body still secondary to the all encompassing bliss that comes from becoming a sleeve for the saurian predators.";
			say "     That same bliss leaves you insensate, drifting on the aftershocks of the orgy for quite some time. Your senses are confounded by the lingering overstimulation, but you're still at least coherent enough to understand a few flashes of the dinosaurs standing over you, their curious laughter ringing in your ears as they brush the sticky tips of their shafts over your skin in amusement. After that, it seems that you're left to stew in an oversized puddle of their cum for a time, time enough for the dino pack to leave the area. You are once more alone on this island, at least for now. You know that they had you totally at your mercy, and could have done something far worse with you, but instead took their rightful use of your body, and left it at that. You suppose that it's a mercy, to an extent, but it's a mystery how much longer that mercy will be extended before something changes.";
			now inasituation is false;

to say DinoPackIslandEnding: [bad end culmination for the island]
	say "     The might of the hunters has finally gotten the better of you – and you are deeply certain that it's for the last time. Somehow, they've proven capable of growing stronger with each passing day trapped on the island, evolving into something beyond what you could hope to defeat. All each day has done for you has made you tired, worn out, and prone to making more mistakes. At the same time, each defeat suffered at their hands has molded you more and more into their ideal toy, your proportions growing in ways that make you less able to evade them – and far better to be fucked by them. While the changes you've suffered are myriad, nothing is as prominent as your colossal ass, perfectly ready to take giant dinosaur cocks all day without being worn out, and you have a strong feeling that you'll be putting that guarantee to the test now that they've captured you.";
	say "     In a way, it seems that hunting you across the lost island was nothing more than a game for them, a way to simply toy with you before they took you as their own, and your time has run out. All these thoughts and more run through your mind as the now unbeatable pack drags you towards the forgotten island temple, and the altar that lies deep within. Soon enough, you run out of time to ponder further, and you find yourself being lifted up easily by the powerful reptiles, and laid out on the center of the altar. Without the dinos seeming to do anything, powerful cables seem to spring up from underneath the altar, tying your limbs down and leaving you bound spread-eagle on the platform, your massive ass easily accessible.";
	WaitLineBreak;
	say "     That seems to act like a signal, and the familiar predatory gleam shines in the eyes of the hyper reptiles around you, pacing around the altar as they choose from among themselves who will get to use you first. The same chittering noises that have haunted your dreams and waking hours alike echo around you, until finally a consensus seems to be reached, and a single one strides up into position by your exposed behind. There is a certain tension hanging in the air, a feeling like untapped electricity waiting for the catalyst to spark it into existence. You feel as if the strange presence of this temple is waiting with bated breath for what is about to ensue.";
	say "     When the raptor thrusts, everything seems to happen at once. In addition to the pleasure that shocks through your body when the hyper cock slides into your waiting passage, a powerful tingling seems to shoot through your entire body, changing something on a fundamental level. While you aren't certain exactly how, you know with complete clarity that there's no going back now, you're theirs forever. At the same moment, a far more visible event happens, and the strange energy seems to come alive, somehow both clearly visible in the air above you and yet nonexistent, as it sinks down into the inhabitants of the room. ";
	WaitLineBreak;
	say "     You can tell within mere moments that at least one effect seems to be a further growth of the already-large reptile currently reaming you with ease, slowly stretching you even further. The strange feeling already flowing through you seems to react, and you can tell that your own already extremely prominent rear starting to grow even more. If your thoughts were more cohesive, you might be able to connect the lines between the related incidents happening all at once, but instead they simple register as  separate points of interest to be filed away for later – if there is any kind of later worth thinking about.";
	say "     The powerful beast currently inside you seems to care very little for your own internally confused thought process, and simply continues to pound you with the ever-growing prick that's spreading you open so pleasurably. Each time he thrusts, his equally massive balls clap against your expanding cheeks, the reverberations growing with each stroke. The chorus of further chittering from the rest of the pack grows to a fever pitch, like some sort of primal chant, but your thoughts instead are fully consumed with the lustful attentions you're facing directly, drowning in overflowing pleasure, not even registering the faint mocking laughter that seems to echo from nowhere at all.";
	WaitLineBreak;
	say "     Your entire world is reduced to your new existence as a sleeve for your new saurian masters to use as they please, and as a conduit for the mysterious power flowing through the temple, though your blurred thoughts are unable to fully realize the second portion at all, instead leaving it to your unconscious instincts. An unending chorus of sexual noise serves only to enhance the already overwhelming experience, bringing the entire thing to new heights for everyone involved, and your already struggling mind can only blissfully embrace it. Something inside you gives up fully, and the last flickering flame of defiance against this fate is smothered by the rushing lusts and pleasures swirling throughout the room. A moment later the strange sounds of the temple around you magnify significantly, as if your total submission is the catalyst for whatever is going on here.";
	say "     When this happens, the energy of the temple seems to somehow impart knowledge to you,  as suddenly you find yourself fully aware of the purpose for what is going on, even if your mind can barely process this. This is enough to connect a few of the dots, however, and you're able to realize that of the forces conspiring to bring you to this time and place, the pack was only a part of the mystery. The other half of the equation is their sometimes benefactor, the scaled sorceress known as the magic drake. This altar, this ritual, and the worship you're being made to offer right now are all a part of a plan to further empower the magic user, make her something far more. As the certainty rushes through your mind, you start to reach even greater heights of pleasure, your tightening holes furiously milking release from the dinos as your own climax hits, sealing your fate and theirs.";
	WaitLineBreak;
	decrease score by 25;
	now humanity of Player is 0;
	trigger ending "Dino Pack Idol";
	end the story saying "You know that you will never leave this place again, and your new destiny is to lie here, part of this altar, a vessel of lust and power for those who control you. Your body will serve as a tool, a conduit, a battery, and more besides while in a never ending cycle. The endless lust will fuel the powers of this place and its new owner, until it reaches far beyond the confines of this island. Your slutty body will forever be a part of that – and you couldn't be happier.";
	now battleground is "void";
	follow the turnpass rule;

to say EvolveDinoPack: [increases all stats for dino pack]
	[add a line to make sure the table is set to dinos]
	increase DinoPackEvolution by 1;
	choose row MonsterID from the Table of Random Critters;
	now str entry is 15 + DinoPackEvolution;
	now dex entry is 18 + DinoPackEvolution;
	now sta entry is 15 + DinoPackEvolution;
	now per entry is 18 + DinoPackEvolution;
	now int entry is 15 + DinoPackEvolution;
	now cha entry is 12 + DinoPackEvolution;
	now HP entry is 75 + (DinoPackEvolution * 5);
	now wdam entry is 12 + (DinoPackEvolution / 2);


Dino Pack ends here.
