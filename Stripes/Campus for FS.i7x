Version 1 of Campus for FS by Stripes begins here.

"Adds a college campus area w/adjoining sports venue for Flexible Survival"


Section 1 - Event Locating the Campus

Reaching the College is a situation.  The level of Reaching the College is 6.
The sarea of Reaching the College is "Outside".

Instead of Resolving a Reaching the College:
	say "     Your meandering path through the city brings you into some new territory.  What was previously blockaded by monster activity and traffic accidents has been circumvented by following a few footpaths you'd missed earlier.  Exiting from one of these, you step into an area that's a little less densely packed and has some patches of green between the buildings.  Just as you're recogn-[line break]";
	say "     'Think fast!' comes the yell from one side and you turn to see a brown blur flying at you!";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0, say "[line break]"; [skips waiting if it's not wanted]
	let bonus be (( perception of player + dexterity of player minus 20 ) divided by 2 );
	let dice be a random number from 1 to 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
	if bonus + dice > 20:
		say "You quickly snatch the flying football from the air with both hands before it can bash you in the head.  It was a very powerful throw, but you manage to hold on and quickly tuck the ball to your chest.  'Nice catch,' someone calls you.  'Over here, I'm open.'  Looking up, you spot a pack of gorillas in football gear charging at you, some running, but most moving on all fours.  Looking over at the one who called out, you see him and another gorilla moving in fast outside of his line of sight.  You signal with a quick tilt of your head and then throw the ball off to his right, outside of the would-be interceptor's reach.  Snagging the ball, the player makes a run for it with the ball cradled to his chest.  The others, seeing the completed pass, turn and charge after him, saving you from getting trampled.";
		increase score by 20;
		say "     Leaning against one of the buildings, you watch the gorilla football players running around the corner then take a look around again";
	otherwise if bonus + dice >= 14:
		say "You are startled, but manage a few quick steps back to catch the football in your arms.  It was a very powerful throw that leaves you a little winded from the force of it, but you've got it.  Looking up, you spot a pack of gorillas in football gear charging at you, some running, but most moving on all fours.  'Over here, man,' comes the cry from one side and you spot another gorilla there with his arms up.  'I'm open,' he says.  You toss it to him only to have another speedy primate leap in front and body check him to the side to steal the ball.  Holding it in one meaty, hand-like foot, he charges off in a new direction with it.  The group turns quickly and charges off after the ball, saving you from getting trampled.";
		increase score by 5;
		say "     Leaning against one of the buildings, you watch the gorilla football players running around the corner then take a look around again";
	otherwise:
		say "You don't react in time and the football strikes you rather hard in the head, then bounces off.  'Aww man, fumbled,' the same, burly voice cries before there is a heavy thundering.  As your vision is just starting to clear, you get bowled over and trampled by a pack of gorillas in football uniforms chasing after their ball.  Their big, heavy hands and feet stomp over you, ignoring you in an attempt to complete the play.  By the time you manage to get up after that rough treatment, you can see them continuing on, one of them throwing a pass to someone else around the corner, restarting the whole thing.";
		decrease score by 10;
		decrease humanity of player by 5;
		now hp of player is 1;
		say "     Trying your best to ignore your aches, you lean against one of the buildings and look around again";
	say ".  Your travels have lead you to the city's college campus.  Built beside a major sporting arena, the college's main focus is its sports program, though there are other programs and classes available, you recall.  While you never attended college here, you know they have several teams, including football, baseball, track and field and many others.  And if those big gorillas are any indication, it looks like there'll be plenty of powerful creatures running around here.";
	move the player to the College Campus;
	now battleground is "void";
	now College Campus is known;
	now Reaching the College is resolved;


Section 2 - Tenvale College Campus


College Campus is a room. It is fasttravel.  It is private.

The description of College Campus is "[campusdesc]".

to say campusdesc:
	say "     Tenvale College stretches out before you.  Wedged into this section of the city that's grown denser around it, the college campus still have some green spaces between its numerous buildings.  The college is renown for its strong sports program, having a large sporting arena on the edge of campus.  This is shared between the city's professional teams and the college ones, though there are also outdoor fields for practice and smaller games.  There is also an olympic-sized swimming pool at the other side of the campus.  The classroom buildings and offices for the various departments and other programs are held in the various other buildings.";
	say "     Since it's summer, the number of students on campus is much lower than during the school year, but there are still several people around from the activity you can see.  Certainly, there's the usual piles of scattered clothes and messy cum stains strewn about on the lawns.  More disturbing, there's also several overturned cars scattered around, smashed as if tossed around.  There's been some damage done to the buildings from rampaging creatures as well, but not as much as in other areas, perhaps because of the increased open space and sports fields for the rambunctious monsters to run around in.";

Campus Grounds is a door. "To the south is an unobstructed path leading further on campus."  It is dangerous.

South of College Campus is Campus Grounds.
South of Campus Grounds is Exploring the Campus.

The marea of Campus Grounds is "Campus".

the scent of College Campus is "[one of]You catch a whiff of sweat and arousal[or]You notice the strong scent of rabbits[or]Like elsewhere in the city, the scent of sex lingers in the air[at random].".


Campus for FS ends here.
