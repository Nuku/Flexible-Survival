Version 1 of Tanuki by Nuku Valente begins here.

"Adds Tanuki to Flexible Survival"

Section 1 - The Situation

Shrine is a room. "How odd for an American city. A Japanese style shrine lays nestled in the forest, tucked just off a faint trail and looking reasonably well kept. There is a small box for donations, and a small mallet beside a bell. Perhaps it could be [bold type]rung[roman type]? The air smells of cherry blossoms and spring. You feel safe here.".
Northwest of Park Trail is Shrine.

instead of sniffing Shrine:
	say "The shrine smells faintly of cherry blossoms and spring.  The scent puts you at ease.";

SatisfiedTanuki is a number that varies. SatisfiedTanuki is usually 5.
Shrine has a Grab Object called Demand.
The demand of shrine is usually journal.

ringing is an action applying to nothing.

understand "rung" and "ring" and "ring bell" and "ring bell with hammer" as ringing.

There is a donation box and hammer and and bell in shrine.

The description of bell is "A small ornate bell.";
The description of donation box is "A small, empty, box, awaiting donations to the spirits, or whomever maintains this place.";
The description of hammer is "A tiny black mallet on a string.";

Instead of taking the bell:
	say "The bell is securely attached to the shrine.";
	
Instead of taking the donation box:
	say "While you're fairly sure you could pry it up, a feeling of impending doom stays your thieving hands.";

instead of taking the hammer:
	say "You have no use for that. Besides, why anger the spirits?";

check ringing:
	if the player is not in Shrine, say "I see nothing to ring here." instead;
	if SatisfiedTanuki is less than 1, say "Nothing happens." instead;
	
Carry out ringing:
	say "You strike the bell, and it rings out like a gong, echoing through the shrine quite loudly!";
	say "A spirit takes form before you, looking like some kind of strange raccoon like being. It studies you a moment before it speaks:";
	if the demand of the shrine is journal:
		now the demand of shrine is a random temporary grab object;
	say "'Bring me a [demand of shrine]! [bold type]sacrifice[roman type] it before me and I will be appeased!'";
	say "With this said, the spirit grabs between its legs and pulls out its scrotum in a great furry blanket, curling up into it before vanishing in a puff.";

sacrificing is an action applying to one thing.

understand "sacrifice [grab object]" as sacrificing.

check sacrificing:
	if noun is not owned, say "You don't have that." instead;
	if the player is not in Shrine, say "I see nothing to sacrifice to here" instead;
	if noun is not demand of shrine, say "That is not what the spirit wants!" instead;

carry out sacrificing:
	say "You bring out the [noun] and place it on the donation box. It vanishes in a bright poof of smoke that fades into brown leaves, whirling away and leaving nothing behind.";
	delete noun;
	decrease SatisfiedTanuki by 1;
	increase score by 10;
	if SatisfiedTanuki is 0:
		extend game by 40;
		say "The spirit appears just in front of your nose, grinning. Its teeth sink into the tender flesh of your nose in a sharp bit of pain that is fortunately brief. 'Persistent mortal, I gift you for your sacrifices. You are now as a child to me. Simply concentrate on a [bold type]leaf[roman type] and you can take your, new, true form.' With that said, the spirit folds up on itself and is soon gone.";
	otherwise:
		now the demand of the shrine is journal;
		try ringing;

leafing is an action applying to nothing.

understand "leaf" as leafing.

check leafing:
	if SatisfiedTanuki is greater than 0, say "What?" instead;
	

carry out leafing:
	say "Concentrating intently on leaves, you feel a large one appear over you and settle on your head. Suddenly erotic pulses rock your form as you begin to assume your natural form!";
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Tanuki":
			now monster is y;
			break;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	infect;
	say "With the changes complete, you feel you could [bold type]expand balls[roman type] and [bold type]contract balls[roman type] and also grow or contract your cock or breasts!";
	
ballgrowing is an action applying to nothing.

understand "expand balls" and "grow balls" as ballgrowing.

check ballgrowing:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out ballgrowing:
	increase cock width of player by a random number between 1 and 5;
	say "Your tanuki magic surges down into your balls as they begin to swell rapidly! Your balls feel like they have become [ball size]!";

ballshrinking is an action applying to nothing.

understand "shrink balls" and "contract balls" as ballshrinking.

check ballshrinking:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out ballshrinking:
	decrease cock width of player by a random number between 1 and 5;
	if cock width of player is less than 1:
		now cock width of player is 0;
		say "You have no more balls!";
	otherwise:
		say "Your tanuki magic surges down into your balls as they begin to shrink rapidly! Your balls feel like they have become [ball size]!";
	
cockgrowing is an action applying to nothing.

understand "expand cock" and "grow cock" as cockgrowing.

check cockgrowing:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out cockgrowing:
	increase cock length of player by a random number between 1 and 5;
	follow the cock descr rule;
	say "Your tanuki magic surges down into your male meat as it begins to swell rapidly! Your [descr] [cock of player] organ twitches excitedly!";

