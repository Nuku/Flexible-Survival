Version 1 of Fennec by Stripes begins here.
[ Version 1.1 - Alternate variation for vaginal and anal loss scenes added. ]

"Adds a Fennec creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Fennec" } to infections of guy;
	add { "Fennec" } to infections of furry;
	add { "Fennec" } to infections of Vulpinelist; [list of vulpine infections]


to say fennecdesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     [one of]The grass near you rustles and[or]You spot a pair of large, pointed nears moments before[or]You hear an excited yip as[at random] a vulpine creature pops out from cover and moves towards you. He is a short, slender male, roughly five and a half feet tall before you add on several more inches for his very large ears. His ears are nearly as big as his small head and narrow muzzle. His fur is a light tan color to blend into the dry grasses out here. He moves with agility as he yips and comes at you, the tip of his growing erection poking free of his furry sheath. Given the size of it, you'd guess he's hung about as well as any normal man would be.";


to say losetofennec:
	if HP of player > 0:
		say "     The fennec fox yips happily as you stop resisting and let him push you to the ground. ";
	else:
		say "     The fennec fox yips triumphantly as he knocks you to the ground and you're too weak to keep resisting him. ";
	say "     The small fox pounces atop you, running his paws over your body and quickly pulling off your gear. This he intersperses with playful gropes, caresses and pinches that work to get you excited. Slipping a paw between your legs, he ";
	if player is herm:
		say "fondles your cock and balls before sliding further to finger your pussy, eliciting a moan in response.";
		if a random chance of 5 in 7 succeeds:
			say "[fennecvag]";
		else if a random chance of 3 in 5 succeeds and scalevalue of player < 4:
			say "[fennec69]";
		else:
			say "[fennecoral]";
	else if player is male:
		say "fondles your cock and balls before stroking along your maleness, eliciting a moan in response.";
		if ( anallevel > 1 and a random chance of 1 in 3 succeeds ) or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
			say "[fennecanal]";
		else if a random chance of 3 in 5 succeeds and scalevalue of player < 4:
			say "[fennec69]";
		else:
			say "[fennecoral]";
	else if player is female:
		say "slides his fingers along your wet folds before slipping into you to frig your pussy, eliciting a moan in response.";
		if a random chance of 2 in 3 succeeds:
			say "[fennecvag]";
		else:
			say "[fennecoral]";
	else:
		say "discovers your bare groin and caresses it while making a sad but soothing sound.";
		if a random chance of 2 in 3 succeeds:
			say "[fennecanal]";
		else:
			say "[fennecoral]";


to say fennecvag:
	if a random chance of 1 in 2 succeeds:
		say "     Once he's satisfied he's gotten you sufficiently worked up, the little guy moves atop you, pressing his vulpine cock to your wet folds. He pushes it into you with a high-pitched yip and starts pumping into you hard and fast[if breast size of player > 0]. He nuzzles and licks at your bosom, playfully nipping at your nipples as he fucks you[end if]. As the eager little fellow pounds away at you, you can't help but grow increasingly eager to have him continue[if cunt width of player < 4], even pushing your hips firmly upwards as he tries to knot with you[else], eagerly pushing your hips upwards to take his knot into your wide cunt[end if]. Once tied with you, the fox works his hips in fast, short strokes as his cock pulses inside you, filling you with spurt after spurt of his virile seed. After his knot goes down, the cute fox gives you a few playful nips and heads off with a happy bounce in his step.[impregchance]";
	else:
		say "     After getting you good and worked up, he rolls you over onto all fours. Eager for sex at this point, you don't resist and even wiggle your rear tantalizingly for the desert vulpine. He yips excitedly and mounts you, his cock finding its way into your pussy after a few seeking thrusts. You moan as his shapely fox cock slides into you, hot and throbbing in the slick grip of your folds.";
		say "     As the lustful fox humps away energetically, he nips at your neck, shoulders and ears[if breast size of player > 0]. A paw finds its way to your breast, groping your tit and tweaking your nipple[end if]. Soon you're moaning and yipping beneath him as he fucks your juicy cunt with that wonderful cock of his. Oh, it's just what your body needs. You grind back into each thrust he makes and he's able to drive his knot into you, tying with you. His hips pound with short, fast strokes even as you orgasm, clenching down all the tighter around that swollen bulge of fox flesh. He doesn't last much longer past that, giving a sharp yip as he climaxes, filling you with spurt after spurt of his virile seed. Once his knot goes down, the cute-eared fox gives you a tongue-filled kiss before heading off with a proud swagger.[impregchance]";


