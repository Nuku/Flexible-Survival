Version 2 of Satyr by Sarokcat begins here.
[Version 2 - Victory Sex - Stripes]

"Adds a Satyr to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

beatsatyr is a number that varies.

to say Satyr attack:
	if Player is female:
		say "     'Hah!' the satyr says as he pins you to the wall. 'What do we have here?' the goat-like man says with a leer as his hands roam your body. 'Not quite a proper nymph, I'll admit, but you'll do!' the satyr says as he begins to fondle you, wine spilling everywhere the scent of the strong wine seeming to spiral through your head making you feel as if you had had a few too many drinks yourself. The satyr pays no attention however to your distraction, as he is too busy positioning his large member for best effect, a fact brought to your attention as it begins to poke at your feminine opening. Looking down you can only get small glimpses of his large member, as his body is in the way as he presses your back up against the wall. His hands drop to your hips as he spreads you wide for him, you open your mouth to try to protest, but only a lusty moan comes out as he begins to sink his hot goat-like meat into you.";
		say "     Your mind fogs even more as the scent of wine, the satyrs musk and your own body's lust combine, sending you into a pleasurable haze as he begins to fuck you hard against the wall. His stout goat-like legs easily supporting both your weight, as he holds your moaning body up, you can't help but realize now why nymphs always end up letting satyrs catch them. You find yourself thinking idly, their cock just feels sooo good. You moan in delight as his cock stimulates all the places deep inside you, throwing your head back as you orgasm around his cock, and he doesn't even stop, just pumps into you all the harder. You find your legs and arms wrapping around his back as he thrusts into you, holding him tight as he continues to fuck you, bringing you to yet another orgasm as his wonderful rod thrusts into you. Finally satisfied that you are good and fucked, the satyr groans himself, and lets his cock explode inside of you, filling you with his hot seed. Gasping, you shudder in one last orgasm as your mind goes blank for a minute, only dimly noticing as the sated satyr pulls you off of him and lies you down carefully on the floor. 'Not quite the fun of a real nymph yet,' you think you hear the satyr say, 'but I have to admit that was pretty damn good anyways. Maybe you'll let me catch ya again sometime and we can make a real nymph out of you,' the satyr finishes with a smile, then snags his wine cup from where it fell and goes looking for a refill. Slowly you manage to pull your well used body together, and you head back off into the museum halls yourself, almost looking forward to that next promised chase.[impregchance]";
		if FemaleList is not banned, infect "Greek Nymph";
	else if ( player is submissive and a random chance of 1 in 2 succeeds and anallevel > 1) or ( player is mpreg_ok and a random chance of 1 in 3 succeeds ) or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
		say "     'Hey there brother! Up with you now, there are nymphs waiting for...' he starts to say before he stops short. He grins lecherously down at you as he looks you over, clearly reconsidering the options before him[if Player is submissive]. It seems your submissive instincts have kicked in and you're subconsciously taken on a rather alluring pose, putting on a rather wanton display for the horny goat man. 'Mmm... it seems I was too hasty... It seems I've found someone who wants to cavort right here,' he says, running his rough hands over your body. Your submissive needs, further awakened, have you moan softly and shift to rub against the satyr's rising erection[else]. It seems something about you has caught the horny goat man's attention. 'Mmm... it seems I was too hasty. Perhaps you'd like a drink from my horn first,' he chuckles, his cock stiffening to erection as he takes another swig of wine[end if].";
		say "     Confused and excited by the jovial satyr and his musky male scent, you take his shaft in hand, stroke it a few times and guide it to your mouth. You slide your lips over it, slowly at first to taste his strong, masculine flavor before getting it all in and starting to work over it. You knead his hairy balls while he rubs your head and chuckles merrily, grabbing another swig of his drink, spilling some down onto you. The drops which land on his rounded belly and roll to his shaft are licked up to you, adding to the exciting taste and fueling your drunken lust all the more. Pulling free from his shaft, you wantonly lick up the wine before diving down to his balls and cleaning them as well.";
		if BodyName of Player is not "Greek Nymph" and BodyName of Player is not "Satyr" and FaceName of Player is not "Greek Nymph" and FaceName of Player is not "Satyr":
			say "     'That's a fine job you're doing. Many a teasing nymph would not go so far. But I'm thinking you're ready to have some satyr in you in a more... physical way,' he laughs, pushing you down";
		else if BodyName of Player is "Satyr" or FaceName of Player is "Satyr":
			say "     'That's a fine job you're doing, my brother. Many a teasing nymph would not go so far. Nothing like a wild, rutting pair of satyrs, eh?' he laughs, pushing you down";
		else:
			say "     'You look like a nymph, but you're no teasing girl like so many of them. Mmm... as beautiful as a nymph, but still a randy male. Quite special, aren't you?' he laughs, pushing you down";
		say ". Groping you roughly as he moves atop you, he gets his cock lined up with your tight pucker and thrusts into you. Even with it slick from your earlier attention, it slides in with particular ease. Either you're getting used to this sort of thing or your body feels the need you feel to have this randy goat inside you. He licks your cheek and laughs raucously as he starts thrusting away. As the sweaty, panting male rides you, you can't help but moan, enjoying the feel of his throbbing cock pulsing and pounding inside you[if Player is male], pushing at your prostate and keeping you hard and dripping yourself[end if].";
		say "     You can't help but respond[if Player is submissive], your submissive urges in synch[end if] with the drunken lust filling you and push back into the satyr's thrusts, letting the male use you as he would. His touch may be a little rough, but it is very exciting and pleasurable as well, the male clearly familiar with fucking more than just pretty girls[if Player is male]. His wandering touches to your cock[smn] are the most exciting of all, keeping you hard, but never letting you get off until he's done with you[else]. His wandering touches often stray to your bare groin, making you long for a gender again - any gender - just so you might feel his touch upon it[end if]. Starting on all fours, he soon moves you onto your side, fucking you from behind.";
		say "     In time, the male laughs that he's had his fill of you and now it's time that he filled you. Slapping your ass with his hand, he grabs your buttock in his meaty grip and pounds you hard and wildly, groaning loudly as he cums in heavy, sticky blasts that seem to seep into you, flowing into you like a delicious wine that makes your whole body warm. You [if Player is male]cum hard[else]moan loudly[end if] as you let the lustful satyr claim you, sating his wild, unquenchable lusts on you for a moment. He wipes his cock across your ass and teases your messy asshole before getting up, mumbling something about his cup being drained and heading off with a laugh that is infectious. You start to chuckle as that warmth you're feeling continues to spread as the nanites start to move.[mimpregchance]";
		infect "Satyr";
	else:
		say "     'Hey there brother! Up with you now, there are nymphs waiting for us to find them!' the jovial satyr says as he hauls you up. 'Come join the revel!' The happy little beast trots off, looking for the nymphs and the party, almost dragging you along behind. Soon you are joined by more and more satyrs as they party and share wine and good cheer, their wine burning through your head pleasantly as you join them in carousing, all while looking for the elusive nymphs. Eventually you are caught up in the happy, festive mood of the goat men and enjoy the party and hunt as well. Lacking their seemingly boundless energy, however, you eventually manage to fall behind the group. Given a few moments to yourself, you come back to your senses and slip off down the museum passages back towards the entry.";
		infect "Satyr";


