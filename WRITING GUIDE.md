# Writing Guide
Credits: Stripes (original guides), Kernog (present file)

## 1. Foreword
### a) What is this document about
This writing guide aims to give novice and experienced writers a basic understanding of Inform 7's functioning, and helpful tips in order to write new content for _Flexible Survival_. It does _not_ substitute itself to the instruction guide of Inform 7, and you are expected to, at least, understand how to open a project, open an extension file, creating a new extension file, and run the compiler.

### b) Setup
Before anything, new writers are strongly recommended to follow the steps in CONTRIBUTING.md before starting their work.
https://github.com/Nuku/Flexible-Survival/CONTRIBUTING.md
It will ensure that you have a working Flexible Survival directory, an efficient way to update your extension files, and send your own work on GitHub.

### c) Language
Flexible Survival is written in American English, singular second person pronouns, and present tense. Please be careful about the spelling (color instead of colour, for instance), the vocabulary (apartment instead of flat), and cultural references (US customary units, soccer/football distinction, etc.).

### d) Testing, contact and review
Ensure that you test your work frequently. Nobody likes finishing a weeks-long work, only to get twenty compilation errors when running the game. If you have any questions, the Discord is here for you. The #sp-coding channel is there for your technical questions, with #sp-coding-materials if you wish to share your personal tips and shortcuts. If you wish to have your literary work reviewed, the #reviews-and-writing channel is the place to go.


## STATISTICS AND BODY DESCRIPTORS
The data of the game is contained in a lot of variables and properties, many of which may be useful in the building of your scene or to increase the level of detail and personal connection to the player character. References to the player's form, size, genitals, etc... all help personalize the scenes and increase replay value. Some of these are more useful than others. I'll denote those descriptive elements I feel are particularly useful for scenes relating to them by using **[!]** in front of them. They can then be inserted into text by using `[cock of player]` or as part of conditional statements (more on this in part 2 of this document).

### Player Stats: numerical, rarely useful for scenes except for comparisons, but here for completeness
* `hp of player` | current hp of player
* `maxhp of player` | player's maximum hp
* `xp of player`
* `level of player`
* `strength of player`
* `dexterity of player`
* `stamina of player`
* `charisma of player`
* `intelligence of player`
* `perception of player`
* `hunger of player`
* `thirst of player`
* `morale of player`
* `libido of player`
* `humanity of player`
* `score`
* `turns` | current numerical turn (counts down) - DO NOT ALTER!
* `targetturns` | the turn number for game over - DO NOT ALTER!

### Basic Infection Variables:
* `bodyname of player` | The infection name on the player's cock. Very useful for comparisons or, less desirably, as a descriptive element.
* `facename of player` | The infection name on the player's cock. Very useful for comparisons or, less desirably, as a descriptive element.
* `skinname of player` | The infection name on the player's cock. Useful for comparisons or, less desirably, as a descriptive element.
* `tailname of player` | The infection name on the player's cock. Useful for comparisons or, less desirably, as a descriptive element.
* `cockname of player` | The infection name on the player's cock. Useful for comparisons or, less desirably, as a descriptive element.

* `body of player` | portion of the player's description dealing with their body. Generally not useful for scenes.
* `face of player` | portion of the player's description dealing with their face. Generally not useful for scenes.
* `skin of player` | portion of the player's description dealing with their skin. Used occasionally for scenes, but often has differences in application that makes this messy.
* `tail of player` | portion of the player's description dealing with their tail. Generally not useful for scenes.
* [!] `cock of player` | one or two word description(s) of the player's cock. Recommended for use in scenes.

* [!] `scalevalue of player` | numerical value for player's rough size category (1 to 5)
* `body size of player` | adjective describing the player's rough size category (tiny to huge)
* [!] `bodydesc of player` | single adjective(s) used to describe the player's body and build (fat/thin/muscled/effeminate...)
* [!] `bodytype of player` | single adjective(s) denoting the general type of infection the player has (human/feline/canine...)
* `daycycle of player` | numerical: day/night preference (if any) of the player's form. 0=standard, 1=day-preferred, 2=night-preferred

### Genital Variables:
This first set are the numerical values, to be followed by the descriptive ones which adjust themselves based on these numbers.

