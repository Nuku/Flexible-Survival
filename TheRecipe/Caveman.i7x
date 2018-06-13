Version 1 of Caveman by TheRecipe begins here.
[Version 1.1 - new player loss scene - Stripes]

"Adds a Caveman to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Caveman" } to infections of guy;

to say cavemandesc:
	setmongender 3; [creature is male]
	say "     A caveman straight out of the prehistoric exhibit stands before you. This large, hunched over man is not made of wood or wax however. Even with the cromagnon posture, the hairy humanoid stands at about six feet tall and would be much taller if he stood straight. Massively muscular arms hang down with oversized hands scraping the floor. His feet are gigantic, with toes that are long and nimble.";
	say "     His face is almost human, with a shaggy haircut that almost covers up his trademark heavy brow ridge and large nose. His enormous barrel chest is covered in hair, somewhere between body hair and fur. He wears nothing but a loin cloth and you can see a huge soft cock and enormous hairy nuts hanging from below its ragged hem.";
	say "     He sees you and grunts loudly. Somewhere he has found a huge wooden club and he bashes it against the floor threateningly.";

to say losetocaveman:
	say "     The massively muscled beastman swipes your feet out from under you and plants his large hairy feet on either side of your head. He raises his arms above his head in triumph, the oversized biceps bigger than his own head as he roars in victory";
	if player is impreg_ok and a random chance of 1 in 3 succeeds:
		say " before bashing you over the head with his club. The blow fills your vision with stars before it all fades to black.";
		say "     As you gradually start to come back to your senses, you become aware of your pounding headache. It is a steady, rhythm that makes you groan. It takes a few moments to realize that the pounding is in time to other things - a motion of your body, a series of slick sounds and that pleasant fullness inside you that comes and goes. Opening your eyes to look around, your vision is still quite hazy, but it seems you're somewhere else in the museum. After a few moments, you become aware that you're on your side on some soft furs with another figure atop you in some cramped [one of]corner of a display[or]storage space[or]cubby hole[at random].";
		say "     A grunt from the figure atop you turns your attention to him and you recognize him as the caveman from earlier. Full realization sets in slowly, but you gradually become aware that the rhythmic pounding you're feeling is all coming cromagnon male fucking you with his huge penis. The sound you've been hearing is the wet slurps of sex, the caveman fucking your well-used hole for what must be the third or fourth time to judge from the amount of semen that's already leaked out of you. Your [if player is female]womb[else]belly[end if] feels full and warm with it, a sensation you find quite pleasurable once you realize it.";
		say "     Despite his rough [']courtship['] and striking appearance, you find yourself quite attracted to the caveman fucking you. Certainly having proven himself quite the stud, you're eager for another load from him. With your nanites on the job, your headache disappears quickly and you're able to become a more active participant in the mating. Pulling him down for some sloppy kisses, you grind yourself onto his pulsing rod[if player is female and cunt length of player < 13], taking as much of it as you can into your well-stuffed cunny[else if player is female], taking the whole of it into your well-stuffed cunny[else], taking the whole of it into your well-stuffed ass[end if]. He grunts and grabs your [if breasts of player > 0 and breast size of player > 0]breast[else]ass[end if] roughly, cumming hard into you, claiming you as his mate once again. Already having drained his balls repeatedly, there's less to give this time, but it is still an impressive amount that fills your [if player is female]cunt[else]rectum[end if] with a fresh blast of warmth[if player is not neuter]. You moan and cry out in your own orgasmic release[end if]. Thoroughly exhausted now, the caveman's cock slips from you as he rolls over onto the furs and passes out.[impregchance][impregchance]";
		say "     You lay there for a time, needing to recover your strength after all of this and enjoying basking in the afterglow and the pleasure of having been so thoroughly fucked. Looking over at the caveman, you find yourself quite tempted to just stay with the burly stud. [if humanity of player > 70]Some small[else if humanity of player > 40]A[else]A large[end if] part of you toying with the idea of remaining in this [']cave['] of his and simply giving yourself over to him to be his mate. You stretch out on the animal skins and lay there in well-fucked bliss, only roused from this when the caveman grunts, rolls over in his sleep and [one of]drools messily onto the furs[or]farts noisily[or]picks his nose[or]belches raucously[at random]. That a moment of disgust shocks you into realizing you were about to drift off yourself. You shake the thoughts of staying out of your head long enough to make your escape.";
	else:
		say ".";
		say "     Having announced his win to any creature within ear shot, the cromagnon stud has other ideas for you. You look up and see him tear off his loincloth, exposing a huge, erect penis. He tugs on it with his giant fist, his freakishly proportioned hand making the dick look smaller than it is. It is not small.";
		if player is female:
			say "     He grabs you roughly by your [facename of player] face and flips you around, pressing a huge hand into your back and holding you down. You feel a finger exploring, pushing under you. It is long and thick, bigger than most human cocks and soon it is up inside of your [cunt size desc of player] cunt.";
			say "     The caveman grunts as he finger fucks you, the grunts growing louder as you begin moaning. Soon, he pulls out the finger and you feel something else pressing against your crotch. You wonder if it is his wooden club, but soon realize it is the caveman's huge prehistoric cock, stretching open your pussy lips around its head.";
			say "     His animalistic instincts take over and he begins fucking his huge dick in and out of you with ferocity and power unexpected from something so close to human.";
			say "     Caring nothing for your pleasure he rams in and out of you, his hairy ballsack smacking against you roughly. You are thankful that it doesn't take very long until the massive club of a caveman cock begins to fire off inside of you, hot cromagnon spunk filling you up in a voluminous quantity.";
			say "     He pulls out, his cock dribbling more spunk onto your naked ass. Wiping himself off, using your [bodydesc of player] body as a towel before turning and leaving, the caveman abandons you there with nothing but a grunt of smug satisfaction.";
		else:
			say "     He grabs you roughly by your [facename of player] face and flips you around, pressing a huge hand into your back and holding you down. Grunting angrily when he sees you don't have what he is looking for, he turns you back around.";
			say "     Enormous hands hold your head steady and squeeze your mouth open. You try to speak or scream, but before you can, the dripping huge head of the caveman's cock is shoved roughly inside of your face. He begins rocking back and forth, feeding you more and more of his prehistoric wang. You can't help but be impressed with the size and power of the tool and the caveman wielding it and soon you find yourself moaning, desperate to taste the nectar of this brute.";
			say "     You don't have to wait long, as the caveman shoves deep into your throat, past your gag reflex and begins to unload his monstrous, hairy nuts into your throat and stomach. The infected cum backs up into your mouth and you can taste him as he pulls out in satisfaction, cum spraying everywhere, then turns and leaves you there, on your knees and covered in his semen.";

