Version 1 of Tanuki by Nuku Valente begins here.
[Version 1.3 - Shrine description update]

"Adds Tanuki to Flexible Survival"

Section 1 - The Situation

Table of GameRoomIDs (continued)
Object	Name
Shinto Shrine	"Shinto Shrine"

Shinto Shrine is a room. "How odd for an American city. A shinto shrine lays nestled in a small bamboo forest in this part of the park, tucked just off a narrow gravel trail and looking reasonably well kept. It is made of stone and features a number of carved pillars holding up a typically Japanese roof, gently curved and crowned by forked roof finials. In the midst of the structure, a large bronze mirror disc rests on an elaborate half-circular stand. There is a small box for donations, and a miniature iron mallet beside a bell. Perhaps it could be [bold type]rung[roman type]? The air smells of cherry blossoms and spring. You feel safe here.".
Shinto Shrine is northwest of Park Trail.

instead of sniffing Shinto Shrine:
	say "The shrine smells faintly of cherry blossoms and spring. The scent puts you at ease.";

The invent of Shinto Shrine is { "tanuki coin" }.

SatisfiedTanuki is a number that varies. SatisfiedTanuki is usually 5.
Shinto Shrine has a Grab Object called Demand.
The demand of Shinto Shrine is usually journal.
Tanuki Mom is a female person.

tanukiList is a list of objects that varies. [@Tag:NotSaved]
the tanukiList is {medkit, dirty water, water bottle, dog milk, soda, chips, glob of goo, food, gryphon milk, distilled milk, libido pill, acid milk, batcubus milk, cheetah milk, cow milk, margay milk, blue gel, cheese, musky cock flower, lembas bread, mammoth jerky, pink gel, pita bread, purple gel, psionic egg, psionic larva, skunk goo, sticky sushi, tentacle tip, awesome fruit, awesomer fruit, awesomest fruit, wyvern goop, centaur cum, earthen seed, demon seed, fennec semen, gecko cum, hawkman seed, orc cum, gryphon cum, pewter seed, rhino cum, sea dragon cum, silver semen, smilodon cum, wolf cum, orc femcum, mead horn, orc brew, pony cider, satyr wine, Satyress Wine, egg nog, sports drink, chocolate milk, tasty peach, birth control pill, fertile pill, pepperspray, glowing mushroom, estosterogen pill, eagle feather, honeycomb, behemoth horn, testosterone pill, centaur hair, corota venom, tuft of chin fur, dolphin milk, dryad cum, ebonflame scale, elk antler, lucky horseshoe, glowing ember, foul scuttler spit, red fur, hermaid kelp, libido suppressant, stray links, Spotted fur, peacock feather, nullifying powder, cock pill, healing booster, Fish, Pegasus Quill, pirate bandana, tousky quill, tainted wool, Tiger patch, Chipped tooth, spider webbing, spidertaur hair, pixie dust, crushed candies, estrogen pill, dragon scale, dragon hair, zebra fur, lizard juice}.
demandIndex is a number that varies.
Tanukigender is a number that varies. Tanukigender is usually -1.

ringing is an action applying to nothing.

understand "rung" and "ring" and "ring bell" and "ring bell with hammer" and "ring ornate bell" and "ring ornate bell with hammer" as ringing.

There is a donation box and ornate bell in Shinto Shrine.

The description of ornate bell is "A small ornate bell. Next to it, a small ornate hammer hangs on a string.".
The description of donation box is "A small, empty, box, awaiting donations to the spirits, or whomever maintains this place.".

Instead of taking the ornate bell:
	say "The bell is securely attached to the shrine. The small hammer hanging next to it isn't - but you don't see much use of it on its own, as the thing is clearly too small to be a weapon.";

Instead of taking the donation box:
	say "While you're fairly sure you could pry it up, a feeling of impending doom stays your thieving hands.";

Table of GameEventIDs (continued)
Object	Name
Tanukibell	"Tanukibell"

Tanukibell is a situation.
The sarea of Tanukibell is "Nowhere".

check ringing:
	if the player is not in Shinto Shrine, say "I see nothing to ring here." instead;
	if SatisfiedTanuki < 1, try resolving tanukibell instead;


