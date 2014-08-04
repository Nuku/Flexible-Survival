Hermaid by Xenophiliac begins here.

"Adds a Template creature to Flexible Survivals Warehouse table"

Section 1 - Monster Responses

when play begins:
   add { "Hermaid" } to infections of hermaphrodite;
   add { "Hermaid" } to infections of Tailweapon;
   add { "Hermaid" } to infections of Internallist; 

to say losetoHermaid:
	say "     Your attacker lures you into throwing a hit, but quickly counters and lands a punch across your head, sending your head spinning and stopping you from thinking for a few moments. As you recover yourself, you find that the beautiful creature has you wrapped in her arms, stopping you from escaping.";  [ \|/  Introduce length descriptors?!?]
	if cocks of player > 0 and cunts of player is 0:
		say "[HermaidMaleLoss]";
	otherwise if cunts of player > 0 and cocks of player is 0:
		say "[HermaidFemLoss]";
	otherwise if cunts of player > 0 and cocks of player > 0:
		say "     The seafaring herm looks at you thoughtfully, as if considering what to do with you. After a moment, she nods to herself and smiles.";
		say " [one of][HermaidFemLoss][or][HermaidMaleLoss][at random]";
	otherwise:
		say "[HermaidNeutLoss]";

to say beattheHermaid:
	say "     You land one last hit on the creature, sending her reeling backwards, and stunning her temporarily. She flounders around, trying to get back into fighting condition.";
	if a random number between 40 and 120 < libido of player:
		say "     The beautiful sea creature looks to have let her guard down, and the battle has awakened some primal urges within you. Do you act on them?";
		if the player consents:
			say "     You wrap your arms around the beautiful creature, holding her tightly, and blocking off any chance of escape. She jumps at the sudden contact and looks at you in fear. When she notes the lustful look in your eyes, however, she smiles seductively at you, and runs her hands sensually over your body.";
			if cunts of player > 0 and cocks of player is 0:
				say "[HermaidFemVic]";
			otherwise if cunts of player is 0 and cocks of player > 0:
				say "[HermaidMaleVic]";
			otherwise if cunts of player > 0 and cocks of player > 0:
				say "     You can use either your cock or cunt for this scene. Which one do you want to use? (Y for cock, N for cunt)"; [Herms can choose]
				if the player consents:
					say "[HermaidMaleVic]";
				otherwise:
					say "[HermaidFemVic]";
			otherwise:
				say "[HermaidNeutVic]";
		otherwise:
			say "     You consider having some extracurricular fun with the beautiful herm, but you decide against it. You quickly climb back onto the docks and continue onwards, as you hear the Hermaid dive back into the water.";
	otherwise:
		say "     Taking advantage of the lapse in the Hermaids attention, you quickly swim to the edge of the nearby dock and pull yourself up. Shaking yourself off and draining your backpack of water, you don't look back as the Hermaid glares holes into the back of your head, before the herm dives down beneath the sea.";
	
