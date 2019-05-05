Version 2 of Zoe by Kernog begins here.

[Version 1: initial event, by Wahn
Version 2: moved to Kernog. Extension of the quest into two branches, ending in Zoe moving either to the mall inside, or the library]

[Rabbit Tagger workflow:

									----> Player helps Zoe ----> Zoe moves to Library (Saved, Virgin)
Initial event ----|
									----> Player lets things happen ----> Second event ----> Player helps Zoe ----> Zoe moves to Library (Saved)
																																		|----> Player does nothing ----> Zoe moves to parking (Captured)
]

[Traits and stats]
[
Loyalty: state of Zoe. 0 = jaded, 5 = friendly, 7 = expérimentation (sodo), 8 = expérimentation 2 (pegging, dp normale), 9 = expérimentation 3 (RP dom) 10 = expérimentation 4 (dp même trou, RP sub)
XP: indicates if a saved Zoe has somthing to give the player
HP: hidden variable tracking the quest's outcome for dialogue variation (0 = best, 1 = good)

Resolution of Zoe's event Rabbit Tagger:
0 - bad ending, Zoe is Captured
1 - good ending, Zoe is saved


Virgin: Zoe is still a virgin. Unlocks a special scene if Zoe keeps that trait after getting the good outcome of her quest
Used: the captured Zoe is servicing patrons inside the Van, and is currently inaccessible by the player
Propositioned: the player solicited a saved Zoe for sex, who refused.
Decided: Zoe is decided to have sex with the player. Is used in Saved branch dialogue, to avoid Zoe propositioning the player several times

Zoe goes to Makeshift Rec Room if saved

IDEA: Scene with James
]


Section 1 - Person Definitions

Part A - Zoe

Table of GameCharacterIDs (continued)
object	name
Zoe	"Zoe"

Zoe is a woman.
[Physical details as of game start]
ScaleValue of Zoe is 2. [dog sized]
SleepRhythm of Zoe is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Zoe is 0. [X cock]
Cock Length of Zoe is 0. [X Inches]
Cock Width of Zoe is 0.
Testes of Zoe is 0. [X balls]
Cunts of Zoe is 1. [X pussy]
Cunt Length of Zoe is 8. [X Cunt]
Cunt Width of Zoe is 4. [X Cunt]
Breasts of Zoe is 2. [X nipples]
Breast Size of Zoe is 2. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Zoe is false. [can not take oversized members without pain]
Sterile of Zoe is true.
PlayerMet of Zoe is false.
PlayerRomanced of Zoe is false.
PlayerFriended of Zoe is false.
PlayerControlled of Zoe is false.
PlayerFucked of Zoe is false.
OralVirgin of Zoe is true.
Virgin of Zoe is true.
AnalVirgin of Zoe is true.
PenileVirgin of Zoe is true.
SexuallyExperienced of Zoe is false.
MainInfection of Zoe is "".
The Loyalty of Zoe is normally 0.
The XP of Zoe is normally 0.

The description of Zoe is "[ZoeDesc]".
The conversation of Zoe is {"Placeholder"}.
instead of sniffing Zoe:
	say "Zoe's fur retains the smell of the paint she uses during her getaways.";

to say ZoeDesc:
	if Resolution of Rabbit Tagger is 2: [saved]
		project the figure of Zoe_face_icon;
		say "     Zoe looks as lively as ever. The small bunny's short, white fur is dirtied here and there by paint stains of many colors. She wears her usual clothes: a short-sleeved T-shirt and a pair of shorts. [if Loyalty of Zoe < 5]Zoe gives you a polite smile, but you notice that she keeps her guard around you[else]Zoe's smile beams at you, and the young girl seems completely relaxed in your presence[end if].";
	else if Resolution of Rabbit Tagger is 1: [tied up]
		say "     You look at Zoe's hogtied body inside the van. Her fur is ruffled in many places and glued together around her crotch. The ropes force her to stay on her knees, face to the ground and arms to the back. Zoe returns you a broken look[if XP of Zoe is 1], which instantly turns into a mix of resignation and contained anger when she recognizes you from earlier[end if].";
	else:
		say "WARN: This description should not appear.";
	if debugactive is 1:
		say "DEBUG: Zoe's traits: [Traits of Zoe]. XP: [XP of Zoe]. HP: [HP of Zoe][line break]";

instead of conversing the Zoe:
	if Resolution of Rabbit Tagger is 2:
		project the figure of Zoe_face_icon;
		say "     You greet Zoe, who replies with a [if Loyalty of Zoe < 5]curt[else]happy[end if] 'Hey.' ";
		if XP of Zoe is 1:
			say "The rabbit seems [if Loyalty of Zoe < 5]to have something on her mind[else]impatient to tell you her day[end if]. '[one of]Check this out[or]I had an interesting encounter, today[or]You'll never guess what happened to me today[at random]...'";
			let randomnumber be a random number between 1 and 4;
			if randomnumber is 1:
				say "     'I was on the hunt for new painting spots by the park when [one of]I met this weird coyote. He told me his name was Diego. He told me that I looked like the kind of girl that'd be up for some mischief, and I decided to take the bait.[or]I stumbled on Diego again. He seemed to be doing well. He asked me if I was up for some more mischief, and here I went again[stopping].' What follows a passionate story about how Zoe gave the vehicles of the military a 'paint job' using a mix of paint and pheromones. 'Poor guys ran in all directions when half-a-dozen wyverns swooped in and began to, um, [']play['] with the jeeps and the tanks. It was rather interesting thing to watch, in many kinds of ways.'";
				extend game by 6;
			else if randomnumber is 2:
				say "     'While I was doing my things in an alleyway, a mutant crawled out from his hiding place and tried to trade me a couple of water bottles. And by [']trade['], he meant suck his cock. [if HP of Zoe is 1]This asshole reminded me of that guard, but I held myself from obliterating his groin with a kick[else]Because of what almost happened with that security guard, the other day, I knew better than to trust this pervert[end if]. I had a better idea in mind.' I approached from the fucker, and began to kneel. Poor asshole let his guard down, and he did not expect a rabbit's legs to have this much power. I snatched the bottles, and ran ahead while the poor schmuck screamed bloody murder.' Zoe chuckled, and lobbed to you a full bottle. 'Take this one. I would feel bad not giving you a share, since you're the reason I am not desperate enough to debase myself for some supplies.'";
				increase carried of water bottle by 1;
			else if randomnumber is 3:
				say "     [one of]'I had found the perfect spot for a big painting, and I started going to work. Half-an-hour later, two hyenas were coming out of the building on the other side of the street and go in my direction. I thought I was in big trouble and prepared to run, but they made big signs at me and told me not to be afraid. They were looking for someone to help [']decorate['] their place, and they liked what I was doing. So they hired me for the job, and paid me in food. There was more than enough for me, so here's a little [']rent['] of sorts, for letting me sleep here.'[or]Since I had nothing better to do today, I stopped by the hyenas again. They wanted a fresco in their backroom. They are a super polite bunch actually. They cleaned the place before I went to work, and everyone came to greet me during the day. And once again, they gave me way too much food for a small bunny like me. Here, have some.'[stopping] Zoe hands out a beg of chips to you.";
				increase carried of chips by 1;
			else:
				say "     'So, I, huh... I went back to the mall.' You immediately frown at her words, but Zoe is quick to defend herself. 'It's not what you think! I was not there to tag anything. [one of]I just wanted to get some new clothes. I was a little stressed at first; I was afraid that one of the guards remember me. But then one of the rats noticed and brought me to their boss. Ronda was her name. She told me that I was not the first one the guards [if HP of Zoe is 1]abused[else]tried to abuse[end if] and that she was on the case. And she even gave me a free coupon as an apology. And tada...' Zoe takes a T-shirt and a pair of shorts, both new, from her bag and shows them to you proudly.[or] I was there to restock, actually. It almost felt like a normal shopping mall. On a very calm day, and with mutants everywhere.'[stopping] Zoe picks up a can of pepperspray and gives it to you. 'And I did not need this, actually. Since you are almost always out there, I think that you would make a better use of it.'";
				increase carried of pepperspray by 1;
			now XP of Zoe is 0;
			if Loyalty of Zoe < 5:
				increase Loyalty of Zoe by 1;
		else:
			if Loyalty of Zoe < 5:
				say "[one of]'Tell me: did you welcome me here because you feel guilt for what happened, at the parking lot? Actually, don't tell me.'[or]'I guess I can consider myself glad that you do not ask for some [']rent['], right?[or]Are you sure these wolverines do not know this place? I swear that I saw one looming around, the other day.'[at random]";
				increase Loyalty of Zoe by 1;
			else if Loyalty of Zoe is 5 and "Decided" is not listed in the Traits of Zoe:
				if HP of Zoe is 0: [Player had the best outcome]
					say "'Um... [nameOrDefault]?' Zoe asks out of the blue. 'I wanted to thank you. For welcoming me here. For saving me from this asshole.' There is a long beat while the woman thinks about what to say next. 'He almost. I mean... I never did it, you know? I gave it some thought, on the way here and... This is my body. It belongs to me. So I want to do it again, on [italic type]my[roman type] terms. And I have a good feeling with you so I, uh, want to do it with you, so... Feel free to tell me when you want to do it. Okay?' Realizing what she said, Zoe's cheeks flush red with embarrassment. She started to add something else, but decided not too, and she hurriedly turns back and returns to her cot.";
				else: [Player had the good outcome]
					say "'Um... [nameOrDefault]?' Zoe asks, out of the blue. 'I wanted to thank you. For welcoming me here. For giving me the time to... Think about things.' There is a long beat while the woman thinks about what to say next. 'My first time went... Well... You know. But I want to try it again. I think that this is my body; it belongs to me. And I want to try it again, on [italic type]my[roman type] terms. And I, uh, want to do it with you, so... Feel free to tell me when you want to do it. Okay?' Realizing what she said, Zoe's cheeks flush red with embarrassment. She started to add something else, but decided not too, and she hurriedly turns back and returns to her cot.";
				add "Decided" to the Traits of Zoe;
			else:
				say "[one of]'You were right, you know? There are so many empty spaces to paint on, now that everyone's gone. I feel kinda silly, trying to tag the mall despite the security. I acted like a bratty teenager back then, not like an adult.'[or]'You know... If, um, if it's you, I'd be okay to, well, do it.'[or]'Sorry if the room looks a little untidy. I transformed this space into my workshop. Tell everyone that they should tell me if the smell of paint becomes too strong.'[at random]";
	else:
		if XP of Zoe is 0:
			say "     'Please help me,' Zoe says. Her voice is barely a whisper, so that the wolverine does not hear her. 'I beg you. I don't want to be here. Please.'"; [TODO: add RESCUE event in a later update]
		else:
			say "     'No. Leave me alone!' Zoe shouts as she crawls as far as she can inside the van. 'You fucking creep! Get away from me!'";

