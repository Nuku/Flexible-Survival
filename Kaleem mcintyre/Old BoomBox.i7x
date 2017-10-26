Old BoomBox by Kaleem mcintyre begins here.


[	Section 0 - Table of Game Objects

Table of Game Objects (continued)
name	desc	weight	object
"old boombox"	"An old jam machine that somehow or another works without power."	10	old boombox

old boombox is a grab object. It is part of the player.  It is not temporary.

instead of sniffing old boombox:
 say "The faint scent of good old times seems to waft around the old jam machine. Memories of days gone by, some of them before your time, flitter through your head as you sniff the machine in question. For some reason though, that doesn't bother you much.";

Instead of using the old boombox:
	say "Looking over the old styled machine you find yourself wondering what flavor of music would be good to listen to right now. There are several switches, all with certain types of music on them, so you have options.";
	say "[musicsession][line break]"; 	]



Section 1 - Old BoomBox

Old Record Store is a situation.
The sarea of Old Record Store is "Outside".

Instead of Resolving a Old Record Store:
	say "Walking along and scouting for danger around every other turn, you find your steps taking you to someplace that you aren't particularly familiar with. Surprised by the fact that your body has suddenly gained an awareness all its own, you don't think to stop yourself as you follow an unseen path to an old music store that looks as though it has seen much, much better days. Even before the so-called apocalypse, you don't actually remember having seen a music shop in the neighborhood where you lived, not even in the big city really.";
	say "After ipods, cell phones and the likes started to come out and the internet became a hospice for people pirating bootleg music via unsecure web links, music stores like this one had become a relic of a past no one remembered or cared about.";
	WaitLineBreak;
	say "A queer smile slips across your [facename of player] face as you make your way over to the window of the shop. Trying to peek to the best of your ability, you can't really get a good look of what's inside of the building, despite having restored power to the city. Grunting and then shrugging, you prepare to turn away from the music store when you hear the telltale -click- of the front door being opened. Hastily, you crouch down to get on your guard and wonder if this is about to turn into some kind of devious mutant trick.";
	say "When nothing happens after several seconds, you feel your nerves start to calm and your muscles unclench as a sense of safety washes over you. Not knowing what's going on here, you find yourself wondering if you should take a chance and go into the darkened storefront.";
	say "     [bold type]Should you go in?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		say "'Nothing ventured, nothing gained', someone once told you, and you can't help but think that said person might have been right for once. Taking a deep breath to draw up some confidence, you make your way over to the opened door, pull the barrier open, and then take a few timid steps inside. You instantly find yourself swarmed with the sounds of a weird style of music playing -- a strange mix of bluegrass and acid jazz that somehow seems to work -- as well as whispered words from unseen people having some sort of important discussion. At least you would guess the argument is significant by the tone of the utterances.";
		WaitLineBreak;
		say "Eyes swiftly tracking the area of the store from left to right and then up to down, you find yourself growing very confused when you don't actually see anybody. The lights are flicking on above you, illuminating the surrounding area, yet this is kinda confusing since it didn't look like this was so from the outside. A trick of the light perhaps?";
		Say "Despite this, however, the whispers seem to grow somewhat quieter around you, as if your presence has become an inquiry to those unseen. Not believing in ghosts, since no such things could possibly exist, you wonder if this is some kind of strange mutant ploy. That's when the screech of a record needle scratching across a vinyl surface causes you to hiss in pain.";
		say "Grunting in annoyance, you shake your head, wanting desperately to forget that noise ever happened, before you see a flicker from the back room that draws your attention. Not knowing what to do, you find yourself at the crossroads of yet another decision.";
		say "     [bold type]Should you go in or should you turn tail and flee?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go in.";
		say "     ([link]N[as]n[end link]) - Turn tail and flee.";
		if player consents:
			LineBreak;
			say "Deciding to bite the bullet just one more time, you go for the backroom to check to see if someone is in there. There's no way this place can be totally empty; that would defy the most basic form of logic there is -- cause and effect -- as somebody had to have opened the front door to the store for you to get in here. Marching forward, with your shoulders pushed out in front of you and your chest puffed up like a preening bird, you convince yourself that you're going to straighten out whatever practical joker is trying to be funny with you! What you find when you shoulder the door to the backroom open is...  nothing.";
 			WaitLineBreak;
			say "Well not exactly nothing, per say. Taking a look around the room, your eyes see that the surrounding area is littered with albums and CD's and... lo and behold... tapes! You don't think you've actually seen a cassette tape in the last five or ten years! Your eyes nearly bulge out of your head as you realize the treasure trove that you've stumbled upon. Whoever has left this place unattended is really doing himself a disservice as s/he's got so much to steal in here that it barely makes any sense.";
			say "Shutting the door behind you and then walking around in awe, your mind slowly begins to ramble through your somewhat foggy memories as you try and recall all of the hit artists that are collected here in this place. Most have long since faded from stardom, but more than a few continue to shine brightly, even in the dimly lit room with the fifty watt bulb flickering on above you.";
			say "The whispers, which you can still hear, despite them being somewhat muffled by the closed door, slowly grow louder as you place your fingers over and across the casings of many of the cassettes. Not really sure why you do it, you find your fingers tracing over two cassettes out of the hundreds present. Both tapes bear the vocals of a particular male and female artist, respectively, that you remembered being enamored with a long time ago.";
			WaitLineBreak;
			say "Taking the tapes and then flipping them around onto the back to read the songs, just to see if you remember them all correctly, your eyes jump when you hear a radio come on all of a sudden. It is putting out what you can tell should be the local news, but you know there's been no radio broadcasts since this whole madness started.  The weather and time seem accurate, making you scan around the room to again search for whoever is behind all this.  Casting your sights around to see where the voice is coming from, you find your gaze narrowing down to a small table hidden from view off into the left corner of the room.";
			say "Again, you find yourself confused as you wonder what the hell is going on here. First the spooky shop with the self opening door, the whispers, the music and now the news. Had you not known any better you could almost swear that someone is trying to get your attention. Laughter bubbles up out of your throat as you find the hilarity of the situation too much to stand. The slight crackle of fear and insanity colouring your hilarity must be in your head, you reason, as you are NOT afraid right now. Nope. No sir. Calming your laughs down into giggles and then into quiet chuckles, you pull yourself over the table to have a look-see at what's making all the ruckus.";
			WaitLineBreak;
			say "What you find is an old boombox staring up at you, almost as if in longing for your presence. The old fashioned machine is big and clunky, though nothing compared to your bedroll, with switches and knobs and the likes which signal its age. However, you do happen to note that the thing has a CD player attached to the top of it, so the machine can't be all that old. You shake your head as you turn away from the music maker, but soon you have to look back as you could have just sworn that you heard your name coming from the thing.";
			say "Listening very hard, you almost have to strain to hear anything as the volume on the old boombox quickly silences itself. Pulling back to tilt your head in befuddlement, a scowl soon covers your [facename of player] face as you promise that you're going to make whoever is pulling this joke off on you pay when you find them. Whirling away from the jam machine, you head back over to the other side of the room to replace the cassettes that you have in hand. Just as you are about to set the twin tapes back, the boombox suddenly pumps up the volume loud enough that you nearly jump up onto the ceiling.";
			WaitLineBreak;
			say "Gritting your teeth, once you come back down to earth, you figure that enough is enough! Walking over to the old boombox and then snatching the machine up, you switch it off and stomp your way out into the front and then shout for someone... ANYONE... to come out and get this little joke over with. Silence answers you. Not even the whispers from before can be heard as you look around desperately for a store clerk, manager or somebody to come and tell you what's going on.";
			say "No one ever does.";
			WaitLineBreak;
			say "Not knowing what's going on, but not liking this craziness anymore, you decide to split while the getting's good. Rushing out of the front door, the old boombox in hand, you make your way down the street and back to the bunker at top speeds. Behind you, the door to the music shops quietly shuts and then locks itself, but only after the figure of an old man walks by the window. Obviously, you've just been become the butt of someone's elaborate prank... right?";
			now BoomBox is in the Bunker;
			now battleground is "void";
			move the player to the Bunker;
			now Old Record Store is resolved;
		else:
			LineBreak;
			say "You get the creeps from this place and decide to go back home, or to the bunker at least. The whispers around you seem somewhat saddened by your departure and the music playing in the background slows down until it finally falls silent. You don't notice any of this as you're out the door and down the street before the local mutants can spot your dust trail. Not that you're scared of course. Behind you the door to the music shop closes with an audible click.";
			now Old Record Store is resolved;
	else:
		LineBreak;
		say "Deciding to err on the side of caution, you spin on your heel and then march straightaway from the creepy music store. And though you don't notice it during your posthaste retreat, another -click- resounds throughout the air, the building's door having shut tight once again.";
		now Old Record Store is resolved;



