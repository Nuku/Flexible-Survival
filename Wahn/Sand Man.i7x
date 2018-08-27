Version 1 of Sand Man by Wahn begins here.
[Version 1.3 - ending fixed]

"Adds a Male Sand Man to Flexible Survival's Wandering Monsters table, with impreg chance"

SandManFirstEncounter is a number that varies. SandManFirstEncounter is usually 0.

when play begins:
	add { "Sand Man" } to infections of guy;

Section 1 - Monster Responses

to say sandman wins:
	say "     Defeated, you stop struggling and the sand man pulls you in for a deep kiss, his lips touching yours with a tickling feeling. '[if player is male]Dude[else]Sweetie[end if], now let's have some fun!' He leads you over to a large towel lying nearby in the sand, then pulls off your clothes and lowers you on it to lie on your back.";
	if player is male:[male + herm]
		say "     Kneeling between your legs, he runs his hands down your body, caressing your prone form. Then he leans in to lick over your nipples and kiss your stomach before moving his hands to your legs and lifting them over his shoulders. With a softly spoken 'Relax, baby.' he puts his hard manhood against your asshole and starts pushing in against your pucker, slowly but surely until his cockhead pops in. Accompanied by his hands softly stroking up and down your legs, he sinks more and more into you until he finally bottoms out, his balls tickling your skin.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you, then he starts grinding his hips against your crotch. Thrusting in and out, the feeling of his slightly rough member rubbing your insides has you gasping in lust in no time, grabbing the towel with both hands to hold on to something as you writhe around. Your sandy beach lover has quite some technique, often changing the angle in which he slides into you to rub sensitive spots you barely knew you had. Fucking you with deep thrusts, then pausing for a while and just caressing your body as you get too close to orgasm, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for now.";
		say "     Then, after you don't know how long, he takes out all the stops, pulling out till only the tip of his cock remains inside you and slamming it all the way in again, followed by quick and hard thrusts that quickly drive you over the edge. You shout in pleasure as your balls tighten and long strings of cum shoot from your [cock of player] shaft all over your stomach and chest. The sand man stud isn't far behind with his own orgasm, burying his whole cock deep inside you a final time and pumping a huge load of his seed deep into your asshole.[mimpregchance]";
		WaitLineBreak;
		say "     He rests a moment to catch his breath with his slowly softening cock still inside you, then leans over you and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, you feel the sand man pull out of you carefully, then see him walk off along the beach looking for new conquests as you doze off.";
	else if player is female:[female]
		say "     Kneeling between your legs, he runs his hands down your body, caressing your prone form. Then he leans in to lick over your nipples and kiss your stomach before moving his hands to your legs and lifting them over his shoulders. With a softly spoken 'Relax, baby.' he puts his hard manhood against your pussy lips and rubs it against them, then slowly but surely pushes his cockhead into your moist hole. Accompanied by his hands softly stroking up and down your legs, he sinks more and more into you until he finally bottoms out, his balls tickling your skin.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you, then he starts grinding his hips against your crotch. Thrusting in and out, the feeling of his slightly rough member rubbing your insides has you gasping in lust in no time, grabbing the towel with both hands to hold on to something as you writhe around. Your sandy beach lover has quite some technique, often changing the angle in which he slides into you to rub sensitive spots you barely knew you had. Fucking you with deep thrusts, then pausing for a while and just caressing your body as you get too close to orgasm, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for now.";
		say "     Then, after you don't know how long, he takes out all the stops, pulling out till only the tip of his cock remains inside you and slamming it all the way in again, followed by quick and hard thrusts that quickly drive you over the edge. You shout in pleasure as your pussy starts dripping with femcum, part of it absorbed by his member, the rest running down to soak into the towel below. The sand man stud isn't far behind with his own orgasm, burying his whole cock deep inside you a final time and pumping a huge load of his seed directly into your womb.[fimpregchance]";
		WaitLineBreak;
		say "     He rests a moment to catch his breath with his slowly softening cock still inside you, then leans over you and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, you feel the sand man pull out of you carefully, then see him walk off along the beach looking for new conquests as you doze off.";
	else:[neuter]
		say "     Kneeling between your legs, he runs his hands down your body, caressing your prone form. Then he leans in to lick over your nipples and kiss your stomach before moving his hands to your legs and lifting them over his shoulders. With a softly spoken 'Relax, baby.' he puts his hard manhood against your asshole and starts pushing in against your pucker, slowly but surely until his cockhead pops in. Accompanied by his hands softly stroking up and down your legs, he sinks more and more into you until he finally bottoms out, his balls tickling your skin.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you, then he starts grinding his hips against your crotch. Thrusting in and out, the feeling of his slightly rough member rubbing your insides has you gasping in lust in no time, grabbing the towel with both hands to hold on to something as you writhe around. Your sandy beach lover has quite some technique, often changing the angle in which he slides into you to rub sensitive spots you barely knew you had. Fucking you with deep thrusts, then pausing for a while and just caressing your body as you get too close to orgasm, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for now.";
		say "     Then, after you don't know how long, he takes out all the stops, pulling out till only the tip of his cock remains inside you and slamming it all the way in again, followed by quick and hard thrusts that quickly drive you over the edge. You shout in pleasure as your whole body is filled with a deep feeling of satisfaction. The sand man stud isn't far behind with his own orgasm, burying his whole cock deep inside you a final time and pumping a huge load of his seed deep into your asshole.[mimpregchance]";
		WaitLineBreak;
		say "     He rests a moment to catch his breath with his slowly softening cock still inside you, then leans over you and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, you feel the sand man pull out of you carefully, then see him walk off along the beach looking for new conquests as you doze off.";