To say Satyr loss:
	let t be a random number between ( 30 - beatsatyr ) and 125;
[	say "Temporary value is [t]."; ]
	if beatsatyr > 10 and player is not neuter and t < Libido of Player:
		say "     Having knocked the satyr onto his goat ass, you feel a rush of lust wash over you after having been teased too much by these lustful creatures. You grab him by the beard before he can finish his complaint about the spilled wine and you tell him to 'Shut up and...'";
		say "[satyrsexselection]";
	else:
		say "     Knocking the goat man back on his furry little tail, his cup of wine splashes out on the floor. The satyr looks more offended at this mistreatment of good liquor then it does at your violent actions at the satyr himself. 'Hey now! If ya didn't want to have some fun you could have just said!' the goat-like creature says angrily. 'There ain't no reason for you to abuse the booze!' Picking himself up, the satyr snatches up the now empty cup, and stalks off into the halls, the picture of offended innocence as he looks for a refill.";
		if Player is not neuter, increase beatsatyr by 10;


to say satyrsexselection:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "fuck me";
	now sortorder entry is 1;
	now description entry is "order the satyr to fuck you";
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "bend over";
		now sortorder entry is 2;
		now description entry is "get some satyr ass";
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "start sucking";
		now sortorder entry is 3;
		now description entry is "make the satyr blow you";
	if Player is purefemale:
		choose a blank row in table of fucking options;
		now title entry is "eat me";
		now sortorder entry is 4;
		now description entry is "make the satyr eat you out";
	choose a blank row in table of fucking options;
	now title entry is "leave";
	now sortorder entry is 99;
	now description entry is "send him on his way";
	sort the table of fucking options in sortorder order;
	while sextablerun is 0:
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "     [link][y] - ...[run paragraph on][title entry][as][y][end link][line break]";
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
[			say "[title entry]: Do you want to [description entry]?";
			if Player consents:	]
			if 1 is 1:		[bypass asking for confirmation]
				let nam be title entry;
				now sextablerun is 1;
				if nam is "fuck me":
					say "     The satyr looks up at you with momentary surprise before responding. [if Player is female]'Well, why didn't you just say so?' [else]'But... well, if you insist. I certainly won't say no to a good fuck,' [end if]he chuckles merrily. He gets up and grabs your ass as you move to lean against one of the display cases. With his large goat cock already getting large, he moves in behind you and grinds it firmly against your backside, leaking pre across your [if Player is female]rear[else]pucker[end if]. Shifting his hips, he gets his glans lined up and slowly drives it into you, making you moan in pleasure and push back against him. As the satyr fucks you, his hands slide over your [bodydesc of Player] body. With him behind you, pounding into you hard, you can smell his wild, virile musk and it only serves to excite you further, making you more and more eager to have him fill you[if Player is herm]. He even slides a hand around to grab your cock and start stroking you off[else if Player is male]. He even slides a hand around to grab your cock and start stroking it, telling you [one of]how nice it is to have a sexy ass to fuck from time to time[or]that the satyrs will do this sometimes when the nymphs are blue balling them[or]how he's done this to a couple of satyrs when he couldn't get his cock in a nymph for a while[or]that even other satyrs enjoy bending over like this for him[at random][else if Player is female]. He slides a hand down to tease your clit, further increasing your pleasure[end if]. After a long and satisfying pounding, he drives his cock deep inside you and blasts shot after shot of his virile seed into you from his large balls, pushing you to a powerful climax as he fills you up. Once he's done, he pulls out, wipes his cock on your ass and thanks you for the fuck before dashing off to get a refill of wine.";
					now beatsatyr is beatsatyr / 2;
				else if nam is "bend over":
					say "     The satyr looks up at you with some trepidation, but then grins and hops up. 'I'm more of a topper, but what good satyr'll turn down sex?' he chuckles merrily. He bends over a nearby display case, wiggling his ass and flagging his tail. You move up behind him and run your hands over his furred ass as you grind your stiff member against it[if Cock Length of Player > 24]. Feeling the size of your massive prick, he becomes a little less eager, but then chuckles and grinds against you all the harder. 'My, you are a big boy, aren't you?' he says with a drunken laugh[else if Cock Length of Player > 12]. Feeling the size of your large prick, he shows no hesitation and grinds back against you. 'Come on, I've taken a few satyrs in my time, you'll fit just right,' he says with a drunken laugh[else]. Feeling your [cock size desc of Player] prink, he chuckles and grinds back against you. 'Well, you're not as huge as the other satyrs, but this should still be fun,' he says with a drunken laugh[end if]. Shifting your hips, you press your cock against his dark pucker and sink yourself [if Cock Length of Player > 24]slowly[else if Cock Length of Player > 12]smoothly[else]with ease[end if] and your lover's cock twitches, spurting precum excitedly. The musky scent of aroused satyr grows stronger, exciting you to start fucking him lustfully, much to his delight. As you fuck him, he tells you [one of]how nice it is to get fucked from time to time[or]that the satyrs will do this sometimes when the nymphs are blue balling them[or]how he's been nice and let some of the slower satyrs do this when they couldn't get their hands on a nymph for a while[or]that he's enjoyed bending over for other satyrs like this often[at random]. After a long and satisfying ride on the satyr's hot ass, you drive your cock deep inside him and fill him with your load, setting him off to spray his seed across the floor. Once you're done and pulled out, he grabs his fallen cup (bending over to show you his messy ass with your creamy load [if Ball Size of Player > 5]flowing[else if Ball Size of Player > 4]running[else if Ball Size of Player > 2]leaking[else]trickling[end if] out of it before dashing off to find a refill of wine.";
					now beatsatyr is beatsatyr / 2;
				else if nam is "start sucking":
					say "     The satyr looks up at you with momentary surprise before responding. 'It's no wine, but I'm sure it'll have a full-bodied flavor,' he chuckles merrily. He leans forward and takes your throbbing cock in his hands, stroking it as his tongue plays over your meat. When the teasing and licking goes on for too long, you grab his horns and pull his mouth forward, driving your cock into him. He gives a bleating sound of surprise, but doesn't seem at all upset to judge by the way his tongue and lips set to work. He sucks you skillfully, clearly the satyrs no stranger to this kind of fun when the nymphs aren't around. Your [if Cock Length of Player > 24]massive penis is a bit more than the practiced satyr can handle, but he works gamely at pleasing you[else if Cock Length of Player > 12]large penis presents no difficulty to the practiced satyr, as he's used to the erections of the others of his kind and deep throats you as you're about to cum[else if Cock Length of Player > 4][cock size desc of Player] penis is easily deep throated by the satyr who's had to deal with much larger males[else][cock size desc of Player] penis is worked all over by the talented satyr's mouth[end if]. You grab his horns again as you're about to cum, groaning in pleasure and feeding the lustful male your load[if a random chance of 1 in 2 succeeds], spraying the last few spurts across his face[end if]. He smiles and licks his lips, joking that he needs a drink to wash that down as he heads off with his empty cup in search of more wine.";
					now beatsatyr is beatsatyr / 2;
				else if nam is "eat me":
					say "     The satyr looks up at you with momentary surprise before responding. 'I'd prefer to get straight to filling that fine pussy of yours, but I know some nymphs prefer a bit more teasing before they'll let a virile satyr like myself mount them... no matter how much they may really want it,' he chuckles merrily. He leans forward and presses his face between your legs, diving into your cunt with his tongue with zeal. You moan in pleasure at this sudden action and grab onto his horns to grind him harder into your crotch. Quite certain he's grinning down there, you can feel his tongue agilely move across your sensitive folds and along your inner walls. He fellates you with skill, clearly having done this before for the nymphs as he's said. Enjoying his tonguework greatly, you have several orgasms before getting a final, crashing one that leaves you panting and moaning as your juices flow down the satyr's face and neck. Getting up, he smiles and licks his lips, making a jest about how you taste as good as any wine. And with the mention of wine, he realizes that his cup is empty and rushes off to find a refill.";
					now beatsatyr is beatsatyr / 2;
				else if nam is "leave":
					say "     The satyr is clearly disappointed at your words, but then chuckles merrily. 'It seems I have gone and spilled my wine. As much as I've enjoyed our time together, I do need to get some more. I am simply dying of thirst,' he says with a drunken laugh as he picks up his cup and heads off down the halls in search of a refill.";
		else:
			say "Invalid Option. Pick 1 - [the number of filled rows in table of fucking options].";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Satyr";
	add "Satyr" to infections of Magicallist;
	add "Satyr" to infections of MythologicalList;
	add "Satyr" to infections of MaleList;
	add "Satyr" to infections of BipedalList;
	add "Satyr" to infections of TailList;
	now Name entry is "Satyr";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He splashes wine around everywhere, as he tries to get you to try some.[or]He grins as he shows off his large goat cock, the sight stirring something strange deep within you.[or]His strong goat-like musk distracts you for a minute as he attacks.[or]Dancing around nimbly on his goat hooves, the satyr then plants one of the hooves right where it hurts the most.[or]Swinging the wine cup around haphazardly, somehow he manages to bounce it off your head.[or]The satyr brings up his pipes and whistles a little tune, and to your surprise you can't help but dance a little.[at random]";
	now defeated entry is "[Satyr loss]";
	now victory entry is "[Satyr attack]";
	now desc entry is "[mongendernum 3]     You hear a strange off key singing echoing through the halls, turning to look you see a strange man weaving down the hall on goat-like legs. Indeed the strange creatures lower body appears to be that of a goat, small curved horns protrude from his forehead, with a goat-like beard hanging off his chin, and a large animal like sheath between his legs, you recognize him immediately from some of the pictures on the wall as a satyr, but you thought those were just a myth! Spotting you, he waves the large wine cup in one hand at you, while he pats the pipes hanging off his rough belt. [one of]'Hey there! Care for a bit of wine?' [or]'Did you see any nymphs around here?' [or]'Hey, come join the party!' [or]'You look like you need to lighten up!' [or]'You gots anymore booze? Is good!' [at random]he says, as he dances forward nimbly on his goat-like hooves. His inebriated state is as obvious to you as is the fact that he isn't interested in listening to anything you have to say.";
	now face entry is "rough mostly human-like face, though the goat-like beard, goat horns, and the lusty look filling your eyes show it to truly be a satyr's"; [ Face description, format as "Your face is (your text)."]
	now body entry is "short and rather stocky. Your upper body is that of a well-built man, while your lower body rests on two exceptionally well-built goat-like legs, your nimble goat hooves ringing off the floor with every step"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]goat furred[or]tough[or]rugged[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a short, stubby goat tail positioned behind you, seeming to move jauntily with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]goat-like[or]bestial[or]satyr[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face shifts and changes, horns growing out of your forehead as a goat-like beard sprouts from your chin. You can feel your mind filling up with images of wine, women, and song, though with more emphasis on the women then the other two admittedly"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your feet shift underneath you, cracking and fusing into large goat-like hooves, as your legs assume a digitigrade stance. After a minute you find it almost natural to balance on your new appendages, and are surprised at how nimble they are, the fact that your upper body has become that of a built young man seems almost secondary to your new satyr legs"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your upper body grows tough rugged skin, and your lower body erupts into a riot of goat-like fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a small little goat-like tail bursts forth, settling in comfortably over your well muscled ass"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your aching member grows tight as it fits itself into a goat-like sheath hanging between your legs your balls hanging low below"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 18;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 4;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Museum";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 14;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3;  [ Size of balls ]
	now Nipple Count entry is 0;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 30;  [ Amount player Libido will go up if defeated ]
	now loot entry is "satyr wine";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 30;  [ Chance of loot dropping 0-100 ]
	now scale entry is 2;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "stocky";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]satyr[or]mythological[at random]";
	now magic entry is true;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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