Section 4 - Playing Music

Boombox is a object.
It is fixed in place.

The description of BoomBox is "An old jam machine that looks as though it had once been something very popular. Strangely enough, and despite the age of the machine, there is little wear and tear on the outside covering of the device. Perhaps whoever owned it kept the machine in a secure place so as to make sure that it wouldn't get damaged? Even more strange, the music player works... without power. Maybe if you pressed [bold type]play[roman type] the machine might start to work?".

instead of sniffing BoomBox:
 say "The faint scent of good old times seem to waft around the old jam machine. Memories of days gone by, some of them before your time, flitter through your head as you sniff the machine in question. For some reason though, that doesn't bother you much.";

Instead of using BoomBox:
	say "[bold type]Play[roman type]";

BoomBoxPlay is an action applying to nothing.

Understand "play" as BoomBoxPlay.
Understand "music" as BoomBoxPlay.
Understand "turn on" as BoomBoxPlay.

Check BoomBoxPlay:
	if BoomBox is in the bunker and the BoomBox is not visible, say "Want music, go to the Bunker! :D" instead;
	if BoomBox is not in the bunker, say "You have nothing to play." instead;

Carry out BoomBoxPlay:
	say "Looking over the old styled machine you find yourself wondering what flavor of music would be good to listen to right now. There are several switches, all with certain types of music on them, so you have options.";
	say "[musicsession][line break]";

