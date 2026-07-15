Version 1 of Firbolg Quests by OrangeHorned begins here.

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Act of Kindness	"Act of Kindness"

Act of Kindness is a situation. [Stating that this is an event]
ResolveFunction of Act of Kindness is "[ResolveEvent Act of Kindness]". [Code stuff]
The level of An Act of Kindness is 7. [Minimum level that the player needs to be]
Sarea of Act of Kindness is "Outside". [Where the event is found.]

to say ResolveEvent Act of Kindness:
	say "     Walking around the city has made you see many sights you never expected; you've come far from the person you once were into a world of hot lusts and temptations that once only existed in novels and shows. But one thing you are confused about is a scene of what looks like an azure-colored behemoth with a cow face and a bodybuilder's physique tossing a saber kitty into a dumpster before turning it upside down. A group of uninfected people in the distance scramble for their lives as an older tan-skinned gentleman on the floor lies with ripped clothes and an erect cock. A blue-skinned giant with fisherman gear runs over to the soon-to-be mutant, holding their head up in worry. You've seen the nanite infection take people- from the spreading stripes upon his crotch, his time of sanity is almost up. The new claws of the robed man dig into the ground as new desires overwhelm his cranium.";
	say "[line break]     [bold type]You've rarely seen an infected person help someone out of the goodness of their heart. Do you wish to observe closer?[roman type][line break]";
	let Firbolg_Observation_Choices be a list of text; [Standard coding for choices]
	add "Explore the scene." to Firbolg_Observation_Choices;
	add "Leave." to Firbolg_Observation_Choices;
	let Firbolg_Observation_Choice be what the player chooses from Firbolg_Observation_Choices;
	LineBreak; [Makes sure that the following line doesn't join onto the previous one]
	if Firbolg_Observation_Choice is:
		-- "Explore the scene.":
			say "     You're able to get behind a car with ripped doors, the scene in front of you played out as a giant-kin weeps for his fallen buddy. His teeth dig into his bottom lip, choking the words, 'Father Samson... If I was just a little faster you wouldn't have...' The cowman whimpers as they hunch closer. The wrinkled hand reaches his chin, comforting his grief. 'Please, my child... I no longer hold that title, but if I have brought some into the light of God, then I will be at peace with this... demonic possession. I...' His eyes flicker into cat pupils as he speaks again. The azure beast almost pauses as he grasps at his pecs, contemplating something with his eyebrows. 'Please trust me... when I tell you that this isn't the way you're supposed to serve the world. I can fix this...' The darker-skinned man watches the colossal cowman shift his position so that his smaller body is pushed up into their azure-skinned underboob. '...Giving?' The big fisherman unclicks his straps, pecs bouncing from their prison, right onto the priest's face. 'If you become a Firbolg, you won't have to worry about your lusts- I will always be here to keep you from becoming those bastards on the streets.'";
			say "     'Your body... I could nyyot wish to...' Samson grits his teeth as his chest pops out fur, slowly growing breasts, '...to...haa...this meeerooowing... heat... I can't... Giving...' The bigger mutant straigtens his back, his pecs obscuring your angle of the priest's head as his hands fondle at his right breast. 'You told me yourself, the Lord works in mysterious ways... you gave me hope to help you. I'm sure you were right that eventually this apocalypse will end, but I don't want you defiling yourself, not here.' The growing tail on the priest's back pushes Samson to agree, his lips wrapped carefully around the swollen areola. At first it was just a small few suckles of nipple from a man who clearly is not well versed in sex, but slowly the sucking becomes more fervorous as his other hand squeezes milk from the other nipple in a ravage lust. His darker-skinned body grows blue fur around the legs and arms, the tail morphing like oil into a more bovine-themed appendage...";
			say "[line break]     [bold type]As stunning at the display is, it looks like his rump is about to be rudely interrupted by some mutants who heard the commotion. These opportunistic ferals are ready to finish the job their companion knocked out in the dumpster couldn't finish. What do you wish to do?[roman type][line break]";
			let Firbolg_Explore_Choices be a list of text;
			add "Help them out." to Firbolg_Explore_Choices;
			add "Save yourself." to Firbolg_Explore_Choices;
			let Firbolg_Explore_Choice be what the player chooses from Firbolg_Explore_Choices;
			LineBreak;
			if Firbolg_Explore_Choice is:
				-- "Help them out.":
					now inasituation is true;
					challenge "[one of]Wyvern[or]Gargoyle[or]Husky Alpha[purely at random]";
					now inasituation is false;
					if fightoutcome < 20: [player won]
						project Figure of Knott_sneak_peak_icon;
						say "     Having defeated the tryst-stoppers, you turn back to see... well, something somewhat unexpected? You don't know what part of you expected Giving to be the one to top, but there they are on the pavement, pressed in missionary, his mancunt wetly squirting on the priest's new cock, a passionate lovemaking that cares not for the world around them. 'OOoooooh, i-it's OK... just let it out.' The giant's calloused hand comforts his partner's back, his clit squirting enough to cover the road around them in thick cum, its masculine pheromones warming the air. 'T-this lust... so... vile... How can one feel like this and hold themselves back? It feels too good...' In any other circumstance, you would look at this scene in solemn regret, another claimed by the madness. You partly wonder from all the clear cum and stray milk if the cowman had even pleasured himself in a long time, or even how his cunt can take such a womb-churning cock with ease.";
						say "     But however he's able to, Giving is just gone, tongue out as his small but hung partner slams his breeder nuts on his ass over and over again. 'C-cum in me... Big Brother needs a child.' The former human can't even process that sentence fully, only increasing his pace before the two cum-bloated orbs distend the elder-kin's womb with a cannonball onslaught of seed that leaks slowly out of the stuffed cunt. The gigantic brother whimpers as his subtly tinted sweat pours from every orifice to cool down from the intense tryst. 'Such a big squirt... Pumping it all so deep in... Big Bro's so happy...' The former elderly man licks at his new brother's body, lapping up the addicting sweat, the enlarged meat inside of Giving throbbing to life again in seconds. The big fisherman scratches the back of his head as he goes into deep thought. 'I think Knott's a good name for you!' The newly anointed Knott lies in Giving's body, still dazed from cumming his heart out. '...Giving... It feels amazing... Why does it feel like it's hard again?' Giving gives a hearty chuckle, patting Knott's slim back. 'Firbolg sweat makes you super horny; as much as I want to continue this fuck... we should go somewhere safer...'";
						WaitLineBreak;
						say "     With a wet pop, the new Firbolg wobblily stands, admiring his new, younger body. Knott looks himself over in awe, feeling the youth of his skin, the rejuvenation of his hair, and even the definition of muscles. 'I'm like a brand new man... For the cost of my feet I'd say it's a fair trade, oh to no longer dream of reliving my- wh-HEY!' Giving grabs his hand as he's quick to shove two fingers in his cunt- running off to take his new mate somewhere toward the forest... you're pretty sure the Giant acknowledged your effort but was too focused on getting more cock to talk to you; maybe you should find them later.";
						now Resolution of Act of Kindness is 2; [Helped. Won.]
						now HP of Knott is 1; [player won and saw him named]
					else if fightoutcome > 19 and fightoutcome < 30: [lost] [Player lost needs to be fixed but for now lets focus on the player winning]
						project Figure of Knott_sneak_peak_icon;
						say "     Just as you're about to be molested, you hear a 'Heads Up!' as the [']creature['] looks up too late to see a broken car smash face first into their body. As much as nanites can repair even the most grievous of wounds, they're definitely down for the count. '...Mmm, you alright there?' Thundering footsteps march over to look down at your fallen self; you hastily put back on your wares in slight shame. 'Woof, good thing all that fighting happened, otherwise I wouldn't have heard them.' Before you're able to introduce yourself, the fully transformed priest pumps mindlessly into the air, his moans stopping your speech. 'Oh, right... Just because we Firbolg are civilized doesn't mean we aren't also victims to these nanite things; I still gotta help him get used to his new body... Tell ya what, meet us at the forest, we can talk a little bit more there, new buddy!'";
						now Resolution of Act of Kindness is 3; [Helped. Lost.]
					else if fightoutcome is 30: [fled]
						say "     You realize the tides are changing and run for the hills. You see the giant looking at you in confusion, but before he can say anything, he looks back to what you're running from. What follows is the sound of smashing metal and the bestial bleats of the feral, though you don't know who will come out the victor... you hope Giving and Samson won't hate you for fleeing.";
						now Resolution of Act of Kindness is 1; [Helped. Fled.]
					now HP of GivingFirbolg is 1;
					AddNavPoint Encampment Tree;
					move Knott to Encampment Tree;
					move GivingFirbolg to Encampment Tree;
					now Act of Kindness is resolved;
				-- "Save yourself.":
					LineBreak;
					say "     You make a break for it... you don't know them enough and it can all be some giant plot to slowly transform the remaining uninfected for all you know. You see the giant looking at you in confusion, but before he can say anything, he looks back to what you're running from. What follows is the sound of smashing metal and the bestial bleats of the feral, though you don't know who will come out the victor; you hope Giving and Samson won't hate you for fleeing.";
					now Resolution of Act of Kindness is 100; [Saved Yourself]
		-- "Leave.":
			say "     You turn away from the scene and make an exit.";
			now HP of GivingFirbolg is 100;

Table of GameEventIDs (continued)
Object	Name
Elusive Book	"Elusive Book"

Elusive Book is a situation.
Elusive Book is inactive.
ResolveFunction of Elusive Book is "[ResolveEvent Elusive Book]".
The level of Elusive Book is 5.
Sarea of Elusive Book is "High".

when play begins: [Any tags that the player can ban that are relevant to the event]
	add Elusive Book to BadSpots of DemonList;
	add Elusive Book to BadSpots of MaleList;
	add Elusive Book to BadSpots of FurryList;

to say ResolveEvent Elusive Book:
	say "     Something about the circumstances as to why you are here has your body in a cold sweat to every random noise in this oddly quiet section of the city. From what Knott and Giving had said, the book is in some building with a large broken hole in it. The moment you find the most similar thing to that, you peer inside to see a space that is almost like a model apartment; everything here is either torn up, musky or moldy from all the fluids all over the place. Grazing over the place, you spend the next few minutes in silence going up floors of quiet nothingness, until eventually you spot what remains of some survivor hangout on the fifth floor. Finding the book is the easy part as it lies on one of the tables to a kitchen set; the hard part is the current problem now of someone else on the floor stumbling in in a hazed panic from something.";
	say "     It looks like a college survivor; the last few days have not treated them well, his torn shirt, sunken eyes and frail body a product of his time in the city. 'Hmhm, I don't know why you're running. I said I would help you, didn't I?' a baritone voice calls out from the stairwell the man ran out of. The next person.... no, [']humanoid['], you correct yourself... casually strides out, their black sclera and golden iris showing their otherworldly nature- well-built body shimmering under the light. 'Fuck! I don't need any more help, OK!?? Just leave!' the survivor cries out as the impish hunk prowls. 'What kind of man would I be to leave a boy like you all alone in this dangerous place?~' The man continues clicking his boots on the floor, stalking his prey. 'I saw what you did to her... to them! Get away!' With a ballpoint pen, he aims it at the incubi's throat, to which he responds in turn with some fingers under his chin. 'So you did see what I did to your cock-tease of a mother then... no need to play coy now, is there?' An empty trash bin crashes into the demon's face, his body not flinching at all from the impact. 'I don't even care if I win or lose, I swear I'll kill you if you get any closer!' the survivor bellows, his breath frantic and hands trembling despite his bellicose claim. Dimly, as you look upon the frightened student, you suspect whatever transpired between these two has rattled this poor man to the core";
	WaitLineBreak;
	say "     The blue-skinned incubi gives a deep-hearted chuckle, fiddling with a whip on his waist- tied around only a fundoshi that has strange markings all over. His steps on the floor circle his prey into a corner. 'Boy, listen, you must know this is the end of days, right? Everyone is having fun while you keep struggling fruitlessly; it's just pathetic. If anything, I'm saving you from your boredom to see a new world that you once feared with all your heart- see, your mother thought the same when I was on top... didn't you hear how her terror turned quickly into enjoyment? If you stayed longer, you would have heard her beg me to do the same to you~' The poor man's eyes deject from the situation, tears flow down his cheeks... yet no cry is heard. After losing all hope, he falls to his knees, giving his enemy the advantage.";
	say "     The demon shifts his form and bubbles like hot tar into a centaur's lower body with large hooves, quickly closing the distance and trapping the human. The predator stands over the starving human with the same calm expression. 'You humans and happiness... you're always afraid of being too happy; this nanite infection really has opened many of your eyes... and it's going to open yours too in a moment.' 'Travis... why... why are you doing this, why are any of you doing this?' The student wails out, his weakened body unable to move an inch under the incubi. 'What was it your founding fathers said? The Pursuit of Happiness? I just wanted to, that's all~' You need to leave- he's clearly the one the two warned you about, but the poor man looks far too dejected to escape his pursuer.";
	say "[line break]     [bold type]Despite knowing the danger, what do you wish to do?[roman type][line break]";
	let ElusiveBook_Choices be a list of text;
	add "Fight through the gauntlet." to ElusiveBook_Choices;
	add "Observe what happens." to ElusiveBook_Choices;
	add "Flee the scene." to ElusiveBook_Choices;
	let ElusiveBook_Choice be what the player chooses from ElusiveBook_Choices;
	LineBreak;
	if ElusiveBook_Choice is:
		-- "Flee the scene.":
			say "     You decide this is too dangerous and make a run for it, leaving the survivor to his fate. The faint moans of the survivor and the demonic horseman echo in your ears as you run away.";
			now Resolution of The Elusive Book is 100; [Player ran off]
			now HP of Knott is 100; [lost the book]
		-- "Fight through the gauntlet.":
			say "     You steel yourself coming out of hiding. 'Oh~? A brave one, I like that~' The demon horseman turns to you, before snapping his fingers. 'I'm a little busy, so why don't you play with another one of my friends?'";
			challenge "Peacock";
			if fightoutcome < 20: [Player won]
				say "     You quickly dispatch the peacock, but not before hearing the survivor's moans of pleasure as the demonic horseman continues to ravage him. Even as you try to get in the way you hear his screams of pain already turn to moans... there's nothing you can do now as they happily push back to the flared cock of the demonic horseman, his hands gripping the survivor's new body as he pounds into him with a feral intensity. 'Darling~ why don't you just find something else to do? Can't you see we're busy?' Quickly grabbing the book, you give the demon a sneer before exiting, not happy at all with this outcome- but for now you know you didn't come here to settle the score...";
			else: [Player fled]
				say "     Before the cultist of the horseman can prey on its new victim, a moan from the young man distracts you both; the deed of transforming him was done all while you scuffled with the peacock. The demonic horseman looks at you with a grin. 'Oh~? I guess you were too late to save him, but I do appreciate the effort~' He turns back to the survivor, who is now on all fours, his body shifting and changing as he becomes a new creature of the city- hooves planting themselves on the ground as his flesh for a moment melds with his top; remembering he was himself, the slapping flesh separates into its own horse body, the fur slowly growing out with every thrust, wet hole squelching and sucking Travis's member deeper inside.";
				say "     The cultist goes to take his mouth as Travis continues fucking into his new mate; with what little strength you have left, you quickly leave him to his fate. The sounds of the survivor's moans and the demonic horseman's laughter echo in your ears as you run away, knowing that you couldn't save him from the start.";
			now Resolution of The Elusive Book is 1; [Player won]
			now HP of Knott is 2; [Player has the book]
		-- "Observe what happens.":
			say "     As no one can see your sinful eyes upon this fleshy horror, you wish to watch the depravity of the city up close before you finally head back- such a giant drooling cock has you far too aroused. Carefully, the demonic horseman aims himself for the man's newly shaped hole, smooshing him into a couch as his quiet sobs turn into a deep-seated moan. 'Mmm... having your mother's juices all over my cock really helps me dig deep; just lie there and let me show you the world you thought to reject.' With a satisfied grunt, Travis pounds away at the man, indenting his stomach as his heavy balls smack into his captive. Very immediately his body melts and reforms from the nanites hooking into his very flesh. 'W-Wuh wait!' the human in a panic tries squealing anything out to make his captor stop. 'Mhm?' Travis slowly pulls his long shaft out with a wet pop, the boy cumming all over the couch. The nanites take hold to his defeat- his skin turning a vibrant red, while a drooling pussy glistening with neon femcum forms beneath his expanding golfball balls. You see his facial expression change over, breathing catching up from almost losing himself- the bastard is clearly playing with his food- his last real semblance of humanity being one line: 'I don't wanna... become... a freak...'";
			say "     'Then if you can, tell me where is this little woods camp your family talked about going to. If you do that, I'll stop,' the otherworldly centaur tempts as the fervent pumping stops, and you realize he must be referring to the Firbolg settlement. 'I... I cuh-can't... remember... My ass is throbbing... My brain is foggy...' The herm moans and drools carelessly, his eyes glazed over as Travis clicks his tongue in annoyance. 'Guess the nanites have already made you useless to me beyond being a cumdump then.' The drooling horse cock splits off into two, Travis piercing deep within his womb and prostate at the same time as the final strings of sanity in the herm's head break. 'O-oh, goodness sake!' the defeated red-skinned herm simpers as he drops pretense of resistance and the two descend into a heated breeding tryst, the former male begging for his new womb to be hosed with cum as his glow-in-the dark femcum gets all over the couch and floor.";
			WaitLineBreak;
			if "Weak Psyche" is listed in Feats of Player:
				say "     Watching them go, a part of you can't help but want to trade places with the former human. After all, he doesn't seem to appreciate the pleasures such a studly demon can offer. Some lustful facet of your tainted psyche temps as thoughts of being forever chained to his will flicker through your mind's eye like fresh sparks over kindling... If only it was you on that leash, you muse, absentmindedly running a finger across your neck, picturing a nice sturdy band of smooth, thick and shiny leather digging in your flesh with each thrust of the dominant demon's equine spire. Unbidden, but not unwanted, images of your needy hole being ravished by his lengthy horse-like cock while the rolling nubs bejeweling his indigo dick caress your desperate depths wash over you. Briefly shutting your eyes, you can almost smell the arousal pouring off your master as he cums and the well-earned words of praise pouring from his lips as you suckle those huge balls of his right after he's done with you.";
				raise Player Libido by 10;
			say "     'You will carry my foal and give birth to whatever spawn a mutant puts within you, spread this delicious corruption within this city's walls, and when I come for you I promise nights like this where you will know nothing but the luxury of a full pussy and a worn throat. Am I clear?' 'I was tired of running~ I want more!' Another jet of femcum and cum spills over the couch, the herm's demonic incubi body growing muscle to bear his master's children, slamming back into him to get more inches inside as his body yearns for it. 'Good boy... I left your mom for the blue gryphons anyway; I knew breaking you in would be funnier. Here's your reward for finally giving in to that gnawing feeling.' With himself fully inserted, his balls flex, spurting a heavy load deep within his new companion as he drunkenly laughs at it. Shifting back, Travis roughly unhilts himself, letting the colored cum explode all over the place as he sits to the herm's side, pulling him into a kiss as he pumps at his conjoining shaft, the survivor eagerly sucking back at his face. You have no need to stay anymore... you're sure you would be joining them in becoming a feral of the city if you offer yourself. You quickly leave, forever changed from the depravity you witnessed.";
			SanLoss 10;
			now Resolution of Elusive Book is 2; [player lost]
			now HP of Knott is 100; [lost the book]
	now Elusive Book is resolved;

[Table of GameEventIDs (continued)
ObjectName
The Firbolgs Commune "The Firbolgs Commune"

Table of WalkInEvents (continued)
Priority Name	 EventObject	EventConditions	EventRoom	 LastEncounter	 TurnCoolDown  	TurnsEncounterPercentage
1	"The Firbolgs Commune"	The Firbolgs Commune"	[EventConditions_Act of Kindness]"	tile name here25002100

to say EventConditions_Event_name_here:
if stat here of NPC name here is X: Giving
now CurrentWalkinEvent_ConditionsMet is true;

The Firbolgs Commune here is a situation.
ResolveFunction of Event name here is "[ResolveEvent The Firbolgs Commune]".
Sarea of Event name here is "Urban Forest".

stat plus inactive format

Table of GameEventIDs (continued)
ObjectName
The Firbolgs Commune"The Firbolgs Commune"

Table of WalkInEvents (continued)
PriorityName	EventObject	EventConditions	EventRoom	LastEncounter	TurnCoolDown  TurnsEncounterPercentage
1	"The Firbolgs Commune"	The Firbolgs Commune"	[EventConditions_Act of Kindness]"	tile name here25002100

to say EventConditions_Event_name_here:
if stat here of NPC name here is X: Knott
now CurrentWalkinEvent_ConditionsMet is true;

Event name here is a situation.
ResolveFunction of Event name here is "[ResolveEvent The Firbolgs Commune]". It is inactive.
Sarea of Event name here is "Urban Forest".
Event name here is inactive.]

Firbolg Quests ends here.
