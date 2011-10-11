Version 1 of Chocolate Lab by Stripes begins here.
[Version 1.1 - added exclusions]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Chocolate Lab creature to Flexible Survivals Wandering Monsters table, with Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

when play begins:
	add { "Chocolate Lab" } to infections of hermaphrodite;
	add { "Chocolate Lab" } to infections of humorous;
	add { "Chocolate Lab" } to infections of furry;

to say losetolab:
	if cunts of player > 0 and cocks of player > 0:		[herm]
		say "     You are pushed onto your back as the dog climbs atop you, flowing its molten chocolate body over you.  You can feel the firm press of its body at your [if cunts of player > 1]pussies[otherwise]pussy[end if] and asshole, spreading you open with a cock of hard chocolate for each.  Its body also grips around your [if cocks of player > 1]cocks[otherwise]cock[end if] with a soft, wet pussy[if cocks of player > 1] for each[end if].  Its fluid form flows and ripples, rubbing all over your body and teasing your nipples.  The amorous confectionary stimulates you inside and out until finally it shoots its white chocolate cream into every hole and you pump your hot cum into it in return.";
		say "[impregchance]";
	Otherwise if cunts of player > 0:				[female]
		say "     You are pushed onto your back as the dog climbs atop you, flowing its molten chocolate body over you.  You can feel the firm press of its body at your [if cunts of player > 1]pussies[otherwise]pussy[end if] and asshole, spreading you open with a cock of hard chocolate for each.  Its fluid form flows and ripples, rubbing all over your body and teasing your nipples.  The amorous confectionary stimulates you inside and out until finally it shoots its white chocolate cream into every hole.";
		say "[impregchance]";
	Otherwise:								[male]
		say "     You are pushed onto your back as the dog climbs atop you, flowing its molten chocolate body over you.  You can feel the firm press of its body at your asshole, spreading you open with a cock of hard chocolate.  Its body also grips around your [if cocks of player > 1]cocks[otherwise]cock[end if] with a soft, wet pussy[if cocks of player > 1] for each[end if].  Its fluid form flows and ripples, rubbing all over your body and teasing your nipples.  The amorous confectionary stimulates you inside and out until finally it shoots its white chocolate cream into your mouth and rear, and you pump your hot cum into it in return.";
	say "     Once it's done, it flows off of you slowly, splatters of white chocolate landing on your chest.  It flows out of your body, but leaving you with a warm mess of creamy, white filling inside.  You pant as you try to catch your breath after the short, but intensely body-wide sex you've just had.";
	decrease hunger of player by 12;
	if hunger of player < 0:
		now hunger of player is 0;
	say "[chococheck]";


