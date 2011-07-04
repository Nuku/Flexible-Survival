Elf by Nuku Valente begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Elf to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Elfdefeat is a number that varies.
to say Elf attack:
	if hp of player is greater than 0:
		say "'Scum,' she sneers as she shoves you over and slides on top of you, 'You are no good for anything but a pet at best. A true warrior never surrenders.' She raises a slender hand to brush over your cheek a moment, 'And I[apostrophe]m not even sure you are good for that.'";
		if cocks of player is greater than 0 and cock length of player is less than 10 and a random chance of 1 in 2 succeeds:
			say "She appraises you carefully for a few moments before making up her mind. She pins you down with a foot as she strips you down. When you try to speak, she gives you a harsh look. Slender fingers curl around your [cock of player] member, slowly stroking it to firmness, 'Please me well and maybe I will think more of you.' she says as she settles down, plunging your firm member into her waiting tightness. Her naked vulva spreads wetly across the end of your cock as she settles on your groin. Her hands move to your shoulders, holding you down as she starts to rock against you.";
			wait for any key;
			say "'Oh, good stud, I...' She bites her lip as her body trembles with obvious climax. Her tunnel goes hot and tight around your shaft and you explode forcefully, filling her with your creamy offering. She gives a sharp cry as she feels you filling her, scowling a moment before her expression warms and she leans in, brushing her lips to yours, 'You[apostrophe]re good for something.' she says before she slips back up to her feet, glowing with satisfaction. She leaves you laying on the ground as she wanders off.";
		wait for any key;
	otherwise:
		say "She shoves you powerfully against a tree and rushes up against you, pressing a knife to your throat, 'You fought bravely, but you are not powerful enough, yet. Keep that fire in your eyes and we may yet be sisters.' She then leans in and presses her lips to yours in a powerful kiss as her free hand reaches down, grabbing you between the legs a little roughly, inspecting you as she rubs her curvaceous front against your own a moment.";
		wait for any key;
		say "'I will find you, later.' she promises, shoving you once more before she vanishes into the foliage.";

[ [Elf loss] ]
To say Elf loss:
	say "You knock the elf back and she topples to her bottom. You advance on her, but a sudden breeze of forest air whisks her away in a blur.";
	
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "elf" to infections of girl;
	Choose a blank row from Table of random critters;
	now name entry is "elf"; [Name of your new Monster]
	now attack entry is "[one of]An arrow embeds itself in your arm painfully.[or]She blows you a kiss before letting two arrows skim past your thighs. Is that a come on?[or]You manage to get in close, just to be swatted on the head with the bow itself.[or]She brings up a slender foot just to prove it's quite workable for a good kick.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Elf loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Elf attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A human? Maybe? She has asian like facial features on lightly tanned flesh. Her ears are unusually long and tapered, but other than that, nothing impossible. She has delicious curves, with heavy G breasts swaying with every step, barely held in place with her sheer green silks. Strung over her back is a long curved wooden bow, almost as pretty as she is, if you like that kind of thing. She has long blond hair that flows down to her ass without bothering her graceful steps.";[ Description of the creature when you encounter it.]
	now face entry is "set of deep, soul piercing, blue eyes framed in a face that seems somewhat oriental. Your ears are quite long and tapered, inhumanly so, framing your";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is " largely slender and agile, with long arms and slim fingers. Your body is covered in fine, green, silks that flow smoothly across your form, concealing it in its soft embrace. Your legs are shapely and athletic, the silks brushing along them with each step.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "smooth and flawless";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a large, firm, buttocks, waiting to be grabbed. It is somewhat concealed in green silks. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "human";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "a strange warping ripple runs across the flesh of your cheeks as your face changes and smooths out to new, elfin, proportions."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "waves of heat run through your altering form. Your figure becomes feminine and your fingers lengthen to agile digits. Arms and legs follow as the world seems to shrink a little around you. Green silks burst into existence, wrapping your exotic form in comforting softness."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your skin evens out its blemishes, becoming youthful and smooth."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your rump begins to swell, along with your lust, leaving you breathing hard as you gain a large, grabbable, ass."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it thrums with an alien pleasure."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 12;					
	now per entry is 17;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 9;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 8;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 10;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Fish";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "Elf":
		if humanity of player is less than 10:
			say "Feeling no more attachment to this boring world, you speak the words of a spell that you suddenly remember. The air ripples and shudders as a great portal opens before you, shimmering with heat. You step through without hesitation and a great feline beast waits patiently in a jungle. You mount the beast and he carries you back to your people swiftly. Play time was over, but you would not forget your time amongst the humans. You would suggest to the queen that your people take over a city of them. They would make delightful pets...";
		otherwise:
			say "You return to human society, but remain above it. Your graceful figure cuts powerfully through a crowd, and you have little issue commanding your way. As you grow accustomed to your new self, your confidence builds, and you become the owner of an upper class night club. While you ignore most who come through its halls, you do play favorites, claiming the prettiest of the lost for your personal needs and to satiate the itch that develops in your loins.";
			


[ Edit this to have the correct Name as wall]
Elf ends here.