to say HermaidFemVic:
	say "     You move one of your hands around the Hermaids hips, and swivel yourself around to face her. She leans in to kiss you, and you eagerly return her offer as she draws you into her prodigious bosom. She slowly draws her hands across your skin, holding you in a tight, loving embrace. You both break free of the kiss as you wrap your arms and legs around the beautiful creature, allowing her to support you, which she does easily. You feel something poking at your thighs, and the woman in front of you smiles knowingly as you both get ready for the main course. She runs her hands over your back as she lines her tapered cock up with your [cunt size desc of player] cunt.";
	say "[line break]";
	if cunt length of player < 12:
		say "     She begins to slowly push into your cunt, putting inch by inch of her tapered cock deep into you. You both let out a loud groan as pleasure overwhelms you both, and you can barely hold yourself together as the exquisite sea woman forces you open. You find that you are unable to take her entire length, and you begin to let out an angered grunt, but she silences you with another loving kiss. She begins to slowly withdraw herself from your folds, enticing harsh gasps from you as she withdraws from you, leaving only the first few inches of her cock within you. She slams her length back into you, eliciting a pleasured scream from you, as she begins her thrusting. Her pace increases as time goes on, and you soon devolve into nothing but pleasured gasps and the occasional lustful scream. The overwhelming pleasure finally gets the best of you and you climax, [one of]screaming loudly to the heavens[or]involuntarily spasming your entire body[at random]. Your vagina clamps down on the invading member, wringing out whatever it can from the maiden and triggering her own orgasm. The Hermaid yells soundlessly as she orgasms, filling your fertile womb with her generous offering. You both slump against each other, exhausted from the bout of fun you just engaged in.[fimpregchance]";
	otherwise:
		say "     She begins to push herself into you, slowly spearing your cunt with her tapered cock. You simultaneously groan as exquisite feelings rush over you both, and you barely keep yourself from devolving into wanton lust as the Hermaid continues to link herself with you. What feels like an eternity of pleasure later, she bottoms out within you, and your pelvises smack together in a moan of pleasure. Between panting breaths and a lust-addled mind, you see that your new mate is just as lust-filled. She quickly begins to thrust in and out, eliciting a sharp gasp and many moans of pleasure from you as she slams her hips against yours. She continues to speed up her thrusts, and soon the water around you is churning with the speed of your intimacy. This goes on for some time, and you become nothing more than a sex-addled beast, your mind entirely devoted to the waves of pleasure from your [cunt size desc of player] cunt. Soon enough, you feel your orgasm hit you like a brick, just as your partners hits hers. You both cry out loudly as you both cum, your cunt spasming around the cock in you, as you feel her ample load of seed fill your womb. You sigh softly as the Hermaid leans her head against yours.[fimpregchance]";
		say "[line break]";
		say "     You both rest there for a few moments, her supporting your body as you both enjoy the sounds and feel of the sea. She slowly withdraws from you, some of her wonderful seed leaking from your cunt, and unravels herself from your body. She gives you one long, sensual kiss before she dives beneath the waves, splashing you playfully with her tail. Swimming to a nearby dock, you exhaustedly hoist yourself onto the wood platform. Laying there for a few moments to gather yourself, you get up and prepare to continue your journey. There is a nagging thought in your head, however, that this magnificent creature may be back.";
		
to say HermaidMaleVic:
	say "     You pull the beautiful water siren to you, engaging her in a gentle hug and kissing her passionately. She eagerly returns your offer, linking your tongues together in a vicious dance for a few moments. You break away from the kiss, and it's apparent that she became aroused by your aggressive tongue-play, if her heavy breathing and protruding cock have anything to say about it. You slowly undo your pants, making sure not to lose them in the water around you, and reveal your [cock size desc of player] [cock of player] cock. She smiles lustfully as she drags a hand down your chest into the water, and grabs your hardening [cock of player] member. Slowly and softly running her hand over your cock, you're up to full mast in no time. She withdraws her hand from your prick and wraps them across your shoulders, hooking herself around you as she positions herself over your erect rod. Smiling innocently at you and continuing to tease you, the curvy sea woman wordlessly urges you on.";
	say "[line break]";
	if cock length of player <= 12:
		say "     You needed no urging of any sort. You thrust forward, burying the first few inches of your [cock of player] shaft into the picturesque sirens accommodating cunt, eliciting a thrash of pleasure from your aquatic mate. Her cock jumps a few inches and smacks your stomach, bouncing between the two of you. You begin to quickly thrust in and out of the pleasured Hermaid, and burying more and more of your length into her cunt with each thrust. Before you know it, your entire cock is buried within the Hermaid, and your partner has become a gasping, heaving mess of pleasure. You withdraw fully, eliciting a moan of disapproval, and quickly slam your entire length into the Hermaid, turning the moan into a scream of pleasure. You quicken your pace, and lose yourself in the Hermaids inviting folds. Her climax is finally signalled by a long moan, with her cunt clenching down on your [cock of player] rod. Streams of cum fly from her foot-long cock, flying into the air and landing in the water, or her. Her tightening cunt proves to be too much for you, and you reach orgasm, yelling loudly blasting her aquatic womb with your [cum load size of player] load. You sigh and slump forward, resting your head against hers.";
	otherwise:
		say "     Taking the Hermaid by surprise, you quickly bury the first few inches of your [cock of player] length into her slippery folds, eliciting a spasm of pleasure from your beautiful partner. You continue to thrust forward, your cock being gleefully devoured by the Hermaids inviting folds. Her cock jumps fully out of her slit, stabbing your stomach with her not-to-shabby length. You bat her cock out of the way, instead concentrating on her cunt. You thrust faster and faster, drawing constant gasps and pleasured moans from both you and her. You soon bottom out within the curvy sea siren, but some of your [cock of player] manhood remains outside the Hermaid. You continue to mash pelvis' together for what feels like a very long time, but as your simultaneous orgasms hit you, it seems all too soon. You release a loud groan of pleasure as you blast your [cum load size of player] amount of seed into her spasming womb. Her body goes slack, using you as an entire support as her cunt clenches along your length as strings of cum fly from her cock, landing in the water. She sags back, laying on the water, as you rub your hands appreciatively along her slim stomach.";
		say "[line break]";
		say "     Both of you rest there in the water, recovering from the intense sex you just had. The Hermaid stretches and groans, and slowly removes herself from your length. Some of your seeds leaks from her silken folds as she rights herself in the watery turmoil your intercourse created. She kisses you on the cheek and rubs your length sensually, eliciting a gasp from you, before she swims away and dives underwater. You slowly swim toward the nearest dock and hoist yourself onto the wooden platform, resting and drying yourself off. You finally stand up and continue your quest, looking forward to when you can visit the lovely sea maiden again.";
		
