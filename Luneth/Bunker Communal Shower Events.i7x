Bunker Communal Shower Events by Luneth begins here.

[ Energy of Eric (see bunker communal shower event file)             ]
[   0: never showered in the bunker                                  ]
[  40: orc-cocked Eric came on to the player in the shower           ]
[  49: orc-cocked Eric got an ice-cold shower                        ]

Section 1 - Objects

Bunker Shower Knob is an object.
It is in the Communal Shower.
It is fixed in place.
Understand "knob" as Bunker Shower Knob.
the description of Bunker Shower Knob is "[BunkerShowerKnobDesc]".

to say BunkerShowerKnobScent:
	say "     Other than it having a slightly metallic scent, you can also pick up a hint of stale water.";

to say BunkerShowerKnobDesc:
	say "     A simple metal shower knob that can be pulled outward to [link]shower yourself[as]shower yourself[end link]. In the center of the valve, you can see a piece of plastic that has swirls of blue and red, showing which direction to turn the knob to get your desired temperature.";

instead of sniffing the Bunker Shower Knob:
	say "[BunkerShowerKnobScent]";

Showering is an action applying to nothing.

understand "shower yourself" as Showering.
understand "shower myself" as Showering.
understand "shower off" as Showering.
understand "shower me" as Showering.

Check Showering:
	if Bunker Shower Knob is not visible, say "Now how do you want to shower here?" instead;
	if player is in Communal Shower and findwires is not 2 and fixedgens is not 2, say "No water is coming from the shower heads. Seems like the power for the pumps isn't on." instead;

Carry out Showering:
	if Eric is in bunker and (HP of Eric > 41 and HP of Eric < 99) and (TimekeepingVar is 0 or TimekeepingVar is 1 or TimekeepingVar is -7 or TimekeepingVar is -8) and Energy of Eric < 49 and a random chance of 2 in 4 succeeds: [Eric present, orc cocked and non virgin, midnight or early morning, not driven away before, 33% chance]
		say "[EricShower_OrcCock]";
	else: [default shower scene]
		say "     Turning on the shower, you test the temperature of the water with your hand and deciding that it will have to do, you slowly undress and step under the spray. As the water begins to flow over your body, you attempt to let all the stress of the day float away, even if only for a few minutes. After a quick and relaxing shower, you turn the water off again and grab one of the towels stacked up near the entrance, rubbing yourself dry and getting dressed once more. Being clean and comfortable, you feel better in your skin and more like yourself than you've been in a while.";
		SanBoost 5;

Section 2 - Events where an NPC uses the bunker shower
[These serve as mainly player walk-in events or potentially as talk menu options for NPCs.]

