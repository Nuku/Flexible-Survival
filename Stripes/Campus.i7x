Version 1 of Campus by Stripes begins here.

"Adds a college campus area w/adjoining sports venue for Flexible Survival"


Section 1 - Event Locating the Campus

Table of GameEventIDs (continued)
Object	Name
Reaching the College	"Reaching the College"

Reaching the College is a situation. The level of Reaching the College is 6.
The sarea of Reaching the College is "Outside".

Instead of Resolving a Reaching the College:
	say "     Your meandering path through the city brings you into some new territory. What was previously blockaded by monster activity and traffic accidents has been circumvented by following a few footpaths you'd missed earlier. Exiting from one of these, you step into an area that's a little less densely packed and has some patches of green between the buildings. Just as you're recogn-[line break]";
	say "     'Think fast!' comes the yell from one side and you turn to see a brown blur flying at you!";
	WaitLineBreak;
	let bonus be (( perception of Player + dexterity of Player minus 20 ) divided by 2 );
	let dice be a random number from 1 to 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
	if bonus + dice > 20:
		say "You quickly snatch the flying football from the air with both hands before it can bash you in the head. It was a very powerful throw, but you manage to hold on and quickly tuck the ball to your chest. 'Nice catch,' someone calls you. 'Over here, I'm open.' Looking up, you spot a pack of gorillas in football gear charging at you, some running, but most moving on all fours. Looking over at the one who called out, you see him and another gorilla moving in fast outside of his line of sight. You signal with a quick tilt of your head and then throw the ball off to his right, outside of the would-be interceptor's reach. Snagging the ball, the player makes a run for it with the ball cradled to his chest. The others, seeing the completed pass, turn and charge after him, saving you from getting trampled.";
		increase score by 20;
		say "     Leaning against one of the buildings, you watch the gorilla football players running around the corner then take a look around again.";
		now Resolution of Reaching the College is 1; [Caught ball easily]
	else if bonus + dice >= 14:
		say "You are startled, but manage a few quick steps back to catch the football in your arms. It was a very powerful throw that leaves you a little winded from the force of it, but you've got it. Looking up, you spot a pack of gorillas in football gear charging at you, some running, but most moving on all fours. 'Over here, man,' comes the cry from one side and you spot another gorilla there with his arms up. 'I'm open,' he says. You toss it to him only to have another speedy primate leap in front and body check him to the side to steal the ball. Holding it in one meaty, hand-like foot, he charges off in a new direction with it. The group turns quickly and charges off after the ball, saving you from getting trampled.";
		increase score by 5;
		say "     Leaning against one of the buildings, you watch the gorilla football players running around the corner then take a look around again";
		now Resolution of Reaching the College is 2; [Caught ball just]
	else:
		say "You don't react in time and the football strikes you rather hard in the head, then bounces off. 'Aww man, fumbled,' the same, burly voice cries before there is a heavy thundering. As your vision is just starting to clear, you get bowled over and trampled by a pack of gorillas in football uniforms chasing after their ball. Their big, heavy hands and feet stomp over you, ignoring you in an attempt to complete the play. By the time you manage to get up after that rough treatment, you can see them continuing on, one of them throwing a pass to someone else around the corner, restarting the whole thing.";
		decrease score by 10;
		SanLoss 5;
		now HP of Player is 1;
		say "     Trying your best to ignore your aches, you lean against one of the buildings and look around again.";
		now Resolution of Reaching the College is 3; [Did not catch ball]
	say "     Your travels have lead you to the city's college campus. Built beside a major sporting arena, the college's main focus is its sports program, though there are other programs and classes available, you recall. While you never attended college here, you know they have several teams, including football, baseball, track and field and many others. And if those big gorillas are any indication, it looks like there'll be plenty of powerful creatures running around here.";
	move player to the College Campus Entrance;
	now battleground is "void";
	now College Campus Entrance is known;
	now Reaching the College is resolved;


Section 2 - Tenvale College Campus