to say HermaidNeutVic:
	say "     You pull the Hermaid against your [bodydesc of player] body, and begin to roam your hands sensually across her substantial chest and slim stomach, causing her to quietly gasp. Your hands begin to roam lower, causing her gasps to become low, pleasured moans. You find that your sensual roaming has begun to arouse the Hermaid, as her cock emerged from its slit, waving slowly in the lapping water. Leaving one hand to massage one of her supple breasts, your other hand encircles her aquatic cock, slowly jerking her off and causing her to tense up and release a long, pleasured moan. This continues for a few moments, causing her to become fully erect and devolve into moans and gasps. Figuring that she's ready for the main course, you pull her close to you, and line her tapered cock up with your rear entrance, and slowly lower yourself down, her member slowly spearing your ass open. You groan loudly as you feel her cock open your bowels, and she begins to wantonly thrust forward, lost in lust. You start meeting her thrusts, slamming yourself down as both of you lose yourself to your lust. All too soon, you feel a warmth spreading through your bowels as the Hermaid silently cums, dumping her large load into you. This in turn causes you to climax, involuntarily clamping your ass down on the invading member. You both sag backwards, laying in the water. You soon feel the Hermaid withdraw herself, and she rubs your thighs gently before quietly diving beneath the waves. You gather yourself and swim to the nearby dock, hoisting yourself up. You slowly stretch, and prepare yourself to continue onwards.";
	
to say HermaidFemLoss:
	say "     The beautiful herm slowly repositions herself in front of you, dragging her hands across your skin. She hums quietly to herself as she slowly undresses you, all while causing tingles of pleasure as her hands brush your body affectionately. She drags her hands all along your [bodydesc of player] body, causing you to shiver at her masterful touch. She brings you closer to herself, bringing your head into an affectionate kiss as her deft hands drift lower and lower. She hums into your mouth as your tongues intertwine as you give yourself over to the pleasures of the sea siren. Her hands reach to your slit, rubbing two fingers gently over the entrance to your womb, eliciting a pleasured gasp from you. This gasp turns into a loud moan as she touches your clit, sending jolts of pleasure directly to your brain. The sea-dweller continues this pleasurable foreplay for a few more moments, quickly turning you into a quivering ball of lust. She withdraws her hand from your cunt, causing you to moan disapprovingly. That moan quickly turns into a pleasured moan, as her hand is replaced with her tapered cock.  She smiles lovingly as you lustfully urge her on.";
	say "[line break]";
	say "     She pulls you in for another kiss, and you eagerly comply. She slowly enters your cunt, sending waves of pleasure coursing through your body. You break the kiss prematurely as you let out a scream of pleasure, and your slit tightens around the member buried inside you. The Hermaid coos happily as your cunt turns into a vice, and you can feel her throbbing member buried in you. She withdraws herself from your spasming slit, feeling every vein and throb of her wonderful cock as it does so. She begins to thrust slowly in and out of you, each thrust causing you to moan and groan in pleasure. She speeds up her thrusting, and soon you both are moaning and groaning as wonderful feelings flood both of you. You stay like this for a while, and you quickly lose track of time, as all you can focus on is the sensation of the sea maiden slamming herself into you. Your orgasm hits you suddenly, and you scream out as you hit a wall of pleasure, your eyes rolling up into your head as you slump into the sirens grasp. She soon climaxes, her face becoming an 'O' of pleasure, and you feel every pulse of her cock as she blasts your womb with her sizable load.[fimpregchance]";
	say "[line break]";
	say "     You feel the Hermaid withdraw herself from you, and she gives you a parting kiss, which you half-heartedly return. She sinks beneath the surface of the water as you right yourself in the shifting waves. You pull yourself up onto dry land, and lay there for a few moments, drying off and regaining your senses. You hoist yourself up and prepare to continue on, giving yourself a mental reminder to come and visit here again.";
	