to say beatthelab:
	say "     You manage to fend off the strange canine, exhausting it to the point that it has trouble maintaining enough physical consistency to keep fighting.  It whimpers softly, looking up at your with large, puppydog eyes of dark chocolate as it flows onto its back, exposing itself to you.  It has a brown, canine cock that dribbles white chocolate that smells so enticing as well as a wet, dripping pussy that looks deliciously ready to be filled.  Along its body are three rows of breasts, each with hard, chocolate-brown nipples.  It whimpers again, offering itself to you.";
	if hunger of player > 24:
		say "     That rich, chocolaty scent becomes too much for you.  You are so hungry and your stomach grumbles with the need to fill yourself with the doggy's cream.  You stuff that hard cock into your mouth, finding it delicious.  You lick and suck the leaking shaft while your hands play with its six, leaking tits.  They dribble white chocolate cream, much like what you're soon rewarded with in great quantity from the dog.  You gulp it all down to satisfy your hunger a little.  You lick your lips as you pull your head back, smiling down at the generous canine that's filled your tummy.  It seems to smile back up at you.  You lean forward and enjoy some slobbery doggy kisses before getting up and heading off.";
		say "[chococheck]";
		infect "Chocolate Lab";
		decrease hunger of player by 12;
		if hunger of player < 0:
			now hunger of player is 0;
		increase libido of player by 10;
		if libido of player > 100:
			now libido of player is 100;
	otherwise:
		let diceroll be a random number from 25 to 125;		[lust check vs 125, auto-win for libido of 25 or less]
		if diceroll < libido of player:
			if cocks of player > 0:		[m/h - fuck the Lab]
				say "     There is just something enticing about the canine's submissive display and arousing scent that gets you excited.  You decide that you and the semi-fluid dog can relieve each others itch.  You take the dog's ever-melting hind legs in your hands and line up your hard cock with its pussy.  It releases a wet bark of pleasure as you sink your [cock size desc of player] [cock of player] cock easily into its malleable body.  It reforms its pussy around you, [if cocks of player > 1]forming a deliciously snug vagina for each of your cocks [otherwise]making itself deliciously snug for your cock [end if]and flowing all over [if cocks of player > 1]them[otherwise]it[end if] to continually stimulate you.";
				say "     The dog's thick tongue lolls from its mouth, drooling chocolate as you fuck it.  White, chocolate cream leaks from its cock and from its nipples as your thrusts send ripples through its gooey body.  As you shoot your hot seed inside it, splatters of thick cream blast from its cock to land on its tits.  Finished, the chocolate Lab sags back, losing a little more cohesion, but smiles up at you with a doggy grin.  You lean forward and enjoy some slobbery doggy kisses before getting up and heading off.";
			otherwise:				[f - ride the Lab]
				say "     There is just something enticing about the canine's submissive display and arousing scent that gets you excited.  You decide that you and the semi-fluid dog can relieve each others itch.  Taking hold of the brown, canine cock, you point it upwards as you move your pussy into position overtop of it.  As you ride that chocolate rod, it shifts and changes, [if cunts of player > 1]forming one for each of your holes and each [end if]becoming the perfect fit for your vagina.  You moan in delight at the clever dog's trick and start to play with its nipples, coaxing more of the creamy, white chocolate to flow from them.";
				say "     The dog's thick tongue lolls from its mouth, drooling chocolate as you ride it.  Your motion atop it sends ripples through its gooey body.  As your [if cunts of player > 1]pussies[otherwise]pussy[end if] clamp down around it in climax, you squeeze a rush of warm, creamy chocolate from the canine, blasting it deep inside you.  Finished, the dog sags back, losing a little more cohesion, but smiles up at you with a doggy grin.  You lean forward and enjoy some slobbery doggy kisses before getting up and heading off.";
				say "[impregchance]";
			say "[chococheck]";
			decrease libido of player by 5;
			if libido of player < 0:
				now libido of player is 0;
		otherwise:
			say "you leave as it struggles to regain enough cohesion to get away";


to say chococheck:
	if bodyname of player is "Chocolate Lab" or facename of player is "Chocolate Lab":
		say "     During the course of the sex with the fluidic dog, you could feel some of your chocolate being intermingle with that of the dog.  You feel a little more canine and a hunger for more chocolate.  Or more sex.  Or better yet, more chocolate sex.";
		decrease humanity of player by 8;
		increase hunger of player by 5;


