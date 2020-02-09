Version 1 of Voria by Kurainyx begins here.
[Version 1 - Created Voria]

"Adds a carnivorous plant pet to Flexible Survival."

[  Resolution of Plant Takeover                              ]
[  0: Have not seen event                                    ]
[  1: Took Voria to Abbey                                    ]
[  99: Left Voria at garden store                            ]

[  HP of Voria                                               ]
[  0: Have not met Voria                                     ]
[  1: Took Voria to Abbey                                    ]
[  2-6: Grow Phase 1                                         ]
[  7: Checkpoint 1: Watering needed                          ]
[  8: Did not water Voria yet                                ]
[  9: Watered Voria                                          ]
[  10-14: Grow Phase 2                                       ]
[  15: Checkpoint 2: Eaten Bird                              ]
[  16-21: Grow Phase 3                                       ]
[  22: Checkpoint 3: Latex Fox Show                          ]
[  23: Voria fully grown                                     ]
[  99: Left Voria at garden store                            ]

Section 1 - NPC Variables


Table of GameCharacterIDs (continued)
object	name
Voria	"Voria"

Voria is a woman. The hp of Voria is usually 0.
[Physical details as of game start]
ScaleValue of Voria is 4. [large sized]
SleepRhythm of Voria is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Voria is 2.
Cock Length of Voria is 12.
Ball Size of Voria is 0.
Ball Count of Voria is 0.
Cunt Count of Voria is 2.
Cunt Depth of Voria is 8.
Cunt Tightness of Voria is 3.
Nipple Count of Voria is 0.
Breast Size of Voria is 0.
[Basic Interaction states as of game start]
PlayerMet of Voria is false.
PlayerRomanced of Voria is false.
PlayerFriended of Voria is false.
PlayerControlled of Voria is false.
PlayerFucked of Voria is false.
OralVirgin of Voria is false.
Virgin of Voria is false.
AnalVirgin of Voria is false.
PenileVirgin of Voria is false.
SexuallyExperienced of Voria is true.
TwistedCapacity of Voria is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Voria is true. [steriles can't knock people up]
The description of Voria is "[VoriaDesc]".	[In Section 3 - Scenes]
The conversation of Voria is { "Plant noises" }.
The scent of Voria is "     Voria has a distinct floral scent mixed with the smell of sex.".


Section 2 - Events


Table of GameEventIDs (continued)
Object	Name
Plant Takeover	"Plant Takeover"

Plant Takeover is a situation.
The sarea of Plant Takeover is "Outside".

Instead of resolving Plant Takeover:
	say "     Roving the streets of the infected city, you come across an odd-looking store that makes you pause. While the place is a seemingly ordinary garden store, the reason the place caught your eye is because its storefront window is completely covered by vines, leaves, and other vegetation from the inside. Curious, you decide to investigate the building. Finding the door unobstructed, you walk into the store's interior, cautious for any signs of danger. What you find is an utter mess. Just like the storefront window, all sorts of plants have grown to larger than normal sizes, filling more than half the store with green leaves and a veritable bouquet of flowers larger than your head. It doesn't take long for you to deduce what caused all of this unnatural growth. The scent of sex permeates the air, and behind patches of green, you see dried cum stains spalltered all over the place. It seems that several horny people had decided to have a very messy romp here, and although it seems like it has been a long time since then, they certainly left their mark behind. Their nanite-infused liquid lust has infected the plants, causing them to rapidly grow out of control.";
	say "     Fortunately, the oversized vegetation don't seem to move or pose any sort of danger, so you go ahead with a search of the area for anything useful while minding any leftover cum that might still be lingering around. While you don't find anything you can use amidst the foliage, there is an open doorway in the back which you go through, leading you to a small outdoor garden. Unfortunately, it seems like this place was not spared the previous occupants' sexy escapades. While not as bad as inside, the plants here have also grown to abnormal sizes, making it difficult to properly search this section. Wading through the greenery, you find that the far corner of the garden seems to have been spared from the orgy. In the safe space, you find a bucket half-filled with water, but judging by the murky liquid, it's very likely that the water is tainted. Still, you decide to take it, just in case, and you manage to fill two bottles with the contaminated water.";
	say "     Next to the bucket are several potted plants on a stand with a sign indicating that they are of the carnivorous variety. All but one of the displayed plants have wilted, the lone survivor being a sort of venus fly trap with a dark-blue round, bulbous head and two leaves growing on either side of its stem. With it only being the size of the average human's hand, you feel sorry for the small plant, and you debate if you want to take it back to the abbey garden. On the other hand, you remind yourself that just because the plant looks normal doesn't mean that it's not uninfected.";
	say "     [bold type]Do you want to take the plant home?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Bring the plant back to the abbey.";
	say "     ([link]N[as]n[end link]) - Leave the plant alone.";
	if Player consents:
		LineBreak;
		say "     Carefully, you reach toward the surviving venus fly trap, taking one last precaution just in case the plant does turn out to be dangerous, but the plant does not budge at all when you pick up the pot holding it. Satisfied with your haul of two bottles of water, albeit dirty ones, and a new green buddy, you exit the garden store and head straight for the abbey. Fortunately, the store is actually located relatively close to your base, and you make it back home without any trouble. Going into the abbey's garden, you transfer the venus fly trap from its pot and into a nice patch of dirt along the wall. With all the work you have done for this little plant, you figure you might as well name the newest addition to the abbey. It takes a bit for you to come up with something suitable, but you eventually recall a period where you browsed some books in the library out of boredom and learned about a genus of flies named 'Voria', which seems like a fitting name for a fly-eating plant. With Voria settled in its new home, you move on to taking care of other matters while also making a note to check on the plant later.";
		move Player to Grey Abbey Garden;
		move Voria to Grey Abbey Garden;
		now hp of Voria is 1;
		now resolution of Plant Takeover is 1;  [Player took Voria back to Abbey]
	else:
		LineBreak;
		say "     Given the state of the store, taking home strange, unknown plants doesn't seem like a good idea. You leave the carnivorous be and exit the store with two more bottles of water, albeit dirty ones, in your pack.";
		now hp of Voria is 99;
		now resolution of Plant Takeover is 99;	[Player left Voria at garden store]
	now Plant Takeover is resolved;
	increase carried of dirty water by 2;
	say "[bold type]You gained 2 bottles of dirty water.[roman type][line break]";


Section 3 - Scenes


an everyturn rule:
	if HP of Voria > 0 and HP of Voria < 7:	[Grow Phase 1]
		increase HP of Voria by 1;
	else if HP of Voria > 8 and HP of Voria < 15:	[Grow Phase 2]
		increase HP of Voria by 1;
	else if HP of Voria > 15 and HP of Voria < 22:	[Grow Phase 3]
		increase HP of Voria by 1;

to say VoriaDesc:
	if HP of Voria > 0 and HP of Voria < 7:	[Grow Phase 1]
		say "     Voria seems to be doing fine in its new home in the abbey, even if you don't notice anything noteworthy. You wonder if the plant will grow if you give it more time.";
	else if HP of Voria is 7:	[Checkpoint 1: Watering needed]
		say "     When you go to check on Voria, the fly-eating plant you rescued from the garden store, you are surprised to see that it has grown to the height of a water bottle. While Voria is still relatively small, to have almost doubled its size in a short amount of time is a bit alarming. As you crouch down and move closer to inspect the unusual plant, you're surprised again when Voria's blue head moves. Its movements are sluggish, but after a few seconds, Voria's head is directly facing you. When you get back up, you notice that Voria's head shifts a little to stare at your crotch instead.";
		if player is Neuter:	[Player has no parts to water Voria]
			say "     Voria then seems to wilt slightly in disappointment as its head turns away from you. Perhaps the plant was hoping you either had a cock or cunt, for whatever odd reason. If you do get an addition to your featureless crotch later on, maybe you should see what kind of reaction you can get from Voria.";
			now HP of Voria is 8;	[Did not water Voria]
		else:
			say "     You move side to side, just to be sure that you weren't seeing things, but there's no mistaking it: Voria's head clearly follows your [if player is male]cock[smn][else]cunt[sfn][end if] as you move around. The perverse environment where you first found Voria has apparently infected the plant, leaving you wondering what you should do with it. The thought of getting rid of Voria crosses your mind, but with the plant seemingly posing no danger at the moment, not to mention the work you put into saving it, you push the idea aside for now. Clearly Voria wants sex, but given the impracticability of trying to fornicate with the small plant, you figure that [italic type]watering[roman type] Voria with your sexual juices via masturbation will have to do. This leaves you with the choice of either leaving Voria alone for now, or indulge its perverse need.";
			say "     [bold type]Do you want to water Voria?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Masturbate onto the plant.";
			say "     ([link]N[as]n[end link]) - Leave the plant alone.";
			if Player consents:	[Player masturbates onto Voria]
				LineBreak;
				say "[VoriaWatering]";
			else:
				LineBreak;
				say "     Erring on the side of caution, you back away from Voria, and the plant wilts slightly in disappointment as you move away. You make a note to check on Voria later to see how it's doing.";
				now HP of Voria is 8;	[Did not water Voria]
	else if HP of Voria is 8:	[Have not watered Voria yet]
		say "     Checking up on the odd plant again, you find that Voria has not grown at all since the last time. Either Voria is done with its strange growth, or for some reason, it needs you to fulfill its perverse need for it to continue maturing.";
		if player is Neuter:	[Player has no parts to water Voria]
			say "     However, you don't have the necessary [italic type]parts[roman type] to help Voria at the moment. Since the plant hasn't noticed you yet, you decide to just move on instead of disappointing Voria again.";
		else:
			say "     You have the necessary [italic type]parts[roman type] to help Voria right now. The question is, do you want to keep leaving Voria alone for now, or do you want to help the plant now?";
			say "     [bold type]Do you want to water Voria?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Masturbate onto the plant.";
			say "     ([link]N[as]n[end link]) - Leave the plant alone.";
			if Player consents:	[Player masturbates onto Voria]
				LineBreak;
				say "[VoriaWatering]";
			else:
				LineBreak;
				say "     You decide that helping Voria grow might not be a good idea at the moment. Since the plant hasn't noticed you yet, you decide to just move on instead of disappointing Voria again.";
	else if HP of Voria > 8 and HP of Voria < 15:	[Grow Phase 2]
		say "     Voria seems to be doing well since you [italic type]watered[roman type] it. There's been a small, but noticeable growth since then, and from the looks of it, additional leaves and vines seem to be starting to grow at the base of its stem. Voria eventually notices you watching it, and it turns to you, giving you a little greeting by shaking itself slightly.";
	else if HP of Voria is 15:	[Checkpoint 2: Eaten Bird]
		if vorelevel is 1:	[No more growth if vore is turned off]
			say "     It seems like that Voria is done growing, but something in the back of your mind tells you that things might pick up if your interests change.";
			say "     [bold type](Vore setting is too low to continue Voria's content)[roman type]";
		else:
			say "     Voria has grown rapidly and is now the size of a household cat. Two more leaves are starting to grow, adding to the original two Voria has, and thin vines can also be seen poking out from the base of the stem. The plant turns to you when it notices you inspecting it, and to your surprise, the lips of its mouth curve upwards into a faint smile. It is definitely growing in both size and intelligence, which is a bit worrisome, but you're more concerned by a small cluster of feathers on the ground in front of Voria. The feathers belong to a small bird, and there's too many of them lying around for a bird to shed unless they were standing around for a really long time. The clues imply that the bird was engaged in some sort of struggle before it either escaped or fallen prey to whatever predator was here. Given that there's no sign of any other animal having trespassed in the garden, that only leaves one carnivorous being. Looking back at Voria, you ask out loud if it ate the bird. All you get in response is the same smile.";
			now HP of Voria is 16;
	else if HP of Voria > 15 and HP of Voria < 22:	[Grow Phase 3]
		say "     Checking in on Voria again, you see that, unsurprisingly, it has grown yet again. Now, Voria is roughly half the size of a human. As you finish your inspection of the plant, you could've sworn that you had planted Voria a few feet away from where its rooted right now.";
	else if HP of Voria is 22:	[Checkpoint 3: Latex Fox Show]
		say "     When you step out into the garden, you freeze when you find that Voria has grown to a frightening size. The blue head alone can easily fit the average human inside of its maw, and right under it are its four leaves, each the size of a small bed. Even Voria's vines have grown, with at least a dozen or so of them slowly moving along the dirt and many of them as thick and likely as strong as rope. Your gawking at the huge plant is interrupted when you hear a growl, and you quickly turn to see a latex fox glaring at you from a corner of the garden. You don't know how or when the infected beast got in, but you don't have time to think about that when the fox starts dashing towards you, no doubt eager to give you a heavy dose of rubber vulpine dick.";
		say "     You shift into a combat stance, ready to repel the intruder, but the latex fox doesn't even get close to you when two oddly familiar, green tentacles ambushes it from its side, coiling around the beast's legs and making it fall to the ground. The fox's momentary daze from the fall allows another pair of tentacles surge toward him and wrap around his chest. Following the tentacles, you find that they belong to none other than Voria as the plant starts reeling the fox closer to it. At this point, the vulpine recovers and realizes that it is literally in a bind, prompting it to start struggling. However, the distance between the fox and Voria has lessened, allowing the plant to throw even more tentacles at its prey. Vines grab at the fox's arms, forcing them to its sides so that thicker, stronger tentacles can take their place. Voria's tentacles wrap around the beast's body several times until its arms are completely trapped underneath coils of green.";
		say "     With its arms and legs caught in Voria's grasp, the latex fox tries to gnaw through the tentacles at its chest as a last resort, but Voria quickly remedies that with a few more vines that wrap around the vulpine's muzzle, sealing it shut. The latex fox is completely restrained, unable to do anything except wriggle helplessly as Voria eagerly pulls its catch towards it. When you see Voria lick its lips hungrily with a large blue tongue, you know full well that the latex fox is just moments away from becoming plant food. You can either watch the show, or you can turn around and wait for Voria to finish its meal.";
		say "     [bold type]Do you want to stay and watch what happens to the fox?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay and witness Voria's capabilities.";
		say "     ([link]N[as]n[end link]) - Go inside and wait out fox's fate.";
		if Player consents:	[Player watches latex fox get eaten]
			LineBreak;
			say "     Inching forward to get a better view, you watch as the latex fox is finally brought right up to where Voria is rooted. Slowly, the tentacles and vines binding the vulpine lift it off the ground and up toward the plant's head. It almost looks Voria is grinning at its prey before it opens its maw wide, revealing the blue, squishy interior of its head. As the vines around the helpless fox's muzzle slips away, the vulpine lets out a yelp as the tentacles moves it toward the open mouth so that Voria can clamp its upper lips down on its meal's neck. Through the limited space between the fox and Voria's closed lips, you see glimpses of the plant's tongue dart around, most likely licking and savoring the meal that the carnivorous flora has caught. While Voria seems to be enjoying the experience, the latex fox doesn't share the same sentiments as its struggles intensifies. This prompts another tentacle to emerge from behind Voria's head and snake toward the wriggling beast.";
			say "     To your surprise, this tentacle has a miniature version of Voria's head that's about the size of a baseball mounted on its end. Instead of restraining the fox, the mini-Voria head goes straight for the vulpine's red latex shaft and completely engulfs it in one go. You can see the infected fox shiver in pleasure from the sudden warmth around its cock as the mouth tentacle licks and suckles on on the rubber rod. With the latex creature being distracted by the blowjob, some of the tentacles restraining it unravels to instead stroke and knead the captive's body, further adding to the overwhelming pleasure that the fox is no doubt in now. Though you are aware that Voria is just doing all of this just to subdue its meal, you can't help but find the act of debauchery hot.";
			WaitLineBreak;
			say "     With the latex creature being subjected to the warm tongue caressing its face, the suckling mouth constantly working its dick, and the teasing tentacles running over its body, it doesn't take that much longer before the beast succumbs to pleasure. With a squeal of delight, the fox gives one final shudder as it releases its load. At the same time, the mouth tentacles presses into the captive's furry crotch, forming a perfect seal so that not a single drop of the fox's cum escapes the ravenous maw. You can see several tiny bulges of the virile sustenance travel from the source and through the long tentacle, disappearing somewhere behind Voria's main head where it will feed the plant.";
			say "     But that helping of vulpine seed is just the appetizer for the plant, and with its prey now subdued, Voria promptly moves on to the main course. The fox is pushed deeper into Voria's maw, and though most of the tentacles and vines holding it slip away, the horny beast is too exhausted from its recent climax to do anything. When half the fox is inside of Voria's mouth, the plant tilts its head backwards, allowing gravity to finish the job. You watch the latex beast slowly slip down into the plant until finally, the last of it disappears past Voria's lips. Voria then lowers its head, licking its lips in satisfaction. You can see a few bulges periodically poke around Voria's head as the latex fox tries to struggle out of its confines, but its futile efforts cease after a few moments.";
			WaitLineBreak;
		else:	[Player skips latex fox getting eaten]
			LineBreak;
			say "     Not interested in watching the carnivorous plant consume its prey, you go back inside the abbey and close the door behind you. You wait until a sufficient amount of time has passed before you cautiously go back out into the garden. There is no sign of the latex fox anymore, but Voria's smile tells you all you need to know.";
		say "     As you wonder what you should do with the man-eating plant, Voria begins shifting its entire body left and right, each rocking motion lasting slightly longer, until it manages to uproot itself from the ground. This gives you a view of a part of Voria which was just underground. A set of short, but thick tentacles make up the underside of Voria's body, and in the center, there is a sort of large sac or belly with a squirming latex-fox sized bulge inside of it. You don't get to look for long as Voria uses its bottom tentacles to sort of crawl-walk toward you. Unsure of the plant's intentions, you back away, and to your surprise, this causes Voria to stop.";
		say "     You come to a sort of standoff with Voria, and you're sure that if the plant had eyes, you would be in a staring contest with the carnivorous flora. Eventually, Voria slowly extends a thin vine toward you, cautiously creeping it forward until it stops right in front of you. Recognizing the friendly gesture, you reach forward with your hand and allow Voria to wrap the vine around it. A short, gentle tug beckons you toward the plant, and you start moving toward it, albeit with a small bit of trepidation. Thankfully, as you close the distance, Voria keeps its tentacles off you, only letting the same vine guiding you to touch you.";
		WaitLineBreak;
		say "     When you finally stand in front of the main part of the plant's body, the vine slips away from your hand, and Voria dips her head to softly rub it against your body. Although it is a bit odd that you're effectively being nuzzled by a giant plant, you're glad to not be next on Voria's menu, and you return the affection by patting it on its large head, eliciting a quiet, but deep purr from it. It seems like you won't have to worry about Voria because it recognizes you as its caretaker and master. You're glad that the abbey now has a new guard to help keep the place safe, and since Voria has the ability to move around, maybe you can even have it follow you around during your exploration.";
		say "     The carnivorous plant is now tamed! You can make it your active pet by typing [bold type][link]pet carnivorous plant[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type]";
		now HP of Voria is 23;	[Voria fully grown]
		now Carnivorous Plant is tamed;
		add "Tamed" to Traits of Carnivorous Plant;
	else:
		say "     Voria has grown a lot since you had found it. Its blue head alone can easily fit the average human inside of its maw, and right under it are its four leaves, each the size of a small bed. At least a dozen or so tentacles slowly slither along the ground and many of them as thick and likely as strong as rope. [if companion of Player is Carnivorous Plant]On its underside, [else]Even though its bottom half is burrowed underground right now, you know that on its underside[end if] there are a couple of short but even thicker tentacles that the plant uses to move around, and in the center of those appendages is a sort of sac which acts as the plant's stomach. Looking behind Voria's head, you see that a pair of tentacles have a miniature version of its head mounted on their ends, each the size of a baseball, while another pair of tentacles have phallic-shaped blue tips on their ends.";

Instead of conversing the Voria:
	if HP of Voria < 23:
		say "[VoriaDesc]";
	else:
		say "     You talk to Voria, telling it about your day and recent events. You're not sure if the plant understands you or not, but it still quietly gives you its full attention.";

to say VoriaWatering:	[Player watering/masturbation scene]
	say "     It could be your imagination, but Voria seems to shaking slightly in excitement as you get closer with your hands moving towards your crotch to sate the plant's perverse desire. ";
	if player is male:
		say "Your hand wraps around your shaft and begins pumping up and down, pleasurable tingles already starting to build up in your loins. [if cock count of player > 2]At the same time, your other hand does the same with another of your dicks, effectively doubling your stimulation. [else if cock count of player > 1]At the same time, your other hand does the same with your other dick, effectively doubling your stimulation. [end if]Though tending to yourself is not as satisfactory as doing it with someone else, you know yourself the best, as well as the best way to pleasure yourself. You know when and where to hit your most pleasurable spots. It doesn't take too long for you to work yourself up, and as if sensing your impending climax, Voria leans forward as much as its rooted self can. With a moan of delight, you finally get your release, and you make sure to aim your cock[smn] at Voria as your cum starts flowing. The plant shakes happily as you shower it with your protein-rich, musky fluid. Once you come down from your high, you see that the small plant and the area of dirt around it is covered with splotches of your white gift. Though Voria doesn't seem to be moving, you presume that the plant is somehow enjoying your gift to it, and after cleaning yourself off, you decide to let Voria be for the time being.";
	else:
		say "You sit down so that your cunt[sfn] is right in front of Voria, and your hand gets right to work in tending to your pussy. [if cunt count of player > 2]At the same time, your other hand does the same with another of your pussies, effectively doubling your stimulation. [else if cunt count of player > 1]At the same time, your other hand does the same with your other pussy, effectively doubling your stimulation. [end if]Though tending to yourself is not as satisfactory as doing it with someone else, you know yourself the best, as well as the best way to pleasure yourself. You know when and where to hit your most pleasurable spots. It doesn't take too long for you to work yourself up, and as if sensing your impending climax, Voria leans forward as much as its rooted self can. With a moan of delight, you finally get your release, and as your fem-cum starts flowing, you make sure to aim it right at Voria. The plant shakes happily as you shower it with your musky juices. Once you come down from your high, you see that the small plant and the area of dirt around it is covered with splotches of your spent lust. Though Voria doesn't seem to be moving, you presume that the plant is somehow enjoying your gift to it, and after cleaning yourself off, you decide to let Voria be for the time being.";
	now HP of Voria is 9;	[Player watered Voria]


Section 4 - Pet

Table of GameCharacterIDs (continued)
object	name
Carnivorous Plant	"Carnivorous Plant"

Carnivorous Plant is a pet. The description of Carnivorous Plant is "[CarnivorousPlantDesc]". Carnivorous Plant is a part of the player.
The weapon damage of Carnivorous Plant is 5.
The level of Carnivorous Plant is 2.
The Dexterity of Carnivorous Plant is 10.
The summondesc of Carnivorous Plant is "[CarnivorousPlantSummon]".
The dismissdesc of Carnivorous Plant is "[CarnivorousPlantDismiss]".
The assault of Carnivorous Plant is "[CarnivorousPlantAssault]".
the fuckscene of Carnivorous Plant is "[CarnivorousPlantSex]".

understand "Voria" as Carnivorous Plant.

instead of sniffing Carnivorous Plant:
	say "     Voria has a distinct floral scent mixed with the smell of sex.";

to say CarnivorousPlantdesc:
	say "[VoriaDesc]";

to say CarnivorousPlantSummon:
	now Voria is nowhere;
	if Player is not in Grey Abbey Garden: [regular summoning]
		say "     Needing a little help with your exploration, you call out Voria's name. You wait for a few moments, wondering if you were able to reach your plant companion. Eventually, you hear the rustling of leaves, and you turn around to see Voria shambling towards you. Happy to see the plant, you walk over to it and give it a few pats on its giant, blue head, earning you a quiet purr from the flora.";
	else: ['summoning' while standing next to it]
		say "     Using both your words and gestures, you tell Voria to follow you. The plant rocks left and right from its patch of dirt until it finally uproots itself and promptly shambles towards you. Glad to have a Voria by your side, you give it a few pats on its giant, blue head, earning you a quiet purr from the flora.";

to say CarnivorousPlantDismiss:
	move Voria to Grey Abbey Garden;
	if Player is not in Grey Abbey Garden: [regular dismiss]
		say "     Giving Voria a pat on its head, you tell the plant to go back home. Voria rumbles softly as it processes your command, and after a moment, it begins shambling in the direction of the abbey.";
	else: [dismissing it in the abbey garden]
		say "     Giving Voria a pat on its head, you tell the plant to stay here and guard the place. Voria rumbles softly as it processes your command, and after a moment, it shambles toward the patch of dirt, its tentacles burrowing into the ground until the plant is firmly rooted.";

to say CarnivorousPlantAssault:
	say "[one of]Voria whips one of its tentacles at your foe, scoring a direct hit![or]Voria manages to wrap several vines around your opponent, and your foe wastes some of their energy to escape the plant's grasp[or]A tentacle from Voria sweeps at your opponent's legs, tripping them up.[at random]";

to say CarnivorousPlantSex:
	say "     Scenes not implemented yet.";


Voria ends here.
