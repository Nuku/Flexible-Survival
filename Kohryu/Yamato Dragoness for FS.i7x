Version 7 of Yamato Dragoness For FS by Kohryu begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Yamato Dragoness to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Yamato Dragoness" } to infections of girl;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say Yamato Dragoness attack:
	say "The female dragon lowers her head to sniff at you.";
	if cocks of player is greater than 0 and cunts of player is not greater than 0:
		Say "After she finishes sniffing you she starts to speak, though she doesn't open her mouth so you're not sure how she is speaking.  'You smell like an interesting male, lets see what you have.'  She then breathes a plume of blue fire over you, it doesn't burn or hurt, but your clothing disintegrates, revealing all of your body for her to see.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if cock length of player is less than 15:
			say "The dragoness looks at your [cock of player] cock in disappointment and says 'You're just not big enough, come back when you've sized up ok.' and then flies off, leaving you naked in the middle of the park.";
		otherwise:
			say "The dragoness sees the size of you [cock of player] cock and exclaims 'Oh!  You're pretty big; this is going to be fun!' She then moves her body over you before lifting her upper-body into the air and kneeling her lower-body around your hips and where your cock is.  You look at where her pussy should be and become aroused as she opens her scaled slit to reveal her dripping wet red pussy.  She lowers her self slowly onto your [cock of player] member, despite her size her pussy is crushingly tight, her powerful inner walls holding you with all there might.  Every inch she works in sends waves of pleasure through you until she finally has all of your cock...And then she starts working her inner muscles, pulling and pushing and twisting around your [cock of player] cock.  It barely takes a minute of this before you are cumming into her depths, but she doesn't stop, she starts to writhe as her pussy abuses your cock more and more.  After what seems like a lifetime she finally stops, lifting herself off of your sore member she closes her pussy tight to seal in all the cum she milked from you and says 'That was fun!  We should do it again sometime.' and flies away.  Leaving you to pick yourself up and walk awkwardly away.";
	otherwise:
		Say "The dragoness doesn't seem to like what she smells and says 'What am I supposed to do with you?  Guess I have to find someone else' and flies off."
                                            
	
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Yamato Dragoness"; [Name of your new Monster]
	now attack entry is "[one of]snaps it's neck forward like a snake to bite at you.[or]whips it's tail around, smacking your body off the ground and through the air before landing roughly onto the ground.[or]inhales deeply before breathing a wave of blue fire over you, strangely it doesn't burn but every pain receptor on your body screams in agony.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "You finally manage to knock the dragon off balance, but before it falls onto the ground she starts to levitate into the air and says 'You're pretty tough, I can't wait to fight you again.' as she flies away."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Yamato Dragoness attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "As you're walking through the park you look up and notice a serpent-like creature flying and coiling it's way through the sky.  As you try to figure out how it's flying with no wings the creature spots you staring at it and within an instant it flies to and lands in front of you.  The massive serpent-like dragon looks down upon you with playful eyes and you can't help but wonder what it wants.";[ Description of the creature when you encounter it.]
	now face entry is "mostly human but with shining silver hair and a mouth-full of bladed teeth";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "lean and wiry muscled";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "overlapping green scaled";[ skin Description, format as the text "You have (your text) skin."] 
	now tail entry is "You possess a very long green scaled tail with a fin-like mane of silver hair at the end.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "smooth and dark red dragon";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your teeth sharpen into blades and your hair changes into a shining silver color"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes leaner and taller with strong wiry muscles"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "green overlapping circular scales grow over most of your body, with finer yellow-green scales growing over your chest and belly"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a very long green scaled tail bursts forth from where your tail-bone used to be.  You take a second to look at it and move it around, and you notice a fin-shaped mane of silver hair that’s at the end of the tail.  Done looking at it you move on"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it and your balls are absorbed into your body.  As you wonder what just happened to your junk, your new smooth and dark red dragon cock pops out of it's slit and quickly swells to full size.  It doesn't take you long to realize you can control the state of your erection with just a thought, after messing around with it awhile you command your cock back into your body and move on"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 30;
	now dex entry is 18;
	now sta entry is 28;					
	now per entry is 16;
	now int entry is 18;
	now cha entry is 10;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 90;			[ How many HP has the monster got? ]
	now lev entry is 9;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 30;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 24;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 15;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 24;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 15;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 25;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	
[ Edit this to have the correct Name as wall]
Yamato Dragoness For FS ends here.