Version 3 of Skunk Pet by Sarokcat begins here.
[ Version 3.1 - Shifted to Urban Forest - Stripes ]

"Adds a special event to Flexible Survival with a potential pet."

Section 1- Skunk kit

skunk kit is a pet. The description of the skunk kit is "The skunk kit you rescued is obviously the offspring of one of the larger skunk beasts roaming the forest, as even as young as it obviously is it is already the size of a regular skunk or perhaps even slightly larger. The creature stares up at you adoringly however, with love in its eyes for its savior, exploring the world around it with the innocence of youth. How long that innocence will last though as it grows is anyone's guess, but for now its happy skunk-like antics bring a smile to your face.". skunk kit is a part of the player.
The weapon damage of skunk kit is 6.
The level of skunk kit is 1.
The Dexterity of skunk kit is 13.
The summondesc of skunk kit is "You call out for the little skunk you rescued to come help you out, and it comes trotting up from where it was following you, ready and eager to assist its friend, the smell of skunk filling the area around you.".
The assault of skunk kit is "[one of]The little skunk viciously launches itself at your attacker![or]Turning around, the skunk sprays your attacker in the face![or]Afraid of being left alone again, the little skunk goes into a frenzy of biting![or]All of a sudden the powerful scent of skunk washes over the fight from where your little skunk kit is playing nearby.[or]Taking advantage of your foes['] distraction, the skunk nips and bites at whatever part of your opponent it can reach.[or]Your adversary pauses for a minute as the little skunk growls at it, startling it enough for you to land a hit![or]The little skunk charges in to protect you, and your opponent seems so startled at its sudden appearance it falls backwards.[or]The little skunk tries to threaten your adversary from the sidelines, and spotting the skunk your adversary recoils in fear of its smell.[at random]".
the fuckscene of skunk kit is "The little skunk kit you've rescued is too young and small for such perversions.".

instead of sniffing skunk kit:
	say "The little guy smells of skunk, but that doesn't seem to bother you much at all.";

An everyturn rule:
	if companion of player is skunk kit:
		if a random number between one and 20 < 4:
			say "[one of]The scent from the little skunk kit wafts over you strongly, causing your body to change![or]The little skunk kit comes up to you and nuzzles you, and you find yourself changing.[or]The little skunk kit calls out for its mother, and you find yourself filling in for her.[or]The little skunk kit rubs up against you, his skunky smell teasing your nose with images of mature skunk beasts.[or]The little skunk kit is startled by something and sprays the area, hitting you as well![at random]";
			if skunkbeaststatus is 1:
				sblinfect;
			else:
				infect "Skunk";


Lost skunk kit is a situation.
The sarea of Lost skunk kit is "Forest".
when play begins:
	add Lost skunk kit to badspots of girl;
	add Lost skunk kit to badspots of furry;


littlelostskunk is a number that varies.