* `cocks of player` | the number of cocks the player has
* `cock length of player` | the length (in inches) of the player's cock
* `cock width of player` | the size (comparatively) of the player's balls
* `cunts of player` | the number of cunts the player has
* `cunt length of player` | the depth (in inches) of the player's cunt
* `cunt width of player` | the width (in inches) of the player's cunt
* `breasts of player` | the number of breasts the player has (an even number)
* `breast size of player` | the breast size (corresponding to cup size) of the player's breasts (1=A, 2=B, 3=C, etc...)
character number breast size of player in cupsize | the player's breast size as the corresponding cup letter

* [!] `cock size desc of player` | adjective describing the player's cock size (cock length)
* [!] `cunt size desc of player` | adjective describing the player's cunt size (cunt length)
* [!] `breast size desc of player` | adjective describing the player's breast size
* [!] `ball size` | adjective + balls/testicles/gonads | describes the size of the player's balls. Note: no 'of player' on this one.
* [!] `cum load size of player` | adjective describing the size of the player's load. Typical usage is: "your [cum load size of player] load".

### Other/Environmental:
* `monsterhp` | the monster's current hp
* `location of player` | name of the room the player is in (is hunting/exploring from)
* `time of day` | descriptive time of day
* `short time of day` | general time of day
* `the number of entries in childrenfaces` | the number of children the player has
* `mpregcount` | the number of male-births the player has had


## ANNEX 2: STATUS OF PLAY AND ENVIRONMENTAL PROPERTIES
These are used as part of conditional statements or clauses to alter scenes based on player/environmental properties. They can be coupled with otherwise if and otherwise for greater variation or 'and/or/not' can be used to make further variations and combinations. If they do not contain any quotation marks for exact text (`"`), then they can also be built into say statements by being enclosed in square brackets, such as `[if cocks of player > 0]` and closed with `[end if]`. In some cases, there are multiple ways to check the same info, in those cases, I've separated the options by an italicized or.

For your own sanity, only include a few of these variations in any given scene at most, as some will be more relevant than others to the events you're creating. Some writers have preferences to the aspects they like to highlight about the scene in this manner, so don't feel you have to use all the same ones as everyone else.

### Genitals
* `if player is male` *or* `if cocks of player > 0` | does the player have any cocks? (male/herm)
* `if player is female` *or* `if cunts of player > 0` | does the player have any cunts? (female/herm)
* `if player is herm` *or* `if cunts of player > 0 and cocks of player > 0` | does the player have both cock and cunt? (herm)
* `if player is neuter` *or* `if cunts of player is 0 and cocks of player is 0` | does the player have no cunt and no cock? (neuter)
* `if cocks of player is 1` | does the player have a single cock?
* `if cocks of player > 1` | does the player have multiple cocks?
* `if cocks of player > 2` | does the player have 3 or more cocks?
* `if cock length of player > 6` | does the player have a cock that is 7 inches or more?
* `if cock length of player < 10` | does the player have a cock that is under 10 inches?
* `if cock length of player > 30` | does the player have a belly-bloating huge cock? (this is just my typical values used for an avg sized creature)
* `if cock length of player > 20` | does the player have a belly-stuffing big cock? (again, my value choice for this)
* `if cock width of player > 5` | are the player's balls ranked above 5 in size?
* `if cock width of player < 12` | are the player's balls ranked under 12 in size?
* `if cock width of player > 40` | is the player's load belly-bloatingly large? (again, my value choice for this)
* `if cock width of player > 20` | is the player's load belly-stuffingly large? (again, my value choice for this)
The above cock comparisons can be done for the player's cunt values. The size comparisons should also be considered against a critter's cunt/cock size to just their fit.

### Infections
* `if bodyname of player is "Rubber Tigress"` | does the player have the Rubber Tigress infection on their body? (case sensitive to name)
* `if skinname of player is "Bird of Paradise"` | does the player have the Bird of Paradise infection on their skin? (case sensitive to name)
* `if bodyname of player is "Alpha Husky"` *or* `facename of player is "Alpha Husky"` | are either of the player's head or body infected with the "Alpha Husky" strain?
* `if player is pure` | does the player have the same infection on all body parts?
* `if bodyname of player is "Feline" and player is pure` | is the player fully infected with the Feline strain?
* `if bodyname of player is listed in infections of Felinelist` | does the player have any of the feline infections on their body?
* `if bodyname of player is not listed in infections of Felinelist` | does the player not possess any feline infection on their body?
The current list options are: felinelist, caninelist, equinelist, vulpinelist, reptilelist, insectlist, plantlist, avianlist, taurlist, knotlist (cock), latexlist (skin)