Table of GameRoomIDs (continued)
Object	Name
College Campus Entrance	"College Campus Entrance"

College Campus Entrance is a room. It is fasttravel. It is private.

The description of College Campus Entrance is "[campusdesc]".

to say campusdesc:
	say "     Tenvale College stretches out before you. The institution is wedged into a section of the city that has grown denser around it, giving the fairly open and green campus a refreshing contrast to the rest of the surroundings. Renowned for its strong sports program, you know that there are multiple large sporting locations on the edge of the campus, even though you can't see them from right here, due to various other buildings all around. To the northwest, northeast, east, and west are walkways that lead to other parts of the campus, cutting through the grassy expanse around you. Another pathway leads straight north, to a fountain where you see multiple students hanging out, clearly on free time.";
	say "     Since it's summer, the number of students on campus is much lower than during the school year, but there are still a number of people around from the activity you can see. Certainly, there's the usual piles of scattered clothes and messy cum stains strewn about on the lawns, but the immediately visible residents appear to have taken their transformations in stride, seemingly going about their normal business as they would have before. An interesting approach certainly, given that on the campus parking lot to your south, several overturned cars lie scattered and strewn about by one or another of the bigger creatures roaming the city, and you can make out damage to this or that building as well.";

Campus Grounds is a door. "To the south is an unobstructed path leading further on campus." It is dangerous.

Campus Grounds is south of College Campus Entrance.
Exploring the Campus is south of Campus Grounds.

The marea of Campus Grounds is "Campus".

the scent of College Campus Entrance is "[one of]You catch a whiff of sweat and arousal[or]You notice the strong scent of rabbits[or]Like elsewhere in the city, the scent of sex lingers in the air[at random].".

[Room Declaration]
College Walkway East is east of College Campus Entrance.
College Walkway East is southwest of Dorm Street.
College Walkway East is northwest of Greek Street.
College Walkway East is southeast of College Walkway Northeast.
The description of College Walkway East is "[campuseastdesc]".

to say campuseastdesc:
	say "     The pathway you're on is rather well kept for a campus during a nanite apocalypse. Sure, there's stray pieces of clothing but it looks like someone mows the grass regularly. Nevertheless though the place still smells like sex, which is to be expected. To your west you see the entrance to Tenvale College with its parking lots and everything. To your southeast you see frats in the distance and upon closer examination spot a sign that says 'Greek Street'. You muse that it's aptly named. To the northeast is a different set of buildings, specifically what looks to be the housing district. Just like the fraternities, it too has a justifiable name, 'Dorm Street'. Lastly, to your northwest you spot another pathway that leads somewhere else.";

[Room Declaration]
Greek Street is southeast of College Walkway East.
The description of Greek Street is "[greekdesc]".

to say greekdesc:
	say "     As suspected of a street with nothing but fraternities and sororities it is littered with cups, underwear, panties, and all sorts of trash. Beyond that you can also spot a few people passed out drunk on the grass in front of a lot of the buildings. While you'd love to explore all the various sororities and fraternities, you have no clue which ones are safe to enter. So, personally you feel that it is better for you to have a look around the campus to see if you can find information on the various groups at the college.";

[Room Declaration]
Dorm Street is northeast of College Walkway East.
The description of Dorm Street is "[dormstreetdesc]".

to say dormstreetdesc:
	say "     The first thing that catches your eye as you approach the strip of road that holds the student housing is the sign itself. It appears that someone has tried to scratch out the r in dorm so as to make it say Dom, something that makes you chuckle out loud before you direct your attention elsewhere. Compared to the rest of the campus, Dorm Street is a lot cleaner, only noticing maybe one or two pieces of stray clothing on the grass. The only building here that catches your attention is to your east, a dorm that seems to be lived in, if the lights in the windows say anything. If you wish to leave the area, you could always head back southwest, back to the walkway you came in from.";

[Room Declaration]
Tenvale College Dorms is east of Dorm Street.
The description of Tenvale College Dorms is "[collegedormdesc]".