musicmessage is a text that varies.

to say musicsession:
	say "Today you feel like some...";
	wait for any key;
	sort the table of Music Selection in sortorder order;
	change the current menu to table of Music Selection;
	carry out the displaying activity;
	clear the screen;
	say "[musicmessage]";
	wait for any key;
	try looking;

Table of Music Selection
title					sortorder		toggle
"Jazz"					1		musiclisten rule
"Tango"					2		musiclisten rule
"R&B"					3		musiclisten rule
"Rock and Roll"					4		musiclisten rule
"Ocean"					5		musiclisten rule
"Insert tape A"					6		musiclisten rule
"Insert tape B"					7		musiclisten rule
"Off"					100		musiclisten rule
with two blank rows.


This is the musiclisten rule:
	choose row current menu selection in the current menu;
	if title entry is "Jazz":
		now musicmessage is "     Looking over the old jam machine, you press the [italic type]jazz[roman type] button. Slowly, you find the soft sounds of trumpets and bass guitars and pianos rushing out at you in a soothing, almost laid back kind of rhythm. Without you noticing them doing so, your feet begin tapping in time with the smooth music as you bob your head, imagining yourself sitting back on a sofa and watching the sun set with a glass of wine in your hands.[line break][line break][jazzfriends]";
		follow the turnpass rule;
	else if title entry is "Tango":
		now musicmessage is "     Looking at the knobs on the old jam machine, you find yourself hitting the [italic type]tango[roman type] button and instantly the room is filled with the living sounds of violins, pianos, guitars and flutes all working in time together to fill the bunker with a smooth kind of ballroom-like music. Not really sure how to feel about this, you find yourself swaying with the notes as the instruments slowly work in concert to energize the bunker.[line break]     The feeling that you want to suddenly start dancing around passionately has you nearly shivering when the music takes on a sudden lively flare. You can almost see yourself swirling around while in the arms of a strong male lead as he guides you on the dance floor.[line break][line break][tangofriends]";
		follow the turnpass rule;
	else if title entry is "R&B":
		now musicmessage is "     Looking at the working jam box, you find yourself going over the knobs before finally coming to [italic type]R&B[roman type] and then pressing the button. Like a storm coming in from the sea, the bunker is soon filled with the mournful sounds of rhythmic blues music spilling out into the small area. Going to sit down on one of the cots in the room, you let your head bob in time with the instruments, and you can almost hear someone singing in time with the melody. The music makes you imagine yourself driving down the road in a pop-top car while letting your hair dance in the wind as you speed down the highway.[line break][line break][R&Bfriends]";
		follow the turnpass rule;
	If title entry is "Rock and Roll":
		now musicmessage is "     The sounds of Rock and Roll soon pulse out from the beat machine as you press the button denoted as R&R. The sounds coming from the jam machine are a mix of electric guitars and drums, and you find that it actually takes you a while to get used to this kind of [italic type]noise[roman type] before you can stand the sounds.[line break]     When you do, however, you find yourself imagining yourself around a large number of screaming fans, all cheering for a leather-clad group of musicians working in synch together to jam their hearts out. A slight snap of your hips follow a hop and before you know it you are dancing your own heart out as your blood begins to quicken within your veins. Maybe this isn't so bad after all.[line break][line break][RockandRollfriends]";
		follow the turnpass rule;
	If title entry is "Ocean":
		now musicmessage is "     Pressing the button marked as [']ocean['], you find yourself somewhat confused as you notice that the swaying rhythm of the sea lapping at the shore starts to play out across the room. Instantly, you feel somewhat sleepy and you go over to one of the cots in the room and then start to close your eyes to sleep.[line break]     The instant you shut your eyes, you can see the sights of calm blue waters rushing across clear white sands, while dolphins flipping around up and down inside of these waters. Whales spray water from their blowholes, and you can't help but smile as you suddenly feel so warm and content within yourself. The feeling that someone is calling you makes you arch an eyebrow as you wonder if you had heard right...[line break][line break][Oceanfriends]";
		follow the turnpass rule;
	If title entry is "Insert Tape A":
		now musicmessage is "     Realizing that you [']borrowed['] both of those tapes from the music shop without meaning to, you shrug and think that you'll take them back later before popping one into the boombox and then pressing PLAY. Quietly, the background music of the song plays and you find yourself nodding your head as you recall the song. A man's voice fills up the bunker and soon you are silently mouthing the words to his song in time with the lyrics being sung.[line break]     Old memories come flooding back into you from years ago, and without meaning to you start to sway back and forth while nodding your head around almost drunkenly. Amazing what old music can do to someone. This would be a good time for you to go out and find some music, preferably with a male singer, for you (the player) likes to listen to as well. It would make this scene much better. (Thanks for playing Flexible Survival by the way!)[line break]";
		follow the turnpass rule;
	If title entry is "Insert Tape B":
		now musicmessage is "     Seeing that you've accidentally pocketed both of the cassettes from the old music shop, you smile sheepishly before reminding yourself to go and return them soon. Figuring that you've already eaten the [']poison['] on this one, you shrug as you go over to pop the cassette into the boombox and then hit the PLAY button.[line break]     Like a flash, the sounds of something slightly ambient comes over the speakers of the jambox, and without thinking you let your body move along with the rhythm of the music echoing out at you.[line break]     A woman's voice soon follows the instrument's rhythm, and you laugh before you can stop yourself as her voice just washes over you like a wave. Shaking your hips and singing in time with her, this would be a good time for you (the player) to go out and find your favorite female artist to listen to. It would make this experience so much better for you. (Thanks for playing Flexible Survival by the way!)[line break]";
		follow the turnpass rule;
	If title entry is "Off":
		now musicmessage is "     Not feeling like listening to any music right now, you decide to turn the boombox off. However, what you come to find is that there is no Off button on the machine. What the heck?";
	decrease the menu depth by 1;
	rule succeeds;


