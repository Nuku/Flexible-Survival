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
	ActofKindnessEvent;

to ActofKindnessEvent:
	say "     Walking around the city has made you see many sights you never expected, you've come far from the person you once were into a world of hot lusts and temptations that once only existed in novels and shows. But one thing you were confused about is a scene of what looks like a cool colored giant with bull features tossing a saber kitty into a dumpster before turning it upside down. A group of uninfected people in the distance scramble for their lives as an older gentleman on the floor lay with ripped clothes and an erect cock. A Blue-skinned giant runs over to the soon to be mutant, holding their head up in worry. You've seen the nanite infection take people already, you already know from the spreading stripes upon their crotch that they're mostly a goner. The new claws of the robed man dig into the ground as the new lusts overwhelm their body.";
	LineBreak;
	say "     [bold type]You're not sure if you can do anything in this situation, but it is curious that an infected person is helping a survivor without ulterior intent. Maybe it might be good to ask questions?[roman type][line break]";
	let Firbolg_Observation_Choices be a list of text; [Standard coding for choices]
	add "Explore the scene." to Firbolg_Observation_Choices;
	add "Leave." to Firbolg_Observation_Choices;
	let Firbolg_Observation_Choice be what the player chooses from Firbolg_Observation_Choices;
	if Firbolg_Observation_Choice is:
		-- "Explore the scene.":
			LineBreak; [Makes sure that the following line doesn't join onto the previous one]
			say "     You're able to get behind a car with ripped doors, the scene in front of you played out as giant-kin weeps for their fallen buddy. Their teeth dig into their bottom lip, choking the words, 'Father Samson... If I was just a little faster you wouldn't have...' The wrinkled hand reached their chin, comforting their grief, 'Please my child... I no longer hold that title, but if I have brought some into the light of god, then I will be at peace with this... demonic possession.' 'I...' His eyes flicker, as he speaks again. 'Please trust me... when I tell you that this isn't the way you're supposed to serve the world, I can fix this...' '...Giving?' The big fisherman unclicked their straps, pecs bounced from their prison, right onto the Priests face. 'If you become a Firbolg, you won't have to worry about your lusts, I will always be here to keep you from becoming those bastards on the streets.'";
			say "     'Your body... I could not wish to...' Samson gritted his teeth as his chest popped out fur, slowly growing breasts, he barely clings onto sanity, '...to...haa...this heat... I can't... Giving...' 'You told me yourself, the lord works in mysterious ways, you gave me hope to help you, I'm sure you were right that eventually this apocalypse will end, but I don't want you defiling yourself, not here.' With no other options, Samson silently agreed, his lips wrapped carefully around the swollen areola. At first it was just a small few suckles nipples from a man who clearly is not well versed in sex, but slowly the sucking became more fervorous as their other hand squeezed milk from the other nipple in a ravage lust. Their body turns a gray skin color as features of the wrinkled body become younger, slimmer, and shorter-- their shriveled cock growing to a knee knocking shaft with almost softball sized nuts.";
			LineBreak;
			say "     [bold type]But it looked like their rump was about to be rudely interrupted by some mutants who heard the commotion. These interlopers are ready to finish the job their companion knocked out in the dumpster couldn't finish, what do you wish to do?[roman type]";
			let Firbolg_Explore_Choices be a list of text;
			add "Help them out." to Firbolg_Explore_Choices;
			add "Save Yourself." to Firbolg_Explore_Choices;
			let Firbolg_Explore_Choice be what the player chooses from Firbolg_Explore_Choices;
			if Firbolg_Explore_Choice is:
				-- "Help them out.":
					now inasituation is true;
					let Random_Enemy_Number be a random number from 1 to 3;
					if Random_Enemy_Number is 1:
						challenge "Wyvern";
					else if Random_Enemy_Number is 2:
						challenge "Gargoyle";
					else:
						challenge "Alpha Husky";
					now inasituation is false;
					if fightoutcome < 20: [player won]
						say "     Having defeated the tryst-stoppers, you turn back to see... well something somewhat unexpected? You don't know what part of you expected Giving to be the one to top, but there they were on the pavement- pressed in missionary- his mancunt wetly squirts on their new cock. A passionate lovemaking that cares not for the world around them. 'OOoooooh i-its ok... just let it out' the giant calloused hand comforts their back, their trans dick squirts enough cum to cover the road around them in slimy cum. 'T-this lust... so... vile... How can one feel like this and hold themselves back? It feels too good...' In any other circumstance, you would look at this scene in solemn regret, another claimed by the mad desire of the town. You partly wonder from all the clear cum and stray milk if the cowmen had even pleasured themselves in a long time, or even how their cunt can even take such a womb-churning cock with ease.";
						say "     But however he's able to, Giving is just gone, tongue out as their small but hung partner slams their breeder nuts on his ass over and over again. 'C-cum in me... Big Brother needs a child.' The former human couldn't even process that sentence fully, only increasing their pace before the two cum bloated orbs distended the elder-kin's womb with a cannonball onslaught of seed that leaked slowly out of the stuffed cunt. The gigantic brother whimpered as their subtly tinted sweat pours from every orifice to cool down from the intense tryst. 'Such a big squirt... Pumping it all so deep in... Big Bro's so happy..' The former elderly man licked at their new brother's body, lapping up the addicting sweat, the enlarged meat inside of Giving throbbed to life in seconds. '... I think Knott's a good name for you...' '... Giving... it feels amazing... Why does it feel like it's hard again?' 'Firbolg sweat makes you super horny, as much as I want to continue this fuck... we should go somewhere safer...'";
						WaitLineBreak;
						say "     With a wet pop, the new Firbolg wobbly stands, admiring their new younger body, Giving grabbed their hand as he's quick to shove two fingers in his cunt --running off to take his new mate somewhere toward the forest... you're pretty sure the Giant acknowledged your effort but was too focused on getting more cock to talk to you, maybe you should find them later.";
						now Resolution of Act of Kindness is 2; [Helped. Won.]
						now HP of Knott is 1; [player won and saw him named]
					else if fightoutcome > 19 and fightoutcome < 30: [lost] [Player lost needs to be fixed but for now lets focus on the player winning]
						say "     Just as you're about to be molested, you hear a 'Heads Up!' as the [']Creature['] looks up too late  to see a broken car smash face first into their body. As much as nanites can repair even the most grievous of wounds, they're definitely down for the count. '...Mmm, you alright there?' Thundering footsteps march over to look down at your fallen self, you hastily put back on your wares in slight shame. 'Woof, good thing all that fighting happened, otherwise I wouldn't have heard them.' Before you're able to introduce yourself, the fully transformed priest pumps mindlessly into the air, their moans stopping your speech. 'Oh right... Just because we Firbolg are civilized doesn't mean we aren't also victims to these nanite things, I still gotta help him get used to his new body... Tell ya what, meet us at the forest, we can talk a little bit more there new buddy!'";
						now Resolution of Act of Kindness is 3; [Helped. Lost.]
					else if fightoutcome is 30: [fled]
						say "     You realize the tides are changing and run for the hills. You see the giant looking at you in confusion - but before he can say anything he looks back to what you're running from. What follows is what sounded like the smashing and crushing of the feral infected. But you don't know who will be the victor, you hope they won't hate you entirely for almost leaving them for death.";
						now Resolution of Act of Kindness is 1; [Helped. Fled.]
				-- "Save Yourself.":
					LineBreak;
					say "     You make a break for it, you don't know them enough and it can all be some giant plot to slowly transform the remaining uninfected for all you know. You see the giant looks at you but before he can say anything he looks back to what you're running from. What follows is what sounds like the smashing and crushing of the feral infected. But you don't know who will be the victor, you hope they won't hate you entirely for almost leaving them for death.";
					now Resolution of Act of Kindness is 100; [Saved Yourself]
				now HP of GivingFirbolg is 1;
				now Act of Kindness is resolved;
		-- "Leave.":
			LineBreak;
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
	say "     Something about the circumstances as to why you were here has your body in a cold sweat to every random noise in this oddly quiet section of the city. From what Knott and Giving had said, it was in some building with a large broken hole in it. The moment you find the most familiar thing to it, you peer inside to see a space that is almost like a model apartment, everything here was either torn up, musky, or moldy from all the fluids all over the place. Grazing over the place, you spend the next few minutes in silence going up floors of quiet-nothingness, until eventually  spotting what definitely is the remains of some survivor hangout on the 5th floor. Finding the book is the easy part as it lay on one of the tables to a kitchen set, the hard part was the current problem now of someone else on the floor stumbling in a hazed panic from something.";
	say "It looks like a college survivor, the last few days have not treated them well, his torn shirt and sunken eyes a product of his tragedy. 'Hmhm, I don't know why you're running, I said I would help you didn't I?' A baritone voice called out from the stairwell the man ran out of, the next person.... No... humanoid casually strides out, their black sclera and golden iris showing their otherworldly nature. 'Fuck! I don't need any more help, ok!?? Just leave!' 'What kind of man would I be to leave a boy like you all alone in this dangerous place?~' The man continued to click his boots on the floor, stalking his prey. '...So you did see what I did to your cock-tease of a mother then, no need to play coy now do I.' n empty trash bin crashed into the demon's face, their body did not flinch at all from the impact. 'I don't care if I even win or lose, I swear ill kill you if you get any closer!' His frantic breaths and trembling hands show a lack of fighting spirit to follow through with his claim. Whatever he saw destroyed whatever remains of his sanity to survive this situation.";
	WaitLineBreak;
	say "     The blue-skinned incubi gives a deep-hearted chuckle, fiddling with a whip on their waist- tried around only a fundoshi that had strange marking all over. His steps on the floor circle his prey  into a corner. 'Boy, listen, you must know this is the end of days right? Everyone is having fun while you keep struggling fruitlessly, its just pathetic. If anything, I'm saving you from your boredom to see a new world that you once feared with all your heart... your mother thought the same when I was on top... didn't you hear how her terror turned quickly into enjoyment? If you stayed longer... you would have heard her beg me to do the same to you~' The poor man's ejects deject from the situation, tears flow down his cheeks... yet no cry was heard. After losing all hope, he falls to his knees, giving his enemy the advantage.";
	say "     The demon shifts his forms to have a centaur's lower body, standing over him with the same, calm, expression. 'You humans and happiness... your always afraid of being too happy, this nanite infection really has opened many of your eyes... and its going to open yours too in a moment.' 'Travis....why....why are you doing this, why are any of you doing this?' 'What was it your founding fathers said? The Pursuit of Happiness? I just wanted to, that's all~' You need to leave, he's clearly the one the two warned you about, but the poor man looks far too dejected to stop his pursuer";
	say "     [bold type]Despite knowing the danger, what do you wish to do?[roman type][line break]";
	let ElusiveBook_Choices be a list of text;
	add "Fight through the gauntlet" to ElusiveBook_Choices;
	add "Observe what happens" to ElusiveBook_Choices;
	add "Flee the scene" to ElusiveBook_Choices;
	let ElusiveBook_Choice be what the player chooses from ElusiveBook_Choices;
	if ElusiveBook_Choice is:
		-- "Flee the scene":
			say "You decide this is too dangerous and make a run for it, leaving the survivor to their fate. The faint moans of the survivor and the demonic horseman echo in your ears as you run away.";
			now Resolution of The Elusive Book is 100; [Player ran off]
			now HP of Knott is 100; [lost the book]
		-- "Fight through the gauntlet":
			say "     You steel yourself coming out of hiding 'oh~? A brave one, I like that~' The demon horseman turns to you, before snapping his fingers, 'Im a little busy, so why don't you play with another one of my friends?";
			challenge "Peacock";
			if fightoutcome is 30: [Player won]
				say "     You quickly dispatch the peacock, but not before hearing the survivor's moans of pleasure as the demonic horseman continues to ravage him. Even as you try to get in the way you hear his screams of pain already turned to moans, there's nothing you can do now as they happy push back to the flared cock of the demonic horseman, his hands gripping the survivor's new body as he pounds into them with a feral intensity. 'Darling~ why don't you just find something else to do? Can't you see were busy?' Quickly grabbing the book, you give the demon a sneer before exiting, not happy at all with this outcome, but for now you know you didn't come here to settle the score...";
			else if (fightoutcome > 19 and fightoutcome < 30) or fightoutcome is 30: [Player fled]
				say "     Before the cultist of the horseman can prey on its new victim, a moan from the young man distracts you both, the deed of transforming him was done all while you scuffled with the peacock. The demonic horseman looks at you with a grin, 'Oh~? I guess you were too late to save him, but I do appreciate the effort~' He turns back to the survivor, who is now on all fours, his body shifting and changing as he becomes a new creature of the city.";
				say "     The cultist goes to take their mouth as Travis continues fucking into their new mate, with what little strength you have left, you quickly leave them to their fate. The sounds of the survivor's moans and the demonic horseman's laughter echo in your ears as you run away, knowing that you couldn't save him from the start.";
			now Resolution of The Elusive Book is 1; [Player won]
			now HP of Knott is 2; [Player has the book]
		-- "Observe what happens":
			say "     As no one can see your sin, you wish to watch the depravity of the city up close before you finally head back, Such a giant drooling cock has you far too aroused. Carefully, the demonic horseman aimed himself for the mans rear, smooshing him into a couch as his quiet sobs turn into a deep seated moan. 'Mmm... your mother's juices all over my cock really helps me dig deep, just lay there and let me show you the world you thought to reject.' With a satisfied grunt, Travis pounds away at the man, indenting their stomach as their heavy balls smack into their captive. Very quickly his body cracks from the nanites hooking into his very being. 'W-Wuh wait!' 'Mhm?' Travis slowly pulls his long shaft out with a wet pop, the boy cumming all over the couch as his new red colored skin, under his shaft grew a drooling pussy that glistened with neon cum. You see his facial expression change over, breathing catching up from almost losing himself. The bastard clearly playing with his food. 'I don't wanna... become...a freak...'";
			say "     'Then if you can, tell me where this little woods camp your family talked about going, if you do that, I'll stop' The fervent pumping stops, that was definitely the firbolg settlement on their lips. 'I...I -cuh-can't.. Remember...my ass is throbbing...my brain is foggy..' 'Guess the nanites have already made you useless to me beyond being a cumdump then.' The drooling horse cock splits off into two, Travis piercing deep within his womb and prostate at the same time as the final strings of sanity in their head break. 'O-oh goodness sake!' If you came into the room now, you would just think it was two mutant lovers in a heated breeding tryst. The former male begging for his new womb to be hosed with cum as the glow-in-the dark femcum gets all over the couch and floor.";
			WaitLineBreak;
			if "Weak Psyche" is listed in Feats of Player:
				say "     You swear to yourself, you want so badly to be the one in his position, that intrusive thought drives you to climax, the demon was surely making sure his mate would understand how much pleasure he will give him for being forever chained to his will... if only it was you on that leash, sucking those huge balls of his right after he was finished filling up one of his mates...";
			say " 'You will carry my foal and give birth to whatever spawn a mutant puts within you, spread this delicious corruption within this city's walls, and when I come for you I promise nights like this where you will know nothing but the luxury of a full pussy and a worn throat. Am I clear?' 'I was tired of running~ I want more!' Another jet of femcum and cum spills over the couch, his demonic incubi body growing muscle to bear his masters children. His body slamming back into him to get more inches inside as his body yearned for it. 'Good Boy... I left your Mom for the Gryphons anyway, I'd known breaking you in be funnier. Here's your reward for finally giving into that gnawing feeling.' With himself fully inserted, his balls flex- spurting a heavy load deep within his new companion as they drunkenly laugh at it. Shifting back, Travis yoinks himself out, letting the colored cum explode all over the place as he sat to his side, pulling him into a kiss as he pumped at his conjoining shaft. The survivor eagerly sucking back at his face. You have no need to stay anymore... you're sure you would be joining them in becoming a feral of the city if you offer yourself, you quickly leave- forever changed from the depravity you witnessed.'";
			SanLoss 10;
			now Resolution of Elusive Book is 2; [player lost]
			now HP of Knott is 100; [lost the book]


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