to say HermaidMaleLoss:
	say "     The herm kisses you lustfully, her hands running quickly across your body as she explores all you have to offer. Her hands sneak under your clothes, caressing your skin masterfully as your lust continues to mount. One of her silken hands continues to tingle across your chest, sending pleasurable tingles through your body. Her other hand roams lower, running down your chest to your groin, lustfully groping your [cock of player] rod roughly, causing a gasp of pleasure to escape your lips. Continuing to massage your [cock of player] cock and balls, and continuing to elicit gasps of pleasure from you, the Hermaid runs her other hand down your chest to your pelvis and removing your pants, letting them sink down to your feet. Slowly moving herself to the front of you, taking pleasure in the fact that she has caused you to become so aroused. Smiling, she lines up her inviting slit with your [cock of player] cock, tantalizing you with her hands and silken vice while her twelve inches of maleness bobs between the two of you.";
	say "[line break]";
	say "     It can't come soon enough, but you finally feel the Hermaid begin to descend on your stiff [cock of player] rod, slowly bringing your maleness into her folds. You groan loudly at the sudden entrance as you try desperately to bury yourself fully into the lovely creature, but she holds you back, and smiles all the wider. Slowly, ever so slowly, she sinks onto your cock, all while her maleness bounces off your stomach, leaving  smears of her pre-cum across it. She coos delightedly at the sensations she feels, while the only thing you can do is thrust helplessly forward and groan in pleasure. She stops the slow descent onto your throbbing cock, taking all that she wants to take, and raises herself up off of you, leaving only your tip within her. She slams herself down, taking most of your length and causing you both to moan in pleasure simultaneously. She begins to bounce atop your cock, reducing you to nothing more than a rutting beast as she speeds up. Soon after, she slams herself down one last time as she cums, her cunt spasming around your [cock of player] prick. You moan loudly to the sky as you finally cum, blasting her cunt with your [cum load size of player] load of cum just as her seed blasts from her tapered cock and rains down upon the both of you.";
	say "[line break]"; 
	say "     With a contented sigh, the Hermaid draws herself off of you, giving your face an affectionate rub before darting beneath the waves. You soon gather your strength, and swim to the nearby dock and heave yourself onto the platform. Recovering  your gear (and yourself), you continue onwards, not entirely sorry that you lost the fight to the lovely herm.";
		