to say fennec69:
	say "     Once he's satisfied he's gotten you sufficiently worked up, the little guy moves himself atop you, bringing his throbbing cock to your face. Feeling the fox's tongue slide across your glans, you moan and respond by guiding his cock into your mouth before you can consider doing otherwise. His vulpine shaft throbs in your mouth, leaking precum onto your tongue. The exciting, exotic taste gets you thirsty for more and you suckle eagerly. His muzzle and tongue tend to you in return, setting you to thrusting gently [if cock length of player < 24]into your impromptu lover's mouth[else]as the smaller fennec tries his best to lick over the entirety of your massive [cock of player] erection[end if]. You do your best to please one another until finally you cannot hold back and you blast your hot load into the fennec's open muzzle[if cock width of player > 40]. Your excessive output is too much for the thirsty fox, eventually overflowing from his mouth after bloating his belly[else if cock width of player > 20]. The thirsty fox gulps down all he can get, accepting it all even to the point that it causes his belly to swell[else]. The thirsty fox gulps down all he can get, eagerly lapping your cock for all the cum you'll give[end if]. After getting his delicious drink, he resumes thrusting into your mouth, returning the favor with a creamy load of fennec cum. savoring its exotic taste, you swallow it down without thinking. The cute fox, feeling much better after his refreshing drink, heads off with a happy bounce in his step.";


to say fennecoral:
	if breast size of player > 1 and a random chance of 2 in 5 succeeds:
		say "     Once he's satisfied he's gotten you sufficiently worked up, the little guy moves atop you, pressing his cock between your [breast size desc of player] tits. He teases and rubs your nipples as he holds your breasts around his cock, thrusting eagerly between your mounds. His precum dribbles between them, helping to give a smooth, slick passage for his erection. His playful fingers at your nipples has you moaning [if breast size of player < 10]and you lean your head forward to lick at his shaft at the end of each thrust[else]as he plows into the soft embrace of your huge melons[end if]. As he's about to finish up, he releases your breasts and pumps his own cock quickly, spraying his hot load across your bosom and face. Quite worked up by now, you lick up as much of it as you can get, savoring its exotic flavor. As you clean yourself up, the fox heads on his way, seeming quite pleased with himself.";
	else:
		say "     Standing beside you, the fennec guides your head to his groin. Pressing his cock to your face, you take in his exotic scent and lick your lips, brushing against his shaft at the same time. After the first lick, you find yourself wanting more and give him another lick, followed by another. Soon, you've got the vulpine penis in your mouth and you're bobbing your head eagerly. He yips happily as you give him a blow job, rubbing his paws over your head. You work your tongue, palate and throat over the pulsing shaft, giving his knot a gentle squeeze in your hand as it swells up. This finally pushes him over the edge and he pumps his hot load into your mouth. Finding your mouth filled with his exotic flavor, you eagerly gulp it down and continue sucking him off to get all you can. Once his balls are drained, he gives your head a friendly pat and heads on his way, leaving you to tend to yourself.";