to say sandman loses:
	say "     The sand man takes a step back and raises his hands in a pacifying gesture. 'Ok, ok - I give up. You can be on top when I fuck you.' Judging from the hard bulge in his speedos, it doesn't even seem to occur to him that your fight might have been anything other than a sex game for dominance. He's pretty single-minded in his expectation of getting sex with anyone on the beach.";
	if player is male:
		LineBreak;
		say "     Looking over the handsome sand man, you could either mount his cock with you on top [link](1)[as]1[end link], turn the tables and fuck him [link](2)[as]2[end link], try to teach him a painful lesson to leave you alone in the future [link](3)[as]3[end link] or just go [link](4)[as]4[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] to fuck him, [link]3[end link] to knee him or [link]4[end link] to just leave.";
		if calcnumber is 1:[mount his cock]
			say "[sandman ride]";
		else if calcnumber is 2:[fuck him in the ass]
			say "[sandman fucked]";
		else if calcnumber is 3:[knee him in the crotch]
			say "     Calmly stepping up to the beach stud, you tell him that sometimes he should take the hint when someone is not interested... and then you knee him in the groin, leaving him to sink to his knees in a pained whimper as you walk away. Its doubtful that he'll learn anything from this and actually stop bothering you the next time you meet, though there's something oddly satisfying in leaving this pushy guy on his knees and holding his crotch.";
		else:[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised and disappointed beach stud behind.";
	else:
		LineBreak;
		say "     You consider getting a ride on that cock of his ([link]Y[as]y[end link]) or just leaving ([link]N[as]n[end link]). ";
		if player consents:
			say "[sandman ride]";
		else:
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised and disappointed beach stud behind.";

to say sandman ride:
	say "     As you agree to taking a ride on the beach stud's manhood, he smiles and pulls you in for a deep kiss, his lips touching yours with a tickling feeling. '[if player is male]Dude[else]Sweetie[end if], now let's have some fun!' He leads you over to a large towel lying nearby in the sand and pulls off your clothes followed by his own speedo.";
	if player is male:[male + herm]
		say "     Lying down on the towel, he leans back on his elbows and spreads his legs, showing off his proudly standing erection. Then he reaches for it with one hand and strokes its shaft, saying 'I'm all ready for you baby. Can't wait to feel you around me.' Eager for a good fucking, you kneel over him with your legs on both sides of his hips, then lower yourself till the tip of his cock touches your pucker.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you as he puts his hands on your hips and softly pulls you downwards. Doing your best to relax, you nevertheless give a small gasp as the tip of his manhood pops into your body and a pleasant feeling of fullness comes upon you. You keep going, sinking further and further onto his magnificent shaft, until your hips touch and you feel his slightly rough skin against your cheeks.";
		say "     After a moment's worth of reveling in your intimate connection, your beach lover starts grinding his hips against your crotch. Not to be outdone, you join him in his movements, pulling off partway and then impaling yourself again fully on his cock. The feeling of his slightly rough member rubbing your insides has you moaning in lust in no time, leaning forward and grabbing the towel with both hands to hold on to something as your bodies slap against each other. Your sandy beach lover proves to have expert technique, often changing the angle of his upward thrusts slightly to rub sensitive spots you barely knew you had.";
		WaitLineBreak;
		say "     Each time you speed up as you feel your orgasm approaching, he raises his upper body to embrace and kiss you, holding you tight and slowly caressing your body. With these pauses in the hot and heavy action, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for a moment.";
		say "     Then finally, you just can't hold back any more, pulling out till only the tip of his cock remains inside you and slamming down on it all the way again, followed by quick and hard bouncing up and down on his shaft. It doesn't take long till that drives you over the edge, shouting in pleasure as your balls tighten and long strings of cum shoot from your [cock of player] shaft all over your partner's stomach and chest. The sand man stud isn't far behind with his own orgasm, pulling you down against his hips, his cock pumping a huge load of his seed deep into your asshole.[mimpregchance]";
		WaitLineBreak;
		say "     As you rest a moment to catch your breath, his slowly softening maleness still inside you, he leans up and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, the sand man embraces you again and rolls the both of you over so you're lying on the towel now. Pulling out of you carefully, he gives you a seductive smile, then walks off along the beach looking for new conquests. You just stay there on the towel for a while and doze off for a nap.";
	else if player is female:[female]
		say "     Lying down on the towel, he leans back on his elbows and spreads his legs, showing off his proudly standing erection. Then he reaches for it with one hand and strokes its shaft, saying 'I'm all ready for you baby. Can't wait to feel you around me.' Eager for a good fucking, you kneel over him with your legs on both sides of his hips, then lower yourself till the tip of his cock touches your nether lips.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you as he puts his hands on your hips and softly pulls you downwards. You give a small gasp as feel the tip of his rock-hard manhood spread your lips and enter your body. You keep going, sinking further and further onto his magnificent shaft, until your hips touch and you feel his slightly rough skin against your cheeks.";
		say "     After a moment's worth of reveling in your intimate connection, your beach lover starts grinding his hips against your crotch. Not to be outdone, you join him in his movements, pulling off partway and then impaling yourself again fully on his cock. The feeling of his slightly rough member rubbing your insides has you moaning in lust in no time, leaning forward and grabbing the towel with both hands to hold on to something as your bodies slap against each other. Your sandy beach lover proves to have expert technique, often changing the angle of his upward thrusts slightly to rub sensitive spots you barely knew you had.";
		WaitLineBreak;
		say "     Each time you feel an orgasm approaching, you speed up your movements on his shaft with growing urgency and need. When you come, he raises his upper body to embrace and kiss you, holding you tight and slowly caressing your body until you're ready to go on. With such patient pauses in the hot and heavy action, he keeps the both of you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for a moment.";
		say "     Then finally, he can't hold back any more, urging you to pulling out till only the tip of his cock remains inside you and slamming down on it all the way again, followed by quick and hard bouncing up and down on his shaft. That quickly drives him over the edge and grinding your hips together tightly, his cock starts shooting a huge load of cum directly into your womb.[fimpregchance]";
		WaitLineBreak;
		say "     As you rest a moment to catch your breath, his slowly softening maleness still inside you, he leans up and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, the sand man embraces you again and rolls the both of you over so you're lying on the towel now. Pulling out of you carefully, he gives you a seductive smile, then walks off along the beach looking for new conquests. You just stay there on the towel for a while and doze off for a nap.";
	else:[neuter]
		say "     Lying down on the towel, he leans back on his elbows and spreads his legs, showing off his proudly standing erection. Then he reaches for it with one hand and strokes its shaft, saying 'I'm all ready for you baby. Can't wait to feel you around me.' Eager for a good fucking, you kneel over him with your legs on both sides of his hips, then lower yourself till the tip of his cock touches your pucker.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you as he puts his hands on your hips and softly pulls you downwards. Doing your best to relax, you nevertheless give a small gasp as the tip of his manhood pops into your body and a pleasant feeling of fullness comes upon you. You keep going, sinking further and further onto his magnificent shaft, until your hips touch and you feel his slightly rough skin against your cheeks.";
		say "     After a moment's worth of reveling in your intimate connection, your beach lover starts grinding his hips against your crotch. Not to be outdone, you join him in his movements, pulling off partway and then impaling yourself again fully on his cock. The feeling of his slightly rough member rubbing your insides has you moaning in lust in no time, leaning forward and grabbing the towel with both hands to hold on to something as your bodies slap against each other. Your sandy beach lover proves to have expert technique, often changing the angle of his upward thrusts slightly to rub sensitive spots you barely knew you had.";
		WaitLineBreak;
		say "     Each time you speed up as you feel your orgasm approaching, he raises his upper body to embrace and kiss you, holding you tight and slowly caressing your body. With these pauses in the hot and heavy action, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for a moment.";
		say "     Then finally, you just can't hold back any more, pulling out till only the tip of his cock remains inside you and slamming down on it all the way again, followed by quick and hard bouncing up and down on his shaft. It doesn't take long till that drives you over the edge, shouting in pleasure as a feeling of fulfillment spreads through your whole body. The sand man stud isn't far behind with his own orgasm, pulling you down against his hips, his cock pumping a huge load of his seed deep into your asshole.[mimpregchance]";
		WaitLineBreak;
		say "     As you rest a moment to catch your breath, his slowly softening maleness still inside you, he leans up and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, the sand man embraces you again and rolls the both of you over so you're lying on the towel now. Pulling out of you carefully, he gives you a seductive smile, then walks off along the beach looking for new conquests. You just stay there on the towel for a while and doze off for a nap.";

to say sandman fucked:
	say "     As you agree to someone getting fucked, he smiles and pulls you in for a deep kiss, his lips touching yours with a tickling feeling. 'Dude, now let's have some fun!' He leads you over to a large towel lying nearby in the sand and pulls off your clothes followed by his own speedo.";
	WaitLineBreak;
	say "     Then you derail his plans by pushing him down onto his knees and bending his upper body forward till he's on all fours. Your handsome beach lover gets out a 'What are you do-' until you move into position behind him and bury your cock all the way in his asshole in one deep thrust. He's pretty tight and the slight roughness of his insides against your manhood gives you an interesting feeling. Even though he's clearly not used to getting shafted in the ass, your anal invasion quickly has him moaning and gasping in pleasure as you bump his prostrate again and again.";
	say "     Turning the tables on this beach-side Don Juan makes fucking him even more delicious, making you smile with each lust-filled gasp as your hips slap against his cheeks. Soon you drive him over the edge and he orgasms, spraying the towel below with a large load of cum. The sand man's tight hole twitches and contracts even more around your shaft as he comes, and the additional stimulation gives you the rest too, making you fill your little beach boy with spurt after spurt of your seed.";
	WaitLineBreak;
	say "     Catching your breath, you hold on to his hips for a moment, then pull out of his asshole. There's something very satisfying about the little moan he gives as you leave his body and the thin line of cum connecting the tip of your cock to his hole for a moment before it drips on the towel. Giving his cheeks a last grope and a little slap, you say 'Nice ass, beach boy' and walk off, leaving him lying on his towel, still a bit dazed and surprised about what happened to him.";

to say sandmanDesc:
	setmongender 3;
	if SandManFirstEncounter is 0:
		say "     Walking over the beach, you come upon a large towel on which a handsome man lies sleeping, wearing nothing but a pair of stylish sunglasses and tight speedos. He has a ripped body and nice muscles - and is sculpted from sand. Amazingly life-like, even up to the hairs which almost look like they consist out of single strands. He's got even the smallest details a human would have...";
		LineBreak;
		say "     Stepping closer and closer to look at this amazing work of beach sculpture, your looks invariably wander down towards the bulge in its speedos as you wonder if the sculpture might even be fully anatomically correct. Then suddenly, he starts to move, turning his head towards you as one hand suggestively grabs the front of his speedo. 'What a delightful creature wakes me from my slumber. Wanna see it? How about a private demonstration here on my towel...'";
		LineBreak;
		say "     With that, he gets up and walks towards you, a lustful smile on his face.";
		now SandManFirstEncounter is 1;
	else:
		say "     You cross paths with a handsome beach stud wearing nothing but a pair of stylish sunglasses and a pair of tight speedos on his sculpted body. Perfectly sculpted into an Adonis-like shape that is - out of finely grained sand. He takes a striking pose in front of you and runs a hand through shoulder-length hair. '[one of]Wanna make out in the dunes, baby?'[or]You're even more beautiful up close. Let's do it - right here.'[or]Hey baby, you're hot. I can't wait to hold you in my arms.'[or]How about a little fling in the sand? No strings attached.'[or]Beach Patrol. Do you know mouth-to-mouth resuscitation? Come here and I'll show you how it's done.'[at random]";

Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Sand Man";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]He hits you in the head, strong enough to daze, but not hurt you.[or]He grabs your arm for a moment, pulling you in for a quick kiss.[or]He embraces you and gives your ass a quick grope before you can pull away.[at random]";
	now defeated entry is "[sandman loses]";
	now victory entry is "[sandman wins]";
	now desc entry is "[sandmanDesc]";
	now face entry is "smooth, with sculpted angular features. A stylish pair of sunglasses sits over your eyes and flowing locks made of fine sand behaving like it was strands of hair surround your face";
	now body entry is "that of an idealized male, with washboard abs and muscled arms and legs";
	now skin entry is "fine white sand, making up your body and"; [ format as "You have (your text) skin"]
	now tail entry is "You have a round, firm bubble butt. A tight black speedo draws others['] looks to it."; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a chiseled male visage. A stylish pair of sunglasses coalesces out of a swirl of dust in front of your eyes"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a muscled male form and your chest takes an idealized shape with washboard abs"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "it takes on the texture of very fine sand, formed into shape like normal skin and covering your whole body without blemishes or hair"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it takes the well-rounded shape of an idealized bubble butt. A black speedo coalesces out of a swirl of dust around your hips, covering your curves"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your manhood becomes human-shaped"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 18;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 60;
	now lev entry is 8;
	now wdam entry is 8;
	now area entry is "Beach";          [ Case sensitive]
	now cocks entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 14;
	now cock width entry is 5;          [ Size of balls ]
	now breasts entry is 2;             [ Number of nipples. ]
	now breast size entry is 0;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "sculpted";      [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "sculpted";       [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Section 3 - Endings

when play ends:
	if bodyname of player is "Sand Man":
		if humanity of player < 10:
			say "As you succumb to the infection, you move to the beach and spend all your time there from then on, propositioning any person creature you find - and even mostly getting what you want given your good lucks and charming single-mindedness. When the military moves in a while later, you have some intimate contacts with a female soldier scouting the beach and later two of her friends, a man and a women, whom she brings to see you. Together, they decide to smuggle you out of the city to enjoy your company once they're back at their home base. So soon, after being given a shot to make you non-infectious, you find yourself in a shipping crate on a truck.";
			say "Thankfully, your new form doesn't really need to breathe, otherwise this would be pretty uncomfortable. After arriving at your destination, they release you on a small beach, where you spend your time getting regular visits from your soldier friends and also have fun with anyone else who comes along.";
			stop the action;   [no other succumb endings, as the player isn't in the city anymore]
		else:
			say "When the military finally moves in, you're brought to a holding facility like so many others and have to spend quite a while waiting for the doctors to have a look at you. When they finally do, they're a bit nonplussed, with you no longer being an organic life-form, but rather mineral. They give you the regular shot to make you non-infectious, which thankfully works, then send you over to a nearby research lab to be thoroughly prodded and poked for a few days. As it turns out, your new form doesn't actually need to breathe - and neither does it age, which is a nice plus.";
			say "You find your way towards sunny Florida over the next few months, where you end up as a part-time fireman, part time treasure hunter. For both, not needing air is a definite plus - no problems with smoke inhalation, and being able to just walk along the ocean floor, you find many interesting wrecks... old ones, or those that only found their way to the bottom during the nanite infection spread. And hanging around in the sun on a beach, watching the local male and female cuties as your water-logged form dries out again is the ideal way to end any day...";

Sand Man ends here.
