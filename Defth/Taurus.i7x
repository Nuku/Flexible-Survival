Version 1 of Taurus by Defth begins here.
"Adds Taurus to Flexible Survival."

to say taurusdesc:
	setmongender 3;		[creature is male]
	say "     You spot a bull running around the plains and seemingly looking for something. His shaggy fur is coal-black, absorbing all of the colors of the [if daytimer is day]sun[else]moon[end if]. The bovine would be a giant, ebony block of muscles if it weren't for his silvery horns that almost seem to gleam with thirst for a victim. By his figure, you guess that the beast was used for breeding or exposition on some farm. His muscles - surely already plentiful even before the nanite apocalypse – have grown to an enormous bulk, making him look like a giant of his species, standing almost 6 foot tall on all fours. Between his legs, you can glimpse a mighty sack that was made to breed any cow with just one try, and his spear-like penis casually pokes out of his sheath, clearly hungering for a nice pussy. This bull is looking for someone to breed, and apparently, he doesn't differentiate much between candidates as he turns to you. Hitting the ground with mighty hooves, the oxen gets ready to run you down. Lowering his head to bring his horns into play, he charges a moment later, eager to beat and breed you. Looks like this fight won't be easy.";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Taurus";
	now attack entry is "[one of]The mighty bull charges at you.[or]Swinging his horns, the bull tries to impale you on their pointy ends.[or]He takes a step back, tensing his muscles, then charges at you.[or]The bull groans and moos like a mad cow before going for a frantic attack.[or]The bull’s horns gleam with ecstasy as he readies his next attack, then tries to spear you with one of them, giving you a bleeding scratch.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[tauruslost]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[tauruswon]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[taurusdesc]";
[	to be decided if Taurus will have an infection:
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";]
	now str entry is 25;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 8;
	now int entry is 5;
	now cha entry is 11;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 150;[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 15;[ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 15;[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains";[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0;[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;[ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 4;[ Number of Breasts infection will give you. ]
	now breast size entry is 0;[Size of breasts infection will try to attain ]
	now male breast size entry is 0;[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;[ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 0;[ Width of female sex infection will try and give you ]
	now libido entry is 0;[ Amount player Libido will go up if defeated ]
	now loot entry is "food";[ Loot monster drops, ]
	now lootchance entry is 12;[ Chance of loot dropping 0-100 ]
	now scale entry is 5;[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	[now body descriptor entry is "";][ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "bovine";[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";[ Row used to designate any special combat features, "default" for standard combat. ]

to say tauruswon:
	say "     With a final charge, the giant bull throws you in the air, his horns ripping your clothes and making you land naked on your stomach. To the victor the spoils, and the beast is always looking for a new cow.";
	if cunts of player > 0:
		say "     You don't have time to get back on your feet as the beast just proceeds to mount you right away. The mighty bull's erect penis hangs down proudly between your legs, ready to mate with you. His spear-like member is red, wet, and almost 30 cm long, enough to make even some horses jealous. The bull pushes you with enough strength to make your face hit the ground again, and you are forced to hold onto his legs for dear life as the monster pounds at you. His dominance over you makes a part of your brain overjoyed, and you can't help the moans that are escaping your lips. His slick member makes your whole front wet with his pre, but the liquid that stains your sex is of your own making. His rutting against your clit with unrestrained force sends waves of pain and roaring lust through you, overwhelming your mind with the opposing sensations.";
		say "     In the state of sexual confusion you are in, you don't really notice as the monster takes a step back and lines himself up with your damp cunny, pushing the tip of his spear-like appendage in between your folds. Feeling the slightly warm sensation of penetration, the beast's instincts go haywire, making him penetrate you with his whole cock at once. The impact is one of the strongest hits you ever took down there. His beastly cock makes your stomach bulge, and even though the tip is quite lean, his girth gets really impressive from the middle to the base of it. Your pussy is stretched wide, almost to a point of pain, as his tip explores your womb with no regard to your own enjoyment. It moves like crazy, but it has such a length that it almost never leaves your cervix in peace, leaving your mind almost broken with all this mixed pain and pleasure. Meanwhile, your face is showing this state of your mind, your mouth half-open as saliva flies out of it with each thrust.";
		WaitLineBreak;
		say "     After a little while, his thrusts come slower, but at the same time, they go deeper inside of you. Every time the horny bull thrusts his enormous cock in and out of you, it’s as if your insides are tugged along with it. His attack is more about strength than speed, pushing your body to the ground. Your face is planted on the grass, saliva soaking the ground in front of your eyes. Tears from the pain and pleasure of this encounter roll down your face. With time, you can't even think anymore, your body ravaged by orgasm after orgasm. If felt like electricity was running up your spine and directly to your brain, and you can feel his balls hitting against you now that almost his whole member is buried inside of your pussy. That gives you one small warming of what is about to come.";
		say "     His balls churn and move, and the beast moos to the top of his lungs, letting anyone nearby know that you are his property now. With a final push, he cums directly inside of your womb, and what feels like liters of cum rush inside of you to become pregnant with his child. And you almost look pregnant now, your stomach inflating rapidly and making you almost throw up from the pressure inside of your body now. The hulking bull finally pulls his giant penis out of you, and it's followed by a jet of cum flying out of your own sex. You lay on the ground in a pool of cum as the bull goes back to his life of looking for others to impregnate now that he has done his job with you. Resting for a bit, you gather all of your stuff and go back to your adventures.";
	else:
		say "     The bull sniffs your crotch, but with the lack of any female genitalia, he swiftly loses sexual interest in you. Problem is... if you're not a mate for him, you are competition. Kicking you with a large hoof, he throws you on the grass, and roll a few times before coming to a rest. Despite the pain, you count yourself lucky to have survived the encounter.";

to say tauruslost:
	say "     Almost losing consciousness, the instincts of the now-weak bull are everything that is pushing him now, and it looks like they were screaming at him to run away from you. Trying to ram you for a final time, he fails miserably as all the wounds from the fight make him slow and really easy to dodge. But the bull doesn't stop, running away to the horizon as he makes his escape.”;
	[Maybe there is a way to bound the bull instead, you could do something with him]


Taurus ends here.