to say HermaidNeutLoss:
	say "     She begins to draw her hands across your body, with pleasured gasps from you being the end result. The sea sirens smooth hands run rivulets of pleasure across your skin as she slowly moves around you, all the while keeping you stuck where you are. She snakes her hands through your  attire, slowly removing your clothes, ensuring that they don't drift away. As her hands worm lower and lower down your body, she soon finds the place where your genitals should be. Confusion crosses her face as she realizes that you have no cock or cunt. This doesn't seem to remain a problem for long, however. She smiles lustfully and lines up her foot of maleness up with your back entrance, and slowly thrusts forward, opening your bowels to her invading member.";
	say "[line break]";
	say "     You groan in pleasure as her cock widens your ass, diving into your insides. She moans in pleasure as you shiver involuntarily, tightening your backside around her tapered rod. You're able to feel the entirety of the Hermaids member in your bowels, and moans of pleasure escape you both as she steadily removes her cock from your ass, and starts to thrust forward. Moans and gasps come from both of you as the Hermaid speeds up her thrusting, slowly spearing you more and more on her foot-long rod. Her long, sensual thrusts soon devolve into short, swift thrusts, with the majority of her member remaining within you the entire time. Your climax soon rushes over you, and your ass becomes a vice, tightening around the cock buried in your backside. The Hermaid is unable to withstand the feelings emanating from your copulation, and soon fills your colon to the brim with her substantial load leaving you feeling completely full as she noiselessly screams to the heavens.";
	say "[line break]";
	say "     With a quiet sigh, the Hermaid lazily pulls out of your cum-stuffed belly, nuzzling you tenderly before plunging inaudibly under the waves. You float on the surface of the waves for some time, reclaiming your senses. You swim slowly to the nearest dock, and haul yourself onto the wooden deck. Hoisting yourself onto your feet and trudging back into the city, there's a part of you that wishes you could remain with the beautiful Hermaid.";
	
