Version 7 of Mothgirl For FS by Soren begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Add a Moth to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Mothdefeat is a number that varies.
to say Moth attack:
	if Mothdefeat is 0: [ first time losing to a moth ]
		say "The Mothgirl smiles, rubbing her hands together collecting a small amount of light blue dust from her hands into her palm. She blows the dust into your face gently, making you feel tipsy and aroused. The moth  looks at your dreary state and rub her breasts onto your [Breast size of player] breasts and kisses you lightly on the lips before departing, whispering in your ear 'enjoy' as she leaves you in your state";
		increase breast size of player by 1;
		increase charisma of player by 1;
		decrease intelligence of player by 1;
		if the intelligence of player < 1:
			now intelligence of player is 1;
		now Mothdefeat is 1;
	otherwise:
		if a random chance of 2 in 3 succeeds: [ Prefer male action]
			if cunts of player > 0:
				if cunt length of player is less than 15 or cunt width of player is less than 10:
					say "The mothgirl looks over at you, shaking her head and smiling at the sudden return of past events. She pushes you to the ground and tenderly climbs on top of you and teases your nipples with her finger till they are erect. She then makes use of her position to unfurl her wings and flap them sending sparkling yellow dust down toward you, this arouses you even more making your cunt wet without any touch from the Moth. She then takes a small sphere the size of a pea, and pops it into her mouth. She takes some time to kiss you and rub your cunt even more as she waits for the pea like object to take effect. She then grows a penis above average in size, and enters your pussy with a hard lurch. The penis is covered in small millimeter size tubules as they stimulate your insides. She uses her sudden dominant position to force your [facename of player] face into her bosom and have you suck the nectar from her C cup breasts. After she is satisfied with her dominant position she quickens the pace of her penetrations till you both climax as one. [impregchance]";
					increase breast size of player by 5;
					increase charisma of player by 2;
					increase cunt length of player by 2;
					increase cunt width of player by 1;
				otherwise:
					if ( stamina of player is less than 15 ) and ( intelligence of player is less than 15) :
						say "She looks at you having been defeated by her once again, she now has no mercy on you as she douses you with an abundance of dust from her wings. This drives your thoughts into submission as she tells you gently 'come here my pet' your body and mind unable to withstand the effects of the dust obeys and approaches the mothgirl. The mothgirl than spreads her legs and motions you with her finger to come closer as she says almost in a whisper 'now use that tongue of yours to please me, here' as she points to her pussy. You without pause drop your face onto her snatch and begin licking her gently at first. After a minute of teasing she tells you in an aroused tone 'faster if you please' giving you a sexy smile. You obey and quicken your pace, giving her suprisingly wet cunt a thorough licking. She starts to pant heavily as she says to you in a forciful tone 'harder' you unable to control your actions start to bury your tongue deep into her pussy. She soon reaches climax spraying nectar onto your face she then says softly through panted breathes 'lick it up, you will enjoy it'. You still under the effects of the dust clean her of the sprayed nectar and soon go to licking the liquid from your face";
						increase breast size of player by 5;
						decrease intelligence of player by 2;
						if the intelligence of player < 1:
							now intelligence of player is 1;
						decrease stamina of player by 2;
						if the stamina of player < 1:
							now stamina of player is 1;
						increase charisma of player by 1;
					otherwise:
						say "She looks at you having been defeated by her once again, she now has no mercy on you as she douses you with an abundance of dust from her wings. However you recover from this dust and you escape before she has a chance to do anything to you. However you leave slightly aroused.";
						increase charisma of player by 1;	
		otherwise: [ Prefer female action]
			if cocks of player < 1:			
				say "She looks at you and quickly gives you a small bite onto the neck, this paralyzes your entire body. She catches you and gently sets you on the ground, preparing for her coming entertainment she rubs her hands together in glee as she produces a small pea sized sphere, blue in color. She gingerly opens your mouth and places the pea onto your tongue, then gently closes your mouth and forces you to swallow it. This pea goes down to your stomach, in which the time it takes to do so she has disrobed herself and you in the process. You feel a sensation in your groin as you grow an above average penis and she takes no time as she jumps onto you and lowers her cunt onto your new member. She starts off slowly saying to you 'Don't worry, just lay there and enjoy' the moth girl then took off. She starts hammering her cunt onto your cock harder and faster than before however the paralyzing effects of her poison although does not keep your new penis flaccid, it denies you any climax. So despite the pleasurable activity your pleasure turns into pain. The mothgirl seeing as your face distorts from looking in rapture and instead looking in hell. She tells you as she continues to piston your cock into her pussy 'don't blame me for this, you lost'. As the minutes of endless sex roll by your body starts to recover from the poison and you cum gallons into the suprised mothgirl. You faint from the amount of energy used, as the moth girl stumbles away leaking cum from her cunt.";
				now cocks of player is 1;
				now cock length of player is 7;
				now cock width of player is 10;
			otherwise: 
				if cocks of player > 0:
					say "She looks at you and quickly gives you a small bite onto the neck, this paralyzes your entire body. She catches you and gently sets you on the ground, preparing for her coming entertainment she rubs her hands together in glee as she produces a small pea sized sphere, blue in color. She gingerly opens your mouth and places the pea onto your tongue, then gently closes your mouth and forces you to swallow it. This pea goes down to your stomach, in which the time it takes to do so she has disrobed herself and you in the process. You feel a sensation in your groin as your penis grows to [cock size desc of player]  and she takes no time as she jumps onto you and lowers her cunt onto your new member. She starts off slowly saying to you 'Don't worry, just lay there and enjoy' the moth girl then took off. She starts hammering her cunt onto your cock harder and faster than before however the paralyzing effects of her poison although does not keep your new penis flaccid, it denies you any climax. So despite the pleasurable activity your pleasure turns into pain. The mothgirl seeing as your face distorts from looking in rapture and instead looking in hell. She tells you as she continues to piston your cock into her pussy 'don't blame me for this, you lost'. As the minutes of endless sex roll by your body starts to recover from the poison and you cum gallons into the suprised mothgirl. You faint from the amount of energy used, as the moth girl stumbles away leaking cum from her cunt.";		
					increase cock length of player by 2;
				otherwise:
					if cock length of player is greater than 7:
						say "She looks at you and quickly gives you a small bite onto the neck, this paralyzes your entire body. She catches you and gently sets you on the ground, preparing for her coming entertainment she rubs her hands together in glee as she produces a small pea sized sphere, blue in color. She gingerly opens your mouth and places the pea onto your tongue, then gently closes your mouth and forces you to swallow it. This pea goes down to your stomach, in which the time it takes to do so she has disrobed herself and you in the process. You feel a sensation in your groin though nothing happens, despite this the mothgirl takes no time as she jumps onto you and lowers her cunt onto your new member. She starts off slowly saying to you 'Don't worry, just lay there and enjoy' the moth girl then took off. She starts hammering her cunt onto your cock harder and faster than before however the paralyzing effects of her poison although does not keep your new penis flaccid, it denies you any climax. So despite the pleasurable activity your pleasure turns into pain. The mothgirl seeing as your face distorts from looking in rapture and instead looking in hell. She tells you as she continues to piston your cock into her pussy 'don't blame me for this, you lost'. As the minutes of endless sex roll by your body starts to recover from the poison and you cum gallons into the suprised mothgirl. You faint from the amount of energy used, as the moth girl stumbles away leaking cum from her cunt.";