Instead of resolving Lost skunk kit:
	if littlelostskunk is 0:
		say "Wandering through the woods, you come across what was obviously the remains of a recent combat, the ground torn and savaged, and spots of blood staining the ground, looking around you find it hard to tell exactly what happened here, but you know it was violent. You glance around to see if there is anything of use in the area, or if you can determine what the combatants were and why they fought, finding several strange boot prints and what you think might be a bullet casing, but that makes no sense... Sighing you prepare to go on about your business, when you hear a small whimpering noise from under a nearby bush. Considering the state of the area investigating could be dangerous, do you look anyways?";
		If player consents:
			say "Looking under the thorny bushy you note a small hollow dug out underneath, far too small for anyone your size to fit in, but just the right size for the shaking little skunk kit that is currently occupying it, quite possibly the offspring of one of those large skunk beasts in the area as even though it is obviously just a child, it is still almost the size of a regular skunk. Seeing you the little thing whimpers and shudders some more, and you can smell a soft whiff of skunk smell from the area, you quickly back off so as not to panic the little creature. Taking a new look at the site of the battle now that you know what to look for, you imagine something was after the skunk beasts young and it objected, somehow this one managed to hide from whatever or whoever took the rest though. You feel a bit sorry for the little skunk kit, as it obviously is all alone now, but as it seems terrified of your looks and your smell, you aren't sure what you can do to help.";
			if bodyname of player is "Skunk" or bodyname of player is "Skunk Taur" or bodyname of player is "Skunkbeast Lord":
				say "Looking down at yourself you focus on your skunk-like attributes, and wonder if just maybe if you are careful the little skunk might not be drawn to them, you try to decide if you should try drawing the little creature out again.";
				if player consents:
					say "Deciding to try again, you once more approach the little creature, this time emphasizing your skunk-like attributes, you carefully try coaxing the little kit out of its hiding spot, offering it flashes of your skunk-like body and scent until finally it nervously emerges. Sitting down within easy reach, you wait while the obviously young skunk kit inspects you carefully. Seeming to find something familiar about you, the little beast then throws itself into your lap, whimpering. Feeling oddly maternal and protective of the little creature, you stroke its smooth fur and tell it that it will be all right, checking it over for damage as you do. The lucky little skunk seems to have come through its ordeal with only a few small scratches from the thornbush, and it is mostly just scared.[line break]";
					say "Petting and soothing the little beast feels almost natural to you, something about taking care of him speaking to the skunk-like part of yourself, and you lose track of how long you sit there petting his soft fur. Eventually the little skunk stirs; its happy churring noises as it rubs its head against you playfully make you smile fondly at him. Realizing you should probably move away from the site of the battle, you stand up and easily coax the little creature to a safer location a little distance away. You laugh at its innocent frolicking and skunk-like antics as it tries to impress you with its fierceness and convince you to play with it and pet it. After a bit you realize the slight skunk-like smell in the clearing seems to be even more comforting to you than normal, smelling a bit like home and other skunks. Deciding somewhat sadly that you need to keep moving before another skunk follows the smell and finds you with the little kit, you sadly say goodbye and try to leave. After a few steps you realize the little skunk is following right behind you, and when you try to convince it to stay behind and wait for other skunks, it gives you a sad look and starts whimpering at you again, afraid it offended you in some way. Sighing slightly, you realize the little creature has imprinted itself on you and thinks you are its family now. Unable to take the pathetic look it sends you any longer, you gesture for it to follow you as you head back to the forest trail, its happy noises as it bounces along behind making you smile. It looks like you have a skunk kit of your very own now.";
					now skunk kit is tamed;
					if skunkbeaststatus is 1:
						sblinfect;
					else:
						infect "Skunk";
					say "(The skunk kit is now tamed! You can make it your active pet by typing [bold type][link]pet skunk kit[as]pet skunk kit[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";
					now Lost skunk kit is resolved;
				else:
					say "Deciding that the whole situation is not really your problem, even if it is a fellow skunk creature, you leave the little skunk to its hiding spot, and continue on your way.";
					now Lost skunk kit is resolved;
			otherwise if Skunk Goo is owned:
				say "Realizing you have some of that strange black goo from one of the other skunks, you think that you might be able to put the little skunk at ease if you smelled and looked more like one of the skunks, do you rub the goo on your hands?";
				if the player consents:
					say "Pulling out the strange black goo you found earlier, you rub it on your hands and face, the strange substance feeling rather rubbery for a minute before seeming to sink into the skin. Shuddering at little at the thought of whatever changes that might cause, you nevertheless take advantage of the black goo hiding your scent and looks for a minute, leaning down to try to coax the little kit out of hiding. The skunk kit whimpers for a second when it sees you are back, then seems to catch wind of the skunk scent rubbed on you and your temporarily black hands and face. Before you can do more than blink, the little skunk has awkwardly charged out of its hiding space, nearly falling over its own feet in its hurry to rub up against you. You sit back as the small skunk rubs on you and tries to crawl in your lap, making soft whimpering noises. Almost reluctantly you help it up and stroke it a few times to calm the shaking little kit down.[line break]";
					say "Calming down, the little beast curls up in your lap and starts making soft churring noises at you, obviously happier now that it has found a new friend. Checking the little kit over carefully as you stroke its fur, you don't see anything more than a couple scratches from the bushes thorns. It looks like the little kit was just scared and not hurt. You take some time to comfort the small little thing, feeling strangely protective of the little skunk as it recovers, when it is well enough to travel you lead it away from the site of the combat, where it will be safer. You smile as once away from the traumatic sight the skunk kit seems to recover even more, frolicking a bit and trying to tease you into playing tug with a small root it dug up. Spending some time playing with the skunk, you realize that you don't seem to mind his little skunk-like odor anymore, in fact the smell seems kind of nice. Realizing this, you shake your head slightly to clear it; the goo or his smell must have affected you more than you thought. Deciding you need to be on your way, you wave to the little skunk kit and start to leave, only to realize after a few steps the little thing is following you. You try several times to get it to stay in the woods, but it trails along after you as soon as you get too far away. You sigh as you realize the little skunk has adopted you as its new parent.";
					delete Skunk Goo;
					now skunk kit is tamed;
					if skunkbeaststatus is 1:
						sblinfect;
					else:
						infect "Skunk";
					say "[bold type](The skunk kit is now tamed! You can make it your active pet by typing pet skunk kit. You can see all the pets you have tamed with the pet command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
					now Lost skunk kit is resolved;
				else:
					say "Deciding helping the little skunk isn't worth the chance of getting infected by the goo yourself, you leave the area so nature can take its course.";
					now Lost skunk kit is resolved;
			else:
				say "Sighing, you realize that there is nothing in your bag that could help you out in this situation, and you can't think of anything else to do to make the little skunk trust you, so you make note of the location and hope the little creature will be here when you get back.";
				increase littlelostskunk by 1;
		else:
			say "Deciding that you can't afford to take risks in a situation that looks this dangerous, you quickly turn and leave whatever is whimpering alone as you make your way back into the forest.";
			now Lost skunk kit is resolved;
	otherwise if littlelostskunk is 1:
		say " Traveling through the forest again, you realize that you are near the site of the skunks battle from earlier, curiosity getting the better of you, you decide to go see if that little skunk kit is still ok. Returning to the battle site easily enough, you note that other creatures have passed this way recently, probably looking to scavenge something as well, so you probably shouldn't stay too long. Still as you approach the little skunks hiding spot, you hear the telltale whimpering that tells you the little creature is still hanging in there. Feeling even sorrier for having left the little creature alone, you quickly check to see if you might have any way to get it to trust you better this time.";
		if bodyname of player is "Skunk" or bodyname of player is "Skunk Taur" or bodyname of player is "Skunkbeast Lord":
			say "Looking down at yourself you focus on your skunk-like attributes, and wonder if just maybe if you are careful the little skunk might not be drawn to them, you try to decide if you should try drawing the little creature out again.";
			if player consents:
				say "Deciding to try again, you once more approach the little creature, this time emphasizing your skunk-like attributes, you carefully try coaxing the little kit out of its hiding spot, offering it flashes of your skunk-like body and scent until finally it nervously emerges. Sitting down within easy reach, you wait while the obviously young skunk kit inspects you carefully. Seeming to find something familiar about you, the little beast then throws itself into your lap, whimpering. Feeling oddly maternal and protective of the little creature, you stroke its smooth fur and tell it that it will be all right, checking it over for damage as you do. The lucky little skunk seems to have come through its ordeal with only a few small scratches from the thornbush, and it is mostly just scared.[line break]";
				say "Petting and soothing the little beast feels almost natural to you, something about taking care of him speaking to the skunk-like part of yourself, and you lose track of how long you sit there petting his soft fur. Eventually the little skunk stirs; its happy churring noises as it rubs its head against you playfully make you smile fondly at him. Realizing you should probably move away from the site of the battle, you stand up and easily coax the little creature to a safer location a little distance away. You laugh at its innocent frolicking and skunk-like antics as it tries to impress you with its fierceness and convince you to play with it and pet it. After a bit you realize the slight skunk-like smell in the clearing seems to be even more comforting to you than normal, smelling a bit like home and other skunks. Deciding somewhat sadly that you need to keep moving before another skunk follows the smell and finds you with the little kit, you sadly say goodbye and try to leave. After a few steps you realize the little skunk is following right behind you, and when you try to convince it to stay behind and wait for other skunks, it gives you a sad look and starts whimpering at you again, afraid it offended you in some way. Sighing slightly, you realize the little creature has imprinted itself on you and thinks you are its family now. Unable to take the pathetic look it sends you any longer, you gesture for it to follow you as you head back to the forest trail, its happy noises as it bounces along behind making you smile. It looks like you have a skunk kit of your very own now.";
				now skunk kit is tamed;
				if skunkbeaststatus is 1:
					sblinfect;
				else:
					infect "Skunk";
				say "[bold type](The skunk kit is now tamed! You can make it your active pet by typing pet skunk kit. You can see all the pets you have tamed with the pet command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
				now Lost skunk kit is resolved;
			else:
				say "Deciding that the whole situation is not really your problem, even if it is a fellow skunk creature, you leave the little skunk to its hiding spot, and continue on your way.";
				now Lost skunk kit is resolved;
		otherwise if Skunk Goo is owned:
			say "Realizing you have some of that strange black goo from one of the other skunks, you think that you might be able to put the little skunk at ease if you smelled and looked more like one of the skunks, do you rub the goo on your hands?";
			if the player consents:
				say "Pulling out the strange black goo you found earlier, you rub it on your hands and face, the strange substance feeling rather rubbery for a minute, before seeming to sink into the skin. Shuddering a little at the thought of whatever changes that might cause, you nevertheless take advantage of the black goo hiding your scent and looks for a minute, leaning down to try to coax the little kit out of hiding. The skunk kit whimpers for a second when it sees you are back, then seems to catch wind of the skunk scent rubbed on you and your temporarily black hands and face. Before you can do more than blink, the little skunk has awkwardly charged out of its hiding space, nearly falling over its own feet in its hurry to rub up against you. You sit back as the small skunk rubs on you and tries to crawl in your lap, making soft whimpering noises. Almost reluctantly you help it up and stroke it a few times to calm the shaking little kit down.[line break]";
				say "Calming down, the little beast curls up in your lap and starts making soft churring noises at you, obviously happier now that it has found a new friend. Checking the little kit over carefully as you stroke its fur, you don't see anything more than a couple scratches from the bushes thorns. It looks like the little kit was just scared and not hurt. You take some time to comfort the small little thing, feeling strangely protective of the little skunk as it recovers, when it is well enough to travel you lead it away from the site of the combat, where it will be safer. You smile as once away from the traumatic sight the skunk kit seems to recover even more, frolicking a bit and trying to tease you into playing tug with a small root it dug up. Spending some time playing with the skunk, you realize that you don't seem to mind his little skunk-like odor anymore, in fact the smell seems kind of nice. Realizing this, you shake your head slightly to clear it; the goo or his smell must have affected you more than you thought. Deciding you need to be on your way, you wave to the little skunk kit and start to leave, only to realize after a few steps the little thing is following you. You try several times to get it to stay in the woods, but it trails along after you as soon as you get too far away. You sigh as you realize the little skunk has adopted you as its new parent.";
				delete Skunk Goo;
				now skunk kit is tamed;
				if skunkbeaststatus is 1:
					sblinfect;
				else:
					infect "Skunk";
				say "[bold type](The skunk kit is now tamed! You can make it your active pet by typing pet skunk kit. You can see all the pets you have tamed with the pet command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
				now Lost skunk kit is resolved;
			else:
				say "Deciding helping the little skunk isn't worth the chance of getting infected by the goo yourself, you leave the area so nature can take its course.";
				now Lost skunk kit is resolved;
		else:
			say "You sigh as you take stock and realize you are no better off this time than you were the first time you came across the little skunk kit. Shaking your head sadly, you realize that you will just have to try harder to find a way to help next time, or you will be forced to leave the little skunk kit here to his fate. You head back into the forest.";


Section 2 - Endings

[For endings, see the 'Skunkbeast Lord' file by Stripes.]


Skunk Pet ends here.
