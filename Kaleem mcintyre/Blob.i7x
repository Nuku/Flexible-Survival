Blob by Kaleem mcintyre begins here.

"Adds a Blob creature to Flexible Survival Reservoir"


Section 1 - Monster Responses


to say Blobdesc:
	setmongender 0; [creature is neuter-X]
	say "The Blob is a large amorphous mass of green and orange goo that has collected together from the slime and organic matter of other creatures it has absorbed. Large and unwieldy the mass seems to be somewhat aware of itself, and you by turn, the gel-like creature prepares to defend itself from the biting cold by lashing at everything around it. Out sizing you by almost six times your length, tough enough to break fiber glass, and floating somewhat because of bioelectrical power of the living beings it assembled into itself, the Blob is ready to fight for its life.";


to say Blobattack:
	say "[one of]Grabbing you with a tentacle the Blob throws you into a nearby wall![or]Spiking the outer shell of itself like a porcupine protective itself the Blob charges at you![or]Warbling with a loud cry the Blob lets out an ear piercing shriek![or]Hovering slightly the Blob throws out several tentacles wildly in your direction![or]Sensing your attack the Blob curls in on itself to block your attack and then lashes out wildly at you![or]Spreading itself out into a large mass the Blob surges like a wave towards you![or]Becoming like that of a large funnel the Blob sucks you into itself and then spins you around before spitting you back out onto the floor![at random]";


to say losetoBlob:
	say "The wiggling and amorphous mass is quick to grab you with one of its tentacles and then bring you bodily into itself. Struggling as vainly as you can with your limited strength there is not much for you to do as you are engulfed into the giant blob-like mass. However, your suffering has only begun. Because of its inherent nature to disassemble living organisms into itself the blob is able to slowly break you down into itself pieces by pieces. The feeling of your senses slowly dulling and then shutting completely down is followed after the loss of other pieces of your form. First legs and arms and tail, followed by sight, scent, and then sensation as everything just starts to fade to black. If this was the worst part then that might be ok, however, because of the beast having a consciousness made up of other mutants you can still [']feel['] even though you cannot control yourself.";
	say "The knowledge of the other mutants inside of the creature filters into your mind just as your own flows into theirs and then subsequently into the gelatinous mass of slime. Understanding that the controls for the flash freeze are still in the main terminal room one of your/the blob's tentacles reaches out to destroy the fiber glass protecting the room and then the machinery, instantly stopping the creature's/your own destruction. With that taken care of the room soon starts to reheat, much to the blob's/your own pleasure and soon the blob is sinking back down into the cool water below. Idle and quiet no one will figure out what has happened, not until soldier's come later to try and restore the city's water...but by then there will be no more you/blob, there will just be the blob. Ready to amass more organic matter into itself to grow larger...and more self-aware.";


to say beattheBlob:
	say "Having fought the creature enough to wear it down, not to mention draw its attention to you rather than the main control terminal, the Blob is quick to solidify icily as the reservoir freezes to close to below 0. Now much smaller than it had been in the beginning, the amorphous creature seems almost harmless as it sits there both [italic type]still[roman type] and compliant before you. However, knowing that this might not be true when the reservoir heats back up, you don't wait as you charge for the creature again and then slam into it with a vicious kick. When you flip back from you attack you watch as tiny splinters in the shell of the creature appear like cracks on a frozen pond about to break. Moving back a little further you watch in fascination as the monster's body fragments more and more until finally exploding into crystalline shards.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Blob"; [ Infection/Creature name. Capitalized. ]
	now attack entry is "[Blobattack]";
	now defeated entry is "[beattheBlob]"; [ Text when monster loses. ]
	now victory entry is "[losetoBlob]"; [ Text when monster wins. ]
	now desc entry is "[Blobdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is ""; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "a soft sheath of fur and skin forms to house your maleness when not aroused";
	now str entry is 22; [ These are now the creature's stats... ]
	now dex entry is 20; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 25; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 0;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 180; [ The monster's starting HP. ]
	now lev entry is 18; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 25; [ Monster's average damage when attacking. ]
	now area entry is "nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 0; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "gooey";
	now type entry is "blob";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


 [ Edit this to have the correct creature name as well]

Blob ends here.
