Version 1 of Campus Events by Stripes begins here.

"Adds a series of random events to Flexible Survival located at or focusing on the College Campus area."


Section 1 - Marching Band

Marching Band is a situation.
The sarea of Marching Band is "Campus";

Instead of resolving a Marching Band:
	say "     While exploring the campus, you are suddenly surprised to hear the sound of music starting up.  A welcome change from the normal sounds of sex-crazed creatures and horny mutants, you cautiously head over to investigate.  You find a variety of infected creatures stuffed into ill-fitting uniforms and carrying instruments as they try to coalesce into a marching band.  They start up and stop several times, distracted by one or more of them deciding to hump another, give a blow job or otherwise give in to their sexual desires.  But eventually they do get going as their border collie band leader nips them back into position once everyone's gotten off one last time before they can march off the national anthem as they proceed towards one of the fields.";
	increase score by 1;
	Now Marching Band is resolved;


Section 2 - Art Department

Arts Department is a situation.  The level of Arts Department is 3.
The sarea of Arts Department is "Campus";
when play begins:
	add Arts Department to badspots of girl;
	add Arts Department to badspots of furry;

Instead of resolving a Arts Department:
	say "     You find yourself in front of the school's arts department building, finding it a rather small and neglected part of the campus.  Clearly used just for some easy credits, it's not given much respect here.  You decide to slip inside, hoping to find something of use since the muscle-bound creatures around don't seem to have been around here.  You go down the halls, finding most of the rooms locked or empty until you come to a room used for sculpting.  Inside, you find a female lizard who's elated to find you, an ample subject for her special, artistic talents.";
	challenge "lizard girl";
	now Arts Department is resolved;


Section 3 - Phi Iota Gamma

Frat House is a situation.  The level of Frat House is 3.
The sarea of Frat House is "Campus";
when play begins:
	add Frat House to badspots of girl;
	add Frat House to badspots of furry;

Instead of resolving a Frat House:
	say "     Exploring the edge of campus, you can hear the raucous sounds of drunken partying happening nearby.  Approaching cautiously, you find a large frat house with numerous boars, hogs and sows partying out on the lawn.  All of them are carousing with beer in hand or lustfully fucking one another, or both.  Despite the messy state of the pigs, there's something tempting about their carefree partying that draws your attention to watch.  You find yourself a little too drawn to watch a well-hung hog fucking a squealing sow and fail to notice one of the messy pigs sneaking up on you.  With a lustful squeal, she charges, trying to force herself onto you.";
	challenge "Messy Pig";
	say "     That over, you decide to leave before the others have a chance to investigate the commotion, leaving the Phi Iota Gamma fraternity behind."; 
	now Frat House is resolved.


Section 4 - Languages Department

Languages Department is a situation.
The sarea of Languages Department is "Campus";

Instead of resolving a Languages Department:
	say "     Passing behind one building, you almost bump into a small group of creatures arguing loudly and incomprehensibly.  Among the group are a French frog, a Chinese dragon, an Indian elephant, a Russian bear and several other walking stereotypes who can no longer understand each other.  You suspect they've all somehow become altered by the infection into forms to suit the language course they taught or studied.  You decide to give what is probably the Languages Department a wide berth before you start speaking another language as well to further compound your problems in this city gone mad.";
	Now Languages Department is resolved;


Section 5 - Wandering the Campus

Wandering the Campus is a situation.  The level of Wandering the Campus is 9.
The sarea of Wandering the Campus is "Campus";
campuswander is a list of numbers that varies.
campuswanderfight is a number that varies.
when play begins:
	add Wandering the Campus to badspots of furry;

Instead of resolving a Wandering the Campus:
	if guy is banned and 1 is not listed in campuswander, add 1 to campuswander;
	if hermaphrodite is banned and 2 is not listed in campuswander, add 2 to campuswander;
	if hermaphrodite is banned and 3 is not listed in campuswander, add 3 to campuswander;
	if girl is banned and 4 is not listed in campuswander, add 4 to campuswander;
	if hermaphrodite is banned and 5 is not listed in campuswander, add 5 to campuswander;
	if guy is banned and 6 is not listed in campuswander, add 6 to campuswander;
	if guy is banned and 7 is not listed in campuswander, add 7 to campuswander;
	if guy is banned and girl is banned and hermaphrodite is banned:
		say "     Travelling across the completely unpopulated campus, you have to wonder why you're even bothering to come here.";
	if number of entries in campuswander is 7, say "     You have an uneventual passage across the campus.";
	let T be a random number between 1 and 7;
	while T is listed in campuswander:
		increase T by 1;
		if T is 8, now T is 1;
	if T is 1:
		say "     Your wandering across the campus is interrupted as you hear a loud voice call out.  Looking over, you spot a large, muscled wolf in a wrestling outfit.  He's set up an impromptu ring beside the building you just passed.  'Ahh!  My alma mater!  It's good to be back,' he says.  'I should be able to have a few good matches here,' he says, looking around.  You try to sneak away, but he spots you.  'You should do fine for a warm-up match.'";
		challenge "Wrestling Wolf";
		add 1 to campuswander;
	if T is 2:
		say "     Your wandering across the campus is interrupted as an athletic puma herm comes rushing out from one of the buildings, plowing into you.  After a brief scuffle, you push her away and try to back off, but it's too late; she's already fixed her attention onto you.  Licking her muzzle as her cock starts to engorge with growing arousal, whatever she was running to or from completely forgotten in the face of her sexy prey.";
		challenge "Cougar";
		add 2 to campuswander;
	if T is 3:
		now campuswanderfight is 1;	[minor description/scene edits]
		say "     As you travel the campus, you hear the rustle of the hedgerow beside you moments before a large, striped feline comes pouncing out of it at you.  You barely manage to avoid this sneak attack, but are now facing this large tigertaur that's found her way to the college.  Perhaps she succumbed to her infection after making it here.";
		challenge "tigertaur";
		now campuswanderfight is 0;	[minor description/scene edits]
		add 3 to campuswander;
	if T is 4:
		say "     Your travel across the college grounds is interrupted as a red kangaroo girl bounds onto a nearby car, then off again, moving to bar your path with a look of lustful excitement in her eyes.";
		challenge "red kangaroo";
		add 4 to campuswander;
	if T is 5:
		say "     A large wolf creature leaps out from a broken window on one of the buildings.  Shi growls toothily at you as shi rises up from all fours to stand upright, showing off hir herm body to you.  Shi looks you over with a hunger that is wholely carnal in nature.";
		challenge "Painted Wolf Herm";
		add 5 to campuswander;
	if T is 6:
		say "     As you're trying to move across the campus in search of what you need, you are cut shot by what you thought was a passed out creature rising to his feet as you get close.  The snow leopard moans and wipes his brow, staggering a little.  'Aww man, where's the beer?  I could really use another drink,' he says, panting at the heat.  Licking his lips as he looks you over, he eyes your [if breast size of player > 0]tits[otherwise]crotch[end if] and licks his muzzle, intent on using you to slake his thirst.";
		challenge "Snow Leopard";
		add 6 to campuswander;
	if T is 7:
		say "     Preparing to cut across a large, open area on the campus, you look around carefully, wary of any hostile creatures which may spot you.  Not finding any, you make a dash for it, still scanning from side to side.  But your attempt is thwarted when you hear something above you moving in quickly.";
		challenge "Bald Eagle";
		add 7 to campuswander;
	now battleground is "void";		[prevents a random fight, as these are replacement random fights]
	if number of entries in campuswander is 7, now Wandering the Campus is resolved;


Campus Events ends here.