To say jazzfriends:
	if Sarah is in the bunker:
		if sarahslut is 0:
			say "     Sarah seems to mildly enjoy the music as she snuggles up onto the cot she has claimed while sighing peacefully at nothing in particular[If Coleen is in the bunker]. Coleen silently moves over to Sarah to snuggle up next to the other husky woman[end if].";
		else:
			say "     You find Sarah coming up over to you to snuggle up while the jazz music plays softly in the background. The husky female seems to enjoy the music as she starts to pant happily while looking up at you with shining eyes. She almost seems to want to ask you to dance, but is holding back for some reason. Maybe because she would feel awkward in her new form? Regardless, you snuggle up close to her as you both listen to the soft rhythms bouncing through the bunker[If Coleen is in the bunker]. Coleen silently moves over to Sarah to snuggle up next to the other husky woman[end if].";
			if sarahpups > 1:
				say "     Sarah's pups all come around to bark and yip before making a circle to surround you and Sarah, almost as if they are trying to contain the feelings that both you and her are sharing right now.";
	If Fang is in the Grey Abbey Library:
		if HP of Fang is 3 or HP of Fang is 4:
			say "     Fang seems quite interested in the music as he comes over to lay by your leg while listening to it. Grumbling softly into the back of his throat, the wolf nuzzles close to you while curling up into a large ball of fur and muscle. You do happen to notice, however, that the wolf's ears are ever tuned towards the door of the bunker. The lupine, no matter how relaxed, is ever vigilant towards his duty to protect his new home.";
		else:
			say "     Fang, not use to hearing music too often, seems a little intrigued by the noise coming from the boombox. Slowly, the feral wolf comes over and then lays down beside your cot to listen to the soft sounds coming from the unfamiliar machine.";
	if skunk kit is tamed:
		say "     The little skunk kit is somewhat amused by the noise as it comes over and then plops down to listen to the smooth jazz.";
	if helper dog is tamed:
		say "     The helper dog seems to appreciate your taste in music as it comes over to lay across your lap. Maybe one of the people it once helped liked this kind of melody? The slight bob of the canine's head seems to give greater validation to this theory.";
	if little fox is tamed:
		say "     The cute little fox you found seems to like the jazz music as it comes over to yip at the jam box while cocking its head from side to side, likely wondering who's making the pleasant noise. You are tempted to grab the cute thing to nuzzle it, but you decide not to bother the vulpine as the other is just having too much fun to disturb right now, especially as it starts to roll around while yipping adorably in front of the boom box.";
	if Elijah is in the Bunker:
		If HP of Elijah is 3 or HP of Elijah is 4:
			say "     Elijah seems to enjoy the smooth melody playing on the boombox and soon begins to hum a tune that is unfamiliar to you. In fact, as you listen a little more closely, Elijah's humming almost sounds... otherworldly.";
	if Alexandra is in the library:
		say "     Coming in to investigate the noise, Alexandra pokes her head inside and stands at the door, keeping an eye on the library in case of trouble while she listens.  She sticks around, listening to the alternatively soothing and bombastic jazz coming from the boombox as she becomes lost in thought.";
	increase humanity of player by 4;
	if humanity of player > 100, now humanity of player is 100;

