Version 1 of Husky BadEnd by Gherod begins here.

Table of GameEventIDs (continued)
Object	Name
Womanizing Husky	"Womanizing Husky"

Womanizing Husky is a situation.
ResolveFunction of Womanizing Husky is "[ResolveEvent Womanizing Husky]".
Sarea of Womanizing Husky is "Outside".

to say ResolveEvent Womanizing Husky:
	if Player is not male:
		say "     Often you hear noises you'd rather ignore during your travels, but there is this one in particular that catches your attention. It starts out as a cry of protest, which sets you on high alert, only to switch to far more sexual sounds quickly. Something, maybe 'feminine intuition' or whatever, makes you think that going over there isn't a good idea right now. That would be something only an overconfident [bold type]man[roman type] would do... (Potential MtF BadEnd ahead)";
		let Husky_BadEnd_Choices1 be a list of text;
		add "Retreat, for now." to Husky_BadEnd_Choices1;
		add "Avoid this area for good." to Husky_BadEnd_Choices1;
		let Husky_BadEnd_Choice1 be what the player chooses from Husky_BadEnd_Choices1;
		if Husky_BadEnd_Choice1 is:
			-- "Retreat, for now.":
				say "     You turn around and leave, for now.";
			-- "Avoid this area for good.":
				say "     You turn around and leave, making a mental note never to return to this area.";
				now Womanizing Husky is resolved;
	else:
		say "     Often you hear noises you'd rather ignore during your travels, but there is this one in particular that catches your attention. It starts out as a cry of protest, which sets you on high alert, so you decide to cautiously assess the situation, lest something dangerous jumps on you. Fortunately, the space you find yourself in has a vantage point, so you take it as you search for the source of these now whimpers and... moans? You look again, eyes like a hawk, surveying the landscape before you, and at last, your efforts bear success. It is a rather worrisome view, however, as further ahead of you is a pair of huskies. One male, standing up, holding another one, smaller, by his muzzle, with a rather sizeable cock half-buried in his maw.";
		say "     You blink a few times, as you could've sworn you heard something akin to a cry for help, but this is not what you expected. A better look reveals some important details besides their difference in size, as the bigger husky is, in fact... different. He looks bigger and stronger than the others roaming around. An alpha, unmistakably, but even so, you can tell this one is far more dangerous. The scene continues to play as you examine the huskies, though something grabs your focus almost immediately. The smaller husky's resistance drops completely as he... no, not a [']he['] anymore, or is at least ceasing to be, you observe.";
		WaitLineBreak;
		say "     Their form changes rapidly, rounder around the hips, a softer muzzle, longer fur on the head... Legs kneel in submission, tail low but wagging softly... Then, a pair of breasts begins to take form in their chest, growing as their last vestige of masculinity shrinks into a clit, the rest replaced with engorged labia, dripping excessively down their legs and onto the floor beneath them. It is safe to say that they became fully female as their, or her, maw got relentlessly assaulted by this beast of a male, cock so thick she has to open it to its full limit to fit all of that girth inside, with the alpha's balls heavily swinging back and forth with each thrust. Such a rapid transformation offers an evident conclusion, that this alpha husky is not only physically stronger, he is also far more infectious than others, [bold type]dangerously so[roman type], commanding utmost caution.";
		say "     Neither of them have noticed you so far, though there is still a remote possibility that, were you to intervene, you could save the now female husky from certain enslavement. Losing this fight could, however and most certainly, carry [bold type]permanent consequences[roman type] for yourself.";
		say "Knowing this, [bold type]what do you wish to do[roman type]?";
		let Husky_BadEnd_Choices2 be a list of text;
		add "Confront the husky." to Husky_BadEnd_Choices2;
		add "Retreat unnoticed." to Husky_BadEnd_Choices2;
		let Husky_BadEnd_Choice2 be what the player chooses from Husky_BadEnd_Choices2;
		if Husky_BadEnd_Choice2 is:
			-- "Confront the husky.":
				LineBreak;
				say "     You won't let this keep happening while you have something to say about it. What if there are more of them? What if there [italic type]could[roman type] be more of them? Saving this person is not only a good deed, it could also help keep your travels safer. You vault over your immediate obstacle and call out to the alpha husky, as you do not want to risk hurting the female. Standing now in his plain sight, he... does not stop doing what he's doing, merely looking at you with a grin. 'An audience! Or are you getting in line?' he taunts, and you respond by threatening him, announcing your intentions clearly. 'Picking up a fight with me, are you? I'm a bit busy here, but...' he then pushes the female away, his thick cock bobbing as he takes a step towards you. His stance suggests that he knows how to handle himself in a fight. 'You're a better catch, anyway.' The alpha husky smirks, exuding confidence, his canine dick throbbing as he takes another step in your direction. You look at the female, she seems stunned at first, confused, but a moment of clarity prompts her to run once the male turns away from her.";
				say "     Now, it is you who are in a predicament...";
				now inasituation is true;
				SetHunterHuskyStats;
				challenge "Husky Alpha";
				ResetAlphaHuskyStats;
				now inasituation is false;
				if fightoutcome < 20: [player won]
					say "     He did not stand a chance against you, an expert survivalist in this apocalypse. 'Y-you... h-how? I've... never lost a fight...!' he protests as he's crouched down, barely able to stand. 'You'll pay for this humiliation... Just you wait!' With that, he uses what remains of his strength to flee with his tail between his legs. Well now, you're capable and dangerous! Others should think twice before getting in your way, and with a good deed done, you take a deep breath, feeling better and proud about yourself.";
					SanBoost 50;
					XPGain 50;
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     The more time you spend next to this husky, the more you understand his nature. You cannot compete with his strength, therefore, the only way is to submit. A simple truth that comes easily into your mind as you stare back at him, your will to fight waning away, your defenses stripped. You are vulnerable, a thing to own, waiting to be claimed, and you don't know why you have ever thought otherwise. This mindset cripples into your brain like an infectious disease, intoxicating you with the need to serve... to kneel. He knows this, that cocky grin makes it obvious. He's won, as predicted. 'Stay put, now... I'm taking over. You don't have to struggle anymore,' he says with a fake comforting tone, approaching you with a lust-crazed look in his eyes.";
					say "     He easily overpowers your tired body, forcing you to look at him, your eyes locked on his. Every trace of resistance fades away from you as that commanding gaze has this almost supernatural way to subdue. A clawed thumb brushes against your lips as you see, from the corner of your eye, his erection throbbing, eager to be put to work. 'You're so much better than that other one... Can't wait to make you prettier,' the husky says as he then takes a hand onto his canine member, pushing it against your mouth as he holds the back of your head. Another push, as you find yourself wrapping your lips around his dick, thick and leaking with a taste that you find... compelling. It doesn't take long for you to start sucking on it with enthusiasm, forgetting yourself as nothing else seems to matter.";
					WaitLineBreak;
					say "     'Eager little bitch... I'll just let you work.' He crosses his arms as he looks at you, indeed, doing all the work, moving your mouth back and forth along his shaft, blowing him off on your own volition. Maybe this is what you wanted all along. Maybe you should've just submitted as soon as you saw this clearly superior male, the pinnacle of masculinity right before you. He is pleased with your dedication, and thus, you continue unabated, yearning to hear his praises for your good work. 'Mmh, that's a good cocksucker... Deeper,' he commands, and you oblige, taking more and more of his dick inside your mouth until all but his knot remains. You reach out for yours to stroke, but... you find something else as you touch yourself, realizing your hips got wider as your cock shrunk. All the masculinity in you is disappearing... It doesn't matter though, if this is the form he prefers.";
					say "     'Yeah... fuck, you're so hot... and you keep getting hotter...' his words are said with truth to them, as his cock keeps throbbing all the way, with an incredible amount of precum coating your tongue every time it leaks. Your chest becomes increasingly more sensitive, and eventually, your penis is no more than a little nub, accompanied by a wet, dripping pussy that feels strange to touch, at first, but really, really good once you get used to it. You let out a moan with a voice that you feel is not yours, more high pitched, a lighter resonance to it. He grins as he sees you rediscovering yourself, knowing what you are becoming. 'Don't stop... Mmh, now's the best part...'";
					WaitLineBreak;
					say "     He means your chest, clearly, as it begins to swell, somehow causing your entire body to shiver in pleasure. It could've been a modest size, but your new breasts continue to grow, further and further... into such a respectable rack. You could swear the husky's cock grew even harder at seeing this, leaking and pulsating inside your mouth even more than before. 'Ghhr, look at that... you're such a pretty girl now... my perfect bitch...' he utters as he takes a deep breath, truly admiring your new feminine figure. 'I don't think I'll ever get enough of you...' With that said, the husky unfolds his arms and grabs your head, his tail wagging excitedly behind him. Almost immediately, you feel him thrust deep against your throat, the brief moment you had some remnant of control now gone.";
					say "     Never mind your need to breathe, he cares only to fuck your throat as hard as he can, lost in his own pleasure, his tongue lolling out as he pants, bliss overtaking him. You fight against your gag reflex with teary eyes, saliva running down the corners of your mouth, your eyes rolling up, your mind numb... but you cannot think of anything but bliss right now. Your feminity is solidified, the last details taking their place as your pretty round face and lustrous hair attain their final forms, the mere sight throwing this alpha husky into a rut. He keeps thrusting relentlessly, deep, forcing you to swallow his canine member down to the knot. Fortunately, he stops there, but only to take a deep breath as you feel more precum leaking onto your tongue.";
					WaitLineBreak;
					say "     The husky slows down for a bit, trying to catch his breath as his cock pulsates harder than ever, his knot swelling as he reaches the very edge of his orgasm. You look up at him, hazed in your own overwhelming lust for him, and continue to suck on it, encouraging him to let go. He does as his grip tightens around your head, pulling to against his knot as he cums directly into your throat. If it was hard to think before, now you find yourself in a sea of bliss and joy, like you have just found the place where you truly belong. With each spurt, a thick gush of cum travels down your gullet as you swallow, causing you to feel something below your belly. A craving of sorts, something that needs to be filled... your womb.";
					say "     'I'll be keeping you...' he utters, panting after his orgasm subsides, 'you won't have to worry about anything.' He then urges you to stand up by grabbing your chin, pulling you to him for a kiss. It isn't gentle, he is rough with it, dominant, like he owns you. He does. 'You'll be joining the others, but I think you'll become my favorite...' the husky whispers, kissing you again, licking your face, his strong, fur-coated body embracing you, a warmth you don't want to see yourself without. 'A shame the other one has fled, but oh well... you'll do better. I'll collar you, pick a nice name for you, then knock you up at least twice a day. You'd like that, wouldn't you?' he asks you, almost as if he was talking to a dog. And you can't say no, because... you like it. You want all of that. You want his attention, his praising, his domination...";
					say "     At last, he puts his furred arm around your neck as you two walk out of here. 'Let's go home. I'll finish claiming you there.'";
					trigger ending "Womanized Husky Slut";
					end the story saying "You've been turned into a receptive feminine husky slut!";
				else if fightoutcome is 30: [fled]
					say "     Seeing this is probably too much to handle right now, you perform an evasive maneuver that leaves the husky blinking away in confusion, then start running. You hear him taunt you in the distance, and he chases you for a while, but you're faster and manage to lose him with a few creative diversions. Well now, it is best to take note of these hunting grounds and, perhaps, be more careful in the future.";
			-- "Retreat unnoticed.":
				LineBreak;
				say "     This is more trouble than it's worth, and for someone who should've been more careful, like you. You are careful to not fall into situations like these, right? Well, you are cautious now, so you sneak out of here and hope you shall not cross paths with this one again.";
		now Womanizing Husky is resolved;


Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Womanized Husky Slut"	"BadEnd"	"Sex Slave"	Womanized Husky Slut rule	20	false

This is the Womanized Husky Slut rule:
	if ending "Womanized Husky Slut" is triggered:
		say "     The alpha husky that captured you continued to break down both your mind and body. Eventually, he was able to build you into his perfect submissive feminine partner, forgetting your previous masculine self entirely.";
		the Player is enslaved;

Husky BadEnd ends here.