Table of Game Objects (continued)
name	desc	weight	object
"satyr wine"	"A small sample of some dark wine you found left behind by one of those strange Satyr folk, it looks like there is about enough left for a single mouthful."	1	satyr wine

satyr wine is a grab object. It is part of the player. Understand "wine" as satyr wine. satyr wine is infectious. The strain of satyr wine is "Satyr".

The usedesc of satyr wine is "[wineusing]";

to say wineusing:
	say "Taking out the small mouthful of dark wine, you swirl the liquid around in the small cup for a minute, before tossing it back, gasping as the heady stuff burns its way down your throat, and makes your head spin. That's definitely the good stuff!";
	PlayerDrink 10;

instead of sniffing satyr wine:
	say "The wine is aromatic and quite powerful. And after everything you've seen in this strange city, you could definitely go for a drink.";


when play ends:
	if BodyName of Player is "Satyr":
		if humanity of Player < 10:
			say "     Finally giving in to your base desires, you run back to the museum where you know there is a party going on. Running into several other satyrs, they welcome you with alcoholic grins as they pass you a cup, a new vigor and zest for living in the moment shooting through you as you drink. Soon you are carousing just as hard as they are, enjoying the moment for all it is worth, and charging off down the halls in pursuit whenever one of you manages to spot a lovely little tease of a nymph. You lose all track of time as you party the days and nights away, but as neither you nor the nymphs never seem to get any older, who cares? At one point several people with guns came around to try to get you to leave, but as they didn't have any booze of their own, you helpfully offered them some of yours, and soon enough they came around to your way of thinking as they joined the party. Strangely enough the rest of them seemed to avoid your party after that, you would almost think they didn't know how to have fun, not that you could really bring yourself to care through the happy fog of alcohol and sex that you pass the carefree days in.";
		else:
			say "     Rescued by the military, you wander around a bit, people giving you odd looks due to your goat-like lower body. Still, most of the changes are easy enough to hide when viewed from the waist up. This leads you to find your true calling in life as a bartender, your nimble hands and your ingrained reverence for the booze serving you well. Soon you earn enough to buy your own bar, which you call [']The Satyrs Revel['], amused by the ironic name. Your bar becomes one of the hottest in the city, your parties always seeming to have that extra something others lack. While most of the people who get a good look at you in your new bar think you're merely in a costume, you are happy to let many of the woman find out how real you are for themselves, and while your new life is sadly lacking in any naked nymphs, you have to admit you have found the next best thing.";



Satyr ends here.