cockshrinking is an action applying to nothing.

understand "shrink cock" and "contract cock" as cockshrinking.

check cockshrinking:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out cockshrinking:
	decrease cock length of player by a random number between 1 and 5;
	if cock length of player is less than 1:
		now cock length of player is 0;
		now cocks of player is 0;
		say "You have no more cock!";
	otherwise:
		follow the cock descr rule;
		say "Your tanuki magic surges down into your male meat as it begin to shrink rapidly! Your [descr] [cock of player] cock settles with a last twitch!";

breastgrowing is an action applying to nothing.

understand "expand breasts" and "grow breasts" as breastgrowing.

check breastgrowing:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out breastgrowing:
	increase breast size of player by a random number between 1 and 2;
	if breast size of player is greater than 26, now breast size of player is 26;
	follow the breast descr rule;
	say "Your tanuki magic surges up into your chest as it begins to swell rapidly, leaving you with [descr] breasts!";

breastshrinking is an action applying to nothing.

understand "shrink breasts" and "contract breasts" as breastshrinking.

check breastshrinking:
	if facename of player is not "Tanuki", say "You need to have your head on right to do that." instead;

carry out breastshrinking:
	decrease breast size of player by a random number between 1 and 2;
	if breast size of player is less than 1:
		now breast size of player is 0;
		say "You have no more breasts than nipples!";
	otherwise:
		follow the breast descr rule;
		say "Your tanuki magic surges up into your chest as it begin to shrink rapidly, leaving you with [descr] breasts!";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tanuki"; [Name of your new Monster]
	now attack entry is "";
	now defeated entry is ""; 
	now victory entry is  ""; 
	now desc entry is "";[ Description of the creature when you encounter it.]
	now face entry is "sleek muzzled with a raccoon's mask and large expressive ears over your";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "somewhat pudgy and oddly animal like, like a cartoon rendition of some kind of raccoon perhaps.";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]tanuki colored[or]stripe furred[at random]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "A thick and rounded tail sways behind you with black stripes along its length, covered in [skin of player] texture.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]sheathed[or]size changing[or]knotted[at random]";[- Cock Description, format as you have a "size" (your text) cock-]
	now face change entry is "it draws into a narrow snout and a raccoon mask of black appears on your face."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it becomes fatter and a little shorter as you take on the stereotypical stature of a tanuki."; [- body change text. format as "Your body feels funny as (your text)" -]
	now skin change entry is "Brown and black fur explodes across you in tanuki like patterns as your skin is left tingling."; [- skin change text. format as "Your skin feels funny as (your text)" -]
	now ass change entry is "a thick and fluffy looking tail emerges from your bottom."; [- ass/tail change text. format as "Your ass feels funny as (your text)" -]
	now cock change entry is "it grows a [skin of player] sheath."; [- cock change text. format as "Your cock feels funny as (your text)" -]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 14;                    
	now per entry is 14;
	now int entry is 8;
	now cha entry is 19;
	now sex entry is "Neither";     [- Defines which sex the infection will try and make you. current options are "Male" "Female" "Both"-]
	now hp entry is 64;            [- How many HP has the monster got? -]
	now lev entry is 5;            [- Level of the Monster, you get this much hp if you win, or this much hp halved if you loose -]
	now wdam entry is 10;            [-Amount of Damage monster Does when attacking.-]
	now area entry is "Nowhere";    [- Current options are "Outside" and "Mall"  Case sensitive-]
	now cocks entry is 0;            [- How many cocks will the infection try and cause if sex is "Male" or "Both"-]
	now cock length entry is 0;        [- Length infection will make cock grow to if cocks-]
	now cock width entry is 0;        [- Size of balls apparently ;) sneaky Nuku-]
	now breasts entry is 2;            [- Number of Breasts infection will give you. -]
	now breast size entry is 3;        [-Size of breasts infection will try to attain -]
	now male breast size entry is 0;    [- Breast size for if Sex="Male", usually zero. -]
	now cunts entry is 1;            [- if sex = "Female or both", indicates the number of female sexes infection will grant you.-]
	now cunt length entry is 14;        [- Length of female sex  infection will attempt to give you. -]
	now cunt width entry is 5;        [- Width of female sex  infection will try and give you -]
	now libido entry is 10;            [- Amount player Libido will go up if defeated -]
	now loot entry is "Skunk Goo";            [- Loot monster drops, -]
	now lootchance entry is 0;        [- Chance of loot dropping 0-100 -]
	
when play ends:
	if SatisfiedTanuki is 0:
		say "Your tanuki blood serves you well. They say Tanuki are shapeshifters as well, but you never quite get past size shifting. A handy enough trick on its own? The ability to at least transition from tanuki form to human is quite useful at least!";
		if humanity of player is less than 10:
			increase humanity of player by 20;
			say "Your supernatural heritage burns off the worst of your insanity, granting you clarity!";

Tanuki ends here.
