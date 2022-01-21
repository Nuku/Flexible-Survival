Version 1 of Voria by Kurainyx begins here.
[Version 1 - Created Voria - Kurainyx]
[Version 2 - Added post combat vore scenes - Kurainyx]

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

Voria is a woman. The HP of Voria is usually 0.
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
Description of Voria is "[VoriaDesc]". [In Section 3 - Scenes]
Conversation of Voria is { "Plant noises" }.
The scent of Voria is "     Voria has a distinct floral scent mixed with the smell of sex.".


Section 2 - Events


Table of GameEventIDs (continued)
Object	Name
Plant Takeover	"Plant Takeover"

Plant Takeover is a situation.
ResolveFunction of Plant Takeover is "[ResolveEvent Plant Takeover]".
Sarea of Plant Takeover is "Outside".

to say ResolveEvent Plant Takeover:
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
		now HP of Voria is 1;
		now resolution of Plant Takeover is 1;  [Player took Voria back to Abbey]
	else:
		LineBreak;
		say "     Given the state of the store, taking home strange, unknown plants doesn't seem like a good idea. You leave the carnivorous be and exit the store with two more bottles of water, albeit dirty ones, in your pack.";
		now HP of Voria is 99;
		now resolution of Plant Takeover is 99;	[Player left Voria at garden store]
	now Plant Takeover is resolved;
	ItemGain dirty water by 2;


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
			say "     To your surprise, this tentacle has a miniature version of Voria's head that's about the size of a baseball mounted on its end. Instead of restraining the fox, the mini-Voria head goes straight for the vulpine's red latex shaft and completely engulfs it in one go. You can see the infected fox shiver in pleasure from the sudden warmth around its cock as the mouth tentacle licks and suckles on the rubber rod. With the latex creature being distracted by the blowjob, some of the tentacles restraining it unravels to instead stroke and knead the captive's body, further adding to the overwhelming pleasure that the fox is no doubt in now. Though you are aware that Voria is just doing all of this just to subdue its meal, you can't help but find the act of debauchery hot.";
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
		say "     (Voria the carnivorous plant is now a possible ally!! You can make her your active ally by typing [bold type][link]ally Voria[end link][roman type] or [bold type][link]ally carnivorous plant[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
		now HP of Voria is 23;	[Voria fully grown]
		now Carnivorous Plant is tamed;
		add "Tamed" to Traits of Carnivorous Plant;
	else:
		say "     Voria has grown a lot since you had found it. Its blue head alone can easily fit the average human inside of its maw, and right under it are its four leaves, each the size of a small bed. At least a dozen or so tentacles slowly slither along the ground and many of them as thick and likely as strong as rope. ";
		if Carnivorous Plant is listed in companionList of Player:
			say "On its underside, ";
		else:
			say "Even though its bottom half is burrowed underground right now, you know that on its underside ";
		say "there are a couple of short but even thicker tentacles that the plant uses to move around, and in the center of those appendages is a sort of sac which acts as the plant's stomach. Looking behind Voria's head, you see that a pair of tentacles have a miniature version of its head mounted on their ends, each the size of a baseball, while another pair of tentacles have phallic-shaped blue tips on their ends.";
	if Carnivorous Plant is listed in companionList of Player:
		say "     [bold type]She is currently following you as your battle companion.[roman type][line break]";

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

Carnivorous Plant is a pet.
NPCObject of Carnivorous Plant is Voria.
understand "Voria" as Carnivorous Plant.
IDList of Carnivorous Plant is { "Voria", "voria", "plant", "carnivorous plant" }.
printed name of Carnivorous Plant is "Voria".
Description of Carnivorous Plant is "[CarnivorousPlantDesc]".
Weapon damage of Carnivorous Plant is 10.
Level of Carnivorous Plant is 1.
Dexterity of Carnivorous Plant is 15.
Summondesc of Carnivorous Plant is "[CarnivorousPlantSummon]".
Dismissdesc of Carnivorous Plant is "[CarnivorousPlantDismiss]".
Assault of Carnivorous Plant is "[CarnivorousPlantAssault]".
Fuckscene of Carnivorous Plant is "[CarnivorousPlantSex]".

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

