Version 2 of Demon Brute For FS by Leo X begins here.

"Adds a Monster name to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say demon brute attack:
	if cunts of player > 0:
		Say "'Just what I've been looking for, a bitch to impregnate.' He picks your body up, and tears away any clothes you were wearing. The monster then smirks, and throws your trembling body down onto the ground. He lifts your lower body into the air, leaving your shoulders and head to rest on the ground. He spreads your legs, and begins to rub his hard, long cock up and down your [cunt size desc of player] petals. He moves into a position directly above you, his large balls sagging down far enough to rub against your [cunt size desc of player] lips. He plants a foot on each of your arms, and spreads your legs painfully far apart, putting a lot of his weight on them. You are effectively immobilized. He then guides his cock to press against your warm slit, putting all his weight behind it. It slides in with some resistance, and you yelp in pain as it pushes all the way to your cervix in one thrust. The monster grunts, and begins to brutally ravage your [cunt size desc of player] sex. The bumps which cover his cock are a source of both pain and pleasure as he thrusts into you again and again. With each powerful push, he comes closer to bashing through your cervix with his blunt tool, and he is constantly ramming your body into the hard ground. It takes the brute 30 minutes to reach a climax, but the brutal fucking feels as if it has gone on forever. The monster grunts again, and then sighs with relief as he empties his massive, swollen balls into your womb, filling it to the brim with his seed, and then past it. Your stomach begins to swell with the sheer volume of seed being pumped into it, and massive quantities pour out of your abused cunt, spilling all over the rest of your body. The brute stands up, letting you fall into the massive pool of warm cum he has created. His seed simply pours from within your abused [cunt size desc of player] petals as he dissapears into thin air.[impregchance]";
	else:
		say "'I'd prefer to fuck a bitch, but I'm still gonna enjoy every second of this. I am going to ruin your body, and you're gonna enjoy it.' He tears away your clothes, and forces you down on all limbs, your rear up in the air. He slaps your ass with a massive hand, and give his cock a few jerks, bringing it to full stiffness. Without further ado, he come up behind you and begins to prod his massive member against your asshole. He puts all his weight behind it, and it eventually begins to dissapear slowly inside your body. You scream out in pain, but he simply pushes harder, forcing as much of his cock inside as he can. Your eyes begin to tear as he begins to fuck your ass slowly, still having ot overcome a lot of painful reisitance. Over time, it becomes easier and easier to thrust, and after almost an hour of anal abuse, he is finally able to thrust freely, helped by the lby several fluids, including his pre and your blood. As he thrusts faster and faster, the bumps on his cock constantly tear at your insides, and you impulsively let out a yelp of discomfort with every thrust. It is not too much loger before he reaches his climax, and, without pausing, grunts, and begins to pump your bowels full of his warm seed. It easily fills your intestines and your stomach. In fact, there is so much cum it continues up your throat, spilling out in massive quantities from your panting mouth. As he finally removes his cock with a lout *pop*, your stomah is distended from the sheer amount of cum he has injected into you, and he leaves you to drown in the massive pool of cum he has left behind. As he dissapears into thin air, you find yourself choking and spitting up large balls of his seed, while a constant stream leaks from your abused asshole. And the scary part is that you did enjoy it.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Demon Brute";
	add {"Demon Brute"} to infections of hellspawn;
	now attack entry is "The brute [one of]throws a powerful punch[or]swings a great fist[or]begins to kick wildly with powerful legs[at random].";
	now defeated entry is "With a rather loud thud, the Demon Brute collapses to the ground, defeated. It proceeds to vanish into a fine purple mist, and is blown away by the wind."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[demon brute attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "You see a massive beast ahead, with dark purple skin, a frightening face with slits for nostrils, yellow eyes with red irises, and sharp, intimidating teeth. His entire body is gigantic and muscle-bound, and between his legs hangs a giant cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a spindly, spade-tipped tail protruding from his body somewhere behind that which is constantly flicking back and forth. He wears nothing but a grin";[ Description of the creature when you encounter it.]
	now face entry is "very inhuman, with a pair of slits for nostrils, sharp teeth, and yellow eyes with red irises";[ Face description, format as the text "Your face is (your text)"] 
	now body entry is "now large and muscle-bound, any body-builder would be proud to have it";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "a deep shade of purple as the color of your";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You feel a strange feeling at the base of your spine, and then there is a very strange, and painful, burning sensation, as if your flesh is boiling and liquifying.  The pain lasts for some time, but, when it finally subsides, you can feel your new, long demon tail sway back and forth behind you, equipped with a spaded tip and everything! ";
	now cock entry is "You have a massive demon cock";
	now face change entry is "you begin to feel your skull reshaping under your skin. You nose dissapears, leaving a pair of slits. Your teeth feel strange as they sharpen and grow in length, giving you a monstrous smile. Your eyes have changed, and, looking in a pool of water, you see that the white parts have become yellow, and your irises are now red."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your arms and legs begin to grow longer and more muscular. Your chest widens as well.";
	now skin change entry is "you begin to feel a strange burning sensation. You look down, and realize that your skin has turned a deep shade of purple!";
	now ass change entry is "you fell it becoming tighter, leaner, and more fit."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it begins to grow thicker, large bumps sprouting up all across its surface. At first, you think it is some sort of stange disease, but, then you realize that this entire thing is some sort of disease";
	now str entry is 20;
	now dex entry is 5;
	now sta entry is 14;					
	now per entry is 5;
	now int entry is 3;
	now cha entry is 0;
	now sex entry is "Male"; 	
	now hp entry is 50;			
	now lev entry is 4;			 
	now wdam entry is 9;			
	now area entry is "Mall";
	now cocks entry is 1;			
	now cock length entry is 18;		
	now cock width entry is 8;		
	now breasts entry is 0;			
	now breast size entry is 0;		
	now male breast size entry is 0;	
	now cunts entry is 0;			
	now cunt length entry is 0;		
	now cunt width entry is 0;		
	now libido entry is 45;			
	now loot entry is "demon seed";			[ Loot monster drops, ]
	now lootchance entry is 50;		[ Chance of loot dropping 0-100 ]
	
when play ends:
	if bodyname of player is "demon brute":
		if humanity of player is less than 10:
			say "You find yourself overcome with lust, your balls simply aching, ready to burst. You need to find some relief, and soon! You go on a proper rampage, pushing over small trees and walls, and smashing in windows, and generally wreaking havoc. You eventually spot what you want, a woman in her prime. She is a [one of]human-feline mix, with large cat-ears, a tail, and beautiful black fur[or]husky-human mix, with soft white and grey fur and a puffy white-grey tail[at random]. You seize her, and, without much resistance on her part, are able to gain control. You tear her clothes away, revealing her naked, furry body. She seems too overcome with lust to worry about the size of your cock. But, then again, you aren't the only one with a large tool, and you aren't the first to rut with this girl. She wraps her arms and legs around your large body, her wet sex exposed and moistening, ready for your massive meat. You thrust into her without hesitating, and before long the both of you are moaning and grunting two lust-filled monsters mating like the animals they have become. During the ordeal, the girl climaxes several times, each time becoming more intense than the last. You can feel that you are approaching your climax as well, and your grunts become more frequent. Then, as she is hit by her most powerful orgams yet, her tight sex squeezes your big meat, enough to push you ever the edge. You begin to come, shooting your seed up inside your new bitch. She pants and moans as your cum fills her womb, causing it to swell to a great size. Massive quantities of cum spill out onto the ground beneath your feet, and a constant stream of it is leaking out around your cock. You realize that this ordeal was too much for the girl, and that she has passed out. Since you really enjoyed your time with this girl, you decide to hold onto her as you dissapear back to your den, that saferoom you started your journey in. You set up the cot, and then lay her down on it, her pussy still leaking fluid. Months of wild mating later, and she is heavily pregnant with your brood, which gives you the utmost satisfaction.";
		otherwise:
			say "You are eventually found by a rather strange man, leading a group of explorers through the city. He walks up to you, and holds out his hand. He introduces himself as a adult film producer with a special request. He says that you would make the perfect monster to fill the part of the evil demon-lord in a live-action version of a hentai anime series he has decided to produce. He offers you asylum, a mountain estate away from the peering eyes of society, and a large sum of money. How could you possibly turn that kind of an offer down? The series becomes [one of]a great success, with millions flowing in from frenzied fans. You become a hero to many hentai fans, and you can use all the fangirls you want..[or]a controversial work which ends up getting banned in several countries. The money soon dries up, and you are forced to move out, eventually joining a circus.[at random]";
			
Table of Game Objects(continued)
name	desc	weight	object
"demon seed"	"The white, gooey seed of one of your past demonic lovers. It smells very sweet, and is still warm."	1	demon seed

demon seed is a grab object.

demon seed is infectious. The strain of demon seed is "Demon Brute".

the usedesc of demon seed is "The warm, sticky liquid tastes sweet as you drink it.";

[ Right now this only infects you, I would like to make it quench thirst and boost/lower stats in the future ]

[ Edit this to have the correct Name as wall]
Demon Brute For FS ends here.