to say choclabdesc:
	say "[line break]     Before you is a bizarre creature.  At first glance, it seems like a normal dog, a brown Labrador.  But it's soon apparent that it's quite unusual.  This chocolate Lab is flowing and shifting, leaving brown pawprints as it walks.  It seems to be quite literally a [italic type]chocolate[roman type] Lab.  Its skin flows and runs like melting chocolate and you can smell the sweet, alluring scent of cocoa as it bounds closer.  The creature has a gooey, brown tongue that drips chocolaty syrup.  Its eyes are solid black, like pure, dark chocolate.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Chocolate Lab"; [Name of your new Monster]
   now attack entry is "[one of]The milk chocolate creature knocks itself into you, trying to push you down![or]The semi-fluid canine slashs its forepaws at you, suddenly making them hard and leaving chocolate scraps across your skin![or]The gooey Labrador bites at your wrist, leaking some of its thick, chocolate saliva onto you![or]The malleable dog flows around your leg, gripping it firmly.  You pull frantically as it starts to flow up over it.  You manage to pull free, but wrench or knee in the process![or]The chocolate lab snaps at you as you try to fend it off, but you end up splattered with chocolaty syrup.  The scent from it makes your head dizzy, draining your will to resist the sweet smelling beast![or]The flowing dog pounces at you, trying to push you down, partially collapsing into a wave of chocolate that you have to pull free from![or]The milk chocolate dog swipes its paws at you, leaving thick streaks of chocolate across your body.  The scent of it weakens your resolve to keep fighting[or]The chocolate Lab pounces onto you, covering your face in slobbery, chocolate kisses that weaken your resolve to continue resisting![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthelab]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetolab]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[choclabdesc]"; [ Description of the creature when you encounter it.]
   now face entry is "dog's head, a smooth, rich brown and somehow made of chocolate.  You have a long, slobbery tongue and drool chocolate syrup.  Your eyes are a solid, dark black, as if made of dark chocolate, but still able to see.  As if being constantly remolded instead of moving flesh and bone, your expression seems to shift the shape of your"; [ Face description, format as the text "You have a (your text) face."]
   now body entry is "that of an anthropomorphic canine, strangely somehow chocolate in colour and composition.  Your body is covered in a confectionary imitation of [skinname of player] flesh.  Your body has become like soft chocolate, bending and reshaping itself to move instead of having any actual bones or muscles.  The scent of cocoa lingers pleasantly around you.  When teased, you leak white chocolate syrup from your nipples."; [ Body Description, format as the text "Your Body is (your text)"]
   now skin entry is "a soft layer of milk-chocolate in the place of regular"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "You have a slender, canine tail made of chocolate that wags happily."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "chocolate-brown, canine"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it seems to lose all internal structure.  Your nose and mouth push out to form a canine muzzle while your ears and the rest of your head change as well.  Your vision blurs momentarily as your eyes change somehow.  The scent of cocoa fills you, exciting you, making you hunger for it.  Somehow you know your head is made of chocolate, through and through.  Your tongue lolls from your mouth, drooling a chocolaty syrup as your dark chocolate eyes look around."; [ face change text. format as "Your face feels funny as (your text)" ]
   now body change entry is "a strange sensation sinks into you as your whole body changes.  Your body becomes that of an anthropomorphic dog, with paw-like hands and feet and digitigrade legs.  But that's not strange when compared to the internal changes you're feeling.  It is as if your muscles, bones and organs are melting and reforming into flowing chocolate.  Your mind tries to maintain cohesion on it, holding your body in a state of semi-solid chocolateness"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "a soft layer of milk chocolate coats you that flexes and shifts as you move."; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a short, canine tail grows from your ass.  But it is not made of fur and flesh, but instead of malleable chocolate that wags all the same"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it becomes canine in shape, then starts to turn a smooth, even chocolate-brown in colour.  As this change in colour happens, you can feel it becoming made of chocolate.  A flexible sheath grows to bundle it up and white, creamy chocolate leaks from its tip"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 12;
   now dex entry is 14;
   now sta entry is 10;                    
   now per entry is 15;
   now int entry is 18;
   now cha entry is 18;
   now sex entry is "Both";     [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 40;            [ How many HP has the monster got? ]
   now lev entry is 4;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 6;            [Amount of Damage monster Does when attacking.]
   now area entry is "High";    [ Location of monster, in this case the High Rise District]
   now cocks entry is 3;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 8;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 4;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 6;            [ Number of Breasts infection will give you. ]
   now breast size entry is 4;        [Size of breasts infection will try to attain ]
   now male breast size entry is 2;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 2;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 6;        [ Width of female sex  infection will try and give you ]
   now libido entry is 70;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


when play ends:
	if bodyname of player is "Chocolate Lab":
		if humanity of player is less than 10:
			say "     The strain of trying to keep a cohesive hold on your body eventually becomes too much.  You collapse onto all fours and melt into a more fluid, gooey chocolate Labrador.  You wander the streets, drawn by your nose to seek out chocolate, which you ingest ravenously wherever found.  Soon, your nose has you cross paths with one of those confectionary canines and, after a very sticky romp where you thrust and melt into one another, you follow it back to a chocolate maker's shop at the edge of the high rise district.";
			say "     You and the others live there, mating and roaming around in search of more chocolate.  When you and the other canines mate, you both lose cohesion and melt in with your lover.  When you separate, you lose more and more of who you used to be, though the pack grows smarter and more united as well.";
			say "     Over time, you become more and more a creature of instincts, hungering to feed its chocolaty fluids to others.  Your group, while searching for chocolate, also hunts for new playmates.  Your pack snags several soldiers rather easily.  Looking like a normal dog at a distance, one of you can often get close before they realize their mistake.  And by then, your scent is around them and its too late.  After all, they easy prey for a creature immune to bullets.";
			if intelligence of player > 16:
				say "     Having grown clever enough, your pack manages to get the gas running to the large chocolate melting pot.  You all add your gathered chocolate, as well as each of you putting in your own individual cream to it.  When the resulting mix is poured out, you create new chocolate dogs to join your pack, greatly increasing your numbers and the area in which you are able to scavenge more chocolate and playmates.  With your swollen numbers, you are able to control a substantial portion of the city despite not being as powerful as some other creatures out there.";
		otherwise:
			say "     You manage to maintain cohesion throughout your ordeal in the city, though it does get easier over time.  Upon rescue, the soldiers and scientists are confused by your chocolaty body.  You are put through a series of inconclusive tests, but eventually you are released, as there are so many more to process.  While you are certainly intriguing, they don't feel you're dangerous.  The soft scent of chocolate you emit does help, everyone being happier around you.";
			say "     You eventually settle down and become a chocolatier, having some innate feel for preparing it coming from your altered composition.  You do have a few close calls early on while near the oven, but manage to move away and re-solidify while you still can.  As time goes on, your products become in high demand to those who can afford your gourmet chocolates.";
			if humanity of player < 50:		[Going a little mad]
				say "     You even start adding some of your white chocolaty cream from your [if cocks of player > 0 and breast size of player > 0]cock and breasts[otherwise if cocks of player > 0]cock[otherwise]breasts[end if] to special items for special patrons.  While not infectious, they do prove to be powerful aphrodisiacs that are most enticing.  You keep their special ingredient secret from your clients.  Their silent addition to your selection further increases your profits and success.";
			if humanity of player < 25:		[...and then going completely mad]
				say "     After a few years, you are struck with the sudden idea for your most daring and elaborate project yet.  With the help of all your apprentices over several uninterrupted days, you are milked for as much white chocolate syrup as you'll give over and over.  During this time, your fed only a diet of pure, white chocolate by your assistants who slowly change, becoming chocolate Labs like you.  You insist on only using your own chocolate on this project though, despite many volunteering to give as well.";
				say "     The chocolate is prepared and heated, then poured into the elaborate, segmented mold you had specially commissioned for this project.  When it cools, your team opens it carefully, releasing the large, white chocolate figure.  It is a solid, white chocolate version of the creature you met in the city so long ago.  You nervously nibble the ends off your fingers as you watch and wait, elated when it starts to move.";
				say "     The white chocolate Lab is in your arms as soon as it can walk and fucking you moments after that.  The flowing, ivory creature you've created becomes your mate and is capable of changing others into chocolate canines like yourself.";
				If cunts of player > 0 and "Sterile" is not listed in feats of player:	[BREEDABLE+H-SIRING]
					say "     A few days later, while the creamy filling of his pups swirls with life in your womb[if cocks of player > 0] and your mate's womb similarly filled[end if], you head back to the kitchen to help your assistants create mates of their own.  Meanwhile, your mate is in your office, vigorously screwing your distributor.  She had come by to talk to you about wasting time on projects instead of sales.  When you left, the canine was well on his way to making her into chocolate Lab like you, giving her a much greater appreciation for the creative vision you would soon share with the world.";
				Otherwise if cocks of player > 0:							[SIRING ONLY]
					say "     A few days later, while a creamy filling of your pups swirls with life in your mate's womb, you head back to the kitchen to help your assistants create mates of their own.  Meanwhile, your mate is in your office, vigorously screwing your distributor.  She had come by to talk to you about wasting time on projects instead of sales.  When you left, the canine was well on his way to making her into chocolate Lab like you, giving her a much greater appreciation for the creative vision you would soon share with the world.";
				otherwise:											[NO BREEDING]
					say "     A few days later, you head back to the kitchen to help your assistants create mates of their own.  Meanwhile, your mate is in your office, vigorously screwing your distributor.  She had come by to talk to you about wasting time on projects instead of sales.  When you left, the canine was well on his way to making her into chocolate Lab like you, giving her a much greater appreciation for the creative vision you would soon share with the world.";



[ Edit this to have the correct Name as well]
Chocolate Lab ends here.