Instead of resolving tanukibell:
	if Tanukigender is -1:
		say "'You want to keep talking to me?'";
		say "The voice seems to be coming just beside your ear, familiar from before. 'Well, you are my child now, so I suppose you are due some time with your parent. Would you prefer your parent be a mother or a father?'";
		say "1) Father, 2) Mother>";
		get typed command as playerinput;
		if playerinput matches "f" or playerinput matches "1":
			now tanukigender is 1;
			now Tanuki Dad is in shinto shrine;
		else if playerinput matches "m" or playerinput matches "2":
			say "'I'm not sure I'm in the mood for that.' (This option is not coded!)";
			stop the action;
[			now tanukigender is 2;
			now Tanuki Mom is in shinto shrine;]
		else:
			say "'I don't quite understand. Go on, think about it. I'll still be here.'";
			continue the action;
		say "The pitch of the voice shifts subtly to match your choice. 'Well, there we are,' speaks the [if tanukigender is 2]female[else]male[end if] voice. 'Now then, go ahead and ring that little bell if you need more parental advice. I'll go get the book. This is going to be so much fun!' Though you see no form, you can hear the sound of padded feet dashing away.";
		wait for any key;
		say "There is a rushing noise and a loud pop, a [if tanukigender is 2]female[else]male[end if] figure appears with a bright smile. The tanuki bows towards you. 'There we are! Now, I hope you are ready for grade A parenting. I have so much to teach you! First lesson, don't ring the bell anymore.'";
		stop the action;
	if TanukiGender > 0:
		say "'Didn't I tell you not to ring that?' They wave a finger at you admonishingly. 'What am I going to do with you? Go to your room!' With a flurry of leaves, your vision is lost a moment before you find yourself somewhere else.";
		now the player is in bunker;




Carry out ringing:
	say "You strike the bell, and it rings out like a gong, echoing through the shrine quite loudly!";
	say "A spirit takes form before you, looking like some kind of strange raccoon like being. It studies you a moment before it speaks:";
	if the demand of the Shinto Shrine is journal or demand of Shinto Shrine is gill fruit:
		now demandIndex is a random number from 1 to the number of entries in tanukiList;
		now the demand of Shinto Shrine is entry demandIndex of tanukiList;
	else:
		say "You've already been asked for something. Do you want something new?";
		if player consents:
			now demandIndex is a random number from 1 to the number of entries in tanukiList;
			now the demand of Shinto Shrine is entry demandIndex of tanukiList;
	say "'Bring me a [demand of shrine]! [bold type]sacrifice[roman type] it before me and I will be appeased!'";
	say "With this said, the spirit grabs between its legs and pulls out its scrotum in a great furry blanket, curling up into it before vanishing in a puff.";

sacrificing is an action applying to one thing.

understand "sacrifice [grab object]" as sacrificing.

check sacrificing:
	if noun is not owned, say "You don't have that." instead;
	if the player is not in Shinto Shrine, say "I see nothing to sacrifice to here" instead;
	if noun is not demand of Shinto Shrine, say "That is not what the spirit wants!" instead;

carry out sacrificing:
	say "You bring out the [noun] and place it on the donation box. It vanishes in a bright poof of smoke that fades into brown leaves, whirling away and leaving nothing behind.";
	delete noun;
	decrease SatisfiedTanuki by 1;
	increase score by 10;
	if SatisfiedTanuki is 0:
		extend game by 40;
		say "The spirit appears just in front of your nose, grinning. Its teeth sink into the tender flesh of your nose in a sharp bit of pain that is fortunately brief. 'Persistent mortal, I gift you for your sacrifices. You are now as a child to me. Simply concentrate on a [bold type]leaf[roman type] and you can take your, new, true form.' With that said, the spirit folds up on itself and is soon gone.";
	else:
		now the demand of the Shinto Shrine is journal;
		try ringing;

leafing is an action applying to nothing.

understand "leaf" as leafing.

check leafing:
	if SatisfiedTanuki > 0, say "What?" instead;


carry out leafing:
	say "Concentrating intently on leaves, you feel a large one appear over you and settle on your head. Suddenly erotic pulses rock your form as you begin to assume your natural form!";
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Tanuki":
			now monster is y;
			break;
	now non-infectious entry is false; [swap to allow infection...]
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	now non-infectious entry is true; [...then close to prevent random infection]
	say "With the changes complete, you feel you could [bold type]expand balls[roman type] and [bold type]contract balls[roman type] and also grow or contract your cock or breasts!";

