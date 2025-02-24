Version 1 of Firbolgs by OrangeHorned begins here.

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Act of Kindness	"Act of Kindness"

Act of Kindness is a situation. [Stating that this is an event]
ResolveFunction of Act of Kindness is "[ResolveEvent Act of Kindness]". [Code stuff]
The level of An Act of Kindness is 7. [Minimum level that the player needs to be]
Sarea of Act of Kindness is "Outside". [Where the event is found.]

to say ResolveEvent Act of Kindness:
	ActofKindnessEvent; [More code stuff]

to ActofKindnessEvent: [The event itself]
	say "     Walking around the city has made you see many sights you never expected, you've come far from the person you once were into a world of hot lusts and temptations that once only existed in novels and shows. But one thing you were confused about is a scene of what looks like a cool colored giant with bull features tossing a saber kitty into a dumpster before turning it upside down. A group of uninfected people in the distance scramble for their lives as an older gentleman on the floor lay with ripped clothes and an erect cock. A Blue-skinned giant runs over to the soon to be mutant, holding their head up in worry. You've seen the nanite infection take people already, you already know from the spreading stripes upon their crotch that they're mostly a goner. The new claws of the robed man dig into the ground as the new lusts overwhelm their body.";
	say "     [bold type]You're not sure if you can do anything in this situation, but it is curious that an infected person is helping a survivor without ulterior intent. Maybe it might be good to ask questions?[roman type][line break]";
	let Firbolg_Observation_Choices be a list of text; [Standard coding for choices]
	add "Explore the scene." to Firbolg_Observation_Choices;
	add "Leave." to Firbolg_Observation_Choices;
	let Firbolg_Observation_Choice be what the player chooses from Firbolg_Observation_Choices;
	if Firbolg_Observation_Choice is:
		-- "Explore the scene.":
			LineBreak; [Makes sure that the following line doesn't join onto the previous one]
			say "     You're able to get behind a car with ripped doors, the scene in front of you played out as giant-kin weeps for their fallen buddy. Their teeth dig into their bottom lip, choking the words, 'Father Samson... If I was just a little faster you wouldn't have...' The wrinkled hand reached their chin, comforting their grief, 'Please my child... I no longer hold that title, but if I have brought some into the light of god, then I will be at peace with this... demonic possession.' 'I...' His eyes flicker, as he speaks again. 'Please trust me... when I tell you that this isn't the way you're supposed to serve the world, I can fix this...' '...Giving?' The big fisherman unclicked their straps, pecs bounced from their prison, right onto the Priests face. 'If you become a Firbolg, you won't have to worry about your lusts, I will always be here to keep you from becoming those bastards on the streets.'";
			say "     'Your body... I could not wish to...' Samson gritted his teeth as his chest popped out fur, slowly growing breasts, he barely clings onto sanity, '...to...haa...this heat... I can't... Giving...' 'You told me yourself, the lord works in mysterious ways, you gave me hope to help you, I'm sure you were right that eventually this apocalypse will end, but I don't want you defiling yourself, not here.' With no other options, Samson silently agreed, his lips wrapped carefully around the swollen areola. At first it was just a small few suckles nipples from a man who clearly is not well versed in sex, but slowly the sucking became more fervorous as their other hand squeezed milk from the other nipple in a ravage lust. Their body turns a gray skin color as features of the wrinkled body become younger, slimmer, and shorter-- their shriveledcock growing to a knee knocking shaft with almost softball sized nuts.";
			WaitLineBreak; [Used (nearly) every two "say" statements. Reduces the chance of the player being overwhelmed by a wall of text as they have to press a key to progress.]
			say "     [bold type]But it looked like their rump was about to be rudely interrupted by some mutants who heard the commotion. These interlopers are ready to finish the job their companion knocked out in the dumpster couldn't finish, what do you wish to do?[roman type]";
			let Firbolg_Explore_Choices be a list of text;
			add "Help them out" to Firbolg_Explore_Choices;
			add "Save Yourself" to Firbolg_Explore_Choices;
			let Firbolg_Explore_Choice be what the player chooses from Firbolg_Explore_Choices;
			if Firbolg_Explore_Choice is:
				-- "Save Yourself":
					LineBreak;
					say "     You make a break for it, you dont know them enough and it can all be some giant plot to slowly transform the remaining uninfected for all you know. You see the giant looks at you but before he can say anything he looks back to what you're running from. What follows is what sounds like the smashing and crushing of the feral infected. But you don't know who will be the victor, you hope they won't hate you entirely for almost leaving them for death.";
					now Resolution of Act of Kindness is 1; [Saved Yourself]
				-- "Help them out":
					if a random number between 1 and 3 is:
						-- 1:
							now inasituation is true;
							challenge "Wyvern";
							now inasituation is false;
							if fightoutcome < 20: [player won]
								say "     Having defeated the tryst-stoppers, you turn back to see... well something somewhat unexpected? You don't know what part of you expected Giving to be the one to top, but there they were on the pavement- pressed in missionary- his mancunt wetly squirts on their new cock. A passionate lovemaking that cares not for the world around them. 'OOoooooh i-its ok... just let it out' the giant calloused hand comforts their back, their trans dick squirts enough cum to cover the road around them in slimy cum. 'T-this lust... so... vile... How can one feel like this and hold themselves back? It feels too good...' In any other circumstance, you would look at this scene in solemn regret, another claimed by the mad desire of the town. You partly wonder from all the clear cum and stray milk if the cowmen had even pleasured themselves in a long time, or even how their cunt can even take such a womb-churning cock with ease.";
								say "     But however he's able to, Giving is just gone, tongue out as their small but hung partner slams their breeder nuts on his ass over and over again. 'C-cum in me... Big Brother needs a child.' The former human couldn't even process that sentence fully, only increasing their pace before the two cum bloated orbs distended the elder-kin's womb with a cannonball onslaught of seed that leaked slowly out of the stuffed cunt. The gigantic brother whimpered as their subtly tinted sweat pours from every orifice to cool down from the intense tryst. 'Such a big squirt... Pumping it all so deep in... Big Bro's so happy..' The former elderly man licked at their new brother's body, lapping up the addicting sweat, the enlarged meat inside of Giving throbbed to life in seconds. '... I think Knott's a good name for you...' '... Giving... it feels amazing... Why does it feel like it's hard again?' 'Firbolg sweat makes you super horny, as much as I want to continue this fuck... we should go somewhere safer...'";
								WaitLineBreak;
								say "     With a wet pop, the new Firbolg wobbly stands, admiring their new younger body, Giving grabbed their hand as he's quick to shove two fingers in his cunt --running off to take his new mate somewhere toward the forest... you're pretty sure the Giant acknowledged your effort but was too focused on getting more cock to talk to you, maybe you should find them later.";
								now Resolution of Act of Kindness is 2; [Helped. Won.]
							else if fightoutcome > 19 and fightoutcome < 30: [lost] [Player lost needs to be fixed but for now lets focus on the player winning]
								say "     Just as you're about to be molested, you hear a 'Heads Up!' as the [']Creature['] looks up too late  to see a broken car smash face first into their body. As much as nanites can repair even the most grievous of wounds, they're definitely down for the count. '...Mmm, you alright there?' Thundering footsteps march over to look down at your fallen self, you hastily put back on your wares in slight shame. 'Woof, good thing all that fighting happened, otherwise I wouldn't have heard them.' Before you're able to introduce yourself, the fully transformed priest pumps mindlessly into the air, their moans stopping your speech. 'Oh right... Just because we Firbolg are civilized doesn't mean we aren't also victims to these nanite things, I still gotta help him get used to his new body... Tell ya what, meet us at the forest, we can talk a little bit more there new buddy!'";
								now Resolution of Act of Kindness is 3; [Helped. Lost.]
							else if fightoutcome is 30: [fled]
								say "     You realize the tides are changing and run for the hills. You see the giant looking at you in confusion - but before he can say anything he looks back to what you're running from. What follows is what sounded like the smashing and crushing of the feral infected. But you don't know who will be the victor, you hope they won't hate you entirely for almost leaving them for death.";
								now Resolution of Act of Kindness is 1; [Helped. Fled.]
						-- 2:
							now inasituation is true;
							challenge "Gargoyle";
							now inasituation is false;
							if fightoutcome < 20: [player won]
								say "     Having defeated the tryst-stoppers, you turn back to see... well something somewhat unexpected? You don't know what part of you expected Giving to be the one to top, but there they were on the pavement- pressed in missionary- his mancunt wetly squirts on their new cock. A passionate lovemaking that cares not for the world around them. 'OOoooooh i-its ok... just let it out' the giant calloused hand comforts their back, their trans dick squirts enough cum to cover the road around them in slimy cum. 'T-this lust... so... vile... How can one feel like this and hold themselves back? It feels too good...' In any other circumstance, you would look at this scene in solemn regret, another claimed by the mad desire of the town. You partly wonder from all the clear cum and stray milk if the cowmen had even pleasured themselves in a long time, or even how their cunt can even take such a womb-churning cock with ease.";
								say "     But however he's able to, Giving is just gone, tongue out as their small but hung partner slams their breeder nuts on his ass over and over again. 'C-cum in me... Big Brother needs a child.' The former human couldn't even process that sentence fully, only increasing their pace before the two cum bloated orbs distended the elder-kin's womb with a cannonball onslaught of seed that leaked slowly out of the stuffed cunt. The gigantic brother whimpered as their subtly tinted sweat pours from every orifice to cool down from the intense tryst. 'Such a big squirt... Pumping it all so deep in... Big Bro's so happy..' The former elderly man licked at their new brother's body, lapping up the addicting sweat, the enlarged meat inside of Giving throbbed to life in seconds. '... I think Knott's a good name for you...' '... Giving... it feels amazing... Why does it feel like it's hard again?' 'Firbolg sweat makes you super horny, as much as I want to continue this fuck... we should go somewhere safer...'";
								WaitLineBreak;
								say "     With a wet pop, the new Firbolg wobbly stands, admiring their new younger body, Giving grabbed their hand as he's quick to shove two fingers in his cunt --running off to take his new mate somewhere toward the forest... you're pretty sure the Giant acknowledged your effort but was too focused on getting more cock to talk to you, maybe you should find them later.";
								now Resolution of Act of Kindness is 2; [Helped. Won.]
							else if fightoutcome > 19 and fightoutcome < 30: [lost] [Player lost needs to be fixed but for now lets focus on the player winning]
								say "     Just as you're about to be molested, you hear a 'Heads Up!' as the [']Creature['] looks up too late  to see a broken car smash face first into their body. As much as nanites can repair even the most grievous of wounds, they're definitely down for the count. '...Mmm, you alright there?' Thundering footsteps march over to look down at your fallen self, you hastily put back on your wares in slight shame. 'Woof, good thing all that fighting happened, otherwise I wouldn't have heard them.' Before you're able to introduce yourself, the fully transformed priest pumps mindlessly into the air, their moans stopping your speech. 'Oh right... Just because we Firbolg are civilized doesn't mean we aren't also victims to these nanite things, I still gotta help him get used to his new body... Tell ya what, meet us at the forest, we can talk a little bit more there new buddy!'";
								now Resolution of Act of Kindness is 3; [Helped. Lost.]
							else if fightoutcome is 30: [fled]
								say "     You realize the tides are changing and run for the hills. You see the giant looking at you in confusion - but before he can say anything he looks back to what you're running from. What follows is what sounded like the smashing and crushing of the feral infected. But you don't know who will be the victor, you hope they won't hate you entirely for almost leaving them for death.";
								now Resolution of Act of Kindness is 1; [Helped. Fled.]
						-- 3:
							now inasituation is true;
							challenge "Alpha Husky";
							now inasituation is false;
							if fightoutcome < 20: [player won]
								say "     Having defeated the tryst-stoppers, you turn back to see... well something somewhat unexpected? You don't know what part of you expected Giving to be the one to top, but there they were on the pavement- pressed in missionary- his mancunt wetly squirts on their new cock. A passionate lovemaking that cares not for the world around them. 'OOoooooh i-its ok... just let it out' the giant calloused hand comforts their back, their trans dick squirts enough cum to cover the road around them in slimy cum. 'T-this lust... so... vile... How can one feel like this and hold themselves back? It feels too good...' In any other circumstance, you would look at this scene in solemn regret, another claimed by the mad desire of the town. You partly wonder from all the clear cum and stray milk if the cowmen had even pleasured themselves in a long time, or even how their cunt can even take such a womb-churning cock with ease.";
								say "     But however he's able to, Giving is just gone, tongue out as their small but hung partner slams their breeder nuts on his ass over and over again. 'C-cum in me... Big Brother needs a child.' The former human couldn't even process that sentence fully, only increasing their pace before the two cum bloated orbs distended the elder-kin's womb with a cannonball onslaught of seed that leaked slowly out of the stuffed cunt. The gigantic brother whimpered as their subtly tinted sweat pours from every orifice to cool down from the intense tryst. 'Such a big squirt... Pumping it all so deep in... Big Bro's so happy..' The former elderly man licked at their new brother's body, lapping up the addicting sweat, the enlarged meat inside of Giving throbbed to life in seconds. '... I think Knott's a good name for you...' '... Giving... it feels amazing... Why does it feel like it's hard again?' 'Firbolg sweat makes you super horny, as much as I want to continue this fuck... we should go somewhere safer...'";
								WaitLineBreak;
								say "     With a wet pop, the new Firbolg wobbly stands, admiring their new younger body, Giving grabbed their hand as he's quick to shove two fingers in his cunt --running off to take his new mate somewhere toward the forest... you're pretty sure the Giant acknowledged your effort but was too focused on getting more cock to talk to you, maybe you should find them later.";
								now Resolution of Act of Kindness is 2; [Helped. Won.]
							else if fightoutcome > 19 and fightoutcome < 30: [lost] [Player lost needs to be fixed but for now lets focus on the player winning]
								say "     Just as you're about to be molested, you hear a 'Heads Up!' as the [']Creature['] looks up too late  to see a broken car smash face first into their body. As much as nanites can repair even the most grievous of wounds, they're definitely down for the count. '...Mmm, you alright there?' Thundering footsteps march over to look down at your fallen self, you hastily put back on your wares in slight shame. 'Woof, good thing all that fighting happened, otherwise I wouldn't have heard them.' Before you're able to introduce yourself, the fully transformed priest pumps mindlessly into the air, their moans stopping your speech. 'Oh right... Just because we Firbolg are civilized doesn't mean we aren't also victims to these nanite things, I still gotta help him get used to his new body... Tell ya what, meet us at the forest, we can talk a little bit more there new buddy!'";
								now Resolution of Act of Kindness is 3; [Helped. Lost.]
							else if fightoutcome is 30: [fled]
								say "     You realize the tides are changing and run for the hills. You see the giant looking at you in confusion - but before he can say anything he looks back to what you're running from. What follows is what sounded like the smashing and crushing of the feral infected. But you don't know who will be the victor, you hope they won't hate you entirely for almost leaving them for death.";
								now Resolution of Act of Kindness is 1; [Helped. Fled.]
				now HP of GivingFirbolg is 1;
				now Act of Kindness is resolved;


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

Firbolgs ends here.
