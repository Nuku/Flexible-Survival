Version 2 of Latex Wolf for FS by Hellerhound begins here.
[ Version 2 - Endings added by Stripes ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Latex Wolf to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]


when play begins:
	add { "Latex Wolf" } to infections of guy;
	add { "Latex Wolf" } to infections of furry;

Section 1 - Monster Responses

To say latex wolf defeat:
	if libido of player < 50:
		Say "The latex wolf collapses, its head slumped against the ground, and begins to melt away down a nearby storm drain.";
	if libido of player > 50 and cocks of player is greater than 0:
		Say "The wolf collapses, and you move forward, lifting its rear before it begins to melt, and shove your [cock of player] cock inside its behind. The wolf moans, and continues melting. You pull out before the melting happens near your precious cock, afraid of what might happen.";
	if libido of player > 50 and cocks of player is 0 and cunts of player is greater than 0:
		Say "The wolf melts into a black puddle, draining off into the city. You are unable to sate your lust without touching the melting latex, which is most certainly dangerous.";

To say latex wolf attack:[todo]
	if cunts of player > 0:
		Say "As you fall, the latex wolf rolls you over and sits up, on your hips, impaling you on his red rubbery cock. He then begins to lean forwards and backwards, sliding his doggy shaft in and out of your cunt, squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams your knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black rubbery seed. [impregchance]";
		increase the libido of the player by 60;	
	otherwise:
		say "You fall to the ground, and the wolf pounces, hoping there is something for him to use. When she reveals your endowments, he sighs in disappointment, and raises one leg over you";
		if the intelligence of the player > 15:
			say ".  You realize what the wolf is about to do before it does it, and roll out of the way faster than you thought you could. The wolf looks at you, and claws your side before running away.";
			decrease the hp of the player by 8;
		otherwise:
			say ".  You don't get why the wolf is, oh. The wolf begins to pee on you, yellowish latex spraying over your body, and draining onto the street. The wolf looks at you with satisfaction, and walks off into the city, leaving you to get clean.";
			infect "Latex Wolf";
		 [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Latex Wolf"; [Name of your new Monster]
	now attack entry is "The Latex Wolf [one of] slaps you with a rubbery pad[or] claws you with plastic nails[or] bites with rubbery teeth[or] pounces forward and bodyslams you[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[latex wolf defeat]";
	 [ Text or say command used when Monster is defeated.]
	now victory entry is "[latex wolf attack]";
	now desc entry is "There is rubbery skidding noise, and a black and white latex wolf whips around the corner.";[ Description of the creature when you encounter it.]
	now face entry is "elongated with a muzzle and sharp teeth";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "small and lupine, bent onto all fours.  Your insides feel strange, as if they are made of something shifting and changing";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "rubbery latex with black, fur-like patterned";[ skin Description, format as the text "You have (your text) skin."] 
	now tail entry is "Thin and black, your tail whips behind you back and forth.";[ Tail description, write a whole Sentence or leave blank. ]  
	now cock entry is "deep red with a canine knot towards the bottom";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your nose elongates, growing into a muzzle as your teeth sharpen"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body bends, and your spine and skull grow soft and reform, forcing you down onto all fours.  You can feel your insides churn and flow as if somehow melting together and changing as well"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it smoothes, becoming flawless, and growing a black rubbery layer as you watch"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long tail mutates out, black and round, whipping back and forth with your emotions"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "a knot forms on the base while a sheath forms towards the bottom, and it turns a deep red"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 18;
	now sta entry is 17;					
	now per entry is 16;
	now int entry is 13;
	now cha entry is 12;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 20;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ] 
	now wdam entry is 4;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 4;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 2;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 5;			[ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	
[ Edit this to have the correct Name as wall]


Section 3 - Progressive Infection

lwcounter is a number that varies.  lwcounter is normally 240.

an every turn rule:
	if bodyname of player is "Latex Wolf" and lwcounter - turns > 3:
		let tt be ( 100 - humanity of player ) + libido of player + a random number between 1 and 50;
		if tt is less than a random number between 1 and 250:
			say "[one of]You feel a strange churning in your latex body and you can feel the metamorphosis spread further[or]You find yourself munching on some rather tasty plastic you found lying around[or][lwmast1][or][lwmast2][or]You eye your supplies, thirsty not for the water, but hungry for the plastic bottle[or]Your contort your flexible, latex body and start licking your groin, enjoying the latex taste of your leaking fluids and lapping it all up as you climax, spraying into your mouth[in random order]";
			say ".  You feel yourself slip a little further into the bizarre infection.";
			decrease humanity of player by a random number from 3 to 8;
			if "Pure" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
			if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 2;
			increase libido of player by a random number from 3 to 8;
			if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
			if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
			if libido of player > 100, now libido of player is 100;
			now lwcounter is turns;
			infect "Latex Wolf";

to say lwmast1:
	if cocks of player > 0:
		say "Overcome with lustful urges, you lay on your back and rub your paws over your cock.  You release squeaky growls of pleasure as your pre dribbles onto your body.  Your altered paws have trouble gripping your shaft effectively, but you make due with stroking it, eventually spraying your thick, latex-like seed across your body.  While you lay there, panting on your back, you lick your paws clean";
	otherwise:
		say "Overcome with lustful urges, you lay on your back and rub your paws over your pussy.  You release squeaky growls of pleasure as you tease the latex folds and your juices run down your thighs.  Your altered paws have trouble teasing your slit effectively, but you make due with stroking it[if cunt width of player > 2] and pushing a somewhat malleable paw into your cunt[end if].  Driven to climax eventually, you moan loudly and release a spurt of latex-like femme cum.  While you lay there, panting on your back, you lick your paws clean";
		if cunt width of player < 5 and "Male Preferred" is not listed in feats of player:
			increase cunt width of player by 1;
			if "Modest Organs" is listed in feats of player and cunt width of player is greater than 4:
				now cunt width of player is 4;

to say lwmast2:
	if cunts of player > 0:
		say "Overcome with lustful urges, you whimper softly with the need for satisfaction.  You spot a plastic rod of roughly the right size and naughty urges fill your mind.  Getting yourself lined up properly, you lower your dripping pussy down onto the vaguely phallic object with a moan and start riding it hard and fast.  Your pussy grips and squeezes it as if it were a real cock and it becomes increasingly satisfying as your lust builds.  Finally climaxing messily, you moan and rise to pull off it, but find your pussy melted and absorbed it after you came";
		if cunt length of player < 8 and "Male Preferred" is not listed in feats of player, increase cunt length of player by 1;
	otherwise:
		say "Overcome with lustful urges, you whimper softly with the need for satisfaction.  You spot a foam latex toy and pounce on it, grinding your cock against the strangely enjoyable material.  You rub your throbbing erection against it, moaning as you ride it hard and fast.  Your precum dribbles out onto it as it feels increasingly satisfying as your lust builds.  Finally climaxing messily, you moan and rise onto all fours, finding that much of the toy has melted away, flowing into your body.  You gobble down the sticky and cum-soaked remains with relish";

when play ends:
	if the bodyname of the player is "Latex Wolf":
		if humanity of player < 10:
			say "     As the infection runs its course, it spreads through your body, changing you more and more into a non-anthro, latex wolf.  When the rescue begins, you can hear a strange, ultrasonic siren off in the distance with your improved hearing and are drawn to it.  Fire trucks arrive, sirens blaring with teams of soldiers around them.  They are spraying down several other latex wolves and foxes who have arrived.  You run up to one, yipping and wagging your tail in the hopes of a cure.  As you move closer to the truck, you are pointed out and sprayed with a strange chemical";
			if intelligence of player < 16 or dexterity of player < 24:
				if a random chance of 2 in 3 succeeds:
					say ".  You turn your head back and watch as the latex melts off of your body leaving fur underneath. You fall down and whimper as you realize that you are no longer a latex wolf, but instead trapped as a real one even as you feel what remains of your mind fading.  The soldiers exclaim in surprise at your incomplete destruction and startling transformation, but you dash off into the city before they can prevent your escape.  Under the cover of night, you slink off into the wilderness, mind that of a semi-intelligent wolf.";
				otherwise:
					say ".  You gurgle wetly as you feel yourself starting the melt.  You struggle to escape, but another truck turns its hose on you and you melt away into another messy stain of latex goo in the wake of the deadly trucks.";
					stop the action;
			otherwise:
				say ".  You gurgle wetly as you feel yourself starting to melt, turning into a fluid goo.  You struggle over to a nearby drain and dive into it, flowing through the grate.  You can faintly hear some commotion above concerning your escape, but can hardly understand it.  You do manage to congeal enough to pull yourself onto a ledge and down a side passage before a large rush of the strange solvent is sprayed down after you.  You are quite weakened for a time, but do learn to pull yourself partially back together, now a liquid latex wolf.";
				say "     Now immune to the call of the siren, you follow the fire trucks' path back to their base, consuming the melted wolves and foxes left in their wake, growing larger and larger.  By the time you get to their depot, you are twice the size of their fire trucks and attack them.  You flow across their lines, easily overpowering them while they're busy trying to refill the trucks.  Immune to their weapons, you encircle the soldiers and amuse yourself with them, eating some and stuffing others into any orifice you care to create.  Finally, with your overfull balls churning with liquid latex cum, you spray your semen over those still remaining.  As they start to change into latex wolves, you chuckle maliciously and turn the hose on them, subjecting them to the same deadly fate as they tried to impose on you.  As they howl and squirm, unable to get away, you slurp down all the tasty goo with a vicious grin.";
				say "     You spend the next day collecting more playtoys as well as another latex wolf.  You cum over the soldiers and then melt them, letting the latex wolf enjoy the tasty treat and grow into another giant, fluid wolf like yourself.  You and your enormous mate track down any of your previous allies in the city you can still find and enjoy playing with them before consuming them.  Unstoppable, you both run rampant across the city from time to time, transforming and eating the other lesser infected when not squirming together in fluidic sex in a large basin.";
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Latex Wolf":
						now monster is y;
						break;
				now tailname of player is "Latex Wolf";
				now facename of player is "Latex Wolf";
				now skinname of player is "Latex Wolf";
				now bodyname of player is "Latex Wolf";
				now cockname of player is "Latex Wolf";
				now tail of player is tail entry;
				now face of player is face entry;
				now skin of player is skin entry;
				now body of player is body entry;
				now cock of player is cock entry;
				attributeinfect "Latex Wolf";
				now cock length of player is cock length of player * 10;
				now cock width of player is cock width of player * 10;
				now cunt length of player is cunt length of player * 10;
				now cunt width of player is cunt width of player * 10;
				now breast size of player is breast size of player * 10;
				if breast size of player > 26, now breast size of player is 26;
				stop the action;
		otherwise:
			say "     As the rescue rolls in, you can hear an ultrasonic siren calling to you.  You head out to investigate and can see a series of fire trucks passing through the city with soldiers around them.  They are spraying down any latex wolves and foxes that are drawn in by the sound.  You signal the soldiers as you step out.  They turn to spray you, but hold off as you are still sane enough to speak.  Determining that you've not succumb, they have you wait back in the bunker, calling for an extraction team immediately.";
			say "     You are brought back to the base and subjected to some frantic testing.  Confirming that you've not fully succumbed, they give you a treatment to protect you from continued, uncontrolled change, saving you from succumbing entirely to your infection.  Still trapped in a quadruped body, you have difficulty establishing a normal life.  Fortunately, your body hungers less for actual food and is often content with plastic, rubber and latex products for sustenance.  You eventually get a job doing quality control for a large toy factory, having a keen eye (and nose) for defective products.  And since they partially pay you with any tasty rejects that can't be recycled, you are quite happy with the work.";
			if intelligence of player > 15 and perception of player > 15:
				say "     Your intelligence and keen senses for synthetics allows you to catch the occasional quality issue before the molten plastic is even poured.  A supervisor notices you doing this and recommends you move to working at that stage all the time.  Your affinity for the material prompts you to start proposing small, cost-effective improvements that are met with increasing support.  As costs go down and quality rises, you are promoted to devote part of your time to further innovation.  At your own suggestion, you are given a desk with a paw-accessible computer next to the vats so you can taste test each one without breaking from your research.";
				if humanity of player < 25:
					say "     As if driven, you throw yourself into your work more and more.  You study the science of polymers, reading books and journals.  Research made by studying the latex creatures like yourself which have arisen from the infection has been very fruitful and leads you to more success.  Over the years, your company has patented many of your formulas and earned loads of money from them, but you don't stop.  You publish papers on your own and attend scientific symposiums, but you happily continue working for the toy manufacturer.";
					say "     One day, you get your team working on a special batch, filling one of the large vats.  The complicated mixture is prepared, mixed and melted.  As you step up to give it your usual taste test, you fall into it.  With a wet moan, you melt into the latex compound while people start yelling and run up to help you.  One brave assistant, unconcerned for [if cocks of player > 0]herself[otherwise]himself[end if], leans over the mess to grab your hand.";
					say "     But instead of just grabbing your hand, you end up flowing over [if cocks of player > 0]hers[otherwise]his[end if] and across [if cocks of player > 0]her body.  She[otherwise]his body.  He[end if] screams in surprise as you envelop [if cocks of player > 0]her[otherwise]him[end if] and start to rise out of the vat as a huge blob of latex.  The rest of the people gathered there flee as you start to reform into a huge latex wolf, just as you had hoped would happen.  You release your transforming assistant and coat them in your [if cocks of player > 0]cum[otherwise]pussy juices[end if] and more of the new formula, making them into a large latex wolf like yourself to be your mate.";
					say "     Together, you both feast upon the contents of the factory, becoming huge, unstoppable, lustful, latex giants.  You have fun attacking the nearby factories, using the little humans as food or playtoys in every perverted way you desire.  You transform some into small latex wolves to help keep your human toys penned into your city, but most are absorbed or consumed after your fun is done.  All your special friends and lovers get extra-special treatment before being made into large wolves to move on to other cities of their own.";
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Latex Wolf":
							now monster is y;
							break;
					now tailname of player is "Latex Wolf";
					now facename of player is "Latex Wolf";
					now skinname of player is "Latex Wolf";
					now bodyname of player is "Latex Wolf";
					now cockname of player is "Latex Wolf";
					now tail of player is tail entry;
					now face of player is face entry;
					now skin of player is skin entry;
					now body of player is body entry;
					now cock of player is cock entry;
					attributeinfect "Latex Wolf";
					now cock length of player is cock length of player * 10;
					now cock width of player is cock width of player * 10;
					now cunt length of player is cunt length of player * 10;
					now cunt width of player is cunt width of player * 10;
					now breast size of player is breast size of player * 10;
					if breast size of player > 26, now breast size of player is 26;


Latex Wolf for FS ends here.