ballgrowing is an action applying to nothing.

understand "expand balls" and "grow balls" as ballgrowing.

check ballgrowing:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out ballgrowing:
	if player is not male:
		say "Your tanuki magic forms a set a balls for you, growing a tiny cock to go with them.";
		now cocks of player is 1;
		now cock length of player is 2;
	increase cock width of player by a random number between 1 and 5;
	say "Your tanuki magic surges down into your balls as they begin to swell rapidly! Your balls feel like they have become [ball size]!";

ballshrinking is an action applying to nothing.

understand "shrink balls" and "contract balls" as ballshrinking.

check ballshrinking:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out ballshrinking:
	decrease cock width of player by a random number between 1 and 5;
	if cock width of player < 1:
		say "You have no more balls! Your [if cocks of player > 1]cocks go[else]cock goes[end if] away as well for now!";
		now cocks of player is 0;
		now cock length of player is 0;
		now cock width of player is 0;
		follow the cock descr rule;
	else:
		say "Your tanuki magic surges down into your balls as they begin to shrink rapidly! Your balls feel like they have become [ball size]!";

cockgrowing is an action applying to nothing.

understand "expand cock" and "grow cock" as cockgrowing.

check cockgrowing:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out cockgrowing:
	if player is not male:
		say "Your tanuki magic grows a cock for you as you form a tiny set a balls for yourself as well.";
		now cocks of player is 1;
		now cock width of player is 2;
	increase cock length of player by a random number between 1 and 5;
	follow the cock descr rule;
	say "Your tanuki magic surges down into your male meat as it begins to swell rapidly! Your [descr] [cock of player] organ twitches excitedly!";

cockshrinking is an action applying to nothing.

understand "shrink cock" and "contract cock" as cockshrinking.

check cockshrinking:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out cockshrinking:
	decrease cock length of player by a random number between 1 and 5;
	if cock length of player < 1:
		now cock length of player is 0;
		now cock width of player is 0;
		now cocks of player is 0;
		say "You have no more cock!";
		follow the cock descr rule;
	else:
		follow the cock descr rule;
		say "Your tanuki magic surges down into your male meat as it begin to shrink rapidly! Your [descr] [cock of player] cock settles with a last twitch!";

breastgrowing is an action applying to nothing.

understand "expand breasts" and "grow breasts" as breastgrowing.

check breastgrowing:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out breastgrowing:
	if breasts of player is 0, now breasts of player is 2;
	increase breast size of player by a random number between 1 and 2;
	if breast size of player > 26, now breast size of player is 26;
	follow the breast descr rule;
	say "Your tanuki magic surges up into your chest as it begins to swell rapidly, leaving you with [descr] breasts!";

breastshrinking is an action applying to nothing.

understand "shrink breasts" and "contract breasts" as breastshrinking.