to say collegedormdesc:
	say "     The dorm hallway is rather well kept for a building during an apocalypse and if you didn't know any better, you'd think that said apocalypse never happened. First and foremost you can spot random people talking happily amongst each other, not acting upon the baser urges that everyone else in the city have already acted upon. Next, there are various cork boards with club recruitment posters pinned to them. While they could be old versions, upon closer look you notice that they've been redrawn to include the new looks of each clubs, an example being the football team's wolfmen. Beyond that you can see that various rooms are occupied by people but figure that it'd be best to find someone you know who has a room rather than randomly searching each and every room. If you wish to leave you could always return to Dorm Street by going west.";

[Room Declaration]

Table of GameRoomIDs (continued)
Object	Name
Richard's Room	"Richard's Room"

Richard's Room is a room.
The description of Richard's Room is "[richardroomdesc]".

to say richardroomdesc:
	say "     The satyr boy's room is what you expect of a college student. Plastered all over the walls are lewd pictures of naked women and men, however upon closer examination you spot posters of male couples fucking that look to be recent acquisitions. You muse that Richard's recent goat changes appear to have enhanced his various desires. Turning your attention from the posters you notice there's various items on the floor from a football to stray jock straps to even a stray dildo. Out of the entire mess the only things that look to be neat are his bed which is covered in dark blue bedsheets and blankets and his computer area which is clean of junk.";

[Room Declaration]
College Fountain is north of College Campus Entrance.
College Fountain is south of College Administration Building.
College Fountain is west of College Walkway Northeast.
College Fountain is east of College Walkway Northwest.
The description of College Fountain is "[fountaindesc]".

to say fountaindesc:
	say "     The fountain area appears to be a bustling center of activity. There is quite a number of people hanging out at the center of the campus. While there is one or two couples having sex out in the open, most of the people are just sitting and chatting with their friends. The fountain itself has random gunk in it but it looks like the campus staff clean it on a daily basis, if the person with the uniform and bucket says anything. Overall the location appears to be a nice place to spend time with your friends or have a romantic date.";

[Room Declaration]
College Administration Building is north of College Fountain.
College Administration Building is northwest of College Walkway Northeast.
College Administration Building is northeast of College Walkway Northwest.
The description of College Administration Building is "[CABdesc]".

to say CABdesc:
	say "     The administration building is rather bright and filled to the brim with motivational posters. In your personal opinion you feel as if the entire thing is extremely corny. But then again to be honest, they [italic type]are[roman type] trying to recruit new students. Though you swear that one of those posters is new and is encouraging sex. Ignoring the weird ass posters for a second, the administration area is rather bland otherwise. There is a desk in the center of the room with ropes making a line for people to stand in. You assume that this is where people go to get registered.";

[Room Declaration]
College Walkway Northwest is northwest of College Campus Entrance.
College Walkway Northwest is southeast of College Belltower.
College Walkway Northwest is west of College Fountain.
College Walkway Northwest is southwest of College Administration Building.
College Walkway Northwest is northeast of College Walkway West.
The description of College Walkway Northwest is "[campusnorthwestdesc]".

to say campusnorthwestdesc:
	say "     The pathway you're on at the moment is littered with boxers and panties as well as wet spots that you swear is cum stains. If you didn't know better you'd think that there had been an orgy on this walkway. Ignoring the disarray of the area itself you take a look around. You can see to your east the fountain where in the distance you notice people hanging out. To the northeast is the Administration Building where people can go to register. Lastly to the northwest is the belltower of the college. Lastly, to your southeast is the college's entrance.";

[Room Declaration]
College Belltower is northwest of College Walkway Northwest.
The description of College Belltower is "[belltowerdesc]".

to say belltowerdesc:
	say "     The belltower seems to be the oldest building on the campus. Judging by the people hanging around, it seems to be the prime location for winged college students. On the ground, there is a mix of various species, but as mentioned earlier it's primarily the location for people with flight. If you look upward you can see some of the students flying up high to a location that you have no idea of. Perhaps you can look around campus for information on what's up there, although you might know someone who has an idea of what is, maybe someone who is kind enough to tell you.";