to say fennecanal:
	if a random chance of 1 in 2 succeeds:
		say "     Once he's satisfied he's gotten you sufficiently worked up, the little guy pushes you over onto all fours and climbs atop you, pressing his vulpine cock to your pucker. He pushes it into you with a high-pitched yip and starts pumping into you hard and fast[if breast size of player > 0]. He reaches around to grope your bosom, playfully teasing your nipples as he fucks your back door[end if]. As the eager little fellow pounds away at you, you can't help but grow increasingly eager to have him continue[if scalevalue of player < 4], even pushing your hips firmly back as he tries to knot with you[else], eagerly pushing your hips back to take his knot into your larger body[end if]. Once tied with you, the fox works his hips in fast, short strokes as his cock pulses inside you, filling you with spurt after spurt of his virile seed. After his knot goes down, the cute fox gives you a few playful nips and heads off with a happy bounce in his step.[mimpregchance]";
	else:
		say "     After getting you good and worked up, he takes your legs and raises them up, raising your rear and putting your waiting pucker on display. Eager for sex at this point, you don't resist and even help hold your hips raised by supporting them with your hands. He yips excitedly and moves into position, his cock finding its way into your exposed anus after a few seeking thrusts. You moan as his shapely fox cock slides into you, hot and throbbing in the snug grip of your asshole.";
		say "     As the lustful fox humps away energetically, you can't help but get increasingly aroused. The fox creature becomes beautiful to you as you watch him fuck you so well. His slender build, his soft fur, his cute ears, and especially that wonderful cock of his. Oh, it's just what your body needs. Soon you're moaning and yipping beneath him as he fucks your back door, your hips squeezing and wiggling as best you can from your position as he seeks to drive his knot into you. When he manages to tie with you, you cry out [if player is male]in orgasm[else]as a rush of unfocused physical pleasure washes over you[end if], your rectal walls clenching down all the tighter around that swollen bulge of fox flesh. He doesn't last much longer past that, giving a sharp yip as he climaxes, painting your bowels with spurt after spurt of his virile seed. Once his knot goes down, the cute-eared fox gives you a tongue-filled kiss before heading off with a proud swagger.[mimpregchance]";


to say beatthefennec:
	if libido of player > 25:
		say "     Your final blow sends the fennec tumbling back. He lands on his ass with a pained yip. Feeling [if libido of player > 75]very [else if libido of player > 50]quite [end if]aroused from the excitement, you consider using him for a little stress relief.";
		if player is male:
			say "     [bold type]Shall you mount the fox or let him go?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Mount the fox.";
			say "     ([link]N[as]n[end link]) - Let him go.";
			if player consents:
				say "[fennecvicsex2]";
			else:
				say "     Deciding you'd rather find relief elsewhere than from this random fox, you give him a hard push with your foot and send him scrambling away with a yip.";
		else if player is female:
			say "     [bold type]Spotting his stiff cock, shall you ride that rod or let him go?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Ride his rod.";
			say "     ([link]N[as]n[end link]) - Let him go.";
			if player consents:
				say "[fennecvicsex1]";
			else:
				say "     Deciding you'd rather find relief elsewhere than from this random fox, you give him a hard push with your foot and send him scrambling away with a yip.";
		else:
			say "     But being ill-equipped for any fun, you decide to let him go. You give him a hard push with your foot and send him scrambling away with a yip.";


to say fennecvicsex1:
	say "     With the cute fennec beaten and at your mercy, you decide to take advantage of the opportunity and pin him down with one hand. He gives a fearful yip at your rough treatment, but murrs as you reach back and grab his stiff cock in your other hand. Stroking over his throbbing rod, you move yourself into position and lower your hot pussy down onto his shaft.";
	if cunt length of player < 5:
		say "     Being roughly a normal person's in size, it is a bit of a snug fit for your [cunt size desc of player] pussy, but you do manage to work in as much as you can comfortably take (and maybe even a little more in your eagerness). You work yourself slowly over the fox's erection, moving carefully so it doesn't slip out. This makes for a nice, long ride that you find very enjoyable and quite rewarding when your prey finally cums hard, blasting his hot load right against your cervix so it can seep into your womb. Once you're done with him, you give his ears a scritch and get up, leaving him flopped out there to recover.[impregchance]";
	else if cunt length of player < 12:
		say "     Being roughly a normal person's in size, it is a nice fit for your [cunt size desc of player] pussy. You work yourself eagerly over the fox's erection, moving in steady pushes of your hips down onto it and its growing knot. Having gotten quite excited, you grind down harder and harder, trying to get that thick bulb inside you. When you're finally successful, the fennec gives an excited series of yips and sprays shot after shot of his vulpine seed to fill your womb. Tied to the fox, you have to wait until his knot goes down before you work yourself free. The desert fox takes the opportunity to snuggle with you, running his paws over your body eagerly. Once the tie is released, you give his ears a parting scritch and you both go your separate ways.[impregchance]";
	else:
		say "     Being roughly a normal person's in size, it is an easy fit for your [cunt size desc of player] pussy. You work yourself eagerly over the fox's erection, moving in quick, fast slams to make the most of his less-than-filling size. The fox moans and yips beneath you and you have to place your hands on his shoulders to keep him from squirming around too much. When his knot swells up, it gets somewhat better, but is still not quite enough. Having the knot pop in and out of you is quite enjoyable though and it soon sends the fox over the edge, blasting his hot load into your spacious cunt. Feeling the first quivers of your own orgasm, you slam yourself down onto his knot and clamp down around it as you climax, soaking the fennec's crotch in your juices. Once you're done with him, you pop off his knot, causing him to yip again. You give his ears a scritch and get up, leaving him flopped out there to recover.[impregchance]";