check breastshrinking:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out breastshrinking:
	decrease breast size of player by a random number between 1 and 2;
	if breast size of player < 1:
		now breast size of player is 0;
		say "You have no more breasts than nipples!";
		follow the breast descr rule;
	else:
		follow the breast descr rule;
		say "Your tanuki magic surges up into your chest as it begin to shrink rapidly, leaving you with [descr] breasts!";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Tanuki"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is ""; [ Description of the creature when you encounter it.]
	now face entry is "sleek muzzled with a raccoon's mask and set of large expressive ears"; [ Face description, format as "Your face is (your text)"]
	now body entry is "somewhat pudgy and oddly animal-like, like a cartoon rendition of some kind of raccoon perhaps"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]tanuki colored[or]stripe furred[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "A thick and rounded tail sways behind you with black stripes along its length, covered in [skin of player] texture."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]sheathed[or]size changing[or]knotted[at random]"; [- Cock Description, format as you have a "size" (your text) cock-]
	now face change entry is "it draws into a narrow snout and a raccoon mask of black appears on your face"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes fatter and a little shorter as you take on the stereotypical stature of a tanuki"; [- body change text. format as "Your body feels funny as (your text)." -]
	now skin change entry is "brown and black fur explodes across you in tanuki-like patterns as your skin is left tingling"; [- skin change text. format as "Your skin feels funny as (your text)." -]
	now ass change entry is "a thick and fluffy looking tail emerges from your bottom"; [- ass/tail change text. format as "Your ass feels funny as (your text)." -]
	now cock change entry is "it grows a [skin of player] sheath"; [- cock change text. format as "Your cock feels funny as (your text)." -]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 19;
	now sex entry is "nochange"; [- Defines which sex the infection will try and make you. current options are "Male" "Female" "Both"-]
	now HP entry is 64; [- How many HP has the monster got? -]
	now lev entry is 5; [- Level of the Monster, you get this much HP if you win, or this much HP halved if you loose -]
	now wdam entry is 10; [-Amount of Damage monster Does when attacking.-]
	now area entry is "Nowhere"; [- Current options are "Outside" and "Mall". Case sensitive-]
	now cocks entry is 0; [- How many cocks will the infection try and cause if sex is "Male" or "Both"-]
	now cock length entry is 0; [- Length infection will make cock grow to if cocks-]
	now cock width entry is 0; [- Size of balls apparently ;) sneaky Nuku-]
	now breasts entry is 2; [- Number of Breasts infection will give you. -]
	now breast size entry is 3; [-Size of breasts infection will try to attain -]
	now male breast size entry is 0; [- Breast size for if Sex="Male", usually zero. -]
	now cunts entry is 1; [- if sex = "Female or both", indicates the number of female sexes infection will grant you.-]
	now cunt length entry is 14; [- Length of female sex infection will attempt to give you. -]
	now cunt width entry is 5; [- Width of female sex infection will try and give you -]
	now libido entry is 10; [- Amount player Libido will go up if defeated -]
	now loot entry is ""; [- Loot monster drops, -]
	now lootchance entry is 0; [- Chance of loot dropping 0-100 -]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]chubby[or]fat[at random]";
	now type entry is "[one of]raccoon[or]tanuki[at random]";
	now magic entry is true;
	now resbypass entry is true; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

when play ends:
	if SatisfiedTanuki is 0:
		say "Your tanuki blood serves you well. They say Tanuki are shapeshifters as well, but you never quite get past size shifting. A handy enough trick on its own? The ability to at least transition from tanuki form to human is quite useful at least!";
		if humanity of player < 10:
			increase humanity of player by 20;
			say "Your supernatural heritage burns off the worst of your insanity, granting you clarity!";

Section 3 - Tanuki Coin

Table of Game Objects (continued)
name	desc	weight	object
"tanuki coin"	"[tancoindesc]"	1	tanuki coin

to say tancoindesc:
	say "     A strange, solid gold coin. It's fairly heavy and quite worn. On one side there appears to be a leaf, while on the other an eastern dragon, which circles around the outer edge of its face, with its tail curving at the bottom to go straight up and occupy the center. It's warm to the touch, but doesn't feel particularly infectious.";

the scent of tanuki coin is "It has a benign, metallic smell about it.";

tanuki coin is a grab object. It is part of the player. It is fast. It is not temporary. The usedesc of tanuki coin is "[usetancoin]".

to say usetancoin:
	say "[line break]     You flip the coin";
	if internalbypass is false:
		say "... It lands leaf-side up";
		if player is not male or (player is male and cockname of player is not listed in infections of internallist):
			say ". You feel a strange, tingling sensation in your groin, but nothing else happens. Strange...";
		else:
			say ". You feel a strange, tingling sensation in your groin. Checking yourself, it appears your balls have grown back, in spite of your previously internal anatomy!";
		now internalbypass is true;
	else:
		say "... It lands dragon-side up";
		if player is not male or (player is male and cockname of player is not listed in infections of internallist):
			say ". You feel a strange, tingling sensation in your groin, but nothing else happens. Strange...";
		else:
			say ". You feel a strange, tingling sensation in your groin. Checking yourself, it appears your balls have disappeared, receding once more in compliance with your internal infection!";
		now internalbypass is false;

Section 4 - Tanuki Dad

Tanuki Dad is a male person.
TanukiTopics is a list of text that varies.

Table of GameCharacterIDs (continued)
object	name
Tanuki Dad	"Tanuki Dad"
Tanuki Mom	"Tanuki Mom"

The description of Tanuki Dad is "[TanukiDadDesc]".
[The icon of Tanuki Dad is Figure of Jason_clothed_icon.]