Mothdefeat is a number that varies.

to say mothgirl defeat:
	say "The moth girl looks up from its defeated state and awaits its punishment";
	if cocks of player > 0 and cock length of player < 8:
		say "The mothgirl comes over to your crotch and starts to suck on your small cock, and using her nipples changing them to be points pokes your penis with one of them. She squeezes her breast slightly introducing a special mixture into your cock that makes it grow. It doesn't take you long to explode inside her mouth, in which afterwards she leaves you with your bigger penis.";
		increase cock length of player by 2;
	otherwise if cock length of player >= 8:
		say "The moth girl allows you to pick her up as she positions herself to be entered. She kisses you on the lips as she is penetrated, your sex driving into her with rapid succession she soon reaches climax with you and with a small wail you cum into her.";
	otherwise:
		if cocks of player < 1 and strength of player > 15:
			say "The moth girl bends over, revealing her spankable ass as she asks 'be gentle' however having defeated her you take great pleasure in smacking her ass to the point that she climaxes just from just such an occasion. Her juices relinquish themselves onto the ground in front of you, her shame leads her away from you as she tries to recover, rubbing her red bottom along the way."; 		

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mothgirl"; [Name of your new Monster]
	now attack entry is "[one of]She hits you on the cheek with her hand[or]A kick lands upside your face as the moth girl turns in midair[or]The mothgirl punches you in the gut with her fist[or]The mothgirl rams her butt into your face[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "The mothgirl slumps onto the ground with a sigh and tries to protect herself with her fragile wings."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Moth attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "You see a girl with butterfly wings and fur around her neck, she has [one of]blonde[or]red[or]black[or]Auburn[at random] hair. Her [one of]blue[or]grey[or]hazel[or]green[or]lavender[or]brown[at random] eyes seem to gleam like a jewel as she looks at you. Her skin is grey in color and has perky C cup breasts. She is about 5 feet in height despite the fact of being a mothgirl she still retains most of her height ";[ Description of the creature when you encounter it.]
	now face entry is "Your face is feminine looking with bright eyes.";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "You have moth wings with each flap you leave a trail of small dust behind you. Your body shrinks to 5 feet in height, and you get light curves to your body.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "glimmering grey";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "Your face begins to pull in and feel softer."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "Your back feels odd as two moth wings come out from behind you, your body also feels like it is shrinking and exhibiting more of a female looking body."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "Your skin feels warm as it changes to a greyish tone, you feel majestic as your skin seems to reflect the light slightly"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "Your rump changes from what it was to a softer and a better feeling ass where you can sit on anything and not feel discomfort."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is ""; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 11;
	now dex entry is 14;
	now sta entry is 13;					
	now per entry is 16;
	now int entry is 13;
	now cha entry is 15;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 25;			[ How many HP has the monster got? ]
	now lev entry is 2;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 5;			[Amount of Damage monster Does when attacking.]
	now area entry is "Beach";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 15;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 9;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 3;			[ Number of Breasts infection will give you. ]
	now breast size entry is 9;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 10;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 50;			[ Amount player Libido will go up if defeated ]
	now loot entry is "cock pill";			[ Loot monster drops, ]
	now lootchance entry is 30;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname is "Moth Girl":
		if humanity of player is less than 10:
			say "You do not have any prejudice to any particular infected creature, except spidergirls whose nature invites trouble. You flit around acting on the instincts of wanting sex or having sex with numerable partners.";
		otherwise:
			say "You are able to fly anywhere you want in the city and take up a small delivery service, in exchange you get money and multiple sex partners to satisfy your lust.";
			
Table of Game Objects(continued)
name	desc	weight	object
"cock pill"	"This small pea like object is blue in color and seems to have a phallic symbol of a penis on it"	1	cock pill

cock pill is a grab object. It is temporary. It is a part of the player.

the usedesc of cock pill is "[cock pill use]";

to say cock pill use:
	say "You take the pill and pop it into your mouth...";
	if cocks of player is 0:
		now cocks of player is 1;
		now cock length of player is 7;
		now cock width of player is 10;
		say "With a rush of eophoria, your groin practically explodes as a new [cock of player] cock bursts free of you, twitching readily, fueled by [ball size] orbs dangling underneath.";
	otherwise if a random chance of 1 in 5 succeeds:
		say "You feel dizzy, leaning against the nearest support as your [cock of player] shaft[if cocks of player is greater than 1]s[end if] engorge painfully, growing larger before splitting, revealing a new shaft.";
		increase cocks of player by 1;
	otherwise:
		increase cock length of player by a random number from 1 to 2;
		Follow the cock descr rule;
		say "You groan as you gain more male meat, leaving you with a [cock size desc of player] [cock of player] dick[if cocks of player is greater than 1]s[end if]";

[ Edit this to have the correct Name as wall]
Mothgirl For FS ends here.