Version 1 of Zigor by Stripes begins here.
[Version 1 - Basic setup, no sex yet]
"Adds a Leather Wolf NPC named Zigor to the Flexible Survival game."

Section 0 - Event	[Transposed from Red Events]

Leather Wolves is a situation.
The sarea of Leather Wolves is "Red";
when play begins:
	add Leather Wolves to badspots of girl;
	add Leather Wolves to badspots of guy;
	add Leather Wolves to badspots of furry;

Instead of resolving a Leather Wolves:
	say "     Some noise up ahead attracts your attention and you creep closer.  Hunkering down behind a pair of cars, you look at the small pack of wolfmen gathered in front of a leather store.  At some point, several of the mannequins have been stripped of their outfits and the wolves seem to be wearing them.  Somehow their leather gear is shaped to cover large parts of their lupine faces and transformed bodies.  A pair of them are indulging in sex on the leather harness they've hung from a building-side flagpole.  Others are stroking themselves off or fingering their pussies while they watch.  As you study the pack more closely, you come to realize that they are not merely wearing the leather, but that it is part of them at the same time.";
	say "     While you might want to check out the leather goods store you've found, there's a bit too much activity here right now.  Perhaps you'll be able to check it out later once the wolves are done having their fun.  You make note of the place and consider stopping by again in the future.";
	now Cuero Lobo is known;
	increase score by 10;
[	say "     With this pack established here, there[']s clearly no safe way to search the immediate area further and you quietly backtrack.";
	increase score by 1;	]
	Now Leather Wolves is resolved;


Section 1 - Leather Store

Cuero Lobo is a room. It is fasttravel. It is private.
The description of Cuero Lobo is "[cuerolobodesc]";

the scent of Cuero Lobo is "The store smells of cured leather, oil and lupine arousal.";

to say cuerolobodesc:
	if hp of Zigor is 0:
		say "     Finding your way back in the area of that leather store, you approach it cautiously.  Scoping it out, you find that the pack of leather wolves has moved on, taking their harness with them.  There is a sign on the window that says 'Out of Stock' but another that says they're open.  Curious and feeling it's probably safe to approach, you head inside.  The store interior has largely been denuded of material, leaving mostly empty mannequins and display photos on the wall, though a few pieces remain.  The scent of leather, oils and lupine sex still hangs in the air.  The store is not as unoccupied as it first appeared though, there being one of those leather wolves reclining casually with his feet up on the counter.";
		say "     'Hola!  Welcome to Cuero Lobo, my friend.  I am Zigor,' he says with a rich Spanish accent, rolling his r's and smiling.  He, like the others you saw outside previously, is partially covered in leather gear that is somehow a part of him.  'I'm sorry, but we are fresh out of stock these days.  Demand for our quality items is quite high, you must understand.  We hope to resume business once all the excitement settles down a little and we're able to provide more to our ever eager clients.  But perhaps you'd like to stay to keep me company while we wait,' he says in that alluring, sensual accent of his.";
		now hp of Zigor is 1;
	otherwise:
		say "      This leather goods store has been almost completely denuded of its wares by the lustful mobs, its racks and displays emptied and the mannequins disrobed.  The photos on the wall show several of their more elaborate items, many of them quite kinky.  Looking more closely, many of them are actually very explicit photos, probably having replaced the more acceptable sample images that were once in the frames.  The store is manned by Zigor, a leather-bound wolf with a sexy accent.";

[
guards - lupine gimp masks
]

Section 2 - Zigor the Leather Wolf

Zigor is a man.  Zigor is in Cuero Lobo.
The description of Zigor is "[zigordesc]";
The conversation of Zigor is { "Hola!" }.

the scent of the Zigor is "The wolf smells strongly of oiled leather and lupine arousal.";

to say zigordesc:
	say "     Zigor the leather wolf has the build of an average, fit human being, but altered to have lupine features, most prominently his head, hands, feet and tail.  Given that he's wearing/bonded to a leather outfit that covers most of him, you can only see portions of his pelt.  His fur contains a mix of grey black, brown and rust colours that make him stand out from the other wolves you've seen.  The leather portions of his hide cover his chest, legs and forearms.  It is made of black leather with even some metal rings and straps built into it as well as a separate leather patch that partially covers his plump, pierced sheath.  The wolf has a rich, sensual voice and speaks with a distinctly Spanish accent that turns you on every time you hear it.";