to say tangofriends:
	if Coleen is in the bunker:
		say "     Coleen seems to like the music flowing throughout the boombox and as she gets up to dance while flipping and twirling herself around with no small amount of skill.";
	if helper dog is tamed:
		say "     Hobo moves over to the platform beside the door to the bunker, sitting there and watching as he seems to listen both to the outside and to the music with an air of appreciation.";
	if cute crab is tamed:
		say "     The cute little crab comes over and soon starts to boogie a path up and down and then back and forth in front the boom box as it dances its own crustacean dance. You find yourself tempted to laugh at the sight of this, but you hold back in order to not hurt the little thing's feelings. Besides, it's really too cute to watch.";
	if Sven is in the bunker:
		if HP of Sven < 30:
			say "     Without asking his permission, you go over to the shy snowmeow and take his paw, pulling him up to join you in dancing.  He's timid and shy at first, but moves with considerable grace.  With such a graceful partner, you pick up the pace, going for fancier and bolder moves.  The kitty follows your lead, allowing you to perform a very energetic and sensual dance with him.  Once you're done, you leave him on his bunk, blushing behind his tail and looking quite happy and excited.";
[		else:
			say "***confident Sven.";]
	if felinoid companion is tamed:
		 say "     Your felinoid companion seems to enjoy the music as he bobs his head while shaking his tail playfully around in the air. Seeing this, you try not to laugh as you find yourself dancing around your felinoid companion. The rhythm your feet make you move to quickly has both you and your feline partner dancing together in time with the melody of the music. This lasts for several minutes, even as the particular song changes, before the felinoid soon tires and then goes off to rest.";
	if Candy is in the bunker:
		say "     Candy seems to enjoy the tango music and soon begins to bounce around the bunker like a rubber ball, despite the melody not having the right rhythm for such energetic movements. This, however, does not stop Candy from doing as he wishes, especially when you join in with him, though more for trying to calm him down than anything else.";
	if Alexandra is booked:
		say "     Coming in to investigate the noise, Alexandra pokes her head inside, growls softly to herself and heads back out, clearly uninterested in what's playing.";
	increase humanity of player by 4;
	if humanity of player > 100, now humanity of player is 100;
	increase libido of player by 2;
	if libido of player > 100, now libido of player is 100;

