[***This template is not an actual creature, but instead an template for monster creation for FS and should not be added to the game itself.***]

Version 1 of Template For FS by YourName begins here.
[ Edit the above line, replace 'Template' with your monster's name, and 'YourName' with the name you'd like credited for the mod. ]
"Adds a Template creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use 'to say xxxxx' for overlong text boxes or complex situations, using '[xxxxx]' (in square brackets) within a say statement to execute them.  Typically, these are needed if there are a lot of cock/species/cunt checks. ]

when play begins:
[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
[Delete the lines with unneeded flags and replace 'Template' with your creature's name entry.  Case sensitive.]
	add { "Template" } to infections of girl;
	add { "Template" } to infections of guy;
	add { "Template" } to infections of hermaphrodite;
	add { "Template" } to infections of furry;
	add { "Template" } to infections of hellspawn;
	add { "Template" } to infections of humorous;

[Sample loss and victory text templates.]
[Numerous other variations can be found in existing creature files.]
[Change the 'template' in their names here and below to something appropriate to your creature.]

to say losetotemplate:
	say "     You were beaten by the creature.";
	if cocks of player > 0:
		say "     Additional paragraph for a male/herm player.";
	otherwise:
		say "     Additional paragraph for a female player.";

to say beatthetemplate:
	say "     You were victorious over the creature.";
	if libido of player > 40:
		say "     Additional paragraph for a player with a libido greater than 40.  Do they want sex?"
		if the player consents:
			say "     The player agreed to sex.  Fun times begin.";
			if cunts of player > 0:
				say "     The player is female/herm, so sex goes like this for her.";
			otherwise:
				say "     The player must be male, so sex goes like this for him."
		otherwise:
			say "     Awww!  The player refused the sex.  Party pooper.";


to say templatedesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Template";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthetemplate]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetotemplate]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[templatedesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "thesaurian";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head changes in some descriptive manner";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body takes on a newly described form";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain fur/scales/skin/patterns described herein";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your tail or ass changes in the manner described by this text";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "takes on a new, kinky form";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 8;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 12;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 15;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 10;
	now int entry is 16;
	now cha entry is 14;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "Outside";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of player is "Template":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";

[ Edit this to have the correct creature name as well]
Template For FS ends here.