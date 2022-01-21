[Version 1 of Latex Mouse Infections by Luneth begins here.

Book 1 - Latex Mouse

Section 1 - Male Latex Mouse

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Latex Mouse";
	add "Male Latex Mouse" to infections of RodentList;
	add "Male Latex Mouse" to infections of LatexList;
	add "Male Latex Mouse" to infections of MaleList;
	add "Male Latex Mouse" to infections of BipedalList;
	now Name entry is "Male Latex Mouse";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "     ..."; [Text used when the monster makes an Attack]
	now defeated entry is "     ...";   [ Text or say command used when Monster is defeated.]
	now victory entry is "     ...";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "     ...";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a dark-purple latex mouse, with huge round ears and a sweet expression on your small snout, however the words [']Squeak-Slut['] and [']Cheese-Whore['] branded on your face diminish your cute appearance. Your mouth while incredibly small, can be obscenely stretched thanks to the material your head is made of, but seems to have a mind of its own, forcing your buck teeth to harden when dealing with non-sentient material and become soft and gooey when interacting with living matter. No matter how much you eat though, you never seem to be full, leaving you overridden by both hunger and lust";
	now body entry is "very small, with a meek looking form, which is sad. Thankfully your soft and squishy, so it feels good touching yourself. Taking in the details of your body, you notice words etched over your tiny nipples that say [']Twist my nips and make me squeak!['], similarly along your lower back are the words [']Master's Footrest['][if Cunt Count of player > 0 or Player is mpreg_ok]. Glancing even lower, right above your privates is some pretty glitter with the phrase [']Every time this whore gets knocked up, it gets a piece of cheese!['][end if]";
	now skin entry is "[one of]dark-purple latex[or]latex[at random]";
	now tail entry is "that of a mouse and is actually really firm, almost like it's not meant to be soft or squishy, but you haven't a clue as to why anyone would want a firm grip on your tail. You have one tight, little, bouncy butt. Moving your tail out of the way, you begin to lift it up and then drop it, enjoying the way it feels for your cheeks to bounce around.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]uncut[or]human-like[at random]";
	now face change entry is "[LatexMouseFaceChange]"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "[LatexMouseBodyChange]"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "[LatexMouseSkinChange]"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "[LatexMouseAssChange]"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your member grows thicker and gains a black and white color to the shaft, while the head turns a soft pastel-pink. Oddly enough after the color change your cock is left with a human-like shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 30;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100;                [ The monster's starting HP. ]
	now lev entry is 12;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 16;               [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 3;        [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 1;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]          [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]flexible[or]insignificant[or]slutty[at random]";
	now type entry is "rodent";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;



to say LatexMouseFaceChange: [Trashy Encounter]
	say "     The dark-purple mask that you're wearing slowly spreads across your face until it's fully covered. Unfortunately, no matter what you do, it just doesn't seem to come off, and you start to panic. As you open your mouth to scream out, the part of the mask that is plastered over your lips surges downward into your throat, completely coating your esophagus. The sound that finally emerges is nothing more than a high-pitched squeak. This of course causes you to break out into a frenzy of clawing at the thing to get it off, with loud squeaks marking each tug that you attempt. Then all of a sudden, your stomach begins to gurgle uncontrollably as pain shoots through your abdomen. However, beside the pain is something else, something that makes you feel ecstasy. Your arousal rises and a mix between a squeak and a moan is released from your throat, as well as something that tastes like cream cheese filling your mouth. It takes you a moment to realize that it's your saliva that has changed.";
	say "     Feeling yourself getting closer to orgasm, your eyes slowly roll into the back of your head, all the while your pathetic squeaks continue to spill from your lips. Suddenly, you are picked up by something and attempt to look and see what has you in its grip, but no matter how hard you try you can't seem to focus. 'What the hell is this thing? Some kinda broken toy?' There is only a few seconds until the silence is broken. 'Squeak-slut? And Cheese-whore? Oh wait this must be some sort of fleshlight that is turning into a person! Err, or maybe it's the other way around, hehe, well either way, no harm in using it as intended!' You can feel the breeze rush across your body as whoever is carrying you runs somewhere, you blindly attempt to call out for help, but all that comes out are words that you don't want, 'Please master, won't you love squeakers? Squeakers will always love you master!'";
	WaitLineBreak;
	say "     Reeling back in horror at what you just said, you're soon filled with even more dread at your captors response, 'Shut the fuck up [']Squeakers['], you want me to love you? Then your gonna let me fuck that tight, little face-cunt until I shoot enough cum inside of you to turn you into a bouncy ball!' Without warning, your small mouth is impaled on the unknown stranger's cock, well at least that's the attempt, but your mouth is too small for the large shaft to get more than the head in. Your attacker doesn't relent though and keeps a steady push going and, owing to your new saliva which seems to act more like lube than saliva, they finally make progress. You can feel your mouth hitting its capacity and can't help but fear that he will rip your mouth, but thankfully your lips just keep stretching. After what feels like forever, the thickest part of their cock passes through the ring of your throat, but... it's in too deep, you can't breathe!";
	say "     'Alright [']Squeakers['], be a good slut and just let me use you how you were made to be used, haha! And looky what we have here? Some nice big ears, perfect for some good ol['] fashion handlebars.' With that, your captor brutally grabs your round ears and at a dizzying pace starts to fuck your face. You doubt that you will be able to stay conscious for very long without oxygen, so you do the only thing you can to make this end as quickly as you can and... you begin to suck as hard as you're able. The natural instinct to survive pushing you as your throat and tongue do everything that they can to help, 'Holy fucking shit, you are one awesome sex toy! I might even be tempted to keep ya, well if I wasn't planning on screwin['] your throat till it's too blown out ta ever be used again!' With that, the onslaught increases even further, until finally the stranger releases a deep groan and you feel your stomach filled with what seems like buckets of his salty cum, which also triggers your own orgasm.";
	WaitLineBreak;
	say "     Thankfully they pull you off of their shaft slowly, your small mouth apparently making the suction intense, although the spasms from your own excitement more than likely don't help either. Sadly, the person simply drops you on the ground and you can hear footsteps walking away as your vision finally starts to return, 'Seeya [']Squeakers['], if anyone asks you, be sure to tell them that the reason you got a blown out mouth-pussy is cuz I ruined ya, haha!' You just lay there and attempt to collect yourself and even out your breathing. Part of you wants to get up and chase the person down, but another part... one that you aren't proud of, remembers what it was like to taste their load and what it made you do..";

to say LatexMouseBodyChange: [Sweet Sadist Encounter]
	say "     ";

to say LatexMouseSkinChange: [Exhibition Encounter]
	say "     ";

to say LatexMouseAssChange: [Gangbang Encounter]
	say "     ";

Latex Mouse Infections ends here.]