[Room Declaration]
College Walkway West is west of College Campus Entrance.
College Walkway West is southeast of Lecture Street.
College Walkway West is northeast of Athletic Street.
The description of College Walkway West is "[campuswestdesc]".

to say campuswestdesc:
	say "     The concrete walkway is not as messy as the others in the sense of clothes everywhere. Rather instead there appears to be a lot of different sports equipment all over the place as well as some people who look to be studying with their friends. The explanation for this is very much straightforward. For one, to the southwest is the location of the athletic departments, which is marked by a sign reading 'Athletic Street'. In the distance you can see many people practicing sports but you are not close enough to see exactly what. Secondly, to the northwest is the location of all the lecture halls, the street aptly named 'Lecture Street'. If you wished to go elsewhere then you can either head northeast to another walkway or east to the campus entrance.";

[Room Declaration]
Athletic Street is southwest of College Walkway West.
The description of Athletic Street is "[athleticstreetdesc]".

to say athleticstreetdesc:
	say "     The street that holds the athletic departments has multiple groups of people exercising from the archery club to the football team to the soccer team. There are multiple buildings all over the place but you're not entirely sure where to go. It may be best to look around the campus for members of the various teams and see if you can gain information about the various members that way. After all you don't think you'd want to accidentally walk into an area while people are practicing and possibly get tackled to the ground.";

[Room Declaration]
Lecture Street is northwest of College Walkway West.
The description of Lecture Street is "[lecturestreetdesc]".

to say lecturestreetdesc:
	say "     The Lecture Street looks to be the cleanest outside part of the campus by far. There is absolutely no lost clothing, no cum stains, nor anybody fucking like rabbits on the lawn. Rather, the area appears to solely be for the students to hang out and study or go to class. Although, despite that, it is difficult to tell which lecture hall teaches what, so it'd be best if you looked around campus for other students in order to figure out where to go. It may also help to possibly enroll at some point for other classes.";

[Satyr Frat Dummy Room]

Table of GameRoomIDs (continued)
Object	Name
Satyr Frat Dummy Room	"Satyr Frat Dummy Room"

Satyr Frat Dummy Room is a room.
The description of Satyr Frat Dummy Room is "";

[Spartan Dummy Room]
Spartan Dummy Room is west of Lecture Street.
The description of Spartan Dummy Room is "";

[Room Declaration]
Tenvale College Library is northeast of College Walkway Northeast.
The description of Tenvale College Library is "[tenvalelibrarydesc]".

to say tenvalelibrarydesc:
	say "     The library is rather large, bigger than the one at the bunker. There are rows upon rows of books, though you feel like you should have expected this, as Tenvale College is a private college funded by a lot of money, or at least it was before the nanite apocalypse. You see students sitting at various tables, studying for classes it appears. Though, by the noise of moaning in the background and what sounds like balls slapping against someone's ass there is more than just class work being done. Maybe at some point you'll run into someone who takes residence in this place?";

[Room Declaration]
College Walkway Northeast is northeast of College Campus Entrance.
College Walkway Northeast is east of College Fountain.
College Walkway Northeast is southeast of College Administration buildings.
College Walkway Northeast is northwest of College Walkway East.
College Walkway Northeast is southwest of Tenvale College Library.
The description of College Walkway Northeast is "[campusnortheastdesc]".

to say campusnortheastdesc:
	say "     The walkway is clean but not completely, with stray pieces of clothing. Due to the area being close to the library, which is northeast of here, there are many people who are reading books, or using them to study out in the nice weather. Of course, on top of that you can spot some soon-to-be students filling out admissions paperwork on the grass, as the administrations building is northwest of here. To your west you can hear running water, which you expect to be the fountain. To the southeast is another pathway while to the southwest is the entrance to the college.";

Campus ends here.