to say Hermaiddesc:
	say "     As you trudge through the empty and desolate buildings lining the shore, a quiet splash breaks the silence, resounding through the buildings. Something inescapably pulls you to the water's edge to investigate what might have made that sound - and suddenly find yourself pulled over the edge and underwater by unseen hands. Breaking free from the incorporeal hand's grip, you flounder frantically until you reach the surface again. Looking around, there is no trace of who attacked you - until a large splash resonates behind you and someone surfaces from the depths. It is a stunningly beautiful woman, smiling with razor-sharp teeth.";
	say "     This creature is a relatively close comparison to mermaids of yore, that many seafaring men have spoke of. She has the body of a flawless human woman, with beautifully sculpted facial features that complement the voluptuous, buxom chest that she presents. Her lower body consists of two finned legs, with her webbed feet being reminiscent of flippers. Long, flowing hair grows off of her head, dark-blue and matching the ocean. Solid, dark-[one of]green[or]blue[or]purple[at random] eyes stare at you, reminding you of the dark fathoms of the deep oceans. Her finned arms and webbed hands end in sharp claws, easily able to hurt or maim someone. Where her human and dolphin halves meet lie her genitals, which lie within separate genital slits. As she becomes aroused, she sprouts a foot-long tapered cock, while her feminine opening leaks lubricant.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Hermaid";
   now attack entry is "[one of]The Hermaid lungs unexpectedly at you, breaking past your guard and dragging long, bloody streaks across your face and down your chest with her razor-like claws.[or]She dives underwater, and you soon lose track of her. Seconds later, you're dragged underwater and held down, slowly drowning. As you are about to pass out, you break free and surface, coughing up water and much more exhausted than before.[or]The Hermaid snaps at your legs, gouging large chunks out of your limbs.[at random]";
   now defeated entry is "[beattheHermaid]";            
   now victory entry is "[losetoHermaid]";               
   now desc entry is "[Hermaiddesc]";                  
   now face entry is "that of a human woman, with beauty only before captured in the greatest of artworks. Deep, solid [one of]green[or]blue[or]purple[at random] eyes complement the flowing, dark blue hair that hangs to your shoulders, while your sculpted face could knock anyone on their feet";
   now body entry is "one that even a professional model would be jealous of. Your lithe, curvy form is one that artists can only dream of, while your hips and chest could give plastic surgeons a run for their money. Your finned arms and webbed hands seem out of place compared to the rest of your body, but are well-suited for swimming through the depths of the sea. Even your finned legs have morphed into a form more suitable for swimming, with your webbed feet allowing you to swim gracefully through the seas."; 
   now skin entry is "light-blue, moist";
   now tail entry is "Sprouting from your backside is a dolphin's tail, complete with dual tail flukes.";
   now cock entry is "[one of]tapered[or]dolphin-esque[or]cetacean[as decreasingly likely outcomes]";                  
   now face change entry is "your skull cracks and reforms, shifting beneath your skin. Pain wrack's your body as this occurs, and you can feel the shifting bones rearranging. Thankfully, the pain soon subsides, and you're able to recover. You find a mirror and look at yourself, and are shocked at the changes in your appearance. Your face now resembles that of a beautiful human woman, and is stunningly picturesque. Dark, beautiful eyes peer out of perfectly sculpted sockets, with dark-blue hair waving gracefully in the wind as your features reshape to suit the appearance of a Hermaid";
   now body change entry is "your chest and hips protrude out a small amount, and your stomach slims down, giving yourself a superstar look, while also incurring a great deal of pain in the process. Your hands and arms tingle as one long fin grows down your arm, stopping at your wrist. Your fingers and hands reshape, becoming more claw-like and fully webbed as, finally, these changes cease, and you observe your sleek Hermaid body";
   now skin change entry is "it turns a light shade of blue, and begins to feel moist to the touch as a layer of moisture forms on your skin";
   now ass change entry is "a fleshy bulb forms at the base of your spine, as the entirety of your backside shifts and reshapes. The bulb begins to expand outwards and assume a distinctly tail-like shape. At the end of this endeavour, you wave your new dolphin tail around, and figure that you can swim much faster now";
   now cock change entry is "the tip of your cock tapers into a point, while your shaft smooths out and turns a pinkish hue. Your new dolphin-esque cock recedes into a genital slit as these changes stop";
   now str entry is 14;         [ These are now the creature's stats... ]
   now dex entry is 17;         [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
   now sta entry is 14;         [ These values may be used as part of alternate combat.] [Mebbe balance?]
   now per entry is 13;
   now int entry is 12;
   now cha entry is 17;
   now sex entry is "Both"; 
   now hp entry is 63;                           [? - Needs balance?]
   now lev entry is 9;                            
   now wdam entry is 12;                         [? - Needs balance?]
   now area entry is "Warehouse";                
   now cocks entry is 1;                         
   now cock length entry is 12;                  
   now cock width entry is 4;                    
   now breasts entry is 2;                       
   now breast size entry is 3;                   
   now male breast size entry is 0;
   now cunts entry is 1;                         
   now cunt length entry is 12;                  
   now cunt width entry is 6;                    
   now libido entry is 40;                       
   now loot entry is "";                         [? - Maybe do when figure out how to inventory?][Dropped item, blank for none.  Case sensitive. ]
   now lootchance entry is 0;                    [? - /|\  ?][Percentage chance of dropping loot, from 0-100. ]
   now scale entry is 3;                         
   now body descriptor entry is "[one of]slender[or]curvy[or]mesmerizing[or]hypnotic[at random]";
   now type entry is "aquatic";               
   now magic entry is false;                     
   now resbypass entry is false;                 
   now non-infectious entry is false;            
   blank out the nocturnal entry;                
   now altcombat entry is "default";

Section 3 - Endings

when play ends:
	if bodyname of player is "Hermaid":
		if humanity of player is less than 10:
			say "     Unable and unwilling to resist the call you hear, you soon find yourself on the shores of the Warehouse District, where you first met your Hermaid companions. The sounds and scents of the water is music to your ears; the lapping waves, the caws of the sea birds, the smell of salt water that permeates the air. The call of the sea is even stronger here, and you know that it is time to answer that call. Wading into the water, your legs finally merge into one long tail as you begin swimming out to sea, never again to step foot on land. Your new companions come to meet you, taking you deep into the depths of the sea.";
		otherwise:
			say "     Soon enough, the military rolls through in an attempt to contain the situation that has arisen. You present yourself to the military patrols, and after a few tense moments with guns pointed in your direction, you eventually convince the soldiers that you are not feral, and are led through quarantine. You pass through quarantine after multitudes of tests, and emerge back into sane society. Quickly putting your picturesque body to use, you find yourself a job as a professional model, and you soon become the newest craze, with people across the world lining up to see you, and millions of people wanting to be you. You live out the remainder of your long live in luxury, happy as you could be.";
			
Hermaid ends here.