to say R&Bfriends:
	If Fang is in the Grey Abbey Library:
		if HP of Fang is 3 or HP of Fang is 4:
			say "     Fang pads over to you and then lays his head down onto your lap.  The music seems to have gotten to the other in a strange way as you could almost swear that tears are in his eyes.  Maybe this canine has more soul than you think as you lay a hand down to stroke him across his rugged mane of fur.  Neither of you speak as you just listen to the tunes. You find that words have no place here now.";
		else:
			say "     Fang moves over towards you before plopping himself down to listen to the R&B melody wafting from out of the speakers of the boombox.  By the slow wag of his tail, you can see that the feral creature likes the music very much.";
	If Coleen is in the bunker:
		say "     The rhythm of the melody playing on the boombox puts Coleen to sleep.";
	if Sarah is in the bunker:
		if sarahslut is 0:
			say "     When a firm husky arm snakes its way out around your waist to hold you close, you jump a little, before noticing that it is just Sarah snuggling up against you. Smiling down at the medic, you lay your head on top of hers and let the music simply wash away all of your thoughts. There is no here or now, there is only this moment where you are connected to everything around you by invisible threads. Perhaps especially so to the husky woman next to you.";
		else:
			say "     Sarah makes her way over to you and then leans against your shoulder, her body weighing you down with the weight of her unspoken thoughts and feelings. You turn to look at the female once before smiling and then turning your head back to the boom box.";
			if sarahpups > 0:
				say "     Sarah's pups all come around to lay by their mother while yawning and yipping tiredly before falling right asleep.";
	if little fox is tamed:
		say "     Your little fox companion comes over to nuzzle up against your leg and you smile somewhat reassuringly to the vulpine as you stare down at it warmly.  The small kit yips at you before jumping up onto the cot you're sitting on to nuzzle your side.  The little fox is soon asleep and snoring at you with its fluff tail wrapped around its masked face.  You reach out to stroke the canid's diminutive body as you continue to listen to the music.";
	if house cat is tamed:
		say "     The small house cat comes up to rub around your legs twice before going on to sit by the boom box.  You watch it carefully and then smile as the feline purrs quietly while rocking its head in time with the melody.";
	if Gryphoness is tamed:
		say "     Denise seems somewhat perturbed by this form of music which seems to rival her own voice. However, upon listening to the tunes for a longer period of time and growing accustomed to them, Denise seems to calm down and then quietly whispers in time with the melody.  Soon enough, the gryphoness is almost mimicking the melody perfectly as she closes her eyes while singing in time with song coming from out of the boom box.  You realize that you actually like the blue female's voice just a little more than the music as Denise seems to possess a strange, if not haunting echo to her warbling voice.";
	if skunk kit is tamed:
		say "     The little skunk you saved earlier comes over to you and quickly curls itself up by your leg before falling asleep due to the music.  Obviously, the intensity of the music is too much for the mind of the young mephit.  You snicker somewhat as you watch the little skunk whimper and then kick around in its sleep.  Young or not though, you see that something is getting through that skull of the young one.";
	if Candy is in the bunker:
		say "     Candy seems somewhat put off by this music as he snorts and then goes off somewhere to go bounce up and down in peace.";
	if bee girl is tamed:
		say "     Honey finds herself almost weeping as she comes over to nuzzle herself into your body.  The pitch of the music must be getting to her because her antenna are vibrating slightly.";
	if the cute crab is tamed:
		say "     The small crustacean you found on the beach seems to like the music as he comes over to you and then settles himself under your feet. You'll have to be careful not to step on the other, but a quick pinch of claws will stop you anyway from doing that by accident.";
	if Elijah is in the Bunker:
		If HP of Elijah is 3 or HP of Elijah is 4:
			say "     Your white winged angel seems to find mild amusement in the soft croons playing on the boombox as he comes over to sit beside you while encircling one of his wings around your [bodyname of player] form.";
	if Alexandra is booked:
		say "     Coming in to investigate the noise, Alexandra pokes her head inside and stands at the door, keeping an eye on the library in case of trouble while she listens.  She sticks around, listening to the music for a time.  When one song takes on a more mournful tone, she seems to get sad, and then - having gotten sad - she gets angry and storms out.";
		now lastfuck of Alexandra is turns + 8;
	increase humanity of player by 4;
	if humanity of player > 100, now humanity of player is 100;