to say TanukiDadDesc:
	say "     The tanuki spirit here has taken on the form of a father. You can tell, with the sharp blazer he's wearing with that big bold tie. He has his hands on either side of it, grinning at you proudly, his child. His belly is considerable, bulging in his clothing. Competing for the bulging contest, his great balls resist even the thought of trying to fit into any pants, so they are allowed to hang free, furry and virile. Compared to them, his furry sheath is actually comparatively small, not that he seems to care much.";
	add "Tanuki Balls" to TanukiTopics.


instead of sniffing Tanuki Dad:
	say "     He smells clean, if you don't mind the scent of fur and a bit of saki that clings to him. Noticing your attention, he grins. You would think this would be hard to notice, since grinning is his default expression, but there is a difference.";

instead of conversing the Tanuki Dad:
	LineBreak;
	say "What do you want to talk with Tanuki about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Survival";
	now sortorder entry is 1;
	now description entry is "Get some tricks about surviving these harsh times.";
	[
	choose a blank row in table of fucking options;
	now title entry is "Romance";
	now sortorder entry is 2;
	now description entry is "Ask for advice on finding that special someone";
	[]
	if "Tanuki Balls" is listed in TanukiTopics:
		choose a blank row in table of fucking options;
		now title entry is "Balls";
		now sortorder entry is 3;
		now description entry is "Ask about his big balls";
	[]
	if HP of Tanuki Dad > 0:
		choose a blank row in table of fucking options;
		now title entry is "Hunting";
		now sortorder entry is 3;
		now description entry is "Suggest that the two of you go out hunting";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fighting";
	now sortorder entry is 4;
	now description entry is "Talk about fighting with Boghrim";
	sort the table of fucking options in sortorder order;
	]
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
				now sextablerun is 1;
				if (nam is "Survival"):
					say "[TanukiSurvivalTalk]";
				if (nam is "Romance"):
					say "[TanukiRomanceTalk]";
				if (nam is "Hunting"):
					say "[TanukiHuntingTalk]";
				if (nam is "Balls"):
					say "[TanukiBallsTalk]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     The tanuki gives you a rather big grin, patting his round belly.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

To say TanukiSurvivalTalk:
	now the humanity of the player is 20;
	say "'It's a tough world out there.' He nods appreciatively. 'The most important part is that you keep your chin up.'";
	If humanity of player < 40:
		say "His wet nose twitches softly. 'Looks like you're letting things get to you. I know how to relax you. Go on, play a few notes.' He gestures broadly to his expansive, if clothed, belly. 'Beat a few bars and you'll be right as rain.'";
		if the player consents:
			say "You reach your [if scalevalue of player is 3]normal-size[else if scalevalue of player is 4]large[else]massive[end if] [bodyname of player] hands out and pat lightly at his belly. He reaches with his furry paws and pats at your hands in return. 'Go on, harder, and faster. Think of a song!' You play all the harder, thinking up a [one of]lively[or]rhythmic[or]random[at random] song to play with his belly serving as the drum. He manages to somehow hum along with the song in your head despite you not sharing it. Time passes without you noticing. By the time the drum session is over, you feel more grounded and together.";
			increase the humanity of the player by 50;
			follow turnpass rule;
		else:
			say "'Aw, be that way, but the offer's open, champ!' When he thinks you aren't looking at him directly, he speaks more quietly to himself, 'nailed it, I'm a great dad.'";
	if scalevalue of player < 4:
		say "He tucks a furry finger under your chin, lifting it slightly. 'Now, I know I'm not your, you know, original dad, and that's alright. My biologicals are all off that way.' He points to the East. 'I invited them to come along, but they said this place was too far. Maybe I'll find another place that's closer to them? Nevermind me, this is about you!' He pats your shoulders softly. 'Now let's see...'";
	else:
		say "He cranes his head back a little to look up at you. 'I've never had such a large child before. It's kind of exciting, to tell you the truth. Don't worry about it though. A good father is a good father, no matter how big or small he might be.' He wags a finger as he talks, nodding to himself. 'Now as for advice...'";



to say TanukiRomanceTalk:
	say "...";

to say TanukiHuntingTalk:
	say "...";

to say TanukiBallsTalk:
	say "...";

instead of fucking Tanuki Dad:
	say "He bursts into a merry fit of laughter. 'I'm your father, not your boyfriend. There is a difference.' He wags a finger at you reprimandingly. 'I know people look at these big things, but they are my tools, not my masters.'";

Tanuki ends here.
