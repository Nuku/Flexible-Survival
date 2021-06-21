Version 1 of Ninja Events by Tanaka begins here.
[ Version 1 - New File with rebuild of the Fallen Kunoichi event, originally by Stripes]

"Adds ninja-themed content."

Table of GameEventIDs (continued)
Object	Name
Fallen Kunoichi	"Fallen Kunoichi"

Fallen Kunoichi is a situation.
ResolveFunction of Fallen Kunoichi is "[ResolveEvent Fallen Kunoichi]".
Sarea of Fallen Kunoichi is "Museum".

when play begins:
	add Fallen Kunoichi to BadSpots of FurryList;

to say ResolveEvent Fallen Kunoichi:
	say "     As you pass through the halls of the museum, you become more aware of your footsteps. The raucous sounds of sex and animals have died out, leaving your ears ringing. You notice flickering lights in the room to your left. Looking towards it, it becomes clear that the room houses the aftermath of an epic battle. Many of the displays here are knocked over or shattered by powerful blows from a great weapon. Bodies dot the area - naked, mangled, and half-buried in the rubble. You can see gouges cut deep into the walls, some made by the smaller darts and shuriken that are embedded in them. The floor is marked with blood stains and cum puddles, as well as soot marks from flash powder or smoke bombs. Lights dangle precariously from frayed wires in the ceiling, basking the scene in a serene glow. Your feet crunch glass and creak wood as you take it all in. Clearly many battled a great foe here, but there is nothing but bodies and silence left.";
	say "     A ragged banner directs your eyes to a far corner of the room. Once pure white, it is now marked black with soot and smoke. The bloody marks of four fingers draw a winding curve downwards, pointing to something resting at the base of the banner. You step over more of the wreckage to get a better look at it. Lying on a raised platform there are the remains of a feline ninja impaled by a bo staff. It juts vertically from their chest like a sword in a stone. The dim light here illuminates its sleek wood, which shines in an ocean of static dust particles. Its tip is encased in gleaming metal. Beautiful, intricate designs meander down its length. The blood caked on its end has long dried and welded flesh and wood together. A white mask covers the ninja's face, cracked from the battle that killed them. It's painted red with swirling floral designs and streaks of blood. You imagine a peaceful look underneath it in spite of their grisly end. Somehow, you feel heavy.";
	LineBreak;
	say "     [bold type]What do you do?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Loot the staff in the ninja.";
	say "     [link](2)[as]2[end link] - Use the lack of monsters here to rest.";
	say "     [link](3)[as]3[end link] - Give a moment of silence for the ninja.";
	say "     [link](4)[as]4[end link] - Just leave.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to loot the body, [link]2[end link] to rest, [link]3[end link] to respect the dead, or [link]4[end link] to just leave.";
	if calcnumber is 1:
		LineBreak;
		say "     Loot is loot! This person's obviously not going to use the weapon so you might as well take it for yourself. Bracing your foot against the ninja's body, you grip the bo staff with both hands and pull. There's a bit of resistance on account of how deep the staff is wedged into the body. Nothing a little determination can't fix! In due time the body lurches underfoot and with a sickening squelch, the staff pops free of it as blood oozes both down the staff's length and out of the body anew. You hold the staff triumphantly in the air, thanking your good fortune. Giving it a few test swings, you find that it's light and comfortable to wield. You can imagine pummeling in someone's face with it, especially with the extra distance you can now put between you and them. All you have to do is wash the blood off later. Slinging the staff over your shoulder, you gleefully stride out of the room.";
		ItemGain bo staff by 1;
		now Resolution of Fallen Kunoichi is 1; [player looted the body]
	else if calcnumber is 2:
		LineBreak;
		say "     This exhibit might have once been dangerous, but not anymore. The monsters outside probably avoid this room because of how oppressive the energy is; even simple beasts know better than to inhabit a place with this much blood and debris. Which is great for you, seeing as how there's nary a place anymore where you can be sure that no one will disturb your sleep. Finding a cool surface to nap on, you drop your gear and release your tension. Looking over at the fallen kunoichi, you can't help but imagine it as a guardian angel or perhaps a scarecrow, keeping you safe from the animals outside. Maybe that's what they wanted - to keep their friends safe. Maybe that's what they fought and died for. Maybe that's what they would have wanted for you, too. With that thought in mind, you drift off to sleep.";
		WaitLineBreak;
		say "     You wake some time later to the stinging lights of the museum. Blinking groggily, you stretch your sore limbs and groan. The subpar sleeping conditions were only a small price to pay for this moment of respite. Surveying the area, nothing much seems to have changed; it's as dead and melancholic as ever. That doesn't bother you, though. You'll take any refuge you can get in this hostile environment if it means you can survive. Standing up, you humorously thank the corpse for watching over you and your belongings as you gather them up and leave.";
		follow the turnpass rule;
		now Resolution of Fallen Kunoichi is 2; [player rested next to the body]
	else if calcnumber is 3:
		LineBreak;
		say "     Looking at the corpse fills you with a deep sense of sadness and sympathy. You place all of your belongings on the floor and sit down. Exhaling through your mouth, you relax and think about the person before you. They're unfamiliar to you, but even though they're dead, you can't help but feel kinship with them. After all, this apocalypse has you fighting tooth and nail to survive and maintain your identity. This person was no different. There are other ninjas here - other people they chose to be with. Other people with which they shared their beliefs and goals and feelings. [if (number of bunkered people + number of booked people > 2)]Just like you. [else]You sympathize, in search of a found family yourself. [end if]You hope that the ninja died for what they believed in. You hope that they were victorious in their battle. You hope that they found what they were looking for in the end. You hope that the ninja was happy. You hope that the ninja is at peace.";
		say "     Tears stream down your eyes before you notice. You wipe them away with trembling fingers. The air feels lighter now. Maybe it's hard to live in a situation like this but you'll keep fighting. That's right, you think. That's how you'll honor this deceased before you - by surviving where they couldn't. You'll meet more people and make more friends and eventually you'll all leave this mess together. [if (number of bunkered people + number of booked people > 2)]There are people you care about and people who care about you, and there's no way you can leave them behind. [else]If you managed to make it this far, then there's definitely other people who have, as well. You're filled with the determination to seek them out. [end if]You stand up once again, and give the corpse a slow and solemn bow before you collect your belongings and leave.";
		SanBoost 10;
		now Resolution of Fallen Kunoichi is 3; [player gave a moment of silence]
	else if calcnumber is 4:
		LineBreak;
		say "     This place makes you feel uneasy, like you shouldn't be here. Maybe someone who was in this war is still here, ready to attack you at any given moment. You're not willing to take that chance. You quickly exit the room.";
		now Resolution of Fallen Kunoichi is 4; [player does not interact]
	increase score by 5;
	now Fallen Kunoichi is resolved;

[Bo Staff resides in Core Mechanics/Weapons.i7x]


Ninja Events ends here.
