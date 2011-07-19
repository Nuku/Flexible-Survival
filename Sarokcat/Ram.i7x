Ram by Sarokcat begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Ram to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
ramconsent is a number that varies.
to say ram attack:
	say "Leon looks up from what he was doing as you approach and smiles, 'I can tell what you want, just head on back to the back room and i'll be right there' he says as he calls over one of the other ewes to finish what he was doing.  Shuddering in anticipation you find yourself heading through the doorway as your ram suggested, unable to disobey.";
	wait for any key;
	if cunts of player is greater than 0:
		say "Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip.  You eagerly find yourself removing what little clothing you were wearing, your body tightening in pleasure in spite of yourself at a command from the strong and dominant ram. 'Now that's what I like to see,' He says as he takes in your naked body, his eyes lingering on your now exposed slit. Leon grins as he slowly begins stalking forward, something in the way he moves making you feel smaller and more needy as he draws close to you, his strong masculine musk filling your nose and making your insides clench in need. Reaching out he rests his three fingered hand on your shoulder for a minute, before gently turning you to face away from him.";
		wait for any key;
		say "Being unable to see whats happening adds an extra erotic flavor to the experience as he gently pushes you forward until you are braced on one of the low padded benches in the room, causing you to shudder in anticipation. Your body tenses as you can feel the tip of his hard cock pressed up against your ass, almost unconsciously you find yourself lifting your ass up higher to provide your ram with easier access to your increasingly wet opening.  You hear Leon chuckle softly behind you at your obvious wantonness,  before you can turn your head to look behind you, you feel your vagina split open as he impales you with his rod in one swift move.  Gasping in shock and pleasure you quickly lower your head as he begins to slowly slide himself in and out of your needy pussy.  You can only moan as you feel your insides shudder and grip his cock tightly, his every move sending shockwaves of pleasure through your body.";
		wait for any key;
		let ram be "ram";
		let ewe be "ewe";
		say "[if skinname of player is ram or skinname of player is ewe]He buries his rough hands in your soft wool, gripping you tighter and then he begins to grip and release as he thrusts into you, his hands massaging your woollen outside as his cock massages your insides with each thrust.[end if][if facename of player is ram or facename of player is ewe]With his strong musk filling your  sheeplike nose, you can't help yourself from responding, you quickly find yourself making soft baaing and bleating noises with each and every one of his thrusts.  Leon only thrusts harder with each noise, seeming encouraged and turned on by your obvious sign of submission.[end if] As Leon begins to rock his hips forward even faster, you can feel his front leaning over you pressing you down into the bench even further, his rod moving within you making your eyes close in pleasure as your mouth hangs open weakly.  You feel your mind emptying out of everything else except for the strong ram above you and his wonderful tool as he breeds you, your body signalling its total submission to his dominance, with your mind quickly following suit. Nothing seems quite as important to you anymore as being just another mindless part of the flock, surrendering body and soul to the strong male above you.  As if sensing your readiness to submit, Leon thrusts forward one last time, his voice rising in a triumphant bleat as his cock explodes within you, your mind exploding with pleasure as he coats your insides with his fertile dominant seed. Moaning at the feel of his fertile treasure within you, you find yourself unable to do anything but shudder as aftershocks run through you,  before he pulls himself out of you.  You can feel him pat you on the back as you lie there helplessly before hearing the door open and shut as he leaves you alone to recover and pull your shattered mind back together. Eventually you recover and manage to clean up and drag yourself back outside, a little bit worried at how easily he reduced you to just another mindless ewe, and a little bit excited by it as well.[impregchance]";
	otherwise:
		say "Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip.  You quickly find yourself removing what little clothing you were wearing, finding yourself unable to resist a command from the dominant ram in the flock. Leon smiles, then takes a look at you before shaking his head sadly, 'Now this just won't do.' He says as he gestures to your [cock of player] cock, 'There's only room in the flock for one ram at a time ya see.'  He continues with a shake of his head, 'Looks like I'm going to need to show you your place in this flock properly, and fix that little problem you got between your legs there.' So saying he quickly moves stalks toward you his posture and movements intimidating as he shows his dominance. ";
		wait for any key;
		say "Forcing you down on your knees he reaches down and begins fondling his own cock in front of you, 'Don't move now.' Leon says with a grunt as he begins to stroke himself.  His thick black and pick cock emerges slowly from its wooly sheath in front of your eyes, its tip level with your face as he slowly pumps his hoof like hand up and down its length.  You can't help but stare in fascination as your rams strong male musk fills the room, its earthy scent going straight to your head and making your own cock tighten in response. Quickening his strokes, before you know it, Leon cums with a loud Baaaing noise, as his seed spurts all over your face, covering you in his sticky ram juices.  Blinking to clear your eyes, you cant help but lick your lips, tasting his seed on and in your mouth, as the rest sinks into your skin. As the strong taste of his male seed shoots through you, you can feel your body twisting and changing in response, becoming better suited to being a proper ewe to his ram.   'Ah, that was good.' Leon says as he begins to clean himself up, 'I'm looking forward to our next time, already, and seeing how you look as a proper ewe.' he finishes with a lewd wink before ducking out the door. Leaving you to clean up on your own before making your own way back to the store, the taste of his seed still filling your mouth. ";


	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "ram" to infections of guy;
	add "ram" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "ram"; [Name of your new Monster]
	now attack entry is "[one of] He rubs his 'Specially treated' wool on you, causing you to moan at the sensitive sensation.[or]He Rushes forward, knocking you back with his short horns[or].[or]He Smirks at you before letting out a loud sheep call, the noise echoing in your head making your thoughts fuzzy[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "With the ram defeated, you are free to continue."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[ram attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A strong looking male ram approaches, the horns on his head curling back slightly, while the horn between his legs juts proudly forward.";[ Description of the creature when you encounter it.]
	now face entry is "Short black muzzle";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "strong and rugged, equally well built for fighting other rams or keeping predators at bay, your strong leg muscles giving you extra power when charging forward. Though your sheeplike hands and hooved feet can make handling items and climbing things difficult.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]woolly[or]soft wool[or]white fleeced[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Your short stubby tail sticks straight out behind you,  have a broad, reptilian, tail. It has two ridges that run along the top, converging at the tip. It is covered in [skin of player] flesh and sways behind you with every step. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]Sheeplike[or]Ram[or]Black and pink spotted[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "you feel your ears stretch out to the sides of your head, as your face pushes forward into a sheeplike muzzle."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your body seems to swell out slightly as it takes on a somewhat stocky yet feminine appearance, your fingers fusing into three almost hooflike fingers, as the muscles in your legs shift, making it easier to move on your new hooves."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it is covered in soft woolen fleece, almost begging to be touched."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your ass expands into a more rounded shape. A short round nub of a tail startling you as it pushes its way out above your increasingly cute ass."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it twists and warps between your legs, growing thicker as it takes on a black and pink tint, before drawing up into a new sheath between your legs"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 13;
	now dex entry is 16;
	now sta entry is 14;					
	now per entry is 14;
	now int entry is 8;
	now cha entry is 18;
	now sex entry is "female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
	now area entry is "Store";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 5;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 40;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Tainted wool";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]


to Ramify:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "ram":
			now monster is y;
			break;
	infect;
	infect;
	infect;
			



[ Edit this to have the correct Name as wall]
Ram ends here.