Part 1 - Sarah
[See Sarah file in Wahn's folder and check SarahShower variable]

Part 2 - Carl
[See Carl file in Wahn's folder and check CarlShower variable]

Section 3 - Events where the player uses the bunker shower
[These serve as mainly the player using the valve to take a shower and someone either walking in or the player having alone time.]

Part 1 - Eric [Orc-cock Eric]

to say EricShower_OrcCock:
	say "     Turning on the shower, you test the temperature of the water with your hand and deciding that it will have to do, you slowly undress and step under the spray. As the water begins to flow over your body, you attempt to let all of the stress of the day float away, even if only for a few minutes. '[if player is not defaultnamed][name of player]? [end if]What are you doing up so late?' The slurred voice startles you, and you quickly spin around to see who else is inside of the room with you. Rubbing the water out of your eyes, you realize that it's only Eric. You can't help but roll your eyes and smile at the image that the young athlete makes standing there in only his shorts. His hair is in complete disarray, and his eyes are barely open. The sound of the shower must have woken him up, and he came to investigate.";
	say "     Before you can respond to his question, you see the redhead close his eyes and tilt his head back, almost as if he is smelling the air for something. 'Wow, what is that smell?' While he is apparently off in his own little world, you can't resist looking down at his naked torso. After having him drink that orc brew, his body had went through a few changes, namely the green uncut monster in his pants, but overall, he has become much more toned and muscular, not to mention the increase in chest hair. As you watch the muscles of his torso expand and contract with his every breath, you notice that his nipples have become hard nubs. Realizing that you're still completely naked and at this point basically molesting your semi-conscious friend with your gaze, you quickly look up to his face in an attempt to hide your earlier thoughts.";
	WaitLineBreak;
	say "     Eric's eyes eventually open, but what were once bright-blue in color have now shifted to a far more menacing yellowish-green. Your mouth drops open in shock at the sudden change in the young man before you. The expression on his face doesn't even look like him anymore, almost as if something else within has taken over while in his weakened state. Without breaking his gaze from your own, the redhead leans down and slowly begins to pull his shorts down, revealing the rest of his body. Your vision immediately focuses on the thick semi-hard cock that is exposed, watching his orc-meat become harder as the foreskin pulls back further from the pinkish-green head. Without skipping a beat, the man begins to walk up to you in an oddly dominant fashion, and before too long, he is standing directly in front of you, his face only inches away from your own.";
	say "     Casually, Eric's left arm reaches up, and he rests his palm against the wall right behind you. Looking at his face, you notice it distort into an expression that you are not accustomed to seeing on the normally friendly young man's face, one of cocky arrogance. With lightning speed, he leans into your personal space and getting himself soaking wet as well. At first, it seems like he's only breathing on your neck, but eventually you also feel his soft tongue start to glide across your throat. 'Mmmm, you smell like you'd make a good lil['] breeder slut, baby.' You gasp in shock at what Eric just said, seeing as that just doesn't seem like something he would normally say, well besides the [']baby['] endearment at least.";
	WaitLineBreak;
	say "     The term [']breeder slut['] though, that reminds you of the orcs that you've encountered in the city, a phrase that they seem to be very interested in. Before you can think much more about that however, the redhead's right hand comes up to your head and taking a firm hold of your hair, begins to push the rest of your body down towards the floor. You are in too much shock to really struggle or even question him at this point, but once you're fully seated on your knees, you open your mouth to comment on the changes that you're noticing in him, only to have his thick cock smack against your cheek and silence you. While you can't feel the precum that splashed against your face, you can still smell it, the intoxicating aroma almost making you want to dive directly onto his dick and taste him, but some part of you feels that you should hold back.";
	say "     [bold type]Will you submit to the orc-human hybrid?[roman type]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes! You want to service him!";
	say "     ([link]N[as]n[end link]) - No, this isn't right!";
	if player consents:
		LineBreak;
		say "     'That's a good slut, waiting patiently till I give you the privilege of sucking my cock. Now why don't you open your mouth and show how much you really want it?' Almost as if you're being hypnotized, you slowly spread your lips apart and allow your tongue to stick straight out in the hope that it will reach the head of his dick. As the water from the shower hits your face and back, you look up into your friend's face, only to see that same expression and those mesmerizing yellowish eyes looking down at you. 'Good, [boygirl]! Just for that, I think that you deserve a treat, don't you?' Without waiting for your reply, the dominant male quickly sinks his emerald-green cock into your mouth and doesn't stop till he hits the back of your throat.";
		WaitLineBreak;
		say "     You take the opportunity to taste as much of his delicious precum as you can and start to feel strange afterwards, almost as if you've been drugged by his essence on your tongue. 'Alright, baby, you might wanna take a really deep breath.' Heading his advice, you prepare yourself for whatever he plans next. You can then feel his member begin to push further down your throat, its girth indeed making it harder to get air, but the flavor makes up for that little hindrance. As the speed of the athlete's thrusts increase, you feel the effects of his orc cum becoming stronger and making your whole body want to relax and open up for him in every possible way. 'That's right, slut. Open your throat up to me. I'm gonna fuckin flood you with jizz!'";
		say "     With one final powerful thrust, Eric sinks balls deep inside of you and starts to shoot his load. Spurt after heavy spurt, his throbbing meat sends forth the young man's cum, actually making you start to worry after the tenth blast in a row goes directly into your stomach. Thankfully, the flow does begin to ebb soon after that and while still looking up at the orc hybrid's face, you see him close his eyes, just taking in the moment of release. That is until he opens them again and instead of the yellow color that they had changed to, you see the familiar cerulean-blue. 'Umm... hey[if player is not defaultnamed], [name of player]...[else]...[end if].' His face, which was just a moment ago in complete pleasure, is now comically surprised, and you can see his cheeks begin to flush with embarrassment. 'So, what just happened? I came in here to see what the noise was, and then I saw you and now... now my junk is in your mouth.'";
		WaitLineBreak;
		say "     Eric slowly pulls his meat out of your throat and backs away slightly. 'So I'm just gonna assume that I was sleepwalking or something and go back to bed, alright?' The young man quickly runs from the bathroom, only to come back again to grab his earlier discarded shorts and run away again. You sit there and do your best to try and cope with the effects of the orc cum that is surging through your body, but after a few minutes, Eric returns, this time just poking his head back into the shower room. 'I just wanted to make sure of something real quick. I didn't hurt you or anything... did I?' His voice is barely above a whisper, but you slowly shake your head in the negative. 'Good, I don't think that I would have forgiven myself if I had hurt you.' This time when he leaves, he doesn't come back, and you begin to focus on your breathing as you try to calm down before getting up and dressed to head back out.";
		PlayerDrink 10;
	else:
		say "     Shaking off your momentary paralysis at Eric's surprising behavior, you reach behind you for the shower knob and yank it all the way to the left. Freezing-cold water begins to cascade down over the both of you, making your skin tingle with little icy pin-pricks and cooling down your friend's enflamed libido right quick. His green-skinned dick shrivels and deflates, and after a second or two, he seems to snap out of the strange state he is in, letting out a gasp and jumping back from the water. Shivering and wrapping both arms around himself, you see the familiar cerulean-blue of Eric's eyes as he looks at you in shock. 'Umm... hey[if player is not defaultnamed], [name of player]...[else]...[end if]. What just happened? I came in here to see what the noise was, and then I saw you and now... I'm freezing here!'";
		WaitLineBreak;
		say "     You turn the water temperature back up, allowing the both of you to warm up. After a few moments under the heated spray, Eric states, 'Thanks. I... I'm just gonna assume that I was sleepwalking or something and go back to bed, alright?' The young man quickly runs from the bathroom, only to come back again to grab his earlier discarded shorts and run away again. You sit there and do your best to try and cope with the strange effects that giving Eric an orc cock seems to have had, telling yourself that you should watch out in times when his conscious mind is distracted and the orcish urges can come through. After a few minutes, Eric returns, this time just poking just his head back into the shower room. 'I just wanted to make sure of something real quick. I didn't hurt you or anything... did I?' His voice is barely above a whisper, but you slowly shake your head in the negative. 'Good, I don't think that I would have forgiven myself if I had hurt you.' This time when he leaves, he doesn't come back, and you begin to focus on your breathing as you try to calm down before getting up and dressed to head back out.";

Bunker Communal Shower Events ends here.
