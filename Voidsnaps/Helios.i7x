Helios by Voidsnaps begins here.

[Traits:
Weakened - Just a story trait. Pay it no mind. Used once to make sure that you don't get the same text when facing Helios a second time.
Helios - Second Chance: Gives you a second chance after running from Helios fight. If you run again you die.
Heavily Pregnant: Changes Helios's description to show he's about to pop out eggs.
Slightly Pregnant: Shows that Helios is beginning to show his pregnancy.]


[Variables:
OffSpringCount of Helios: The amount of times that Helios or you have given birth to eggs.
Impregtimer: Amount of turns Helios has been pregnant. Resets to 0 when he gives birth and counts up to 24 during his pregnancy.]


Section 1 - Room

Table of GameRoomIDs (continued)
Object	Name
Cozy Magma Chamber	"Cozy Magma Chamber"

Cozy Magma Chamber is a room.
Description of Cozy Magma Chamber is "[CozyMagma_Desc]".
The scent of Cozy Magma Chamber is "[CozyMagma_Scent]".
Cozy Magma Chamber is east of A Volcanic Crater.
Helios is in Cozy Magma Chamber.

to say CozyMagma_Desc:
	say "     Gouged out by claws, the Cozy Magma Chamber acts as a sort of nest for Helios. It's nothing special, but it appears to be just the start of a series of tunnels, and you can feel a strange prickling in the air, as though his mere presence has stimulated the flow of magma, which bubbles at the edge of the room in a shallow pool. ";
	if Helios is not in Cozy Magma Chamber:
		say "     Thankfully it appears that after you removed the dragon from this place, the magma's excitement has cooled, though there's still that lingering small tingle in the air. You're sure it'll fade with time, but you wonder what would have happened if he hadn't been dealt with. The whole city may have been doused in heat and fire!";

to say CozyMagma_Scent:
	say "     The unmistakable animalistic musk of something fills the magma chamber, mixing with the oppressive heat into a cloying cocktail. You're not sure whether you want to sink into the scent, or cover your nose from its odor.";

instead of going east from A Volcanic Crater when "Hunting Helios" is not listed in Traits of Soot:
	say "    You can see a tunnel to the east, which appears to have been dug out by massive claws. It wouldn't be wise to explore this area without a reason.";

Section 2 - Character and Infection 

Table of GameCharacterIDs (continued)
object	name
Helios	"Helios"