instead of fucking Zoe:
	if Resolution of Rabbit Tagger is 2: [saved]
		project the figure of Zoe_face_icon;
		if Loyalty of Zoe < 5:
			if "Propositioned" is not listed in the Traits of Zoe:
				say "     Zoe tenses up when you proposition her for sex. 'I... Um...' She looks away, her mouth contorting with anxiety. 'I don't... I don't feel like it. Is it okay, if...' You give Zoe an understanding. She looks visibly relieved, although she still acts wary. 'Thanks. Sorry, I'm just... Not in the mood for that kind of thing.'";
				add "Propositioned" to the Traits of Zoe;
			else:
				say "     Zoe looks annoyed that you make another attempt. 'Sorry, but it's still no.' You insist, and the bunny's annoyance suddenly turns to anger. 'I said no! I don't want someone else to use me. Not again. What the fuck is wrong with you, people?!' Realizing that she began to shout, Zoe's ears flopped down in embarrassment. 'Sorry, I did not want to shout. It's just... It's not personal. I don't want to do it, okay?";
			if Loyalty of Zoe < 11:
				increase Loyalty of Zoe by 1;
		else if Loyalty of Zoe is 5: [got saved]
			if Virgin of Zoe is true: [This branch can only be reached by getting the quest's best outcome]
				say "[ZoeFirstTime]";
			else:
				say "[ZoeSecondTime]";
			NPCSexAftermath Zoe receives "PussyFuck" from player;
			if Loyalty of Zoe < 11:
				increase Loyalty of Zoe by 1;
		else:
			if lastfuck of Zoe - turns < 6:
				say "     'What? Again?' Zoe asks. She seems amused by your request, but denies it with a small shake of her white-furred head. 'Sorry, [if player is female]miss Pussycat[else]mister Stallion[end if], but I'm still tired from before. Can we wait until tomorrow?'";
			else:
				say "[ZoeGoodFuckMenu]";
	else:
		say "[ZoeMolest]";

[First time of Zoe with the player, if she is still a virgin]
to say ZoeFirstTime:
	say "     Zoe remains silent for a moment, and finally says. 'Okay. Follow me, I know a more private place.' You walk with her for at least ten minutes, until she leads you to a small apartment. The walls are covered with paintings. 'This was my home, before everything happened.' Zoe leads you to her bedroom. The bed is gone ('I needed the boards for to nail all the windows shut,' she explains), but the big cot is still there, on the ground. 'Let's take our time. I want to do this well.'";
	say "     You slowly take off each other's clothes. Zoe passes her furry hand on your body. [if player is purehuman]'It's weird that normal people like you are a rarity now. I guess I'm lucky,'[else if player is pure]'[bodyname of player] huh? In high school, a friend showed me some furry porn, you know? It feels weird that it almost became the norm around here,'[else]'Nothing matches with you. It looks funny... I guess I'm lucky to only have muted into a rabbit,'[end if] she says. You make out with Zoe. Time slows down as everything is deadly quiet around you. Your hand slowly reaches down to grope the rabbit's butt, but she surprises you by reaching your crotch at the same time. Not wanting to be outdone, your fingers continue down Zoe's butt-crack and caress her nethers. You start gasping and moaning as your hands discover each other's intimacy.";
	WaitLineBreak;
	if player is not male:
		say "     'Hey, can I try, er, licking it?' Zoe asks sheepishly. You chuckle, and tell her she ought to know what it feels like as well. You have the young girl lie down on the cot, on her side, then take the opposite position. 'Oh God, I'm so nervous,' you hear her whisper. You approach your mouth from her private parts. 'Ah. I-I can feel your breath on... Me,' Zoe says. You answer that you feel her breath too, and tell her to do as what you do. Then, you surround her little pleasure button with your lips and suck. You hear Zoe gasp loudly in surprise, followed by her mouth imitating yours. You both play with your partner's clit, sucking and licking it, the room becoming lively with your respective groans. 'Mmm. Aah. Mmmf. Oh God, I'm already w-wet. Mmm...";
		say "     You take a moment to pause, and warn the bunny that you're going to push a finger in, and to tell you if she wants you to stop. 'O-Okay. I-Er... I'm used to, you know, use two, okay?', she replies. You run your index along Zoe's labia. She seems rather sensitive, trembling each time you press your finger a little. After a little teasing, you plunge your digit inside her, and after some stretching, a second one. 'Ahn!' Zoe squeals, before getting back on your clit. You combine moving your fingers and using your mouth, for dramatic effect.";
		WaitLineBreak;
		say "     You are at it for barely more than a minute when Zoe starts to pant loudly, and tenses up. 'Oh fuck, this is too m-much. I'm gonna... Ahh... Nggg!' The bunny girl's tight cunt squeezes on your fingers as she goes into the quickest and the most intense orgasm in her life yet. You keep moving your fingers inside her, and make sure that she rides her climax as long as possible. When you finally pull them off, they are drenched in fem-cum. 'Ahh... Oh...' Zoe pants. 'S-Sorry. I didn't mean to, to come so quickly,' she starts saying. You reassure her and say that having fun is the most important and that she'll get used to it pretty quickly. 'B-But what about you?' she asks. You smile, and say that if she is still up for it, she could finish what she started.";
		say "     Wanting to encourage her, you sit on the cot and spread your legs, inviting her to approach. Zoe gives you a timid smile, then crawl towards you. She puts her mouth against your pussy and resumes licking. Under your directions, and your encouragements, she does a great job, and gets bolder and bolder. Eventually, she finds herself running her small tongue all the way your [cunt size desc of player] cunt, ending it with a series of strong suckings on your clit. This eventually brings you over the edge. Your body folds around the bunny's head as you go through your own, noisy climax.";
	else:
		say "     'Okay. I... I want to try a blowjob,' Zoe asks as she gets to her knees. You smile and stop her, instructing her to lie on her side, telling her that you want to make her feel good too. After she lies down, you do the same, in the opposite direction. Under your instructions, Zoe starts by kissing and licking your [if cocks of player > 2]main cock while one of her hands holds one of your other shafts[else if cocks of player > 1]main cock while one of her hands holds your other shaft[else][cockname of player] cock[end if]. Her first attempts are clumsy, but she quickly becomes bolder, and before you know it, she is wrapping her bunny lips around the head of your cock. After your warn her to be careful with the teeth[if Zoe is PlayerCumLoadInflates], and to not take too much of your [cock size desc of player] member[end if], you focus on her own intimate parts. Your fingers run along her virgin vagina while you shower her small pleasure button with sucks and kisses, using the resonances of her moans on your cock as an indicator.";
		say "     Despite feeling her teeth touching your glans a couple of times, Zoe does a good job, and you apply yourself to do yours as well. You slowly insert one finger inside her pussy. Her muscles squeeze down on your finger joints, so you let the young girl relax before putting the rest of your finger in. You go at it progressively, a second finger joining the first one, then as many others as needed for her to take your [cock size desc of player] member. 'Will it be alright?' Zoe asks. You reassure her that the nanites will help and make it good as long as she goes at her pace, using your fingers now slipping effortlessly inside her as proof.";
		WaitLineBreak;
		say "     'O-Okay, I'm ready. I think...' Zoe says. You make her lie on her back, and lean over her. You cover her beautiful white fur with kisses as you slowly part her legs, and place your cock on top of her mound. You tease her a couple of times, before putting it at the entrance of her vagina, and look at her. Zoe nods, and you begin to slowly push your [cockname of player] cock inside of her. With a little effort, its head passes in, and the bunny gasp loudly. 'Ah. F-Fuck.' As with your fingers, you wait until Zoe's pussy relents on her vice-tight squeezing of your member before pushing further. You progress slowly, doing several stops, until you feel something warm on your cock. 'Eek. I-I think... Ah...' You kiss her neck while the blood of her hymen quickly stops running, thanks to the nanites, and ask her if she's good to go. 'Y-Yes. It stung a little but... But it's gone.'";
		say "     You eventually bottom out, and once you're done, you lie down on Zoe's warm body and hug her small body while you start going through the motions of sex. Zoe holds you tight, her paws leaving marks on your [bodyname of player] back as her pleasure slowly rises. [if player is knotted]You take great care not to push in to harshly and keep your knot out of her pussy, but you can feel it bump against her lower lips each time with a wet [italic type]slap[roman type][else if player is barbed]Zoe winces a little when your barbs eventually brush repeatedly against her inner walls, but her discomfort quickly fades and she moans and pants louder and faster than before[else if player is flared]You groan, the flared shape of your cock ensuring that every part of Zoe's vagina is stretched against your cock. Eventually, the bumps against her cervix soften her intimacy enough that your medial ring slips into her, heightening your pleasure[else]You slowly pick up the pace, helped by the fact that Zoe squeezes down on your member as if her pussy was made for it[end if].";
		WaitLineBreak;
		say "     After several minutes of intense fucking, Zoe's moans get louder and longer, and her eyes fixate on something far away, beyond the ceiling. 'Ah, fuck. God. Gah. Aaah! Aaah! Nnnn!' Zoe goes through what may not be the first orgasm of her life, but assuredly the first one that someone else brought to her. Her entire being clamps down on you, refuses to let you go. You are not going anywhere, though, reaching your own climax roughly at the same time. 'Mmm... I-I feel something... Warm...' the bunny groans as your [cum load size of player] load fills her womb. After the both of you recover from your pleasure high, you resolve yourself to pull out from Zoe after a final kiss and roll to the side. She immediately rolls over you, and you spend a good hour cuddling together. Then, after cleaning and clothing yourself, you return to the library. Zoe keeps a wide grin on her face during the whole walk.";
		WaitLineBreak;
		say "     Zoe and you take some time to rest and cuddle, before getting your clothes back on. Before leaving, the bunny kiss you on the cheek, which quickly turns into a longer French kiss. 'Thank you. I was anxious at first, but it was awesome.' You make your way back to the library, a feeling of relaxation and giddiness flowing in you.";
	LibidoLoss 50;
	SanBoost 10;

[First time of Zoe with the player, if the wolverine molested her before - Unused at the moment. I keep it in case I extend the other story branch]
to say ZoeSecondTime:
	say "     Zoe remains silent for a moment, and finally says. 'Okay. Follow me, I know a more private place.' You walk with her for at least ten minutes, until she leads you to a small apartment. The walls are covered with paintings. 'This was my home, before everything happened.' Zoe leads you to her bedroom. The bed is gone ('I needed the boards for to nail all the windows shut,' she explains), but the big cot is still there, on the ground. 'Let's take our time. I want to do this well.'";
	say "     Zoe starts to hurriedly take her clothes off, but you stop her. 'What? You don't want to do it anymore?' You explain to her that the both of you need to take your time, that good sex is not immediate gratification, even in these times. You take Zoe in your arms. She starts to recoil, but you do not try to force her into your hug, and she eventually relaxes. Your lips meet her, and you spend a long time with her in a deep kiss. Undressing comes naturally as you fondle and explore each other's body. Eventually, the turn of your bottom clothes comes. [if player is purehuman]'It's weird that normal people like you are a rarity now. I guess I'm lucky,'[else if player is pure]'[bodyname of player] huh? In high school, a friend showed me some furry porn, you know? It feels weird that it almost became the norm around here,'[else]'Nothing matches with you. It looks funny... I guess I'm lucky to only have muted into a rabbit,'[end if] she says. You make out with Zoe. Time slows down as everything is deadly quiet around you. Your hand slowly reaches down to grope the rabbit's butt, but she surprises you by reaching your crotch at the same time. Not wanting to be outdone, your fingers continue down Zoe's butt-crack and caress her nethers. You start gasping and moaning as your hands discover each other's intimacy.";
	WaitLineBreak;
	if player is not male:
		say "     'Hey, can I try, er, licking it?' Zoe asks sheepishly. You chuckle, and tell her she ought to know what it feels like as well. You have the young girl lie down on the cot, on her side, then take the opposite position. 'Oh God, I'm so nervous,' you hear her whisper. You approach your mouth from her private parts. 'Ah. I-I can feel your breath on... Me,' Zoe says. You answer that you feel her breath too, and tell her to do as what you do. Then, you surround her little pleasure button with your lips and suck. You hear Zoe gasp loudly in surprise, followed by her mouth imitating yours. You both play with your partner's clit, sucking and licking it, the room becoming lively with your respective groans. 'Mmm. Aah. Mmmf. Oh God, I'm already w-wet. Mmm...";
		say "     You take a moment to pause, and warn the bunny that you're going to push a finger in, and to tell you if she wants you to stop. 'O-Okay. I-Er... I'm used to, you know, use two, okay?', she replies. You run your index along Zoe's labia. She seems rather sensitive, trembling each time you press your finger a little. After a little teasing, you plunge your digit inside her, and after some stretching, a second one. 'Ahn!' Zoe squeals, before getting back on your clit. You combine moving your fingers and using your mouth, for dramatic effect.";
		WaitLineBreak;
		say "     You are at it for barely more than a minute when Zoe starts to pant loudly, and tenses up. 'Oh fuck, this is too m-much. I'm gonna... Ahh... Nggg!' The bunny girl's tight cunt squeezes on your fingers as she goes into the quickest and the most intense orgasm in her life yet. You keep moving your fingers inside her, and make sure that she rides her climax as long as possible. When you finally pull them off, they are drenched in fem-cum. 'Ahh... Oh...' Zoe pants. 'S-Sorry. I didn't mean to, to come so quickly,' she starts saying. You reassure her and say that having fun is the most important and that she'll get used to it pretty quickly. 'B-But what about you?' she asks. You smile, and say that if she is still up for it, she could finish what she started.";
		say "     Wanting to encourage her, you sit on the cot and spread your legs, inviting her to approach. Zoe gives you a timid smile, then crawl towards you. She puts her mouth against your pussy and resumes licking. Under your directions, and your encouragements, she does a great job, and gets bolder and bolder. Eventually, she finds herself running her small tongue all the way your [cunt size desc of player] cunt, ending it with a series of strong suckings on your clit. This eventually brings you over the edge. Your body folds around the bunny's head as you go through your own, noisy climax.";
	else:
		say "     'Okay. I... I want to try a blowjob,' Zoe asks as she gets to her knees. You smile and stop her, instructing her to lie on her side, telling her that you want to make her feel good too. After she lies down, you do the same, in the opposite direction. Under your instructions, Zoe starts by kissing and licking your [if cocks of player > 2]main cock while one of her hands holds one of your other shafts[else if cocks of player > 1]main cock while one of her hands holds your other shaft[else][cockname of player] cock[end if]. Her first attempts are clumsy, but she quickly becomes bolder, and before you know it, she is wrapping her bunny lips around the head of your cock. After your warn her to be careful with the teeth[if Zoe is PlayerCumLoadInflates], and to not take too much of your [cock size desc of player] member[end if], you focus on her own intimate parts. Your fingers run along her virgin vagina while you shower her small pleasure button with sucks and kisses, using the resonances of her moans on your cock as an indicator.";
		say "     Despite feeling her teeth touching your glans a couple of times, Zoe does a good job, and you apply yourself to do yours as well. You slowly insert one finger inside her pussy. Her muscles squeeze down on your finger joints, so you let the young girl relax before putting the rest of your finger in. You go at it progressively, a second finger joining the first one, then as many others as needed for her to take your [cock size desc of player] member. 'Will it be alright?' Zoe asks. You reassure her that the nanites will help and make it good as long as she goes at her pace, using your fingers now slipping effortlessly inside her as proof.";
		WaitLineBreak;
		say "     'O-Okay, I'm ready. I think...' Zoe says. You make her lie on her back, and lean over her. You cover her beautiful white fur with kisses as you slowly part her legs, and place your cock on top of her mound. You tease her a couple of times, before putting it at the entrance of her vagina, and look at her. Zoe nods, and you begin to slowly push your [cockname of player] cock inside of her. With a little effort, its head passes in, and the bunny gasp loudly. 'Ah. F-Fuck.' As with your fingers, you wait until Zoe's pussy relents on her vice-tight squeezing of your member before pushing further. You progress slowly, doing several stops, until you feel something warm on your cock. 'Eek. I-I think... Ah...' You kiss her neck while the blood of her hymen quickly stops running, thanks to the nanites, and ask her if she's good to go. 'Y-Yes. It stung a little but... But it's gone.'";
		say "     You eventually bottom out, and once you're done, you lie down on Zoe's warm body and hug her small body while you start going through the motions of sex. Zoe holds you tight, her paws leaving marks on your [bodyname of player] back as her pleasure slowly rises. [if player is knotted]You take great care not to push in to harshly and keep your knot out of her pussy, but you can feel it bump against her lower lips each time with a wet [italic type]slap[roman type][else if player is barbed]Zoe winces a little when your barbs eventually brush repeatedly against her inner walls, but her discomfort quickly fades and she moans and pants louder and faster than before[else if player is flared]You groan, the flared shape of your cock ensuring that every part of Zoe's vagina is stretched against your cock. Eventually, the bumps against her cervix soften her intimacy enough that your medial ring slips into her, heightening your pleasure[else]You slowly pick up the pace, helped by the fact that Zoe squeezes down on your member as if her pussy was made for it[end if].";
		WaitLineBreak;
		say "     After several minutes of intense fucking, Zoe's moans get louder and longer, and her eyes fixate on something far away, beyond the ceiling. 'Ah, fuck. God. Gah. Aaah! Aaah! Nnnn!' Zoe goes through what may not be the first orgasm of her life, but assuredly the first one that someone else brought to her. Her entire being clamps down on you, refuses to let you go. You are not going anywhere, though, reaching your own climax roughly at the same time. 'Mmm... I-I feel something... Warm...' the bunny groans as your [cum load size of player] load fills her womb. After the both of you recover from your pleasure high, you resolve yourself to pull out from Zoe after a final kiss and roll to the side. She immediately rolls over you, and you spend a good hour cuddling together. Then, after cleaning and clothing yourself, you return to the library. Zoe keeps a wide grin on her face during the whole walk.";
		WaitLineBreak;
		say "     Zoe and you take some time to rest and cuddle, before getting your clothes back on. Before leaving, the bunny kiss you on the cheek, which quickly turns into a longer French kiss. 'Thank you. I was anxious at first, but it was awesome.' You make your way back to the library, a feeling of relaxation and giddiness flowing in you.";
	LibidoLoss 50;
	SanBoost 10;

[Introductory text, dependent of Loyalty score, then choices
< 7: classic sex scene, where Zoe takes the lead
7: adding sodomy to the menu (plan first time and second time versions)
8: unlocks pegging and normal DP
9: unlocks dom RP
10: unlocks special DP and sub RP]

to say ZoeGoodFuckMenu:
	project the figure of Zoe_face_icon;
	say "     'Good timing. I was feeling... Lonely,' the bunny replies your invitation. She walks by you, brushing your body with her furry legs. 'Come on, we go to the usual place.' On your way to Zoe's old hideout, you discuss about what you want to do today.";
	if Loyalty of Zoe is:
		-- 7: say "On the way, Zoe suddenly cuts your chatter. 'So, I was thinking... I want to try some butt stuff. I heard that if it's done well, it feels just as good as the old-fashioned way, and I'm curious. [if anallevel is 1]Of course, if anal's not your thing, I'm not forcing you or anything.[else]Do you want to try it out?[end if]'";
		-- 8: say "On the way, Zoe suddenly cuts your chatter. 'I was thinking, since last time: How does that feel, as a man? S-Sorry, I know it's a weird question. It's just that, hum, I found that strap-on thing during one of my getaways, and I was curious. Do you want to try it out?";
		-- 9: say "On the way, Zoe suddenly cuts your chatter. 'Say. I wanted to try something new today. You know, about what happened with this wolverine. It keeps working my brain. I'm thinking that, if we tried some kind of dom/sub scenario, I would be able to... You know, work it out.' [if player is submissive]You look like the type that would enjoy themselves in this kind of thing[else]I mean, once you feel ready to do some [bold type]submissive[roman type] play, that is[end if].";
		-- 10: say "On the way, Zoe suddenly cuts your chatter. 'You know, what we did last time? It helped. A lot. And I thought... Since I trust you... I want to roleplay that kind of thing again, but I want to be in control, you know what I mean? Do you want to try it out?' [if player is dominant]I don't know why, but I feel both safe and excited talking you about it[else]You don't streak me as a [bold type]dominant[roman type] though, so nevermind[end if].";
		-- 11: say "On the way, Zoe suddenly cuts your chatter. 'I saw a mutant the other day. He had, like, three cocks hanging around. [if cocks of player > 1]And you're the same, too. [end if]I think it would be kind of hot if, you know, you used them all at the same time? Do you want to try it out?'";
	say "[bold type]What do you want to do with Zoe?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Vanilla";
	now sortorder entry is 1;
	now description entry is "Do some classic shenanigans with Zoe, letting her choose what she wants to do with you";
	[]
	if player is male and Loyalty of Zoe >= 7 and anallevel > 1:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 2;
		now description entry is "Have fun with Zoe's butt";
	else if Loyalty of Zoe >= 7:
		choose a blank row in table of fucking options;
		now title entry is "*Anal - Locked*";
		now sortorder entry is 2;
		now description entry is "You do not fill the conditions: having a penis, and allowing anal content";
	[]
	if Loyalty of Zoe >= 8 and (player is female or (player is male and anallevel > 1)):
		choose a blank row in table of fucking options;
		now title entry is "Pegging";
		now sortorder entry is 3;
		now description entry is "Tell Zoe you want her to use her strap-on";
	else if Loyalty of Zoe >= 8:
		choose a blank row in table of fucking options;
		now title entry is "*Pegging - Locked*";
		now sortorder entry is 3;
		now description entry is "You do not fill the conditions: having a vagina, and allowing anal content";
	[]
	if Loyalty of Zoe >= 9 and player is submissive:
		choose a blank row in table of fucking options;
		now title entry is "Roleplay (sub)";
		now sortorder entry is 4;
		now description entry is "Perform a roleplay scenario with Zoe, with you as the sub";
	else if Loyalty of Zoe >= 9:
		choose a blank row in table of fucking options;
		now title entry is "*Roleplay (sub) - Locked*";
		now sortorder entry is 4;
		now description entry is "You do not fill the conditions: having the [bold type]submissive[roman type] trait";
	[]
	if Loyalty of Zoe >= 10 and player is dominant:
		choose a blank row in table of fucking options;
		now title entry is "Roleplay (dom)";
		now sortorder entry is 5;
		now description entry is "Perform a roleplay scenario with Zoe, with you as the dom";
	else if Loyalty of Zoe >= 10:
		choose a blank row in table of fucking options;
		now title entry is "*Roleplay (dom) - Locked*";
		now sortorder entry is 5;
		now description entry is "You do not fill the conditions: having the [bold type]submissive[roman type] trait";
	[]
	if Loyalty of Zoe >= 11 and cocks of player > 2 and player is kinky:
		choose a blank row in table of fucking options;
		now title entry is "Multi-cock fun";
		now sortorder entry is 6;
		now description entry is "Indulge into Zoe's latest fantasy";
	else if Loyalty of Zoe >= 11:
		choose a blank row in table of fucking options;
		now title entry is "*Multi-cock fun - Locked*";
		now sortorder entry is 6;
		now description entry is "You do not fill the conditions: have more than two cocks, and the [bold type]kinky[roman type] trait";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Vanilla":
					say "[ZoeSexZoeChoice]";
					NPCSexAftermath Zoe receives "PussyFuck" from player;
					if Loyalty of Zoe < 11:
						increase Loyalty of Zoe by 1;
				else if nam is "Anal":
					say "[ZoeSexAnal]";
					NPCSexAftermath Zoe receives "AssFuck" from player;
					if Loyalty of Zoe < 11:
						increase Loyalty of Zoe by 1;
				else if nam is "Pegging":
					say "[ZoeSexPeg]";
					if Loyalty of Zoe < 11:
						increase Loyalty of Zoe by 1;
				else if nam is "Roleplay (sub)":
					say "[ZoeSexRPSub]";
					NPCSexAftermath Zoe receives "PussyFuck" from player;
					if Loyalty of Zoe < 11:
						increase Loyalty of Zoe by 1;
				else if nam is "Roleplay (dom)":
					say "[ZoeSexRPDom]";
					NPCSexAftermath Zoe receives "PussyFuck" from player;
					if Loyalty of Zoe < 11:
						increase Loyalty of Zoe by 1;
				else if nam is "Multi-cock fun":
					say "[ZoeSexDP]";
					NPCSexAftermath Zoe receives "PussyFuck" from player;
					NPCSexAftermath Zoe receives "AssFuck" from player;
					if Loyalty of Zoe < 11:
						increase Loyalty of Zoe by 1;
				else if nam is "*Anal - Locked*" or nam is "*Pegging - Locked*" or nam is "*Roleplay (sub) - Locked*" or nam is "*Roleplay (dom) - Locked*" or nam is "*Multi-cock fun - Locked*":
					say "     Doesn't look like that's on the menu for you right now. Suggesting it leads to a bit of an awkward moment, followed by Zoe turning away from you and gaining some distance.";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You do not feel in the mood for sex after all. 'Fine by me,' Zoe reassures you. 'Let's just walk around the block. It's nice to just chat once in a while.' You walk around the block, talking about general subjects like the state of the Library, or what each of you discovered. Before you know it, you are back at the library.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ZoeSexZoeChoice:
	if player is not male:
		say "     'Let's have a [']girl's night['], shall we?' Zoe says with a chuckle. You hold hands the rest of the way, and you finally arrive at Zoe's old apartment. The door is not even close that you throw yourselves into each other's arms and kiss passionately. At some point, you must have stripped from your clothes. You only realize it when Zoe's pawed hands grope your [body of player] breasts and knead them between her cushioned fingers. You do the same, adding tactile pleasure to your French kiss. Your hands go lower, and lower, until you find each other's butt, then each other's crotch. You pull Zoe into a tight hug while the bunny reaches between your legs and rubs your intimate parts.";
		say "     An hour passes, during which the make-out and the hugs turned to a thorough exploration of your partner's boy, lying down on the cot. Your fingers explores the young bunny's pussy while she explores yours. You let your instincts dictate what to do. Tongues alternate back-and-forth with fingers while your positions become more and more acrobatic. You keep each other on the edge until one of you slips and go over. You go first when Zoe has the idea of using her big, lagomorph foot to massage your [cunt size desc of player] pussy. Zoe follows quickly after when you take your revenge by inserting a fourth finger into her cleft.";
	else:
		let randomnumber be a random number between 1 and 3;
		if randomnumber is 1:
			say "     'I want to see you when we're doing it, so let's do some missionary?' Zoe asks. It seems that the more she spends some time with you, the less embarrassed she sounds about it. You hold hands the rest of the way, and you finally arrive at Zoe's old apartment. The door is not even close that you throw yourselves into each other's arms and kiss passionately. At some point, you must have stripped from your clothes. You only realize it when Zoe's pawed fingers pass on your bare chest. You do the same. Your hands grope the rabbit's small breasts and knead them slowly, adding tactile pleasure to your French kiss. Your hands go lower, and lower, until you find each other's butt, then each other's crotch. You pull Zoe into a tight hug while the bunny reaches between your legs and rubs your touching intimate parts.";
			say "     The preliminaries seem to pass in a flash as the two of you find yourselves on the cot, with you lying over Zoe as she faces up and gazes at your face. You take your time sliding your [cock size desc of player] cock into her. Once you reach the furthest deeps, Zoe takes you by surprise and pulls you close for a kiss. Your tongues twist around each other's while your hips pump up and down and hers rise up to meet them. You do your best to last as long as you can, but trying to restrain is torture when such a tight cunny squeezes on your cock. You achieve a thunderous orgasm, which Zoe follows by a climax of her own. Her pussy spasms around you while you fill her womb with your [cum load size of player] load. You stay like this, one slumped over the other, for what feels like hours. You eventually pull out [if player is knotted]when your knot deflates[else]when your penis softens[end if], and roll to the side along the young bunny.";
		else if randomnumber is 2:
			say "     'I want to try it doggy-style. I feel like going wild, tonight,' Zoe says. It seems that the more she spends some time with you, the less embarrassed she sounds about it. You hold hands the rest of the way, and you finally arrive at Zoe's old apartment. The door is not even close that you throw yourselves into each other's arms and kiss passionately. At some point, you must have stripped from your clothes. You only realize it when Zoe's pawed fingers pass on your bare chest. You do the same. Your hands grope the rabbit's small breasts and knead them slowly, adding tactile pleasure to your French kiss. Your hands go lower, and lower, until you find each other's butt, then each other's crotch. You pull Zoe into a tight hug while the bunny reaches between your legs and rubs your touching intimate parts.";
			say "     The preliminaries seem to pass in a flash as the two of you find yourselves on the cot, with you leaning over Zoe as she kneels in front of you and presents her small white butt to you. Her rabbit tail wags left and right in excitement and invitation. You take your time playing with her hips and her butt, before sliding your [cock size desc of player] cock into her. Zoe rewards you with a long moan and shudders that make her snow-white fur rise. Once you pushed as far as you could, you moved your hips back, and started to thrust energetically in and out. Your hands try to find purchase on your partner below. One of your hands grabs the bunny's ears. 'Ah! Yeah! Hold me like that! Fuck me!' Zoe gasps. You oblige her eagerly, and the rare remaining noises of the city are easily drowned under your combined moans, and the slaps of your two bodies colliding. Eventually. You achieve a thunderous orgasm, which Zoe follows by a climax of her own. Her pussy spasms around you while you fill her womb with your [cum load size of player] load. You stay like this, one slumped over the other, for what feels like hours. You eventually pull out [if player is knotted]when your knot deflates[else]when your penis softens[end if], and roll to the side along the young bunny.";
		else:
			say "     'I want to be on top, tonight. I mean, on top of you, not that kind of [italic type]top[roman type]. Yet,' Zoe says. It seems that the more she spends some time with you, the less embarrassed she sounds about it. You hold hands the rest of the way, and you finally arrive at Zoe's old apartment. The door is not even close that you throw yourselves into each other's arms and kiss passionately. At some point, you must have stripped from your clothes. You only realize it when Zoe's pawed fingers pass on your bare chest. You do the same. Your hands grope the rabbit's small breasts and knead them slowly, adding tactile pleasure to your French kiss. Your hands go lower, and lower, until you find each other's butt, then each other's crotch. You pull Zoe into a tight hug while the bunny reaches between your legs and rubs your touching intimate parts.";
			say "     The preliminaries seem to pass in a flash as the two of you find yourselves on the cot, with you lying on your back and Zoe sitting on your belly, her butt grinding at your [cockname of player] penis. She takes her time teasing you, and lining the tip of your cock with her pussy, before she lowers herself slowly on it. Once your cock is bottoming out in this exquisitely tight hole, Zoe begins to rock her hips, and move up and down. She starts out slow, but quickly picks up the pace. Your hands try to find purchase on your partner below. One of your hands find Zoe's thigh, the other one of her hands. You hold her tight as you raise your hips to meet her pelvis. Your two bodies collide with loud slaps which eventually cover the rare remaining noises of the city. Eventually. You achieve a thunderous orgasm, which Zoe follows by a climax of her own. Her pussy spasms around you while you fill her womb with your [cum load size of player] load. You stay like this, one slumped over the other, for what feels like hours. Zoe eventually pulls your penis out [if player is knotted]when its knot has deflated[else]when it has softened[end if], and roll to the side along the young bunny.";
	WaitLineBreak;
	say "     You look at each other while you catch your breath. It is Zoe's time to search your embrace and hug you with her lean, white furred arms. 'We should do this more often,' she says. You find no argument to oppose her. You make the trip back to the library, smiling and holding each other hand, this time all the way. Zoe parts with you on the doorstep of the Library. 'You know where to find me if you want to chat. I'll be resting until morning.'";

to say ZoeSexAnal:
		say "     'You agree. Wow. Now that I'm in, I feel a little anxious,' the bunny reacts. You eventually reach her apartment and barge inside. The door is not even closed that you are already in each other's arms, fondling and kissing each other. You take your time peeling off your clothes, then Zoe's. Then, the bunny kneels in front of you and Zoe starts playing with your [cock of player] cock[smn]. She licks [itthemm] and sucks [itthemm], constantly keeping you on the edge. Suddenly, you feel one of her fingers slip into your ass and press on your prostate. Your body jerks, and sends a little spurt of pre on her tongue as a reward. 'It's only fair, right?' You react to this by turning her around and getting on your knees behind her, saying that [italic type]she[roman type] is the one needing preparation.";
		say "     You lie down and prepare Zoe's ass. She squeezes on your fingers as you insert them one by one, until you can wiggle three of them in and out. Once this is down, you lube your [cock size desc of player] cock, and readies it at the entrance of her butt. [if Zoe is CuntFitsForPlayerCock]This will be a tight feet, but thanks to the nanites, the bunny should get used to it[else]Your cock is at the right size for her, but you still warn her to relax[end if]. You push in, slowly forcing the bunny girl's anal ring open, until the head of your dick pops in. [if AnalVirgin of Zoe is true]'F-Fuck!' Zoe groans while you deflower her ass[else]'Oh y-yeah!' Zoe squeals as you spread her ass again[end if]. You pause until Zoe gets used to your maleness, then push a couple of inches further at the time. The nanites make wonders, and keep her at the right amount of tightness and make the penetration pleasurable, [if Zoe is CuntFitsForPlayerCock]despite the visible bulge of your cock in her tummy, which she fondles with quasi-incredulity[else]quelling down both your fears and her anxieties[end if]. You start to move back and forth as Zoe squeezes on you each time you move. You do not even have to go fast or rough to enjoy the young girl's vice-tight [if AnalVirgin of Zoe is true]virginal [end if]ass.";
		WaitLineBreak;
		say "     Zoe's moans of pleasure pick up a dozen decibels when you decide to reach down and finger her pussy, which you find dripping wet. 'Oh fuck! Oh fuck, [nameOrDefault]! I'm... Nnnnngaaah!' She clamps down on your cock and shudders, milking your cock for all its worth. You do not last long and fill her ass with your [cum load size of player] load. [if Zoe is PlayerCumLoadInflates]Zoe's stomach inflates little by little with your seemingly unending load, until her formerly thin waistline is looking bloated. 'Oh... Mmf... I think I can taste it in my mouth,' she says as she swallows back your excess of cum[else]Zoe rubs her tummy. 'I can feel your cum inside of me... So warm[end if].'";
		say "     You pull and sit on your ass while Zoe rolls on her back, her ass still [if Zoe is CuntFitsForPlayerCock]gaping[else]quivering[end if] from the insertion. 'That was even better than [if AnalVirgin of Zoe is true]I imagined[else]last time[end if],' she says after getting her breath back. 'Thank you. You know... For being there and doing crazy things with me.' You reply mischievously that [if player is kinky]you did[else]you are sure that there are[end if] even crazier things, out there. 'That's why I'm thanking you. I feel safe doing it with you.' The trip back to the library is uneventful, and Zoe leaves you with a last passionate kiss with you.";

to say ZoeSexPeg:
	if "Peg-Experienced" is not listed in the Traits of Zoe:
		add "Peg-Experienced" to the Traits of Zoe;
		say "     'You want to try this out? That's nice of you,' Zoe replies, a smile beaming on her face. Once at her place, you take your time stripping and exploring each other's body. 'Time to go get the big boy. Wait a sec,' the bunny says. She opens a cupboard hiding a couple of sex toys, and comes back with the strap-on. It is a [']big boy['], indeed. It would have classified as [']well-endowed['] a couple of weeks ago when human was still the norm. The strap-on is in the shape of a semi-flexible and slightly curved human cock, dark purple in color. On the other side of the belt, a hook-shaped knob. 'I'm supposed to stuff this part in me, and it presses on my clit, or so I figure,' Zoe says as she lets you appreciate the object under different angles. 'It's not too large, is it?' she then asks. You chuckle, and answer her that you [if cock length of player > 16]are even bigger[else]had worse[end if]. After easing her hole with a well-placed finger, Zoe equips the strap-on and pushes the knobbed end in her pussy. She gives the strap-on a tentative pat, and reacts with surprise when the vibrations travel back to the base of the sex-toy. 'Oof. Whoa, that's not what I expected. Heh heh. So, should I put the lube on?'";
		say "     You tell the bunny girl that you have a better idea. You have her sit on a nearby chair, and get on your knees. 'Oh? You think it's going to work?' You tell her to close her eyes and let her imagination do the work for her. You open your mouth and start working on her fake cock as if it was a real one. Zoe's reactions are a little ambiguous at first, but the more your blowjob becomes energetic, the more gasps and chuckles of pleasure you get. The bunny tries to speed the process by slipping one of her fingers under her strap-on, but you push her hand away, advising her not to cheat. You follow this statement by taking the flexible purple cock in your mouth, from tip to base. 'Ooh... Mmm...' Zoe sighs. You repeat the process while Zoe puts one hand on the chair's arm, and the other on your head. 'Oh yeah... Keep working that cock. All the way down.' After a moment, you notice that Zoe has opened her eyes and looks at you. 'I'm already wet. Just from that. I can't wait any longer, I want to take you!'";
	else:
		say "     'Fond of getting the roles reversed, aren't you?' Zoe asks, a smile beaming on her face. Once at her place, you take your time stripping and exploring each other's body. 'Time to go get the big boy. Wait a sec,' the bunny says. She pulls out the strap-on from its hiding place. She equips the strap-on with visible excitation and pushes the knobbed end in her pussy. She tests that everything's holding with a couple of pats, and bites her lower lips when the vibrations travel back to the base of the fake cock. 'It'll never get old. Now, let's get to work. This cock won't lube by itself.'";
		say "     Zoe sits on the same chair than last time, and you kneel in front of her. 'Do your magic, I'll be in my happy place,' she says as she closes her eyes. You open your mouth and start working on her fake cock as if it was a real one. Zoe sighs as she plays her fantasy in her head, but you notice that she regularly open her looks to watch you, and that she gets as much pleasure from it. Her hand is assertively put on your head, and guides your rhythm. 'That's it. Make it wet. Make me wet.' After a moment, you notice that Zoe has opened her eyes and looks at you. 'That's enough teasing already. On your knees, [if player is defaultnamed]my little toy[else][name of player][end if]!'";
	WaitLineBreak;
	if player is not female or anallevel is 3:
		say "     [if anallevel is 3 and player is female]As you turn around and present your bare butt to the bunny, you ask her to use your ass. 'In the ass? Well, sure, if that's your kink.' [else]You turn around and present your bare butt to the bunny 'Only one way to go, but here,' she says as she pats your [skin of player] butt. [end if]Zoe starts pushing in. You let out a long moan as the rubbery strap-on slowly advances into your ass. 'You okay, [if player is defaultnamed]sugar[else][name of player][end if]?' You nod and take her wrist, encouraging her to go further. Once she bottoms out, the bunny girl seems a little lost. She begins giving little pumps, only to be surprised by the resistance she encounters, which reverberates on her own end. 'Oh, damn.' She picks up in rhythm and intensity little by little while you [if player is male]jerk off[else if player is female]finger yourself[end if]. You eventually cum and splatter the carpet with your sexual fluids. Looking back and seeing Zoe's elated face, you can tell that she reached her own climax not long after you.";
		NPCSexAftermath player receives "DildoAssFuck" from zoe;
	else:
		say "     Zoe starts pushing in. You let out a long moan as the rubbery strap-on slowly advances into your [cunt size desc of player] pussy. 'You okay, [if player is defaultnamed]sugar[else][name of player][end if]?' You nod and take her wrist, encouraging her to go further. Once she bottoms out, the bunny girl seems a little lost. She begins giving little pumps, only to be surprised by the resistance she encounters, which reverberates on her own end. 'Oh, damn.' She picks up in rhythm and intensity little by little while you [if player is male]jerk off[else if player is female]play with your clit[end if]. You eventually cum and splatter the carpet with your sexual fluids. Looking back and seeing Zoe's elated face, you can tell that she reached her own climax not long after you.";
		NPCSexAftermath player receives "DildoPussyFuck" from zoe;
	say "     Zoe grins while she pulls out of you. 'This was fun. We should do this more often.' You help Zoe clean her toy and the mess you made, then head back with her Zoe to the library.";

to say ZoeSexRPSub:
	say "     'Really?' Zoe says in reaction. 'O-okay, then. I have some, um, material at my place. So we can have some fun right away.' Zoe and you spend the last leg of the journey deciding the specifics of what will happen at the apartment. You make the discussion a little awkward with your enthusiasm and your knowledge about this kind of things, but this does not taint your mutual excitement.";
	say "     You enter in the apartment alone, and stand in the middle of the room. Nothing happens for a couple of minutes, when someone suddenly grabs your arm and yanks it behind your back. 'What do we have here?' Zoe asks. 'Who allowed you to come here and steal my stuff?' The setup makes you feel aroused already, and you make your best plea to Zoe. Your other hand joins the first, and you feel rope tie your wrists together. Zoe pushes you on the ground. She pauses for a moment, worried that she hurt you, but you do not say the safeword, so she keeps what she's doing. The rope binding your hands is knotted around the leg of a sofa, leaving you at her mercy.";
	say "     Zoe disappears from your field of vision for a second, then she comes back, and let a pair of feminine undies fall on your lap. 'Oh, a panty thief, huh? Wanted to masturbate yourself at home, sniffing at them, huh?' You nod shyly. 'Time for some karmic punishment, bitch,' the bunny says. She seems to be more and more into her role. Zoe [StripChest], then [StripCrotch]. [if player is herm]'Would you look at that?' she asks as she pulls up your male bits and uncovers your [cunt size desc of player] pussy with her foot. 'You like it both ways, aren't you, you horny [bodytype of player]? I'm going to teach you how to use a pussy.'[else if player is female]'Too lazy to buy new underwear, bitch?' she asks as she puts her foot on your lower belly.[else]'You're a pig, you know that?' she asks as she lifts your male bits with her foot. 'I hope you've as much stamina as you have lust, pig.'[end if]";
	WaitLineBreak;
	if player is male:
		say "     The bunny grabs your [cockname of player] cock and starts jerking you off. 'Better than your right hand, isn't it?' she chides you as your penis slowly responds and grows. Satisfied, she sits on your face, trapping your [facename of player] head against her white furred thighs. 'But it's not about you, pig. It's about me. Start licking.' You groan and play hard-to-get. It would not be fun if you gave up so easily, wouldn't it? 'Fine, have it your way,' she says, and she begins to grind her pussy against you. You eventually abide, and services the bunny with your tongue. 'That's it. Yeah!' Zoe moans. She keeps playing with your cock while you please her, so that you stay ready for her.";
		say "     Zoe suddenly stands up. 'Good boy. Time to get your reward,' she says as she straddles your lap. She teases you for what seems an eternity, pressing your cock against her thighs and her crotch. You suddenly realize that she has no intention of letting you inside of her. You complain. 'Would you shut up, already, pig?' she reacts. 'Put a sock in it! Oh wait, actually...' She balls up a pair of socks that laid nearby and pushes it in your mouth. 'Better. Told you it's all about me, pig. Be a nice toy and stay still, and I [italic type]may[roman type] let you cum.' And with these words, Zoe continues. She plays with her clit while she slides against your [cock size desc of player] cock, until she reaches her climax, and coat your length in her fem-cum. 'Nnnnf!' Satisfied, Zoe stands back up and presses her pawed foot on your dick. 'Good pig. Now, time for your reward.' She frots her foot vigorously against you. You writhe in pleasure from the rough footjob, and do not last very long. Your [cum load size of player] load spurts out of your cock and covers your [bodydesc of player] chest. 'Ah! What a mess. You're a pig, alright,' Zoe mocks as she raises her foot and presses its sole against your face. 'Clean it.' Despite the orgasm washing off on your body, you oblige the bunny.";
	else:
		say "     The bunny kneels by your crotch and pushes a finger inside. Then a second. 'Feels good? Wish for a real cock?' she asks snidely while you rapidly wet. Afterwards, she sits on your face, trapping your [facename of player] head against her white furred thighs. 'But it's not about you, bitch. It's about me. Start licking.' You groan and play hard-to-get. It would not be fun if you gave up so easily, wouldn't it? 'Fine, have it your way,' she says, and she begins to grind her pussy against you. You eventually abide, and services the bunny with your tongue. 'That's it. Yeah!' Zoe moans. She keeps playing with your pussy while you please her, so that you stay ready for her.";
		say "     Zoe suddenly stands up. 'Good girl. Time to get your reward,' she says as she leaves you for a moment. She comes back, equipped with the large red strap-on. The young bunny pushes your legs out of the way, and lets the strap-on rest on your crotch. 'Enjoy the ride!' Zoe pushes in slowly, enjoying the feedback on the flexible sex-toy, through the end embedded in her own pussy. Once she bottoms out, the bunny starts giving big, strong slaps. 'Oh, fuck yeah!' she grunts. From time to time, when your two cunts press against each other, she takes a moment to grind your clits together, amplifying the sensations. After several minutes of rough mating, Zoe's breathing accelerates. 'Oh, you're getting me close, bitch. You-you're... Ooooh!' She tenses up as you join the young bunny in orgasm. 'Ah... That felt good. And looks like you came too, bitch. I guess any cock is good for you, right?'";
	WaitLineBreak;
	say "     After a while, Zoe's eyes open wide, as if she suddenly came back to reality. 'Oh... Oh! Er... Should we stop now?' she asks as she unties you in a hurry. 'Was I good?' Laughing, you pull Zoe in your arms for an after-sex cuddle, telling her it was awesome. Time passes as the both of you bask in the afterglow of your pleasure, until you realize that you both have things to do. You escort Zoe back to the library. 'We should do that again, another time,' she says before returning to the rec room with a friendly kiss on your cheek.";

to say ZoeSexRPDom:
	say "     'A-Alright,' Zoe says in reaction. 'O-okay, then. We can use the material at my place, like last time.' Zoe and you spend the last leg of the journey deciding the specifics of what will happen at the apartment. The both of you are a little anxious, but excited.";
	say "     You let Zoe enter first, and wait five minutes before following her. You find her on a cot, feigning to be asleep. She is naked, her clothes purposefully laid down on the floor. You get as close as possible, then pounce on the bunny. 'Ah! Who are you?' she asks out loud. You put her token resistance down, before tying her hands together; you keep gloating about all you found some pretty thing to steal, tonight. 'No! Somebody, help!' Zoe calls, but she cannot prevent you from pulling her head up, at the level of your crotch. You [SelfStripCrotch], and order Zoe to start [if player is male]sucking[else]licking[end if]";
	WaitLineBreak;
	if player is male:
		say "     'Like hell I will, you bastard!' she protests. But she does not resist much when you push your hardening [cockname of player] cock in her mouth. 'I'm mmmg! Mmm.' You savor her tongue, then her tight throat as you slide your [cock size desc of player] dick forward. You face-fuck the rabbit slowly, calling her dirty names and mocking the noises she makes each time you push her lips down your length, calling them lewd and slut-like, among others. After five minutes of this treatment, you allow her a pause as you kneel down and begin to finger her. 'No. Not there. I'm a virgin. Don't!' The thought of taking the bunny girl's virginity, even fictional, amps up your excitement, and you pump your fingers even quicker into her cunt while you resume the verbal abuse.";
		say "     Once she is aroused enough that two of your fingers effortlessly slide all the way in her wet cleft, you turn her around and lean over her. 'N-No, don't do this,' she says as you tease her with your [cockname of player] dick. You grin and push your cock in her. 'Oooh fuuuck yes... I mean, no. Aaah!' You take Zoe doggy-style and rough. At first, the bunny girl grunts a little in discomfort, but once she gets used to you, she keeps moaning like a cat in heat. You try to keep talking to her, saying things like her pussy is made for your [cock size desc of player] cock, but you quickly switch to animalistic grunts as well. The both of you come roughly at the same time, and hard. Once you filled the bunny's womb with your seed, you roll on the side with your partner.";
	else:
		say "     'Like hell I will, you bitch!' she protests. But she does not resist much when you slam her face against your [cunt size desc of player] pussy. 'Hey wammmf! Mmmf...' To your great pleasure, you feel her little tongue explore your private parts as you grind them against the woman's muzzle. You accompany Zoe's forced oral with dirty names and mockeries of the noises she make each time she has to swallow the leaking juices from your vagina. After five minutes of this treatment, you allow her a pause as you kneel down and begin to finger her. 'No. Not there. I'm a virgin. Don't!' The thought of taking the bunny girl's virginity, even fictional, amps up your excitement, and you pump your fingers even quicker into her cunt while you resume the verbal abuse.";
		say "     Once she is at the same stage of arousal as you, you sit in front of her, and scissor her legs. You press your cunts together and grind. At first, the bunny girl grunts a little in discomfort, but once she gets used to you, she keeps moaning like a cat in heat. You try to keep talking to her, saying things like her moans sound like you former pet rabbit's, but you quickly switch to animalistic grunts as well. The both of you come roughly at the same time, and hard. Once your climax is over, you roll on the side with your partner.";
	WaitLineBreak;
	say "     After a while, Zoe's eyes open wide, as if she suddenly came back to reality. 'Oh... Oh! Is it over?' she asks as you untie her with care. 'It was so intense. It was like... Wow.' Laughing, you pull Zoe in your arms for an after-sex cuddle, telling her she was awesome. Time passes as the both of you bask in the afterglow of your pleasure, until you realize that you both have things to do. You escort Zoe back to the library. 'We should do that again, another time,' she says before returning to the rec room with a friendly kiss on your cheek.";


to say ZoeSexDP:
	say "     'Oh really? Oh... Oh!' Zoe sounds ecstatic. 'I must admit that I thought you would never ask.[first time] I must thank you, too. It's thanks to you that I found the courage to explore my kinks in this fashion.[only]' As soon as you reach Zoe's place, she throws herself on you, almost making you fall. She [StripCrotch] with the eagerness of youth and of one who gets to live one fantasy they thought impossible. Meanwhile, you [SelfStripChest]. 'Oh man, look at all this,' Zoe says as she drops to her knees. '[cocks of player] [cock size desc of player] cocks just for me.' You lean on the wall and let Zoe work on your multiple packages. By now, the young bunny, which you had met as a naive girl all these days ago, has become an expert cock-sucker. Your lengths are teased, one by one, until they are brought to a [if cocks of player < 3]small[else]big[end if] forest of erections. To keep the pleasure from rising to high, and in prevision of the fun to have, you make Zoe stop, and asks her to put her hands on the wall and lean down. The bunny complies, and entices you by wiggling that cute little bunny tail. You resist the carnal thought of taking her here and now. You want to prepare her a little, before. You hands explore her pussy [if anallevel is not 1]and her butt[end if]. One finger, then two, then three. You push Zoe to the limits of her capacity, as they are to be [if Zoe is CuntFitsForPlayerCock]reached[else]broken[end if] in a moment. Once you manage to effortlessly slide four fingers in[if anallevel is not 1] each hole[end if], you head for the bedroom with Zoe on your tail.";
	if anallevel is 1:
		say "     You sit on the cot, and Zoe joins you on your lap. You carefully line up the first cock and slide it in. Then, after you are set in, you pull out of the bunny and press [if cocks of player > 2]one of your other cocks[else]your other cock[end if] against the first. You push inside Zoe once again. She gasps loudly as her pussy is suddenly stretched by twice your [cock size desc of player] girth. [if Zoe is not CuntFitsForPlayerCock and wslevel is not 1]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. Then, with a shudder, a stream of piss leaks out of her urethra. 'My bladder... Fuck!' [else if Zoe is not CuntFitsForPlayerCock]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. [end if]Zoe suddenly throws back her head and screams 'Fuuuuck!' while rivulets of fem-cum squirt out of her cunt. Instead of asking to stop, Zoe turns around. 'Keep fucking me! Fuck me and don't stop!' she orders. You do not think twice and start hammering at her. With two cocks in the same hole, it feels very tight, and the both of you relish in this pleasure while Zoe slowly works herself to a second orgasm. [if cocks of player > 2]Zoe grabs your other cocks as if they were handle bars and tries to stroke them whenever a hearty bump into her cervix does not make her see stars and lose focus. [end if]You do not notice if Zoe has cum again, or how much, but your explosive climax happens eventually. [if Zoe is PlayerCumLoadInflates]You slam your two cocks as far into Zoe as you can while they keep cumming again and again. A small bump appears on Zoe, over the outline of your cocks. The bump grows and grows while her womb is flooded by[else]You slam your two cocks as far into Zoe as you can while they keep cumming again and again. A delirious bunny gently pats her womb as your cocks fill it with[end if] two [cum load size of player] loads.";
	else if cocks of player is 2:
		say "     You sit on the cot, and Zoe joins you on your lap. You carefully line up the first cock and slide it in. Then, after you are set in, you line your other cock with her ass and push in. Zoe gasps. 'Oh, fuckfuckfuckfuck!' Zoe suddenly tenses up and squeezes on your shafts while rivulets of fem-cum squirt out of her cunt. 'S-Sorry, I guess I was really excited. D-Don't stop!' You do not think twice and resume the gyration of your hips. You savor for long minutes the too rare pleasure of taking two tight holes at the same time. You enjoy their differences in shape and in muscle contractions. You do not notice if Zoe has cum again, or how much, but your explosive climax happens eventually. [if Zoe is PlayerCumLoadInflates]You slam your two cocks as far into Zoe as you can while they keep cumming again and again. A small bump appears on Zoe. The bump grows and grows from the combined fillage of her womb and her stomach by your[else]You slam your two cocks as far into Zoe as you can while they keep cumming again and again. A delirious bunny gently pats her belly as your cocks fill it with two[end if] [cum load size of player] loads.";
	else if cocks of player is 3:
		say "     You sit on the cot, and Zoe joins you on your lap. You carefully line up the first cock and slide it in. Then, after you are set in, you line your other cock with her ass and push in. Zoe gasps, but you are not over yet. You pick your remaining [cockname of player] shaft and let it enter the bunny's pussy, stretching her by twice your [cock size desc of player] girth. [if Zoe is not CuntFitsForPlayerCock and wslevel is not 1]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. Then, with a shudder, a stream of piss leaks out of her urethra. 'My bladder... Fuck!' [else if Zoe is not CuntFitsForPlayerCock]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. [end if]Zoe suddenly throws back her head and screams 'Fuuuuck!' while rivulets of fem-cum squirt out of her cunt. Instead of asking to stop, Zoe turns around. 'Keep fucking me! Fuck me and don't stop!' she orders. You do not think twice and start hammering at her. With two cocks in the same hole and one in the other, it feels very tight, and the both of you relish in this pleasure while Zoe slowly works herself to a second orgasm. You savor for long minutes the too rare pleasure of taking two tight holes at the same time. You enjoy their differences in shape and in muscle contractions. You do not notice if Zoe has cum again, or how much, but your explosive climax happens eventually. [if Zoe is PlayerCumLoadInflates]You slam your three cocks as far into Zoe as you can while they keep cumming again and again. A small bump appears on Zoe. The bump grows to impressive proportions from the combined fillage of her womb and her stomach by your[else]You slam your two cocks as far into Zoe as you can while they keep cumming again and again. A delirious bunny gently pats her belly as your cocks fill it with two[end if] [cum load size of player] loads.";
	else if cocks of player is 4:
		say "     You sit on the cot, and Zoe joins you on your lap. You carefully line up the first cock and slide it in. Then, after you are set in, you line your other cock with her ass and push in. Zoe gasps, but you are not over yet. You pick your remaining [cockname of player] shaft and let it enter the bunny's pussy, stretching her by twice your [cock size desc of player] girth. [if Zoe is not CuntFitsForPlayerCock and wslevel is not 1]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. Then, with a shudder, a stream of piss leaks out of her urethra. 'My bladder... Fuck!' [else if Zoe is not CuntFitsForPlayerCock]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. [end if]Zoe suddenly throws back her head and screams 'Fuuuuck!' while rivulets of fem-cum squirt out of her cunt. Instead of asking to stop, Zoe turns around. 'Keep fucking me! Fuck me and don't stop!' she orders. You are far from finished. Your remaining cock presses on her ass, and her anal ring gets the same treatment as her cunt. 'Ooh. Oh yeah,' she repeats as she gets used to the size of the penetration. You do not think twice and start hammering at her. With two cocks in the same hole and two in the other, it feels very tight, and the both of you relish in this pleasure while Zoe slowly works herself to a second orgasm. You savor for long minutes the too rare pleasure of taking two tight holes at the same time. You enjoy their differences in shape and in muscle contractions. You do not notice if Zoe has cum again, or how much, but your explosive climax happens eventually. [if Zoe is PlayerCumLoadInflates]You slam your four cocks as far into Zoe as you can while they keep cumming again and again. A small bump appears on Zoe. The bump grows to obscene proportions from the combined fillage of her womb and her stomach by your[else]You slam your two cocks as far into Zoe as you can while they keep cumming again and again. A delirious bunny gently pats her belly as your cocks fill it with two[end if] [cum load size of player] loads.";
	else:
		say "     You sit on the cot, and Zoe joins you on your lap. You carefully line up the first cock and slide it in. Then, after you are set in, you line your other cock with her ass and push in. Zoe gasps, but you are not over yet. You pick your remaining [cockname of player] shaft and let it enter the bunny's pussy, stretching her by twice your [cock size desc of player] girth. [if Zoe is not CuntFitsForPlayerCock and wslevel is not 1]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. Then, with a shudder, a stream of piss leaks out of her urethra. 'My bladder... Fuck!' [else if Zoe is not CuntFitsForPlayerCock]The added cock makes the girl's belly bulge obscenely, all the way down to her cervix. You feel her inner muscles convulse around your twin lengths. 'Oh fuck! Oh fuck!' she keeps panting. [end if]Zoe suddenly throws back her head and screams 'Fuuuuck!' while rivulets of fem-cum squirt out of her cunt. Instead of asking to stop, Zoe turns around. 'Keep fucking me! Fuck me and don't stop!' she orders. You are far from finished. Your remaining cock presses on her ass, and her anal ring gets the same treatment as her cunt. 'Ooh. Oh yeah,' she repeats as she gets used to the size of the penetration. You do not think twice and start hammering at her. With two cocks in the same hole and two in the other, it feels very tight, and the both of you relish in this pleasure while Zoe slowly works herself to a second orgasm. You savor for long minutes the too rare pleasure of taking two tight holes at the same time. You enjoy their differences in shape and in muscle contractions. Zoe grabs your other cocks as if they were handle bars and tries to stroke them whenever a hearty bump into her cervix or her ass does not make her see stars and lose focus. You do not notice if Zoe has cum again, or how much, but your explosive climax happens eventually. [if Zoe is PlayerCumLoadInflates]You slam your four cocks as far into Zoe as you can while they keep cumming again and again. A small bump appears on Zoe. The bump grows to obscene proportions from the combined fillage of her womb and her stomach by your[else]You slam your two cocks as far into Zoe as you can while they keep cumming again and again. A delirious bunny gently pats her belly as your cocks fill it with two[end if] [cum load size of player] loads.";
	WaitLineBreak;
	say "     Once you are both down from your orgasmic height, the both of you cuddle for a moment. 'Best. Sex. Ever,' Zoe comments. You cannot help but agree on this. A not-so-quick shower later, you are on the way back to the library, where you part ways with Zoe after promising to each other to do this again.";


to say ZoeMolest:
	say "You jump into the van, and the guard closes the door to give you some privacy. Zoe looks at you, anxious, as you ponder. [bold type]What do you want to do with Zoe?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mouth";
	now sortorder entry is 1;
	now description entry is "Use the bunny's mouth";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pussy";
	now sortorder entry is 2;
	now description entry is "Fuck Zoe's pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ass";
	now sortorder entry is 3;
	now description entry is "Take Zoe's ass";
	[]
	if cocks of player > 1:
		choose a blank row in table of fucking options;
		now title entry is "Double penetration";
		now sortorder entry is 4;
		now description entry is "Use both holes at the same time";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Mouth":
					say "[ZoeMolestMouth]";
					NPCSexAftermath Zoe receives "OralFuck" from player;
				if nam is "Pussy":
					say "[ZoeMolestVag]";
					NPCSexAftermath Zoe receives "PussyFuck" from player;
				if nam is "Ass":
					say "[ZoeMolestAnal]";
					NPCSexAftermath Zoe receives "AssFuck" from player;
				if nam is "Double penetration":
					say "[ZoeMolestDP]";
					NPCSexAftermath Zoe receives "PussyFuck" from player;
					NPCSexAftermath Zoe receives "AssFuck" from player;
				wait for any key;
				now Suspicious Van is closed;
				follow the turnpass rule;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Having second thoughts, you abstain from using Zoe to satiate your needs. You step away, letting the bunny alone for now.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ZoeMolestMouth:
	say "     Without a word, you pick up a ring gag which was lying around in the vehicle and pass it around the bunny girl's head. 'No, wait, pwfffsh! Nnnnh!' she protests, but she can do nothing with her arms tied up like they are. You promptly [SelfStripCrotch], then grab the young girl by her hair and line the tip of your cock up with her mouth.";
	if Zoe is not PlayerCumLoadInflates: [width vs size indicator]
		say "     You slide your [cockname of player] cock in one go, enjoying Zoe's panicked gags, before going back at the level of her mouth, to let her get back her breath, in-between coughs. Once you deem the bunny girl ready again, you start giving her mouth a good face-fuck. Her throat tightens around your [cock size desc of player] cock while her coughs cover your crotch with her saliva. After the purposefully drawn-out fellatio, you feel yourself reaching the point of no return. [if player is knotted]You ram your cock all the way in while your knot grows and locks it behind her lips. Realizing what's happening, Zoe panics and tries to shake her head, but you hold her face as you empty your balls into her, and force her to drink your thick spunk with long, noisy gulps[else]You ram your cock all the way in and stay there while your cock spurts its [cum load size of player] load inside Zoe's throat, forcing her to drink your thick spunk with long, noisy gulps[end if].";
	else:
		say "     Your cock is too thick to force it in the gag's ring, let alone in her throat. You yank the gag away, and after threatening her against trying to bite, you push as much cock as you can inside of her. The bunny girl's jaws bulge obscenely, your cock pushing the capacity of her mouth to her limits. Using the wall of the van as a support, you give small, hearty humps which make her jump and writhe between your feet. Simultaneously you jerk the length that cannot fit inside of her. After some time, you feel your climax rising. You jerk yourself quickly while you push your throbbing maleness further inside the bunny. It rests at the entrance of her throat while she gags, tears in her eyes. With a thunderous roar, you force Zoe to take spurt after spurt of cum, until the resulting overfill splashes out from the corner of her lips and from her nostrils.";
	say "     Utterly satisfied, you throw Zoe's coughing and gagging body on the floor and bang on the van's door. After quickly checking if Zoe is in good enough shape to take more visitors after you, the guard opens up and lets you out. 'Hope you enjoyed yourself,' he says. 'Come again soon, and all that.'";

to say ZoeMolestVag:
	say "     You force Zoe to give you access to her pussy and push your fingers in her pussy. The bunny girl winces, but when you pull out your fingers, they are wet with the cum of previous visitors. You point this out to Zoe while swiping your fingers off her fur. The bunny's only response is a heartbroken sob. You lean over and lean between her legs, making a show of frotting your [cock size desc of player] cock over her [cunt size desc of Zoe] pussy.";
	if Zoe is CuntFitsForPlayerCock:
		say "     Zoe looks for mercy in your eyes, but you have already taken your decision. You press your cock against her cunt and push. The bunny girl swallows your cock with a lewd [italic type]Schlorp[Roman type]. You ponder out loud to humiliate her further: How many cocks did she take already? How much of a slut is she to take your cock so easily? You explain, in unambiguous terms, that there is only one way for you to enjoy people like her. [if ScaleValue of player >= 2]You put all your weight on her, until only her legs and her butt are visible[else]You put all your weight on her, and throw your face into her boobs[end if], then apply a continuous jackhammer motion to your hips. The van starts shaking, and the metal whining. You make Zoe moan of discomfort and forced pleasure so loud, that you wonder if people could hear you all the way to the mall; a remark you empress to say out loud. Zoe's pussy quiffs and squirts while you fuck her in wild abandon[if player is barbed], letting out a loud whine each time your barbs rub against her pussy[end if]. Eventually, you reach your orgasm[if player is knotted] and your knot forms, locking your cock inside the bunny girl[end if].";
	else:
		say "     'N-No, please,' Zoe pleads. 'It's too big.' You answer snidely that you are sure that she has seen and will see bigger while you line your [cockname of player] cock with her pussy. You push inside, inch by inch, stretching Zoe to her limits and then some. You eventually bottom out. Zoe looks away, not daring to look at the bulge your cock forms on her belly. You start going back and forth inside of her, eliciting groans from your living toy each time you stretch her a little further[if player is knotted] or your over-sized barbs scratch her pussy[end if]. You eventually feel your orgasm coming, so you decide to push stronger and stronger until she fits all of you. Zoe wiggles and screams while your [cockname of player] shaft presses dangerously stronger on her cervix. Then, with a hearty hump, you breach that last barrier, and the young girl squeals as you invade her womb, and make the bulge advance several inch further[if player is knotted]. Your knot starts to grow, but is still outside, so you push even further until it pops in with a sick noise of vaginal muscles rearranging themselves under the effect of the nanites[end if][if wslevel is not 3]. You feel something warm trickle on your crotch as Zoe loses control of her bladder from the sheer size of the insertion. This does not deter you as you make the last few remaining humps[end if].";
	if Zoe is PlayerCumLoadInflates:
		say "     The bunny girl's belly slowly fills with your cum with obscene [italic type]glug, glug[roman type] sounds. Zoe is left gasping as her womb is filled to full capacity and beyond, the overfill flowing out of her cunt. When you finally lift your body off her, more of your fluids squirt on the floor as the spasms of her body eject it. Meanwhile, you [SelfDressCrotch] and bang on the door. The wolverine guard opens and appraises the situation. 'Clean your mess before you get out, will ya. The mop's on your left.'";
	else:
		say "     Your cock squirt their load inside Zoe's womb, joining the many others before you. Letting Zoe recover on the floor of the van, you [SelfDressCrotch] and bang on the door. The wolverine guard opens and lets you out. 'Don't worry about [']accidents['], we're keeping her on the pill,' he says nonchalantly while munching on the supplies you gave him. 'Come again soon, and all that.'";

to say ZoeMolestAnal:
	say "     You force Zoe to give you access to her ass and push your fingers in. The bunny girl winces, but when you pull out your fingers, they are wet with the cum of previous visitors. You point this out to Zoe while swiping your fingers off her fur. The bunny's only response is a heartbroken sob. You lean over and make a show of frotting your [cock size desc of player] cock over her butt-cheeks.";
	if Zoe is CuntFitsForPlayerCock:
		say "     Zoe looks for mercy in your eyes, but you have already taken your decision. You press your cock against her ass and push. The bunny girl swallows your cock with a lewd [italic type]Schlorp[Roman type]. You ponder out loud to humiliate her further: How many cocks did she take already? How much of a slut is she to take your cock so easily? You explain, in unambiguous terms, that there is only one way for you to enjoy people like her. You put all your weight on her, then apply a continuous jackhammer motion to your hips. The van starts shaking, and the metal whining. You make Zoe moan of discomfort and forced pleasure so loud, that you wonder if people could hear you all the way to the mall; a remark you empress to say out loud. Zoe's ass spasms around your cock while you fuck her with wild abandon[if player is barbed]. The bunny whines loudly each time your barbs rub against her sensitive anal ring[end if]. Eventually, you reach your orgasm[if player is knotted] and your knot forms, locking your cock inside the bunny girl, whose eyes bulge in reaction[end if].";
	else:
		say "     'N-No, please,' Zoe pleads. 'It's too big.' You answer snidely that you are sure that she has seen and will see bigger while you line your [cockname of player] cock with her asshole. You push inside, inch by inch, stretching Zoe to her limits and then some. You eventually bottom out. Zoe looks straight in front of her, not daring to look at the bulge your cock forms on her belly. You start going back and forth inside of her, eliciting groans from your living toy each time you stretch her a little further[if player is knotted] or your over-sized barbs scratch her anal ring[end if]. You eventually feel your orgasm coming, so you decide to push stronger and stronger until she fits all of you. Zoe wiggles and screams while your [cockname of player] shaft makes its way further towards her stomach[if player is knotted]. Your knot starts to grow, but is still outside, so you push even further until it pops in with a sick noise of innards rearranging themselves under the effect of the nanites[end if][if wslevel is not 1]. You hear something trickle on your crotch as Zoe loses control of her bladder from the sheer size of the insertion. This does not deter you as you make the last few remaining humps[end if].";
	if Zoe is PlayerCumLoadInflates:
		say "     The bunny girl's belly slowly fills with your cum with obscene [italic type]glug, glug[roman type] sounds. Zoe is left gasping as her ass is filled to full capacity and beyond, the overfill flowing out of her butthole. When you finally lift your body off her, more of your fluids squirt on the floor as the spasms of her body eject it. Meanwhile, you [SelfDressCrotch] and bang on the door. The wolverine guard opens and appraises the situation. 'Clean your mess before you get out, will ya. The mop's on your left.'";
	else:
		say "     Your cock squirt their load inside Zoe's ass, joining the many others before you. Letting Zoe recover on the floor of the van, you [SelfDressCrotch] and bang on the door. The wolverine guard opens and lets you out. 'Got her good, huh? Don't worry, she's used to it,' he says nonchalantly while munching on the supplies you gave him. 'Come again soon, and all that.'";

to say ZoeMolestDP:
	say "     You force Zoe to give you access to her ass, and tell her that she's in for a treat. 'Wh-What do you mean?' the bunny girl asks anxiously. For all answer, you let your first cock slap on her right butt-cheek, then slap her left butt-cheek with the second shaft. You play drums with her white furry butt until she realizes what you are talking about. 'Y-You fucking creep, stay away from me!' Tied as she is, Zoe cannot do much more than bark while you put her butt up in the air and prepare [if cocks of player > 2]two of your[else]your[end if] cocks for each of her holes.";
	if Zoe is CuntFitsForPlayerCock:
		say "     You plunge both cocks in their respective holes, at the same time. Zoe gasps from the sudden double penetration, to your utmost pleasure. You slowly hilt yourself inside of the bunny. After ensuring that you hold her tight, you start humping her at a brisk pace. The van shakes around you, Zoe's howls covering the sound of the suspensions as both of her holes are railed at the same time, and squeeze on your shafts with perfect synchronicity. That, and the different sensations of her two orifices, make you go over the edge eventually[if player is knotted]. You slide back all the way inside of Zoe while your knots form and trap both of your [cockname of player] dicks inside of her while you cum[end if].";
	else:
		say "     Working only one of Zoe's holes would have already been a bit much, but you were now stretching both of her holes at the same time. Zoe's muscles squeeze around you while her nanites work double time to accommodate you while you mate the poor bunny. You lift her off the ground and pile-drive her, your twin shafts forming a complex bump on her belly. Zoe's teary eyes roll in their sockets as you take her to a world she could have never dreamed of before[if player is knotted]. Zoe's ordeal is not quite over yet, your knots starting to form and stretch her even further. Two hard lumps appear on her crotch as you lock your shafts inside of her[end if][if wslevel is not 1]. You hear something drip down on the floor as Zoe loses control of her bladder from the sheer size of the insertion. This does not deter you as you make the last few remaining humps[end if].";
	if Zoe is PlayerCumLoadInflates:
		say "     Your cock squirt their load inside Zoe's ass, joining the many others before you. Letting Zoe recover on the floor of the van, you [SelfDressCrotch] and bang on the door. The wolverine guard opens and lets you out. 'Got her good, huh? Don't worry, she's used to it,' he says nonchalantly while munching on the supplies you gave him. 'Come again soon, and all that.'";
	else:
		say "     Your cock squirt their load inside Zoe's ass, joining the many others before you. Letting Zoe recover on the floor of the van, you [SelfDressCrotch] and bang on the door. The wolverine guard opens and lets you out. 'Got her good, huh? Don't worry, she's used to it,' he says nonchalantly while munching on the supplies you gave him. 'Come again soon, and all that.'";

[Move rule]
an everyturn rule:
	if Resolution of Rabbit Tagger is 2: [saved]
		if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			move Zoe to Makeshift Rec Room;
			if player is in Makeshift Rec Room:
				say "     'You hear the quiet sound of bare, pawed feet slide on the rec room's linoleum, followed by Zoe's girly voice greeting you[if Nala is booked] and Nala[end if]. 'Hey, there. How was your day?' She puts down her bag in her corner of the room and takes a moment to throw her empty paint cans away, replacing them by new one. After that, she disappears behind her screen, and you hear the [italic type]thump[roman type] of her lithe body fall on her cot.";
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			move Zoe to Nowhere;
			now XP of Zoe is 1; [Reset item scavenging]
			if player is in Makeshift Rec Room:
				say "     '[']Morning,' Zoe says as she passes you on her way out, her bag strapped on her shoulders. 'I'm out for the day. Take care.' And off she goes to leave her art on another wall of the city.";

Part B - Suspicious Van

[The van is where Zoe will be if she is captured. It is a container with specific rules. Locked until Zoe's quest is resolved, it is guarded by a Wolverine Pimp, with which the player will interact]
Suspicious Van is a closed container. It is openable.
Suspicious Van is locked.
Suspicious Van is in Smith Haven Mall Lot West.
The description of Suspicious Van is "[suspiciousVanDesc]".

instead of sniffing Suspicious Van:
	say "It smells of oil[if Resolution of Rabbit Tagger is 1], and there is a lingering smell of male sweat and cum in the vicinity[end if].";

to say suspiciousVanDesc:
	if Rabbit Tagger is not resolved:
		say "     You take a look at the van. It is large, white, and in a rather good state compared to the other vehicles, as if someone has been regularly taking care of it after the start of the nanite plague. A quick test tells you that the doors are locked.";
	else if "Used" is listed in the Traits of Zoe:
		say "     You take a look at the van. It is constantly shaking and squeaking. After you take a few steps closer, you hear loud grunts coming from inside the vehicle, as well as Zoe's cries.";
	else:
		say "     You take a look at the van. It sits, immobile, in the middle of the parking lot. Since you know what is used for, the vehicle leaves you uneasy.";

an everyturn rule:
	if Resolution of Rabbit Tagger is 1 and skipturnblocker is 0:
		let randomnumber be a random number between 1 and 2;
		if randomnumber is 1:
			if "Used" is listed in the Traits of Zoe and Suspicious Van is visible:
				say "     The back door of the van opens and a [one of]wolverine[or]German Shepherd[or]Hyena[or]Gryphon[or]Orc[or]Collie[or]Hawkman[at random] gets out of the vehicle. With a sigh of satisfaction, he puts his cock back into his pants and walks away, not giving a single look back. Right after, a [one of]wolverine[or]German Shepherd[or]Hyena[or]Gryphon[or]Orc[or]Collie[or]Hawkman[purely at random] who was patiently waiting for his turn jumps into the van and closes the door. After a short moment, the van starts shaking again.";
			else if "Used" is not listed in the Traits of Zoe:
				add "Used" to the Traits of Zoe;
				if Suspicious Van is visible:
					say "     You see a [one of]wolverine[or]German Shepherd[or]Hyena[or]Gryphon[or]Orc[or]Collie[or]Hawkman[at random] present himself to the wolverine guard. After giving him some a [one of]bottle of water[or]can of soda[or]bag of chips[or]bit of food[at random], the guard opens the door of the vehicle. The man jumps inside, and you hear Zoe shout just as the guard closes the door. After a short moment, the van starts shaking.";
			now Suspicious Van is closed;
		else:
			if "Used" is listed in the Traits of Zoe:
				remove "Used" from the Traits of Zoe;
				if Suspicious Van is visible:
					say "     The back door of the van opens and a [one of]wolverine[or]German Shepherd[or]Hyena[or]Gryphon[or]Orc[or]Collie[or]Hawkman[at random] gets out of the vehicle. With a sigh of satisfaction, he puts his cock back into his pants and walks away, not giving a single look back. The wolverine guard gives a look inside the van, smirks, then closes the door.";
					now Suspicious Van is closed;
		if Suspicious Van is visible and Suspicious Van is open:
			say "     Looking at you, the Wolverine Pimp glances down to his wristwatch, then shrugs and closes the door of the van.";
		now Suspicious Van is closed;

Part C - Van guard

Table of GameCharacterIDs (continued)
object	name
Wolverine Pimp	"Wolverine Pimp"

Wolverine Pimp is a man.
Wolverine Pimp is in Nowhere.
Understand "van guard" as Wolverine Pimp.

The description of Wolverine Pimp is "You gauge the anthro wolverine sitting in a chair, next to the van. He wears a tattered security guard outfit, which he seems to have [']upgraded['] by ripping out the sleeves. His clothes are tattered with stains, which you suspect may not be water or grape juice. The guard raises an eyebrow at you. 'What are you looking at?'".
The conversation of Wolverine Pimp is { "[one of]'Looking for fun times? [bold type]Trade me[roman type] some food or beverage, and you'll get a turn.'[or]'The girl's here of her own will, I swear. Not that you can disprove anything... Heh heh!'[or]'Watch out if you want a pass with the bunny: she bites. Don't forget to use the ring gag.'[or]'I wonder when the boss will let her go. Hell, I'd rather wonder [italic type]if[roman type] the boss will let her go. Ha ha ha...'[at random]" }.

instead of sniffing Wolverine Pimp:
	say "The wolverine gives off an intimidating, bestial smell.";

instead of trading the food when the current action involves the Wolverine Pimp:
	if "Used" is listed in the traits of Zoe or player is not male or the Suspicious Van is open:
		say "[wolverineTradeRefuse]";
	else:
		say "[wolverineTrade]";
		decrease carried of food by 1;

instead of trading the water bottle when the current action involves the Wolverine Pimp:
	if "Used" is listed in the traits of Zoe or player is not male or the Suspicious Van is open:
		say "[wolverineTradeRefuse]";
	else:
		say "[wolverineTrade]";
		decrease carried of water bottle by 1;

instead of trading the chips when the current action involves the Wolverine Pimp:
	if "Used" is listed in the traits of Zoe or player is not male or the Suspicious Van is open:
		say "[wolverineTradeRefuse]";
	else:
		say "[wolverineTrade]";
		decrease carried of chips by 1;

instead of trading the soda when the current action involves the Wolverine Pimp:
	if "Used" is listed in the traits of Zoe or player is not male or the Suspicious Van is open:
		say "[wolverineTradeRefuse]";
	else:
		say "[wolverineTrade]";
		decrease carried of soda by 1;

to say wolverineTrade:
	say "     The guard grabs your offering and puts it into his bag. 'Thaaank you!' He gets off his seat and unlocks the backdoor of the van with his key. 'Here's the rules: no maiming, no blood, no piss, no shitstuff. You got one hour; if I bang on the door, it doesn't matter if you're [']almost there[']: you pull out and you get out. Are we good? Good.' After this, he opens the van, letting you gaze at Zoe's lying form in the back.";
	now Suspicious Van is open;

to say wolverineTradeRefuse:
	if player is not male:
		say "     'Sorry girl, but what's inside's not for you. You lack the, er, [']prerequisites['].'";
	else if "Used" is listed in the Traits of Zoe:
		say "     'Someone's inside already. Wait your turn.'";
	else if the Suspicious Van is open:
		say "     'You already paid me. Get on with it!'";
	else:
		say "     ERROR: 'No reason I should tell you no. Tell someone in the bug-report channel about it.'";

instead of opening the Suspicious Van while Resolution of Rabbit Tagger is 1:
	say "The wolverine guard is in the way. 'Wanna have fun inside? Talk to me first.'";

instead of closing the Suspicious Van while Resolution of Rabbit Tagger is 1:
	say "'No point closing the door now.'";

Instead of going southeast from Smith Haven Mall Lot West while Suspicious Van is open:
	say "As you start to walk away from the vehicle, the guard stops you. 'Having second thoughts? No refunds, boy!'[line break]";
	if player consents:
		LineBreak;
		say "'Your loss...' the wolverine says. He closes the door of the van and lets you go.";
		now Suspicious Van is closed;
		move player to Smith Haven Mall Lot South;

Instead of going northeast from Smith Haven Mall Lot West while Suspicious Van is open:
	say "As you start to walk away from the vehicle, the guard stops you. 'Having second thoughts? No refunds, boy!'[line break]";
	if player consents:
		LineBreak;
		say "'Your loss...' the wolverine says. He closes the door of the van and lets you go.";
		now Suspicious Van is closed;
		move player to Smith Haven Mall Lot North;

Section 3 - Quest Events

Table of GameEventIDs (continued)
Object	Name
Rabbit Tagger	"Rabbit Tagger"

Rabbit Tagger is a situation.
The sarea of Rabbit Tagger is "Nowhere".

[Event trigger]
instead of going to Smith Haven Mall Lot West while (a random chance of 1 in 3 succeeds and Rabbit Tagger is not resolved):
	move player to Smith Haven Mall Lot West;
	ZoeTheTaggerRabbitEvents;
	now Rabbit Tagger is resolved;

to ZoeTheTaggerRabbitEvents:
	say "     As you make your way through the chaos of parked, crashed and often cum-smeared cars, a sudden clicking noise makes you listen up. Sounds like some marbles being shaken in a metal can... Then a hissing noise follows, drawing your attention to the side of the Mall, where a small-ish figure is spray-painting the anarchy symbol on the wall. Dressed in baggy camo pants and a black hoodie, it is hard to make out who or what it is exactly - though the snow-white fur covering the slender hand with the can hints at it being an anthro furry. The spray-painter shakes the can in their hand once more, preparing to add some more writing next to the symbol - and in their eagerness of thinking up something fitting, the furry concentrates on the wall itself just a little too much... totally missing the wolverine guard coming around the outside corner of the mall on his patrol.";
	say "     With a growl, the guardsman storms up to the hapless spray-painter, who tries to escape in fright. Futilely, in this case, as the muscular wolverine runs them down with little effort, capitalizing well on the first few seconds of surprise. Getting a hold of the black hoodie, he stops the fleeing furry cold with a harsh wrench backwards, making them sprawl on the asphalt of the parking lot. Wandering closer in a relatively casual pace (as not to appear as an accomplice and drawing the ire of the wolverine yourself), you can make out that the spray-painter is a young bunny girl with snow-white fur, except the dark brown mop of her head hair. She looks up at the predator standing over her with fright-widened blue eyes and tries to pull away, only to be stopped once more by his unrelenting grip on her clothes.";
	WaitLineBreak;
	project the figure of Zoe_face_icon;
	say "     'What do we have here?! A dirty little punk in the midst of vandalism. You're going straight in the lockup!' the guardsman growls out with determination and pulls her up to stand, putting his other hand on her shoulder and ready to lead her to the mall entrance. 'No please! Let me go,' the bunny girl wails, then suddenly ducks low and wrenches her hoodie from the wolverine's grip. She half-falls down to the ground, but manages to push herself up in a mad scramble, the blunt claws on her slender paws scraping over the asphalt as she starts to run away. 'Fuck!' the guardsman barks and pounces on his would-be escapee, this time only barely fast enough to snatch her, hooking his strong fingers behind the belt-line of the girl's camo pants. Loose as the pants are, this pulls them down over her slender hips and thighs, tangling her lower legs up in fabric. The wolverine makes use of this opportunity, grabbing the hoodie and really wrapping it around his fist to avoid further escape attempts.";
	say "     'Okay, that's it! No more mister nice-guy. Gonna punish you myself, punk! What's your name anyways?' the mall guardsman growls aggressively, giving her a slap on the snowy-white buttocks. 'Ouch! I - I'm Zoe. Please don't hit me anymore,' the spray-painter sobs, turning her big blue eyes to him beseechingly. 'Oh, I'm not gonna hit you,' her captor replies, a domineering grin spreading over his muzzle as he goes on to say, 'But there will be a fair bit of pounding in your future.' After that, he lowers a hand to undo the button of his uniform pants, then pulls down the zipper to reveal his rapidly hardening cock. As it flops out to rest against the curve of Zoe's buttocks, the wolverine runs his thumb over the folds of her exposed pussy, then dips the fingertip in to feel her insides. 'Virgin too, eh? Nice - gonna enjoy breaking you in!' he barks lustily and leans forward to lick the cheek of the trembling bunny girl.";
	say "     [bold type]Well, that escalated quickly. What do you want to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Watch him fuck the girl.";
	say "     ([link]N[as]n[end link]) - Speak up, this isn't right!";
	if player consents:
		LineBreak;
		say "     'No no no! Please I'm sor- ahhh!' Zoe starts to say, then lets out a shocked yell as the wolverine thrusts into her from behind, burying half his length into her pussy and claiming the bunny's cherry. 'Best to get it over quick, you see?' he tells her in a satisfied tone, then licks her cheek again before taking the fur at the back of her neck between his teeth and driving the rest of the way into her trembling pussy. With a deep grunt at bottoming out in a virgin girl, the wolverine holds her tight to his chest and starts to grope her chest, feeling the bunny's small boobs hiding under the fabric of her hoodie. 'Nice and tight,' the big man adds a moment later, grinding his hips against her rear a little.";
		say "     The wolverine slowly pulls out of his captive and rubs the slick length of his shaft against her furry buttocks, then sinks it back into Zoe's pussy with a harsh thrust, followed by another and another. Certainly looks like a demanding introduction to womanhood and fucking for the anthro girl. Zoe gets pounded from behind for a little while, biting her lip as she tries to suppress any noise from her throat and with tears welling up at the realization that this will always stay with her as her first time being fucked. When she finally can't help but let out a mixture of a whimper and moan on one of his deep thrusts, the mall guard pauses and pulls her up, leaning around to look her in the eye.";
		WaitLineBreak;
		say "     'Not such a good idea to piss of Officer Logan, eh girl? Wait - I wanna see your face as I pound the lesson home!' the wolverine grunts in a cruel mixture of lust and amusement. He reaches down to grab the pants from around her lower legs, impatiently tugging them off her legs to free the bunny's slender limbs. Now that Zoe is naked from the hips down, Logan withdraws his cock from her with a wet slurp, then rolls her over on her back. Before she knows it, he has her legs spread and raised while leaning over her. 'Bad girls like you need to be taught a lesson,' he grunts and licks her face, then thrusts his manhood home into her body. 'Ah, you bastard!' Zoe replies as he nudges her cervix and presses against it, his big shaft reaching deep into her petite body.";
		say "     Pinning his captive bunny to the asphalt with one hand, the wolverine fucks her hard, pistoning his dick in and out of her snatch. Given the typical little alterations the nanites make to people's minds, Zoe soon can't help but moan and tremble under him, her traitor body enjoying being dicked and machine whispers in her head telling her to just go along with it, despite everything wrong with this pairing. It doesn't take much longer before Logan lets out a satisfied growl and positions his cock so that just the head is inside her, his balls and shaft throbbing hard with spurt after spurt of cum shooting up the bunny's pussy. 'This is what little sluts like you were made for,' he says harshly while still coming into her, grinning down at the shocked girl.";
		WaitLineBreak;
		say "     Eventually, Logan's orgasm seems to ebb off and he leans in to give the bunny girl a demanding kiss, licking her face and then forcing his long tongue into her mouth. In the midst of making out with her, he slides his cock deep into Zoe's freshly-bred pussy, making cum squirt our around his cock and soaking the cute little tail of the bunny girl. Then he pulls away from (and out of) her with a sudden movement, coming to stand over the spray-painting young woman. Holding his cock out for her, slimy and literally dripping with cum, the wolverine growls, 'Let's see if you have taken the lesson to heart. If you want your pants back, suck it dry!'";
		say "     Wiping a tear away at this new level of harsh treatment, the frightened bunny girl gets up on her paws, crouching before her captor and haltingly opens her mouth. She sticks her tongue out a little, seemingly unsure about what to do next. Logan is quick to tell her, putting a hand on the back of her head and pushing her close to his dick. With some pointers from the wolverine, Zoe licks and sucks his dick, slurping off the cum and female juices before being commanded to swallow. With more of his cum dripping from her spread little pussy, the bunny goes on to clean her captor's cock. Eventually, the man gives a satisfied snort and tousles her hair, then says, 'That was good, little slut! Wouldn't mind to take you again and again actually.'";
		WaitLineBreak;
		say "     Giving Zoe an overbearing grin, the wolverine tucks his softening cock back into his uniform pants and zips up, then walks over to where he threw her pants. Picking them up, Logan tosses the garment over to her and chuckles as it lands in the puddle of his cum that is still leaking from her pussy. 'You won't need them where I'm taking you, fuck-toy,' he sneers at her after kicking away her backpack and her spray cans. The wolverine drags the bunny, squirming and screaming, ";
		if player is in Smith Haven Mall Lot West:
			say "to the Suspicious Van parked in that section of the lock. He pulls out the keys, open the back doors, and lock the bunny inside. 'Be a good girl and stay here.' The wolverine leaves, only to come back with another guard, carrying ropes with him. The two men enter the van, who starts to shake violently as a scuffle takes place. There is a lot of shouting, of which you can hear a few words like 'community service' or 'whore out'. After everything quiets down, the two security guards walk out. The leader walks back to the mall while his subordinate remains by the door, giving you a nothing-to-see-here look.";
		else:
			say "towards the western parking lot. 'You're going to make some community work for us, you little whore.'";
			say "     'No, let me go! Someone, help!'";
			say "     The sound of a loud slap interrupts the rabbit's shouting, just as the pair turns around the corner, leaving you alone.";
		now Resolution of Rabbit Tagger is 1; [the player let Zoe get captured]
		now Zoe is in Suspicious Van;
		move Wolverine Pimp to Smith Haven Mall Lot West;
	else: [stop him]
		LineBreak;
		say "     Calling out, you draw the attention of the strong wolverine and he turns his head to glance your way from the corner of his eyes. 'Move on, this is official mall business. Nothing to see here,' he replies, splitting his attention between yourself and his captive. And that's pretty much all it takes, as Zoe uses that moment to kick up at him, landing a straight blow to the man's balls. With a breathless groan of pain, the guy falls to the ground, curling up as he holds his aching crotch. His captive quickly jumps to her feet and pulls her pants back up, then dashes back to the spot where she sprayed the wall, snatching up two cans and hastily stuffing them in a backpack lying against the building.";
		say "     Shouldering the bag, she looks back to the guard as he shouts, 'You're gonna pay for that, bitch!' Thankfully, the guy is still out of commission, having only pulled himself up to all fours and still retching as he holds back the urge to vomit. Zoe isn't going to wait for him to get up, that's for sure... She looks over to you and gives you a shy smile as she raises a snow-white paw-hand to wave. Then the bunny calls out, 'Thank you!' before she turns tail and runs away at an impressive sprinting speed. Your attention is inevitably drawn to her cute little behind as she does, since Zoe didn't tuck her snowy bush of a tail into the pants in her haste. It sways left and right a little with each stride, the bright white fur easy to track with your eyes.";
		WaitLineBreak;
		say "     You take care to quickly get out of dodge too before the wolverine recovers, putting some of the wrecked cars and then the mall itself between the two of you so he can't get a good look at you. Best if he doesn't know whom to 'thank' for his situation. Once everything has quieted down, you prepare yourself to make your way back to the mall, when you hear a cough behind you. You turn around, and find Zoe staring at you, a smile on her face. 'Thanks a lot. I had the scare of my life.' You reply that she is welcome. 'What the hell happened to this place? Security guards have always been assholes, even before this mess, but he was going to... To force himself on me? Just like that?'";
		say "     The white bunny seems to ponder something. 'Hey, would you know of a safe place? I have a small hideout already, but the place is rundown, and I would feel safer with someone else around.' You tell her about the library. 'A bunker? Wow. I guess I should have picked up reading and known about this place. I'll pick up my things and find a place. Maybe in that [bold type]rec room[roman type] I helped decorating, a couple of years ago. Don't worry, I won't take much space, [bold type]and I will usually be out during the day. If you see me around the night, feel free to visit. I may have things to share with you[roman type].'";
		say "     You wish good luck to Zoe as she runs back into the city to make good on your offer.";
		now Resolution of Rabbit Tagger is 2; [the player helped her escape]
		now Loyalty of Zoe is 5;
		move Zoe to Makeshift Rec Room;

Zoe ends here.