to say RockandRollfriends:
	if Sarah is in the bunker:
		say "     You find yourself getting down with Sarah as you and she dance together while shaking your tails in time with each other. Listening to the other bark and then whip her head around as though caught in a frenzy, you have to laugh as you notice the once somewhat uptight female letting herself go in a therapeutic release of inhibitions.";
		say "     Brushing up beside her to feel Sarah's furry body rolling against your own, you suddenly wish that both of you were in a normal bar doing this while getting drunk off of shared vodka and rum while dance lights flash around both your bodies. Maybe when all of this is over you and she could have your own private dance session together. Whether that will be with the husky female dancing on your lap or in your bed, well, the jury is out on that one.";
		if sarahpups > 0:
			say "     All around you, the puppies seem to be watching their mother curiously as the older female just moves and sways without her usual flustering or timid mannerisms embellishing her actions. Some of the pups try and mimic the older husky's maneuvers, but in the end they mostly seem to just fall over each other cutely.";
	If Coleen is in the bunker:
		say "     At hearing the music playing on the boombox, Coleen proceeds to rock the house as she howls and swivels her body while dancing with the beat of the drumset and electric guitars being played.";
	If Fang is in the Grey Abbey Library:
		if HP of Fang is 3 or HP of Fang is 4:
			say "     Fang seems to have woken up from his inopportune nap as the wolf rises onto his feet and then pads over into your direction. Seeing that he's not quite happy about being so rudely interrupted by the annoying sounds, you have to block the other off from the boom box as you can clearly see the other wanting to destroy the machine. It takes some bit of struggling before the lupine relents and then goes off somewhere else to not have to listen to the noise. You sigh softly at this. After all, a win is a win in your book by any accounts.";
		else:
			say "Fang doesn't seem to care for this particular type of music as he pops his head into the Bunker and then pops himself back out to return to his post.";
	if Alexandra is booked:
		say "     Coming in to investigate the noise[if fang is booked] when Fang exists the bunker angrily[end if], Alexandra pokes her head inside.  Hearing the energetic, frenetic rock and roll music, she throws herself into dancing.  Clearly not much of a dancer, she makes up for it with energy and wild abandon, throwing herself most of all into the songs about wild youth, sex and rebellion.  It seems to get her quite worked up and she's got a hungry look in her eyes by the end of it.";
		now lastfuck of Alexandra is turns + 8;
	if Sven is in the bunker:
		if HP of Sven < 30:
			say "     You pull Sven up from his seat to get him to join in for a while.  He's a little shy about it, but dances very well, moving with feline grace.  Soon he's rocking his hips, swaying his tail and dancing up a storm.  In the excitement, he reaches over and gives your rump a pinch.  Surprised at his own boldness, he blushes brightly and dashes back to his bunk, to hide behind his tail.  But despite that, you can tell he's had a really fun time.";
[		else:
			say "***confident Sven.";]
	if Candy is in the bunker:
		say "     Feeling the rhythm getting to him, Candy moves around like a spring as the beat of the song coming from the jam box makes him somewhat of a loose cannon. Well, more than he already is as he spins around while skipping and then bobbing and weaving at the same time[if cocks of player > 0].  He even grinds himself back against your lap with a girlish giggle during one song[end if].";
		say "     Nothing about his movements can be considered normal, but at the same time that gives the other an appearance of true freedom as he lets his effeminate body just roll around as it wishes.  You chuckle some as the raccoon comes over to you to circle you twice before bumping up into you and then moving off again.  Truly a carefree spirit if there ever was one to be found, you think silently before going back to your own dancing.";
	if house cat is tamed:
		say "     The little tabby house cat you found earlier rolls around the music box before purring and shaking its head somewhat wildly while yowling happily. You chuckle at this as you wonder if his former owner listened to this type of music a lot.";
	increase humanity of player by 4;
	if humanity of player > 100, now humanity of player is 100;
	increase libido of player by 15;
	if libido of player > 100, now libido of player is 100;