Instead of conversing the Zigor:
	if hp of Zigor is 0:
		say "ERROR-Zigor-0L: You should not be able to find me!";
	otherwise if hp of Zigor is 1:
		say "     Zigor smiles as you chat with him for a little while.  'My store has always done quite well, our goods being the best around,' he says with pride.  'And we have only become more popular lately.  We can hardly keep up with demand.  That first night, our store was mobbed by so many eager customers.  Oh, it filled my heart with joy to see them all clamoring for the wares, many of them trying them out right away.  Oh, it was such a sight,' his already sexy voice adding extra sensual emphasis to his words.";
		say "     'Now, our stock unfortunately too low for sales at the moment.  But because I like you, I might be convinced to show you some items from my personal collection downstairs.  I have a room set aside where my special guests and try them out.  Doesn't that sounds like fun,' he says softly, rubbing his leather-clad body against yours while running his padded fingertips along your side.  'I promise to make you cry out with such painful delight,' he adds, his lupine fangs showing as he grins.";
		now hp of Zigor is 2;
	otherwise if hp of Zigor is 2:
		say "     [one of]'I named my store [italic type][']Cuero Lobo['][roman type], or [']Leather Wolf['], because I thought it evoked strength and power.  Little did I know I'd one day become a [italic type]cuero lobo[roman type] myself to make it all the more fitting.'[or]'This is one item that customers particularly enjoy,' he says, pointing to one of the photos on the wall, showing some very kinky leather gear trussing up a [one of]man[or]woman[at random] while they are disciplined and fucked.  'I would love to see you in one of those someday,' he adds with a sensual rumble and a hard squeeze of your ass.[or]'Perhaps I could interest you in a more personal session with my collection downstairs?' he says in that sensual voice of his.[or]'We are working hard to restock our wares, but the demand is so high now.'[or][if the player is submissive]'You look like you'd take very well to my private chamber.  The discipline of a strong, firm wolf is just what you need, carino***,' he says, giving your ass a hard squeeze.  Your submissive urges cause you to moan, making you long to let him have his way with you[otherwise]'I think you should join me downstairs.  The strong ones like you are all the more fun to break and the discipline from a strong, firm wolf is just what you need to do it, carino***,' he says, giving your ass a hard squeeze.  His offer sounds very enticing, making you strongly consider seeing just what he means[end if].[or]'That first night was such fun.  So many eager customers coming in here, trying out our wares right in the store.  You should have been there.  It would have been nice to see them all taking turns with you,' he says with a toothy grin.[or]Zigor runs his eyes up and down you.  'Mmm... I have trouble deciding what to tie you up in first, mi mascota,' he says with a rather predatory smile.[at random]";
	otherwise:
		say "     [one of]'I named my store [italic type][']Cuero Lobo['][roman type], or [']Leather Wolf['], because I thought it evoked strength and power.  Little did I know I'd one day become a [italic type]cuero lobo[roman type] myself to make it all the more fitting.'[or]'This is one item that customers particularly enjoy,' he says, pointing to one of the photos on the wall, showing some very kinky leather gear trussing up a [one of]man[or]woman[at random] while they are disciplined and fucked.  'I would love to see you in one of those someday,' he adds with a sensual rumble and a hard squeeze of your ass.[or]'You should join me for another personal session with my collection downstairs,' he says in that sensual voice of his.[or]'We are working hard to restock our wares, but the demand is so high now.'[or][if the player is submissive]'Someone like you was meant to enjoy all the painful delights of my private collection, carino***,' he says in that sexy accent of his while grabbing your ass[otherwise]'I look forward to another session with the painful delights of my private collection, carino***,' he says in that sexy accent of his while grabbing your ass[end if].  The offer is very tempting, your body longing for more of the wolf's tough love.[or][or]'That first night was such fun.  So many eager customers coming in here, trying out our wares right in the store.  You should have been there.  It would have been nice to see them all taking turns with you,' he says with a toothy grin.[or]Zigor runs his eyes up and down you.  'Mmm... I have trouble deciding what to [if a random chance of 1 in 3 succeeds]tie you up in next[otherwise if a random chance of 1 in 2 succeeds]strike you next[otherwise]train you with next[end if], mi mascota,' he says with a with a rather predatory smile.[at random]";


the fuckscene of Zigor is "[sexwithZigor]".

to say sexwithZigor:
	if hp of Zigor < 2:
		say "     You should probably get to know him a little before making such an offer.";
	otherwise:
		say "***Content coming soon - the Mgmt[line break]";


[ carino*** - sweetheart
mascota - pet
cachorro - pup/cub ]

Zigor ends here.