to say beatthecaveman:
	say "     You defeat the caveman, who collapses to the ground after dropping his club with a sad grunt. The big muscular brute looks strangely inviting lying on the ground nursing his wounds, being more human than many of those you've encountered around lately. Do you take advantage of the defeated caveman?";
	if the player consents:
		say "     You smile down at the caveman and tease him with a grunt of your own before having your way with him.";
		if player is female:
			say "     You rip off the devolved man's loincloth, exposing his throbbing meat, over a foot of caveman cock for you to ride. He gives out a questioning grunt, unsure of your intentions.";
			say "     You show him exactly what you want as you stroke his huge cock a few times, spreading his precum over it, making it nice and wet before you straddle it and ease the thick head into your [cunt size desc of player] vagina.";
			say "     His cromagnon grunts turn to moans as you bounce up and down on his big prehistoric dong, using it for your own pleasure. It's a luxury being with a creature so well built and strong, he can take a nice rough rider on top of him with ease.";
			say "     You explode with ecstasy on top of him as he begins to cum inside of you, filling you with prehistoric spunk. Still too beat up to move, you lift yourself off him and leave him moaning on the ground, his dick still hard.";
		else if player is male:
			say "     You rip off his loincloth and slap his tight, muscular, and hairy ass. You massage the beefy muscles of his prehistoric butt and place your [cock size desc of player] [cock of player] cock in between the massive cheeks. The caveman grunts beneath you nervously, knowing what comes next.";
			say "     You shove into him hard, spreading out that ass as you fill him with your [cock of player] dick. Wasting no time in using the warm chute of the caveman, pistoning in and out, using him like he wanted to use you. You shove deep and hard, hilting into that sweet ass as you pump your cum deep into the caveman's guts.";
		else:
			say "     You can't pass up the throbbing dick barely contained by the loincloth. You rip it off and go down on the caveman, greedily licking and sucking the huge meat, your moans drowned out only by the moans of the cromagnon man. Soon you are rewarded with a powerful blast of caveman cum in your mouth and you swallow down the gift before moving on.";
	else:
		say "     You leave the caveman on the ground, having no interest in the brute.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Caveman";
	now attack entry is "[one of]The caveman swings his huge club and smashes you in the head.[or]The caveman grabs you easily in a massive hand and tosses you to the ground.[or]The caveman kicks you with a giant hairy foot![at random]";   [ Successful attack message ]
	now defeated entry is "[beatthecaveman]";
	now victory entry is "[losetocaveman]";
	now desc entry is "[cavemandesc]";
	now face entry is "humanlike, but beetle-browed and hypermasculine, with a lantern jaw and much stubble";      [ Face. Format as Your face is [face of player]. ]
	now body entry is "that of a caveman, strongly muscled, with massive, overly long arms";
	now skin entry is "leathery, incredibly hirsute and humanlike";   [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "";   [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "prehistoric caveman";
	now face change entry is "your brow ridges grows thick and heavy, the bones becoming larger and more prominent, giving you the face of a cromagnon man";   [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body becomes human-like, but freakishly proportioned, with huge arms that touch the ground. Hands and feet grow larger and larger to match, and end up becoming massive and powerful. Your muscles increase with new prehistoric size. With creaks and cracks in your back, you hunch over, feeling much more comfortable in that position now";
	now skin change entry is "it becomes thick and leathery, an enormous amount of human hair growing on it, making it seems almost furlike";
	now ass change entry is "it grows incredibly hairy and muscular";   [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it grows into human-like shape, thick with veins";      [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 17;
	now per entry is 9;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Male";          [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 55;
	now lev entry is 6;               [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10;             [ Monster's average damage when attacking. ]
	now area entry is "Museum";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;             [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 13;      [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;        [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;           [ Number of nipples the infection will give a player. ]
	now breast size entry is 0;       [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;             [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;       [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;        [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;           [ Target libido the infection will rise towards. ]
	now loot entry is "";             [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;        [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;             [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]prehistoric[or]slouching[or]muscled[or]rugged[or]brutish[at random]";
	now type entry is "[one of]caveman[or]hominid[or]cromagnon[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;    [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Caveman":
		if humanity of player < 10:
			say "     You succumb to your caveman infection, your mind regressing to a simpler, devolved state. You find the city confusing and troublesome and run away until you find a comfortable cave deep in the woods, away from everyone else.";
		else:
			say "     You survive, but you can never live a normal life. Most of the other survivors are furry and have started their own community, but you are almost human, but not quite. The only work you can find is as a subject in college lectures about prehistory and evolution, until a construction foreman sees the massive arms and hands on your freakish body and puts them to good use. The work is hard and simple, perfect for your devolved mind.";

Caveman ends here.