to say Oceanfriends:
	if Sarah is in the bunker:
		if sarahslut is 0:
			say "     At hearing this kind of slow and melodious music, Sarah is quick to come up over to where you are lying down to snuggle up with you.  With her cuddled in close, you find your arm wrapping around her without you thinking about it.  The two of you nuzzle each other as wiry smiles cross both of your faces while sinking into the cool blue music playing around the bunker.";
		else:
			say "     At hearing this kind of slow and melodious music, Sarah is quick to come up over to where you are lying down to snuggle up with you.  Her furry body warms you up quickly and you find your arm wrapping around her without you thinking about it.  The two of you nuzzle each other as wiry smiles cross both of your faces while sinking into the cool blue music playing around the bunker.";
			if sarahpups > 0:
				say "     Sarah's pups encircle both you and their mother as they sleepily start to drift off together, one after another.";
	If Fang is in the Grey Abbey Library:
		if HP of Fang is 3 or HP of Fang is 4:
			say "     Fang slowly comes over to where you are and then curls himself up at your head.  Panting softly, the big male has no problem whimpering at the sounds of the music and then drifting off to sleep as he listens to the music with you.";
		else:
			say "     Fang sleepy pads himself over to you and then curls up to go to sleep.  No muss, no fuss.  Just a large bundle of sleepy wolf curling himself up next to your head.";
	If Coleen is in the bunker:
		say "     Coleen makes her way over to [if sarah is bunkered]where Sarah is and then proceeds to snuggle up with the other husky woman[else]the bunk and sits on the floor beside you, leaning back against the cot[end if].";
	if house cat is tamed:
		say "     The small feline you rescued earlier meows as it moves into your lap to curl up.";
	if bee girl is tamed:
		say "     Honey moves down by your feet to lay down beside you. Her buzzing wings make an interesting backdrop to the ocean shifting almost quietly around the room.";
	if the cute crab is tamed:
		say "     The small crustacean seems to utterly adore this music as it scurries itself back and forth around while [']smiling['] merrily.";
	if felinoid is tamed:
		say "     Your felinoid companion is quick to go over and curl up at the small of your back.  Purring distinctively inside of your ears, you chuckle some as its whiskers tickle you softly.";
	if Candy is in bunker:
		say "     Candy seems to be somewhat offset by this kind of soothing music as the other seems to slink away out of the room.  Maybe he doesn't feel like taking a nap?";
	if Sven is in bunker:
		if HP of Sven < 30:
			say "     The snow leopard seems put off by this music but can't stop from yawning as the ocean sounds have caught him good. He steps closer [if felinoid is tamed]and moves your felinoid companion over to settle himself at your back alongside the other feline[else]and just plops down at your back[end if]. Sven nuzzles up to you and then goes right to sleep. His arms do come around you to hold you somewhat close/possessively though.";
[		else:
			say "***confident Sven.";]
	if little fox is tamed:
		say "     The cute little vulpine swiftly bounds over to you and then curls himself up at the underside of your chin[if Fang is in the Grey Abbey Library].  Fang moves the fox over to lay it next to him however, the other growling somewhat fatherly at the little kit when the vulpine tries to move away[end if].";
	if skunk kit is tamed:
		say "     The little skunk goes to rest on top of your stomach and you can only laugh as you reach up to scratch at the other's black and white furred body.";
	if helper dog is tamed:
		say "     The helper dog makes his way over to you and then settles himself at your feet.  Wagging its tail leisurely, you listen to the other yawn as he goes right to sleep, though his ears always remain perked.";
	if Gryphoness is tamed:
		say "     Denise seems somewhat fatigued as she listens to the soft sounds of the ocean.  Having heard it before, the gryphoness makes her way over to you and then lays by your legs to coo and then snooze.  It's almost cute the way her feathers puff up as she coos and snores at the same time.";
	if Elijah is in the Bunker:
		If HP of Elijah is 3 or HP of Elijah is 4:
			say "     Elijah moves over by your side and snuggles up to you as best he can.  His large and fluffy wings prove to be very nice comforters for your head to rest on.";
	if Alexandra is booked:
		say "     Noticing [if fang is booked]that Fang's not at the door[else]the lack of activity[end if], Alexandra pokes her head inside to see if anything's up.  Hearing the soft music and beach sounds, she rolls her eyes with a huff and heads back out to stand watch.";
		now lastfuck of Alexandra is lastfuck of Alexandra - 2;
	increase humanity of player by 4;
	if humanity of player > 100, now humanity of player is 100;
	decrease libido of player by 18;
	if libido of player < 0, now libido of player is 0;


Old BoomBox ends here.