* `if scalevalue of player is 3` | is the player roughly human sized?
* `if scalevalue of player < 3` | is the player smaller than human average?
* `if scalevalue of player > 3` | is the player above human average?
* `if player is perminfected` | does the player have any of the permanent infections? (jackalman, Hellhound, etc...)

### Fighting and Fight Outcomes
* `if weapon object of player is journal` | does the player fight barehanded?
* `if weapon object of player is not journal` | does the player fight with a weapon?
* `if hp of player > 0` | did the player submit/lose to lust before being KO'd? (when used within player loss scenes for critters)
* `if monsterhp < ( hp entry / 2 )` | is the critter's hp under 50%? (must choose the current monster row beforehand)
* `if lost is 1` | did the player lose their last fight? (usable only after combat's fully resolved and critter win/loss scene have played) WARNING: Does not account for fleeing.
* `if fightoutcome >= 10 and fightoutcome <= 19` | did the player win their last fight?
* `if fightoutcome >= 20 and fightoutcome <= 29` | did the player lose their last fight?
* `if fightoutcome >= 30` | did the player manage to flee from their last fight?
Numerous more examples and more specific results for fightoutcome can be seen in this document: ----
#### Setting up a first-time encounter
```
to say InfectionNameDesc:
    setmongender 0;
    if "InfectionName" is not listed in EncounteredEnemies of player: [first encounter]
        say "     First creature encounter";
    else:
        say "     Repeat Creature encounter.";
```

### Feats
* `if "Male Preferred" is listed in feats of player` | does the player have the Male Preferred feat? (feat name is case sensitive)
* `if "Male Preferred" is not listed in feats of player` | does the player not have the Male Preferred feat?
* `if "MPreg" is listed in feats of player` | does the player have the MPreg feat
* `if player is submissive` | shorthand for checking if the player has the Submissive feat
* `if player is fastlearning` | shorthand for checking if the player has the Fast Learner feat
* `if anallevel is 3` *or* `if "More Anal" is listed in feats of player` | is the player set for More Anal?
* `if anallevel is 1` *or* `if "Less Anal" is listed in feats of player` | is the player set for Less Anal?
* `if anallevel > 1` *or* `if anallevel is not 1` *or* `if "Less Anal" is not listed in feats of player` | if the player not set for Less Anal? (normal or More Anal)
* `if anallevel < 3` *or* `if anallevel is not 3` *or* `if "More Anal" is not listed in feats of player` | if player is not set for More Anal? (normal or Less Anal)
Numerous more examples for More/Less Anal listed in the second half of this document: ----

### Pregnancy and children
* `if player is impreg_now` *or* `if gestation of child > 0` | is the player is currently pregnant?
* `if player is impreg_ok` | can the player become pregnant in general? (not sterile, has cunt/MPreg)
* `if player is impreg_able` | can the player currently become pregnant? (impregnable and not currently pregnant/parasite)
* `if player is mpreg_now` | is the player is currently male-pregnant?
* `if player is mpreg_ok` | can the player become male-pregnant in general? (not sterile, has MPreg)
* `if player is mpreg_able` | can the player currently become male-pregnant? (male-impregnable and not currently pregnant/parasite/Velos-blocked)
* `if gestation of child > 0 and gestation of child < 10` | advanced pregnancy
* `if gestation of child > 0 and gestation of child < 20` | pregnancy is showing
* `if gestation of child > 0 and gestation of child < 30` | early pregnancy (not showing, but faintly aware)
* `if gestation of child >= 30` | very early pregnant (no signs yet)
* `if the number of entries in childrenfaces > 3` | does the player have 4 or more children?
* `if childrenfaces is empty` | does the player have no children?
* `if "Feline" is listed within childrenbodies` | does the player have at least one child with a Feline body?
* `if "Feline" is not listed within childrenbodies` | does the player have no children with a Feline body?

### NPCs and Pets
* `if Candy is bunkered` | is Candy in the Bunker?
* `if Snow is booked` | is Snow in the Library?
* `if the number of bunkered people > 2` | are there three or more people in the Bunker?
* `if the number of booked people is 0` | are there no NPCs in the Library?
* `if number of booked people + number of bunkered people > 3` | are there at least 4 NPCs in the Bunker and Library together?
(note: booked and bunkered do not apply to the player or to Trixie. These exist for checking/counting in-game NPCs only.)
* `if lastfuck of Alexandra - turns < 6` | has it been less than six turns since Alexandra was last fucked? (usable on most NPCs)
* `[(6 - lastfuck of Alexandra - turns) * 3]` | displays the number of hours remaining before the effect of lastfuck ends (also usable on other type of counters)
* `if bee girl is tamed` | is the bee girl one of the player's pets?
* `if companion of player is bee girl` | is the bee girl the player's current companion (active pet)?
* `if level of companion of player > 3` | is the player's current companion level 4 or higher?
* `if player is lonely` | does the player have pet with them currently?
* `if the number of tamed pets is 0` | does the player have no pets at all yet?

### NPC variables
Every NPC has these variables:
* Name (text)
* LocationName(text)
* Energy (number)
* HP (number)
* MaxHP (number)
* XP (number)
* Level (number)
* Armor (number)
* Weapon Damage (number)
* Capacity (number)
* ScaleValue (number)
* Strength (number)
* Dexterity (number)
* Stamina (number)
* Charisma (number)
* Intelligence (number)
* Perception (number)
* Hunger (number)
* Thirst (number)
* SleepRhythm (number)
* Morale (number)
* Lust (number)
* Libido (number)
* Loyalty (number)
* Humanity (number)
* Cocks(number)
* Cock Length (number)
* Cock Width (number)
* Testes (number)
* Cunts (number)
* Cunt Length (number)
* Cunt Width (number)
* Breasts (number)
* Breast Size (number)
* PlayerMet (truth state)
* PlayerRomanced (truth state)
* PlayerFucked (truth state)
* OralVirgin (truth state)
* Virgin (truth state)
* AnalVirgin (truth state)

These should be filled out accurately for your NPC by you:
```
ScaleValue(number)
SleepRhythm(number)
Cocks(number)
Cock Length(number)
Cock Width(number)
Testes(number)
Cunts(number)
Cunt Length(number)
Cunt Width(number)
Breasts(number)
Breast Size(number)
```
Just like so:
```
Amy is a woman.
ScaleValue of Amy is 3. [human sized]
SleepRhythm(number) [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Amy is 0. [no cock]
Cock Length of Amy is 0. [no cock length]
Cock Width of Amy is 0. [no ball size]
Testes of Amy is 0. [no balls]
Cunts of Amy is 1. [1 pussy]
Cunt Length of Amy is 8. [gets stretched a bit by an alpha husky]
Cunt Width of Amy is 3. [gets stretched a bit by an alpha husky]
Breasts of Amy is 4. [4 nipples]
Breast Size of Amy is 2. [B cup at the start]
```
This will allow you to make use of these values in scenes, and be quite useful if you have a NPC that might gender shift or the like.
An example:
```
if cock length of player > cunt length of Amy + 2: [some stretching allowed]
	say "     The female husky wines a little as you bottom out inside her before your cock is all the way in. 'Not so deep please, you're too big.' [...]'";
else if cock length of player < cunt length of Amy - 3: [a bit small, eh?]
	say "     The female husky gives a needy whine and asks, 'Are you, ehm... already in?'";
else: [regular sex]
	say "     ...";
```

These variables should be used to track the npc's status and interactions with the player:
```
Loyalty(number) [how much the npc likes you - increase if you recruited them and do nice things]
Humanity(number) [is your npc about to go nuts?]
PlayerMet(truth state) [has the npc met the player?]
PlayerRomanced(truth state) [has the player shown romantic interest in the npc?]
PlayerFucked(truth state) [ever had sex with the player?]
OralVirgin(truth state)
Virgin(truth state)
AnalVirgin(truth state)
```
And can be used like so:
```
if Virgin of Amy is true:
	say "     'Please be gentle, it's my first time,' the husky sighs out shily as she spreads her legs. [...]'";
	now Virgin of Amy is false;
else: [regular repeat sex]
	say "...";
```

These variables are used by _pets_ (Note: "Cute Crab" pet object is NOT the same as "Snips" the cute crab npc - so you do not have to worry about overwriting combat relevant values. The 'pet' objects are invisible and glued to the player, you'll not really interact with them)
```
HP(number)
XP(number)
Level(number)
Weapon Damage(number)
```

And _these_ variables are unused by npcs, so please make use of them. They're easier to save than if you declare new variables for things:
```
Energy(number)
HP(number)
MaxHP(number)
XP(number)
Level(number)
Armor(number)
Weapon Damage(number)
Capacity(number)
Strength(number)
Dexterity(number)
Stamina(number)
Charisma(number)
Intelligence(number)
Perception(number)
Hunger(number)
Thirst(number)
Morale(number)
Lust(number)
Libido(number)
```

### Objects
* `if water bottle is owned` *or* `if carried of water bottle > 0` | is the player carrying a water bottle?
* `if carried of soda > 1` | does the player have at least 2 soda on them?
* `if food is fiveowned` *or* `if carried of food > 4` | does the player have at least 5 food on them?
* `if pocketknife is wielded` *or* `if weapon object of player is pocketknife` | is the player using the pocketknife?
* `if face mask is equipped` | is the player wearing the face mask?
* `if weapon object of player is improved` | has the player's current weapon been improved (upgraded by Snow)?
* `if cot is present` *or* `if "cot" is listed in invent of location of player` | is there a cot in the room?

### Situations/Locations
* `if inasituation is true` | is a situation/event is current being resolved? (useful to avoid conflicts between fights and events)
* `if Poor Kitty is resolved` | is the event "Poor Kitty" resolved/done/closed?
* `if Poor Kitty is not resolved` | is the event "Poor Kitty" currently encounterable (open)?
* `if Trevor Labs is known` | does the player know how to get to Trevor Labs (in their nav list)?
* `if location of player is Grey Abbey Library` | is the player currently in the Grey Abbey Library?

### Flags/Banning/Game Mode:
* `if guy is banned` | the Guy flag is banned (guy content not available)
* `if girl is not banned` | the Girl flag is not banned (girl content available)
* `if hardmode is true` *or* `if scenario is "Hard mode"` | is the game in Hard Mode?

The current game modes are:
* Bunker
* Caught Outside
* Rescuer Stranded"
* Researcher
* Forgotten
* Hard mode
These are case sensitive, as they are text. Only hard mode has a direct variable for it.

### Researchers/Vials
To be added later.

### Other checks
* `if daytimer is day` | currently daytime hours
* `if daytimer is night` | currently nighttime hours
* `if libido of player > 40` | is the player's libido above 40?
* `if humanity of player < 10` | is the player's humanity under 10?
* `if libido of player > humanity of player` | is the player libido greater than their humanity?
* `if score > 100` | is the current game score over 100?
* `if morale of player > 0` | does the player have positive morale?
* `if level of player > 5` | is the player level 6 or higher?
* `if thirst of player > 30` | is the player's thirst above 30? (starting to feel the effects of thirst)
* `if hunger of player > 30` | is the player's hunger above 30? (starting to feel the effects of hunger)

### Special
`if skipturnblocker is 0` | This is to be included as part of everyturn rules which should NOT occur or would be delayed if the player is missing turns while KO'd or otherwise completely incapacitated... engineer these scenes to occur once the player's recovered, typically by allowing for >= or <= your target number rather than its exact value or waiting until the scene can play to increment to the next status.

### Random chance
* `if a random chance of 1 in 3 succeeds` | a 33% chance of occurring.
* `if cunts of player > 0 and a random chance of 1 in 2 succeeds` | if the player has a cunt, 50% chance of this scene playing out.
* `if a random number between 1 and 100 < 15` | another way to do random chance, this one is 14%
* `if "More Anal" is listed in feats of player and a random chance of 3 in 5 succeeds` | there is a 60% chance of this scene playing out, but only if the player has More Anal.
* `if cunts of player is 0 or a random chance of 1 in 3 succeeds` | This will occur if the player has no cunt, otherwise it'll occur a third of the time.
* `if a random chance of 1 in 2 succeeds or ( cocks of player > 0 and a random chance of 1 in 3 succeeds )` | this will occur one half of the time, with males/herms getting an additional 33% chance on top of that.
* `if libido of player > a random number between 1 and 100` | random libido check (yes = gave in, no = resisted)
* `if libido of player > a random number between 25 and 125` | random libido check w/a libido of 25 or less guaranteed to win (not give in) and random roll of 101-125 also always winning (yes = gave in, no = resisted)
 * `if ( 100 + humanity of player - libido of player ) > a random number between 1 and 150` | a random check pitting the player's humanity and libido against one another (yes = resisted, no=gave in)
* `if a random number between 0 and humanity of player > a random number between 0 and libido of player` | another check pitting the player's humanity and libido against one another (yes=resisted, no=gave in)

### Events and situations
* An event is framed within a "situation". A situation has four main properties:
  ** Resolved/Unresolved: Only things the player actually has _done_ are resolved now.
  ** Active/Inactive: Banned events, or events that are activated by talking to an npc for example are inactive.
 	** Sarea: give your event a Sarea if you want it to be triggered when exploring in this zone
  ** Level: the event will only trigger if the player is at or above the given level (default: 0)

For progressive events, you can use Resolution like any other tracking variable:
```
instead of resolving Daily Food Ration:
	if Resolution of Daily Food Ration is 0: [default value, first time]
		say "You come and grab your ration for the day";
		now Resolution of Daily Food Ration is 1; [1st encounter done]
	else if Resolution of Daily Food Ration is 1:
		say "'Take it, but we'll be running out soon.'";
		now Resolution of Daily Food Ration is 2; [2nd encounter done]
	else if Resolution of Daily Food Ration is 2:
		say "'Sorry, all out. Seems like people came to get food, then transformed and just came back to grab another. Some assholes just can't be trusted.'";
		now Resolution of Daily Food Ration is 3; [3nd encounter done]
		now Daily Food Ration is resolved; [end of the chain]
```

* If a situation has one or several criteria that has to be met beforehand, they must be declared with these lines:
	** `Prereq1 of Explosion Aftermath is Gas Station.` [Gas Station has to be resolved, or this event does not come up]
	** `Prereq1Resolution of Inspecting the Wreckage is { 2 }.` [The Prerequisite resolved event needs one of the listed resolutions for this to come up]
	** `Prereq2 of Explosion Aftermath is Scorched Earth.` [if a second situation needs to be resolved]
	** `Prereq1Resolution of Explosion Aftermath is { 1,2,3 }.` [If several resolutions activate this event]
	** `PrereqCompanion of Putting Out the Fire is Firefighter` [needed companion/pet to get the situation]
Up to three events can be prerequisites for any given one.

### Player Imports and Exports: the ID tags
For the new import/export system to work, all NPCs, Situations and Rooms need to be entered into a table that holds their IDs. This means that a NPC definition would look like this:
```
Table of GameCharacterIDs (continued)
object	name
Amy	"Amy"

Amy is a woman.
```
You just need to drop the upper code block just right above where you make the character, fill in the proper name and that's it.

Similar to ID tagging NPCs, the same thing needs to be done Situations/Events:
```
Table of GameEventIDs (continued)
Object	Name
Grumpy Old Men	"Grumpy Old Men"

Grumpy Old Men is a situation.
```

And for the Rooms:
```
Table of GameRoomIDs (continued)
Object	Name
2F Trevor Labs	"2F Trevor Labs"

2F Trevor Labs is a room.
```

## Sex scenes tracking (2019/02/10)
###NPCs
`NPCSexAftermath (TakingChar - a person) receives (SexAct - a text) from (GivingChar - a person)`

SexAct Options: AssFuck, AssDildoFuck, PussyFuck, PussyDildoFuck, OralCock (= facefuck), OralPussy (= cunnilingus)
* Takingchar is the one getting penetrated in ass/pussy/mouth
* Givingchar is the one grinding theit dick/pussy/dildo into the other

This function does several things:
*  Checks Virginities for all participants, showing messages if someone loses theirs
* Adds entries to a list of virginities that the player has taken
* Saves the player's first partners
* Sets the lastfuck variable of both partners to the current turns
* Setmonster to the MainInfection of a given npc, then fimpregchance/mimpregchance for the player if they got fucked in the pussy/asses by a non-sterile partner

Examples:
```
to say Carl_FucksPlayerPussy:
    say "Scene Text";
    NPCSexAftermath Player receives "PussyFuck" from Carl; [nothing else needed, no setmonster, no lastfuck setting, no impregchances]

to say Carl69ing:
    say "Scene Text";
    NPCSexAftermath Player receives "OralCock" from Carl;
    NPCSexAftermath Carl receives "OralCock" from Player;
```

###Enemies
Similar function for random enemies:
`CreatureSexAftermath (TakingChar - a text) receives (SexAct - a text) from (GivingChar - a text)`

This function is easier, since random enemies have no variables to save, they stop existing after the scene. Still, the player side of things will get the proper adjustments, as above.

Example:
```
    CreatureSexAftermath "Player" receives "AssFuck" from "Alpha Husky";
    CreatureSexAftermath "Alpha Husky" receives "AssFuck" from "Player";
```

## Questions?
Join the Discord group and ask questions or just talk about the game in the `fs-singleplayer` channel!

https://discordapp.com/channels/333559467218173953/362740874683219968
http://web.flexiblesurvival.com/viewtopic.php?f=4&t=10#p35