VoriaCheat is an action applying to nothing.

understand "VoriaCheat" as VoriaCheat.
understand "Voria Cheat" as VoriaCheat.

carry out VoriaCheat:	[Cheat to instantly access Voria pet]
	move Voria to Grey Abbey Garden;
	now HP of Voria is 23;	[Voria fully grown]
	now Carnivorous Plant is tamed;
	add "Tamed" to Traits of Carnivorous Plant;

Section 5 - Post Combat Vore

VoriaCocks is a number that varies.
VoriaCunts is a number that varies.

an everyturn rule:	[Voria will trigger post-combat vore scene after 8 turns while being the player's pet]
	if Carnivorous Plant is listed in companionList of Player and hunger of Voria < 8:
		increase hunger of Voria by 1;

to VoriaPostCombat:	[Voria vore scenes after you win a fight against a voreable enemy]	[TO DO: Make adjustments to post combat scenes for herm enemies]
	choose row MonsterID from Table of Random Critters;
	let VoriaCocks be cock count entry;
	let VoriaCunts be cunt count entry;
	say "     Unable to withstand the assault from both you and Voria, your opponent crumples to the ground in exhaustion. As you take a few moments to catch your breath and decide what to do as the victor, Voria wastes no time in approaching the fallen foe, its vine-tentacles eagerly slithering toward the prone figure. Knowing the predatory nature of your floral companion, there's no mistake that your attacker is about to become plant food.";
	say "     [bold type]Do you watch Voria eat its prey?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Watch the show.";
	say "     ([link]N[as]n[end link]) - Turn around and let Voria eat in peace.";
	if Player consents:			[Player watches Voria eat their opponent and is given a choice to join in on the fun]
		LineBreak;
		say "     Interested in the feeding habits of your floral companion, you keep watching as Voria begins to bind their victim. Voria's vines lash out, swiftly wrapping around their prey's body and limbs. With their stamina expended from the fight, your defeated opponent cannot do more than feebly struggle as even more greenery rushes to grab at the soon-to-be snack until they are covered in verdant coils, completely immobilizing them. With their prey secured, Voria begins dragging their catch towards it. Realizing that it's about to become plant food, your opponent's struggles begin to pick up as they gain a second wind out of desperation, however, Voria is quick to remedy the situation.";
		if VoriaCocks > 0:	[Checks first if opponent has a cock]
			say "     While more than half of the beaten prey's body is covered in green tendrils, Voria has left the crotch area exposed, as well as the victim's cock, allowing the plant to bring one of its tentacles with a miniature version of its main mouth right over the vulnerable rod. In one swift, fluid motion, the tentacle mouth plunges down onto the restrained victim's dick, taking the shaft all the way to its base in one go. The prey's squirming halts as you watch the walls of the tentacle squeeze on the captive's cock, causing its owner to moan loudly with arousal. Your bound opponent tries to resume its attempts to escape, but Voria is quick to subdue that as the miniature mouth redoubles its blowjob efforts.";
			say "     Soon, the victim's resistance fades away, drowned by the pleasure being lavished on its tool. With its meal properly subdued, Voria drags its prey closer to its main mouth and promptly chomps down, enclosing your foe's head and shoulders within its maw, trapping them even further. Any attempts of resistance by your opponent is completely nullified between the restraining vines and the distracting mouth-tentacle that continues to suck on their shaft. You guess that Voria is going to slurp down the rest of its snack right away, but to your surprise, the plant instead turns their head, which also puts on display their vulnerable, half-eaten prey. It appears that Voria is waiting for you to tell it to go ahead. You can give Voria the signal to finish its meal, or you can see if the plant will let you have a little fun with the spoils of your victory before they are consumed.";
		else:	[Opponent has a pussy]
			say "     While more than half of the beaten prey's body is covered in green tendrils, Voria has left the crotch area exposed, as well as the victim's cunt, allowing the plant to let one of its cock-shaped tentacles to slither right up to the vulnerable slit. Without any hesitation, the tentacle plunges deep into the restrained victim's cunt. The prey's squirming halts as the tentacle pistons in and out of the prey's folds with little respite, causing the foe to moan loudly with arousal. Any attempt your bound opponent tries to escape is quickly subdued by Voria pounding their femalehood into submission.";
			say "     Soon, the victim's resistance fades away, drowned by the pleasure of the tentacle driving into their core. With its meal properly subdued, Voria drags its prey closer to its main mouth and promptly chomps down, enclosing your foe's head and shoulders within its maw, trapping them even further. You guess that Voria is going to slurp down the rest of its snack right away, but to your surprise, the plant instead turns their head, which also puts on display their vulnerable, half-eaten prey. It appears that Voria is waiting for you to tell it to go ahead. You can give Voria the signal to finish its meal, or you can see if the plant will let you have a little fun with the spoils of your victory before they are consumed.";
		if player is neuter and VoriaCocks is 0 and VoriaCunts > 0:	[Neuter players cannot join in the fun with female opponents]
			say "[VoriaPCWatchFemale]";
		else:	[Sex menu based on player and opponent genitals]
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			if VoriaCocks > 0 and player is male:
				choose a blank row in table of fucking options;
				now title entry is "Ass Pound";
				now sortorder entry is 1;
				now description entry is "Have some anal fun with your foe";
			[]
			if VoriaCocks > 0 and player is female:
				choose a blank row in table of fucking options;
				now title entry is "Ride Cock";
				now sortorder entry is 2;
				now description entry is "Use your foe's dick on your pussy";
			[]
			if VoriaCocks > 0:
				choose a blank row in table of fucking options;
				now title entry is "Take Cock in Butt";
				now sortorder entry is 3;
				now description entry is "Ride your foe's dick with your ass";
			[]
			if VoriaCocks is 0 and VoriaCunts > 0 and player is male:
				choose a blank row in table of fucking options;
				now title entry is "Claim Pussy";
				now sortorder entry is 4;
				now description entry is "Stick your dick in your foe's cunt";
			[]
			if VoriaCocks is 0 and VoriaCunts > 0 and player is female:
				choose a blank row in table of fucking options;
				now title entry is "Scissor";
				now sortorder entry is 5;
				now description entry is "Grind your cunt against your foe's";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Just Watch";
			now sortorder entry is 6;
			now description entry is "Let Voria eat without you interrupting";
			[]
			sort the table of fucking options in sortorder order;
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			while sextablerun is 0:
				say "Pick the corresponding number> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					now current menu selection is calcnumber;
					choose row calcnumber in table of fucking options;
					say "[title entry]: [description entry]?";
					if Player consents:
						let nam be title entry;
						now sextablerun is 1;
						if nam is "Ass Pound":
							say "[VoriaPCAssPound]";
						if nam is "Ride Cock":
							say "[VoriaPCPussyRide]";
						if nam is "Take Cock in Butt":
							say "[VoriaPCAssRide]";
						if nam is "Claim Pussy":
							say "[VoriaPCPussyPound]";
						if nam is "Scissor":
							say "[VoriaPCScissor]";
						if nam is "Just Watch":
							if VoriaCocks > 0:
								say "[VoriaPCWatchMale]";
							else:
								say "[VoriaPCWatchFemale]";
						wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;
	else:
		LineBreak;
		say "     Turning around, you decide to keep watch for anything that might interrupt your hungry plant friend's meal. For a while, you hear nothing but the rustling of Voria's leaves and vines, as well as the moans of arousal of the bound prey. Eventually, those sounds are replaced by a short series of wet squelches. A moment later, things quiet down, and you turn back around to see no sign of the defeated foe except for the satisfied smile on Voria's mouth. With your plant fed and ready to go, the two of you resume your explorations.";
	now hunger of Voria is 0;	[Voria doesn't need to eat for 8 turns as the player's pet]

to say VoriaPCAssPound:	[Player sticks dick in enemy butt]
	say "     Not wanting to pass up this opportunity to have some fun with your plant companion, you walk over to the bound victim as you set down your gear, and your hands begin stroking your [Cock of Player] dick. As if sensing your anal intent, Voria pulls the helpless victim onto one of its bed-sized leaves and flips them over onto their stomach while still continuing to suck on the captive shaft. Several smaller vines slither forward to grope at its prey's rear cheeks before spreading them wide, giving you clear access to your target's asshole. Between watching Voria's debaucherous capture and the few moments of warm-up you gave yourself, your cock is nice and hard, ready to plunder your enemy's booty.";
	say "     Your victim squirms a bit from your touch, but Voria keeps them restrained, allowing you to line your dick up with their ass and push right into the welcoming hole. Both you and the captive let out audible moans of arousal as your shaft sinks into their posterior. You take a moment for you to enjoy the tightness around your malehood, as well as letting your opponent adjust to your anal intrusion. Of course, just leaving your dick inside your foe is not enough, and you soon start rocking your hips back and forth. Slowly and steadily, you push deeper into your opponent's warm, tight rear tunnel, and you relish in the exquisite sensation of the clenching rectal walls.";
	WaitLineBreak;
	say "     [if player is dominant]Your pleasure is heightened with the satisfaction that you turned the tables on your would-be attacker and are now thoroughly dominating them.[end if] While your growing lust prompts you to gradually increase the speed of your thrusts, Voria's mouth-tentacle has not stopped suckling on the victim's dick. With you and your plant claiming your victory spoils from both the front and rear, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. You have a clear view as Voria's mouth-tentacle clamps down on your foe's spurting cock, not a single drop of cum leaking out as bulges of seed travel down the tentacle and back to Voria's main body.";
	say "     The erotic sight of Voria milking its prey is enough to push you over the edge, and soon after, you groan in pleasure as you cum into their ass. Voria waits patiently for you to take a few moments to bask in your afterglow, but as soon as you catch your breath and pull out, another one of Voria's mouth-tentacle goes over to your cock, a tongue-like appendage slipping out of the tiny maw and lapping up the juicy bounty dripping from your shaft. Voria then moves onto the main course, raising its prey and feeding the rest of them into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch as well as the creamy filling that you added to it. With both you and your plant friend sated, you continue on your explorations.";

to say VoriaPCPussyRide:	[Player uses their pussy to ride enemy dick]
	say "     Not wanting to pass up this opportunity to have some fun with your plant companion, you walk over to the bound victim as you set down your gear and let your hand drop down to your crotch to caress the edges of your cunt. Seeing your approach, Voria pulls the helpless victim onto one of its bed-sized leaves. The mouth-tentacle then takes a few last, elongated sucks on the captive's shaft before rising up, releasing the now rock-hard cock to let it stand tall and ready for your pleasure. Between watching Voria's debaucherous capture and the few moments of warm-up you gave yourself, your pussy is starting to moisten with anticipation, ready to claim your prize. You climb up on top of the captive, straddling your legs so that your slit is positioned right over the ready rod.";
	say "     Your victim squirms a bit from your touch, but Voria keeps them restrained, allowing you to line yourself up with the raised cock and slowly sink down, welcoming the shaft into your pussy. Both you and the captive let out audible moans of arousal as you take in the girthy tool. You take a moment to relish in the malehood filling your canal and rubbing your sensitive inner walls. Of course, just leaving the twitching tool inside of you is not enough, and you soon start to move your body. Voria loosely loops some small vines around your hands, giving you some support as you slowly raise yourself up until just the tip of your opponent's malehood is barely touching the entrance of your glistening cunt. Taking a deep breath, you plunge right back down, almost taking the entirety of your opponent's warm, throbbing shaft inside of you and relishing the filling sensation in your core.";
	WaitLineBreak;
	say "     [if player is dominant]Your pleasure is heightened with the satisfaction that you turned the tables on your would-be attacker and are now using them on your own terms.[end if] With Voria's vines helping out and the increasing wetness your muff is making in eagerness, you rise up and down, riding your victim's cock as you gradually increase in speed, and at the same time, Voria has a tentacle play and caress their prey's balls. With you and your plant claiming your victory spoils, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. You let out a moan of your own when you feel the warmth of their cum gush into you, filling you with satisfaction both literally and figuratively, which in turn pushes you over the edge with your own orgasm, your juices mixing with the jizz painting your insides.";
	say "     Voria waits patiently for you to take a few moments to bask in your afterglow, but as soon as you catch your breath and raise yourself up, the plant promptly reintroduces the mouth-tentacle clamps right back on the still-spurting cock, enjoying the last few bits of spunk, as well as licking up traces of your delicious nectar. At the same time, another of Voria's mouth-tentacle goes over to your dripping crotch, a tongue-like appendage slipping out of the tiny maw and lapping up the juicy bounty between your loins. After milking the last drops of cum from its prey and cleaning you off, Voria moves onto the main course, raising its prey and feeding the rest of them into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch. With both you and your plant friend sated, you continue on your explorations.";

to say VoriaPCAssRide:	[Player uses their ass to ride enemy dick]
	say "     Not wanting to pass up this opportunity to have some fun with your plant companion, you walk over to the bound victim as you set down your gear. Seeing your approach, Voria pulls the helpless victim onto one of its bed-sized leaves as it waits for your command. A simple point of your finger at the mouth-tentacle milking your opponent is all the plant needs to understand your desire. The mouth-tentacle then takes a few last, elongated sucks on the captive's shaft before rising up, releasing the now rock-hard cock to let it stand tall and ready for your pleasure. Watching Voria's debaucherous capture has been strangely erotic, and a growing itch in your crotch area demands you to sate your lust and claim your prize. You climb up on top of the captive, straddling your legs so that your ass is positioned right over the ready rod.";
	say "     Your victim squirms a bit from your touch, but Voria keeps them restrained, allowing you to line yourself up with the raised cock and slowly sink down, welcoming the shaft between your cheeks and into your tight hole. Both you and the captive let out audible moans of arousal as you take in the girthy tool. You take a moment to relish in the malehood filling your rear and rubbing your sensitive inner walls. Of course, just leaving the twitching tool inside of you is not enough, and you soon start to move your body. Voria loosely loops some small vines around your hands, giving you some support as you slowly raise yourself up until just the tip of your opponent's malehood is barely touching the entrance to your backdoor. Taking a deep breath, you slowly let yourself back down, letting your opponent's warm, throbbing shaft go deeper than the last and relishing the filling sensation.";
	WaitLineBreak;
	say "     [if player is dominant]Your pleasure is heightened with the satisfaction that you turned the tables on your would-be attacker and are now using them on your own terms.[end if] With Voria's vines helping out, you rise up and down, each cycle getting you more accustomed to taking in your victim's cock, and at the same time, Voria has a tentacle play and caress their prey's balls. With you and your plant claiming your victory spoils, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. You let out a moan of your own when you feel the warmth of their cum gush into you, filling you with satisfaction both literally and figuratively, which in turn pushes you over the edge with your own climax as you enjoy the intoxicating jizz paint your insides.";
	say "     Voria waits patiently for you to take a few moments to bask in your afterglow, but as soon as you catch your breath and raise yourself up, the plant promptly reintroduces the mouth-tentacle clamps right back on the still-spurting cock, enjoying the last few bits of spunk. At the same time, another of Voria's mouth-tentacle goes over to your butt, a tongue-like appendage slipping out of the tiny maw and lapping up the juicy bounty dripping out of your ass. After milking the last drops of cum from its prey and cleaning you off, Voria moves onto the main course, raising its prey and feeding the rest of them into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch. With both you and your plant friend sated, you continue on your explorations.";

to say VoriaPCPussyPound:	[Player sticks dick in enemy pussy]
	say "     Not wanting to pass up this opportunity to have some fun with your plant companion, you walk over to the bound victim as you set down your gear, and your hands begin stroking your [Cock of Player] dick. As if sensing your intent, Voria pulls the helpless victim onto one of its bed-sized leaves, and the tentacle gives one final push into its captive's pussy before withdrawing out, giving you clear access to your target's glistening cunt. Between watching Voria's debaucherous capture and the few moments of warm-up you gave yourself, your cock is nice and hard, ready to plunder your enemy's nethers. You firmly plant your hands on the captive's thighs with a loud [italic type]SLAP[roman type], and eagerly begin rubbing your shaft on the lips of the exposed muff.";
	say "     Your victim squirms a bit from your touch, but Voria keeps them restrained, allowing you to line your dick up with their slit and push right into the welcoming hole. Both you and the captive let out audible moans of arousal as your shaft sinks into their core. You take a moment for you to enjoy the tightness around your malehood, as well as letting your opponent adjust to your penetration. Of course, just leaving your dick inside your foe is not enough, and you soon start rocking your hips back and forth. Slowly and steadily, you push deeper into your opponent's warm, slick canal, and you relish in the sensation of the clenching walls on your shaft.";
	WaitLineBreak;
	say "     [if player is dominant]Your pleasure is heightened with the satisfaction that you turned the tables on your would-be attacker and are now thoroughly dominating them.[end if] Your growing lust prompts you to gradually increase the speed of your thrusts, aided by the increasingly-slick tunnel that your malehood is pounding into. To add to the fun, Voria sneaks a tentacle to start playing with the captive's clit. With you and your plant claiming your victory spoils, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. The sudden tightening around your cock is enough to push you over the edge, and soon after, you groan in pleasure as you cum into their pussy.";
	say "     Voria waits patiently for you to take a few moments to bask in your afterglow, but as soon as you catch your breath and pull out, the plant promptly reintroduces the cock-head tentacle into its prey's dripping cunt, slowly pumping in and out of the well-used hole. At the same time, one of Voria's mouth-tentacle goes over to your cock, a tongue-like appendage slipping out of the tiny maw and lapping up the juicy bounty dripping from your shaft. After cleaning you off, Voria takes out the cock-tentacle from your foe, the limb completely clean as all traces of lusty fluids were somehow absorbed into the plant. Voria then moves onto the main course, raising its prey and feeding the rest of them into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch as well as the creamy filling that you added to it. With both you and your plant friend sated, you continue on your explorations.";

to say VoriaPCScissor:	[Player grinds their pussy on enemy pussy]
	say "     Not wanting to pass up this opportunity to have some fun with your plant companion, you walk over to the bound victim as you set down your gear and let your hand drop down to your crotch to caress the edges of your cunt. As if sensing your intent, Voria pulls the helpless victim onto one of its bed-sized leaves, and the tentacle gives one final push into its captive's pussy before withdrawing out. A few vines then wraps around your target's left leg and lifts it up, giving you clear access to the glistening canal. Between watching Voria's debaucherous capture and the few moments of warm-up you gave yourself, your pussy is starting to moisten with anticipation, ready to claim your prize.";
	say "     Your victim squirms a bit when they feel your body maneuver its way between their legs, but Voria keeps them restrained, allowing you to line yourself up and gently place the lips of your nethers on your opponent's. A shiver of delight runs through you as your sensitive slit meets the slick snatch of your victim, and with Voria gently wrapping several vines around your body for support, you're ready to begin the main event. You and your opponent both moan in arousal when you start grinding your lower lips against your foe's, the sparks of bliss growing with every move of your hips.";
	WaitLineBreak;
	say "     [if player is dominant]Your pleasure is heightened with the satisfaction that you turned the tables on your would-be attacker and are now using them on your own terms.[end if] With the increasing wetness of both of your cunts are making in eagerness, you press down deeper, mashing your slick flesh together and gradually increasing in speed. While you are beginning to lose yourself to your lust, Voria sneaks a thin vine between you and your opponent and begins caressing the captive's clit. With you and your plant claiming your victory spoils, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. The sight of your victim spasming in ecstasy is enough to push you over the edge with your own orgasm, your juices mixing with theirs as they drip down your bodies and onto Voria's bed-sized leaf.";
	say "     Several tentacles quickly move toward the lusty nectar, and they somehow absorb the liquids like sponges, small bulges traveling down the green limbs and back to Voria's main body. When you catch your breath and get off your opponent, the plant promptly reintroduces the cock-head tentacle into its prey's dripping cunt, slowly pumping in and out of the well-used hole. At the same time, one of Voria's mouth-tentacle goes over to your pussy, a tongue-like appendage slipping out of the tiny maw and lapping up the juicy bounty dripping there. After cleaning you off, Voria takes out the cock-tentacle from your foe, the limb completely clean from also drinking in the juices. Voria then moves onto the main course, raising its prey and feeding the rest of them into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch as well as the extra honey that you added to it. With both you and your plant friend sated, you continue on your explorations.";

to say VoriaPCWatchMale:	[Player watches Voria eat male enemy]
	say "     Deciding to let Voria have its treat without any interruptions, you stay back and give the go-ahead sign for your plant friend to continue. Wasting no time, Voria turns its full attention in enjoying its prey, its big maw suckling and savoring on the upper parts of the captive's body while the mouth-tentacle continues to do the same with the shaft fully inside of it. Audible moans of arousal could be heard from the captive as they are assaulted by the two-pronged sucking, and the sounds only increase when Voria moves a tentacle to begin playing and caressing their prey's balls. The sight of watching your helpless foe being so thoroughly dominated makes your heart start racing, and one of your hands drifts down to your [if player is male]cock[else if player is female]cunt[else]crotch[end if] as your gaze remains fixed on the erotic sight that's taking place.";
	say "     No doubt drowning in a verdant sea of pleasure, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. You have a clear view as Voria's mouth-tentacle clamps down on your foe's spurting cock, not a single drop of cum leaking out as bulges of seed travel down the tentacle and back to Voria's main body. The erotic sight of Voria milking its prey is enough to get you to achieve a small but still satisfying orgasm, [if player is male]cum spurting from your dick and onto the ground[else if player is female]femcum squirting from your pussy and onto the ground[else]your body twitching in pleasure[end if]. As you bask in your afterglow, Voria finishes sucking its prey dry before feeding the exhausted foe into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch as well its creamy side dish. While you got a bit of satisfaction from watching the show, you wonder if you'll find more enjoyment if you actually participated the next time Voria gets hungry. Nonetheless, with your plant friend sated, you continue on your explorations.";

to say VoriaPCWatchFemale:	[Player watches Voria eat female enemy]
	say "     No doubt drowning in a verdant sea of pleasure, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. You have a clear view as Voria's mouth-tentacle clamps down on your foe's spurting cock, not a single drop of cum leaking out as bulges of seed travel down the tentacle and back to Voria's main body. The erotic sight of Voria milking its prey is enough to get you to achieve a small but still satisfying orgasm, [if player is male]cum spurting from your dick and onto the ground[else if player is female]femcum squirting from your pussy and onto the ground[else]your body twitching in pleasure[end if]. As you bask in your afterglow, Voria finishes sucking its prey dry before feeding the exhausted foe into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch as well its creamy side dish. While you got a bit of satisfaction from watching the show, you wonder if you'll find more enjoyment if you actually participated the next time Voria gets hungry. Nonetheless, with your plant friend sated, you continue on your explorations.";
	say "     No doubt drowning in a verdant sea of pleasure, it does not take long before your opponent's will crumbles as they let out a loud, aroused moan from their climax. You have a clear view as Voria drives the cock-tentacle deep into your foe's cunt, holding it steady as their prey's body twitches in the throes of their orgasm. Not a single drop of femcum leaks from the filled muff, the green limb somehow absorbing the juices as small bulges travels down the tentacle and back to Voria's main body. The erotic sight of Voria milking its prey is enough to get you to achieve a small but still satisfying orgasm, [if player is male]cum spurting from your dick and onto the ground[else if player is female]femcum squirting from your pussy and onto the ground[else]your body twitching in pleasure[end if]. As you bask in your afterglow, Voria finishes sucking its prey dry before feeding the exhausted foe into its maw. Voria rumbles happily after tightly shutting its mouth, relishing in its catch as well its juicy appetizer. While you got a bit of satisfaction from watching the show, you wonder if you'll find more enjoyment if you actually participated the next time Voria gets hungry. Nonetheless, with your plant friend sated, you continue on your explorations.";

Voria ends here.