to say fennecvicsex2:
	say "     With the cute fennec beaten and at your mercy, you decide to take advantage of the opportunity and push him over onto all fours. He gives a fearful yip at your rough treatment, but murrs as you reach back and lift his tail. Stroking your stiffening rod against his rear, you move it into position, tapping at the fox's back door.";
	if cock length of player < 8:
		say "     The fennec's tailstar is easily spread open by your hard shaft as the little guy starts pushing himself eagerly onto it. Clearly this little guy's been topped by others before and is more than willing to do it again. Having found an eager playmate, you run your hands over his softly-furred back and rock your hips, thrusting into him as he yips happily. As your excitement grows, you lean over the fox and reach around to stroke his pulsing, dripping cock while you fuck his ass. When he cums, splattering his seed across the ground, his tailhole clamps down around you with each shot. A few of this squeezes are enough to send you over the edge and empty your load into the fox's ass[if cock width of player > 40]. Your [short ball size] orbs drain completely into the little fox, leaving him so bloated with cum he cannot move. Despite this, he seems very pleased with the outcome, only able to release a wet, gurgling yip that overflows with some of your semen[else if cock width of player > 20]. Your hefty load is pumped into him, leaving him plump and bloated with your cum. He seems quite pleased at this and releases a happy yip as he rubs his rounded tummy[else]. You pound into him, releasing shot after shot until your balls are drained[end if]. Finished, you withdraw and give the fox's ears a scritch, leaving him to lie there and recover.";
	else if cock length of player < 16:
		say "     The fennec whimpers and drops his ears as he spots the size of your shaft, but remains in position, letting you thrust into him. It takes a little effort at first to push into the little guy's backside, but it's not too terribly difficult. Clearly this little guy's been topped by others before and is more than willing to do it again, starting to push himself back onto your thrusts. You grip his shoulders for support to better push your large member into the small vulpine's ass. He releases a mix of moans, murrs, yips and whimpers, but always keeps pushing back into your thrusts, enjoying it far more than any minor discomfort your [cock size desc of player] cock may provide his sore ass.";
		say "     Beneath him, his smaller cock pulses and drips with pre while you fuck his ass. When he cums, splattering his seed across the ground, his tailhole clamps down around you with each shot. A few of this squeezes are enough to send you over the edge and empty your load into the fox's ass[if cock width of player > 40]. Your [short ball size] orbs drain completely into the little fox, leaving him so bloated with cum he cannot move. Despite this, he seems very pleased with the outcome, only able to release a wet, gurgling yip that overflows with some of your semen[else if cock width of player > 20]. Your hefty load is pumped into him, leaving him plump and bloated with your cum. He seems quite pleased at this and releases a happy yip as he rubs his rounded tummy[else]. You pound into him, releasing shot after shot until your balls are drained[end if]. Finished, you withdraw and give the fox's ears a scritch, leaving him to lie there and recover.";
	else:
		say "     The fennec squirms and tries to get away when he realizes the [cock size desc of player] size of your shaft, but you keep a tight grip on his ass and push it into him. It takes some effort to pry open that tight little bottom, but it is worth the effort. Deliciously tight yet stretching to somehow accommodate your girth, the fennec releases a whimpering yip as you penetrate him. You pound away at the small fox's ass, your huge cock causing a visible bulge in the fennec's tummy with each thrust you make. You have to keep a tight grip on him and pull hard to push into him with every deep thrust into your impromptu playtoy. Despite the discomfort he may be feeling, his much smaller cock throbs and pulses, dribbling precum onto the ground.";
		say "     Beneath him, his smaller cock pulses and drips with pre while you fuck his ass. When he cums, splattering his seed across the ground, his tailhole clamps down around you with each shot. A few of this squeezes are enough to send you over the edge and empty your load into the fox's ass[if cock width of player > 40]. Your [short ball size] orbs drain completely into the little fox, leaving him so bloated with cum he cannot move. Despite this, he seems very pleased with the outcome, only able to release a wet, gurgling yip that overflows with some of your semen[else if cock width of player > 20]. Your hefty load is pumped into him, leaving him plump and bloated with your cum. He seems quite pleased at this and releases a happy yip as he rubs his rounded tummy[else]. You pound into him, releasing shot after shot until your balls are drained[end if]. Finished, you withdraw and give the fox's ears a scritch, leaving him to lie there and recover.";