Helios is a man.
ScaleValue of Helios is 5. [dragon sized]
Body Weight of Helios is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Helios is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Helios is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Helios is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Helios is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Helios is 12. [length in inches]
Breast Size of Helios is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Helios is 2. [count of nipples]
Asshole Depth of Helios is 10. [inches deep for anal fucking]
Asshole Tightness of Helios is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Helios is 2. [number of cocks]
Cock Girth of Helios is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Helios is 15. [length in inches]
Ball Count of Helios is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Helios is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Helios is 0. [number of cunts]
Cunt Depth of Helios is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Helios is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Helios is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Helios is false.
PlayerRomanced of Helios is false.
PlayerFriended of Helios is false.
PlayerControlled of Helios is false.
PlayerFucked of Helios is false.
OralVirgin of Helios is false.
Virgin of Helios is false.
AnalVirgin of Helios is false.
PenileVirgin of Helios is false.
SexuallyExperienced of Helios is true.
TwistedCapacity of Helios is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Helios is true. [steriles can't knock people up]
MainInfection of Helios is "Fire Dragon". [Always match the capitalization of the infection. Case sensitive.]
Description of Helios is "[HeliosDesc]".
Conversation of Helios is { "<This is nothing but a placeholder!>" }.
The scent of Helios is "[HeliosScent]".
ImpregFunction of Helios is "[ImpregHelios]".

to say ImpregHelios:
	if ImpregTimer of Helios is 0: [not already pregnant]
		if debugactive is 1:
			say "     DEBUG: Impregnation successful! A new son is growing in Helios now!";
		now ImpregTimer of Helios is 1; [Pregnant.]
	else:
		if debugactive is 1:
			say "     DEBUG: Can't impregnate Helios, already pregnant!";

to say HeliosDesc:
	if debugactive is 1:
		say "     <Helios has laid [OffspringCount of Helios] clutches.>";
	say "     Standing at an impressive 8 feet at the shoulder, Helios stares down at you with curious amber eyes, his tail swaying behind him. A mix of red, brown, and orange scales adorn his bulky body, giving the appearance of magma, and two curling horns accent his masculine feral face. When he shifts in place, you catch a glimpse of two swinging, leathery dark red balls between his legs, beneath a fat sheath of the same color. A private peek would show a draconic cock tucked away inside, covered with ridges. Helios appears uncomfortable when you look closer at him, and he unconsciously leans away from you, though you can tell by the peeking tip of his manhood that it's all an act.";
	if "Slightly Pregnant" is listed in Traits of Helios:
		say "     His stomach shows the slightest bulge, as though he's had a big breakfast, but you know what that paunch hides. It seems he knows it too, and when he notices you staring, he pointedly looks away, sucking in his gut as if denying the fact that you've knocked him up. He fails after a moment of holding his breath, and settles for tucking his tail around himself, though it does little to hide his eggnancy.";
	if "Heavily Pregnant" is listed in Traits of Helios:
		say "     His stomach has grown to a prodigous size, with a clear outline of a clutch of eggs rounding it out. A single look at his pregnant belly sends him into a huff, and he attempts to hide it, but only manages to reveal the fact that his cock is pressing into the underside of the swollen stomach when he shifts, and his balls twitch under your stare, as though he's secretly getting off on being your brood'mother.'";

to say HeliosScent:
	say "     Helios smells like woodsmoke and dragon musk. The smell clings to your nose, reminding you of a fireplace in autumn.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Fire Dragon"	"[PrepCombat_Fire Dragon]"

to say PrepCombat_Fire Dragon:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Fire Dragon"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Fire Dragon" to infections of MagicalList;
	add "Fire Dragon" to infections of MythologicalList;
	add "Fire Dragon" to infections of MaleList;
	add "Fire Dragon" to infections of BipedalList;
	now Name entry is "Fire Dragon"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Helios"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Helios"; [ Specific name of unique enemy. ]
	now enemy type entry is 2; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]Roaring loud enough to shake the entire magma chamber, the fire dragon slashes at you with his claws![or]Turning around, the dragon attempts to tail whip you, sending you flying![or]Growling deep in his throat, the dragon summons a gout of fire that spews forth, attempting to scorch you to the bone![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now ass change entry is ""; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "";
	now str entry is 30; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 30; [ These values may be used as part of alternate combat.]
	now per entry is 30;
	now int entry is 25;
	now cha entry is 20;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 250; [ The monster's starting HP. ]
	now lev entry is 18; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 22; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 2; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 5; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is true;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "fire dragon milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "";
	now type entry is "";
	now magic entry is true; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 3 - Battling Helios

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Flaming Fafnir"	Flaming Fafnir	"[EventConditions_Flaming Fafnir]"	Cozy Magma Chamber	2500	2	100

to say EventConditions_Flaming Fafnir:
	if "Hunting Helios" is listed in traits of Soot:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Flaming Fafnir	"Flaming Fafnir"

Flaming Fafnir is a situation.
ResolveFunction of Flaming Fafnir is "[ResolveEvent Flaming Fafnir]".
Sarea of Flaming Fafnir is "Nowhere".


to say ResolveEvent Flaming Fafnir:
	say "     Creeping into the Magma chamber, you search for the dragon. It's certainly hot enough for a fire dragon in this place- there's even a pool of lava bubbling cartoonishly by the far wall, but no matter where you look, you can't find the creature. Suddenly, a gust of hot air blows across your face, and a figure stirs from a nearby wall, where its dark scales allow it to blend in. It was there all along. 'Who dares to challenge Helios, The Sun's Wrath!' The creature bellows as amber eyes settle on you, its scales ruffling and the firelight catching its shine just right to bring a magma-like coloration. Smoke billows from the angry dragon's nose, forcing you to move out of the way as it ignites into a singing wall of flame that narrowly misses you. ";
	if "Weakened" is not listed in Traits of Helios:
		say "     Soot's words echo in the back of your mind, and you stare at the rune on your palm. He said you needed to touch the dragon with it, right? Easier said than done. Looking around during the short window afforded to you, you spot a couple of options. There's a decent-sized boulder you could throw to distract the dragon, or an opening afforded by rapidly clearing smoke that you might be able to take advantage of. [bold type]Will you choose speed or brawn?[roman type][line break]";
		let Helios_Rune_Choices be a list of text;
		add "Throw the boulder!" to Helios_Rune_Choices;
		add "Trust your speed!" to Helios_Rune_Choices;
		let Helios_Rune_Choice be what the player chooses from Helios_Rune_Choices;
		if Helios_Rune_Choice is:
			-- "Throw the boulder!":
				LineBreak;
				if a strength check passes 20:
					say "     Muscles bulging in your forearm, you squat down to grab the massive rock, then sling it toward the dragon's face, connecting with its jaw. You wince at the loud crack the sound makes, and almost forget to close the distance as you watch the dragon shake its head from side to side, but you make your way over before your little 'distraction' ends, slapping your runed palm onto the dragon's haunch and holding it there, waiting for it to kick in. Thankfully for you, the rune appears to work nearly instantaneously, cutting off the flow of smoke from the dragon's nostrils and weakening his thrashing. It should be MUCH easier to face him now that he's weakened!";
				else:
					say "     Feeling like your veins will explode as you attempt to lift the heavy rock, you fail to move it more than an inch, instead drawing the dragon's ire when it notices you're wide open. You narrowly avoid being burned alive by a heavy gout of fire, rolling to the side and limping your way closer on a burned leg. Silently thanking your lucky stars for the nanites that knit your stinging wound closed, you slap your palm on the dragon's side, grimacing as you wait for the rune to do its magic. Thankfully for you, the rune appears to work nearly instantaneously, cutting off the flow of smoke from the dragon's nostrils and weakening his thrashing. It should be MUCH easier to face him now that he's weakened, though you will be starting the fight with a significant handicap.";
					decrease HP of Player by 70;
			-- "Trust your speed!":
				LineBreak;
				if a dexterity check passes 20:
					say "     Racing across the magma chamber while holding your hand over your nose to keep the cloying smoke from filling your lungs, you take advantage of the cover to race to the dragon's side. Slapping your runed palm on its haunch and waiting for the magic to take hold, you stare at the gout of fire that narrowly missed your backside, swallowing hard. Thankfully for your unburned body, the magic kicks in shortly after, and the flames peter off, swallowed by the indignant dragon. It would be best to defeat him before the spell wears off!";
				else:
					say "     Attempting to close the distance between the dragon and the rune on your palm as quickly as possible, you race across the chamber, taking advantage of the cloud of smoke to hide your movement. Unfortunately for you, you're slightly too slow, and you feel the skin of your left leg blister and burn under the fiery assault, sending you stumbling forward to land face first against the hard scales of the dragon's haunch as you lost your footing. Grimacing, you slap your palm on the dragon's limb, rubbing your smarting nose with your free hand. Thankfully for you, the magic kicks in before the dragon can whirl on your position, and it chokes indignantly as it attempts to bring another fiery blast to bear. It should be MUCH easier to face him now that he's weakened, though you will be starting the fight with a significant handicap.";
					decrease HP of Player by 70;
	else if "Second Chance - Helios" is listed in Traits of Soot:
		say "     Squaring your shoulders, you ready yourself to face the dragon again, hoping that he's still weakened from Soot's magic. Judging by the wary twitch of the dragon's tail, and his inability to breathe fire, you seem to be in luck!";
	challenge "Fire Dragon";
	if FightOutcome is 30: [fled]
		say "     You flee in the face of the dragon's might, running out of the Magma Chamber as quickly as you can. Flames lick at your heels, and you narrowly miss a gout of fire directed at your back. Grabbing your knees, you attempt to find a place to hide, only to realize that the fire dragon isn't pursuing you. Your palm stings as you catch your breath, and to your chagrin, you notice the rune inscribed there has faded away, leaving a raw patch of skin. You get the feeling you failed in your mission, and Soot probably won't give you a second chance. Still, it [bold type]Wouldn't hurt to try again. Maybe Soot's Magic is still affecting the dragon![roman type][line break]";
		TraitGain "Second Chance - Helios" for Soot;
		if "Second Chance - Helios" is listed in Traits of Soot:
			say "     You attempt to flee again, but the dragon corners you, blocking the only route out of the magma chamber and thrashing his tail angrily. The back of his throat sets itself alight as you stare down the barrel of his sight, and you barely have time to curse your fate before fire envelops every inch of you.";
			The Player was ended by "Fire Dragon";
			Trigger ending "Player has died";
			end the story saying "You have underestimated the strength of the fire dragon and died at its hands. Nothing but ash remains.";
		else:
			Move Player to A Volcanic Crater;
	else if fightoutcome >= 20 and fightoutcome <= 29: [lost]
		say "     Falling to your knees, you try your best to regain your footing, only to find yourself staring down the barrel of an open maw, set alight by fire at the back of its throat.you barely have time to curse your fate before fire envelops every inch of you.";
		The Player was ended by "Fire Dragon";
		Trigger ending "Player has died";
		end the story saying "You have underestimated the strength of the fire dragon and died at its hands. Nothing but ash remains.";
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     Standing triumphantly over the dragon as he collapses, shaking the whole magma chamber with his size, you ponder the defeated drake. You stand awkwardly for a moment or two, wondering if there's something else you're supposed to do, before the far wall shimmers, the blank cave face morphing into a giant wooden door. 'Excellent!' Soot's voice echoes from the door as it opens unto a much more roomy cave with a layout similar to the one you're currently standing in. A familiar robed figure stands in the center of the cave, and with a wave of Soot's unbandaged hand, the limp, defeated dragon slides into the door toward him as if propelled by invisible wheels, coming to rest at his feet. 'I'll handle the rest. Visit when you're ready for the next step.' Waving his hand, he slams the door shut before you can ask him anything, leaving you alone in the magma chamber.";
		TraitGain "Helios Captured" for Soot;
		TraitLoss "Hunting Helios" for Soot;
		move Helios to Magma Mountain;

Section 4 - Helios Captured and Usable

instead of conversing Helios:
	if OffspringCount of Helios is 0: [first interaction. Only available before you fuck him for the first time.]
		if Resolution of Hard Bargain is 1: [Fuck yeah! Fuck dragons!]
			say "     Helios stands his ground when you approach him, the slightest amount of steam billowing from his nostrils. He still seems to be under the impression that he's in charge, despite Soot's magic keeping him weakened and compliant, and he won't even speak to you when you greet him, turning up his nose at you.";
			Linebreak;
			let Helios_Unsure_Choices be a list of text;
			add "Ask whether Helios whether he's ready to create a clutch for Soot." to Helios_Unsure_Choices;
			add "Ask Helios what his plans were for your world." to Helios_Unsure_Choices;
			let Helios_Unsure_Choice be what the player chooses from Helios_Unsure_Choices;
			if Helios_Unsure_Choice is:
				-- "Ask whether Helios whether he's ready to create a clutch for Soot.":
					LineBreak;
					say "[HeliosArrogance]";
				-- "Ask Helios what his plans were for your world.":
					LineBreak;
					say "[HeliosLore]";
		else if Resolution of Hard Bargain is 2: [Uh...  Maybe fuck dragons?]
			say "     In order to get a feel for whether you'd be willing to force yourself on the dragon for the sake of Soot's little 'Quest' you decide to get to know Helios(That was the name he bellowed at you earlier, at least...) better. With that in mind, you approach the dragon and attempt to ask him some questions about himself. What you were unprepared for was the dragon's complete and utter disdain for you. 'Lesser beings should know their place.' He snarls, blatantly ignoring the fact that he's currently under a spell to prevent his full power from showing through. 'You should be thankful that I wished to convert your pitiful world into a place worthy of my glory. Those of you lucky enough to survive could pay tribute!' He continues for several minutes on this tirade, puffing out his chest and acting high-and-mighty. You get the feeling he's not sorry for invading your world, and given the chance, he would do it again.";
			LineBreak;
			say "     [bold type]Helios appears to be truly terrible. It would be no big loss to put him in his place. Does that make you feel better about going along with Soot's plan? Or do you not want to go through with it?[roman type][line break]";
			say "[link]Y[as]y[end link] Yes - Fuck this guy. Time to turn him into an egg machine.";
			say "[link]N[as]n[end link] No - Something still doesn't feel right. You don't think you can follow the plan.";
			LineBreak;
			if Player consents:
				say "     Hearing Helio's pomposity and utter lack of morals makes you feel better about forcing him to do as you like. Maybe you should get to work?";
				now Resolution of Hard Bargain is 1;
				TraitGain "MPreg" for Helios;
			else:
				say "     You still can't bring yourself to force yourself on the dragon, openly evil as he may seem. You think about telling Soot so, but it seems he already knows, and before you can return to him, you find yourself gently tossed through a nearby door, winding up in the swamps where you originally found the entrance. Sadly, it appears you won't be able to interact further with Soot or Helios, or any further captured dragons.";
				now Resolution of Hard Bargain is 100; [You had two chances to get on board!]
				move Player to Sinking Swamps;
	else if OffspringCount of Helios > 1 and OffspringCount of Helios < 3:
		say "     Helios can't meet your eye when you walk up to him, visibly cringing away from you. You can't quite seem to strike up a conversation. Strangely, you notice that he's got an erection from the moment you approach, despite his clumsy attempts to hide it, and when you raise your voice, his tail lifts slightly, as though in submission. He seems uncomfortable, and his usual high and mighty attitude is nowhere to be seen. It seems your 'punishment' is working.";
	else if OffspringCount of Helios >= 3:
		say "     Before you can speak, Helios's eyes widen and he bows down before you. 'Please. I can't handle this godsforsaken heat. I'm like a dragoness in season.' Shifting uncomfortably, he shows off his cock between thighs that rub together, sending a belching rope of precum to the ground below. 'I'll do anything you like. Anything. Give me some relief.' Licking his lips, the dragon stares hungrily between your legs, as though desperate to shove his nose between them. It seems your punishment has broken him, and all he can think about is the pleasure you give him! Maybe you should give the poor thing some comfort before he explodes.";

to say HeliosArrogance:
	say "     Trying your best to not be pushy, you broach the subject of breeding with the dragon. Whether or not he's okay with it, you'll be doing as you like, but you'd still prefer to let him set his expectations. After all, you're not a monster like most of the creatures roaming the city!";
	if Player is female:
		say "     Helios scoffs, lowering his horned head to just above your level. 'I would not breed a clutch into your disgusting inferior quim if it was a choice between your cunt and a hole in the ground filled with vermin. At least I could guarantee that whatever pestilence the vermin inflict on me would be curable.' Tilting his head to the side, he points a single claw in the direction of the door. 'You tell your mage to send me a dragoness if he wants my clutch. Or, better yet, you can both fuck off. I've better things to do even in this PRISON than listen to some mewling breeder beg for superior seed.'";
		say "     Thrashing his tail, Helios refuses to speak to you further, turning up his nose at you. You have the sudden and nigh on irresistable urge to punch him in his flaring nostrils, but you hold it back. At least you don't have to feel bad about forcing yourself on someone so awful!";
	else if Player is male:
		say "     Helios scoffs, lowering his horned head to just above your level. 'If you take me for a filthy tail-raising inferior male, you can fuck off. I'd rather avail myself of the nearest livestock before I let another male violate me.' Shooing you with a wave of his claw, Helios refuses to speak to you further, eyes closed and neck tilted upward as though he refuses to look at you. When you attempt to walk away, you can hear him call behind you. 'Go fuck a horse, you degenerate swine! At least it can't tell you how disgusting you are!' You clench your fists at his taunt, realizing there's no reason to consider this asshole's feelings. You should simply force yourself on him and teach him some manners!";

to say HeliosLore:
	say "     You attempt to ask what Helios was doing in your world. Surely he had a place in his own, and didn't need to come here to destroy yours for his own comfort. Helios snorts derisively as you speak, interrupting you rudely near the end. 'Does a drafthorse make way for an ant? My whims mean far more than the measily survival of peasants. You should be grateful to settle within my territory.' Stomping one foot, he continues. 'If I wish to destroy my surroundings, it is my right.' You get the feeling he believes he's better than you, and as he lapses into a long, boring speech about his lineage, you quickly step away. Thankfully, he doesn't notice you leave, but you can't help the feeling that this dragon needs someone to shut him up. Maybe that should be you?";

instead of fucking Helios:
	if lastfuck of Helios - turns < 6:
		say "     Shaking his head as you approach, before you can even say anything, Helios whines with an uncharacteristic tone. 'Please, don't force me again so soon. I can't bear it. Have mercy.' Disappointed as you may be, you're satisfied with his mended attitude, patting his nose like he's an obedient dog and telling him you'll wait until he recovers from your last 'encounter.' In return for your benevolence, you'll work him twice as hard!";
	else if OffspringCount of Helios is 0 and ImpregTimer of Helios is 0 and Resolution of Hard Bargain is 1:
		say "     Tossing aside your gear in a convenient corner of the room, you approach Helios in the nude, letting your arousal lead the way. You've been looking forward to finally putting the dragon in his place, and judging by his disgusted expression, he's been dreading it just as much. Internally shrugging, you toss aside Helios's feelings, demanding that he assume a more comfortable position for you. You don't want to have to climb him to get into position, but you will! Scoffing at your demands, the dragon turns up his nose at your proposition. 'I will not debase myself for your pleasure, filthy creature. Cover your shame and leave my presence.' Turning his back on you, he sweeps his tail to the side as though you're nothing but a bit of dirt to remove from his presence.";
		say "    'Tsk. Behave.' A detached, bored-sounding shout echoes from the direction of the door to the pocket universe, and Helios ragdolls into the nearest wall face first, leaving his body spread-eagled as he attempts to right himself. Unfortunately for him, chains appear from a nearby wall and keep him in this compromising position, his sheath, and balls comically revealed beneath an expanse of belly. Beneath those heavy balls, a tight-looking ass winks at you from between thick haunches, with his chained tail pulled taut so it can't cover his shame.";
		LineBreak;
		say "     With this smorgasbord laid out before you, you have a choice to make. [bold type]What do you want to do with the dragon?[roman type][line break]";
		let HeliosVirginSex_Choices be a list of text;
		if Player is male:
			add "Fuck his ass. It's his turn to be the 'inferior creature!'" to HeliosVirginSex_Choices;
		if Player is female or "MPreg" is listed in Traits of Player:
			add "Ride his dick. You're getting his clutch whether he likes it or not." to HeliosVirginSex_Choices;
		let HeliosVirginSex_Choice be what the player chooses from HeliosVirginSex_Choices;
		if HeliosVirginSex_Choice is:
			-- "Fuck his ass. It's his turn to be the 'inferior creature!'":
				LineBreak;
				say "[HeliosVirginAssFuck]";
			-- "Ride his dick. You're getting his clutch whether he likes it or not.":
				LineBreak;
				say "[HeliosVirginRide]";
	else if OffspringCount of Helios is 0 and ImpregTimer of Helios > 0:
		say "     Helios seems like he hasn't embraced his role quite yet. [bold type]Maybe you should wait to try to fuck him until after he's given birth once?[roman type][line break]";
	else if OffspringCount of Helios is 1 or OffspringCount of Helios is 2:
		say "     Helios can't quite hide his excitement as you ask him whether he's ready to try for another clutch. Still, he silently turns his head to the side, harrumphing as though you're forcing him. 'Go ahead, then. I won't stop you.' He grumbles, his voice shaking. Judging by the way he swallows and stares at your crotch, it's nothing more than an act, and you can already see his erection peeking out between his legs, hastily hidden by strategically placed forelegs.";
		say "[HeliosFuckMenu]";
	else if OffspringCount of Helios > 2:
		say "     Helios visibly shivers as you ask him whether he's ready for the next round of egg-making. His legs spread apart self-consciously, and his cock slurps free of its sheath with a spray of pre. Making no attempt to hide it, the dragon humps the air with a slight whine in his voice. 'Yes! I need it so! Use me as you see fit!' You're taken aback by the sudden change in attitude, but cumming his brains out this many times must have calmed the ill-mannered dragon. So much for the smug, overly superior dragon you broke a while back.";
		say "[HeliosFuckMenu]";

to say HeliosVirginAssFuck:
	say "     Slapping the dragon's ass, you inspect Helios's spread legs. It's a pity you can't get a good view of his face from here, but you have a nice pair of toys to play with, a leathery set of balls the same color as his scales. Hefting them with two hands, you admire their churn within the sack, relaxing the longer you play with them and drooping slightly, at odds with the tensed-up dragon. Working your way lower, you kneel to inspect the dragon's spread hole, admiring its tight appearance when you reach out to touch its heat, swirling a finger around its rim and admiring its twitch. 'Remove yourself. You don't dare!' Helios rages against the iron grip holding him in place. He can do nothing to stop your exploration but thrash his tail under your bare ass, giving your cock a convenient rub. Perhaps it would be better to get things over with before he throws much more of a fit.";
	say "     Sitting your ass on the base of the dragon's tail, you greet his hole with the tip of your dick, gripping it in one hand and exploring the soft heat of the dragon's immaculately clean ass. Spitting on your tip, you test his tightness, surprised that your shaft slips in with little effort, and keep going until you bottom out, surrounded by clamping dragon flesh and face-to-face with the dragon's balls. 'Not there. Anywhere but-' Helios whimpers out, interrupted by your first thrust. Kicking futilely, he tries his best to squirm away, but all he can do is corkscrew around your shaft, giving you a tighter fuck. Despite his size and the relative ease with which you shoved past his defenses, he's tight enough that you're SURE he's a virgin.";
	WaitLineBreak;
	say "     Taking advantage of your position to rub your face against the masculine sack inches in front of you, you reward the dragon with a slow rhythm. While you ARE forcing yourself on him, you see no reason why he can't enjoy himself, and judging by the thick line of pre that dribbles down his sack from his peeking cock, he's starting to. You taste his offering without hesitation, remarking that it's surprisingly sweet for such a pompous creature. Picking up the pace as the dragon's hole softens around your dick, aided by your efforts to pleasure those massive, slippery balls with your mouth and hands, you revel in how warm his insides are, angling your thrusts to find the spots that make him moan out the loudest. It's almost like a game, dragging those noises from the dragon only to hear stunned silence, and when your cocktip finds a spongy button to press against, you smirk, gratified by the near-scream of pleasure you tear from his throat. Mercilessly, you hammer the dragon's prostate with targeted thrusts, letting your whole body bury itself in the dragon's taint, ass, and balls. Likely, you won't last much longer with the sweet dragon musk enveloping your entire body, but you'll be damned if he doesn't cum first!";
	say "     'AH! Stop! Stopppp!' The dragon begs for mercy, only to tense up, his hips shoving upward enough that your legs dangle in the air, your ass supported by his curled tail. A thick, sticky rain covers your face and shoulders as you keep up your breakneck pace, and as you lick it off your lips, you grin to yourself. He's cumming! With no other choice but to join the dragon, you slam deep into those spasming depths, holding onto his thrashing body for dear life. His hole tightens enough that you worry your dick might get ripped off, but you couldn't stop if you wanted to, filling the air with sticky sounds and labored grunts, then a final sigh of contentment as you bottom out, painting the dragon's innards with thick spurts of satisfaction.";
	WaitLineBreak;
	say "     Your orgasm lasts longer than usual, and when you pull out of the dragon's slackened tailhole, you're surprised by the amount of cum that floods outward. Shrugging, you chalk it up to magic as you gather your gear, leaving the dragon to pant in post-orgasmic bliss while you wipe yourself off and re-equip yourself. You're not sure how this is supposed to work, but you don't mind trying again another half-dozen times if this first attempt didn't take.";
	NPCSexAftermath Helios receives "AssFuck" from Player;
	if impregtimer of Helios is 0: [Guaranteed Pregnancy.]
		now ImpregTimer of Helios is 1;

to say HeliosVirginRide:
	say "     'Can't we discuss this?' Helios stares as you climb over his spread legs and plop your ass down on his manhood, using his balls as a strangely comfortable seat. 'There must be some other way to do this. I can offer you riches- I need to go back to my hoard and-' Wincing as you touch his sheath, he trails off into an involuntary groan, his eyes clenching closed. Shaking your head, you tell the dragon you gave him a chance to get through this without a fight, and he didn't take it. You're getting what you came here to take, his clutch inside you, whether he likes it or not. If he relaxes, he might even enjoy himself! ";
	if Player is female:
		LineBreak;
		say "     Slowly, you tease the dragon's cock out of its heated home, licking your lips and wrapping your thighs around it. It's large enough that each buck of that large shaft parts your pussy lips and lifts your body a few inches, pulsing heartbeat vibrating your needy clit. Despite that cuntbusting size, you're not worried, smearing your increasingly wet lips over the hardening ridges, working your way to its apex. Despite the size difference, the first inch fits perfectly inside your dripping wet cunt, and you take advantage of that fact to tease the reluctant dragon, kneeling so he can watch you play with yourself using his cock. As you slip that needy dick in and out of you, never letting more than the barest bit of it taste your cunt, you watch the dragon's expression.";
		WaitLineBreak;
		say "     'Please.' Helios grows more restless by the moment, thrusting upward in vain and straining against the chains that hold him. Belching precum, his cock begs for more, its ridges pulsing and swelling to a rhythm that you swear would feel amazing inside you. 'You can't do this-' Whimpering as your cunt clamps on that slippery inch, only to let him flop free and roll along your stomach, leaving a slimy trail, he begs for something he won't quite elaborate on. Does he want it inside or to be left alone? Smirking, you line him up again, making a show of your slowly swiveling hips and the juices dripping down your thighs. You need him to cum inside you, but his size might be a problem. ";
		if Player is twistcapped:
			WaitLineBreak;
			say "     Thankfully for the dragon, you're used to large insertions,  and seconds before he slips back out of you, you lead him back in, sinking that fat, ridged meat into your greedy cunt an inch at a time until the base nearly kisses your pussy lips. Cradling the bulge as it moves up your stomach, you smirk with triumph, taunting the dragon as you eagerly spear yourself on his proud pole. You're a lesser creature, aren't you? What does that say about him? Letting a lesser creature use him as a living dildo must be humiliating. 'Quiet. You are nothing but the filthiest lower beast.' Gritting his teeth, the dragon defiantly huffs steam in your general direction, only to loll his tongue out as you slide him to the base, clamping down your overstuffed cunt hard enough that it must hurt. It seems your cunt has him speechless! Time for the fun part!";
			say "     Bouncing with increasing vigor on that slick, ridged cock, you coo that the dragon's being such a good boy for you. All he needs to do is fill you up. Doesn't he want to cum for you? You're so wet that he must feel it trickling down over his balls. Giving him a show, you play with yourself as you ride, rubbing your clit and leaning back so he can see those juicy ridges pop in and out of your cunt. You're so close yourself, but you hold back, waiting for the big finale. Helios clamps his eyes shut, teeth clenched, and breath coming in long, heavy huffs. No doubt he's trying his hardest to hold back, but his face goes slack after mere moments, and your triumphant cunt spasms as thick dragon batter blasts the entrance to your womb, slickening your frantic masturbating and adding a wet webbing to your union, coating every inch of your thighs and ass.";
			WaitLineBreak;
			say "     Satisfied with the load you squeezed out of the softening dragon, you work yourself over the edge using all that juicy cum as a lubricant, subjecting his spasming cock to a breakneck pace that slams your ass down on his pool, churning balls. Adding to the sticky mess that connects your lower half to the dragon's sullied lower stomach, you withdraw as gingerly as you can, letting him see how stretched and thoroughly bred your pussy is.";
		else:
			say "Unfortunately for the dragon, he's not big enough to fit in your poor pussy, so you can only wrap your thighs around his dick and put your combined juices to work to get him off.";
			WaitLineBreak;
			say "     Teasing the dragon about his size, you tell him it must be a good thing that he can't fit inside your tight little pussy. After all, you're nothing but a lower creature. Why would he lower himself to your level to feel how sweet it'd be to slide to the hilt? It's better this way. He'll have to let go and let you milk out a big load. 'Fuck you.' Grimacing as your pussy slurps along pulsing ridges, the dragon pants, his breath coming out steamy and labored. 'I won't give in. My seed is too precious. I'll sire a legion of purebred dragons someday.' Despite his words, the dragon shoves upward in time with your rhythm, belching enough precum to wet your ride. His dick quivers with each full stroke, and you get the feeling he's about to finish.";
			say "     Squaring your hips, you roll your pussy up to the tip, slurping his tip into your warm inner walls. Frantically playing with yourself, you demand his finish, letting that stretching cock slip just a slight bit deeper until a jet of pre hits the entrance to your womb. It hurts a bit, but you're too horny to care. You want to feel a dragon's load! Relaxing backward with his tongue hanging out, the dragon bastes your pussy, giving in to his fate. Pump after pump overflows you, setting off your orgasm, and before you know it, it slips free, painting your crotch in sticky spiderwebs of steaming spunk. Whorishly, you finger that prodigious load into your cunt, letting it splash your lower half and soak into your skin like a perverted bath. You continue like this until the dragon goes soft, hopping down off his prone form and patting his side while still three fingers deep inside yourself. To add insult to injury, you thank the dragon for his contribution, asking Helios whether that was so hard. After all, your sticky cunt tells you he MORE than enjoyed himself.";
		WaitLineBreak;
		say "     Almost immediately, you feel a shifting in your stomach, and you fall to the side in surprise, leaning against the dozy dragon's side as it swells out into almost instantaneous pregnancy. Still well-lubricated, your pussy lips part, revealing a rune-covered object that spreads your lips apart, then plops to the ground below with little fanfare. Is that an egg? Overcome by pleasure, you push out several more of the eggs, savoring their ridges and divots as they ravage your pussy, until a tidy pile sits between your legs below your pleasure-wracked cunt. Gathering your gear on shaky legs, you decide to ask Soot about this development. You were expecting a more normal pregnancy.";
	else: [Anal pregnancy. Gives Twist-cap. Does not require MPreg feat.]
		say "Slowly rolling your ass up and down the top side of the dragon's cock, you smirk as it grows to its full, massive size. You're an inferior creature, so what does that make him? He's so hard that you can feel his heartbeat in that colossal shaft, and the dripping goo covering your cheeks one thick string at a time leaves nothing to the imagination.";
		say "     'Shut your mouth. Foul-' Grimacing as you roll your hips just right, the dragon humps upward, splattering your back with proof of his enjoyment. 'If you know what's good for you, you'll fuck off before I get angry.' Impotent threats spew from his mouth, and a nasty glare stares at you. Shaking your head, you tell Helios he's not in charge anymore, sliding along his shaft until the pointed tip kisses your hole. Steadying it with one hand, you take advantage of that copious dripping lubricant, sliding down his shaft one ridge at a time until you feel as though you'll burst. Pausing there, you hold the bulge in your stomach with a triumphant look, telling the dragon that if he wants you to go any further, he'll have to beg.";
		WaitLineBreak;
		say "     'Fuck you!' Helios spits his words, but the longer you gently bounce on him, clamping your inner muscles to milk more of that sticky dragon pre, the more torn his expression becomes. 'Please.' He won't elaborate further, fangs digging into his lower lip until you pop one more ridge past your rim, testing your already stuffed hole with more girth. 'Pleaaaseee!' He whimpers out in desperation, his shaft bouncing inside of you as though echoing the sentiment. Too turned on by the dragon's apparent submission to worry about the effects of such a prodigious spire on your vulnerable innards, you square your hips, bearing down until those last few inches work their way into you, giving your stomach an obscene bulge. Out of breath, you thank the dragon for finally admitting what he wants,  cradling your stomach and riding his cock for all you're worth, plopping your ass down onto his balls on each downswing. It's hard to concentrate with the dragon's dick coring you out so well, so you let your mind go blank, treating it as a warm, dripping dildo.";
		say "     'Stop! Please!' Helios grits his teeth and groans, bringing you out of your dick-related hypnotism. Judging by the insistent pulse of that buried shaft that nearly moves your whole body, there can only be one reason- he's about to cum. There's no turning back now, as you gleefully remind him, and before you can complete one more trip up and down his shaft, he loses control, spurting deep into your stomach. Holding your groaning stomach as that fat shaft fills you with gush after gush of hot dragon cum, you ride out your orgasm hands-free. There's so much cum buried in your stretched, ruined hole that it can't possibly remain inside you, and spiderwebs of seed soon connect you to the dragon's sloppy balls and softening shaft, covering your entire lower half in stray squirts. Sadly, that powerful pump can't last forever, and by the time he's fully softened, all that remains is a pitiful, milked-dry dragon cock that retreats when you pull off of it. Its owner seems to have passed out with the intensity of his orgasm and barely reacts when you slide down off of his body, but a soft slap to his inner thigh earns a weak 'Not again. I need a few days. Maybe a month.' in a half-asleep voice.";
		WaitLineBreak;
		say "     Almost immediately, you feel a shifting in your stomach, and you fall to the side in surprise, leaning against the dozy dragon's side as it swells out into almost instantaneous pregnancy, even further than the cum-belly that you were already sporting. Still well-lubricated, your ass opens up, revealing a rune-covered object that spreads your rim apart, then plops to the ground below with little fanfare, forgoing all the pain you'd expect from its evacuation. Is that an egg? Overcome by pleasure, you push out several more of the eggs, savoring their ridges and divots as they ravage your freshly-fucked ass, until a tidy pile sits between your legs below your pleasure-wracked hole. Gathering your gear on shaky legs, you decide to ask Soot about this development. You weren't expecting this sort of immediacy when he said you needed to carry Helios's clutch!";
		FeatGain "Twisted Capacity";
	NPCSexAftermath Player receives "AssFuck" from Helios;
	now OffSpringCount of Helios is 1;

to say HeliosFuckMenu:
	say "     [bold type]What do you want to do with the captive dragon? You doubt he'll protest anything you make him do.[roman type][line break]";
	let HeliosRepeatSex_Choices be a list of text;
	add "Make him fuck your ass." to HeliosRepeatSex_Choices;
	if Player is male:
		add "Fuck his ass." to HeliosRepeatSex_Choices;
	if Player is female:
		add "Milk his cock with your pussy." to HeliosRepeatSex_Choices;
	add "Nevermind." to HeliosRepeatSex_Choices;
	let HeliosRepeatSex_Choice be what the player chooses from HeliosRepeatSex_Choices;
	if HeliosRepeatSex_Choice is:
		-- "Fuck his ass.":
			LineBreak;
			say "     Telling Helios that it's time for you to pump more eggs into him, you toss aside your gear, standing proudly in front of him with your growing erection leading the way. He should know better than to resist by now, lest he incur Soot's wrath, so you don't mind being a bit more bold. Will he lift his tail, or must you ask someone for help? Meekly, the dragon scruffles around, lifting his tail high and revealing that soft space between his hefty haunches. Positioned like a dog in heat presenting to a male, he waits with bated breath, only to grumble as he realizes the height you'd have to climb to reach the offered entrance. Gingerly lowering his dangling manhood to the dirt floor, he groans aloud as his balls contact the warm ground and offer you a more scalable perch, his hefty nuts shifting in their sack.";
			say "     A conveniently placed rock saves the dragon's balls from your weight, raising you to just the right height to nuzzle your dick against that heated silk. To your surprise, he's already slightly warmed up, and a bit of slickness greets your cockhead, letting you slip right in. You taunt him with this knowledge as you hilt, asking him whether he's been playing with himself while he waits for you. 'I have to keep myself clean. I certainly wasn't using my tongue for your benefit.' The dragon's ashamed whisper floats over his shoulder, accompanied by a whorish moan. 'It's none of your business.' A hint of arrogance slips into his voice, alongside the dripping desire you're milking from him as you introduce him to the novel sensation of a deep fuck.";
			WaitLineBreak;
			say "     Slapping the dragon's rump and punishing him for his insolence with a heavy rhythm that slaps your hips against his heated rear, you chastise him for refusing to admit the truth. It's easy to see that he rimmed himself because he missed your cock. He wouldn't be this loose if he hadn't spent a long time fucking his ass with his tongue! Overwhelmed by the repeated assault on his sensitive prostate, the dragon can barely form a coherent sentence, his words coming in a discombobulated huff. Straining your neck, you watch as he lolls his tongue, a pleasured expression on his face that hastily changes to a forced wince as he notices your gaze. 'This is nothing but a punishment. A duty I must fulfill for some imagined slight. I wouldn't enjoy such filthy things.'";
			WaitLineBreak;
			say "     Withdrawing, you tease the dragon, telling him that if he doesn't enjoy your efforts, you can ask Soot for magical aid. Surely there's some way to prevent him from feeling something so 'vile.' Maybe you should stop here and ask. Of course, that'll mean you'll have to leave him there, with his ass in the air and an untouched dick. ";
			if OffspringCount of Helios > 3:
				LineBreak;
				say "Before you can pull out, Helios lets out something between a whine and a desperate moan, pushing back hard enough that he shoves you backward, ramming your cock to the hilt and sending you tumbling to your rear, buried under hundreds of pounds of horny dragon. 'No! Please! I'll be good!' He says in a sudden 180, twisting his flexible neck to face you with a guilty, ashamed expression written across his draconic features. Unasked, he glides his ass up and down your length, filling the air with sloppy, wet noises and sucking your cock with intensely clamping, heated inner walls. 'Don't leave me like this.'";
				say "     Grunting and clinging to the dragon's tail base, you thrust upward into his desperate movements. With such a whorish plea, you couldn't possibly disappoint him, and with that sloppy hole gripping you so tightly, there's no better place than under that desperately bouncing rump, so you grunt your approval. Your dick feels like it's going to melt, and the longer you try to hold back, the more it feels like the cum will be forced out of you by that colossal dragon ass. 'Yes! I'm sorry!' Helios slams down with a rhythm that would break most pelvises. The unmistakable gooey splat of dragon precum pissing out of his bouncing cock punctuates the desperate panting echoing through the flickering room. 'Please give me your seed! I'll behave! I'll worship you! Don't stop!' Debasing himself for the pleasure of your cock, he continues his demented pledge of loyalty until his legs give out and the unmistakable rhythmic milking motion of his greedy hole gives away his orgasm.";
				WaitLineBreak;
				say "     Gritting your teeth, you join Helios in orgasm, pumping rope after rope of magically augmented cum deep into his innards until you swear your balls will be empty for weeks. Trapped between feral dragon cheeks, you can't see much, but thankfully for you, by the time you start to feel your legs going numb, the dragon falls forward, ass in the air and cum leaking from underneath him to pool around his still-churning nuts. You take a few moments to gather your wits, then pick up your things, leaving the unconscious dragon to wallow in the filth of your lovemaking and slapping his rump on the way past. It's nice to see that he's embraced his place in the world, and you don't mind a bit of soreness to remember him by, as long as it comes with such a greedy ride first!";
			else: [not slutty]
				LineBreak;
				say "'Stop! Wait! We can talk about this!' Helios says with desperation in his voice. He presses back enough that you slide back to the base, and his hole clenches as though apologizing. 'I don't wish to endure those godsforesaken chains. Do as you must.' Settling in, he stares back at you with shame written across his face but keeps his tail dutifully lifted. Thanking the dragon for his sudden change of heart, you reward him with a steady rhythm that targets his prostate, grinning when a low moan forces its way out of his throat and his expression changes to one of pleasure. As you hump away, you tell him he should beg for more if he doesn't want you to stop. After all, you're just an inferior creature. How could you trust him so easily?";
				say "     Whimpering under his breath, the dragon moves his face out of view again. 'Please breed me.' He says with an unconvincing tone, his tail twitching with annoyance. You can tell he doesn't mean it, and it's meant to be insulting. Will he ever learn his lesson? Asking the dragon to repeat himself, you remind him that you could debase him in many more ways if he prefers to resist. Perhaps Soot could give you some pointers on how to break him? After all, you're simple-minded. Not nearly as smart as a dragon. Swallowing hard, Helios appears to see no way out of this. In a quavering voice, he tries to get in your good graces. 'Fuck me. I want you to breed me like a dragoness. I want to feel your clutch growing inside me, and then push it out while you watch. Please don't go.' You can still tell he doesn't mean it, but there's a hint of truth in how his hole quivers and the steady drip of draconic precum quickens as he speaks. Good enough.";
				WaitLineBreak;
				say "     Jackhammering the dragon, you tell him you'll gladly accept his apology, slamming your way toward a heavy orgasm and throwing yourself over the edge. You cum within moments, your cock pulsing for what feels like hours, and by the time you withdraw, sated, you hear the telltale sound of the dragon's dick firing off its batch of enjoyment. Satisfied with your handiwork, you spread his rim with two fingers to get a mental picture of how much you've wrecked the dragon's once-tight hole, then hop off the rock and gather your things. As much as you'd like to tease the dragon for finally admitting some shred of his sluttiness, you have places to be and things to do, so you leave him to contemplate how good it must have felt to be bred, his face hidden under an extended wing as though shielding him from the world.";
			NPCSexAftermath Helios receives "AssFuck" from Player;
			if impregtimer of Helios is 0: [Guaranteed Pregnancy.]
				now ImpregTimer of Helios is 1;
		-- "Make him fuck your ass.":
			LineBreak;
			say "     You feel like giving Helios's cock a workout this time. Telling him so, you strip off your gear and toss it in a haphazard pile nearby. Making it clear what you want, you find a semi-comfortable rock to lean back on and spread your legs, giving the dragon a view of your spread ass cheeks. Telling him to get to work on pleasing you, you crook your finger toward him. Swallowing audibly, the dragon looks from your presented hole to the door, then back as though weighing his options and contemplating resistance. With a sigh, he seems to decide not to protest, slotting his nose between your legs. Grumbling, he lolls his tongue out, letting it whisk over your clenching hole for a moment before he grimaces and pulls back. 'Is there no other way?'";
			say "     Whistling innocently, you tell the dragon that if he doesn't want to stick his cock in you, maybe you'll have to get some HELP with getting him to behave. Helios'll have to endure something far more humiliating if he doesn't behave himself, you're sure, but you don't mind rolling the dice! After all, YOUR limbs won't be bound in place. 'L-Let's not be hasty!' Recoiling at the memory of your first fuck, the dragon hastily slobbers over your hole, resting one mammoth paw on your leg to hold you in place while he pries open your hole. The longer he spends with his tongue inside you, the more compliant he gets, and by the time he pulls back, his eyes have glazed over, and sloppy strings of saliva drip down your soaked ass. Licking his lips like a slavering beast before he catches himself in the middle of savoring your flavor, he clears his throat, maneuvering himself into position to mount you.";
			WaitLineBreak;
			say "     Groaning aloud at the hot kiss of steaming dragon cock on your opened hole, you let his heaving stomach hold your legs in place, huffing to yourself as every available inch of your insides fills with pulsing manhood. It's a strange situation, with you taking the role of a breeding mount yet being in absolute control, and you luxuriate in just how gentle he is, stirring your insides with measured thrusts and digging claws into the ground on either side of you. Helios loses himself in the act before long, unleashing thick strings of draconic precum deep into your stomach and filling the air with the sloppy song of sex. Squaring his hips once he's worked you open enough for his liking, he drives his dick downward to a heavy beat, hollowing you out to make room for his slimy spend. The hot and heavy panting from above tells you Helios has lost any sense of rationality, and you doubt you could stop him if you wanted to, but thankfully for the dragon, you're on cloud nine! Not even the heavy, slightly painful blow of those massive balls slapping against your ass cheeks can bring you back down to earth.";
			say "     Grunting suddenly, the dragon stiffens mid-thrust, plunging to the root and hitting just the right spot to set your orgasm off. Hips moving in a desperate jitter, he pumps up and down in shallow thrusts as waves of cum baste your insides, threatening to overflow, then gushing out around his base, raining down around you and coating you in heated draconic seed. All the while, those sloppy ridges pop in and out of you with wild abandon, prolonging your pleasure. Cursing under his breath as he withdraws from your ruined hole, the dragon falls over to his side, eyes closed and breath coming in heavy huffs. With his dick still dribbling, he appears to pass out, messing his scales with errant strings of leftover seed. You leave him to recover, stretching your numbed legs and holding your stomach as you wait for the sloshing load to turn into its usual load of eggs.";
			WaitLineBreak;
			say "     It doesn't take long for that churning sensation to reappear, coaxing you to open your legs and spread your cheeks. Stimulating ridges work their way down your passage. You throw back your head, moaning as the first one pops free with little effort, spreading your hole wide and bringing with it a thick coating of dragon cum. The next comes with ease, and by the time the last one pops free, you're openly fingering your hole in hopes of another. Sadly, you've finished laying, standing on shaky legs, re-equipping yourself, and leaving the pile of eggs for Soot to collect.";
			NPCSexAftermath Player receives "AssFuck" from Helios;
			if OffspringCount of Helios < 4:
				increase OffSpringCount of Helios by 1;
		-- "Milk his cock with your pussy.":
			LineBreak;
			say "     You feel like giving Helios's cock a workout this time. Telling him so, you strip off your gear and toss it in a haphazard pile nearby. Making it clear what you want, you find a semi-comfortable rock to lean back on and spread your legs, giving the dragon a view of your spread ass cheeks and dripping cunt. Telling him to get to work on pleasing you, you crook your finger toward him. Swallowing audibly, the dragon looks from your presented pussy to the door, then back as though weighing his options and contemplating resistance. With a sigh, he seems to decide not to protest, slotting his nose between your legs. Grumbling, he lolls his tongue out, letting it whisk over your pussy lips for a moment before he grimaces and pulls back. 'Is there no other way?'";
			say "     Whistling innocently, you tell the dragon that if he doesn't want to stick his cock in you, maybe you'll have to get some HELP with getting him to behave. Helios'll have to endure something far more humiliating if he doesn't behave himself, you're sure, but you don't mind rolling the dice! After all, YOUR limbs won't be bound in place. 'L-Let's not be hasty!' Recoiling at the memory of your first fuck, the dragon hastily slobbers over your clit, resting one mammoth paw on your leg to hold you in place while he pries you open with desperate licks. The longer he spends with his tongue inside you, the more compliant he gets, and by the time he pulls back, his eyes have glazed over, and sloppy strings of saliva drip down your soaked lips, mixed with freely flowing feminine arousal. Licking his lips like a slavering beast before he catches himself in the middle of savoring your flavor, he clears his throat, maneuvering himself into position to mount you.";
			WaitLineBreak;
			say "     Groaning aloud at the hot kiss of steaming dragon cock on your sensitive pussy, you let his heaving stomach hold your legs in place, huffing to yourself as every available inch of your greedy cunt fills with pulsing manhood. It's a strange situation, with you taking the role of a breeding mount yet being in absolute control, and you luxuriate in just how gentle he is, stirring your insides with measured thrusts and digging claws into the ground on either side of you. Helios loses himself in the act before long, unleashing thick strings of draconic precum to soak your battered cervix and filling the air with the sloppy song of sex. Squaring his hips once he's worked you open enough for his liking, he drives his dick downward to a heavy beat, hollowing you out to make room for his slimy spend. The hot and heavy panting from above tells you Helios has lost any sense of rationality, and you doubt you could stop him if you wanted to, but thankfully for the dragon, you're on cloud nine! Not even the heavy, slightly painful blow of those massive balls slapping against your ass cheeks can bring you back down to earth.";
			say "     Grunting suddenly, the dragon stiffens mid-thrust, plunging to the root and hitting just the right spot to set your orgasm off. Hips moving in a desperate jitter, he pumps up and down in shallow thrusts as waves of cum baste your insides, threatening to overflow, then gushing out around his base, raining down around you and coating you in heated draconic seed. All the while, those sloppy ridges pop in and out of you with wild abandon, prolonging your pleasure as they stimulate your overworked lips. Cursing under his breath as he withdraws from your ruined hole, the dragon falls over to his side, eyes closed and breath coming in heavy huffs. With his dick still dribbling, he appears to pass out, messing his scales with errant strings of leftover seed. You leave him to recover, stretching your numbed legs and holding your stomach as you wait for the sloshing load to turn into its usual load of eggs.";
			WaitLineBreak;
			say "     It doesn't take long for that churning sensation to reappear, coaxing you to open your legs and spread pussy with excited fingers. Stimulating ridges work their way down your passage. You throw back your head, moaning as the first one pops free with little effort, spreading you wide and bringing with it a thick coating of dragon cum. The next comes with ease, and by the time the last one pops free, you're openly fingering your sloppy pussy in hopes of another. Sadly, you've finished laying, standing on shaky legs, re-equipping yourself, and leaving the pile of eggs for Soot to collect.";
			NPCSexAftermath Player receives "PussyFuck" from Helios;
			if OffspringCount of Helios < 4:
				increase OffSpringCount of Helios by 1;
		-- "Nevermind.":
			LineBreak;
			say "     Deciding against fucking the dragon for now, you tell him to wait until you're more in the mood, noting his slightly disappointed expression as he nods his head, still staring hungrily at your crotch. ";
			if OffspringCount of Helios > 2:
				say "You hear him mumble something under his breath about being unable to wait, but he behaves, reclining and letting his cock soften with a hopeful expression, as though you'll take pity on him. You should probably try for another clutch soon, before the poor thing goes TOO stir-crazy.";
	


Section 5 - Helios Pregnancy

an everyturn rule:
	if ImpregTimer of Helios > 0: [Helios is pregnant]
		increase ImpregTimer of Helios by 1; [counting up towards 24]
		if debugactive is 1:
			say "     DEBUG: Helios's eggnancy advanced one turn. Current Turn: [ImpregTimer of Helios], Target Value: 24";
		if ImpregTimer of Helios is 8:
			TraitGain "Slightly Pregnant" for Helios;
		if ImpregTimer of Helios is 20 and skipturnblocker is 0: [announcement that birthing time is coming closer]
			if Helios is visible:
				say "     Helios groans with discomfort and rolls over, his stomach distended to a level that almost seems worrisome. His tail hikes, and he doesn't appear to have his usual embarassment around you seeing him in this compromised state, showing off a winking obsidian pucker. You get the feeling he'll start laying his eggs soon, so if you want to be near for the birth, you'd better stick close by!";
			else:
				say "     Your thoughts wander back to Helios, and you feel a need to go check in on him. [bold type]If you want to be present for the birth of his eggs, you should most likely stay close to him for the next 12 hours or so.[roman type][line break]";
			TraitGain "Heavily Pregnant" for Helios;
			TraitLoss "Slightly Pregnant" for Helios;
		else if ImpregTimer of Helios >= 24 and skipturnblocker is 0: [birthing time]
			if Helios is not visible: [player isn't anywhere near him]
				say "     [bold type]Your thoughts wander back to Helios, and you feel a need to go check in on him. You may have missed his egg-laying![roman type][line break]";
				add "Absent_Birth" to Traits of Helios; [memory of the birth of human dog offspring without the player present. trait just there for completeness, does nothing.]
				TraitLoss "Heavily Pregnant" for Helios;
				now ImpregTimer of Helios is 0; [Pregnancy Reset]
				if OffspringCount of Helios < 4:
					increase OffSpringCount of Helios by 1;
			else: [player is next to Helios] [TODO: Add mentions of other offspring]
				say "      Helios groans and lies on his side, his legs forced apart by his massvely swollen stomach. His tongue hangs out of his mouth, and you can see his obsidian pucker flex with effort as a soft glow illuminates it. Pulsing with an unmistakably fiery aura, his first egg tests the limits of his hole, accompanied by a slow trickle of lubricant, then slides out, leaving his ass gaping and his cock throbbing. Cursing your name under his breath, he bears down, readying the next. ";
				if OffspringCount of Helios is 0: [first time]
					say "Helios grimaces as  each egg reaches its apex, stretching his hole to its fullest, and then slides out of him. He sighs with relief, only to clench his teeth again as the next jostles for position. At least half a dozen eggs come in quick succession, pooling by his haunches, and by the time he finishes, his thick hauches shine with messy lubricant, his hole loosened enough that you can see his soft pink inner walls, still spasming despite the birth's near finish. When the last egg left queues up, he lets out a high pitched whine, and his cock heaves, dousing the ground below in a thick layer of cum.";
					if Player is male:
						LineBreak;
						say "     Admiring that freshly stretched hole and the exausted dragon's inability to move after his ordeal, you have an idea- [bold type]maybe he needs another clutch to stuff his empty stomach?[roman type][line break]";
						say "[link]Y[as]y[end link] Yes - Take advantage and fuck him while he's just given birth.";
						say "[link]N[as]n[end link] No - You'll let him rest.";
						if Player consents:
							say "[HeliosBirthSex]";
						else:
							say "      Shaking your head, you clear the evil thought out, instead offering the exhausted dragon some comfort, patting his haunches and gently cleaning up the mess he made with a cloth from your bag. Of course, you still tease the poor thing, taking your time to wipe away his juices from his sensitive hole, and stroking his spent cock until it gives up its last pearly dribbles into your palm. You leave him to rest once you've had your fill of teasing, satisfied by the now-sleeping dragon's contentment.";
						TraitLoss "Heavily Pregnant" for Helios;
						now ImpregTimer of Helios is 0; [Pregnancy Reset]
						if OffspringCount of Helios < 4:
							increase OffSpringCount of Helios by 1;
				else if OffspringCount of Helios > 0 and OffspringCount of Helios < 4:
					say "A moan slips out of the gravid dragon's mouth as he passes the first egg, accompanied by his cock flexing and firing off a juicy string of pre across his roiling stomach. His eyes shoot open as he realizes you're there, and he bites his lower lip as the next crests its apex, trying his best to hold back another. If you didn't know better, you'd think he's enjoying being forced to give birth to your eggs! With each egg that stretches his poor hole, he loses a little more control, until he rolls over onto his back, front paws clutching his heaving stomach and churning balls on display. The final egg is slightly larger than the rest, and it seems he's unable to hold back just how good it feels, breaking his muffled silence to scream his pleasure. With that cry reverberating, the egg slips free of his ruined hole, triggering what appears to be quite an intense orgasm. By the time he finishes spasming, claws digging into the dirt below, he's covered chin to cock in his own seed, staring off into space with a glazed look.";
					if Player is male:
						LineBreak;
						say "     Admiring that freshly stretched hole and the exausted dragon's inability to move after his ordeal, you have an idea- [bold type]maybe he needs another clutch to stuff his empty stomach?[roman type][line break]";
						say "[link]Y[as]y[end link] Yes - Take advantage and fuck him while he's just given birth.";
						say "[link]N[as]n[end link] No - You'll let him rest.";
						if Player consents:
							say "[HeliosBirthSex]";
						else:
							say "      Shaking your head, you clear the evil thought out, instead offering the exhausted dragon some comfort, patting his haunches and gently cleaning up the mess he made with a cloth from your bag. Of course, you still tease the poor thing, taking your time to wipe away his juices from his sensitive hole, and stroking his spent cock until it gives up its last pearly dribbles into your palm. You leave him to rest once you've had your fill of teasing, satisfied by the now-sleeping dragon's contentment.";
						TraitLoss "Heavily Pregnant" for Helios;
						now ImpregTimer of Helios is 0; [Pregnancy Reset]
						if OffspringCount of Helios < 4:
							increase OffSpringCount of Helios by 1;
				else if OffspringCount of Helios > 3: [Future-proofed for 4+]
					say "Helios can't hold onto his cursing, pained expression for long, and as you watch, a slutty expression comes over his face. Rather than seeming ashamed, he's embraced his role as a broodmother, and even seems to be showing off for you. He rolls over onto his stomach with some effort, tail lifted high and cock on display as the first runed egg pushes free, plopping onto the ground below with a soft thud. Moaning like a wanton whore, he shakes his ass as the next makes its way down his egg chute, his hole bulging outward and lubricant dribbling down over his cock, mixing with the free flowing pre that messes the ground below. The next few eggs pass with little resistance, giving you a view of the dragon's loosened hole, until the final, largest one stretches him out. Helios's body tenses as it stretches him out, and he cums himself silly as it reaches its apex, falling to the floor in a puddle of cum. Exhausted, he collapses forward into his own mess, tail still lazily lifted over his back and ruined hole on display.";
					if Player is male:
						LineBreak;
						say "     Admiring that freshly stretched hole and the exausted dragon's inability to move after his ordeal, you have an idea- [bold type]maybe he needs another clutch to stuff his empty stomach?[roman type][line break]";
						say "[link]Y[as]y[end link] Yes - Take advantage and fuck him while he's just given birth.";
						say "[link]N[as]n[end link] No - You'll let him rest.";
						if Player consents:
							say "[HeliosBirthSex]";
						else:
							say "      Shaking your head, you clear the evil thought out, instead offering the exhausted dragon some comfort, patting his haunches and gently cleaning up the mess he made with a cloth from your bag. Of course, you still tease the poor thing, taking your time to wipe away his juices from his sensitive hole, and stroking his spent cock until it gives up its last pearly dribbles into your palm. You leave him to rest once you've had your fill of teasing, satisfied by the now-sleeping dragon's contentment.";
							TraitLoss "Heavily Pregnant" for Helios;
							now ImpregTimer of Helios is 0; [Pregnancy Reset]
						if OffspringCount of Helios < 4:
							increase OffSpringCount of Helios by 1;

to say HeliosBirthSex: [Fuck his stretched ass!]
	TraitLoss "Heavily Pregnant" for Helios;
	now ImpregTimer of Helios is 0; [Pregnancy Reset. He just gave birth!]
	LineBreak;
	say "     Deciding to take advantage of Helios, you step up to his ruined ass and pat his haunches, quickly discarding your things and bringing your cock to bear. The steaming heat rolling off that well-lubricated and stretched hole teases your cock tip, and you can't resist its siren's call, shoving in and using Helios's tail as an anchor to get better leverage. It's surprisingly tight despite its well-used appearance, suckling at your cock and welcoming you in deeper with rolling muscles. ";
	if OffspringCount of Helios < 2:
		say "Helios's eyes widen as you stuff yourself inside him, and he attempts to crawl away, but his efforts only drag his clamping hole along your cock, encouraging you to close the distance before he can slip off of you. He groans his displeasure, but you can feel him subtly press back against your dick with each thrust, and by the time you set up a heavy thrust, slapping your hips into his thick haunches, his protests have melted into soft huffing murmurs.";
		say "     You pat the still-resistant dragon's ass with your free hand, rewarding his acquiescence with a long pause as your dick hilts inside him, letting him feel just how excited he's gotten you. You tell him he's such a good egg layer that you couldn't resist pumping a new clutch into him, and he should feel proud that he's still so sexy even after such intense labor. It's subtle, but you can feel his inner walls clutch at your cock more insistently the more you describe his subservience, and when you follow it up by telling him what a sexy whore he is, a muffled moan leaves the dragon's mouth, as though he does not deny it. The longer you fuck the dragon, the more he relaxes into your rhythm, pushing back into every thrust and letting his tongue loll out of the side of his scaly mouth. He can try to deny it all he wants, but that dragon ass exists for taking dick! Even his cock seems to agree, pulsing back to life and creaming the ground below in anticipation of another load in his juicy hole.";
		WaitLineBreak;
		say "      Hilting with an appreciative coo, you give the dragon just what he wants, firing off a pulsing load deep into those greedy depths and holding onto the base of his tail for dear life, your thighs wrapped around the dragon's churning balls like a living seat. You're so comfortable that you're loathe to pull out, even when your dick goes soft, but the dragon's erstwhile humping shakes you off, and you fall backward, watching with appreciative eyes as that hefty set of haunches quivers. Helios finishes himself off with a wet squelch, painting the ground beneath him with a submissive load and clamping his creamy hole. He hides his face despite the enjoyment quaking through his oversized body, but it's impossible to hide the muffled noises coming from his slutty maw. The oozing puddle beneath those clenching balls leaves nothing to the imagination, and the orgasmic pulse clamping his well-seeded rump completes the picture.";
	else if OffspringCount of Helios is 2:
		say "Helios groans with pleasure as you stuff yourself past his loosened rim, weakly protesting but shoving backward to take you to the hilt. Even though his mouth says one thing, his body seems more than willing to take its next clutch, and his silky, stretched hole milks your dick for all its worth. Without even an attempt to escape, you're clear to fuck him as you like, and he even peers backward as though he wants to encourage you but thinks better of it. Taking advantage of the wyrm's partial acceptance, you hold onto his tail for dear life, thrusting with all of your strength and reveling the sloppy, wet heat that suckles at your cock. You're not going to last long in the dragon's sauna of an ass, but you attempt to hold out as long as you can, gritting your teeth in an attempt to hold yourself back. Spurred on by that greedy hole, you tell him what an obedient whore he is, praising him for lifting his tail for you and begging for another clutch.";
		WaitLineBreak;
		say "     Tightening at your words despite a brief protest, the dragon appears to get off on your sentiment, dragging his hips to and fro to grind his dick on the cum-soaked dirt below. Quaking balls draw up until they provide a convenient seat to wrap your thighs around, and he cums long before you do, letting loose twin puffs of steam from his nostrils. Spurred on by the slutty dragon's orgasm, you pump yourself deep into his guts, hilting yourself and thrusting wildly through your orgasm. Rope after rope christens his greedy inner walls, and he clamps down so hard that you doubt you could pull out if you wanted to, as though his body begs you for another clutch. Of course, you're more than willing to oblige, staying buried within those greedy walls until the last pitiful dribble of cum drains from your softened cock.";
	else if OffspringCount of Helios > 2:
		say "'Give me more!' Helios groans as you stuff yourself into his backdoor. His hips quake with unrestrained pleasure when he feels you slide to the hilt, and more unfiltered sluttiness pours forth from his lips. 'Breed me. Please. I need more eggs. Don't ever stop fucking me.' All the while, the dragon backs up, trying to cram more of your dick than is humanly possible past his hole until his weakened body has you pinned against a nearby wall. Still strong enough to get his way and worked up enough that he doesn't care how it looks, he shoves backward in a wanton rhythm, fucking his loosened slutty hole on your cock as though you were nothing but a living dildo.";
		say "     You could struggle free if you wanted to, but confronted with the warm embrace of thick dragon haunches and milked by the heavy backward thrust of those insistent hips, you can only thrust in time, giving Helios what he wants. His tail base provides a convenient handhold to stop you from falling, and the heavy balls that draw up between your legs with the fevered coupling, proof that he's close to his finish, are a convenient seat. You praise Helios for giving into what he wants, grunting with every heavy slam of dragon ass that threatens to knock you through the wall. At this point, it's more like he's fucking you than the other way around, but the drooling dragon tongue and vacant stare leveled at you over the dragon's shoulder makes it clear that it's you who's in charge.";
		WaitLineBreak;
		say "     Trapped beneath the dragon's slutty ass, it's only a matter of time before you give him what he wants, and from the first rope you fire off into his depths, he goes into a frenzy, desperately slamming you into the wall hard enough that it hurts. Aching but gladly pumping a new clutch into the dragon's slutty ass, you hold on for dear life as a symphony of wet plaps echo through the air, your lower half soaked in natural lubricant and your seed. Helios milks you for every drop and then some, babbling something about how amazing your dick is. As his orgasm winds down, he collapses forward, freeing you from the sexual sauna of his ass and passing out with his tail in the air, slutty rear on display with your cum still trickling down over heavy balls. It seems the poor thing's dickhungriness could only go so far before the rigors of labor caught up to him, and he snores obnoxiously as his spent cock adds to the mess beneath him.";
	say "     Job done, you leave the dragon to wallow in the mess, hoping that your seed will take. After all, you'd love to do this again when he lays your next clutch.";
	NPCSexAftermath Helios receives "AssFuck" from Player;
	if impregtimer of Helios is 0 and a random chance of 1 in 2 succeeds: [50% chance.]
		now ImpregTimer of Helios is 1;

Helios ends here.