to say fennecattack:
	say "[one of]punches you in the face with a sly grin[or]kicks you in the leg[or]claws at your sides[or]bites your forearm[at random]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Fennec"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The fennec yips annoyingly loud over and over again, forcing you to cover your ears... at which point he [fennecattack]![or]The fennec fox dodges agilely around you and [fennecattack]![or]The fennec claws and scratches at you wildly![or]The fennec yips and snaps at you with its sharp teeth![or]The fox brushes his tail in front of your face, blocking your vision momentarily, during which time he [fennecattack]![or]The tan fox gives you a playful grope as he slips a paw past your defenses.[at random]";
	now defeated entry is "[beatthefennec]"; [ Text when monster loses. ]
	now victory entry is "[losetofennec]"; [ Text when monster wins. ]
	now desc entry is "[fennecdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "quite vulpine in appearance with a narrow muzzle, dark eyes and large, bat-like ears";
	now body entry is "short and slender, only a little over five feet tall. At first, you might think it belongs to an adolescent, but you are quite mature, just short. Your hands and feet are now paws with digits ending in small claws";
	now skin entry is "light tan fur across your";
	now tail entry is "Your tan tail is thick and fluffy like a fox's.";
	now cock entry is "[one of]vulpine[or]knotted[at random]";
	now face change entry is "your vision goes blurry for a moment. You feel your head shift and small sounds growing extremely loud. By the time the changes pass, your head has become quite vulpine in shape, but with much larger ears than those of a normal fox";
	now body change entry is "your body becomes small and slender, leaving you a little over five feet tall by the time it's done. While mostly human in structure, your limbs end in paw-like hands and feet";
	now skin change entry is "pinpricks run [one of]up[or]down[at random] your body with a wave of rapidly growing fur following in its wake. Once it's fully passed, you're left covered in light tan fur";
	now ass change entry is "a fluffy fox tail of tan fur forms at the end of your spine";
	now cock change entry is "throbs and spurts precum as a sheath forms over your maleness and your [cock size desc of player] shaft takes on a vulpine shape";
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 17; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 10;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 33; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Plains"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is "fennec semen"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]limber[or]slender[or]flexible[at random]";
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Table of Game Objects (continued)
name	desc	weight	object
"fennec semen"	"Why were you hanging onto this exactly?"	1	fennec semen

fennec semen is a grab object. It is a part of the player. fennec semen is infectious. The strain of fennec semen is "Fennec". fennec semen is cum.

The usedesc of fennec semen is "[drinkfennecsemen]";

to say drinkfennecsemen:
	say "     Following the strange urge you have, you slam back the bottle of fennec semen you've been saving. It has an exotic taste to it that is pleasantly exciting.";
	increase libido of player by 8;
	[puts Fennec as lead monster for target gender adjustment]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Fennec":
			now monster is y;
			break;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";

[
when play ends:
	if bodyname of player is "Fennec":
		if humanity of player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Fennec ends here.
