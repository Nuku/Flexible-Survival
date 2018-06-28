"Wave of Change v1.2, Based On Flexible Infection v3 by Shrimpy" by Nuku Valente

Book 0 - Pre game prep stuff

[If you want to add stuff, go to the "Book 1 - Tables" for new monsters and TFs, and to "Book 7 - The World" for messing with the map and placing things.  You shouldn't touch the rest unless you know what you're doing.  If you want to mess with or steal the rest of the code, go ahead.  I don't mind.]

Release along with an interpreter. 
Use memory economy.
Use fast route-finding.
Use fast route-finding.
Use MAX_INDIV_PROP_TABLE_SIZE of 500000.
Use MAX_PROP_TABLE_SIZE of 500000.
Use MAX_OBJ_PROP_COUNT of 128.
Use MAX_SYMBOLS of 30000.
use MAX_STATIC_DATA of 380000.
use MAX_NUM_STATIC_STRINGS of 30000.
[Use Max_EXPRESSION_NODES of 200.]


Infection Model is a kind of thing.
Human is a kind of infection model.
A room is either indoor or outdoor. A room is usually outdoor.
An infection model is either rare or not rare. An infection model is usually not rare.
An infection model is either unique or not unique. An infection model is usually not unique.
An infection model can be immune. An infection model is usually not immune.
An infection model can be jealous. An infection model is usually jealous.
An infection model can be herder. An infection model is usually not herder.
An infection model can be cooperative. An infection model is usually not cooperative.
An infection model can be npcimmune. An infection model is usually not npcimmune.
An infection model has a room called home.
An infection model can be fearful. An infection model is usually not fearful.
A person is either mobile or immobile. A person is usually mobile.
An infection model can be sterile. An infection model is usually not sterile.
An infection model can be sanitized. An infection model is usually not sanitized.
An infection model can be semifertile. An infection model is usually not semifertile.
A person can be spotted. A person is usually spotted.
An infection model can be stealthy. An infection model is usually not stealthy.
An infection model can be fast. An infection model is usually not fast.
A person can be fertilized. A person is usually not fertilized.
A person can be stunned. A person is usually not stunned.
normal man is a human.
Normal man is fearful.
PC is a human.
The description of human is "Just a regular human being. But for how long?[if the noun is a man] He nods in your direction.[end if][if the noun is female] She looks busy.[end if]".
Centaur is an infection model.
Centaur is male.
The tf table of human is table 0.
A thing has an infection model called ctype. The ctype of a person is usually normal man.
The ctype of the player is usually PC.
A person has text called female name.
A person has text called male name.
The printed name of yourself is "you".
An infection model is either male or female. An infection model is usually male.
An infection model is either neuter or singlesexed. An infection model is usually singlesexed.
A thing has a text called female sex. A thing has a text called male sex. A thing has a text called herm sex.
A person has a person called matron. The matron of a person is usually Prometheus.

Book 1 - Tables


Section - Template

Table 0 - Template			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head regains it's human form, you hope you can keep it this time."	"Pure human head."	"Your human head changes"
"chest"	"Your chest returns to normal."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly returns, drat."	"Pure human belly."	"Your human belly changes"
"pelvis"	"You once more have a human [if playerfemale is 1]vagina[otherwise]penis[end if]."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm returns to normal."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm returns to normal."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand returns to normal."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm returns to normal."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm returns to normal."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand returns to normal."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh returns to normal."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin returns to normal."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot returns to normal."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh returns to normal."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin returns to normal."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot returns to normal."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear returns to normal."	"Pure human rear."	"Your human rear changes"
"full" 	"human"	"You're just an ordinary [if playerfemale is 1]gal[otherwise]guy[end if]."	--

Table Female Human - Template			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head regains it's human form, you hope you can keep it this time."	"Pure human head."	"Your human head changes"
"chest"	"Your chest returns to normal."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly returns, drat."	"Pure human belly."	"Your human belly changes"
"pelvis"	"You once more have a human vagina."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm returns to normal."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm returns to normal."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand returns to normal."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm returns to normal."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm returns to normal."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand returns to normal."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh returns to normal."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin returns to normal."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot returns to normal."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh returns to normal."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin returns to normal."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot returns to normal."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear returns to normal."	"Pure human rear."	"Your human rear changes"
"full" 	"human"	"You're just an ordinary gal."	--

Section - Demon Mouse

Table demonic mouse - demon mouse shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head changes."	"Pure human head."	"Your human head changes"
"chest"	"Your chest changes.."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly changes."	"Pure human belly."	"Your human belly changes"
"pelvis"	"You once more have a human penis."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm changes.."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm changes.."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand changes.."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm changes.."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm changes.."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand changes.."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh changes.."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin changes.."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot changes.."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh changes.."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin changes.."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot changes.."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear changes.."	"Pure human rear."	"Your human rear changes"
"full" 	"demon mouse"	"You have become an agent of the abyss. A three foot tall mouse woman with red fur, excepting the black on hands and digitigrade feet. Your long tail twitches eagerly as you move, seeking new sources of hedonistic delights. Between your legs, an obscenely overlarge vagina drips hot wet fluids to the ground.[if mouse cock is visible] Tucked into the upper portion of your huge nether lips is a naked pink tapered cock. When not in use, it tucks away entirely, but otherwise it projects potently ahead and upwards, twitching.[end if]"	--


Section - Werewolf

Table werewolf - werewolf shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head changes. You can suddenly see and hear clearly, and your nose can smell so much. As you give out a full deep howl, a signal is sent. Those who hide now come from the darkness to take the city by force."	"Pure human head."	"Your human head changes"
"chest"	"Your chest changes.."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly changes."	"Pure human belly."	"Your human belly changes"
"pelvis"	"Your groin changes."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm changes.."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm changes.."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand changes.."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm changes.."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm changes.."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand changes.."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh changes.."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin changes.."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot changes.."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh changes.."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin changes.."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot changes.."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear changes.."	"Pure human rear."	"Your human rear changes"
"full" 	"werewolf"	"[if the destined femininity of the player is 1 and the destined masculinity of the player is 0]You are a female werewolf, a blend of attractive and fit human female and snarling feral wolf. Your body is just human enough to intrigue those not sent running, with wide hips and tight, B cupped breasts. Your snout hides long deadly looking teeth and slender fingers hide very capable claws for those that don't get the first hint.[end if][if the destined femininity of the player is 1 and the destined masculinity of the player is 1]You are a cross between a well built man and a wolf. Your large grey ears can detect any sound, and you move quietly. Heck, it seems the people around you barely even notice you're there. Your short tail wags behind you and you feel full of feral power. Now seems a good time to expand the pack.[end if][if the destined femininity of the player is 0 and the destined masculinity of the player is 1]You are a cross between a well built man and a wolf. Your large grey ears can detect any sound, and you move quietly. Heck, it seems the people around you barely even notice you're there. Your short tail wags behind you and you feel full of feral power. Now seems a good time to expand the pack.[end if][if the pregnant of player is greater than 0] Your body is rounder still for the pregnancy you are experiencing.[end if]"	--

Section - Were Fennec

Table were fennec - were fennec shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your ears grow huge as they move to the top of your head. Snout forms, fur grows, and suddenly it all seems so much clearer. You also get an increasing urge to induct others into your group, and can hear the gentle impulses of others who feel the same way."	"Pure human head."	"Your human head changes"
"chest"	"Your chest changes.."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly changes."	"Pure human belly."	"Your human belly changes"
"pelvis"	"Your groin swells with extreme sexuality, a thick knotted organ growing rapidly as a deep, wet, cunt expands into your shuddering form, leaving you panting, though you feel no urge to force this enhanced sexuality on others. They should be treated gently until they accept it."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm changes.."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm changes.."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand changes.."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm changes.."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm changes.."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand changes.."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh changes.."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin changes.."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot changes.."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh changes.."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin changes.."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your body is covered in soft, fluffy, fur. You feel warm and wonderful, and just... cute. You are a were fennec, and you want to share this lovely condition with everyone, to show them the pleasure of it, rather than letting them fall to other, depraved, infections. You can save them, and your tail wags at the thought."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear changes.."	"Pure human rear."	"Your human rear changes"
"full" 	"were fennec"	"You are entirely naked, but no one seems to notice. Well you do have fur. You are a fennec, with a long soft tail and large ears, standing on two legs easily with agile fingers. You have nice wide hips and firm bust along with a large, knotted, member. Your thoughts drift constantly to those less fortunate than yourself. If you could show them the pleasures of being a fennec, everything else would fall into place.[if the pregnant of player is greater than 0] Your body is even curvier than usual with the weight you are gaining in pregnancy.[end if]"	--

Section - Vixen

Table vixen - Vixen shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"A mild ache fills your head as it shrinks and narrows. A long pointed snout protrudes into your vision as large ears flicker above. You emit a soft yip of surprise as you lose the ability to talk."	"You have the perfectly normal head of a red vixen, except for the intelligent eyes that gaze from the beast's head."
"chest"	"Your torso loses mass and volume as fur spreads over chest and back."	"You have the chest of a small red fox, white on the bottom, ruddy red on top."
"gut"	"White fur spreads over your slimmed belly."	"You have soft white fur covering your belly."
"pelvis"	"Your genitals draw up into a white fur lined set of vulva. Not being in heat, your interest seems somewhat muted."	"You have the furry gender of a small red vixen."
"left upper arm"	"Your left arm shrinks abruptly, throwing off your balance as it becomes animal sized."	"Your left arm is sized properly for a small red fox."
"left forearm"	"Red fur spreads over your left arm in an even carpet."	"Your left arm is covered in soft red fur."
"left hand"	"The fingers on your left hand retract as you form short black claws and your hand shrinks to a small animal paw."	"Your left hand has become a black booted paw suitable for a small red fox."
"right upper arm"	"Your right arm shrinks abruptly, throwing off your balance as it becomes animal sized."	"Your right arm is sized properly for a small red fox."	"Your human right upper arm changes"
"right forearm"	"Red fur spreads over your right arm in an even carpet."	"Your right arm is covered in soft red fur."	"Your human right forearm changes"
"right hand"	"The fingers on your right hand retract as you form short black claws and your hand shrinks to a small animal paw."	"Your right hand has become a black booted paw suitable for a small red fox."	"Your human right hand changes"
"left thigh"	"Your right leg shrinks abruptly, throwing off your balance as it becomes animal sized."	"Your right leg is a small digitigrade leg, proper for a red fox."
"left shin"	"Smooth red fur spreads across your left leg."	"Your left leg is covered in red fur."	"Your human left shin changes"
"left foot"	"Bones crack as your left foot shrinks dramatically into a small black paw."	"Where once was a foot, your left foot has become a black furry paw of a fox."	"Your human left foot changes"
"right thigh"	"Your right leg shrinks abruptly, throwing off your balance as it becomes animal sized."	"Your right leg is a small digitigrade leg, proper for a red fox."
"right shin"	"Smooth red fur spreads across your right leg."	"Your right leg is covered in red fur."
"right foot"	"Bones crack as your right foot shrinks dramatically into a small black paw."	"Where once was a foot, your right foot has become a black furry paw of a fox."
"rear" 	"A long red tail emerges from your bottom, swaying stiffly behind you with every step."	"You have a fox's tail, stiffer than pictured in most art. It has red fur, except for some black at the tip."
"full"	"Vixen"	"You have become a perfectly ordinary red vixen. Only the light of intelligence in your eyes give any clue to your old self. Red fur covers most of your body, white  black on your ears, paws, and tailtip, and white running along your underbelly. You have the most unreasonable urge to find a rodent and sink your teeth into it.[if the pregnant of player is greater than 0] Your belly bulges with new kits.[end if]"

Section - Slutrat

Table slutrat - slutrat shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head changes."	"Pure human head."	"Your human head changes"
"chest"	"Your chest changes.."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly changes."	"Pure human belly."	"Your human belly changes"
"pelvis"	"You once more have a human penis."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm changes.."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm changes.."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand changes.."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm changes.."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm changes.."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand changes.."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh changes.."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin changes.."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot changes.."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh changes.."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin changes.."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot changes.."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear changes.."	"Pure human rear."	"Your human rear changes"
"full" 	"Slut Rat"	"Towering over most, a tall intimidating wall of fur and leather. It appears female at first glance. Piercing its large directed ears are one ring a piece, one a goldish hue, and another silverish shade. It's covered from top to bottom in ebony black fur, that is, where clothing is not apparent. Her eyes are the same black shade as her hair, the left eye having a scar that runs an inch above downwards in a slicing motion to an inch or two below.
		 She wears a rather large leather collar with a bell attached, the bell portion resting between the massive pillows of her chest, resting on top of them like some sort of sacred artifact. The bell makes no sound. Her breasts are restrained by her leather suit, the two upside down V's struggling mightily with small buckles between them just to keep them fastened and avoid falling apart. They might be seven or so inches in radius, and the leather doesn't do much to hide the details from the front, indents visible in the leather, revealing more than it aught to.[line break]
		 Her arms are long and slender, with black fur, and bright pink shaded paws. The paws have clearly defined fingers, looking quite capable of grasping things, or clawing, with sharp black shaded tips to them. Her midsection is slim and trim, and also concealed fully by the leather bodice she wears, clinging tightly to her contours.[line break]
		 Gazing at her from the back, it can be seen that the leather doesn't cover much back there beyond decency. Her furred buttocks and thighs are visible, though calves are again covered in the suit. From the front, an odd sight greets the eyes. The contours of the leather shape outwards from her thighs and along her belly, the shape is distinct and hard to miss, as if this bizarre furred female were in the possession of monstrously large male genitalia. She makes no move to be discrete or hide this abnormality, seeming perfectly at ease with its existence, probably having been the one to modify the suit in the first place to cope with such an unwieldy intruder.[line break]
		 Glancing back down to her feet, they are garbed in simple shoes, looking dated and warn from far too much overuse and abuse."	--

Section - Huge Dragoness

Table huge dragoness - huge dragoness shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head changes."	"Pure human head."	"Your human head changes"
"chest"	"Your chest changes.."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly changes."	"Pure human belly."	"Your human belly changes"
"pelvis"	"You once more have a human penis."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm changes.."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm changes.."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand changes.."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm changes.."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm changes.."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand changes.."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh changes.."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin changes.."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot changes.."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh changes.."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin changes.."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot changes.."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear changes.."	"Pure human rear."	"Your human rear changes"
"full" 	"huge dragoness"	"You are a huge example of bipedal female dragon. Mostly female, if you don't count the two stories of ribbed dragon dick. You are about four stories tall, with an extra one or two of tail behind you. Your shape is curvaceous mammallian delight, with wide hips and minivan sized breasts. Everyone seems so small now!"	--

Section - Uber Fox

Table Uber Fox - Uber Fox Shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head changes."	"Pure human head."	"Your human head changes"
"chest"	"Your chest changes.."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly changes."	"Pure human belly."	"Your human belly changes"
"pelvis"	"You once more have a human penis."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm changes.."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm changes.."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand changes.."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm changes.."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm changes.."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand changes.."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh changes.."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin changes.."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot changes.."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh changes.."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin changes.."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot changes.."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Your rear changes.."	"Pure human rear."	"Your human rear changes"
"full" 	"uber fox"	"You are a huge quadrupedal creature. Like a fox grown about five times over, with bulging muscles under your sleek red and black fur. You are about five feet tall from paws to shoulders, and seven feet long from snout to tailbase. Speaking of tail, you have several, all twining and flicking about. Under them, you have a weeping furry cunt, about six inches long. Under that, a large set of furry balls drawn against the body leading to a long, slick fox shaft, knot showing mildly, with the potential to get much larger. Seed drips from the shaft, leaving a trail along the ground. Along your underbelly are three large pairs of furry breasts, their thick teats pointing towards the ground. They sway and jostle with your steps, but do not stop your powerful form from moving with great dexterity despite."	--

Section - Jackal

Table jackal - jackal shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head changes."	"Pure human head."	"Your human head changes"
"chest"	"Your chest changes.."	"Pure human chest."	"Your human chest changes"
"gut"	"Your beer belly changes."	"Pure human belly."	"Your human belly changes"
"pelvis"	"You once more have a human penis."	"Pure human crotch."	"Your human hips and groin changes"
"left upper arm"	"Your left upper arm changes.."	"Pure human left upper arm."	"Your human left upper arm changes"
"left forearm"	"Your left forearm changes.."	"Pure human left forearm."	"Your human left forearm changes"
"left hand"	"Your left hand changes.."	"Pure human left hand."	"Your human left hand changes"
"right upper arm"	"Your right upper arm changes.."	"Pure human right upper arm."	"Your human right upper arm changes"
"right forearm"	"Your right forearm changes.."	"Pure human right forearm."	"Your human right forearm changes"
"right hand"	"Your right hand changes.."	"Pure human right hand."	"Your human right hand changes"
"left thigh"	"Your left thigh changes.."	"Pure human left thigh."	"Your human left thigh changes"
"left shin"	"Your left shin changes.."	"Pure human left shin."	"Your human left shin changes"
"left foot"	"Your left foot changes.."	"Pure human left foot."	"Your human left foot changes"
"right thigh"	"Your right thigh changes.."	"Pure human right thigh."	"Your human right thigh changes"
"right shin"	"Your right shin changes.."	"Pure human right shin."	"Your human right shin changes"
"right foot" 	"Your right foot changes.."	"Pure human right foot."	"Your human right foot changes"
"rear" 	"Black fur spreads over your ass as a long, whip like, tail snakes into being, swaying like a thick cord."	"Your butt is covered in black fur and you sport a long jackal's tail."	--
"full" 	"jackal"	"You are a cheater! Sorry, you have to do the anubis storyline properly to see the possible things you could become!"	--

Section - Latex Skunk

Table 1 - Skunk Shifts
Segment	Shift Text	Desc Text
"head"		"The black latex moves over your head like a hood, leaving a muzzle that's white on the bottom with a head that's all black, all completed by the pair of cat-like ears sitting atop it."		"You have a rubber skunk's head."
"chest"		"A sea of black moves over your back and a sea of white over your chest, the white gathering into a pair of B-cup breasts while a matching stripe forms down the middle of the black."	"Your white latex chest sports a pair of B-sized breasts."
"gut"		"The rubber covers your gut in creamy white, making it far more shapely and feminine."												"Your creamy white gut has very feminine curves."
"pelvis"		"You feel the rubber penetrating you as you lose your manhood and gain something... a little different."											"Your male genitalia has been replaced by that of a woman."
"left upper arm"	"The stuff flows over your left upper arm, the shiny black accentuating its increasingly sleek shape."											"Your upper left arm is coated in black latex and very shapely."
"left forearm"	"The rubber squeezes over your left forearm, morphing it into a daintier and more feminine form."											"Your left forearm is thin and covered in black rubber."
"left hand"	"The black latex covers your left hand, making it look far smoother and more delicate... up until the claws sprout from your fingertips."							"Your left hand looks like that of a woman, aside from the claws."
"right upper arm"	"The stuff flows over your right upper arm, the shiny black accentuating its increasingly sleek shape."											"Your upper right arm is coated in black latex and very shapely."
"right forearm"	"The rubber squeezes over your right forearm, morphing it into a daintier and more feminine form."											"Your right forearm is thin and covered in black rubber."
"right hand"	"The black latex covers your right hand, making it look far smoother and more delicate... up until the claws sprout from your fingertips."							"Your right hand looks like that of a woman, aside from the claws."
"left thigh"	"Your left thigh gains a feminine flair as the rubber flows over it, becoming far more shapely."												"Your black latex-coated left thigh is very shapely and feminine."
"left shin"	"Your left shin and calf become thinner and far more attractive as the black latex squeezes them into shape."										"Your black left shin would be extremely attractive on someone else."
"left foot"	"The thick black fluid pours over your left foot, leaving a beautifully shaped replacement."												"Your left foot looks like it belongs on a rubber woman, not on a man."
"right thigh"	"Your right thigh gains a feminine flair as the rubber flows over it, becoming far more shapely."												"Your black latex-coated right thigh is very shapely and feminine."
"right shin"	"Your right shin and calf become thinner and far more attractive as the black latex squeezes them into shape."										"Your black right shin would be extremely attractive on someone else."
"right foot"	"The thick black fluid pours over your right foot, leaving a beautifully shaped replacement."												"Your right foot looks like it belongs on a rubber woman, not on a man."
"rear"		"The black latex shifts over your ass, squeezing it until it's tight and sexy."														"Your rubbery rear is very tight and shapely."
"full"		"latex skunk"	"You are a rather female anthropomorphic latex skunk."

Section - Irish Cat

Table icat - Irish Cat
Segment	Shift Text	Desc Text
"head"		"Your ears tickle a moment as something nudges against both from the side. A peek reveals tabby like stripes on pointed ears holding up a round green hat."		"You wear a green round hat that rests perfectly between your brown, white, and black furred ears. Your head is that of a tabby."
"chest"		"Brown, white, and black fur sweeps out in bold stripes as your chest settles into two round breasts that jiggle slightly with your movement. A green outfit comes into being rapidly around you, concealing your newly reshaped breasts."	"Your striped breasts are concealed by a bright green jacket. You have a brown bow around your neck."
"gut"		"Your belly rumbles as your lower torso becomes slender and well formed. Dark cloth covers it as a shirt seems to appear from nowhere."												"Your slender belly is covered in a dark shirt."
"pelvis"		"Your groin feels like it suddenly caught fire with an intense pain. It fades almost immediately, becoming a warm pulsing pleasure as you grow a striped pussy."											"You have a furry striped, blue lipped, vagina."
"left upper arm"	"Fur erupts from the pores of your upper left arm as you gain stripes."											"Your upper left arm is covered in soft furry stripes."
"left forearm"	"Your left forearm is soon covered in soft feline fur as stripes run along it."											"Your left forearm is thin and covered in striped fur."
"left hand"	"Thin claws erupt from your left hand as you gain thick pads and a general feline appearance."							"Your left hand is a mix between a human's and a cat's, covered in soft white fur and padded."
"right upper arm"	"Fur erupts from the pores of your upper right arm as you gain stripes."											"Your upper right arm is covered in soft furry stripes."
"right forearm"	"Your right forearm is soon covered in soft feline fur as stripes run along it."											"Your right forearm is thin and covered in striped fur."
"right hand"	"Thin claws erupt from your right hand as you gain thick pads and a general feline appearance."							"Your right hand is a mix between a human's and a cat's, covered in soft white fur and padded."
"left thigh"	"Your left thigh gains a feminine flair as the fur flows over it, becoming far more shapely."												"Your striped left thigh is very shapely and feminine."
"left shin"	"Your left shin and calf become thinner and far more attractive as the fur flows over them."										"Your black left shin would be extremely attractive on someone else."
"left foot"	"The fur sweeps down over your left foot, leaving a large feline pad in its place."												"Your left foot has become the striped paw of a feline."
"right thigh"	"Your right thigh gains a feminine flair as the fur flows over it, becoming far more shapely."												"Your striped right thigh is very shapely and feminine."
"right shin"	"Your right shin and calf become thinner and far more attractive as the fur flows over them."										"Your black right shin would be extremely attractive on someone else."
"right foot"	"The fur sweeps down over your right foot, leaving a large feline pad in its place."												"Your right foot has become the striped paw of a feline."
"rear"		"You grow a long and slinky striped feline tail even as a skirt flows smoothly to cover your hips."														"You have a long feline tail poking out of a green skirt."
"full"		"irish cat"	"You have become a brown furred, with white and black stripes, cat girl. Perched between your triangular ears is a round cap of two shades of green. You have a stylish green jacket with a darker material worn beneath. A lighter shade of green rests on your tartan skirt, from which your long tail sways behind you. You have a brown ribbon fastened around your neck and the white fur of your hands gives the false appearance of gloves."

Section - Gryphon

Table Gryphon - Gryphon Shifts
Segment	Shift Text	Desc Text
"head"		"Your face draws forward powerfully but painlessly, tingles running across your flesh as it darkens to a deep blue shade. Your mouth hardens into a long, pointed beak, continuing to darken to a midnight black as soft azure feathers spread across your skull. Your ears have migrated to the top of your head and are now large and expressive. Unlike the rest of your skull, the ears are furry, pink on the inside, blue outside."	"You have the head of a blue gryphoness, with pointed black beak and piercing blue eyes."
"chest"		"Heavy weight draws you forward as a female moan rises in your changing throat. Your chest jiggles delightfully with large, blue tinted, breasts, covered with a fine layer of fur, except your thick, lighter toned, nipples. Your back itches fiercely before huge wings burst free behind you, fluttering with blue feathers on the back and white on the inside."	"You have the chest of a blue furred gryphoness, heavy breasts jiggling with your motions. A huge tuft of white fur rests between and above them, almost framing them. Behind you, great wings of blue and white flutter lightly."
"gut"	"Your belly smooths and becomes slender as white fur spreads over your front and blue fur wraps around the sides and back."	"You have a soft but slender white furred belly."
"pelvis"	"As the white fur creeps down towards your cock, it becomes stiff and rigid. With every beat o your heart, it gets a little larger, swelling upwards until it is a huge, thick, plug. Your balls pull up tight against it as both darken to a deep black shade, and lose any hint of hair. Just when you thought it was over, a wet splitting sensation is felt beneath the enlarged maleness, signalling your new herm status, and a thick knot forms at the base of your twitching member."											"You are a hermaphrodite with a white furred groin. Your female sex is invisible from the front,  hidden behind a grossly thickened and somewhat elongated plug of a cock, balls tight to its base, all deep black and hairless."
"left upper arm"	"Deep blue, almost purple, fur spreads across your upper left arm."											"You have purplish blue fur across your upper left arm."
"left forearm"	"Purple blue fur spreads down across your left forearm."	"Your left forearm is covered in dark blue fur."
"left hand"	"Soft itchiness spreads over your hand as it expands slightly, fingers lengthening and growing scaly, huge claws sprouting from each finger as you gain a left talon."	"Your left hand is more of a talon now, with heavy black scales and large black claws."
"right upper arm"	"Deep blue, almost purple, fur spreads across your upper right arm."	"You have purplish blue fur across your upper right arm."
"right forearm"	"Purple blue fur spreads down across your right forearm."											"Your right forearm is covered in dark blue fur."
"right hand"	"Soft itchiness spreads over your hand as it expands slightly, fingers lengthening and growing scaly, huge claws sprouting from each finger as you gain a right talon."	"Your right hand is more of a talon now, with heavy black scales and large black claws."
"left thigh"	"White fur covers your inner left thigh as light blur fur spreads along your increasingly graceful leg."	"You have a patch of white fur on your inner left thigh, the rest covered in light blue fur."
"left shin"	"Light blue fur spreads along your left shin as it expands and begins to reshape to support a digitigrade stance."	"Your left shin is light blue with fur and ready for a digitigrade stance."
"left foot"	"Light blue fur spreads over your left foot as it dramatically swells and bends, adjusting to stand on your toes."	"Your left foot is more of a paw, with four large claws and a digitigrade stance. It is also covered in light blue fur."
"right thigh"	"White fur covers your inner left thigh as light blur fur spreads along your increasingly graceful leg."	"You have a patch of white fur on your inner left thigh, the rest covered in light blue fur."
"right shin"	"Light blue fur spreads along your right shin as it expands and begins to reshape to support a digitigrade stance."	"Your right shin is light blue with fur and ready for a digitigrade stance."
"right foot"	"Light blue fur spreads over your right foot as it dramatically swells and bends, adjusting to stand on your toes."	"Your right foot is more of a paw, with four large claws and a digitigrade stance. It is also covered in light blue fur."
"rear"		"A long, blue furred, tail sneaks out from your rump as lustful thoughts nag at you and stir in your groin. The end of the tail poofs out into a large tuft."	"You have a long, blue, leonine tail behind you."
"full"		"gryphon"	"You are a tall and striking blue gryphon. You have wide hips and huge blue breasts, implying you lean more on your mammal half than your avian, though your large blue wings are quite a sight to behold. Between your white furred thighs is a huge, knotted, black cock and tightly drawn balls. From behind, the pinkened folds of your new female gender are visible under the lion like tail you sport. Your feet are digitigrade, and sport huge wicked claws that clack on hard surfaces."


Section - Phoenix

Table Phoenix - Phoenix Shifts
Segment	Shift Text	Desc Text
"head"		"Heat washes over your face and neck as your nose and mouth are drawn into a large broad beak. Feathers cover your skull as visible ears vanish."	"You have the majestically white feathered head of a phoenix."
"chest"		"A sensation not unlike a thousand little pinches has you wriggling as snow white feathers sprout all across your chest and back, soon forming a smooth pelt. Your chest reforms into two large breasts, each capped with an off-pink nipple."	"You have large D cup breasts on your white feathered chest. Hanging between the breasts is a fiery red jeweled necklace. Your nipples, exposed and pink, have faint drops of milk."
"gut"		"Your gut becomes somewhat rounded as downy feathers cover it entirely."												"Your belly is slightly pudgy, and covered in soft white feathers."
"pelvis"		"Your shaft becomes engorged as it swells out to about ten inches long, a knot forming at the base even as your balls are drawn up into your body with an odd sensation. Just as you feel you're ready to release, the shaft begins to draw inwards as well, sliding smoothly into you, leaving you with two slits, the latter a new addition."											"You have both male and female equipment, though the male seems to have an internal sheath. The whole area is covered with white feathers."
"left upper arm"	"Your left arm gains a coating of white feathers as extra structure begins to sprout, with huge flight feathers."											"Your upper left arm is the top part of a wing and arm, covered with white feathers."
"left forearm"	"A huge gathering of feathers project off your lower arm, extending out in a majestic wing."											"Your lower left arm has the majority of a wing coming off of it, covered in white wings."
"left hand"	"Your left hand draws back into your body, becoming support structure for a wing."							"You don't seem to have a left hand."
"right upper arm"	"Your right arm gains a coating of white feathers as extra structure begins to sprout, with huge flight feathers."											"Your upper right arm is the top part of a wing and arm, covered with white feathers."
"right forearm"	"A huge gathering of feathers project off your lower arm, extending out in a majestic wing."											"Your lower right arm has the majority of a wing coming off of it, covered in white wings."
"right hand"	"Your right hand draws back into your body, becoming support structure for a wing."							"You don't seem to have a right hand."
"left thigh"	"Your left thigh plumps up in a pudgy and female way as soft white feathers cover it."												"You have a large, feathered, white left thigh."
"left shin"	"Your left shin runs pleasantly plump, and white feathered, down towards a narrowed ankle."										"You have a plump and feathered left shin."
"left foot"	"Your left foot explodes in size as it becomes off-pink and more scaled than flesh. Great talons grip the ground as your new foot settles into place."												"Your left foot looks more like the large pink talon of a chicken."
"right thigh"	"Your right thigh plumps up in a pudgy and female way as soft white feathers cover it."												"You have a large, feathered, white right thigh."
"right shin"	"Your right shin runs pleasantly plump, and white feathered, down towards a narrowed ankle."										"You have a plump and feathered right shin."
"right foot"	"Your right foot explodes in size as it becomes off-pink and more scaled than flesh. Great talons grip the ground as your new foot settles into place."												"Your right foot looks more like the large pink talon of a chicken."
"rear"		"Your spine grows explosively, extending with brilliantly red and yellow feathers, like you were on fire, spread out in a peacock like display behind you."														"You have an eye catching splash of red and yellows of a fiery feathery tail that spreads wide behind you almost like a peacock."
"full"		"phoenix"	"You are a phoenix. You are covered with mostly white feathers, with the notable exception of your tail feathers, which spread out behind you like a peacock demonstration, brilliant reds and oranges, like a fire. Nestled between your large breasts is a dangling bit of jewelry, gold and red. Those same breasts have soft pink looking teats, filled with milk and ready. You appear entirely female, but know better, a second slit above the first hiding your withdrawn shaft. Your wings are integrated with your arms, though your hands have gone away, lending their support to the flight capable appendages. Your overall shape is female and plump, with large breasts and hips and thighs."

Section - Sheep

Table Sheep - Sheep Shifts
Segment	Shift Text	Desc Text
"head"		"Your vision is suddenly obstructed with layers of wool for a moment before your snout grows in and wet nose twitches."	"You have the head of a sheep person, very woolly."
"chest"	"Your chest and back is covered with momentarily itchy wool. It covers you up quite thoroughly, though movement seems to hint at breasts."	"Your chest and back is covered in a thick layer of wool. There is a slight hint of breasts under the warm mass."
"gut"		"Your gut becomes somewhat rounded as downy feathers cover it entirely."	"Your belly is slightly pudgy, and covered in soft white feathers."
"pelvis"	"Thick curls of wool sweep in over your groin. Difficult to tell at a glance, a pat verifies that you are female."	"You have the woolly gender of a female sheep."
"left upper arm"	"Your left arm becomes thinner and more female, losing bulk."	"Your left arm is slender and petite."
"left forearm"	"Your left arm is suddenly covered in thick white wool."	"Your left arm is covered in wool."
"left hand"	"Your fingers go numb as hooves grow at the tips of each, your palm and hand going woolly."	"Your hand is a mix between hand and hoof, with hoofs at the ends of fingers."
"right upper arm"	"Your right arm becomes thinner and more female, losing bulk."	"Your right arm is slender and petite."
"right forearm"	"Your right arm is suddenly covered in thick white wool."	"Your right arm is covered in wool."
"right hand"	"Your fingers go numb as hooves grow at the tips of each, your palm and hand going woolly."	"Your hand is a mix between hand and hoof, with hoofs at the ends of fingers."
"left thigh"	"Your hips widen a little as your plump thighs gain a layer of thick white wool."	"Your left thigh has gone fat and woolly."
"left shin"	"Wool sweeps over your left shin as it becomes woolly and plump."	"Your left shin is woolly and fattened."
"left foot"	"Your food abruptly clenches into a hard black hoof at the end of your left leg."	"You have a sheep's hoof for a left foot."
"right thigh"	"Your hips widen a little as your plump thighs gain a layer of thick white wool."	"Your right thigh has gone fat and woolly."
"right shin"	"Wool sweeps over your right shin as it becomes woolly and plump."	"Your right shin is woolly and fattened."
"right foot"	"Your food abruptly clenches into a hard black hoof at the end of your right leg."	"You have a sheep's hoof for a right foot."
"rear"	"Your bottom swells out into an attractive bubble just before it is consumed in thick curls of wool."														"You have quite an ass, it's almost a shame it's covered in so much wool. The wagging little tail is a nice touch though."
"full"		"Sheep"	"You have become a sheep person. Your horizontally barred eyes retain the spark of intelligence, though the rest of you seems lost under the layer of wool, only your black wet nose exposed. The wool does help keep you nice and warm though. Your feet have become hooves, but you still have fingers, and can speak at that. Let's hope there aren't any wolves about..."

Section - Rogue
	
Table Rogue - Rogue Shifts
Segment	Shift Text	Desc Text
"head"	"Your lips begin to tingle as they swell and turn a deep red shade. Your skull reforms as new thoughts flitter in your changing mind. Your old life begins to disgust you, what a waste! It's time to liven up this city with a little kiss or two. Your vision becomes slightly blocked by a short, cream furred, snout as white fur spreads over the rest of your head, new huge ears included."	"You have the head of a cartoon bat, with large triangular ears, blue shaded eyes, a black button nose and cream colored snout. Your pouting lips are a bright shade of red."
"chest"	"A dirty thrill runs over your back, towards your front, centering in the two growing mounds of furry flesh. Just as your breasts finish forming and white fur has covered your upper torso, a soft constriction is felt as a bodice wraps around you, snuggling your chest delightfully, lifting them up into prominent view."	"You have large white furry breasts in a pink-purple heart shaped bodice that holds them aloft as if offering them."
"gut"		"White fur carpets your belly as a dark purple, tight, suit flows down your front towards your groin."	"You have a slim, white furred, belly, concealed by a purple bodice."
"pelvis"	"You suddenly look down to see your groin changing. [if player is butch]Your cock goes rigid, throbbing before it begins to climax powerfully. with every spray, your shaft and balls dwindles a little. You are paralyzed as your maleness is milked from you, creating a huge puddle and leaving nothing behind. [end if]White fur covers your inner thighs and crotch as you form thick, wet, lips. A soft shudder runs through your body as the change slows."	"You have a white furred crotch with, thick lips within, soft pink in shade, damp with desire. Concealing it is the crotch of a purple bodice."
"left upper arm"	"Your left arm becomes slender and graceful."	"Your left arm is slender and petite."
"left forearm"	"White fur spreads over your left arm."	"You have soft white fur across your left arm and hand."
"left hand"	"With a soft feeling of squeezing, a white glove appears over your left hand and runs up, concealing your left arm up to the elbow."	"You have a long glove on your left hand, running up to your elbow."
"right upper arm"	"Your right arm becomes slender and graceful."	"Your right arm is slender and petite."
"right forearm"	"White fur spreads over your right arm."	"You have soft white fur across your right arm and hand."
"right hand"	"With a soft feeling of squeezing, a white glove appears over your right hand and runs up, concealing your right arm up to the elbow."	"You have a long glove on your right hand, running up to your elbow."
"left thigh"	"Your hips swell rounded as your left thigh becomes shapely and covered in white fur."	"You have a powerful left thigh, curvy and white furred."
"left shin"	"The upper portion of a purple boot wraps around your lower left leg as white fur grows."	"Your left shin is longer than you remembered, clad in purple boot and white fur."
"left foot"	"Your left foot is suddenly surrounded by a purple boot as fur covers it. Your stance shifts to support its high heel."	"Your left foot is clad in a heeled purple boot."
"right thigh"	"Your hips swell rounded as your right thigh becomes shapely and covered in white fur."	"You have a powerful right thigh, curvy and white furred."
"right shin"	"The upper portion of a purple boot wraps around your lower right leg as white fur grows."	"Your right shin is longer than you remembered, clad in purple boot and white fur."
"right foot"	"Your right foot is suddenly surrounded by a purple boot as fur covers it. Your stance shifts to support its high heel."	"Your right foot is clad in a heeled purple boot."
"rear"	"Your ass pushes out into a nice curve as a stiff white tail extends behind you."														"You have a pointed, short, white tail on a white furred bottom."
"full"		"Batcubus"	"You are a sexy bat lady. Your body is covered in white fur, except for the light cream of your inner ears and snout. Your ears are large and triangular and your shape is curvy, with heavy breasts uplifted with the heart shaped bodice that snugly lifts them upwards for presentation. Your lips are stained a sinful red, pouting just enough. Behind you, a short white tail wags occasionally. Your hands are covered in long white gloves that go up to your elbows. Your feet have solid purple boots that extend to just short of your knees."

Section - Collie

Table Collie - Collie Shifts
Segment	Shift Text	Desc Text
"head"		"Your nose becomes wet and black as it draws away from your face, forming with your mouth to become a slender snout full of long teeth. Your ears migrate up to the top of your head, becoming long enough to flop over themself. Your hair extends to your shoulders, running free."	"You have the head of a female collie dog. Your ears flop over half way and twitch softly at loud sounds. Your nose is wet and black and you have many sharp canines(pun intended). Your brown hair looks more like a mane, running down to your neck."
"chest"	"Warmth flows through your chest as two modest B cupped breasts form, high riding and without droop. Brown fur spreads over your back while white fur takes up your front."	"You have B cupped breasts hidden under a chest of white fur. Your back is covered in soft brown fur."
"gut"		"Your midsection seems to elongate as you become slender and fit. White fur covers your new belly as brown tinges at the sides."	"You have a long, lean, lower torso, covered with white fur at the front and brown at sides and back."
"pelvis"	"White fur encroaches on your groin as things adjust down there. You soon have the almost hidden labia of a collie."	"Your groin is covered in white fur, partially concealing a dog's netherlips."
"left upper arm"	"Brown fur runs along the outside and white on the inside of your left upper arm, a great tuft of brown fur forming at the elbow."	"Your left upper arm has brown and white fur with a tuft of brown fur at the elbow."
"left forearm"	"Your left forearm is covered in brown fur on the outside and white on the inside, lengthening slightly as it goes."	"Your left forearm is longer, and has white and brown fur."
"left hand"	"Your left hand grows white fur on the palm and undersides of fingers while brown fur overtakes the rest. With a sudden pressure, your nails pop out, allowing huge black claws to slide into place."	"Your left hand has huge black claws and is covered in white and brown fur."
"right upper arm"	"Brown fur runs along the outside and white on the inside of your right upper arm, a great tuft of brown fur forming at the elbow."	"Your right upper arm has brown and white fur with a tuft of brown fur at the elbow."
"right forearm"	"Your right forearm is covered in brown fur on the outside and white on the inside, lengthening slightly as it goes."	"Your right forearm is longer, and has white and brown fur."
"right hand"	"Your right hand grows white fur on the palm and undersides of fingers while brown fur overtakes the rest. With a sudden pressure, your nails pop out, allowing huge black claws to slide into place."	"Your right hand has huge black claws and is covered in white and brown fur."
"left thigh"	"Your left leg grows longer and more powerful as lean muscle replaces any fat."	"Your left leg is long and powerful looking."
"left shin"	"Brown fur runs down along the outside of your left leg as white overtakes the inside."	"Your left leg is covered in fur, brown on the outside and white on the inside"
"left foot"	"White fur suddenly drapes off the back of your left foot as it bends and twists to stand permanently on toes. Your nails pop out into huge black claws and lean muscles reinforce it all."	"You have the powerful left paw of a collie, with a tuft of white fur in the back, brown over the rest."
"right thigh"	"Your right leg grows longer and more powerful as lean muscle replaces any fat."	"Your right leg is long and powerful looking."
"right shin"	"Brown fur runs down along the outside of your right leg as white overtakes the inside."	"Your right leg is covered in fur, brown on the outside and white on the inside"
"right foot"	"White fur suddenly drapes off the back of your right foot as it bends and twists to stand permanently on toes. Your nails pop out into huge black claws and lean muscles reinforce it all."	"You have the powerful right paw of a collie, with a tuft of white fur in the back, brown over the rest."
"rear"	"Your ass is covered in brown fur as a long, fluffy, tail emerges, white at the tip. It wags excitedly behind you, especially when you think about sheep."	"You have a brown furred bottom with a huge fluffy tail that wags excitedly behind you."
"full"		"Collie"	"Who ever heard of a were-collie? Well that's what you look like, with white fur running from chin to the insides of your legs in a long line, with brown fur covering the rest. Your brown shaded eyes look about alertly under half flopped ears. Your wet nose can pick up all manner of new scent, especially that of sheep, and wolves. You appear to be female, with those uplifted, almost perfectly round, breasts and a mostly hidden sex between your furry thighs."

Section - Felitaur

Table Felitaur - Felitaur Shifts
Segment	Shift Text	Desc Text
"head"		"Your vision dims and shifts as you gain a sudden, sharp, headache. As you stagger, your face forms into a snout and fur grows rapidly. Your new sharper teeth are bared as you give a sound between a low growl and a moan of discomfort, but it's passing."	"You have the head of a cougar, with expressively mobile ears and black fringes to your snout. Your slitted eyes take in the details of the world with a new focus."
"chest"	"Soft tingly itches announce the arrival of fur across your chest. You begin to rapidly grow breasts, and what breast they are! You're not even sure of the letter of them, huge and perfectly round. They take up all the space down to your belly."	"You have absolutely huge breasts on your chest, brown furred and pink teated. They are perfectly round and buoyant, resisting all of gravity's demands."
"gut"		"Fat melts away, or more accurately, is drawn up into new breasts that swell out huge and round ahead of you. They seem a little low down, gracing your belly. Each brown furred tit is capped with a soft pink nipple."	"Your belly is lean and brown furred, and is the resting place of a pair of huge furry tits. They seem perfectly round, and only jiggle when you move quickly, surprisingly firm, but soft to the touch."
"pelvis"	""	"Soft creamy fur covers the area between your forelegs, but you have nothing to hide there anymore, just smooth flesh underneath, bulging with new found musculature."
"left upper arm"	"Somewhat shaggy brown fur runs down along your upper left arm."	"Your left upper arm has shaggy brown fur."
"left forearm"	"Your left forearm goes warm as fur spreads over it, soft but shaggy, brown and white."	"You have the forearm of a cougar, lean muscled and brown furred."
"left hand"	"Your fingers sprout retractable claws suddenly as thick pads develop underneath. Fur sweeps up over your left hand and you're left with an agile feline paw."	"Your left hand has been replaced with a cougar's paw, with long agile fingers."
"right upper arm"	"Somewhat shaggy brown fur runs down along your upper right arm."	"Your right upper arm has shaggy brown fur."
"right forearm"	"Your right forearm goes warm as fur spreads over it, soft but shaggy, brown and white."	"You have the forearm of a cougar, lean muscled and brown furred."
"right hand"	"Your fingers sprout retractable claws suddenly as thick pads develop underneath. Fur sweeps up over your right hand and you're right with an agile feline paw."	"Your right hand has been replaced with a cougar's paw, with long agile fingers."
"left thigh"	""	"Your left thigh is covered in brown and cream shades of fur, leading up to your altered hips."
"left shin"	""	"Brown, fluffy fur runs along your left shin, shaped like a feline's."
"left foot"	""	"You have a powerful paw for a left foot, with retractable and sharp black claws."
"right thigh"	""	"Your right thigh is covered in brown and cream shades of fur, leading up to your altered hips."
"right shin"	""	"Brown, fluffy fur runs along your right shin, shaped like a feline's."
"right foot"	""	"You have a powerful paw for a right foot, with retractable and sharp black claws."
"rear"	"Your rump begins to extend backwards, growing fur as it goes."	"Your bottom seems much further back than it used to be."
"full"		"felitaur"	"You are a cougar taur, with the upper body of an anthro cougar attached to the feral form of a large cougar below. You have many breasts, two pairs on upper torso, three below, each huge and round, perfectly buoyant with large visible nipples. Jostling for space on your lower torso is a huge two liter sized sheath and matching furry balls. When aroused, you are about two feet in length with soft fleshy barbs at the end. Under your tail is a female sex as well, thick lipped and ready."

Section - Hyena

Table Hyena - Hyena Shifts
Segment	Shift Text	Desc Text
"head"	"Your mouth suddenly feels full and you give out a low growl, peeling back your lips to let huge sabre teeth settle into place. Your jaw begins to draw forward, giving more room as your ears pull upwards into canine shape. Soft black spots appear in your mottled brown hide as the changes slow."	"You have the sabre toothed grin of a hyena, with brown, mottled, fur. Your hair remains, as a mane that flows down your back."
"chest"	"Great rushing energy seems to explode inside your chest as it pushes out abruptly into two perfectly round spheres. As mottled fur grows in to cover them, they avoid your new huge teats."	"You have mottled brown fur on your chest, a fact easy to miss with those huge perfectly round breasts distracting your view."
"gut"		"Your belly rounds out in a soft pudge as lighter fur rolls over it, your belly button still somewhat visible as a divot in the soft carpet."	"Despite the growing muscle mass of the rest of your body, your belly is rounded in a pudge and soft to the touch, covered in lighter shaded fur."
"pelvis"	"You thrust your hips forward as a sensation akin to climax grips you. Your shaft returns to full hardness, then begins to explode, then again, and again, splattering over the area as it becomes longer and more tapered, losing much of its texture along the way."	"Taking a moment to look at yourself, you see that you were so distracted that you didn't even notice the black lipped nethers you have behind your balls, huge tapered shaft having so thoroughly captured your attention when it changed."
"left upper arm"	"Somewhat shaggy brown fur runs down along your upper left arm."	"Your left upper arm has shaggy brown, mottled with dark black dots. fur."
"left forearm"	"Your left forearm goes warm as fur spreads over it, soft but shaggy, brown and black."	"You have the forearm of a hyena, lean muscled and brown furred with black spots."
"left hand"	"Your left hand swells as your fingers lose some agility in favor of terrible gripping power and large fierce claws, leaving you with more a large paw than a hand."	"Your left hand looks quite intimidating, more a terribly clawed hyena paw, oversized for your arm."
"right upper arm"	"Somewhat shaggy brown fur runs down along your upper right arm."	"Your right upper arm has shaggy brown, mottled with dark black dots. fur."
"right forearm"	"Your right forearm goes warm as fur spreads over it, soft but shaggy, brown and black."	"You have the forearm of a hyena, lean muscled and brown furred with black spots."
"right hand"	"Your right hand swells as your fingers lose some agility in favor of terrible gripping power and large fierce claws, leaving you with more a large paw than a hand."	"Your right hand looks quite intimidating, more a terribly clawed hyena paw, oversized for your arm."
"left thigh"	"Your left thigh bulges with new muscles as mottled brown fur creeps up through the flesh in a rush of itchy ticklishness."	"Your left thigh is covered in brown and black shades of fur, dense, large muscles leading up to your altered hips."
"left shin"	"Your leg narrows towards digitigrade structure as muscles swell in your lower shin and black and brown mottled fur grows in."	"Dense muscles hide under the mottled fur of your left shin."
"left foot"	"Your left foot swells as sharp black claws emerge, unretractable and dangerous looking."	"Your left foot is now a large canine paw, dangerous and clawed."
"right thigh"	"Your right thigh bulges with new muscles as mottled brown fur creeps up through the flesh in a rush of itchy ticklishness."	"Your right thigh is covered in brown and black shades of fur, dense, large muscles leading up to your altered hips."
"right shin"	"Your leg narrows towards digitigrade structure as muscles swell in your lower shin and black and brown mottled fur grows in."	"Dense muscles hide under the mottled fur of your right shin."
"right foot"	"Your right foot swells as sharp black claws emerge, unretractable and dangerous looking."	"Your right foot is now a large canine paw, dangerous and clawed."
"rear"	"Your spine begins to stretch, reaching out into a long wagging hyena tail, swaying over your now shapely and well muscled bottom."	"You have a long hyena tail swaying over your sexy and well muscled ass."
"full"		"hyena"	"You are a gnoll. Well not exactly, you have big sabre teeth, brown mottled fur with black dots, and a pudgy white belly. Besides your belly, your body is composed of a lot of thick corded muscle. Your paws are oversized for your body, wielding sharp hooks of claws on somewhat agile fingers. Your shaft has grown to about a foot in length and is now slick and tapered. Under that, furry balls in a tight sac, and black wet lips concealed behind those. Your ass is tight with new muscles, and has a swaying canine tail over it. Your breasts are delightfully round and buoyant, with abnormally large, milk bearing, teats exposed."

Section - Minotaur

table minotaur - Minotuar shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"You see nothing but red for a moment as loud snaps announce the rapid growth of a broad snout and large expressive ears. Your vision begins to return as fur sweeps over you, brown and white. A large golden nose suddenly pierces your new, large, nose, a moment of pain before it rests comfortably.[if the destined femininity of the player is 1] Your hair forms into tight dreadlocks of dull rest, hanging to the back of your neck.[end if]"         	"You have the broad snout of a cow, covered in brown and white fur.[if the destined femininity of the player is 1] Your head is capped with thick, pointed, horns.[end if][if the destined femininity of the player is 1] You have tightly braided dreadlocks of dull red color that run to the back of your neck."	--
"chest"	"Your body expands with new muscles as your torso becomes more barrel like, filled with the power of a bovine.[if the destined femininity of the player is 1] The growing strength ebbs a moment, taking a detour into your suddenly very active mammaries, swelling quite large before four large teats swell on each, hanging pink and naked.[end if]"           	"You have a powerful, brown and white furred, torso of a cow.[if the destined femininity of the player is 1] You have a huge set of breasts with four thick, dangling teats on each, pink and exposed.[end if]"	"Your back itches as it shifts"
"gut"	"The muscles of your belly grow in powerful bands as any fat melts away before the spread of the fur."          	"You have a gut full of powerful muscles, covered in brown and white fur."	--
"pelvis"	"A patch of white fur rapidly covers your groin, revealing a[if the destined masculinity of the player is 1] massive furry sheath, hiding a bovine member, and matching balls, hanging down to almost your knees.[end if][if the destined femininity of the player is 1 and the destined masculinity of the player is 1] and a [end if][if the destined femininity of the player is 1] pouting set of furry vulva, slick with readiness.[end if]."          	"You have a [if the destined femininity of the player is 1]pouting set of furry vulva, slick with readiness [end if][if the destined femininity of the player is 1 and the destined masculinity of the player is 1] and [end if][if the destined masculinity of the player is 1]massive furry sheath, hiding a bovine member, and matching balls, hanging down to almost your knees.[end if]."	--
"left upper arm"	"Your arm bulks out with new found power, huge and muscly."               	"Your left arm looks strong enough to rip a metal door off the hinges."	--
"left forearm"	"Your left arm is covered in brown fur with white spots."        	"Your left arm is covered in brown fur with white spots."	--
"left hand"	"Your fingers slowly rearrange to make three powerful digits and a thumb, each capped with a thick hoof like nail, and covered in fur."     	"You have a mix of a hoof and a left hand, with thick hoof nails and fur."	--
"right upper arm"	"Your arm bulks out with new found power, huge and muscly."               	"Your right arm looks strong enough to rip a metal door off the hinges."	--
"right forearm"	"Your right arm is covered in brown fur with white spots."        	"Your right arm is covered in brown fur with white spots."	--
"right hand"	"Your fingers slowly rearrange to make three powerful digits and a thumb, each capped with a thick hoof like nail, and covered in fur."     	"You have a mix of a hoof and a right hand, with thick hoof nails and fur."	--
"left thigh"	"Your left leg is abruptly covered in brown and white fur in a rush of itchiness."            	"Your left leg is covered in brown fur with white spots."	--
"left shin"	"Your left leg bulges with new muscle even as it shifts in stance to accommodate your digitigrade stance."       	"You have the powerful musculature and bone structure of a cow in your left leg."	--
"left foot"	"Your left foot clenches as your toes flow together into a large powerful hoof, the rest raising from the ground as fur runs to cover it."            	"You have a cow's hoof instead of your left foot."	--
"right thigh"	"Your right leg is abruptly covered in brown and white fur in a rush of itchiness."            	"Your right leg is covered in brown fur with white spots."	--
"right shin"	"Your right leg bulges with new muscle even as it shifts in stance to accommodate your digitigrade stance."       	"You have the powerful musculature and bone structure of a cow in your right leg."	--
"right foot"	"Your right foot clenches as your toes flow together into a large powerful hoof, the rest raising from the ground as fur runs to cover it."            	"You have a cow's hoof instead of your right foot."	--
"rear" 	"As brown fur runs around to your ass, a faint flash of pain signals the appearance of a long, swaying tail with a large tuft at the end."              	"You have a long, thin, cow's tail with a brown tuft at the end."	--
"full" 	"minotaur"	"[if the destined femininity of the player is 1 and the destined masculinity of the player is 0]You are a female minotaur, with brown fur and white spots. Your powerful frame still has potent signs of your female charms, with wide hips and huge breasts, all eight teats exposed and long, promising of bounty.[end if][if the destined femininity of the player is 1 and the destined masculinity of the player is 1] You are a blend of two extreme sexualities wrapped up in a bovine package. Your huge bull's cock competes with your milk bearing breasts, leaving others unsure of which they may receive, perhaps both.[end if][if the destined femininity of the player is 0 and the destined masculinity of the player is 1] You are a huge and powerful bull minotaur, with bulging muscles on your everything, and a cock that could punch a hole in a door with a good thrust.[end if][if the pregnant of player is greater than 0] Your body is rounder still for the pregnancy you are experiencing.[end if]"	--

Section - Latex Fox

table latex fox - Fox Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Red rubber pours across your head as it extends into a fox-like muzzle and two pointed ears grow from its top.[if the destined femininity of the player is 1] Long blond curls run from your scalp to half way down your back.[end if]"         	"You have a rubbery fox head.[if the destined femininity of the player is 1] You have long blond hair despite otherwise rubbery appearance. It runs smoothly down to your mid back."	"Your fox like head changes"
"chest"	"White latex moves over your chest as rubber with a more reddish hue pours over your back.[if the destined femininity of the player is 1] Your chest begins to inflate with the loud noise of an air compressor as two large D cup breasts come into bouncy existence.[end if]"           	"You have the chest and back of a latex fox.[if the destined femininity of the player is 1] Your chest has two, large, D cup breasts that bounce like balloons, with just enough weight to be supple and delightful to the touch.[end if]"	"Your back itches as it shifts"
"gut"	"Your gut is coated in white rubber, with thinly defined abs becoming visible through it"          	"You have a somewhat muscular fox-like gut."	"Your rubbery, yet muscular, gut shifts as it changes"
"pelvis"	"The rubber flows over your genitals, leaving a[if the destined masculinity of the player is 1] white rubber canine shaft[end if][if the destined femininity of the player is 1 and the destined masculinity of the player is 1] and a [end if][if the destined femininity of the player is 1] wet, red, set of rubbery lips[end if]."          	"You have a [if the destined femininity of the player is 1]wet, red, set of rubbery lips [end if][if the destined femininity of the player is 1 and the destined masculinity of the player is 1] and [end if][if the destined masculinity of the player is 1]white latex fox shaft[end if]."	"Your canine shaft feels as if it will explode as it starts to change"
"left upper arm"	"A river of red runs up and down your upper left arm."               	"Your upper left arm is completely covered in red rubber."	"Your red skin flows as your left upper arm reforms"
"left forearm"	"The substance moves along your left forearm, leaving a sea of red in its wake."        	"Your left forearm is coated with red latex."	"The latex recedes as your left forearm changes"
"left hand"	"As red latex flows along the fingers and palm of your left hand, black pads grow from the front and claws from your fingertips."     	"Your left hand is a cross between a human's and a fox's."	"Your left latex fox hand peels as it changes"
"right upper arm"	"A river of red runs up and down your upper right arm."               	"Your upper right arm is completely covered in red rubber."	"Your red skin flows as your right upper arm reforms"
"right forearm"	"The substance moves along your right forearm, leaving a sea of red in its wake."           	"Your right forearm is coated with red latex."	"The latex recedes as your right forearm changes"
"right hand"	"As red latex flows along the fingers and palm of your right hand, black pads grow from the front and claws from your fingertips."       	"Your right hand is a cross between a human's and a fox's."	"Your right latex fox hand peels as it changes"
"left thigh"	"Red rubber pushes across most of your left thigh as white invades the rest."            	"Your left thigh is covered with white and red latex."	"The latex recedes as your left thigh changes"
"left shin"	"Your joints are reshaped by the red fluid pouring over your left shin, pulling and pushing them into the shape of a canine's leg."       	"Your left shin looks canine."	"Your red skin flows as your left shin reforms"
"left foot"	"The red latex runs down your left foot, leaving a paw in its place."            	"You have a latex fox paw for a left foot."	"Latex peels off your left foot as it changes"
"right thigh"	"Red rubber gushes across most of your right thigh as white invades the rest."           	"Your right thigh is covered with white and red latex."	"The latex recedes as your right thigh changes"
"right shin"	"Your joints are reshaped by the red fluid pouring over your right shin, pulling and pushing them into the shape of a canine's leg."      	"Your right shin looks canine."	"Your red skin flows as your right shin reforms"
"right foot" 	"The red latex runs down your right foot, leaving a paw in its place."           	"You have a latex fox paw for a right foot."	"Latex peels off your right foot as it changes"
"rear" 	"Your rear quickly turns red from the rubber moving over it."              	"Your rear end is coated in red rubber."	"Your rear feels odd as the latex shifts"
"full" 	"latex fox"	"[if the destined femininity of the player is 1 and the destined masculinity of the player is 0]You are a female latex fox, made of shiny red rubber, wielding a large squeaking tail.[end if][if the destined femininity of the player is 1 and the destined masculinity of the player is 1] You are a hermaphroditic latex fox. Your extreme curves are only challenged by your massive white rubber cock.[end if][if the destined femininity of the player is 0 and the destined masculinity of the player is 1] You are a male anthropomorphic fox made of latex rubber.[end if][if the pregnant of player is greater than 0] Your body is rounder still for the pregnancy you are experiencing.[end if]"	--

Section - Kangaroo

table Kangaroo - Kangaroo Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your nose becomes black and broad, becoming damp as your face draws out into a snout with a muffled headache as your skull alters and bends with sparkles of light dancing over your body. Your new, large, ears twitch and quiver as brown ear covers your head. Your hair remains, though tints to a dirty blonde shade, and your eyes become dazzling green."	"You have the head of a kangaroo, with brown fur and dirty blonde hair. Your large ears swivel towards sounds and your dazzling eyes sparkle with divine might."	--
"chest"	"Your chest pushes forward in two great swells. You thought marsupials didn't have these, but despite your objections to the anatomy, they grow large and heavy as your chest and back is covered in soft brown fur. Your teats are visible, large and black. With a sudden shudder, you are aware that divine milk flows within your new organs."	"Your heavy E breasts seem obscenely large on your furry brown chest, but they don't hinder you despite it. Your thick black teats are visible, swollen and ready with supernatural milk."	--
"gut"	"Your belly becomes covered in dense, plush, brown fur. The flesh pulls forward, pinching in a strange pulling pleasure as you form a pouch where once you wore one. The pouch feels empty, but a purpose feels clear to you.[line break]((You're a monster, no, really, it's up to you to spread this infection. Find people, find monsters, find anything, and type [bold type]pouch (victim)[roman type] to stuff them in.))"	"You can feel a powerful, almost divine, energy coming from your pouched belly. [if there is a person in birthing pouch]Inside your pouch, you can see [list of people in birthing pouch]. They appear to be confused, with fur spreading over their forms and body's contorting as they transform. Despite that, they are seemingly having a good time despite it.[otherwise]Your pouch is, sadly, empty. You should go and fix that right away.[end if]"	--
"pelvis"	"Power surges through your groin as your hips gain a carpet of brown fur. Your cock suddenly grows hard, twitching. With every motion, it lengthens and grows, reaching ahead of you as you pant and whine. As it grows, wetness is felt as new furry lips swell prominently behind your swelling balls. As your loins grow and grow, you can scarcely resist to touch, watching with glazed eyes as you grow a huge, tapering, three foot cock. It hangs forward of your furry groin, heavy, but the new and increasing muscle of your divine form makes carrying it an easy burden."	"You are a hermaphrodite, your pinkened and tapering shaft pulsing with the odd power that throbs through your still growing body. The huge member projects three feet from your groin, your balls, grapefruit sized, hang just above it in soft furred scrotum."	--
"left upper arm"	"Your left arm begins to lengthen and swell as brown fur covers it."	"Your left arm has grown larger and covered in brown fur."	--
"left forearm"	"The shape of your left arm alters subtly."	"Your left arm has changed in shape faintly, your body growing all the larger."	--
"left hand"	"The palm of your hand grows off-brown fur while brown fur overtakes the rest."	"Your left hand is covered in soft fur, but is otherwise human shaped."	--
"right upper arm"	"Your right arm begins to lengthen and swell as brown fur covers it."	"Your right arm has grown larger and covered in brown fur."	--
"right forearm"	"The shape of your right arm alters subtly."	"Your right arm has changed in shape faintly, your body growing all the larger."	--
"right hand"	"The palm of your hand grows off-brown fur while brown fur overtakes the rest."	"Your right hand is covered in soft fur, but is otherwise human shaped."	--
"left thigh"	"Your left thigh swells dramatically with an almost sexual current, energy pulsing along your leg as muscles swell and strengthen, giving you half a haunch that could crush walnuts with a flex. The leg seems well shaped for leaping and kicking."	"Your left thigh is massively swollen with thick cords of powerful muscles, shaped for optimal kicking and leaping power."	--
"left shin"	"Your left leg shudders as power flows down into it, reshaping it into the digitigrade stance of a kangaroo, just right for jumping."	"Your left leg is shaped just right for bouncing, altered into a digitigrade stance."	--
"left foot"	"Your toes throb as your left foot becomes a huge paw, large enough to carry your swelling form and lifting up at the heel into a digitigrade stance. At the end of each brown furred digit sprouts a large, dark brown, claw."	"You have  the large, clawed, left feet of a kangaroo."	--
"right thigh"	"Your right thigh swells dramatically with an almost sexual current, energy pulsing along your leg as muscles swell and strengthen, giving you half a haunch that could crush walnuts with a flex. The leg seems well shaped for leaping and kicking."	"Your right thigh is massively swollen with thick cords of powerful muscles, shaped for optimal kicking and leaping power."	--
"right shin"	"Your right leg shudders as power flows down into it, reshaping it into the digitigrade stance of a kangaroo, just right for jumping."	"Your right leg is shaped just right for bouncing, altered into a digitigrade stance."	--
"right foot"	"Your toes throb as your right foot becomes a huge paw, large enough to carry your swelling form and lifting up at the heel into a digitigrade stance. At the end of each brown furred digit sprouts a large, dark brown, claw."	"You have  the large, clawed, left feet of a kangaroo."	--
"rear" 	"Fur flows over your ass before a strange new pleasure erupts from your spine as your power flows unstoppably along it, forming a huge tail as you give a loud yelp of fulfillment. As the tingling fades, you lean back, finding it can support your weight easily."	"You have a great ass, covered in soft brown fur, and sporting a huge kangaroo tail that can support your growing frame."	--
"full" 	"Kangaroo Goddess"	"You have become the living embodiment of some kind of kangaroo goddess. You stand about eight feet in height, with massive breasts and a three foot pinkened shaft bobbing before you. Your body throbs with powerful and lean muscles, especially in your great thighs. Your huge tail is strong enough to support you when you lean back. Your breasts are full of milk, you can feel it sloshing just faintly with your every powerful leap. Your belly has a large pouch, the center point of all your power. [if there is a person in birthing pouch]Inside your pouch, you can see [list of persons in birthing pouch]. They appear to be confused, with fur spreading over their forms and body's contorting as they transform. Despite that, they are seemingly having a good time despite it.[otherwise]Your pouch is, sadly, empty. You should go and fix that right away.[end if]"	--

Section - Coyote

table Coyote - Coyote Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your face draws forward into a powerful canine snout as orangish fur spreads over your reshaping skull. Your elongated tongue hangs free a moment, cooling your warmed body in an eager pant."	"You have the head of a coyote, male, with a roguish smile and a long floppy tongue."	--
"chest"	"Orange/brown fur spreads along with a destruction of most of your fat, turned instead to lean, powerful, muscles, coating chest and back."	"You have a lean, almost wiry, chest and back, covered with white fur on the front and orangish brown fur on the sides and back."	--
"gut"	"White fur spreads over your increasingly toned and powerful belly."	"Your belly is covered in a layer of white fur, but lacks its old pudge, nothing but powerful abs now."	--
"pelvis"	"Your world seems to narrow for a moment, focusing on your aching member. Your length grows taught, then bursts forward another six inches, becoming naked and pink. Near the base, it bulges obscenely in a knot. Your crotch itches as fur spreads over it, white in color, and forming a snug sheath about the base of your enhanced tool. Your balls suddenly descend, growing to the size of softballs, also covered in white fur."	"You have a foot long, pink, knotted coyote cock. It is constantly hard and drips with readiness, fueled by softball sized orbs dangling between your thighs, covered in white fur."	--
"left upper arm"	"Your left shoulder broadens as orange-brown fur spreads over your bulking arm."	"Your upper left arm is covered and fur and looks quite well muscled."	--
"left forearm"	"Muscles grow stronger in your left lower arm as fur spreads rapidly."	"Your lower left arm is furry and corded with lean muscles."	--
"left hand"	"You begin to grow soft pads on your left hand as fur moves in. Short black claws pierce skin, bleeding in a brief instant of pain."	"Your left hand is human shaped, but has soft pads as well, and black claws to match your fur."	--
"right upper arm"	"Your right shoulder broadens as orange-brown fur spreads over your bulking arm."	"Your upper right arm is covered and fur and looks quite well muscled."	--
"right forearm"	"Muscles grow stronger in your right lower arm as fur spreads rapidly."	"Your lower right arm is furry and corded with lean muscles."	--
"right hand"	"You begin to grow soft pads on your right hand as fur moves in. Short black claws pierce skin, bleeding in a brief instant of pain."	"Your right hand is human shaped, but has soft pads as well, and black claws to match your fur."	--
"left thigh"	"The infection burns a path down your left leg as your weaker muscles give way to powerful, lean physique."	"Your left leg is tone and well built with lean muscles."	--
"left shin"	"Your left leg snaps as it reforms for a more digitigrade stance, and orange-brown fur spreads over it."	"Your left leg is quite furry, and shaped for digitigrade stance."	--
"left foot"	"You feel yourself rising as your left foot moves to stand on tip toes and swells out into a bestial canine paw."	"Your left foot  has become entirely that of a large canine paw."	--
"right thigh"	"The infection burns a path down your right leg as your weaker muscles give way to powerful, lean physique."	"Your right leg is tone and well built with lean muscles."	--
"right shin"	"Your right leg snaps as it reforms for a more digitigrade stance, and orange-brown fur spreads over it."	"Your right leg is quite furry, and shaped for digitigrade stance."	--
"right foot"	"You feel yourself rising as your right foot moves to stand on tip toes and swells out into a bestial canine paw."	"Your right foot  has become entirely that of a large canine paw."	--
"rear" 	"You feel something wagging suddenly and glance over your shoulder. A tail, canine, wagging so happily as your ass is coated in warm fur."	"You have a long, stiff, canine tail, wagging eagerly behind your furry ass."	--
"full" 	"coyote"	"You are a coyote, bipedal and wiry of build. Your face seems well built for mischievous expressions. Like the trickster of lore, you also have a large, fertile tool. (Un)Fortunately, you are not as endowed as the mythic body, being about a foot long, with a large knot. Big enough. Your feet are entirely animal paws, but your hands are mostly human shaped, minus the claw, fur, and small pads. You are orange-brown colored in fur, except for the white streak that runs along your under snout, across chest and belly and terminates between your thighs."	--

Section - Felicia

figure felicia is the file "felicia.jpg"

Definition: A person(called N) is nekonne:
	if ctype of N is Neko, yes;
	no;
	
before examining a nekonne person:
	display the figure felicia;

table Felicia - Felicia Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Something brushes down your back, a carpet of bright blue hair that flows out like a cape. Before you can consider it for long, your ears begin to tingle fiercely, expanding to huge feline triangles on top of your head."	"You have a female face, with blue eyes and hair, and white furry ears, large and pointed, on your head."	--
"chest"	"Tanned flesh swells into two firm breasts, nipples concealed behind a conveniently placed stripe of fur on each."	"Your chest and back is covered in tanned, soft, flesh, with stripes of fur covering your nipples from view."	--
"gut"	"Any fat melts away, leaving you with a toned belly with several stripes of white fur across the tanned skin."	"Your powerful abs show through white stripes of fur and tanned skin."	--
"pelvis"	"You find you have a cock that demands attention. A few frantic strokes do little to quell it as it twitches and becomes furry along the base and balls, your entire crotch covered in white soft fur."	"You have a fair sized shaft, human shaped, but with progressively more white fur towards the base. Your balls and crotch are entirely fur coated. You seem to be entirely male."	--
"left upper arm"	"Soft, tanned, skin spreads across your upper left arm as a single white stripe of fur wraps around."	"Your upper left arm looks like that of a girl, with tanned flesh and a stripe of white fur."	--
"left forearm"	"Your lower left arm is rapidly covered in soft white fur."	"Your lower left arm is covered in white fur."	--
"left hand"	"Your left hand expands into paw like shape, though fingers remain. The whole thing grows white fur and fingertips sprout pink claws."	"You have a paw like left hand with white fur and pink claws."	--
"right upper arm"	"Soft, tanned, skin spreads across your upper right arm as a single white stripe of fur wraps around."	"Your upper right arm looks like that of a girl, with tanned flesh and a stripe of white fur."	--
"right forearm"	"Your lower right arm is rapidly covered in soft white fur."	"Your lower right arm is covered in white fur."	--
"right hand"	"Your right hand expands into paw like shape, though fingers remain. The whole thing grows white fur and fingertips sprout pink claws."	"You have a paw like right hand with white fur and pink claws."	--
"left thigh"	"Your left leg becomes quite female, with wide round hip to boot."	"Your left leg is shapely and toned."	--
"left shin"	"White fur spreads over your left leg. It spreads entirely from just above the kneecap down, and in light stripes above that."	"Your left leg has become furry, white fur from knees down, stripes above that between stripes of tanned skin."	--
"left foot"	"Your left foot suddenly becomes covered in soft white fur with pink claws."	"Your left foot has become covered in white fur and has retractable pink claws."	--
"right thigh"	"Your right leg becomes quite female, with wide round hip to boot."	"Your right leg is shapely and toned."	--
"right shin"	"White fur spreads over your right leg. It spreads entirely from just above the kneecap down, and in light stripes above that."	"Your right leg has become furry, white fur from knees down, stripes above that between stripes of tanned skin."	--
"right foot"	"Your right foot suddenly becomes covered in soft white fur with pink claws."	"Your right foot has become covered in white fur and has retractable pink claws."	--
"rear" 	"Your ass rounds out with strong muscle and white fur as a long, slinky, tail slithers free of your spine in a rush of giddy sensations."	"You have a very long, sinuous, white furred cat's tail."	--
"full" 	"neko"	"You look like that girl, dark stalking or something? Except you're no girl. Despite the luscious frame of a cat girl you sport, with heaving breasts and long tail, you still have a cock, throbbing and hard and furry as well. Your tool seems to draw you towards others, to plunge into them as hard and quickly as you can, driving you to distraction."	--

Section - Harpy

table Harpy - Harpy Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"A soft warmth flows through your head as it dwindles and rounds to nymph like appeal. Your ears stretch a little to the sides as hair shifts in hue."	"You have the face of a young woman with large, elfin, ears and unruly red hair that barely reaches your shoulders."	--
"chest"	"The flesh of your chest and back become light skinned and smooth as two slim breasts firm up into existence. Light brown feathers spread rapidly, covering your shoulders and back."	"You have slender B cupped breasts and smooth skin on chest and back, at least where the light brown plumage doesn't cover back and shoulders."	--
"gut"	"A tightness builds in your gut, a bit odd but not entirely unpleasant as your form becomes slimmer and your skin light and flawless."	"You have a slender belly with smooth light skin and an innie belly button."	--
"pelvis"	"With a tingly erotic jolt, you gain the ready lips of a female between your legs, leaving you entirely a woman."	"You are clearly female."	--
"left upper arm"	"Feathers sprout in a great wave of ticklishness along your left arm, leaving you with a wing like fin along the limb."	"Brown feathers cover your left arm, lighter towards the shoulder than at the tips, creating a wing like fin."	--
"left forearm"	"Your left arm becomes increasingly slender and agile."	"You have the left arm of a particularly slender and athletic woman."	--
"left hand"	"Your hand itches, then burns as its skin toughens and fingers flow together. They reform into three sharp looking talons with yellow scaly skin."	"Your left hand is a great yellow talon with sharp claws and three fingers."	--
"right upper arm"	"Feathers sprout in a great wave of ticklishness along your right arm, leaving you with a wing like fin along the limb."	"Brown feathers cover your right arm, lighter towards the shoulder than at the tips, creating a wing like fin."	--
"right forearm"	"Your right arm becomes increasingly slender and agile."	"You have the right arm of a particularly slender and athletic woman."	--
"right hand"	"Your hand itches, then burns as its skin toughens and fingers flow together. They reform into three sharp looking talons with yellow scaly skin."	"Your right hand is a great yellow talon with sharp claws and three fingers."	--
"left thigh"	"Your left leg becomes quite female, though bent towards the bottom in a digitigrade stance."	"Your left leg is shapely and toned and somewhat bestial in shape."	--
"left shin"	"Brown feathers spread over your left leg, from the hips down towards your shin where it fades towards yellow scaly skin."	"Your left leg is covered in brown fur down to your shin where it slowly fades to yellow and scaly looking."	--
"left foot"	"Your foot suddenly expands and narrows as it becomes a talon, new claws digging into the ground."	"You have a talon for a left foot, yellow and scaled, with three large, clawed, toes."	--
"right thigh"	"Your right leg becomes quite female, though bent towards the bottom in a digitigrade stance."	"Your right leg is shapely and toned and somewhat bestial in shape."	--
"right shin"	"Brown feathers spread over your right leg, from the hips down towards your shin where it fades towards yellow scaly skin."	"Your right leg is covered in brown fur down to your shin where it slowly fades to yellow and scaly looking."	--
"right foot"	"Your foot suddenly expands and narrows as it becomes a talon, new claws digging into the ground."	"You have a talon for a right foot, yellow and scaled, with three large, clawed, toes."	--
"rear" 	"You feel your rump rounding as feathers burst free and form a tail fin, upturned and in a fan spread."	"Above your pert ass is a fan of brown feathers curved upwards."	--
"full" 	"harpy"	"You are clearly a harpy, though, to your relief you are not nearly as horrifying as the greek stories went. You look much like a young woman with slender breasts and feathers covering your digitigrade legs and across your arms in great wing fins. Your hands and feet are yellowed talons with wicked claws. Behind you, brown feathers curve upwards in a tailfin. Your face is cute and rounded, with large elfin ears."	--

Section - Nidoqueen

table Nidoqueen - Nidoqueen Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Vision blurs as your head reshapes. You can feel your ears becoming round and large, with spiny ridges along the outside. A large snout pushes from your face as your skin turns purple and tough.  From the center of your new muzzle, a short horn thrusts upwards."	"You have the face of one of those pocket monster things. Purplish tough looking skin covers a now snouted face with a small sharp looking horn in the center. You have large ears with spiny looking ridges along the edge and deep cyan shades on the inside of the large dish like ears."	--
"chest"	"You feel your body growing more slight as your chest and back are covered with new, toughened, flesh. White covers your chest while purple coats your sides and back, making it look like you're wearing a chest plate."	"Your torso has become more slender, covered in purple flesh along sides and back, with a solid white chest plate on the front."	--
"gut"	"Tough white plates flow over your belly protectively."	"Your belly is protected with a large white plate over its otherwise slender proportions."	--
"pelvis"	"Your shaft becomes quite erect a moment before it withdraws into an internal sheath, ready within you."	"You are male, but your tool seems to be internal until needed."	--
"left upper arm"	"Your left arm seems to shrink in stature, more fitting a teenager."	"Your left arm is smaller by almost a foot."	--
"left forearm"	"Purple flesh flows over your left arm as a small bulge of armor forms at the shoulder."	"Your left arm is covered in hard purple flesh, with a round armor like bulb at the shoulder."	--
"left hand"	"Purple flesh flows over your left hand as beige overtakes your fingers. Besides the color change, it feels as flexible and sensitive as ever."	"Your left hand is purple, with beige colored fingers."	--
"right upper arm"	"Your right arm seems to shrink in stature, more fitting a teenager."	"Your right arm is smaller by almost a foot."	--
"right forearm"	"Purple flesh flows over your right arm as a small bulge of armor forms at the shoulder."	"Your right arm is covered in hard purple flesh, with a round armor like bulb at the shoulder."	--
"right hand"	"Purple flesh flows over your right hand as beige overtakes your fingers. Besides the color change, it feels as flexible and sensitive as ever."	"Your right hand is purple, with beige colored fingers."	--
"left thigh"	" Your skin tingles as purple hues sweep over your toughening hide."	"Your left leg is purple and covered in tough flesh."	--
"left shin"	"Your left leg grows bulkier but smaller at the same time."	"Your left leg has grown both smaller and yet bulkier."	--
"left foot"	"Your toes flow together like water as it becomes a pale white unified hoof of sorts, the rest of your foot becoming solid and purple."	"Your left foot seems much simpler, with one large white toe, the rest a solid mass of purple."	--
"right thigh"	" Your skin tingles as purple hues sweep over your toughening hide."	"Your right leg is purple and covered in tough flesh."	--
"right shin"	"Your right leg grows bulkier but smaller at the same time."	"Your right leg has grown both smaller and yet bulkier."	--
"right foot"	"Your toes flow together like water as it becomes a pale white unified hoof of sorts, the rest of your foot becoming solid and purple."	"Your right foot seems much simpler, with one large white toe, the rest a solid mass of purple."	--
"rear" 	"A pulling sensation heralds the arrival of a long, thick tail that tapers off to a point. The mass is purple and thick fleshed, making it a heavy, swaying, limb."	"Above your child like butt is a large swaying purple tail, quite thick at the base but narrowing to a point."	--
"full" 	"Nido brat"	"You have become a smaller, younger looking, creature. Your body is covered largely in purple flesh, except for the white plates that cover your chest, belly and groin. Your fingers are a soft off-white beige. You have large round ears with ridges along the edge and deep cyan hues within. Behind you, a long, pointed, tail sways lightly. You know you are male, but there is little evidence except when immediately excited. You don't remember putting one on, but a baseball cap is draped over one of your ears, dangling precariously."	--

Section - Tree

table Tree - Tree Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your senses fade to a strange sense of where things are around you without such things as direct sight or hearing. Your head splits in half, then again, branching upwards in a handsome crown of green."	"Where once was  a head, instead just branches and leaves, making the crown of the tree you are becoming."	--
"chest"	"Stiffness flows through your chest as flesh hardens to stiff bark and swells outwards to a nice round trunk."	"Your upper torso is the round, stout, barrel of a tree's trunk, covered in bark and full of wood. You feel solid and stiff."	--
"gut"	"Your belly smooths out as bark covers it, your lower torso ballooning into a trunk."	"Your lower body is a round trunk, solid, strong, and largely immobile."	--
"pelvis"	"Your crotch feels odd and you glance down in time to witness your genitals drawing into a smooth, if rough, line of bark."	"You have no gender."	--
"left upper arm"	"Your left arm is drawn upwards as your upper arm splits into many branches, leaves sprouting along the way."	"Your left arm is reaching for the sky, upper arm starting to sunder into many thick, bark covered, branches, green leaves displayed."	--
"left forearm"	"Your left forearm goes stiff before going off in a few directions as supple branches."	"Your lower left arm is broken into several supple branches, each tipped with large leafy fronds."	--
"left hand"	"Your left hand goes numb as bark spreads up along it, then the shape begins to adjust rapidly, becoming small wooden limbs."	"There is nothing of your left hand but a few branches lost in the larger ones."	--
"right upper arm"	"Your right arm is drawn upwards as your upper arm splits into many branches, leaves sprouting along the way."	"Your right arm is reaching for the sky, upper arm starting to sunder into many thick, bark covered, branches, green leaves displayed."	--
"right forearm"	"Your right forearm goes stiff before going off in a few directions as supple branches."	"Your lower right arm is broken into several supple branches, each tipped with large leafy fronds."	--
"right hand"	"Your right hand goes numb as bark spreads up along it, then the shape begins to adjust rapidly, becoming small wooden limbs."	"There is nothing of your right hand but a few branches lost in the larger ones."	--
"left thigh"	"Your left leg starts to become stiff, making walking awkward at best."	"Your left leg is quite stiff and difficult, making walking difficult."	--
"left shin"	"Bark spreads over your left leg and it feels more... solid."	"Your left leg is covered in rough bark."	--
"left foot"	"Your left foot suddenly explodes in a tangle of roots and digs into the ground. Crap."	"Your left foot is a mass of roots that are binding you to the ground."	--
"right thigh"	"Your right leg starts to become stiff, making walking awkward at best."	"Your right leg is quite stiff and difficult, making walking difficult."	--
"right shin"	"Bark spreads over your right leg and it feels more... solid."	"Your right leg is covered in rough bark."	--
"right foot"	"Your right foot suddenly explodes in a tangle of roots and digs into the ground. Crap."	"Your right foot is a mass of roots that are binding you to the ground."	--
"rear" 	"Your ass becomes simply another part of a larger trunk, covered in bark."	"Trees have no use for butts."	--
"full" 	"tree"	"You are a tree, large and stately. Your roots are powerful and your branches thick. You can sense others around you, but can't actually see or hear them. With your change complete, heavy fruits are growing from your flowering branches, each one bringing a soft tingle of pleasure, especially when they drop to the ground. Nothing remains of your old, human, self."	--

Section - Elf

table Elf - Elf Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"A strange warping ripple runs across the flesh of your cheeks as your face changes and smooths out to new, elfin, proportions."	"You have deep, soul piercing, blue eyes framed in a face that seems somewhat oriental. Your ears are quite long and tapered, inhumanly so."	--
"chest"	"Softly pleasing sensations ripple along your torso as your chest inflates rapidly, gaining pounds as two huge G cupped breasts shove out into the  air, exposed for a moment before green silk slithers out to cover it."	"You have heavy and jiggling G cupped breasts and smooth flesh. Your supply body is covered in green silks and a bow is strapped to your back, draped over you."	--
"gut"	"Your belly draws in as it becomes toned and slender, betraying no fat to the naked eye."	"You have a slender belly with smooth light skin and an innie belly button."	--
"pelvis"	"With a tingly erotic jolt, you gain the ready lips of a female between your legs, leaving you entirely a woman."	"You are clearly female."	--
"left upper arm"	"Your flesh gains a soft tan as it becomes smooth and flawless along your left arm."	"Your left arm is lightly tanned and without any blemish."	--
"left forearm"	"Your left arm becomes increasingly slender and agile."	"You have the left arm of a particularly slender and athletic woman."	--
"left hand"	"Your fingers stretch forward as your left hand becomes more agile and deft, flesh losing all scars and blemishes along the way."	"Your left hand has sparkling fingernails of green color and smooth tanned flesh on long, agile looking, fingers."	--
"right upper arm"	"Your flesh gains a soft tan as it becomes smooth and flawless along your right arm."	"Your right arm is lightly tanned and without any blemish."	--
"right forearm"	"Your right arm becomes increasingly slender and agile."	"You have the right arm of a particularly slender and athletic woman."	--
"right hand"	"Your fingers stretch forward as your right hand becomes more agile and deft, flesh losing all scars and blemishes along the way."	"Your right hand has sparkling fingernails of green color and smooth tanned flesh on long, agile looking, fingers."	--
"left thigh"	"Your left leg swells with new, delightful, curves."	"Your left leg seems longer than it was before, and it has curves in all the right places."	--
"left shin"	"The flesh of your left leg becomes a light tanned color as it smooths out. Green silks flow loosely along it."	"Your left leg is tanned and flawless, covered in loose green silks."	--
"left foot"	"Your left foot shifts only subtly, becoming petite."	"Your foot looks normal, almost, just petite and female. Hey, the nails are painted a sparkling green."	--
"right thigh"	"Your right leg swells with new, delightful, curves."	"Your right leg seems longer than it was before, and it has curves in all the right places."	--
"right shin"	"The flesh of your right leg becomes a light tanned color as it smooths out. Green silks flow loosely along it."	"Your right leg is tanned and flawless, covered in loose green silks."	--
"right foot"	"Your right foot shifts only subtly, becoming petite."	"Your foot looks normal, almost, just petite and female. Hey, the nails are painted a sparkling green."	--
"rear" 	"Your rump begins to swell, along with your lust, leaving you breathing hard as you gain a large, grabbable, ass."	"You have a large, firm, buttocks, waiting to be grabbed. It is somewhat concealed in green silks."	--
"full" 	"Elf"	"You could almost pass for human, only you long pointed ears stand out as entirely inhuman. Your dazzling blue eyes are enchanting in your oriental face. Your skin is a soft tan and seems entirely absent of scar or blemish of any kind. Your body has all the right curves, with wide hips, round butt, and large G breasts jiggling with your movements. Your body is covered with green silks, loosely flowing with your movements. On your back, a long, ornate, bow rests."	--

Section - Echoen

table Echoen - Echoen Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Grand ears explode from the top of your head, thick tufts of white fur emerging on the inner base as brown fur coats the rest. Your face protrudes into a blunted snout as your upper canines become long and slip down over your lower lips like tusks. An urge to spit reveals your lengthened tongue."	"You have the head of a bat lady, with brown fur and huge ears with white tufts inside. Thoughts of finding others of your kind dominate your others, along with an unnatural lust."	--
"chest"	"You have difficulty breathing for a moment as every gasp of breath seems to flow directly into your rising breasts, wheezing almost as they become palmable, then large, eventually settling in around the G range, brown furred and capped with fat black nipples."	"Your chest and back are covered in brown fur, except for the naked, fat, black teats capping your huge G sized breasts."	--
"gut"	"Your belly loses most of its fat, but not all, as brown fur sweeps over it."	"Your belly is a mixture of power and softness, making it hard to tell just how strong you are. It's all covered in soft brown fur."	--
"pelvis"	"You groan as you glance down. Your cock is expanding rapidly, oozing prefluids down its darkening shaft as it becomes a pure black shade. You reach a trembling hand to stroke over it, made easier with all that pre lubricating it. You find you need two hands after a few frantic beats, and bring both hands to work yourself, gasping and crying as it expands up and up and wider and wider. Your massive balls are now covered in brown fur, swaying with every buck of your hips, until they clench tightly and you scream, spraying huge gobs of seed across the ground and yourself. In the aftermath, you can see your shaft is long enough to reach your nipples, and thicker than a two liter of soda."	"You have a massive black shaft that points skywards, bobbing just at your nipple level, oozing soft dollops of preseed along its weighty trunk. Behind your heavy brown furred balls is a wet and glistening set of pouting lips."	--
"left upper arm"	"Your left arm becomes covered in soft brown fur."	"Your left arm is covered in soft brown fur."	--
"left forearm"	"Feminine curves gently overtake your left arm."	"Your left arm is slender and graceful."	--
"left hand"	"Brown fur sweeps over your left hand, covering even your nails, leaving you with a soft, fingered, mitten."	"Your left hand is entirely covered in brown fur."	--
"right upper arm"	"Your right arm becomes covered in soft brown fur."	"Your right arm is covered in soft brown fur."	--
"right forearm"	"Feminine curves gently overtake your right arm."	"Your right arm is slender and graceful."	--
"right hand"	"Brown fur sweeps over your right hand, covering even your nails, leaving you with a soft, fingered, mitten."	"Your right hand is entirely covered in brown fur."	--
"left thigh"	"You can feel your hip expand slightly to accommodate the grand curvature of your left leg."	"Your left leg has become long and shapely."	--
"left shin"	"Brown fur spreads over your left leg voraciously."	"Brown fur covers all of your left leg."	--
"left foot"	"As brown fur impinges on your left foot, it raises from the ground to stand on tip toes, heavy claws digging into the ground to support you in your new stance."	"You have a brown furred, digitigrade, heavy clawed left foot, or is that paw?"	--
"right thigh"	"You can feel your hip expand slightly to accommodate the grand curvature of your right leg."	"Your right leg has become long and shapely."	--
"right shin"	"Brown fur spreads over your right leg voraciously."	"Brown fur covers all of your right leg."	--
"right foot"	"As brown fur impinges on your right foot, it raises from the ground to stand on tip toes, heavy claws digging into the ground to support you in your new stance."	"You have a brown furred, digitigrade, heavy clawed right foot, or is that paw?"	--
"rear" 	"You can feel your ass swell into firm muscular cheeks as a long, brown furred, fox tail emerges and sways, white at the tip. Above, your back begins to itch before huge leathery wings explode forth on new arms."	"You have a brown furred fox tail with a white tip.[line break]You have large leathery bat wings on their own arms, grasping hands included."	--
"full" 	"Big Bat"	"You are a bat of some sort. Brown furred everywhere but the white tufts in your large pointed ears. You have huge breasts capped with thick black teats and a shaft long enough to reach those teats. Behind you, grand leathery wings are spread with their own hands to match the furry hands you now have. You walk on digitigrade paws with black claws. Despite the shaft, a thick and wet set of lips hides under your large brown balls."	--

Section - Latex Frog

Table 3 - Frog Shifts
Segment	Shift Text																					Desc Text
"head"		"Green rubber washes over your head and your vision goes red as you gain a wide, croaking mouth."											"You have a green latex frog's head."
"chest"		"Your chest turns white and your back green from the latex flooding across it, both quickly becoming thinner and sleeker."								"Your upper torso is thin, the back green and the chest white."
"gut"		"The milky white latex runs over your gut, and as it does your stomach expands to twice its original size."										"You have a massive white gut."
"pelvis"		"Your precious [quotation mark]little buddy[quotation mark] is consumed by encroaching latex, leaving only a flat, white expanse."								"You have no genitalia."
"left upper arm"	"Your left upper arm grows slimmer and greener with the rubber running across it."													"Your upper left arm is skinny and covered in green rubber."
"left forearm"	"The green latex flows over your left forearm."																	"Your left forearm is green and shiny."
"left hand"	"Thicker rubber sticks between your elongating fingers, forming a thin green webbing to match your now changed left hand."								"You have a green, webbed left hand."
"right upper arm"	"Your right upper arm grows slimmer and greener with the rubber running across it."													"Your upper right arm is skinny and covered in green rubber."
"right forearm"	"The green latex flows over your right forearm."																	"Your right forearm is green and shiny."
"right hand"	"Thicker rubber sticks between your elongating fingers, forming a thin green webbing to match your now changed right hand."								"You have a green, webbed right hand."
"left thigh"	"The green latex makes your left thigh thicker and more suitable for leaping."														"You have a thick, green left thigh."
"left shin"	"You feel some of the muscles in your left shin vanishing as the emerald-colored latex pushes them into a different shape, forcing you to bend your leg into an awkward position."		"Your left shin is weak and awkward."
"left foot"	"The green latex on your left foot lengthens your toes, with a webbing forming between them."											"Your left foot belongs on a frog."
"right thigh"	"The green latex makes your right thigh thicker and more suitable for leaping."													"You have a thick, green right thigh."
"right shin"	"You feel some of the muscles in your right shin vanishing as the emerald-colored latex pushes them into a different shape, forcing you to bend your leg into an awkward position."		"Your right shin is weak and awkward."
"right foot"	"The green latex on your right foot lengthens your toes, with a webbing forming between them."											"Your right foot belongs on a frog."
"rear"		"Your rear is quickly made green by the spreading rubber."																"Your rear end is green"
"full"		"latex frog"	"You are a genderless anthropomorphic rubber frog."

Section - Husky Girl

Table husky - Husky Girl Shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head slowly shrinks, your voice rising in pitch as your face slowly shifts to that of a sexy husky girl. An itching feeling makes itself known on your scalp as your hair grows longer, turning a dark red color and reaching halfway down your back. Your ears push their way to the top of your head, becoming long and pointed, as you're suddenly able to pick up on many more sounds than before. You feel a building pressure in your face as it starts to push out, quickly forming into a slender husky muzzle, ending with a wet, black canine nose and an adorable pair of whiskers. Your new husky nose quickly picks up on all of the sexual scents surrounding you, building your arousal higher as you inhale them, saliva pooling in your muzzle as you realize you suddenly have the urge to wrap it aroundâ€¦ Somethingâ€¦"	"You have the adorable head of a snowy colored husky, topped with fuzzy doggy ears and long, dark red hair."	"Your head begins to shift and contort as it begins to change again."
"chest"	"Fur explodes over your upper body, a light, creamy coat spreading rapidly across your front and back. Pleasure builds up as your chest changes, your pectorals slowly growing larger and swelling into two C cup sized breasts, dark nipples firm and visible through the bright white fur. You give a soft gasp as another two smaller, B cup pairs of breasts swell into existence below your original pair, all six of your new nipples aching with need, little droplets of milk leaking from each of them."	"You have the chest and back of a husky girl with two C cup breasts on top and two B cup pairs of breasts underneath them, aroused and displayed for all to see."		"With a sudden gut churning sensation, your aching breasts start to tingle and change."
"gut"	"You shiver as you feel the husky infection reach your stomach, causing it to slim down as beautiful, creamy fur grows to cover it. Your now sleek and feminine tummy growls quietly, hungrily, and you feel the need to fill it with something sweet, sticky, hot... You're now hungry for male cum and your tummy reminds you of your new need again with another growl."	"You have the slim, feminine belly of a husky girl, covered in luscious, creamy fur."	"Your furry belly begins to shed rapidly as you feel it start to change again."
"pelvis"	"[if the player is butch]Your hips start to swell bigger and bigger, pushing out in a very unmasculine fashion. After a few seconds, it's obvious that your new hourglass figure is meant for bearing puppies. You feel paralyzed for a moment as your loins are set on fire, snowy fur encroaching on your groin as your cock instantly hardens. It begins to slowly shrink as the need grows worse and worse, inch after inch of it disappearing into your body as every single inch feels absolutely wonderful. You give a soft whine as your testicles force their way up into your body, forming an aching, wet slit, your cock head shrinking to a tiny nub as it forms a sensitive clit.[end if][if the player is femme] You feel paralyzed for a moment as your loins are set on fire, snowy fur encroaching on your groin as your pussy changes subtly, turning into the slutty hole of a husky girl.[end if] Youâ€™re hit by overwhelming waves of pleasure as the husky hormones flood your system, the urge to mate and be impregnated quickly growing as you are left panting with lust, your slutty cunt dripping with need."	"You have an aching cunt situated between your legs, dripping continuously with small amounts of arousal. The snowy fur around it is totally saturated with your sticky juices. Just looking at it causes you to feel the urge to fuck a strong, virile male."	"Your groin begins to tingle ominously as you feel it start to change."
"left upper arm"	"Your upper left arm shrinks, slimming down as it becomes feminine and covered in snowy fur, looking perfect for a husky girl."		"Your upper left arm is slim, feminine, and covered with snowy fur."	"Your left upper arm feels strange as it starts to change."
"left forearm"	"Your left forearm tingles as it becomes smaller and snowy fur spreads out to cover it, your wrist shrinking and becoming more fit for a husky girl."	"Your left forearm is coated with snowy fur and is much more slim, very obviously feminine in nature."	"White fur begins to shed from your left forearm as it starts to change."
"left hand"	"As the husky infection spreads over your left hand, it twitches violently, thick rubbery pads developing on your palm. Slowly, wicked looking claws force their way out from your nails as the change progresses, white fur engulfing your hand until finally you look more like you have a paw rather than a hand, a paw better suited for being on all fours like a good slut. "	"Your left hand is a cross between a human's and a husky's, though it is definitely more paw-like and well suited for holding you up on all fours."	"Your left hand begins to contort as it starts to change."
"right upper arm"	"Your upper right arm shrinks, slimming down as it becomes feminine and covered in snowy fur, looking perfect for a husky girl."		"Your upper right arm is slim, feminine, and covered with snowy fur."	"Your right upper arm feels strange as it starts to change."
"right forearm"	"Your right forearm tingles as it becomes smaller and snowy fur spreads out to cover it, your wrist shrinking and becoming more fit for a husky girl."	"Your right forearm is coated with snowy fur and is much more slim, very obviously feminine in nature."	"White fur begins to shed from your right forearm as it starts to change."
"right hand"	"As the husky infection spreads over your right hand, it twitches violently, thick rubbery pads developing on your palm. Slowly, wicked looking claws force their way out from your nails as the change progresses, white fur engulfing your hand until finally you look more like you have a paw rather than a hand, a paw better suited for being on all fours like a good slut. "	"Your right hand is a cross between a human's and a husky's, though it is definitely more paw-like and well suited for holding you up on all fours."	"Your right hand begins to contort as it starts to change."
"left thigh"	"Your left thigh feels awkward as a pins and needles sensation spreads across it, fur forcing its way out of your skin as your thigh grows slender and feminine, looking more proper on a husky girl than a human."	"Your left thigh is covered with snowy fur, looking very slender and feminine."	"The fur starts to shed off of your left thigh as it changes."
"left shin"	"You stumble slightly as your left lower leg starts to change, a cracking noise filling the air as your bones restructure themselves, forcing your leg into a digitigrade stance, quickly becoming covered in snowy fur as it turns slender and feminine."	"Your lower left leg is covered in snowy fur, looking slender and feminine even with its animalistic, digitigrade form."	"Your lower left leg starts to shed its fur and shift into something else."
"left foot"	"Your left foot feels awkward as it starts to change, the bottom of it quickly growing puffy, rubbery pads as sharp, wicked-looking claws force their way out from under your toenails. It takes only a few more seconds for it to finish growing snowy fur as it turns into a feminine, husky paw."	"Your left foot is that of a husky girl, covered in snowy fur and tipped with sharp looking claws."	"Your left foot itches as it changes, the claws shrinking to nothing as your fur falls out."
"right thigh"	"Your right thigh feels awkward as a pins and needles sensation spreads across it, fur forcing its way out of your skin as your thigh grows slender and feminine, looking more proper on a husky than a human."	"Your right thigh is covered with snowy fur, looking very slender and feminine."	"The fur starts to shed off of your right thigh as it changes."
"right shin"	"You stumble slightly as your right lower leg starts to change, a cracking noise filling the air as your bones restructure themselves, forcing your leg into a digitigrade stance, quickly becoming covered in snowy fur as it turns slender and feminine."	"Your lower right leg is covered in snowy fur, looking slender and feminine even with its animalistic, digitigrade form."	"Your lower right leg starts to shed its fur and shift into something else."
"right foot" 	"Your right foot feels awkward as it starts to change, the bottom of it quickly growing puffy, rubbery pads as sharp, wicked-looking claws force their way out from under your toenails. It takes only a few more seconds for it to finish growing snowy fur as it turns into a feminine, husky paw."	"Your right foot is that of a husky girl, covered in snowy fur and tipped with sharp looking claws."	"Your right foot itches as it changes, the claws shrinking to nothing as your fur falls out."
"rear"	"You give a soft moan as you feel your ass clench, the size of it increasing as it becomes feminine, filling with fat and looking oh so grabbable. You're unable to resist running your hands along it, a soft whimper of need escaping your mouth as the change continues, your spine pushing out slowly. It feels as though you're cumming from there as the muscle and bone forms into a fluffy husky tail, covered in spiky, snowy fur, even as the rest of your bubble butt becomes covered in that same luscious fur."	"Your rear end is coated in snowy fur and very obviously female, a fact which you note with a joyous wag of your fluffy husky tail."	"Your rear end tingles as the fur starts to fall out, your fluffy husky tail melting away."
"full"	"husky"	"You have become a slutty husky, a beautiful anthro canine covered in soft, snowy fur. You have a slim, feminine muzzle and perky, overly large ears along with a large, fluffy husky tail. Your chest bears two firm and gropable C cup breasts along with two B cup pairs of breasts underneath them, all of them oozing small droplets of milk. Your creamy colored tummy is slightly swollen as if you are barely pregnant, though that will probably change soon due to the aching need oozing from your swollen slit as it's obvious you've become nothing more than a needy whore. "	--


Section - Latex Cow

Table 4 - Cow Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"The spotted white latex flows over your head, extending to form the long ears and muzzle of a cow."       	      "Your have a latex cow's head."	"NULL"
"chest"	  "The latex washes over your chest, rendering it featureless aside from the familiar black-spotted pattern that covers it."        	   "Your white and black chest is completely featureless aside from the colors."	"NULL"
"gut"	"The rubber stretches across your gut, giving you a fairly noticeable moo cow-colored pot belly."            	 "Your rubbery gut is somewhat large and cow-patterned."	"NULL"
"pelvis"	 "The rubber reaches out over your genitals, and then pulls them in and forms a vagina, all the while greatly expanding the girth of your hips."      	  "You have a cow's genitalia and very wide hips."	"NULL"
"left upper arm"	 "Black and white runs across your left upper arm, fattening it slightly as it goes."            	   "Your latex-coated left upper arm is a bit on the fat side."	"NULL"
"left forearm"	 "The latex rushes along your left forearm, leaving a cow-like ocean of creamy white with islands of black in its wake."         	  "Your left forearm has a moo-cow pattern of colors on it."	"NULL"
"left hand"	 "Your left hand is consumed by the substance, which flows over your fingers and combines them until you have only three thick, hard black digits atop a white [quotation mark]hand[quotation mark]." 	 "Your left [quotation mark]hand[quotation mark] looks like a cross between a hand and a hoof."	"NULL"
"right upper arm"	 "Black and white runs across your right upper arm, fattening it slightly as it goes."           	    "Your latex-coated right upper arm is a bit on the fat side."	"NULL"
"right forearm"	 "The latex rushes along your right forearm, leaving a cow-like ocean of creamy white with islands of black in its wake."         	  "Your right forearm has a moo-cow pattern of colors on it."	"NULL"
"right hand"	"Your right hand is consumed by the substance, which flows over your fingers and combines them until you have only three thick, hard black digits atop a white [quotation mark]hand[quotation mark]." 	"Your right [quotation mark]hand[quotation mark] looks like a cross between a hand and a hoof."	"NULL"
"left thigh"	 "Thickened by the rubber that is now covering it, your left thigh grows considerably larger, as though to support a heftier frame."         	 "Your rubber-coated left thigh is very thick and hefty."	"NULL"
"left shin"	 "Your left shin expands with its latex coating, becoming considerably thicker, and shifts to match a more bovine configuration."         	 "Your left shin looks like it belongs on a cow rather than a person."	"NULL"
"left foot"	"The liquid gathers at your toes, forming a solid black hoof and leaving the rest of your left foot a creamy white."         	   "You have a solid rubber hoof instead of a left foot."	"NULL"
"right thigh"	 "Thickened by the rubber that is now covering it, your right thigh grows considerably larger, as though to support a heftier frame."      	   "Your rubber-coated right thigh is very thick and hefty."	"NULL"
"right shin"	 "Your right shin expands with its latex coating, becoming considerably thicker, and shifts to match a more bovine configuration."       	   "Your right shin looks like it belongs on a cow rather than a person."	"NULL"
"right foot" 	"The liquid gathers at your toes, forming a solid black hoof and leaving the rest of your right foot a creamy white."        	   "You have a solid rubber hoof instead of a right foot."	"NULL"
"rear" 	"Your rear end grows to truly bovine proportions as it's completely covered in latex."              	 "Your latex-coated rear is massive, much like that of the cows it resembles."	"NULL"
"full" 	"latex cow"	"You are a fat cow-like creature.  Between your legs is a fleshy rubber udder that feels rather full."	--

Section - Tentacled Ooze

Table 5 - Ooze Shifts
Segment	Shift Text	Desc Text
"head"		"Your skull deflates, your features melting away into a slimy green mass that melts into your chest."		"Nothing remains of your head, but you can still sense the world around you."
"chest"		"You gasp as your internal organs liquefy, your skin melting into green goop."		"Your chest is a shapeless green mass."
"gut"		"Your stomach swells, liquefying into a slimy green blob."		"Your gut is a giant glob of green slime."
"pelvis"		"Your penis begins to lengthen, becoming green and whip like, finally it becomes a clear green substance.  The feeling of an orgasm constantly runs its length, making it drool murky green liquid."		"All that remains of your genitals is a long green tentacle of slime, that drools a murky green liquid."
"left upper arm"	"Your upper left arm stretches and becomes flexible, melting into green ooze."		"Your upper left arm is a cord of green slime."
"left forearm"	"Your left forearm stretches, the bones melting away, your skin peeling away to reveal the green slime beneath."		"Your left forearm only remains as a length of green slime."
"left hand"	"Your left hand fuses and melts, leaving only a tentacle like appendage of green."		"Your left hand is the end of a slimy green tentacle."
"right upper arm"	"Your upper right arm stretches and becomes flexible, melting into green ooze."		"Your upper right arm is a cord of green slime."
"right forearm"	"Your right forearm stretches, the bones melting away, your skin peeling away to reveal the green slime beneath."		"Your right forearm only remains as a length of green slime."
"right hand"	"Your right hand fuses and melts, leaving only a tentacle like appendage of green."		"Your right hand is the end of a slimy green tentacle."
"left thigh"	"Your left thigh collapses, unable to support your weight as it melts away into a green mess."		"Your left thigh is now just a mess of green gloop."
"left shin"	"Your left shin stretches out becoming long and flexible."		"Your left shin is now a long slimy green cord."
"left foot"	"Your left foot melts away into a cone of green slime."		"Your left foot looks like the end of a slimy green tentacle."
"right thigh"	"Your right thigh collapses, unable to support your weight as it melts away into a green mess."		"Your right thigh is now just a mess of green gloop."
"right shin"	"Your right shin stretches out becoming long and flexible."		"Your right shin is now a long slimy green cord."
"right foot"	"Your right foot melts away into a cone of green slime."		"Your right foot looks like the end of a slimy green tentacle."
"rear"		"Your rear looses all definition and orifice as it turns to a large green lump."		"Your ass is just a lump of green slime."
"full"		"tentacled ooze"		"You're nothing but a tentacled mass of green goop."

Section - Centaur

Table 6 - Centaur Shifts
Segment	Shift Text	Desc Text
"head"		"Your features become more rugged, a beard growing along your jaw as your ears pull to points.  Your hair grows wild, extending down your back, looking much like a mane.  The skin of your face tans to a rich bronze."		"Your handsomely rugged face seems human, except for the pointed ears."
"chest"		"Your pectorals firm, becoming large and firm, a coat of brown chest hair covering them, the skin tanning."		"You have a chest that makes you look like you work out, a lot."
"gut"		"Your stomach firms into a well defined and tanned six pack, thick brown hair forms at your navel, forming an upside down v that flows to your waist."		"Your abs are well defined, but have grown a coarse brown pelt below the navel."
"pelvis"		"Your genitals retract into your body, strange muscles forming between your legs.  The entire area sprouts a coarse brown pelt."		"Your crotch is oddly muscled and covered in brown fur, and you genitals have disappeared."
"left upper arm"	"Your upper left arm sprouts muscles that can only be gained from hours at a gym, the skin tanning."		"Your upper left arm is muscled, and beautifully bronzed."
"left forearm"	"Your left forearm becomes corded with thick muscle as the flesh tans."		"Your left forearm is thick and wonderfully tan."
"left hand"	"Your left hand becomes large and powerful."		"Your left hand is large and powerful, you feel as if you could crush almost anything."
"right upper arm"	"Your upper right arm sprouts muscles that can only be gained from hours at a gym, the skin tanning."		"Your upper right arm is muscled, and beautifully bronzed."
"right forearm"	"Your right forearm becomes corded with thick muscle as the flesh tans."		"Your right forearm is thick and wonderfully tan."
"right hand"	"Your right hand becomes large and powerful."		"Your right hand is large and powerful, you feel as if you could crush almost anything."
"left thigh"	"Your left thigh becomes more muscled, growing coarse brown fur."		"Your left thigh is heavily furred and muscled."
"left shin"	"Your left shin snaps as it takes a new form, your knee snapping into reverse as it covers in brown fur."		"Your brown furred left shin is beneath a knee with a backwards joint."
"left foot"	"Your left foot sprouts long brown hair, in a wonderfully feathered fetlock as your toes fuse into a massive black hoof."		"Your left foot is a large black hoof with long brown fetlocks."
"right thigh"	"Your right thigh becomes more muscled, growing coarse brown fur."		"Your right thigh is heavily furred and muscled."
"right shin"	"Your right shin snaps as it takes a new form, your knee snapping into reverse as it covers in brown fur."		"Your brown furred right shin is beneath a knee with a backwards joint."
"right foot"	"Your right foot sprouts long brown hair, in a wonderfully feathered fetlock as your toes fuse into a massive black hoof."		"Your right foot is a large black hoof with long brown fetlocks."
"rear"		"Your rear swells to massive proportions pushing out a distance behind you, making it hard to move."		"Your rear has pulled out from your body, becoming larger."
"full"		"centaur"		"You're a wonderful specimen of a handsome rugged centaur stallion, with the horse body of a powerful draft horse."

Section - Centauress

Table Centauress - Centauress Shifts
Segment	Shift Text	Desc Text
"head"		"Your hair suddenly grows downwards, becoming a straw color as it reaches as about four feet in length. Your face softens to a pretty female smile."		"You have the head of a female human, with straw colored hair that hangs four feet down and a pretty smile."
"chest"		"Your nipples stiffen as fat collects under them, soon forming a pair of large D cupped breasts. Just as you consider reaching, the sensation returns as new C cupped swells form underneath."		"Your curvaceous chest is home to two sets of smooth skinned breasts."
"gut"		"Your stomach firms into a well defined and tanned six pack, white fur just barely touching at the lower edges of your belly."		"Your abs are well defined with bared belly button. You have some white fur starting just under the belly."
"pelvis"		"Your genitals retract into your body, strange muscles forming between your legs.  The entire area sprouts a coarse white pelt."		"Your crotch is oddly muscled and covered in white fur, and you genitals have disappeared."
"left upper arm"	"Your upper left arm sprouts muscles that can only be gained from hours at a gym, the skin tanning."		"Your upper left arm is muscled, and beautifully bronzed."
"left forearm"	"Your left forearm becomes corded with thick muscle as the flesh tans."		"Your left forearm is thick and wonderfully tan."
"left hand"	"Your left hand gains dainty and long fingers, slender and agile."		"Your left hand have dainty, female fingers on your left hand."
"right upper arm"	"Your upper right arm sprouts muscles that can only be gained from hours at a gym, the skin tanning."		"Your upper right arm is muscled, and beautifully bronzed."
"right forearm"	"Your right forearm becomes corded with thick muscle as the flesh tans."		"Your right forearm is thick and wonderfully tan."
"right hand"	"Your right hand gains dainty and long fingers, slender and agile."		"Your right hand have dainty, female fingers on your right hand."
"left thigh"	"Your left thigh becomes more muscled, growing coarse white fur."		"Your left thigh is heavily furred and muscled."
"left shin"	"Your left shin snaps as it takes a new form, your knee snapping into reverse as it covers in white fur."		"Your white furred left shin is beneath a knee with a backwards joint."
"left foot"	"Your left foot sprouts long white hair, in a wonderfully feathered fetlock as your toes fuse into a massive black hoof."		"Your left foot is a large black hoof with long white fetlocks."
"right thigh"	"Your right thigh becomes more muscled, growing coarse white fur."		"Your right thigh is heavily furred and muscled."
"right shin"	"Your right shin snaps as it takes a new form, your knee snapping into reverse as it covers in white fur."		"Your white furred right shin is beneath a knee with a backwards joint."
"right foot"	"Your right foot sprouts long white hair, in a wonderfully feathered fetlock as your toes fuse into a massive black hoof."		"Your right foot is a large black hoof with long white fetlocks."
"rear"		"Your rear swells to massive proportions pushing out a distance behind you, making it hard to move."		"Your rear has pulled out from your body, becoming larger."
"full"		"centaur"		"You are a female centaur, with the powerful lower body of a white furred horse and the upper body of an attractive, four breasted, human female. You are entirely female, your cunt overly large, and hungry feeling. Your hair, straw colored, runs down to your horse torso and across it, four feet in length."

Section - Bodybuilder

Table 7 - Bodybuilder Shifts
Segment	Shift Text	Desc Text
"head"		"Coarse hair grows on your rapidly squaring jaw, your longer hair pulling into your head, forming a clean buzz cut on top of your head.  Your nose broadens, as your brow thickens slightly, your features becoming much more masculine."		"Your face and head is that of a handsome man with a few days growth of beard."
"chest"		"Your shoulders begins to broaden, as your pathetic chest expands with muscle with every breath you take, your flat chest replaced with large plates of pectoral muscles, your nipples growing larger and becoming more sensitive.  Chest hair slowly pushes out from between your pecs, more growing about your nipples.  The hair expands outwards, covering your chest in a thick pelt."		"You have a hairy chest any bodybuilder could be proud of."
"gut"		"Your slight gut pulls in as your lower torso tapers into a distinct V shape.  Your abs ripple, becoming super defined as you develop a six pack which soon defines into an eight pack.  A thick treasure trail forms up the middle of your abs, and spreads out causing your muscle to loose a little definition as they become covered in thick hair.  Your abdomen begins to stretch adding new height to your frame."		"You could bounce quarters of your taught hairy abs."
"pelvis"		"You feel as if someone is tugging on your balls, but you soon realize the weight /is/ your massive balls.  Your rapidly thickening pubic hair covers your now huge globes.  Your small penis twitches, growing long enough that it slaps against your thighs when you move.  The feeling of it causes it to waken, doubling in size as it hardens, coming to point at the sky, the swollen glance glistening with pre that drips warmly onto your flesh."		"Your pathetic dick has been replaced by a massive throbbing cock, in desperate need of attention."
"left upper arm"	"Your slender upper left arm, begins to swell and lengthen, the muscles becoming defined, veins snaking along your upper arm.  You feel a curious sensation under your arm as thick hair begins to grow from your nearly hairless armpit."		"Your upper left arm is huge, few guys could compare."
"left forearm"	"Your left forearm cords with muscle and veins as it lengthens.  Your arm hair darkens and thickens, giving the arm a manly appearance."		"Your left forearm definitely belongs to a hairy muscular man."
"left hand"	"Your small almost feminine left hand aches for a moment, as your palm begins to swell, the soft skin becoming coarse and rough.  One by one your fingers swell, knuckles thickening.  Hair spreads on the back of your hand."		"Your left hand would be suited to any man who does heavy labor."
"right upper arm"	"Your slender upper right arm, begins to swell and lengthen, the muscles becoming defined, veins snaking along your upper arm.  You feel a curious sensation under your arm as thick hair begins to grow from your nearly hairless armpit."		"Your upper right arm is huge, few guys could compare."
"right forearm"	"Your right forearm cords with muscle and veins as it lengthens.  Your arm hair darkens and thickens, giving the arm a manly appearance."		"Your right forearm definitely belongs to a hairy muscular man."
"right hand"	"Your small almost feminine right hand aches for a moment, as your palm begins to swell, the soft skin becoming coarse and rough.  One by one your fingers swell, knuckles thickening.  Hair spreads on the back of your hand."		"Your right hand would be suited to any man who does heavy labor."
"left thigh"	"Your left thigh begins to swell with muscle, hair growing on the inside of your thigh even as it becomes defined with muscle.  It stretches longer, much longer, boosting your height by quite a few inches."		"Your left thigh is massive, and hard as rocks, except for the soft hair on the inside of your thigh."
"left shin"	"Your lightly fuzzed left shin begin to grow thick leg hair, the calf muscles stretch adding height even as they grow, giving your lower leg a defined diamond shape."		"You can't help but admire you well muscled hairy left shin."
"left foot"	"Your small left foot begins to grow enormous compared to its old size, a bit of hair growing on top of your foot."		"Your left foot is massive, and you know what they say about a man's foot."
"right thigh"	"Your right thigh begins to swell with muscle, hair growing on the inside of your thigh even as it becomes defined with muscle.  It stretches longer, much longer, boosting your height by quite a few inches."		"Your right thigh is massive, and hard as rocks, except for the soft hair on the inside of your thigh."
"right shin"	"Your lightly fuzzed right shin begin to grow thick leg hair, the calf muscles stretch adding height even as they grow, giving your lower leg a defined diamond shape."		"You can't help but admire you well muscled hairy right shin."
"right foot"	"Your right left foot begins to grow enormous compared to its old size, a bit of hair growing on top of your foot."		"Your right foot is massive, and you know what they say about a man's foot."
"rear"		"Your ass looses flab, it becomes rock hard and muscular, a fine layer of hair growing over it."		"Your ass is muscular and hairy, and you long for it to be filled with a man's big cock."
"full"		"bodybuilder"		"You're a muscular and hairy specimen of a man, you know you'd screw yourself if you could."

Section - Demon

Table 8 - Demon Shifts
Segment	Shift Text	Desc Text
"head"		"Red scaled skin overtakes your head, as your hair begins to fall out in clumps.  Your enlarging jaw aches as two large tusks push out where your lower canines once were.  Another simultaneous pressure builds from your skull as two large curved horns sprout, growing into massive curled things beside your head.  Your hair regrows as a shaggy black mane, and a matching goatee of black sprouts from your chin."		"Your black maned and goateed head looks like something from a nightmare, with red scaled skin, tusks and ram's horns."
"chest"		"As the red scaled skin overtakes your chest, your pectorals swell to enormous proportions.  Your nipples expand, becoming a deep black.  The red scales also pour down your back, large black spines bursting out and going do the middle of your back."		"Your massive chest is covered in red scales, with two nipples of dark black.  Large black spines have grown down the center of your back."
"gut"		"Your gut lengthens slightly, red scales covering it, squeezing your muscles into a tight six pack.  A slight pressure builds just below your chest as two large pectorals form, sprouting sensitive black nipples."		"Your gut has a red scaled six pack, and what looks like a second chest."
"pelvis"		"Shaggy black fur covers your hips, absorbing your genitals, replacing them with a furred sheath with massive similarly furred balls.  Soon a large but all too human cock emerges from the sheath, the skin of your new member quickly staining to a pitch black."		"Your shaggy haired crotch, now sports an animalistic sheath and balls, with a large, very human looking pitch black cock extended from the sheath."
"left upper arm"	"Your upper left arm swells with muscle as it is overcome with red scales."		"Your upper left arm is muscular and covered in red scales."
"left forearm"	"Red scales pour down your left forearm."		"Your left forearm is covered in red scales."
"left hand"	"Your left hand grows large, wicked black claws sprouting from the tips of your fingers.  Red scales pour down the back of your hand, the palm becoming black and thick-skinned."		"Your large left hand has red scales on the back, thick black skin on the palm, and wicked black claws."
"right upper arm"	"Your upper right arm swells with muscle as it is overcome with red scales."		"Your upper right arm is muscular and covered in red scales."
"right forearm"	"Red scales pour down your right forearm."		"Your right forearm is covered in red scales."
"right hand"	"Your right hand grows large, wicked black claws sprouting from the tips of your fingers.  Red scales pour down the back of your hand, the palm becoming black and thick-skinned."		"Your large right hand has red scales on the back, thick black skin on the palm, and wicked black claws."
"left thigh"	"Your left thigh gains mass, and grows a covering of shaggy black hair."		"Your shaggy haired left thigh is massive."
"left shin"	"Snapping noises can be heard as your left shin arranges into a new position, reversing the joint.  Shaggy hair grows down it, making it appear like a goat's leg."		"Your black shaggy left shin looks like a goat's."
"left foot"	"Your left foot, swells, hardening into a obsidian black cloven hoof."		"You have a black cloven hoof for a left foot."
"right thigh"	"Your right thigh gains mass, and grows a covering of shaggy black hair."		"Your shaggy haired right thigh is massive."
"right shin"	"Snapping noises can be heard as your right shin arranges into a new position, reversing the joint.  Shaggy hair grows down it, making it appear like a goat's leg."		"Your black shaggy right shin looks like a goat's."
"right foot"	"Your right foot, swells, hardening into a obsidian black cloven hoof."		"You have a black cloven hoof for a right foot."
"rear"		"Shaggy black hair covers your ass as it becomes large and muscular."		"Shaggy black hair covers your muscular ass."
"full"		"demon"		"Your new form is monstrous, a large four armed, four pec'ed, red scaled torso, with bat wings and a long spiked tail, is supported by lower legs that resemble a black goat.  Your head is horned and tusked with shaggy black hair and a goatee."

Section - Horse Stud

Table 9 - Horse Shifts
Segment	Shift Text	Desc Text
"head"		"You feel excruciating pain as your face pulls out into a muzzle.  Two pointed ears sprout from your head as your neck thickens with muscle.  Slowly it becomes covered in black fur.  Your hair grows into a lush white mane that cascades down your back."		"Your head is the of a black furred horse, with wild white mane."
"chest"		"You rub your chest as it swells with muscle, tearing your shirt to shreds.  You can't help but caress your nipples as your chest hair expands into a lush black pelt."		"Your massive chest is covered in black fur."
"gut"		"Black fur pours over your gut as it tightens into a six pack, then an eight pack."		"Your eight pack stomach is covered in black fur."
"pelvis"		"Feelings of pleasure overwhelm you as your manhood begins to expand to huge proportions, tearing off your pants.  Your shaft turns a glossy black, and you feel a pressure as your massive testicles enlarge and cover in black fur."		"You have a ridiculously oversized horse's cock."
"left upper arm"	"Your upper left arm bulges with muscle and grows sleek black fur."		"Your upper left arm is muscled and covered in black fur."
"left forearm"	"Long white fur pours down your left forearm, swelling it with muscle as it goes."		"Your thick left forearm is covered with white fetlocks."
"left hand"	"Your left hand grows in size as it covers in white fur, your fingers fusing until you only have three digits ending in hard black nails."		"Your left hand is white furred and has three fingers that looks like a hoof when held together."
"right upper arm"	"Your upper right arm bulges with muscle and grows sleek black fur."		"Your upper right arm is muscled and covered in black fur."
"right forearm"	"Long white fur pours down your right forearm, swelling it with muscle as it goes."		"Your thick right forearm is covered with white fetlocks."
"right hand"	"Your right hand grows in size as it covers in white fur, your fingers fusing until you only have three digits ending in hard black nails."		"Your right hand is white furred and has three fingers that looks like a hoof when held together."
"left thigh"	"Your left thigh thickens, sprouting rich black fur."		"Your well muscled left thigh is covered in black fur."
"left shin"	"Your left shin thickens and shortens slightly, growing black fur."		"Your shortened black furred left shin forces you to walk on tiptoes."
"left foot"	"You hear the snap of your left shoe bursting as your toes form into a large glossy black hoof.  Your foot thins and lengthens, sprouting long white hair."		"Your white fetlocked left foot is now a glossy black hoof."
"right thigh"	"Your right thigh thickens, sprouting rich black fur."		"Your well muscled right thigh is covered in black fur."
"right shin"	"Your right shin thickens and shortens slightly, growing black fur."		"Your shortened black furred right shin forces you to walk on tiptoes."
"right foot"	"You hear the snap of your right shoe bursting as your toes form into a large glossy black hoof.  Your foot thins and lengthens, sprouting long white hair."		"Your white fetlocked right foot is now a glossy black hoof."
"rear"		"Your buttocks fills with muscle, becoming wonderfully squeezable as it grows soft black fur."		"Your muscled ass just begs to be squeezed and fucked."
"full"		"anthropomorphic horse"		"You are a well muscled black horse with sleek white mane."

Section - Horse Stud Mare

Table horse mare - Horse mare Shifts
Segment	Shift Text	Desc Text
"head"		"You feel excruciating pain as your face pulls out into a muzzle.  Two pointed ears sprout from your head as your neck thickens with muscle.  Slowly it becomes covered in black fur.  Your hair grows into a lush white mane that cascades down your back."		"Your head is the of a black furred horse, with wild white mane."
"chest"		"Your powerful chest swells with tight, C cup breasts, firm and supported by a body well in shape."		"You have the curvy front of an anthro mare, black furred, pink teated."
"gut"		"Any previous fat is lost in your belly as it becomes a powerful equine washboard, covered in black fur."		"Your eight pack stomach is covered in black fur."
"pelvis"		"Your groin feels wet, and so hot, as thick lipped vulva swell into being between your thighs, making you a ready mare."		"You have a huge mare's cunt, waiting for an appropriately sized male."
"left upper arm"	"Your upper left arm bulges with muscle and grows sleek black fur."		"Your upper left arm is muscled and covered in black fur."
"left forearm"	"Long white fur pours down your left forearm, swelling it with muscle as it goes."		"Your thick left forearm is covered with white fetlocks."
"left hand"	"Your left hand grows in size as it covers in white fur, your fingers fusing until you only have three digits ending in hard black nails."		"Your left hand is white furred and has three fingers that looks like a hoof when held together."
"right upper arm"	"Your upper right arm bulges with muscle and grows sleek black fur."		"Your upper right arm is muscled and covered in black fur."
"right forearm"	"Long white fur pours down your right forearm, swelling it with muscle as it goes."		"Your thick right forearm is covered with white fetlocks."
"right hand"	"Your right hand grows in size as it covers in white fur, your fingers fusing until you only have three digits ending in hard black nails."		"Your right hand is white furred and has three fingers that looks like a hoof when held together."
"left thigh"	"Your left thigh thickens, sprouting rich black fur."		"Your well muscled left thigh is covered in black fur."
"left shin"	"Your left shin thickens and shortens slightly, growing black fur."		"Your shortened black furred left shin forces you to walk on tiptoes."
"left foot"	"You hear the snap of your left shoe bursting as your toes form into a large glossy black hoof.  Your foot thins and lengthens, sprouting long white hair."		"Your white fetlocked left foot is now a glossy black hoof."
"right thigh"	"Your right thigh thickens, sprouting rich black fur."		"Your well muscled right thigh is covered in black fur."
"right shin"	"Your right shin thickens and shortens slightly, growing black fur."		"Your shortened black furred right shin forces you to walk on tiptoes."
"right foot"	"You hear the snap of your right shoe bursting as your toes form into a large glossy black hoof.  Your foot thins and lengthens, sprouting long white hair."		"Your white fetlocked right foot is now a glossy black hoof."
"rear"		"Your buttocks fills with muscle, becoming wonderfully squeezable as it grows soft black fur."		"Your muscled ass just begs to be squeezed and fucked."
"full"		"horse mare"		"You are a fetching anthro mare. Your body is covered in black fur, and you have dazzling green eyes. Your body has delicious curves, both up top and behind, the rest a testament to a creature ready to run and work hard.[if horse cock is visible] Above your other genitals is a huge horse cock that twitches and oozes heavy precum on the ground wherever you walk. Under it are two large furry balls that fuel that canon with gallons of potent seed.[end if]"

Section - Big Booby

Table 10 - Booby Shifts
Segment	Shift Text	Desc Text
"head"		"Your face pushes out, your nose combining with your mouth as your teeth harden and fuse.  Your fused teeth turn blue and finishing pulling into a slender pointed beak.  Your hair falls out, a crest of black feathers edged with white replaces it."		"You have a blue beaked bird's head."
"chest"		"New flight muscles swell in your chest, giving you a muscular appearance.  White feathers burst from your skin, covering your chest, the feather begin to fade to black on your shoulders.  Black feathers with white edges sprout and extend down your back."		"Your muscular chest is covered in white feathers, and your back in black and white."
"gut"		"Smooth white feathers flow down your abs."		"Your gut is covered in white feathers."
"pelvis"		"White feathers pour over your groin.  With a sickening tug your penis disappears back into your body along with your balls.  You nervously run your hand over where it was, and soon your now blue penis pokes out from the feathers, just to let you know it's still there."		"White feathers cover your crotch, and your blue penis is now kept inside your body, coming out when you need it."
"left upper arm"	"Your upper left arm becomes slender, long black feathers flowing out from behind it, shorted feathers covering the front."		"Your upper left arm now looks like a black feathered upper wing."
"left forearm"	"Your left forearm narrows and lengthens, black feathers growing it's length.  The feather on the back of the arm, grow long and sturdy."		"Your lower left arm looks like part of a black feathered wing."
"left hand"	"With a curious pulling sensation the pinky and ring fingers of your left hand, extend almost to the length of your arm, long black feathers shooting out from them, looking much like a wing, but unlike a normal wing your other three fingers become scaly blue and grow black tips, the opposable thumb remaining as well."		"Your left hand looks like the end of a black feathered wing, but with two blue scaled claw tipped fingers and a matching thumb for gripping."
"right upper arm"	"Your upper right arm becomes slender, long black feathers flowing out from behind it, shorted feathers covering the front."		"Your upper right arm now looks like a black feathered upper wing."
"right forearm"	"Your right forearm narrows and lengthens, black feathers growing it's length.  The feather on the back of the arm, grow long and sturdy."		"Your lower right arm looks like part of a black feathered wing."
"right hand"	"With a curious pulling sensation the pinky and ring fingers of your right hand, extend almost to the length of your arm, long black feathers shooting out from them, looking much like a wing, but unlike a normal wing your other three fingers become scaly blue and grow black tips, the opposable thumb remaining as well."		"Your right hand looks like the end of a black feathered wing, but with two blue scaled claw tipped fingers and a matching thumb for gripping."
"left thigh"	"Your left thigh grows a bit of muscle, which you admire, before it is hidden behind a cascade of white feathers."		"Your left thigh is now covered in white feathers."
"left shin"	"From your knee down your left shin becomes blue and scaly, and more slender."		"Your left shin is blue and scaly."
"left foot"	"Your toes on your left foot spread apart, turning a brilliant shade of blue as your skin grows rough and scaly.  Blue webbing stretches out between the toes, making your foot look like it belongs on a waterfowl."		"You have a blue webbed bird left foot."
"right thigh"	"Your right thigh grows a bit of muscle, which you admire, before it is hidden behind a cascade of white feathers."		"Your right thigh is now covered in white feathers."
"right shin"	"From your knee down your right shin becomes blue and scaly, and more slender."		"Your right shin is blue and scaly."
"right foot"	"Your toes on your right foot spread apart, turning a brilliant shade of blue as your skin grows rough and scaly.  Blue webbing stretches out between the toes, making your foot look like it belongs on a waterfowl."		"You have a blue webbed bird right foot."
"rear"		"Black feathers trimmed in white grow over your rear."		"Your rear is covered in black and white feathers."
"full"		"big booby"		"You look like a humanoid blue-footed booby.  Oh, the jokes you'll have to endure."

Section - Neanderthal

Table 11 - Neanderthal Shifts
Segment	Shift Text	Desc Text
"head"		"Your brows thicken a coarse beard growing on your jaw.  You feel your intelligence begin to drain away."		"Your thick skull and bearded head makes you appear primitive."
"chest"		"Your chest thickens with corded muscle, a thick pelt of chest hair growing across it.  Your back thickens and forces you to hunch over slightly."		"Your chest is hairy and muscular.  But you can't help but slump forward."
"gut"		"Your gut becomes muscular, a lot of body hair sprouting from it."		"Your gut is muscular and hairy."
"pelvis"		"Your pubic hair grows wild around your quickly enlarging cock, which regrows its foreskin."		"Your have a large hairy uncircumcised cock."
"left upper arm"	"Your upper left arm bulges with muscle."		"Your upper left arm is wonderfully muscular."
"left forearm"	"Your left forearm lengthens and grows thick hair."		"Your long left forearm causes your hand to hang lower."
"left hand"	"Your left hand grows very large, your hairy knuckles becoming hard and thick."		"Your left hand looks almost like an ape's."
"right upper arm"	"Your upper right arm bulges with muscle."		"Your upper right arm is wonderfully muscular."
"right forearm"	"Your right forearm lengthens and grows thick hair."		"Your right left forearm causes your hand to hang lower."
"right hand"	"Your right hand grows very large, your hairy knuckles becoming hard and thick."		"Your right hand looks almost like an ape's."
"left thigh"	"Your left thigh swells with muscle, even as it grows coarse hair, and forces you into a more bowlegged stance."		"Your left thigh is muscular, but makes walking odd."
"left shin"	"Your left shin shrinks slightly as it bulges with muscle and coarse body hair."		"Your left shin is short, but muscular."
"left foot"	"Your left foot grows large, a nice bit a hair growing on it."		"Your left foot is ridiculously large and hairy."
"right thigh"	"Your right thigh swells with muscle, even as it grows coarse hair, and forces you into a more bowlegged stance."		"Your right thigh is muscular, but makes walking odd."
"right shin"	"Your right shin shrinks slightly as it bulges with muscle and coarse body hair."		"Your right shin is short, but muscular."
"right foot"	"Your right foot grows large, a nice bit a hair growing on it."		"Your right foot is ridiculously large and hairy."
"rear"		"Your ass becomes muscular even as it becomes hairy."		"Your ass is so hairy it might be considered fur."
"full"		"neanderthal"		"You are a muscular and very hairy primitive man."

Section - Boar Man

Table 12 - Boar Shifts
Segment	Shift Text	Desc Text
"head"		"The first thing you notice is your nose pulling out into a sensitive shout as two large tusks protrude from your lower jaw.  Your ears pull to the top of your head, becoming large and pointed.  brown bristly fur covers your whole face except for your new snout.  With a small flash of light a large gold ring appears in your nose."		"You have the head of a brown boar, a large gold ring through your snout.."
"chest"		"Your chest hair turns brown, becoming long and bristly as it begins to spread across your chest to your back.  Your chest gains muscle, your pecs becoming firm, but those soon become covered with a layer of softening fat, giving you a bulky appearance."		"Your brown furred chest is muscular and fat at the same time."
"gut"		"Your stomach distends into a large flabby gut which is soon grown over by long coarse brown hair. "		"You have a very hairy very large gut."
"pelvis"		"Your pubic hairs become long and brown, spreading outwards from around your penis.  You balls descend, dangling between your thighs, as your cock enlarges.  A sheath covered in bristly hair grows up around your member."		"Your penis is now kept in a sheath on your hairy crotch, with big swaying balls."
"left upper arm"	"Even as your upper left arm swells with muscle, it also stretches with fat.  Brown hair soon covers it."		"You large upper left arm is covered in hair."
"left forearm"	"Your left forearm becomes massive, but is soon covered in bristly brown hair."		"Your left forearm is hairy and large."
"left hand"	"Your fingers fuse, leaving you only two digits and a thumb on your left hand, the digits become tipped in large black nails."		"Your left hand looks like a pig's foot if you hold your fingers together."
"right upper arm"	"Even as your upper right arm swells with muscle, it also stretches with fat.  Brown hair soon covers it."		"You large upper right arm is covered in hair."
"right forearm"	"Your right forearm becomes massive, but is soon covered in bristly brown hair."		"Your right forearm is hairy and large."
"right hand"	"Your fingers fuse, leaving you only two digits and a thumb on your right hand, the digits become tipped in large black nails."		"Your right hand looks like a pig's foot if you hold your fingers together."
"left thigh"	"Coarse brown hair grows down your left thigh, as it swells."		"Your large left thigh is covered in brown hair."
"left shin"	"Your left shin shortens and grows rough brown hair, forcing you into a digitigrade stance."		"Your hairy left shin is making you walk digitigrade."
"left foot"	"Your left foots lengthens, the toes fusing into a clover black hoof."		"Your left foot looks like it belongs to a hairy pig."
"right thigh"	"Coarse brown hair grows down your right thigh, as it swells."		"Your large right thigh is covered in brown hair."
"right shin"	"Your right shin shortens and grows rough brown hair, forcing you into a digitigrade stance."		"Your hairy right shin is making you walk digitigrade."
"right foot"	"Your right foots lengthens, the toes fusing into a clover black hoof."		"Your right foot looks like it belongs to a hairy pig."
"rear"		"A weight behind you makes you notice your ass swelling with muscle and fat, becoming extremely hairy as coarse brown fur covers it, with a blush you release a fart, attracting a cloud of flies to you "		"Your large hairy ass releases a puff of gas occasionally, keeping you surrounded in a swarm of flies."
"full"		"boar man"		"Your a muscular but fat brown boar man, with a rather horrid stench."

Section - Furry Skunk

Table 14 - Furry Skunk Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"The black fur moves over your head like a hood, leaving a muzzle that's white on the bottom with a head that's all black, all completed by the pair of rounded ears sitting atop it and a white stripe from the tip of your nose to your back."	 "You have a large-muzzled female skunk's head."	"Your muzzled face changes"
"chest"	"A sea of black moves over your back and a sea of white over your chest, the white gathering into a pair of DD-cup breasts while a matching stripe forms down the middle of the black."	"Your white-furred chest sports a pair of DD-sized breasts."	"Your breasts tingle as they shift"
"gut"	"The thick fur covers your gut in creamy white, making it far more shapely and feminine."	 "Your creamy white gut has very feminine curves."	"Your belly changes once again"
"pelvis"	"You feel the infection burning at your crotch you as you lose your manhood and gain something... a little different."   	  "Your male genitalia has been replaced by that of an animal in heat."	"The steady heat fades as your pussy shifts"
"left upper arm"	 "The fur flows over your left upper arm, the glossy black accentuating its increasingly sleek shape." 	  "Your upper left arm is coated in black fur and very shapely."	"Black fur falls from your left upper arm as it changes"
"left forearm"	 "Your left forearm slims, morphing into a daintier and more feminine form."   	 "Your left forearm is thin and covered in black fur."	"Your left forearm loses it's black fur as it shifts"
"left hand"	"The black fur covers your left hand, making it swell, becoming almost useless, becoming fully paw-like as the short claws sprout from your fingertips."	  "Your left hand looks like an animal's forepaw."	"Your claws retract as your left hand changes"
"right upper arm"	 "The fur flows over your right upper arm, the glossy black accentuating its increasingly sleek shape." 	   "Your upper right arm is coated in black fur and very shapely."	"Black fur falls from your right upper arm as it changes"
"right forearm"	"Your right forearm slims, morphing into a daintier and more feminine form.."     	"Your right forearm is thin and covered in black fur."	"Your right forearm loses it's black fur as it shifts"
"right hand"	 "The black fur covers your right hand, making it swell, becoming almost useless, becoming fully paw-like as the short claws sprout from your fingertips."	  "Your right hand looks like an animal's forepaw."	"Your claws retract as your right hand changes"
"left thigh"	"Your left thigh gains a feminine flair as the fur flows over it, becoming far more shapely."  	 "Your black fur-coated left thigh is very shapely and feminine."	"Your left thigh looses it's skunk like nature"
"left shin"	"Your left shin and calf become thinner and far more attractive as the black fur squeezes them into shape."	  "Your black left shin would be extremely attractive on someone else."	"Your left shin sheds as it changes"
"left foot"	 "The thick black fur spreads over your left foot, leaving a beautifully shaped replacement."  	 "Your left foot looks like it belongs on a furry woman, not on a man."	"Your left foot looses it's feminine fur as it shifts"
"right thigh"	"Your right thigh gains a feminine flair as the fur flows over it, becoming far more shapely." 	 "Your black fur-coated right thigh is very shapely and feminine."	"Your right thigh looses it's skunk like nature"
"right shin"	 "Your right shin and calf become thinner and far more attractive as the black fur squeezes them into shape." 	  "Your black right shin would be extremely attractive on someone else."	"Your right shin sheds as it changes"
"right foot" 	 "The thick black fur spreads over your right foot, leaving a beautifully shaped replacement."  	  "Your right foot looks like it belongs on a furry woman, not on a man."	"Your right foot looses it's feminine fur as it shifts"
"rear" 	 "The black fur shifts over your ass, squeezing it until it's tight and sexy."    	 "Your furry rear is very tight and shapely."	"Your rear shifts, leaving a pile of black fur behind"
"full" 	"furry skunk"	"You are a rather female anthropomorphic skunk with hints of animal."	--

Section - Ferret

Table Ferret - Ferret shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your flesh feels heavy and molten as unseen hands push from inside, forming a snout, pressing fine whiskers free. Your face is lost behind a thick carpet of fur, black mask forming around your eyes. Your ears are drawn upwards as they unfurl and reforge into large furry dishes."	 "Your have an ermine face of a ferret, grinning and plushly furred. Your original hair has become fur, lost."	"Your muzzled face changes."
"chest"	"Possessed with a sudden need to stretch, you reach up towards the sky as your chest expands, both upwards and outwards as two streamlined breasts rapidly form to adorn your increasingly brown pelted form."	"Your upper body feels very flexible, covered in thick brown fur and adorned with two firm breasts."	"Your back feels itchy suddenly as something changes."
"gut"	"A stretching feeling runs down your spine as your belly becomes slender and streamlined, covered in thick brown fur. Your body begins to put off a powerful earthy musk."	"You have the belly of a ferret, and the smell to match."	"Your scent begins to change as something else does."
"pelvis"	"Fur sweeps over your hips and closes around your tingling genitals, drawing them up into your body and leaving you sexless a moment. Arousal floods through you, leaving you rubbing between your legs desperately before feminine lips form. Your fingers dip inside, needing to find relief, and you quickly bring yourself to a shuddering climax. As waves of pleasure rock your form, your new clit swells against the palm of your hand rapidly, forming into a ready shaft that throbs in your palm."   	  "You have the dewy brown furred vagina of a ferret, its clit quite elongated and aching, more cock than clit, even dripping with fluids."	"You cross your legs a little as something changes between them."
"left upper arm"	 "Fur spreads along your left arm from the shoulder as it lengthens and grows limber." 	  "You have the left upper arm of a slinky ferret, brown furred."	"A tremble passes through your arm."
"left forearm"	 "Spreading from your wrist up to your elbow, you gain the brown fur of a ferret."	"Your lower left arm is covered in brown fur."	"Your hand suddenly clenches as your left arm changes."
"left hand"	"Your nails form into short, unretractable, claws as fur spreads over your hands. Your palm is almost lost beneath large soft pads over it and the bottoms of your fingers."	  "Your left hand is half paw, brown furred and ferret."	"Your fingers clench as your hand changes."
"right upper arm"	 "Fur spreads along your right arm from the shoulder as it lengthens and grows limber." 	  "You have the right upper arm of a slinky ferret, brown furred."	"A tremble passes through your arm."
"right forearm"	 "Spreading from your wrist up to your elbow, you gain the brown fur of a ferret."	"Your lower right arm is covered in brown fur."	"Your hand suddenly clenches as your right arm changes."
"right hand"	"Your nails form into short, unretractable, claws as fur spreads over your hands. Your palm is almost lost beneath large soft pads over it and the bottoms of your fingers."	  "Your right hand is half paw, brown furred and ferret."	"Your fingers clench as your hand changes."
"left thigh"	"Strange pulling sensations in your left leg herald its lengthening as your thigh is covered in brown fur."  	 "Your left thigh is covered in brown fur, and the leg feels more flexible."	"You almost stumble as your thigh trembles."
"left shin"	"Your lower left leg is soon coated in thick brown fur."	  "Your left shin is covered in brown fur."	"A tremble runs through your left leg."
"left foot"	 "You can feel soft pads growing on the bottom of your foot, thick enough to cushion as brown fur spreads over your left foot. Large claws sprout from your toes, providing traction."  	 "Your left foot has become entirely a large ferret paw."	"Fur sheds from your left foot as things change."
"right thigh"	"Strange pulling sensations in your right leg herald its lengthening as your thigh is covered in brown fur."  	 "Your right thigh is covered in brown fur, and the leg feels more flexible."	"You almost stumble as your thigh trembles."
"right shin"	"Your lower right leg is soon coated in thick brown fur."	  "Your right shin is covered in brown fur."	"A tremble runs through your right leg."
"right foot"	 "You can feel soft pads growing on the bottom of your foot, thick enough to cushion as brown fur spreads over your right foot. Large claws sprout from your toes, providing traction."  	 "Your right foot has become entirely a large ferret paw."	"Fur sheds from your right foot as things change."
"rear" 	 "Your ass becomes curvy for a moment before its lost to spreading brown fur. Your spine lurches in a stretch as a wet splitting sensation is felt. A new limb extends from behind you, long and sinuously flicking, covered in the same brown fur, growing dark towards the tip."	"You have a well curved bottom, and a long ferret's tail that grows darker towards the tip."	"Your tail gives a spasm as things change."
"full" 	"ferret"	"You are a tall and sinuous ferret. Your body is covered largely in brown fur, growing darker at paws and tail. Your face has a black mask around the eyes and your wet nose twitches excitedly. Your movements are like a spring, uncoiling and undulating with every motion. Despite your bestial appearance, you are still bipedal, and show humanoid features like the grin on your face and the firm breasts on your brown furred chest. Between your legs, pink pouting lips are exposed beneath a long and hard shaft."	--

Section - Wyvern

Table Wyvern - Wyvern shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"A blast of heat like an explosion rips through your head as it expands dramatically into the great mask of a draconic beast."	 "Your reptilian face  is large and menacing with its many teeth and flickering forked tongue. Two great horns curve back over what used to be ears."	"Your muzzled face changes."
"chest"	"Your flesh is covered in fine supple leather as it grows and lengthens along the chest, forming into a great barrel of power."	"You have the large barrel torso of a wyvern, powerful and big, covered in supple scales."	"Your back feels itchy suddenly as something changes."
"gut"	"Fine scales run across your belly as it swells into the firm abdomen of some great reptillian creature. A faint sense of fullness is felt within."	"You have the lower belly of a wyvern, covered in fine scales. Though you can't see it, you can feel something bulging faintly within."	"Your scent begins to change as something else does."
"pelvis"	"Soft scales spread over reforming hips as your cock becomes stiffer. It grows and lengthens, taking a reptilian shape as it leaks thick viscous fluids. Even as you consider it, your body gives a shudder as a female passage opens."   	  "You have the hermaphroditic loins of a huge wyvern, and feel ready to take on anything!"	"You cross your legs a little as something changes between them."
"left upper arm"	 "Your left arm suddenly raises over your head and becomes stuff, stretching out to fine patterns. That felt very odd and off." 	  "You have the bone structure of a wyvern's left wing."	"A tremble passes through your arm."
"left forearm"	 "Fine membranes spread from your arm/wing as you develop the sails on your left to sustain flight."	"You have the wing sails of a wyvern's left wing."	"Your hand suddenly clenches as your left arm changes."
"left hand"	"Your fingers become ends of wing bones, useless for grasping on your left side."	  "Your left hand is little more than the ends of bones on your wings."	"Your fingers clench as your hand changes."
"right upper arm"	 "Your right arm suddenly raises over your head and becomes stuff, stretching out to fine patterns. That felt very odd and off." 	  "You have the bone structure of a wyvern's right wing."	"A tremble passes through your arm."
"right forearm"	 "Fine membranes spread from your arm/wing as you develop the sails on your right to sustain flight."	"You have the wing sails of a wyvern's right wing."	"Your hand suddenly clenches as your right arm changes."
"right hand"	"Your fingers become ends of wing bones, useless for grasping on your right side."	  "Your right hand is little more than the ends of bones on your wings."	"Your fingers clench as your hand changes."
"left thigh"	"Your left thigh undergoes an extreme growth spurt, tripling in size and girth as it gains a sheen of scales."  	 "You have the great left thigh of a wyvern."	"You almost stumble as your thigh trembles."
"left shin"	"Growth overtakes your lower left leg as it becomes the appropriate size for a fully grown wyvern, threatening to throw you off balance."	  "Your left shin is huge, thickly muscled and boned, quite fitting of a wyvern."	"A tremble runs through your left leg."
"left foot"	 "Your left foot explodes in growth, becoming a massive talon instead, with great rending claws, large enough to support a wyvern's body."  	 "You have the left talon of a great wyvern"	"Scales sheds from your left foot as things change."
"right thigh"	"Your right thigh undergoes an extreme growth spurt, tripling in size and girth as it gains a sheen of scales."  	 "You have the great right thigh of a wyvern."	"You almost stumble as your thigh trembles."
"right shin"	"Growth overtakes your lower right leg as it becomes the appropriate size for a fully grown wyvern, threatening to throw you off balance."	  "Your right shin is huge, thickly muscled and boned, quite fitting of a wyvern."	"A tremble runs through your right leg."
"right foot"	 "Your right foot explodes in growth, becoming a massive talon instead, with great rending claws, large enough to support a wyvern's body."  	 "You have the right talon of a great wyvern"	"Scales sheds from your right foot as things change."
"rear" 	 "You almost fall over backwards as your body contorts. A massive tail emerges, swelling and growing by the moment, soon almost ten feet long and quite flexible. Its tapered tip is covered in a great tuft of fur, the very end a sharp needle that pokes through."	"You have a ten foot lizard's tail with a tufted, barbed, tip at the end."	"Your tail gives a spasm as things change."
"full" 	"wyvern"	"You are an enormous two legged, two winged wyvern. Though you have some regret at the loss of your hands, your body is quite majestic to behold, covered in supple fine scales, with huge rending talons and teeth. Your new, extremely large, shaft twitches in excitement as something in your tail yearns to break free. Perhaps some of the other wyverns..."	--

Section - Deer

Table Deer - Deer shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your face draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Oddly, despite your new bestial skull, no fur grows. You give a pant, long tongue hanging a moment."	 "You have the face of a deer, though fur-less."	"Your muzzled face changes"
"chest"	"Your chest forms into two large swells, capped by huge round, perky, nipples. Your changed erogenous zones tingle with the aftershocks of the transformation."	"You have the chest of an attractive woman, with large full breasts."	"A wave of numbness passes through your breasts as they change."
"gut"	"Your belly becomes trim and fit, with smooth flesh and a giddy rush of new sensations."	"Your belly is trim and fit with smooth skin."	"A bit of gas escapes in a burp as your belly changes."
"pelvis"	"Your groin throbs suddenly. You buck your hips involuntarily as your shaft becomes suddenly erect. Behind it, a bare and ready set of lips swells into being, pouting with readiness."   	  "Your maleness is firm and excited, and you've gained a female sex as well, hot and wet."	"You cross your legs a little as something changes between them."
"left upper arm"	 "Your left upper arm becomes feminine in shape." 	  "Your left upper arm is that of a woman."	"A tremble passes through your arm."
"left forearm"	 "Your left forearm slims, changing into a daintier and more feminine form."   	 "Your left forearm is smooth skinned and feminine."	"Your hand suddenly clenches as your left arm changes."
"left hand"	"Your nails lengthen and thicken, becoming long hoof-talons at the ends of your long fingers."	  "Your left hand has long fingers with long black hoof-talons at the end."	"Your fingers clench as your hand changes."
"right upper arm"	 "Your right upper arm becomes feminine in shape." 	  "Your right upper arm is that of a woman."	"A tremble passes through your arm."
"right forearm"	 "Your right forearm slims, changing into a daintier and more feminine form."   	 "Your right forearm is smooth skinned and feminine."	"Your hand suddenly clenches as your right arm changes."
"right hand"	"Your nails lengthen and thicken, becoming long hoof-talons at the ends of your long fingers."	  "Your right hand has long fingers with long black hoof-talons at the end."	"Your fingers clench as your hand changes."
"left thigh"	"Your left thigh thickens and develops delicious female curves."  	 "Your left thigh adds to your delightful female curvature."	"You almost stumble as your thigh trembles."
"left shin"	"Your left shin becomes narrower towards the ankle dramatically as your leg takes on a more female shape."	  "Your lower left leg has become feminine and leads to a narrowed ankle."	"A tremble runs through your left leg."
"left foot"	 "Your toes begin to flow together with pins and needles sensation as you end up with two large hoof toes instead."  	 "Your left foot is that of a doe, with two large hoof toes."	"Your hoof splinter as something changes."
"right thigh"	"Your right thigh thickens and develops delicious female curves."  	 "Your right thigh adds to your delightful female curvature."	"You almost stumble as your thigh trembles."
"right shin"	"Your right shin becomes narrower towards the ankle dramatically as your leg takes on a more female shape."	  "Your lower right leg has become feminine and leads to a narrowed ankle."	"A tremble runs through your right leg."
"right foot"	 "Your toes begin to flow together with pins and needles sensation as you end up with two large hoof toes instead."  	 "Your right foot is that of a doe, with two large hoof toes."	"Your hoof splinter as something changes."
"rear" 	 "A short, upturned, and furry tail sprouts into being over an otherwise human ass."    	 "Your human butt has a deer's tail over it, brown furred on the top, soft cream along the underside."	"Your tail gives a spasm as things change."
"full" 	"deer"	"You are a human with deer like features, such as a tail and a long narrow snout and long hoof like nails at the ends of your fingers. Your large breasts bounce with your movements, as does your aroused member."	--

Table Furry Deer - Furry Deer shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your face draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Thick fur swells ticklishly over your new contours as a distracting pain builds at the top of your head. Grand new antler points swell and grow ornately. You give a pant, long tongue hanging a moment."	 "You have the antlered furry face of an enchanting stag doe. Your eyes burn with a smoldering lust."	"Your muzzled face changes"
"chest"	"Your chest forms into two large swells, capped by huge round, perky, nipples. Your changed erogenous zones tingle with the aftershocks of the transformation. Just as you feel recovered, a new wave of heat dazzles you as creamy off-white fur coats your chest."	"You have the chest of an attractive woman, with large full breasts covered in creamy fur and visible black teats. They yearn to be touched and caressed."	"A wave of numbness passes through your breasts as they change."
"gut"	"Your belly becomes trim and fit, with smooth flesh showing a moment before a carpet of fur and a giddy rush of new sensations covers it in cream color."	"Your belly is trim and fit, coated in cream colored fur."	"A bit of gas escapes in a burp as your belly changes."
"pelvis"	"Your groin throbs suddenly. You buck your hips involuntarily as your shaft becomes suddenly erect. Behind it, a bare and ready set of lips swells into being, pouting with readiness. You reach to scratch lightly at yourself, marveling at how sensitive the cream fur of your balls are."   	  "Your maleness is firm and excited, and you've gained a female sex as well, hot and wet, all covered in cream colored fur. Your cock is larger than you remember, ebony black, and achingly hard."	"You cross your legs a little as something changes between them."
"left upper arm"	 "Your left upper arm becomes feminine in shape as it is coated in soft brown fur." 	  "Your left upper arm is that of a woman covered in soft brown fur."	"A tremble passes through your arm."
"left forearm"	 "Your left forearm slims, changing into a daintier and more feminine form, brown fur sweeping across it in a soft carpet."   	 "Your left forearm is brown furred and feminine."	"Your hand suddenly clenches as your left arm changes."
"left hand"	"Your nails lengthen and thicken, becoming long hoof-talons at the ends of your long fingers."	  "Your left hand has long fingers, covered with dark black-brown fur, with long black hoof-talons at the end."	"Your fingers clench as your hand changes."
"right upper arm"	 "Your right upper arm becomes feminine in shape as it is coated in soft brown fur." 	  "Your right upper arm is that of a woman covered in soft brown fur."	"A tremble passes through your arm."
"right forearm"	 "Your right forearm slims, changing into a daintier and more feminine form, brown fur sweeping across it in a soft carpet."   	 "Your right forearm is brown furred and feminine."	"Your hand suddenly clenches as your right arm changes."
"right hand"	"Your nails lengthen and thicken, becoming long hoof-talons at the ends of your long fingers."	  "Your right hand has long fingers, covered with dark black-brown fur, with long black hoof-talons at the end."	"Your fingers clench as your hand changes."
"left thigh"	"Your left thigh thickens and develops delicious female curves, the inner thigh covered in a round are of cream fur as the rest is covered in brown carpet."  	 "Your left thigh adds to your delightful female curvature, with a splash of white towards the groin, the rest a deep brown."	"You almost stumble as your thigh trembles."
"left shin"	"Your left shin becomes narrower towards the ankle dramatically as your leg takes on a more female shape, the entire limb covered in brown fur."	  "Your lower left leg has become brown furred and feminine and leads to a narrowed ankle."	"A tremble runs through your left leg."
"left foot"	 "Your toes begin to flow together with pins and needles sensation as you end up with two large hoof toes instead."  	 "Your left foot is that of a doe, with two large hoof toes and brown fur everywhere else."	"Your hoof splinter as something changes."
"right thigh"	"Your right thigh thickens and develops delicious female curves, the inner thigh covered in a round are of cream fur as the rest is covered in brown carpet."  	 "Your right thigh adds to your delightful female curvature, with a splash of white towards the groin, the rest a deep brown."	"You almost stumble as your thigh trembles."
"right shin"	"Your right shin becomes narrower towards the ankle dramatically as your leg takes on a more female shape, the entire limb covered in brown fur."	  "Your lower right leg has become brown furred and feminine and leads to a narrowed ankle."	"A tremble runs through your right leg."
"right foot"	 "Your toes begin to flow together with pins and needles sensation as you end up with two large hoof toes instead."  	 "Your right foot is that of a doe, with two large hoof toes and brown fur everywhere else."	"Your hoof splinter as something changes."
"rear" 	 "A short, upturned, and furry tail sprouts into being over your deliciously round and spankable brown furred ass."    	 "Your butt has a deer's tail over it, brown furred on the top, soft cream along the underside. The rest of your ass is quite curvy and brown furred, hiding nothing."	"Your tail gives a spasm as things change."
"full" 	"furry deer"	"You have become a stag among does. With large proud antlers atop your furry form, your narrow ears flicker towards interesting things as you strut your hyper sexualized body for all to see. Your cream furred breasts wobble and bounce, large and firm with black teats adorning. Your human like cock has swollen half again as large as it started, dripping pre in ominous dollops as it protrudes from its cream colored sheath. Behind, your brown and cream tail is raised and wagging, revealing your furry snatch for those who dare to attempt to claim it. Your hoof-toes carry you smoothly around, in pursuit of new members for the herd, and keeping a watchful eye on those whom already obey your whims."	--

Section - Alpha Lion

Table 20 - Lion Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"New senses and aromas assault you as your face pulls forward into a snout and is covered with tawny fur. Round responsive ears flicker above as you look at the world  with new eyes."	"You have the head of a lion."	"You are momentarily blinded as your lion's head changes."
"chest"	"Tawny fur explodes over your chest, spreading rapidly across your front and back, slightly lighter on the front."	"You have the chest and back of a lion."	"You can feel your muscles shift in your lion's chest."
"gut"	"Your stomach becomes well defined and powerful before itching reveals a thick carpet of fur that spreads out over it, soft and tan in color."	"You have a powerful lion belly, covered in light tan fur."	"Your stomach loses much of it's definition as it shifts."
"pelvis"	"Fur creeps over your groin, engulfing your cock in a surge of pleasure as a large furry sheath wraps around it. Thoughts of breeding with one of the cat girls becomes stronger as your shaft projects strongly from your groin, your new leonine balls hanging heavily."	"You have a large, pink, leonine shaft that twitches eagerly to mate with the cat girls, or anything else really."	"Your large leonine shaft gives a final spurt of precum as it changes."
"left upper arm"	"Fur spreads along your upper left arm as your muscles swell with  power."	"Your upper left arm is stronger and covered with tan fur."	"You feel weaker as your left upper arm changes."
"left forearm"	"Your left forearm tingles as it becomes stronger and tan fur spreads out over it."	"Your left forearm is coated with tan fur and feels stronger."	"Fur falls from your feline forearm as it flexes."
"left hand"	"As the infection spreads over your left hand, a thick rubbery pad develops on your palm, and sharp claws eject from your fingertips, the whole thing covered in fur."	"Your left hand is a cross between  a human's and a lion's."	"Your lion like left hand changes."
"right upper arm"	"Fur spreads along your upper right arm as your muscles swell with power."	"Your upper right arm is stronger and covered with tan  fur."	"You feel weaker as your right upper arm changes."
"right forearm"	"Your right forearm tingles as it becomes stronger and tan fur spreads out  over it."	"Your right forearm is coated with tan fur and feels stronger."	"Fur falls from your feline forearm as it flexes."
"right hand"	"As the infection spreads over your right hand, a thick rubbery pad  develops on your palm, and sharp claws eject from your fingertips, the whole thing covered  in fur."	"Your right hand is a cross between a human's and a lion's."	"Your lion like right hand changes."
"left thigh"	"Your left leg bends as your thigh becomes well built and furry."	"Your left thigh is covered with tan fur and looks stronger."	"The tan fur on your left thigh sheds as it shifts."
"left shin"	"Your leg assumes a digitigrade stance as the fur spreads over your lower left leg."	"Your left shin looks feline."	"Your masculine feline left shin sheds as it shifts."
"left foot"	"The brown fur flows down over your left foot, leaving a paw in its place."	"You have a lion's paw for a left foot."	"Your large lion's left paw changes."
"right thigh"	"Your right leg bends as your thigh becomes well built and furry."	"Your right thigh is covered with tan fur and looks stronger."	"The tan fur on your right thigh sheds as it shifts."
"right shin"	"Your leg assumes a digitigrade stance as the fur spreads over your lower right leg."	"Your right shin looks feline."	"Your masculine feline right shin sheds as it shifts."
"right foot" 	"The brown fur flows down over your right foot, leaving a paw in its  place."	"You have a lion's paw for a right foot."	"Your large lion's right paw changes."
"rear" 	"Fur flows smoothly over your now well built ass."	"Your rear end is coated in tan fur."	"Your rear softens and sheds it's fur as it changes."
"full" 	"alpha lion"	"You are a male anthropomorphic lion with a huge erection and a deep desire to fuck  anything that moves, especially one of those cat girls."	--

Section - Feral Dragoness

Table Feral Dragoness - Feral Dragoness Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your face feels numb and thick as a thick plate of hardened leather forms a reptilian mask, imposing and grinning. Light blue scales surround eyes of sky blue, and a majestic crest grows above."	"You have the blue head of a crested dragoness."	"Your face plate cracks as it changes."
"chest"	"Large blue plates form a protective layer over your smoothing chest, locking into position with soft pinches of the altering flesh."	"You have thick plates along your smooth undercarriage, with rough many-scaled blue running along your sides and back."	"Your scales begin to flake as things change."
"gut"	"Soft but tough blue plates spread out across your belly protectively."	"You have the blue belly of a female dragon, well protected and tough."	"Several scales crack as things change."
"pelvis"	"Smooth plates roll over your hips towards your groin, where you rapidly become female, vulva visible when you look for them, but as well protected as any other part of your increasingly draconic form."	"You have the vulva of a blue dragon, surrounded by soft tough scales."	"Your groin goes warm as it changes."
"left upper arm"	"Darkish blue scales explode across your upper left arm as it becomes more able to support your body weight."	"Your upper left arm is covered in many rough blue scales and is much larger and stronger, able to support your weight."	"You feel weaker as your left upper arm changes."
"left forearm"	"Fine scales run down your lower left forearm in a carpet of blue-purple."	"Your left forearm is coated with fine purple scales, bulging with new power."	"Your left forearm begins shedding scales."
"left hand"	"You clench your left hand as your fingers become massive talons, easily capable of supporting a four legged form, though flexible enough to grasp things."	"You have a left talon of a massive raptor, covered in fine purple scales."	"Your left hand begins to shed scales."
"right upper arm"	"Darkish blue scales explode across your upper right arm as it becomes more able to support your body weight."	"Your upper right arm is covered in many rough blue scales and is much larger and stronger, able to support your weight."	"You feel weaker as your right upper arm changes."
"right forearm"	"Fine scales run down your lower right forearm in a carpet of blue-purple."	"Your right forearm is coated with fine purple scales, bulging with new power."	"Your right forearm begins shedding scales."
"right hand"	"You clench your right hand as your fingers become massive talons, easily capable of supporting a four legged form, though flexible enough to grasp things."	"You have a right talon of a massive raptor, covered in fine purple scales."	"Your right hand begins to shed scales."
"left thigh"	"Your left leg thickens with new muscles as rough purplish scales run across it."	"You have the left thigh of a blue dragon, thick and armored."	"Your leg's scales shatter as it changes."
"left shin"	"Your left leg grows a covering of fine purple scales as new power rushes into the limb."	"Your left shin is covered in purple fine scales."	"You feel a shudder in your left leg."
"left foot"	"Your foot expands with a shudder into a talon. The talon is covered in purple-blue scales and is powerful enough to support you on all fours."	"Your left foot is a large purple talon."	"Your talon begins to change."
"right thigh"	"Your right leg thickens with new muscles as rough purplish scales run across it."	"You have the right thigh of a blue dragon, thick and armored."	"Your leg's scales shatter as it changes."
"right shin"	"Your right leg grows a covering of fine purple scales as new power rushes into the limb."	"Your right shin is covered in purple fine scales."	"You feel a shudder in your right leg."
"right foot"	"Your foot expands with a shudder into a talon. The talon is covered in purple-blue scales and is powerful enough to support you on all fours."	"Your right foot is a large purple talon."	"Your talon begins to change."
"rear" 	"As rough scales spread over your ass, a strange delightful sensation erupts, along with a tail, swelling and growing massively behind you, terminating in a spade."	"You have the rump, and tail, of a purple dragon. It looks powerful enough to kill a man."	"Your new tail sheds off as things change."
"full" 	"feral dragoness"	"You are a blue shaded female dragon. Your scales are powerful and lustrous in tone. Your thick tail ends in a wicked spade. You walk on all fours, an apex predator the likes mankind could only dream of, though they are usually nightmares."	--

Section - Lioness

Table 21 - Lioness Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your head shrinks and your voice lightens as you gain the face of a small female feline. For some reason, the scents of the groins of all around you become enticing and you can feel arousal building." 	"You have the cute head of a small lioness."	"The arousing scents fade as your lioness head shifts."
"chest"	"Tawny fur explodes over your chest, spreading rapidly across your front  and back, slightly lighter on the front. Pleasure builds in your front as two B cup sized breasts swell into existence, nipples firm and visible through the fur."	"You have the chest and back of a small lioness with B cups, black nipples aroused and displayed." 	"Your black nipples are the last to go as your breasts change again."
"gut"	"The urge to giggle becomes powerful as your stomach shrinks and gains the softness of a small lioness."	"You have a soft belly of a lioness, it feels empty.." 	"You feel as if you have lost something important as your lioness belly changes."
"pelvis"	"You feel paralyzed for a moment as your loins are set on fire, fur encroaching as you grow a small tight pussy, already wet and engorged with blood, you are left panting with lust."	"You have a small eager pussy that is slick with arousal and swollen with need. It is covered in light creamy fur." 	"Your loins cool as your pussy changes."
"left upper arm"	"Your upper left arm shrinks, better to fit a small female feline."	"Your upper left arm is small and covered with tan fur."	"Your small left upper arm changes."
"left forearm"	"Your left forearm tingles as it becomes smaller and tan fur spreads out over it."	"Your left forearm is coated with tan fur and is smaller."	"Fur falls from your feline forearm as it flexes."
"left hand"	"As the infection spreads over your left hand, a thick rubbery pad develops on your palm, and sharp claws eject from your fingertips, the whole thing covered in fur."	"Your left hand is a cross between  a human's and a lion's."	"Your lion like left hand changes."
"right upper arm"	"Your upper right arm shrinks, better to fit a small female feline."	"Your upper right arm is small and covered with tan fur."	"Your small right upper arm changes."
"right forearm"	"Your right forearm tingles as it becomes smaller and tan fur spreads out over it."	"Your right forearm is coated with tan fur and is smaller."	"Fur falls from your feline forearm as it flexes."
"right hand"	"As the infection spreads over your right hand, a thick rubbery pad develops on your palm, and sharp claws eject from your fingertips, the whole thing covered  in fur."	"Your right hand is a cross between a human's and a lion's."	"Your lion like right hand changes."
"left thigh"	"Your left leg bends as your thigh becomes well built and furry."	"Your left thigh is covered with tan fur and looks stronger."	"The tan fur on your left thigh sheds as it shifts."
"left shin"	"Your leg assumes a digitigrade stance as the fur spreads over your lower  left leg."	"Your left shin looks feline."	"Your femininely feline left shin sheds as it shifts."
"left foot"	"The brown fur flows down over your left foot, leaving a comically large paw in its place."	"You have a lion's paw for a left foot."	"Your large lion's left paw changes."
"right thigh"	"Your right leg bends as your thigh becomes well built and furry."	"Your right thigh is covered with tan fur and looks stronger."	"The tan fur on your right thigh sheds as it shifts."
"right shin"	"Your leg assumes a digitigrade stance as the fur spreads over your lower  right leg."	"Your right shin looks feline."	"Your femininely feline right shin sheds as it shifts."
"right foot" 	"The brown fur flows down over your right foot, leaving a comically large paw in its  place."	"You have a lion's paw for a right foot."	"Your large lion's right paw changes."
"rear" 	"Your ass shrinks even as it becomes rounder. Pleasantly grabbable and covered in tan fur, you have a female lion's butt."	"Your rear end is coated in tan fur and wonderfully rounded."	"Your rear sheds it's fur as it changes."
"full" 	"lioness"	"You are a female lioness. You are only about four feet tall, though you have large B cups for your height and your exposed sex is swollen and dripping with need. Your nipples are visible and black, begging to be sucked on."	--

Section - Rabbit Herm

Table 22 - Rabbit Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Warm, almost erotic tingles echo through your skull as long twitching ears grow and your face draws forward into a snowy white muzzle. Scents become more acute and new, strange, thoughts begin to surface in your mind. Laying an egg seems like a good idea."	"You have the snow white head of a female rabbit with long, straight ears and a somewhat leering expression."	"Your long ears quiver and thoughts of eggs recede as your rabbit like head changes."
"chest"	"You grasp at your chest as warmth collects there. With each breath, your chest swells outwards, becoming A, B, C.. And reaching into the D territory as dusky pink nipples poke through the now thick soft coat of white fur that covers your breasts."	"You have large D sized breasts covered in white fur with erect pink nipples peeking free."	"Your huge rabbit breasts go cold as they transform."
"gut"	"Your belly is covered in soft white fur and you groan as it swells forward, gaining a bit of a curve as if you were pregnant of a few months."	"You have a round, white furred belly, as if you were four months pregnant."	"Your egg filled belly gives a lurch in a moment of nausea."
"pelvis"	"As the white fur spreads up around your hips, you are forced to pause a moment, hand flying to your crotch to grab at your cock as it begins to ache and tremble. Arousal builds rapidly as you begin to stroke along the member, becoming pinker and bigger with each stroke until it's about a foot long, your balls hanging like oranges below. With a loud squeal, you spray seed onto the ground in front of you."	"You have a large, pink, human like shaft in a white sheath. Your balls are the size of oranges, enclosed in thick white fur and hanging heavily."	"Your large pink shaft begins to change, giving a final powerful spurt of prefluids."
"left upper arm"	"Fur spreads along your upper left arm as your arm becomes sleek and pretty."	"You have the upper left arm of a female rabbit."	"Your rabbit like left arm changes."
"left forearm"	"Your left forearm tingles as it becomes softer and white fur spreads out over it."	"Your left forearm is is sleek and covered in white fur."	"Your rabbit like left forearm changes."
"left hand"	"The fingers in your left hand go numb a moment as the strange infection spreads to it. You clench your fingers involuntarily as fur spreads over them. They lengthen and become dainty, small black claws at the ends of each."	"Your left hand sports long dainty fingers and is covered in white fur."	"Your left hand, formerly a rabbit like paw, changes."
"right upper arm"	"Fur spreads along your upper right arm as your arm becomes sleek and pretty."	"You have the upper right arm of a female rabbit."	"Your rabbit like right arm changes."
"right forearm"	"Your left forearm tingles as it becomes softer and white fur spreads out  over it."	"Your right forearm is is sleek and covered in white fur."	"Your rabbit like right forearm changes."
"right hand"	"The fingers in your right hand go numb a moment as the strange infection spreads to it. You clench your fingers involuntarily as fur spreads over them. They lengthen and become dainty, small black claws at the ends of each."	"Your right hand sports long dainty fingers and is covered in white fur."	"Your right hand, formerly a rabbit like paw, changes."
"left thigh"	"Your left leg becomes obscured as your thigh is coated in white fur and becomes feminine."	"Your left thigh is covered with white fur and looks feminine."	"The white fur on your left thigh sheds abruptly."
"left shin"	"Your lower left leg is covered in soft white fur."	"Your left shin looks female, and is covered in white fur."	"The white fur on your left shin sheds abruptly."
"left foot"	"The infection moves to your left foot and you hastily remove any shoes you may be wearing, the foot swelling dramatically as it reforms into a rabbit's foot."	"You have a large rabbit's paw where your left foot used to be."	"Your large rabbit like left foot changes."
"right thigh"	"Your right leg becomes obscured as your thigh is coated in white fur and becomes feminine."	"Your right thigh is covered with white fur and looks feminine."	"Your right thigh's white fur sheds abruptly."
"right shin"	"Your lower right leg is covered in soft white fur."	"Your right shin looks female, and is covered in white fur."	"Your right shin's white fur sheds abruptly."
"right foot" 	"The infection moves to your right foot and you hastily remove any shoes you may be wearing, the foot swelling dramatically as it reforms into a rabbit's foot."	"You have a large rabbit's paw where your right foot used to be."	"Your large rabbit like right foot changes."
"rear" 	"Something tickles just above your ass before a short upturned rabbit's tail sprouts into place. Your ass swells outwards into a generous curve along with your hips, giving you a more appealing shape."	"You have a white rabbit's tail and a full womanly rump."	"Your teardrop like rabbit's tail shrivels up as you feel change in your rear."
"full" 	"rabbit"	"You are a hermaphroditic anthro rabbit with soft white fur. You have large D cup breasts with visible dusty pink nipples. You have wide hips and a foot long, human like shaft that is usually erect. Your female sex, though invisible from the front, is swollen and damp, especially when you are about to lay an egg. Your womb is full of eggs, making you look about four months pregnant."	--

Section - Fennec Taur Herm

Table fennec - Fennec Taur Shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Alternating waves of heat and cold pass through your body as your face draws out into a slender vulpine snout, sandy colored along the top and across your cheeks. A loud ringing echoes in your ears as they expand upwards into great fennec ears, also a soft beige shade, except for the white fur on the insides and underside of your snout. Your hair lengthens to your shoulders, but remains unchanged."	"You have the head of a fennec fox person, with large expressive ears, narrow snout, and the start of a white stripe along your under-snout."	"Your ears begin to shrink as something changes."
"chest"	"It feels as if air was being pushed into you as your chest swells with a thrill of pleasure, breasts growing rapidly to heavy D size. Just as it relents and you relax, noticing your soft beige and white fur, the sensation returns, worsened, as new breasts swell underneath until C sized, supporting the larger ones above."	"You have four breasts, D cupped on top, C on bottom, and a stripe of white fur along your chest's middle, sandy beige on the outside."	"With a sudden deflating sensation, your great breasts change."
"gut"	"Soft ticklish sensations tease at your belly, threatening a few giggles as you grow a thick carpet of beige and white fur across a slightly chubby form."	"Your slightly chubby belly is covered in soft fur, with a white stripe running down the center and sand fur on the sides."	"Your furry belly begins to shed rapidly."
"pelvis"	"White fur plunges down the center of your groin while sandy fur runs along your hips. Whatever loins you had before vanish, drawn back into your body in a disturbingly pleasant sensation, followed by a void. Soft patting reveals no genitals of any kind."	"You have a sexless crotch, with a white fur stripe, otherwise sandy brown furred."	"Your groin begins to tingle suddenly."
"left upper arm"	"Soft and fluffy brown fur spreads along your left arm as it becomes more feminine."	"Your left upper arm is covered in fennec fur, brown and fluffy."	"Your left arm changes."
"left forearm"	"Your arm gives a light shake as fur spreads down towards your wrist, brown and fluffy."	"Your left forearm is covered in soft brown fur."	"Brown fur begins to shed from your left arm."
"left hand"	"Moist heat runs along your left hand as fur erupts, brown in color. Despite this, the hand remains human looking."	"Your left hand is covered in soft brown fur."	"Your left hand begins to change."
"right upper arm"	"Soft and fluffy brown fur spreads along your right arm as it becomes more feminine."	"Your right upper arm is covered in fennec fur, brown and fluffy."	"Your right arm changes."
"right forearm"	"Your arm gives a light shake as fur spreads down towards your wrist, brown and fluffy."	"Your right forearm is covered in soft brown fur."	"Brown fur begins to shed from your right arm."
"right hand"	"Moist heat runs along your right hand as fur erupts, brown in color. Despite this, the hand remains human looking."	"Your right hand is covered in soft brown fur."	"Your right hand begins to change."
"left thigh"	"Your left leg becomes obscured as your thigh is coated in brown fur and becomes feminine."	"Your left thigh is covered with brown fur and looks feminine."	"The brown fur on your left thigh sheds abruptly."
"left shin"	"Your leg shifts to support a digitigrade stance as brown fur covers it."	"Your left shin looks female, bestial, and is covered in brown fur."	"The brown fur on your left shin sheds abruptly."
"left foot"	"Your left foot swells into a large, brown furred, black clawed, paw."	"You have a fox paw for a left foot."	"Your foot itches as it changes."
"right thigh"	"Your right leg becomes obscured as your thigh is coated in brown fur and becomes feminine."	"Your right thigh is covered with brown fur and looks feminine."	"The brown fur on your right thigh sheds abruptly."
"right shin"	"Your leg shifts to support a digitigrade stance as brown fur covers it."	"Your right shin looks female, bestial, and is covered in brown fur."	"The brown fur on your right shin sheds abruptly."
"right foot"	"Your right foot swells into a large, brown furred, black clawed, paw."	"You have a fox paw for a right foot."	"Your foot itches as it changes."
"rear" 	"Your rump pulls backwards strangely, leaving you in an awkward position without legs to support this new mass. It is covered with brown fur on top and a strip along your bottom, but nothing at the end. Odd."	"Your brown furred rump seems to lead into something."	"Your rump tingles as it changes."
"full" 	"fennec"	"You are a hermaphroditic fennec taur. You have soft brown fur across most of your four legged form, with a white stripe that runs from under your snout, between your four large breasts, down to your undercarriage to terminate at your rear groin, where your sheath and pouting nethers are nestled in the lighter colored fur. Your tail, large and bushy, also terminates in the lighter shade. Your large pawfeet have black claws that help your traction as you wander the city."	--

Section - Otters

Table Otter - Otter Shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"A fierce itch runs up along your cheeks. Scratching produces sharp spikes of unexpected pleasure as your face draws forward and sleek ears pop into being, your skull forming into a streamlined and brown pelted head of an otter. Soft urges of swimming nag at your thoughts."	"Your expression has been submerged under the amused expression of a brown furred otter."	"A soft cramping is felt as your otterish head is stripped from you. Everything feels so dry all of a sudden."
"chest"	"Your chest experiences a rushing itching sensation. You grasp at it just in time for two soft swells to push out against your questing fingers. Your chest grows a thick pelt of brown fur. You gain the sleek swimmer's torso of an otter, slinky and athletic."	"You have the athletic swimming chest of an otter. You have B cup sized breasts that fit your streamlined upper torso."	"Your sleek otter's chest begins to shed fur rapidly as it changes."
"gut"	"Previous fat melts away as you gain the powerful swimming abdominals of an otter, covered in a thick layer of water proofed brown fur."	"You have a brown furred belly of an otter, sleek and powerful."	"You momentarily lose definition as your swimmer's belly fades away."
"pelvis"	"The brown fur begins to sweep across your hips and down into your groin in a surge of unasked for pleasure. You groan with delight as changes rock your sensitive regions. Curious fingers begin to rub across your newly formed vulva, exploring the furry cleft as your body quakes. You bring a hand to your cock as it grows longer and firmer, a sheath forming at the base as your swelling balls pump it full of seed to spray in a wide arc in front of you."	"You have a brown furred vagina of an otter, pouting and ready. Your cock has never been so hard, extending from a brown furred sheath and achingly ready."	"You give a sudden squeal as your otter loins shift and warp."
"left upper arm"	"Thick brown fur spreads smoothly across your left upper arm"	"You have the upper left arm of an otter."	"Your otter like left arm changes."
"left forearm"	"Your arm feels strange as new found power flows into it along with a layer of brown fur."	"Your left forearm is covered in brown fur and feels powerful."	"Your otter like left forearm changes."
"left hand"	"You get a sudden urge to clench your left hand, muscles locking hard and painfully as new claws dig into the flesh of your palm. Pads form, defraying the pain somewhat as your fingers flow together in light webbing, and thick brown fur sweeps across the hand."	"Your left hand is more suited to an otter than a human, but seems prehensile enough."	"A wet splitting sound is heard as the webbing between your fingers break."
"right upper arm"	"Thick brown fur spreads smoothly across your right upper arm"	"You have the upper right arm of an otter."	"Your otter like right arm changes."
"right forearm"	"Your arm feels strange as new found power flows into it along with a layer of brown fur."	"Your right forearm is covered in brown fur and feels powerful."	"Your otter like right forearm changes."
"right hand"	"You get a sudden urge to clench your right hand, muscles locking hard and painfully as new claws dig into the flesh of your palm. Pads form, defraying the pain somewhat as your fingers flow together in light webbing, and thick brown fur sweeps across the hand."	"Your right hand is more suited to an otter than a human, but seems prehensile enough."	"A wet splitting sound is heard as the webbing between your fingers break."
"left thigh"	"Fur coats your left thigh, brown and thick, as tingles of itchiness has you scratching softly at the changing area."	"Your left thigh is covered in thick brown fur."	"Your left thigh shudders as it begins to change."
"left shin"	"Brown fur sweeps down over your lower left leg, bending as it goes, looking otterish."	"Your lower left leg is covered in brown fur and looks fit for an animal."	"The brown fur falls free of your left lower leg as it changes."
"left foot"	"Your toes throb with a strange sensation as they clench together, coming apart only after brown fur has swept over them and webbing spread between them. New claws dig into the ground lightly."	"You have a webbed brown furred left foot with small black claws."	"There is a feeling of released tension as the webbing of your foot breaks and it changes."
"right thigh"	"Fur coats your right thigh, brown and thick, as tingles of itchiness has you scratching softly at the changing area."	"Your right thigh is covered in thick brown fur."	"Your right thigh shudders as it begins to change."
"right shin"	"Brown fur sweeps down over your lower right leg, bending as it goes, looking otterish."	"Your lower right leg is covered in brown fur and looks fit for an animal."	"The brown fur falls free of your right lower leg as it changes."
"right foot"	"Your toes throb with a strange sensation as they clench together, coming apart only after brown fur has swept over them and webbing spread between them. New claws dig into the ground lightly."	"You have a webbed brown furred right foot with small black claws."	"There is a feeling of released tension as the webbing of your foot breaks and it changes."
"rear" 	"As fur rushes over your ass, a thick otter's tail blossoms into place, like a rudder behind you, sinuous and powerful. You can't help but sway your new limb testingly."	"You have a long otter's tail behind you."	"Your thick otter's tail absorbs back into your rump as it changes."
"full" 	"otter"	"You are a short and lithe otter, with a swimmer's body and sleek, water proofed brown fur. Your B cupped breasts bounce only slightly with your movements, held firmly to keep your form sleek in the water. Your new otter cock pokes free of its sheath, eager to find a new home in some other willing, or perhaps not, creature. Behind you, a thick rudder of a tail sways to and fro as playful energy echoes through you."	--

Section - Goblin

Table Goblin - Goblin Shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your face grows thick and rubbery as it begins to reshape. Your ears grow long and pointed and your teeth sharpen. Strange thoughts of mechanisms dance in your head."	"You have the head of a goblin, with sloppy mussed hair and a beady stare from behind thick aviator goggles. Your big green nose is quite handsome as well."	--
"chest"	"Your flesh twitches softly as your chest becomes leathery and green.[if the destined femininity of the player is 1] Your breath catches as you grow two fair sized breasts.[otherwise] Your chest is well muscled despite diminishing in size.[end if] You've lost about half your height, shrinking down."	"You have the short torso of a goblin, with tough green flesh.[if the destined femininity of the player is 1] You have B cup sized breasts that push out the chainmail you never remembered putting on.[end if]"	--
"gut"	"Your body continues shrinking as your gut pulls in taught, turning off green in shade."	"You have the slim green belly of a goblin, covered in chainmail. When did you get that?"	--
"pelvis"	"A most invasive sensation has you wriggling a bit in place as your groin warps.[if the destined femininity of the player is 1] You grow a small green lipped vagina, matching the green of the rest of you.[end if][if the destined masculinity of the player is 1] Your 'little friend' becomes green, but otherwise looks much the same.[end if]"	"[if the destined femininity of the player is 1]You have a green skinned vagina of a goblin.[end if][if the destined masculinity of the player is 1] Your shaft has become green, but looks much the same otherwise.[end if] All of this is concealed with chainmail/leather pants."	--
"left upper arm"	"Green hide spreads over your upper left arm as chainmail flows down along it."	"Your upper left arm is long for your torso, covered in green skin and chainmail."	--
"left forearm"	"Your lower forearm tints green as the end of a chainmail sleeve appears and flows up towards your elbow."	"Your left forearm has green skin and the end of a chainmail sleeve."	--
"left hand"	"My, what large hands you suddenly gain, at least the left one, not shrinking at all with the rest of you, with agile green fingers, just right for machinery."	"Your relatively large left hand is green and agile, ready to reach inside some gears and get to work."	--
"right upper arm"	"Green hide spreads over your upper right arm as chainmail flows down along it."	"Your upper right arm is long for your torso, covered in green skin and chainmail."	--
"right forearm"	"Your lower forearm tints green as the end of a chainmail sleeve appears and flows up towards your elbow."	"Your right forearm has green skin and the end of a chainmail sleeve."	--
"right hand"	"My, what large hands you suddenly gain, at least the right one, not shrinking at all with the rest of you, with agile green fingers, just right for machinery."	"Your relatively large right hand is green and agile, ready to reach inside some gears and get to work."	--
"left thigh"	"Your left leg shortens dramatically."	"Your left leg has become much shorter. You seem to be wearing some chainmail pants now?"	--
"left shin"	"The skin of your left left turns an off green shade."	"Your left leg is green and a little knobby."	--
"left foot"	"Your foot turns green, but doesn't shrink much, leaving it relatively large compared to the rest of your body."	"Your left foot is large and green, with only [a random number from 2 to 4] warts visible!"	--
"right thigh"	"Your right leg shortens dramatically."	"Your right leg has become much shorter. You seem to be wearing some chainmail pants now?"	--
"right shin"	"The skin of your right right turns an off green shade."	"Your right leg is green and a little knobby."	--
"right foot"	"Your foot turns green, but doesn't shrink much, leaving it relatively large compared to the rest of your body."	"Your right foot is large and green, with only [a random number from 2 to 4] warts visible!"	--
"rear" 	"The back of some chainmail pants flows over your ass as it turns green. That felt odd."	"Your green butt is covered with suitable chainmail."	--
"full" 	"goblin"	"You are a goblin, about three feet tall with a beady stare, big head, hands, and feet, and green skin. You are wearing a chainmail shirt and pants, with some crest on the chest that you don't recognize off hand. [if The destined femininity of the player is 1]Your B cupped breasts press the chest of your new shirt out.[end if][if the destined masculinity of the player is 1]Your cock, though not visible, is green but otherwise unchanged.[end if]."	--


Section - Male Mall Rat

Table 23 - Male Mall Rat Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"Your ears become large, round, and on top of your head. Your face draws out into a pointed snout and fine whiskers sprout. Thoughts of shopping and hanging around the mall seem attractive as black fur covers your head."     	"You have the head of a rat with black fur."	"The mall suddenly seems less appealing as your head changes"
"chest"	"Black fur covers the front and back of your chest in a ticklish explosion of growth.." 	"You have the chest and back of a black rat morph."	"Black fur falls as your chest loses it's rat like appearance"
"gut"	"Your stomach becomes lithe and trim as you hunch forward just slightly, your midsection becoming coated with thick black fur."  	"You have the belly of a black rat and walk with just a bit of a hunch.."	"You seem to stand straighter as your bully changes"
"pelvis"	"You shiver as strange sensations tingle in your cock, now covered in an animal like sheath. Your hips are coated with black thick fur. Maybe a rat girl would like to take you on a date."	"You have a rat's cock, mottled pink, nestled in a sheath. It hasn't really grown, just changed since when you were a human. Your hips and balls are covered in thick black fur."	"Your rat cock shifts away.  Shame you couldn't find a rat girl first"
"left upper arm"	"Your upper left arm becomes thinner as it is coated in black fur, dexterous."     	"Your upper left arm is sleek and covered with black fur."	"Your rat like left arm shifts"
"left forearm"	"Your left forearm is covered in black fur up to the wrists and back to the elbow, now longer as well." 	"Your left forearm is longer and covered in black fur."	"Your left forearm seems to shrink as it starts to change"
"left hand"	"As the infection spreads over your left hand, Your fingers become longer and your entire hand becomes a light pink shade, rat paws, though still quite dexterous."  	"Your left hand is pink with long fingers and claws, looks like a rat's paw crossed with a hand."	"Your left hand feels clumsy as it changes"
"right upper arm"	"Your upper right arm becomes thinner as it is coated in black fur, dexterous." 	 "Your upper right arm is sleek and covered with black fur."	"Your rat like right arm shifts"
"right forearm"	"Your right forearm is covered in black fur up to the wrists and back to the elbow, now longer as well." 	 "Your right forearm is longer and covered in black fur."	"Your right forearm seems to shrink as it starts to change"
"right hand"	"As the infection spreads over your right hand, Your fingers become longer and your entire hand becomes a light pink shade, rat paws, though still quite dexterous."	"Your right hand is pink with long fingers and claws, looks like a rat's paw crossed with a hand."	"Your right hand feels clumsy as it changes"
"left thigh"	"Your left leg becomes full of a sleek sort of power as it is covered in black fur." 	"Your have the left thigh of an anthro rat with black fur."	"Your rat like left thigh shifts"
"left shin"	"Your leg assumes a digitigrade stance as the black fur spreads over your lower left leg."	 "Your left shin  looks like it is made for standing on toes, and is covered with soft black fur."	"The bones in your lower left leg creak as they shift"
"left foot"	"No fur infects your left foot, instead your skin becomes a soft pink shade and you grow large claws, fit for a rat." 	 "You have a pink rat paw for a left foot."	"Your claws fall off as your left foot changes"
"right thigh"	"Your right leg becomes full of a sleek sort of power as it is covered in black fur." 	"Your have the right thigh of an anthro rat with black fur."	"Your rat like right thigh shifts"
"right shin"	"Your leg assumes a digitigrade stance as the black fur spreads over your lower right leg."  	"Your right shin  looks like it is made for standing on toes, and is covered with soft black fur."	"The bones in your lower right leg creak as they shift"
"right foot" 	"No fur infects your right foot, instead your skin becomes a soft pink shade and you grow large claws, fit for a rat." 	 "You have a pink rat paw for a right foot."	"Your claws fall off as your right foot changes"
"rear" 	"Fur flows smoothly over your now tight athletic rump."  	"Your rear much more tone and is covered in black fur."	"You can feel your rear flow as it reforms"
"full" 	"mall rat"	 "You are a male mall rat. Any clothing you were wearing before still fit somehow, hanging a bit from your now much more lean, longer body. You have deep black fur everywhere but your pink naked tail and paws. You have long fine whiskers that twitch on their own and huge round ears on top of your head. You can think of nothing finer than lazing around the mall all day long."	--

Section - Latex Wolf

Table 54 - Latex Wolf Shifts			
Segment	Shift Text	Desc Text	Unshift Text
"head"	"You feel the black latex moving up your neck reforming everything underneath it. You try to scream but it comes out as a howl, your vocal cords being changed into that of a wolf. The black latex continues over your head like a hood, taking your ears away and leaving pointed ones atop your head. You shake your head trying to toss the latex off, but you realize it is useless as you feel it continue forward. You see the latex come into your vision as it covers your face. It molds your nose and mouth together pulling them out into a muzzle. You feel the new fangs of your muzzle with your tongue and howl again, mourning the loss of your head."	"You have a large-muzzled wolfish head, made of black latex."	"Your black latex wolf head shifts"
"chest"	"A sea of black latex moves over your back and chest, molding it into that of a canine."	"Your latex-coated chest is no longer your own, now looking just like a wolfish."	"The black latex coating your chest stretches as it changes"
"gut"	"You can feel as the black latex covers your gut, changing the structure of your body. You fall to all fours and find yourself unable to stand up."	"Your black latex-coated gut forces you to walk on all fours and you find yourself more comfortable this way."	"You feel as if you could stand as your gut reforms"
"pelvis"	"You watch as the latex covers your shaft and feel as it seeps into it, reshaping your manhood into a very canine sheath."	"Your male genitalia has been replaced by that of a latex wolfish."	"Your sheath quivers as it changes again"
"left upper arm"	"You watch as the black latex forms your upper arm to look just like your hind leg."	"Your upper left foreleg is coated in black latex."	"Your left upper fore leg changes"
"left forearm"	"Your left forearm slims as the latex covers it, morphing into replica of your hind leg."	"Your left foreleg is thin and covered in black latex."	"Your wolf like left forearm shifts"
"left hand"	"The black latex covers your left hand, pulling your fingers inward making it become almost useless. You see it become fully paw-like as the short claws sprout from what is left of your fingers."	"Your left fore paw is now that of a latex wolf."	"Your claws retract as your left fore paw changes"
"right upper arm"	"You watch as the black latex forms your upper arm to look just like your hind leg." 	"Your upper right foreleg is coated in black latex."	"Your right upper fore leg changes"
"right forearm"	"Your right forearm slims as the latex covers it, morphing into replica of your hind leg."	"Your right foreleg is thin and covered in black latex."	"Your wolf like right forearm shifts"
"right hand"	"The black latex covers your right hand, pulling your fingers inward making it become almost useless. You see it become fully paw-like as the short claws sprout from what is left of your fingers."	"Your right fore paw is now that of a latex wolf."	"Your claws retract as your right fore paw changes"
"left thigh"	"You watch as the black latex spreads over your left thigh."	"Your left hind thigh is coated in black latex."	"Latex peels as your left left hind leg shifts"
"left shin"	"You watch as your joints are reshaped by the black latex spreading over your left shin, pulling and pushing it into the shape of a canine leg." 	"Your left hind leg is that of a black latex wolf."	"The black latex recedes as your left hind leg changes"
"left foot"	"The latex paw you put on your left foot looks very realistic."	"Your left hind paw looks like it would belong on a wolf were it not made of latex."	"Your black skin flows as your left hind paw reforms"
"right thigh"	"You watch as the black latex spreads over your right thigh."	"Your right hind thigh is coated in black latex."	"Latex peels as your left right hind leg shifts"
"right shin"	"You watch as your joints are reshaped by the black latex spreading over your right shin, pulling and pushing it into the shape of a canine leg."	"Your right hind leg is that of a black latex wolf."	"The black latex recedes as your right hind leg changes"
"right foot" 	"The latex paw you put on your right foot looks very realistic."	"Your right hind paw looks like it would belong on a wolf were it not made of latex."	"Your black skin flows as your right hind paw reforms"
"rear" 	"You feel the black latex shift over your ass, squeezing it until it's shaped like that of a wolf."	"You can feel that your rear end is now latex-coated."	"Your latex covered rear squeaks as it changes"
"full" 	"latex wolf"	"You look past your muzzle at your body and see that you are a male wolf made of black latex. You would be no different than any you have seen on nature shows if not for the fact that you are made of latex."	--

Section - Bee Girl

Table bee - Bee Girl
Segment	Shift Text	Desc Text
"head"	"Your head changes color and becomes yellow, the skin now has a different feel. Your hair lengthens and antennae appear from your forehead, to finish your face extends and your eyes become insect-like. "	"You have an anthropomorphic bee's head."
"chest"	"Your flat chest tingles in in way that makes you feel extreme pleasure, you notice that's because you've suddenly grown breasts, and you entire chest is armored and coated in yellow to black stripes."	"You have a feminine anthropomorphic bee's chest."
"gut"	"Your gut is completely coated in bee stripped insect skin, giving it an armored look. Your gut has also become a lot more slender."	"You have a very slender and bee like stomach. "
"pelvis"	"Your genitals are absorbed inside your body in a painless way. In its place you notice its been replaced by that of a woman's."	"You no longer have your male genitals."
"left upper arm"	"A coating of white fluff has grown above your changing left upper arm."	"Your left upper arm is covered in Fluff."
"left forearm"	"Your left forearm is completely dark and smooth, your hard and insect armored, you notice they are also slender."	"You have black slender anthropomorphic bee's left forearm."
"left hand"	"Your left hand becomes black, smooth and delicate, their fingertips are pointed. "	"You have a delicate anthropomorphic bee's left hand"
"right upper arm"	"A coating of white fluff has grown above your changing right upper arm."	"Your right upper arm is covered in Fluff."
"right forearm"	"Your right forearm is completely dark and smooth, your hard and insect armored, you notice they are also slender."	"You have black slender anthromorphic bee's right forearm"
"right hand"	"Your right hand becomes black, smooth and delicate their fingertips are pointed. "	"You have a delicate anthropomorphic bee's right hand."
"left thigh"	"The shape of your left thigh becomes much more attractive, while covering itself in bee's armor."	"You have a beautiful Anthropomorphic bee's left thigh."
"left shin"	"Your left shin reshapes itself and gives your legs a more slender and feminine look."	"You have an anthropomorphic bee's left shin."
"left foot"	"You're left foot feels like it is going trough drastic changes, it forces you to look down to see it's now black with three pointed toes."	"You have an anthropomorphic bee's left foot."
"right thigh"	"The shape of your right thigh becomes much more attractive, while covering itself in bee's armor."	"You have a beautiful Anthropomorphic bee's right thigh."
"right shin"	"Your right shin reshapes itself and gives your legs a more slender and feminine look."	"You have an anthropomorphic bee's right shin."
"right foot"	"You're right foot feels like it is going trough drastic changes, it forces you to look down to see it's now black with three pointed toes."	"You have an anthropomorphic bee's right foot."
"rear"	"Your rear is given a nice round shape, covering itself in a bee's insectoid armor while remaining smooth"	"You have an attractive insect rear."
"full"	"bee"	"You are a gorgeous bee girl."



Section - Herm Squirrel

Table 55 - Herm Squirrel Shifts
Segment	Shift Text	Desc Text	Unshift Text
"head"	"You feel your jaws pinching together while your nose pushes out, twitching energetically. Your front teeth grow jutted and bucked, while your tongue grows long. Your ears shift to the top of your head and become tufted, and thoughts of nuts and sex fill your mind. Fluffy brown-red fur covers your face, and an irresistible urge to chitter builds in your throat.  Your throat feels warm, empty, the urge to suck and drink also building up quickly."	"You have a cute feminine squirrel's face with buck teeth and a cocksucker's expression."	"Your fuzzy squirrel's face deforms."
"chest"	"Pressure builds in your chest as lush fur rushes over it, covering it quickly. Your muscles harden but the pressure keeps building, soon shoving firmly forwards in heavy, sudden surges of growth. Your nipples swell thick and your areola expands rapidly to match your blossoming, heaving breasts. They gain size quickly, plumping from A to B, surging from B to C, swelling from C to D, finally slowing down to full DD-cup breasts. They bounce lushly with every movement you make."	"Your heavy, warm chest is now a huge pair of squirrel breasts. Looking at them makes your nipple stiffen."	"The red fur on your chest thins as it changes shape and size"
"gut"	"You feel soft fur cover your belly and a new feeling surges inside of you. A trim feminine belly replaces your stomach, but a hot pleasure drills from inside of it to behind your balls, blossoming into a pussy and womb. Your mound fattens with arousal and your womb swells with life - you're pregnant already?! The curve of your belly gently pushes forward until you look several months pregnant, warmth suffusing your stomach."	"Your former tummy is now that of a lush fertile squirrel who's clearly pregnant and motherly."	"The life in you demands to be born as your belly changes again, so as your feminine nature vanishes your baby grows rapidly inside of you, pushing down your shrinking tunnel until it bursts free of your pussy. Gaining size rapidly, the herm squirrel child takes off in a scurry, vanishing around a corner to never be seen again."
"pelvis"	"Pressure builds in your groin as your cock expands rapidly. A furry sheath wraps around it and your flesh nevertheless surges forth from it, bigger with every throb, drooling thick globs of cum. A wrenching pleasure as your hips widen, your balls bulge and grow heavy to match your now massive erect pink cock, your sheath partly hidden by your soft belly."	"Your male genitalia has been replaced by that of a hyper herm squirrel's."	"Your sheath quivers as it changes again"
"left upper arm"	"Soft fur flows down your upper left arm, squeezing the muscle into a new and sexy shape with an effeminate flair."	"Your upper left arm is covered by soft squirrel fur."	"Your left upper arm tingles as it changes."
"left forearm"	"Your muscles reshape as silky fur courses down your left forearm, molding it into a feminine arm."	"Your left forearm changes shape and size as squirrel fur coats it."	"Your squirrel-girl like left forearm shifts"
"left hand"	"Black pawpads bulge at the ends of your fingertips, silky fur covering your left hand as you look at them. Small black claws poke from your fingertips and a pleasure spasms through your hand as it swells, squirrel-like, barely functional as a normal hand now."	"Your left hand is now a thick, slightly feminine female squirrelgirl's."	"Your claws retract as your left paw changes"
"right upper arm"	"Soft fur flows down your upper right arm, squeezing the muscle into a new and sexy shape with an effeminate flair." 	"Your upper right arm is covered by soft squirrel fur."	"Your right upper arm tingles as it changes."
"right forearm"	"Your muscles reshape as silky fur courses down your right forearm, molding it into a feminine arm."	"Your right forearm changes shape and size as squirrel fur coats it."	"Your squirrel-girl like right forearm shifts"
"right hand"	"Black pawpads bulge at the ends of your fingertips, silky fur covering your right hand as you look at them. Small black claws poke from your fingertips and a pleasure spasms through your hand as it swells, squirrel-like, barely functional as a normal hand now."	"Your left hand is now a thick, slightly feminine female squirrelgirl's."	"Your claws retract as your right paw changes"
"left thigh"	"Your left thigh gains a feminine flair as the fur flows over it, becoming far more shapely."	"Your brown fur-coated left thigh is very shapely and feminine."	"Your left thigh looses it's squirrel like nature"
"left shin"	"Your left shin and calf become thinner and far more attractive as the brown fur squeezes them into shape."	"Your brown left shin would be extremely attractive on someone else."	"Your left shin sheds as it changes"
"left foot"	"The thick brown fur spreads over your left foot, leaving a beautifully shaped replacement."	"Your left foot looks like it belongs on a furry woman, not on a man."	"Your left foot looses it's feminine fur as it shifts"
"right thigh"	"Your right thigh gains a feminine flair as the fur flows over it, becoming far more shapely."	"Your brown fur-coated right thigh is very shapely and feminine."	"Your right thigh looses it's squirrel like nature"
"right shin"	"Your right shin and calf become thinner and far more attractive as the brown fur squeezes them into shape."	"Your brown right shin would be extremely attractive on someone else."	"Your right shin sheds as it changes"
"right foot"	"The thick brown fur spreads over your right foot, leaving a beautifully shaped replacement."	"Your right foot looks like it belongs on a furry woman, not on a man."	"Your right foot looses it's feminine fur as it shifts"
"rear"	"The brown-red fur shifts over your ass, squeezing it until it's tight and sexy."	"Your furry rear is very tight and shapely."	"Your rear shifts, leaving a pile of brown-red fur behind"
"full"	"squirrel"	"You have become a sexual beauty, tall as a person but with the features of a squirrel. You sport a massive pair of heaving breasts with thick nipples, and an erect cock dripping with hot seed fueled by fluffy, overloaded balls. Your soft belly is rounded in pregnancy, as you watch your belly swells a little bit larger...."	--

Book 2 - Body Defined

[definitions of the body, it's parts, and similar things.]

A body part is a kind of thing.  A body part has some indexed text called desc.  The desc of a body part is usually "UNDESCRIBED BODY PART".  A body part has some text called tag.  The tag of a body part is usually "UNTAGGED BODY PART". A body part is either soft or hard. A body part is usually hard.

A body part has some text  called shift.  The shift of a body part is usually "SHIFTLESS BODY PART".  A body part has some text called body part origin.  The body part origin of a body part is usually "ORIGINLESS BODY PART".

The head is a body part.  The tag of the head is "head".

The chest is a body part.  The tag of the chest is "chest".
The gut is a body part.  The tag of the gut is "gut".
The pelvis is a body part.  The tag of the pelvis is "pelvis".

The rear is a body part.  The tag of the rear is "rear".

The left upper arm is a body part.  The tag of the left upper arm is "left upper arm".
The left forearm is a body part.  The tag of the left forearm is "left forearm".
The left hand is a body part.  The tag of the left hand is "left hand".

The right upper arm is a body part.  The tag of the right upper arm is "right upper arm".
The right forearm is a body part.  The tag of the right forearm is "right forearm".
The right hand is a body part.  The tag of the right hand is "right hand".

The left shin is a body part.  The tag of the left shin is "left shin".
The left thigh is a body part.  The tag of the left thigh is "left thigh".
The left foot is a body part.  The tag of the left foot is "left foot".

The right shin is a body part.  The tag of the right shin is "right shin".
The right thigh is a body part.  The tag of the right thigh is "right thigh".
The right foot is a body part.  The tag of the right foot is "right foot".

The head is a part of the player.

The chest is a part of the head.
The gut is a part of the chest.
The pelvis is a part of the gut.

The rear is a part of the pelvis.

The right upper arm is a part of the chest.
The right forearm is a part of the right upper arm.
The right hand is a part of the right forearm.

The left upper arm is a part of the chest.
The left forearm is a part of the left upper arm.
The left hand is a part of the left forearm.

The right thigh is a part of the pelvis.
The right shin is a part of the right thigh.
The right foot is a part of the right shin.

The left thigh is a part of the pelvis.
The left shin is a part of the left thigh.
The left foot is a part of the left shin.

[Behavior.Behavior start]

Book 3 - Behavior

[logic used to get things done]


ychecker is an infection model that varies.
The Targetx is a thing variable.
playerfemale is a number that varies. playerfemale is usually 0.
xcheckerx is a number that varies.
XcheckerX is 0.

definition: A person(called thingie) is secure:
if thingie is immobile, yes;
no;

definition: A thing(called thingie) is friendly:
	if the thingie is the player:
		let u be the list of on-stage not friendly body parts;
		if u is empty:
			yes;
		no;
	if thingie is a person:
		if thingie is not spotted, yes;
	if ctype of thingie is not human and ctype of thingie is fearful and ychecker is not fearful, yes;
	if tf table of thingie is not tf table of ctype of thingie and ychecker is not jealous, no;
	if the tf table of thingie is tf table of ychecker, yes;
	if the tf table of thingie is the tf table of ctype of thingie and ychecker is not jealous, yes;
 
definition: A thing(called thingie) is terrifying:
	if ychecker is not fearful, no;
	if ychecker is pc, no;
	if thingie is stuck to a rope, no;
	if thingie is pacified, no;
	if thingie is not spotted, no;
	if the thingie is the player:
		if head is terrifying, yes;
		no;
	if tf table of thingie is not tf table of ctype of thingie and ychecker is not jealous, no;
	if the tf table of thingie is tf table of ychecker, no;
	let y be ychecker;
	now ychecker is ctype of thingie;
	let u be the number of same npc persons in the location of thingie;
	now ychecker is y;
	if ychecker is not man and u is greater than 1, no;
	if the tf table of thingie is the tf table of ctype of thingie and ychecker is not jealous, no;
	if the tf table of ctype of thingie is not the tf table of ychecker and ychecker is not fearful, no;
	if ctype of thingie is man, no;
	if ychecker is fearful and ctype of thingie is fearful and ychecker is not man, no;
	yes;
 
definition: A thing(called thingie) is same:
	if thingie is the player:
		let u be a random visible body part;
		if tf table of u is tf table of ychecker:
			yes;
		no;
	if ctype of thingie is human, no;
	if the tf table of thingie is tf table of ychecker, yes;
 
To verify (subject - a thing):
	repeat with N running through body parts that are touchable:
		if the TF table of N is not the TF table of the subject and the subject is not the player:
			now xcheckerx is 1;
		otherwise:
			if the TF table of N is not the TF table of the head and the subject is the player:
				if the N is touchable:
					now xcheckerx is 1;

To check along (subject - a thing):
	repeat with N running through body parts that are touchable:
		if the desc of N matches the text "UNDESCRIBED BODY PART":
			do nothing;
		otherwise:
			if N is not secret:
				try the player examining the n;
			otherwise:
				say "The changes of [the N] are concealed by clothing.[line break]";
			now xcheckerx is 1;
	say "Wearing: [list of worn clothing] [line break]";
	if pregnant of the player is not 0:
		say "You are swollen with pregnancy.";
	

instead of examining a birthing pouch:
	say "[description of birthing pouch]";
	stop the action;

Understand the command "end" as something new.
 ending is an action applying to nothing.
 understand "end" as ending.
 
 carry out ending:
	end the story saying "You ended it early.";
	
 Understand the command "give" as something new. 
giving is an action applying to two things.
understand "give [thing] to [person]" as giving.

Carry out giving:
	let victim be the second noun;
	if noun is not infectitem thing:
		say "They don't seem interested.";
	if the victim is a monster person:
		say "They don't seem interested in that.";
		stop the action;
	say "You offer the [noun] to the [victim].";
	if a random chance of willpower of the victim in 20 succeeds:
		say "They seem to consider a moment before they decide against it.";
		stop the action;
	if the noun is a drink:
		say "They take a sip from it and thank you, but soon after begin to change.";
	otherwise:
		if the noun is edible:
			say "They take a bite, hmmm. They've had better. You watch as they move off, already changing.";
	if the noun is readable:
		say "They glance at the writing a moment before looking at you oddly, but not as oddly as they look, transforming rapidly.";
	if the noun is wearable:
		say "They try the [noun] on a moment before shaking their heads and deciding against the look, but their looks are already changing.";
	infect victim with noun;
[	Now the player is not innocent.]

Does the player mean examining the rabbit vagina: it is very unlikely.

instead of examining a person(called N):
	if N is not spotted:
		say "[The description of normal man][line break]Something about them seems... odd";
	otherwise:
		say "[the description of ctype of N]";
	if the tf table of ctype of N is not the tf table of N:
		say "[line break]They are starting to look more and more like a [shift text in row 18 of the tf table of N]!";
	if the pregnant of N is not 0:
		say "[line break]They appear to be pregnant.";

Instead of examining the player:
 	now xcheckerx is 0;
	verify the player;
	if xcheckerx is 0:
		let N be the TF table of the head;
		choose row with segment of "full" in N;
		say "[desc text entry][line break]";
		say "Wearing: [list of worn clothing] [line break]";
	otherwise:
		check along the player;
	now xcheckerx is 0.

Definition: A direction (called D) is viable if the room D from the location is a room.

After looking:
	if a direction is viable, say "You can go: [List of viable directions]."

Before printing the name of a person ( called subject): [used to display infected/pregnant status of people]
	if the subject is not the player:
		if the tf table of subject is not the tf table of ctype of subject:
			say "[shift text in row 18 of the tf table of subject] infected ";
		if the subject is heavy:
			say "[bold type]pregnant[roman type] ";
		if the matron of subject is the player:
			if the subject is female:
				say "daughter ";
			otherwise:
				say "son ";
		if the mother of subject is greater than 0:
			say "mother ";
			
After printing the name of a person (Called subject):
	if the subject is not the player:
		if the ctype of subject is not human and subject is spotted:
			say " the [printed name of ctype of subject]";

Before printing the plural name of a person ( called subject): [used to display infected/pregnant status of people]
	if the subject is not the player and the subject is spotted:
		if the tf table of subject is not table 0 and subject is not a monster:
			say "[shift text in row 18 of the tf table of subject] infected ";
		if the subject is heavy and ctype of subject is not sterile:
			say "pregnant ";
		if the mother of subject is greater than 0:
			say "mother ";

[Every turn when an innocent person is off-stage and mouse cock is not visible: [brings more people to game world]
	if a random chance of 1 in 30 succeeds:
		let x be a random innocent off-stage person;
		move x to a random visited room;
		if x is touchable:
			say "[A x] arrives from somewhere.";
			]


every turn: [prevents negative stats]
	if the willpower of ctype of the player is less than 0:
		now the willpower of ctype of the player is 0;
	if the reflex of ctype of the player is less than 0:
		now the reflex of ctype of the player is 0;
	if the willpower of ctype of the player is greater than 19:
		now the willpower of ctype of the player is 19;
	if the reflex of ctype of the player is greater than 19:
		now the reflex of ctype of the player is 19;



Part - Transform

Understand "transform [something] to [infection model]" as TFing.
Understand "transform [something] into [infection model]" as TFing.
Understand "zap [something] to [infection model]" as TFing.
Understand "zap [something] into [infection model]" as TFing.
TFing is an action applying to two visible things.

Check TFing:
	if second noun is PC:
		say "Something seems wrong with the gun, try that again?";
		now the second noun is normal man;
	

carry out TFing:
	say "You zap [noun] with your nano tuner and they begin changing rapidly!";
	if the second noun is sanitized:
		say "That's odd. Something is interfering with the gun.";
		stop the action;
	if the noun is the player:
		repeat with N running from 1 to number of rows in the tf table of the second noun:
			let part be the Segment in row N of the tf table of the second noun;
			let foundit be 0;
			let expart be a random body part;
			repeat with J running through visible body parts:
				if the printed name of J is part:
					now expart is J;
					now foundit is 1;
			if foundit is 0, next;
			choose row N in the tf table of the second noun;
			if there is a shift text entry, say "[shift text entry][line break]";
			now the ctype of expart is the second noun;
			now the tf table of expart is the tf table of the second noun;
		now the player is pacified;
	otherwise:
		now the tf table of noun is the tf table of second noun;
		tf noun;
		
Understand "revert [something]" as Reverting.
Reverting is an action applying to one visible thing.

carry out Reverting:
	say "You zap [noun] with your nano tuner and they begin changing rapidly!";
	if the noun is the player:
		repeat with N running from 1 to number of rows in the tf table of normal man:
			let part be the Segment in row N of the tf table of normal man;
			let foundit be 0;
			let expart be a random body part;
			repeat with J running through visible body parts:
				if the printed name of J is part:
					now expart is J;
					now foundit is 1;
			if foundit is 0, next;
			choose row N in the tf table of the normal man;
			if there is a shift text entry, say "[shift text entry][line break]";
			now the ctype of expart is the normal man;
			now the tf table of expart is the tf table of normal man;
		say "You return to being human!";
		now the player is pacified;
	otherwise:
		now the ctype of the noun is normal man;
		now the tf table of the noun is table 0;
		tf noun;
		say "[noun] is restored to their humanity!";
 
Part - Flaring

Flaring is an action applying to one thing. Understand "flare [something]" as flaring.

Check flaring:
	if noun is the player, say "I don't think that will work..." instead;
	If the noun is not a person, say "Being immobile, it shows no interest in you." instead;
	If the ctype of noun is phoenix, say "They are already reborn." instead;
	if the tf table of chest is not table phoenix or the player is not femme, say "You need the heart of a phoenix, and female organs to perform this" instead;
	if the pregnant of player is not 0, say "Your belly is already occupied with new life." instead;

Carry out flaring:
	say "You burst into wild flames and approach [Noun]. They look terrified, and try to escape, but you are on them in a moment. They get out a startled yelp, but as soon consumed in your intense flames. A moment later and you are flesh again. You can feel fiery energy flowing through you as your belly swells.";
	remove noun from play;
	now the pregnant of player is 1;
	now ychecker is ctype of chest;
	let u be a random not same touchable body part;
	if u is not nothing, infect u with chest;
	infect noun with chest;
	let u be a random not same touchable body part;
	if u is not nothing, infect u with chest;
	infect noun with chest;
	let u be a random not same touchable body part;
	if u is not nothing, infect u with chest;
	infect noun with chest;

Part - Grabbing

understand the command "grab" as something new.
Grabbing is an action applying to one thing. Understand "grab [something]" as Grabbing.

Check Grabbing:
	if noun is the player, say "I don't think that will work..." instead;
	If the noun is not a person, say "Being immobile, it shows no interest in you." instead;
	If the ctype of noun is huge dragoness, say "They are already a sister." instead;
	if the tf table of chest is not table huge dragoness or the player is not femme, say "You're not big enough to consider doing that..." instead;
	if the pregnant of player is not 0, say "Your belly is already occupied with new life." instead;

Carry out Grabbing:
	say "You reach suddenly and grab [Noun]. [Noun] gets out a scream of terror as you stuff them into your waiting and empty cunt. Your new, powerful, cunt draws them up into your womb, where warmth builds within you. You just need seed to quicken this precious egg of essence within you.";
	remove noun from play;
	now the pregnant of player is 1;
	now the player is not fertilized;

every turn while there is a not heavy on-stage compatible person and the tf table of pelvis is table huge dragoness:
	now ychecker is huge dragoness;
	repeat with U running through compatible on-stage not heavy persons:
		if there is a not friendly person in the location of U and U is not heavy:
			let Z be a random not friendly person in the location of U;
			if a random chance of 1 in attack rate of ctype of U succeeds:
				if a random number from 1 to reflex of ctype of U is greater than a random number from 1 to reflex of ctype of z:
					say "With a triumphant roar, [U] snatches up [Z] and squats. The cries of [Z] become muffled as they are stuffed up into the waiting snatch of the huge dragon, fem juices splattering across the ground as the hapless victim vanishes from sight.";
					remove z from play;
					now the pregnant of u is 1;
				otherwise:
					say "[U] grabs for [Z] but [Z] manages to scramble out of the way.";

every turn while there is a heavy on-stage compatible person and the tf table of pelvis is table huge dragoness:
	now ychecker is huge dragoness;
	repeat with U running through compatible on-stage not fertilized heavy persons:
		let Q be the number of compatible persons in the location of U;
		if Q is greater than 1 :
			let z be a random compatible person in the location of U;
			if a random chance of 5 in attack rate of ctype of U succeeds:
				if a random number from 1 to willpower of ctype of U plus 4 is greater than a random number from 1 to willpower of ctype of z:
					say "[U] turns around to present her rump to [Printed name of Z] and whines needily. [Printed name of Z] clambers up and thrusts in with a wet squelch heard across the city. Cars, buildings, and local foliage are pulverized in the frantic love making.";
					now z is stunned;
					now u is stunned;
					now u is fertilized;
				
			

Part - Feeding

Understand the command "feed" as something new. 
Feeding is an action applying to one thing. Understand "feed [something]" as feeding.

Check feeding:
	if noun is the player, say "I don't think that will work..." instead;
	if the tf table of chest is table huge dragoness, say "I don't think that will work..." instead;
	If the noun is not a person, say "Being immobile, it shows no interest in you." instead;
	If the noun is a large bee, say "The bee shows no interest in you in that way." instead;
	if the pregnant of player is greater than 20:
		say "Your heavily pregnant breasts allow you to do this.";
		continue the action;
	if the tf table of pelvis is not table fox taur and the tf table of chest is not table phoenix  and the tf table of chest is not table icat and the tf table of chest is not table felitaur and the tf table of gut is not table felitaur and the feline torso is not a part of the rear, say "Your breasts don't have that property." instead;

Carry out feeding:
	if the feline torso is a part of the rear: [ felitaur milk ]
		if the chest is secret:
			say "You have something over your chest, making this hard.";
			stop the action;
		say "You present your breasts towards [Noun], easy to do with so many, jiggling them enticingly as your long tail flickers and sways";
		if tf table of noun is the tf table of player or a random chance of 3 in the willpower of ctype of noun succeeds:
			if noun is neuter:
				say " and she licks her lips before approaching. She begins to nurse from you eagerly, nipping at your thick teats as it spills its deliciously thick load across her tongue.";
				if a random chance of 1 in 3 succeeds:
					say "She burrows under your body a moment to get at one of your hanging breasts, face and chest splattered with milk from the attempt as she, almost desperately, gorges herself on your thick cream.";
				if a random chance of 1 in 3 succeeds and the pelvis is not secret:
					if the player is femme:
						say "She pops free of a teat, panting, but another need must be fulfilled. Her heavy shaft throbs as she moves around behind you. You lift your tail and she is soon on top of you, thrusting against you in great satisfying thrusts. You rock your back hips against her motions, purring in delight before she releases deep inside of you, scratching an itch in your trembling passage.";
						if a random chance of 1 in 3 succeeds and the pregnant of player is 0 and the ctype of pelvis is not semifertile:
							say "Your belly swells forward as pregnancy overtakes you.";
							now the pregnant of player is 1;
						now the player is fertilized;
				if a random chance of 1 in 3 succeeds and the pelvis is not secret:
					if the player is butch:
						say "She grabs at your huge, exposed, balls, fingers brushing over the sensitive fur, drawing loud, happy purrs from you. You turn on her and advance. She tries to slow you down, gently grabbing at your big breasts, but you are focused now. She is soon pushed to the ground, and speared around your mighty, two foot, cock, plunging its barbed length deep into her, rocking and yeowling with feline intensity as you rut her feverishly. All too soon, you feel your great balls clenching, and you flood her womb with fertile seed.";
						if a random chance of 1 in 3 succeeds and the pregnant of noun is 0:
							say "Her belly swells dramatically and she gasps, tightening around your cock.";
							now the pregnant of noun is 1;
						now the noun is fertilized;
			otherwise if noun is male:
				say ". He comes up quickly, eyeing your breasts with a hunger. He is soon under you, grabbing a teat and drinking greedily. Small rivers of excess milk flow down his chin as your body produces more than he can hope to take in.";
				if a random chance of 1 in 3 succeeds:
					say "He switches from one breast to another. The first sprays milk wildly when released, hosing him and the ground down before it can calm, then he is drawing hungrily from another, making you squirm in place on your great paws.";
				if a random chance of 1 in 3 succeeds and the pelvis is not secret:
					if the player is femme:
						say "He slips out from under you, panting, and moves up behind you. He grabs your tail and pets slowly with one hand as the other lifts it up out of the way. Soon he is pushing a thick firmness into your waiting passage, riding you as you pant and smile, enjoying his attentions. Your form trembles as he releases into you, clenching tight about him.";
						if a random chance of 1 in 3 succeeds and the pregnant of player is 0 and the ctype of pelvis is not semifertile:
							say "Your belly swells forward as pregnancy overtakes you.";
							now the pregnant of player is 1;
						now the player is fertilized;
					otherwise if the player is butch:
						say "Overtaken by the moment, he grabs at your cock and begins to pull at it insistently. He strokes you in firm rapid motions, encouraging you on until you release in shuddering jets, spraying across his front as he draws back from the teat.";
			otherwise if noun is female:
				say " and she licks her lips before approaching. She begins to nurse from you eagerly, nipping at your thick teats as it spills its deliciously thick load across her tongue.";
				if a random chance of 1 in 3 succeeds:
					say "She growls a little as she draws back, milk splashing across her face before she can seal her lips back around a different teat, nuzzling and almost becoming lost in the massive breast flesh.";
				if a random chance of 1 in 3 succeeds and the pelvis is not secret:
					if the player is butch:
						say "Suddenly, she grabs at your massive sheath, stroking it eagerly as it spills out your huge cock and works it to complete hardness, then she moves in front of you and presents her rear. No words are required. You are soon on top of her, gripping with your powerful lower forepaws as your rear hips drive your massive tool into her in rapid deep strokes. Your balls tingle with pleasure as they release your potent seed into her trembling form.";
						if a random chance of 1 in 3 succeeds and the pregnant of noun is 0 and the ctype of noun is not semifertile:
							say "Her belly swells dramatically and she gasps, tightening around your cock.";
							now the pregnant of noun is 1;
						now the noun is fertilized;
			now ychecker is ctype of feline torso;
			let u be a random not same touchable body part;
			if u is not nothing, infect u with feline torso;
			infect noun with feline torso;
		otherwise:
			say ", but they refuse to partake, looking nervous.";
	otherwise: [ phoenix milk ]
		if the chest is secret:
			say "You have something over your chest, making this hard.";
			stop the action;
		say "You present your breasts towards [Noun] with a coy smile, offering a treat with a wiggle of your hips";
		if tf table of noun is the tf table of player or a random chance of 3 in the willpower of ctype of noun succeeds:
			if noun is neuter:
				say " and she licks her lips before approaching. She begins to nurse from you eagerly, nipping at your thick teats as it spills its deliciously thick load across her tongue.";
				if a random chance of 1 in 3 succeeds:
					say "She growls a little as she draws back, milk splashing across her face before she can seal her lips back around the thick teat.";
				if a random chance of 1 in 3 succeeds and the pelvis is not secret:
					if the player is femme:
						say "As she gluts herself, she grinds her thick organ against you urgently. She soon has your thighs parted, and is thrusting up against you even as she feeds. Her body is tense as a cord as she rocks powerfully. Warmth explodes inside of you, shuddering as she finally draws off your teat, satisfied.";
						if a random chance of 1 in 3 succeeds and the pregnant of player is 0 and the ctype of pelvis is not semifertile:
							say "Your belly swells forward as pregnancy overtakes you.";
							now the pregnant of player is 1;
						now the player is fertilized;
					otherwise if the player is butch:
						say "You feel her hand grabbing between your legs, stroking at your cock as she feeds. She presses close, and soon mounts you, rocking up and down against your thick member as it pierces her even as she takes shuddering draws from your chest. Your cock goes tense, then you release into her in a series of blissful cannon blasts.";
						if a random chance of 1 in 3 succeeds and the pregnant of noun is 0 and the ctype of noun is not semifertile:
							say "Her belly swells against you and she gasps, tightening around your cock.";
							now the pregnant of noun is 1;
						now the noun is fertilized;
			otherwise if noun is male:
				say " and he approaches, looking nervous at first, but then leaning in and grabbing at your chest, exploring with eager fingers. Pleasure radiates through you at his touches before it explodes violently with his sealed lips, suckling down milk.";
				if a random chance of 1 in 3 succeeds:
					say "Milk drools down his face as he gorges himself, fingers pressing into those soft orbs as he works, moaning around the thick teat.";
				if a random chance of 1 in 3 succeeds and the pelvis is not secret:
					if the player is femme:
						say "He nudges you back a little, leaning in his arms as he works your thighs apart and is soon making almost frenzied love with you, rocking up powerfully as he feeds. All too soon, he is releasing, flooding your waiting womb with his potent mix.";
						if a random chance of 1 in 3 succeeds and the pregnant of player is 0 and the ctype of pelvis is not semifertile:
							say "Your belly swells forward as pregnancy overtakes you.";
							now the pregnant of player is 1;
						now the player is fertilized;
					otherwise if the player is butch:
						say "Overtaken by the moment, he grabs at your cock and begins to pull at it insistently. He strokes you in firm rapid motions, encouraging you on until you release in shuddering jets, spraying across his front as he draws back from the teat.";
			otherwise if noun is female:
				say " and she licks her lips before approaching. She begins to nurse from you eagerly, nipping at your thick teats as it spills its deliciously thick load across her tongue.";
				if a random chance of 1 in 3 succeeds:
					say "She growls a little as she draws back, milk splashing across her face before she can seal her lips back around the thick teat.";
				if a random chance of 1 in 3 succeeds and the pelvis is not secret:
					if the player is femme:
						say "As she gluts herself, her hands wander over your body, teasing your sides and belly expertly before she reaches your vulva and begins to tease you to delirious heights of pleasure. By the time the fog lifts, she has drawn back from the teat, and looks satisfied.";
					otherwise if the player is butch:
						say "You feel her hand grabbing between your legs, stroking at your cock as she feeds. She presses close, and soon mounts you, rocking up and down against your thick member as it pierces her even as she takes shuddering draws from your chest. Your cock goes tense, then you release into her in a series of blissful cannon blasts.";
						if a random chance of 1 in 3 succeeds and the pregnant of noun is 0 and the ctype of noun is not semifertile:
							say "Her belly swells against you and she gasps, tightening around your cock.";
							now the pregnant of noun is 1;
						now the noun is fertilized;
			now ychecker is ctype of chest;
			let u be a random not same touchable body part;
			if u is not nothing, infect u with chest;
			infect noun with chest;
		otherwise:
			say ", but they refuse to partake, looking nervous.";


Part - Submit

Submitting is an action applying to one thing.  Understand "submit to [person]" as submitting.  Understand "submit [person]" as submitting.

Check submitting:
If the noun is an unchanged person, say "You can't submit to that." instead;
If the noun is a large bee, say "The bee shows no interest in you in that way." instead.

Carry out submitting: [infects you and decreases willpower]
	if the pelvis is secret:
		say "Your privates are not exposed. Perhaps you need to take off some pants?";
		stop the action;
	if the noun is male or the noun is neuter:
		say "You bend over, presenting your [if the player is not femme]eager ass[otherwise]wet cunt[end if] to [Noun].  He drives his cock home into you, thrusting until he climaxes inside.";
		decrease the willpower of ctype of the player by a random number from 0 to 1;
		if the player is not femme:
			infect rear with noun; 
		otherwise:
			if the pregnant of the player is 0 and a random chance of 1 in 3 succeeds:
				increase the pregnant of the player by 1;
				say "Your belly swells round as the seed tingles inside of you with ominous warning.";
			now the player is fertilized;
			if the player is femme and the tf table of pelvis is table latex fox and ctype of noun is latex prickvixen and the destined masculinity of the player is 0:
				now the prickpreg is 1;
			infect pelvis with noun; 
		stop the action;
	if the noun is female:
		say "You lean back, letting your genitals become visible to the [Noun], who runs her tongue along it until you orgasm.";
		decrease the willpower of ctype of the player by a random number from 0 to 1;
		infect pelvis with noun;
 

[definitions for monsters and such]
A thing is either a monster or not a monster.
[A monster is a kind of person.]
A thing has some text  called attack text.
A thing has a number  called willpower.  The willpower of a thing is usually 5.  The willpower of the player is usually 10.
A thing has a number  called reflex.  The reflex of a thing is usually 7.  The reflex of the player is usually 10.
A thing has a number  called move rate.  The move rate of a thing is usually 2.
A thing has a number  called attack rate.  The attack rate of a thing is usually 1.
A thing has a room called belly. The belly of a thing is usually dark belly.
A person is usually male.
A thing has some text  called TF description.  The TF description of a thing is usually "turns into a".
A thing is either a seeker or not a seeker.
A thing has a person  called prey.  [The prey of a seeker is usually no one.]
A thing is either a predator or not a predator.
A thing is either a hunter or not a hunter.
A thing is either an aggressor or not an aggressor.
A thing is either pacified or not pacified.  A thing is usually not pacified.


	
Definition: a thing (called cur) is out of play:
	if cur is in the holdingpen:
		decide yes;
	if cur is off-stage, decide yes;
	decide no;

Every turn when an on-stage monster is a predator:
	repeat with N running through not out of play predator persons:
		if the prey of N is out of play, now the prey of N is nothing;
		if the prey of N is nothing and an unchanged person (called the victim) is in the location of N, now the prey of N is the victim;

Every turn when an on-stage monster is a hunter:
	repeat with N running through not out of play hunter persons:
		if the prey of N is nothing or the prey of N is out of play:
			let Z be a random not out of play unchanged person;
			if Z is not nothing, now the prey of N is Z;

		

Every turn:
	if the tf table of the head is table fennec and fennec torso is a part of the rear:
		if a random chance of 5 in the willpower of ctype of the player succeeds:
			let z be a random visible npc unchanged person;
			if z is not nothing and z is not the player:
				say "An overwhelming urge overtakes you and you approach the [z] and lick their face, then grab their hips. They squirm and struggle as you try to stuff them into yourself.";
				now the belly of the player is dark belly;
				slurp z with the player;
				if z is in dark belly, say "With great satisfaction, you stuff them inside yourself, groaning as your body swells to accommodate them, pleasure radiating with every motion they make in their futile struggles.";
	if the tf table of the pelvis is table feral dragoness:
		if a random chance of 5 in the willpower of ctype of the player succeeds:
			let z be a random visible npc unchanged person;
			if z is not nothing and z is not the player:
				say "Your wet reptilian cunt suddenly becomes quite demanding and you approach [Printed name of Z], licking your lips. You grab at them trying to stuff them into your needy orifice.";
				now the belly of the player is egg;
				slurp z with the player;
				if z is in egg, say "With great satisfaction, you stuff them inside yourself, groaning as your body swells to accommodate them, pleasure radiating with every motion they make in their futile struggles.";
	repeat with N running through on-stage people that are not the player:
		now ychecker is ctype of N;
		if N is stunned:
			now n is not stunned;
			next;
		if the ctype of N is otter:
			if N is not in Lewis Pond:
				Now N is pacified;
			otherwise:
				Now N is not pacified;
		if the ctype of N is doe:
			if there is no on-stage stag:
				now N is not pacified;
			otherwise:
				if N is in the location of a random staggy person:
					now N is not pacified;
				otherwise:
					now N is pacified;
		if the ctype of N is furry doe:
			if the tf table of pelvis is not table furry deer:
				now N is not pacified;
			otherwise:
				if N is in the location of the player:
					now N is not pacified;
				otherwise:
					now N is pacified;
		if ychecker is stealthy:
			now n is not spotted;
			if ctype of head is stealthy, now n is spotted;
		otherwise:
			now N is spotted;
		if a terrifying person is in the location of N and n is not stuck to a rope:
			let R be the location of N;
			let P be a random IC room that is not R;
			if ctype of N is an otter and R is not lewis pond, now P is Lewis Pond;
			if a random chance of 1 in the move rate of ctype of N succeeds and N is not the player:
				let Z be a random terrifying person in the location of N;
				let the way be the best route from R to P;
				if the way is a direction:
					if N is visible and P is not nothing, say "[The N] runs [way], away from [Z]!";
					try silently N going the way;
					if N is visible, say "[N] arrives, running [way] away from [Z]!";
				next;
		if ctype of N is a hunter and the prey of N is in the location of N and N is not pacified and n is not stuck to a rope:
			if a random chance of 1 in the attack rate of ctype of N succeeds, try N attacking the prey of N;
		otherwise if N is a monster person and ctype of N is not a hunter and an not friendly person is in the location of N and N is not pacified and N is not stuck to a rope:
			let X be a random not friendly person in the location of N;
			let z be 0;
			if tf table of n is the tf table of ctype of n:
				now z is 1;
			let u be the number of spotted persons in the location of N;
			let Q be the number of not spotted persons in the location of N;
			if ychecker is stealthy and N is not spotted and Q is less than U, next;
			if a random chance of 1 in the attack rate of ctype of N succeeds and the z is 1:
				if the tf table of ctype of N is not the tf table of x or x is the player:
					if ctype of X is not jealous or a random chance of 1 in 3 succeeds or x is the player:
						if N is not spotted, now N is spotted;
						try N attacking X;
		otherwise if ctype of N is a seeker and the prey of N is not nothing and N is not pacified and n is not stuck to a rope:
			let R be the location of N;
			let P be the location of the prey of N;
			if ctype of N is an otter, now P is Lewis Pond;
			let the way be the best route from R to P;
			if a random chance of 1 in the move rate of ctype of N succeeds and the way is a direction and N is not immobile, try N going the way;
		otherwise if N is a monster and N is not pacified:
			let R be the location of N;
			let P be a random IC room that is not R;
			repeat with Z running through rooms that are adjacent to R:
				if an unchanged person is in Z:
					move N to Z;
					break;
			let the way be the best route from R to P, using doors;
			if ctype of N is herder:
				if there is a not same not unchanged npc person in the location of N and N is not in home of ctype of N:
					let Q be a random not same not unchanged npc person in the location of N;
					repeat with Y running through same not unchanged npc persons in the location of n:
						if ctype of n is not cooperative:
							if y is not N, next;
						if n is not y, now y is stunned;
						now n is y;
						if a random number from 1 to the reflex of ctype of N is greater than a random number from 1 to the reflex of ctype of Q:
							now the way is the best route from R to the home of ctype of N, using doors;
							if n is visible, say "[N] nudges and urges [Q] towards [the way] insistently.";
							try N going the way;
							try Q going the way;
							now Q is stunned;
							if Q is in the home of ctype of N:
								if n is visible, say "[N] secures [Q] in place, ensuring they don't wander off again.";
								now Q is immobile;
								now Q is pacified;
							next;
						otherwise:
							next;
					next;
			if ctype of N is an otter, now P is Lewis Pond;
			if ctype of N is a doe:
				if there is an on-stage stag:
					Let P be the location of a random on-stage stag;
			if ctype of N is a furry doe:
				if the tf table of pelvis is table furry deer:
					Let P be the location of the player;
			if a random chance of 1 in the move rate of ctype of N succeeds and the way is a direction and N is not immobile and N is not stuck to a rope:
				Try N going the way;
		otherwise:
			let R be the location of N;
			let P be a random IC room that is not R;
			if ctype of N is an otter, now P is Lewis Pond;
			if ctype of N is a furry doe:
				if the tf table of pelvis is table furry deer:
					Let P be the location of the player;
			let the way be the best route from R to P, using doors;
			if a random chance of 1 in the move rate of ctype of N succeeds and the way is a direction and N is not immobile and n is not stuck to a rope, try N going the way;

Every turn when an not out of play person is infected:
	repeat with N running through infected not out of play npc people:
		if a random chance of 1 in the willpower of ctype of N succeeds, TF N;

[behavior.behavior end]

[behavior.infections start]
[Multiswitch explanation: setting it to "on" allows already infected body parts to be infected by another infection.
Loss switch explanation: Setting it to "mind" causes the game to lose on a willpower failure when the head is TFed.  Setting it to "full tf" does the same but waits until the entire body is the infected.  Any other setting removes losing conditions.]

The player has a text called Multiswitch. Multiswitch is "On".
Loss Switch is some text which varies. Loss Switch is "mixed tf".
A thing has a table-name called TF table.  The TF table of a thing is usually Table 0.
A thing is either benign or not benign.  A thing is usually not benign.
A thing is either selected or not selected.  A thing is usually not selected.

Definition: a thing (called N) is infected:
	if the tf table of n is not the tf table of ctype of n:
		yes;
	if the tf table of N is table 0:
		no;
	if the tf table of N is table female human:
		no;
	yes;

[Definition: a thing (called N) is infected:
	if the tf table of n is not the tf table of ctype of n:
		yes;
	if the tf table of N is table 0:
		no;
	if the tf table of N is table female human:
		no;
	yes;]
	

To infect (subject - a body part) with (infector - a thing):
	if ctype of subject is immune:
		stop the action;
	if the ctype of infector is sanitized:
		stop the action;
	if corruption is 5:
		say "Your demonic corruption blocks further infection.";
		stop the action;
	if the ctype of infector is fast:
		now ychecker is ctype of infector;
		now the player is pacified;
		repeat with J running through not same visible body parts:
			choose row with Segment of the tag of the J in the TF table of the infector;	
			if there is a shift text entry, say "[shift text entry][line break]";
			if the infector is an infection model:
				now the ctype of J is the infector;
			otherwise:
				now the ctype of J is the ctype of infector;
			now the tf table of J is the tf table of the infector;
		stop the action;
	if infector is an infection model:
		if the infector is fast:
			now ychecker is infector;
			now the player is pacified;
			repeat with J running through not same visible body parts:
				choose row with Segment of the tag of the J in the TF table of the infector;	
				if there is a shift text entry, say "[shift text entry][line break]";
				now the ctype of J is the infector;
				now the tf table of J is the tf table of the infector;
			stop the action;
	if the tf table of subject is the tf table of infector:
		say "";
	otherwise:
		if subject is secret and a random chance of 1 in 3 succeeds:
			say "Your clothing prevents infection!";
		otherwise:
			if there is a segment of the tag of subject in Table 0:
				now subject is subject;
			otherwise:
				say "The [subject] shrivels up.";
				remove subject from play;
				stop the action;
			choose row with Segment of the tag of the subject in the TF table of the subject;
[			if the subject is visible and there is an unshift text entry, say "[unshift text entry].[line break]";]
			choose row with Segment of the tag of the subject in the TF table of the infector;	
			if the subject is visible and there is a shift text entry, say "[shift text entry][line break]";
			if the subject is not visible, say "Your [subject] feels strange.[line break]";
			now the desc of the subject is the desc text entry;
			now the description of the subject is the desc text entry;
			now the TF table of the subject is the TF table of the infector;
			repeat with N running through infection models:
				if the tf table of n is the tf table of the infector:
					[now the ctype of subject is n;]
					now n is selected;
			let n be a random selected infection model;
			now the ctype of infector is n;
			now all infection models are not selected;
			if infector is infection model:
				now the ctype of subject is the infector;
			otherwise:
				now the ctype of subject is the ctype of infector;
			if the infector is benign or n is benign, now the subject is benign;
			if the infector is not benign and n is not benign, now the subject is not benign;

gulping is an action applying to one visible thing.
understand "pouch [person]" as gulping.

Check Gulping:
	if the noun is the player:
		say "That would break a few rules of physics.";
		reject the player's command;
	if the tf table of gut is not table kangaroo:
		say "You don't have a pouch to put things into.";
		stop the action;
	if the tf table of noun is table kangaroo:
		say "They're already one of you.";
		reject the player's command;
	if there is a person in birthing pouch:
		say "There's only room for one at a time in there. A peek shows [list of people in birthing pouch] inside your pouch already.";
		reject the player's command;
		
Carry out gulping:
	say "You reach for [the noun] with a gentle smile. Though it is for their own good, they struggle against your great hands as you try to hoist them up towards your pouch.";
	slurp the noun with the player;
	if the noun is in the birthing pouch:
		say "Your form trembles with delight as they sink into your waiting pouch. It's like sex, but better, your core purpose fulfilled as you press them into your loving embrace to be held and changed to better things.";
		if tf table of pelvis is not table kangaroo:
			infect pelvis with gut;
		otherwise:
			let u be a random not compatible touchable body part;
			if u is not nothing, infect u with gut;

[Engulfing is an action applying to one thing.]
To slurp (victim - a person) with the (attacker - a thing):
	if the victim is the player and every body part is infected and the loss switch is not "full tf":
		do nothing;
	otherwise if a random number from 1 to 20 plus the reflex of the ctype of attacker is greater than a random number from 1 to 20 plus the reflex of the ctype of victim:
		if the victim is visible and the attacker is not the player, say "[The attacker] [primary attack description of the ctype of attacker] [if the victim is the player]you[otherwise][the victim][end if]![line break]";
		now the engulfer of the victim is the attacker;
		move the victim to the belly of the ctype of the attacker;
		if the attacker is the player, move the victim to the belly of the ctype of the gut;
		if the ctype of attacker is one-time, now the attacker is pacified;
	otherwise:
		if the victim is visible, say "[if the victim is the player]You avoid[otherwise][The victim] avoids[end if] [if the attacker is the player]your[otherwise][the attacker]'s[end if] attack![line break]";
	
		

UBng is an action applying to one visible thing.
understand "unbirth [person]" as UBng.

Check UBng:
	if the noun is the player:
		say "That would break a few rules of physics.";
		reject the player's command;
	if the tf table of pelvis is table fox taur:
		if the tf table of noun is table fox taur:
			say "They're already one of you.";
			reject the player's command;
		let x be 0;
		repeat with cur running through on-stage people:
			if cur is playerheld:
				increase x by 1;
		if x is greater than 1:
			say "You are too full, two is the absolute maximum.";
			reject the player's command;
		continue the action;
	if the centauress torso is not part of the rear:
		say "You don't have a centauress cunt to stuff them into.";
		stop the action;
	if the tf table of noun is table centauress:
		say "They're already one of you.";
		reject the player's command;
		
Carry out UBng:
	say "Your cunt begins to burn with desire and you look towards [Noun]. You approach them and rub them against the closest barrier, trying to pin and engulf them in your cunt.";
	slurp the noun with the player;
	if the noun is in the womb:
		say "The moment they touch your thick vulva, it's all over. They begin to be drawn into you with powerful contractions, soon settling heavily in your womb, the burning ebbing a moment.";
		if tf table of pelvis is not table centauress and tf table of pelvis is not table fox taur:
			infect pelvis with centauress torso;
		otherwise if tf table of pelvis is not table fox taur:
			let u be a random not compatible touchable body part;
			if u is not nothing, infect u with centauress torso;

[Engulfing is an action applying to one thing.]
To slurp (victim - a person) with the (attacker - a thing):
	if the victim is the player and every body part is infected and the loss switch is not "full tf":
		do nothing;
	otherwise if a random number from 1 to 20 plus the reflex of the ctype of attacker is greater than a random number from 1 to 20 plus the reflex of the ctype of victim:
		if the victim is visible and the attacker is not the player, say "[The attacker] [primary attack description of the ctype of attacker] [if the victim is the player]you[otherwise][the victim][end if]![line break]";
		now the engulfer of the victim is the attacker;
		move the victim to the belly of the ctype of the attacker;
		if the attacker is the player, move the victim to the belly of the ctype of the gut;
		if the ctype of attacker is one-time, now the attacker is pacified;
	otherwise:
		if the victim is visible, say "[if the victim is the player]You avoid[otherwise][The victim] avoids[end if] [if the attacker is the player]your[otherwise][the attacker]'s[end if] attack![line break]";
	
		
To infect (subject - a person) with (infector - a thing):
[	now the printed name of the subject is "infected person";
	now the printed plural name of the subject is "infected people";]
	if ctype of subject is npcimmune, stop the action;
	if ctype of infector is sanitized, stop the action;
	now the TF table of the subject is the TF table of the infector;
	now the TF description of the subject is the TF description of the infector;

To TF (subject - a person): [transforms people into monsters]
	if the tf table of the ctype of subject is the tf table of subject, stop the action;
	repeat with N running through infection models:
		if the tf table of n is the tf table of the subject:
			if n is unique:
				let found be 0;
				repeat with z running through not unchanged on-stage npc persons:
					if ctype of z is n:
						now found is 1;
						break;
				if found is 0, now n is selected;
			if n is not unique:
				now n is selected;
	let n be a random selected infection model;
	if n is nothing:
		say "I found no valid infection, oops.";
		stop the action;
	if n is rare, now n is a random selected infection model;
	now the ctype of subject is n;
	now all infection models are not selected;
	if subject is visible and subject is not the player, say "[The printed name of subject] [tf description of ctype of subject] [printed name of ctype of subject]![line break]";
	if the subject is the player:
		repeat with x running through visible body parts:
			infect x with n;
		now the player is pacified;
		now the ctype of player is pc;
		now the tf table of player is table 0;
		now the reflex of pc is the reflex of n;
		now the willpower of pc is the willpower of n;
		stop the action;
	otherwise:
		if the tf table of n is not table 0 and the tf table of n is not table female human, now the humanity of subject is 0;
	if ctype of subject is pacified:
		now subject is pacified;
	otherwise:
		now subject is not pacified;
	if ctype of subject is neuter:
		now the subject is neuter;
		now the printed name of subject is the female name of subject;
		stop the action;
	if ctype of subject is male:
		now the printed name of subject is the male name of subject;
		now the subject is male;
		stop the action;
	if ctype of subject is female:
		now the printed name of subject is the female name of subject;
		now the subject is female;
		stop the action;
	
		[now the engulfer of the subject is nothing;]
[	repeat with N running through off-stage monsters:
		if no monster is selected and the TF Table of N is the TF table of the subject:
			now N is selected;
			break;
		
	let N be a random selected monster;
	if N is not nothing:
		move N to the location of the subject;
		now the tf table of the subject is table 0;
		remove the subject from play;
		now the pregnant of n is 0;
		now the mother of n is 0;
		if N is visible, say "[The subject] [tf description of N] [printed name of N]![line break]";
		now the engulfer of N is the engulfer of the subject;
		[now the engulfer of the subject is nothing;]
		now N is not selected;
	
]

To grow (subject - a body part) from (target - a body part):
	now the subject is a part of the target;
	say "[shift of the subject][line break]";
	if subject is hard:
		if target is:
			-- pelvis: 
				if worn bottomed clothing is touchable:
					say "Your pants are ruined by the growth!";
					let n be a random worn bottomed clothing;
					try silently taking off n;
					remove n from play;
			-- left shin: 
				if worn bottomed clothing is touchable:
					say "Your pants are ruined by the growth!";
					let n be a random worn bottomed clothing;
					try silently taking off n;
					remove n from play;
			-- left thigh: 
				if worn bottomed clothing is touchable:
					say "Your pants are ruined by the growth!";
					let n be a random worn bottomed clothing;
					try silently taking off n;
					remove n from play;
			-- right shin: 
				if worn bottomed clothing is touchable:
					say "Your pants are ruined by the growth!";
					let n be a random worn bottomed clothing;
					try silently taking off n;
					remove n from play;
			-- right thigh: 
				if worn bottomed clothing is touchable:
					say "Your pants are ruined by the growth!";
					let n be a random worn bottomed clothing;
					try silently taking off n;
					remove n from play;
			-- rear: 
				if worn bottomed clothing is touchable:
					say "Your pants are ruined by the growth!";
					let n be a random worn bottomed clothing;
					try silently taking off n;
					remove n from play;
 
Every turn when an infected body part is a part of something:
	if multiswitch is "off":
		repeat with N running through not benign infected body parts that are a part of something:
			repeat with X running through infected body parts that are not a part of something:
				if the body part origin of X is the tag of N and the TF table of X is the TF table of N and a random chance of 1 in the willpower of ctype of the player succeeds, grow X from N;
		repeat with N running through not infected body parts:
			if N is a part of some not benign infected body part (called the subject) and a random chance of 1 in the willpower of ctype of the player succeeds:
				infect N with the subject;
			otherwise if some not benign infected body part (called the subject) is a part of N and a random chance of 1 in the willpower of ctype of the player succeeds:
				infect N with the subject;
	otherwise:
		repeat with N running through not benign infected body parts that are a part of something:
			repeat with X running through infected body parts that are not part of something:
				if the body part origin of X is the tag of N and the TF table of X is the TF table of N and a random chance of 1 in the willpower of ctype of the player succeeds:
					repeat with Z running through body parts that are a part of N:
						if the tag of Z is the tag of X, remove Z from play;
					grow X from N;
		repeat with N running through body parts:
			if N is a part of some not benign infected body part (called the subject) and a random chance of 1 in the willpower of ctype of the player succeeds:
				if there is a segment of the tag of N in Table 0 and the tf table of N is not the tf table of the subject:
					infect N with the subject;
				otherwise if the TF table of N is not the TF table of the subject:
					say "Your [N] shrivels away.";
					remove N from play;
			otherwise if some not benign infected body part (called the subject) is a part of N and a random chance of 1 in the willpower of ctype of the player succeeds:
				if there is a segment of the tag of N in Table 0 and the tf table of N is not the tf table of the subject, infect N with the subject;

[behavior.infections end]

[behavior.combat start]

Section - Large Bee

Large Bee is a infection model. The description of a Large Bee is "This beast resembles an average insect but it seems pretty large to be normal. It seems to bares a special kind of stinger." The TF table of a Large Bee is Table bee.

The move rate of a Large Bee is 1.
The attack rate of a Large Bee is 1.
The reflex of a Large Bee is 18.
The primary attack description of a Large Bee is "without a warning lunges its stinger on".
The TF description of a Large Bee is "collapses to the ground, curling into a ball as yellow and black fuzz covers their body before they become a".

The bee abdomen is a kind of body part. The body part origin of the bee abdomen is "rear". The shift of the bee abdomen is "Growing from your rear like a bulb comes your new abdomen, belonging to bee only suited for human size, it's tipped with a stinger and is covered in yellow and black stripes." The desc of the bee abdomen is "An anthropomorphic bee's abdomen seems to wiggle on your rear." The TF table of the bee abdomen is Table bee.

The bee wings is a kind of body part. The body part origin of the bee wings is "chest". The shift of the bee wings is "From your back emerge completely functioning bee wings, they are large enough to carry your human weighed body." The desc of the bee wings is "An anthropomorphic bee's abdomen seems to wiggle on your rear." The TF table of the bee wings is Table bee.

instead of taking a beehive:
	let Z be a random off-stage buzzy person;
	if z is not nothing:
		say "You've upset the bees of the hive, and one pops out to defend it.";
		move Z to the location of the player;
		now Z is not selected;
	otherwise:
		say "There don't seem to be any bees left.";
	stop the action;

	

Part - Attack

A thing has some text  called primary attack description.  The primary attack description of a person is usually "attacks".  
A thing has some text  called secondary attack description.  The secondary attack description of a person is usually "is infected!".
A thing has some text  called attack type.  The attack type of a thing is usually "strike".
A person has a person  called engulfer.  [The engulfer of a person is usually nothing.]
A thing has a body part  called target.  [The target of a person is usually nothing.]
A thing is either stat-switched or not stat-switched.  A person is usually not stat-switched.
A thing is either one-time or not one-time.  A person is usually not one-time.


Does the player mean attacking the innocent not infected person: it is very unlikely.
Does the player mean attacking the innocent not infected person when every body part is infected: it is likely.
Does the player mean attacking the innocent infected person: it is unlikely.

instead of the player kissing a large bee:
	say "You approach the bee with lust in your eyes, and it stings at you for the trouble.";
	try noun attacking the player;
 
 Instead of a person (called the attacker) attacking a person (called the victim):
 	now ychecker is ctype of attacker;
 	now targetx is victim;
 	if the attacker is engulfed, stop the action;
 	let attack be the ctype of attacker;
	if the attack is stat-switched:
		let B be the reflex of the attack;
		now the reflex of the attack is the willpower of the attack;
		now the willpower of the attack is B;
		let B be the reflex of the victim;
		now the reflex of the victim is the willpower of the victim;
		now the willpower of the victim is B;
	if the attack type of the attack is "spray":
		if the attacker is visible:
			say "[primary attack description of the attack][line break]";
		repeat with N running through unchanged people in the location of the attacker:
			if a random number from 1 to 20 is greater than the reflex of ctype of N:
				if N is the player:
					let Z be a random body part;
					if multiswitch is "on":
						if the TF table of Z is the TF table of the attack or there is no segment of the tag of Z in Table 0, let Z be a random visible not same body part;
					otherwise:
						let Z be a random visible not infected body part;
					if Z is not nothing, say "Your [Z] [secondary attack description of the attack][line break]";
					if Z is not nothing, infect Z with the attack;
					if the attack is one-time, now the attacker is pacified;
				otherwise:
					if N is visible, say "[The N] [secondary attack description of the attack][line break]";
					infect N with the attack;
					if the attack is one-time, now the attacker is pacified;
			otherwise:
				if N is visible, say "[if N is the player]You avoid[otherwise][The N] avoids[end if] the attack![line break]";
	if the attack type of the attack is "strike":
		if the victim is the player:
			let N be a random body part;
			if multiswitch is "on":
				if the TF table of ctype of N is the TF table of the attack or there is no segment of the tag of N in Table 0, let N be a random visible not same body part;
			otherwise:
				let N be a random visible not same body part;
			if a random number from 1 to 20 plus the reflex of the attack is greater than a random number from 1 to 20 plus the reflex of the player:
				if N is not nothing:
					say "[The attacker] [primary attack description of the attack] your [N]![line 	break]";
					if the attacker is a monster, infect the N with the attack;
					if the attacker is not a monster, say "Yeouch![line break]";
					if the attack is one-time, now the attacker is pacified;
			otherwise if N is not nothing:
				say "You evade [the attacker]![line break]";
		otherwise:
			if the reflex of the attack plus a random number from 1 to 20 is greater than the reflex of the victim plus a random number from 1 to 20:
				if the attacker is visible, say "[The attacker] [primary attack description of the attack] [the victim]![line break]";
				if the attacker is a monster, infect the victim with the attack;
				if the attacker is not a monster:
					if the attacker is visible, say "[The attacker] has slain [the victim][line break]!";
					remove the victim from play;
				if the attack is one-time, now the attacker is pacified;
			otherwise:
				if the attacker is visible, say "[The victim] avoids [the attacker]'s attack![line break]";
	if the attack type of the attack is "growth":
		if the victim is the player:
			let N be the target of the attack;
			let z be 0;
			if N is not a part of something, now Z is 1;
			if the tf table of N is not the tf table of the attack, now z is 1;
			if Z is 1 and a random number from 1 to 20 plus the reflex of the attack is greater than a random number from 1 to 20 plus the reflex of the player:
				say "[The attacker] [primary attack description of the attack][line break]";
				repeat with W running through body parts:
					if the tag of W is the body part origin of N, grow N from W;
				if the tf table of N is not the tf table of the attack, infect N with attack;
				if the attack is one-time, now the attacker is pacified;
			otherwise if N is not a part of something:
				say "You avoid [the attacker]'s attack!";
		otherwise:
			if the attacker is visible, say "[The attacker] [secondary attack description of the attack] [the victim]![line break]";
			infect the victim with the attack;
			if the attack is one-time, now the attacker is pacified;
	if the attack type of the attack is "engulf":
		slurp the victim with the attacker;
	if the attack type of the attack is "knockback":
		if the victim is the player:
			let N be a random body part;
			if multiswitch is "on":
				if the TF table of N is the TF table of the attack or there is no segment of the tag of N in Table 0, let N be a random not infected body part;
			otherwise:
				let N be a random not infected body part;
			if a random number from 1 to 20 plus the reflex of the attack is greater than a random number from 1 to 20 plus the reflex of the player and N is not nothing:
				say "[The attacker] [primary attack description of the attack] your [N]![line break]";
				let P be a random IC room adjacent to the victim;
				if P is not nothing:
					let way be the best route from the location of the player to P;
					say "You're knocked to the [way] by the force of the blow!";
					move the player to P;
				otherwise:
					say "You're rattled by the force of the blow!";
				if the attacker is a monster, infect the N with the attack;
				if the attacker is not a monster, say "Yeouch![line break]";
				if the attack is one-time, now the attacker is pacified;
			otherwise if N is not nothing:
				say "You evade [the attacker]![line break]";
		otherwise:
			if the reflex of the attack plus a random number from 1 to 20 is greater than the reflex of the victim plus a random number from 1 to 20:
				if the attacker is visible, say "[The attacker] [primary attack description of the attack] [the victim]![line break]";
				let P be a random IC room adjacent to the victim;
				if P is not nothing:
					let way be the best route from the location of the victim to P;
					if the victim is visible, say "[The victim] is knocked to the [way] by the force of the blow!";
					move the victim to P;
					if the victim is visible, say "[The victim] is launched this way from the [opposite of way] by a powerful blow!";
				otherwise:
					say "[The victim] is rattled by the force of the blow!";
				if the attacker is a monster, infect the victim with the attack;
				if the attack is one-time, now the attacker is pacified;
			otherwise:
				if the attacker is visible, say "[The victim] avoids [the attacker]'s attack![line break]";
	if the attack is stat-switched:
		let B be the reflex of the attack;
		now the reflex of the attack is the willpower of the attack;
		now the willpower of the attack is B;
		let B be the reflex of the victim;
		now the reflex of the victim is the willpower of the victim;
		now the willpower of the victim is B;

Section - Engulf

Every turn when a person is engulfed: [handles infecting engulfed people]
	repeat with N running through engulfed people:
		let the attacker be the engulfer of N;
		now ychecker is ctype of attacker;
		if N is a monster:
			infect N with the attacker;
			if the attacker is the player, infect N with the gut;
			tf n;
			move N to the location of the attacker;
			if N is visible and the attacker is not the player, say "[The attacker] [secondary attack description of the ctype of attacker]![line break]";
			if the attacker is the player:
				repeat with z running through monster persons:
					if the tf table of z is the tf table of the gut:
						say "Your body is gripped with the infection's urges and [secondary attack description of the ctype of z]![line break]";
						break;
			[now the engulfer of N is nothing;]
			if the ctype of attacker is one-time, now the attacker is not pacified;
		otherwise if a random number from 1 to 50 is greater than the reflex of N and N is not a monster:
			if N is visible and N is not the player, say "[The N] fails to escape [the attacker]![line break]";
			if N is the player, say "You fail to escape [the attacker]![line break]";
			if N is the player:
				let Z be a random body part;
				if multiswitch is "on":
					if the TF table of Z is the TF table of the attacker or there is no segment of the tag of Z in Table 0:
						let Z be a random visible not same body part;
					otherwise:
						let Z be a random visible not infected body part;
				if Z is a body part, say "Your [Z] feels strange.";
				if Z is not nothing, infect Z with the attacker;
			otherwise:
				infect N with the attacker;
				if the attacker is the player, infect N with the gut;
				if a random chance of 1 in the willpower of N succeeds, TF N;
		otherwise:
			[now the engulfer of N is nothing;]
			move N to the location of the attacker;
			if N is visible and N is not the player, say "[The N] gets out of [the attacker]![line break]";
			if N is the player, say "You get out of [the attacker]![line break]";
			if the ctype of attacker is one-time, now the attacker is not pacified;

Section - Player attacks

Instead of attacking a person (called the victim): [handles attacks on people, infects if you are infected enough]
	now ychecker is ctype of right hand;
	if the victim is the player:
		say "You can't attack yourself!";
	otherwise:
		if the reflex of the player plus a random number from 1 to 20 is greater than the reflex of the victim plus a random number from 1 to 20:
			if ychecker is herder and victim is not unchanged:
				if the player in the location of home of ychecker:
					if victim is immobile:
						say "They are already home and secured, not much more to do with them.";
					otherwise:
						say "You secure [victim] so they can't wander off.";
						now victim is immobile;
						now victim is pacified;
				otherwise:
					let the way be the best route from the location of player to the home of ctype of ychecker, using doors;
					say "You nudge [victim] towards [the way] insistently.";
					try victim going the way;
					try the player going the way;
					now the victim is stunned;
			otherwise if the victim is not same and the right hand is infected and ctype of right hand is not sanitized:
				if the attack type of ctype of player is "growth" or the attack type of ctype of player is "engulf":
					say "You strike at [Victim], infecting them!";
				otherwise:
					now targetx is victim;
					say "Your body's urges become too great as it [primary attack description of the ychecker] [the victim]![line break]";
				increase the reflex of the player by a random number from 0 to 1;
				infect the victim with the right hand;
			otherwise:
				say "You deliver a killing blow to [the victim]![line break]";
				remove victim from play;
				repeat with u running through engulfed persons:
					if engulfer of u is victim:
						move u to the location of player;
						say "[U] comes spilling out of the fresh body!";
				if victim is Prometheus:
					say "As Prometheus dies, he points at you, 'You will revive our people, just as you sought to snuff it.' And powerful magic flows through you, changing you rapidly.";
					infect the rear with centauress;
					infect the pelvis with centauress;
		otherwise:
			say "[The victim] dodges your attack![line break]";
		
Section - Misc

Setwilling is an action applying to one number.  Understand "setwill [number]" as setwilling.

Carry out setwilling a number (called the Q):
   now the willpower of ctype of the player is Q.
 
Setreflexing is an action applying to one number.  Understand "setreflex [number]" as setreflexing.

Carry out setreflexing a number (called the Q):
   now the reflex of ctype of the player is Q.


Section - Offer

Offering is an action applying to one thing. Understand "offer to [something]" as offering.  Understand "offer [something]" as offering. [once infected offer to infect others]

Check offering: [makes sure you only offer to people, not monsters or other things]
If the noun is not a person, say "The [noun] doesn't interest you." instead;
If the noun is a not unchanged person, say "You think you'd be more interested in something else." instead;
If pelvis is not infected, say "You don't feel like it right now." instead.

Carry out offering a person (called the victim): [attempts to infect person]
	if the victim is the player:
		say "You can't offer yourself!";
		stop the action;
	if the tf table of pelvis is table 0:
		say "You can't quite bring yourself to do that...";
		stop the action;
	if the ctype of pelvis is uberfox:
		if the humanity of victim is less than 1:
			say "You approach [victim] and try to sway them with your pheromones, but they seem unswayed entirely. Maybe they're just not human enough.";
			stop the action;
		if the humanity of victim is greater than 3:
			say "[Victim] gazes at your form with some longing, but manages to resist your offer, for now.";
			decrease the humanity of victim by 1;
			decrease the humanity of player by 1;
			stop the action;
		if the victim is male:
			say "[one of]You prowl towards [Victim] and purr at him in a low growl. He looks at you at first with some fear, but that emotion fades quickly. You nuzzle him along the leg, then lick across his groin, drawing a shuddering moan from him. As your teeth hook into the zipper, he reaches to assist, working off his pants. His shaft springs free, radically changed. It looks very similar to your own, pink and bestial and ready. You turn your rump towards the panting human in invitation.[line break][line break]He comes up behind you and grabs your massive furry hips, driving his alien shaft deep into your wet cunt. You howl and rock against him as he goes taught, then begins to shudder. The world is lost to him as his body locks into a steady torrent of climax, filling your body with his seed and humanity. Every spurt from his swelling balls causes his body to degrade further, until another Uber Fox rests on your back, knotted tightly to you, his humanity fled.[or]You fan your tails at [victim] and he loses it. He yanks down his pants, revealing his erect fox shaft, and practically tackles you to the ground. You yelp, but do not resist as he rolls you to your back and begins pounding into your body with desperate fury. Pleasure builds within you, cresting when his knot seals in your wet thick lips. He begins to spray and spray and spray, unable to stop, surrendering his humanity to you in long long stream of seed. He falls across you, bestial and furry, his humanity gone.[at random]";
		otherwise:
			say "[one of]You rear up on your hindlegs, then settle back onto your haunches. [Victim] looks over at you and licks her lips before she approaches, shedding clothes as she goes. By the time she gets to you, she is naked. You can see that a large wet vulpine sex rests between her legs and is soon settling onto your cock as she sits in your lap and hugs you tightly. With a growl, you begin to thrust up into her, taking her in eager pushes until your knot swells and locks into the ecstatic human. [Victim] yelps as you seal with her, then begins to change rapidly, her humanity fleeing her as she becomes another fox, tied to you for a few moments longer as you lick at one another's faces.[or]You sneak up behind [Victim] and nuzzle into her ass, sniffing at her. She swats at you, but you return, sniffing again. After [a random number between 3 and 7] times she finally turns to face you, but stops, panting instead. She silently pulls down her pants, then falls to all fours, offering herself to you. Without hesitation, you leap on her and begin pounding forward into her tight fox cunt. As you explode powerfully into her, your body draws the humanity from her and she is soon covered in thick fur and muscles, another uber fox.[at random]";
		decrease the humanity of victim by 5;
		decrease the humanity of player by 5;
		now the tf table of victim is table uber fox;
		now the ctype of victim is uberfox;
		now the victim is pacified;
		stop the action;
	if the willpower of ctype of the player plus a random number from 1 to 20 is greater than the willpower of the victim plus a random number from 1 to 20:
		Say "Your corner [the victim], pressing your crotch into their face. The resist at first but soon begin to eagerly lick and suck at you. They bring you to a quick climax, drinking your juices.";
[			increase the willpower of ctype of the player by a random number from 0 to 2;]
		infect the victim with pelvis;
	otherwise:
		say "[The victim] manages to resist your offer![line break]";
	

[behavior.combat end]

[behavior.sex start]

Part - Sex and it's results


Definition: A thing (called N) is heavy if the pregnant of N is not 0.
Definition: A thing (called N) is matronly if the mother of N is not 0.
Definition: A thing is compatible if their tf table is the tf table of pelvis.
Definition: A thing is femme:
	if the fennec torso is a part of the rear, yes;
	if the centauress torso is a part of the rear, yes;
	if the tf table of the pelvis is table 1, yes;
	if the tf table of the pelvis is table gryphon, yes;
	if the tf table of the pelvis is table phoenix, yes;
	if the tf table of the pelvis is table uber fox, yes;
	if the tf table of the pelvis is table 4, yes;
	if the tf table of the pelvis is table 22, yes;
	if the tf table of the pelvis is table huge dragoness, yes;
	if the tf table of the pelvis is table 55, yes;
	if the tf table of the pelvis is table hyena, yes;
	if the tf table of the pelvis is table dragon babe, yes;
	if the tf table of the pelvis is table sheep, yes;
	if the tf table of the pelvis is table 21, yes;
	if the tf table of the pelvis is table 14, yes;
	if the tf table of the pelvis is table bee, yes;
	if the tf table of the pelvis is table horse mare, yes;
	if the tf table of the pelvis is table deer, yes;
	if the tf table of the pelvis is table collie, yes;
	if the tf table of the pelvis is table furry deer, yes;
	if the tf table of the pelvis is table ferret, yes;
	if the tf table of the pelvis is table slutrat, yes;
	if the tf table of the pelvis is table harpy, yes;
	if the tf table of the pelvis is table wyvern, yes;
	if the tf table of the pelvis is table feral dragoness, yes;
	if the tf table of the pelvis is table rogue, yes;
	if the tf table of the pelvis is table vixen, yes;
	if the tf table of the pelvis is table icat, yes;
	if the tf table of the pelvis is table elf, yes;
	if the tf table of the pelvis is table echoen, yes;
	if the tf table of the pelvis is table husky, yes;
	if the tf table of the pelvis is table demonic mouse, yes;
	if the tf table of the pelvis is table otter, yes;
	if the tf table of the pelvis is table kangaroo, yes;
	if the tf table of the pelvis is table were fennec, yes;
	if the tf table of the pelvis is table 0 and playerfemale is 1, yes;
	if the rabbit vagina is touchable, yes;
	if the feline torso is a part of the rear, yes;
	if the tf table of the pelvis is table latex fox and the destined femininity of the player is 1, yes;
	if the tf table of the pelvis is table minotaur and the destined femininity of the player is 1, yes;
	if the tf table of the pelvis is table goblin and the destined femininity of the player is 1, yes;
	if the tf table of the pelvis is table werewolf and the destined femininity of the player is 1, yes;
	if the tf table of rear is table fox taur, yes;
	no;

Definition: A person (called N) is catty:
if the tf table of ctype of n is table 20, yes;
no;

Definition: A person (called N) is ottery:
if the tf table of ctype of n is table otter, yes;
no;

Definition: a thing is engulfed:
if they are in dark belly[ and the engulfer is not nothing], yes;
if they are in womb[ and the engulfer is not nothing], yes;
if they are in egg[ and the engulfer is not nothing], yes;
if they are in Birthing Pouch[ and the engulfer is not nothing], yes;
if the person is off-stage, no;
no;

Definition: A thing (Called N) is playerheld:
	if N is not engulfed, no;
	if the engulfer of N is the player, yes;
	no;

definition: A person is an npc if they are not the player;
 
definition: A person (Called N) is innocent:
if ctype of n is not jealous, yes;
If n is a monster, no;
yes;

Definition: A person (called N) is a monster:
if N is the player, no;
if the ctype of N is human, no;
yes;

Definition: a person (called N) is unchanged:
	if the tf table of N is table 0, yes;
	if the tf table of N is table female human, yes;
	if the tf table of ctype of n is not table 0 and the tf table of ctype of n is not table female human, no;
	If N is the player:
		if there are no visible not infected body parts:
			no;
		otherwise:
			yes;
	no;

Definition: A thing is butch:
if mouse cock is a part of the pelvis, yes;
if horse cock is a part of the pelvis, yes;
if lioness cock is a part of the pelvis, yes;
if The horse torso is part of the rear, yes;
if The feline torso is part of the rear, yes;
if the fennec torso is a part of the rear, yes;
if the tf table of the pelvis is table 1, no;
if the tf table of the pelvis is table 4, no;
if the tf table of the pelvis is table 21, no;
if the tf table of the pelvis is table felitaur, no;
if the tf table of the pelvis is table Dragon Babe, no;
if the tf table of the pelvis is table 14, no;
if the tf table of the pelvis is table 6, no;
if the tf table of the pelvis is table centauress, no;
if the tf table of the pelvis is table horse mare, no;
if the tf table of the pelvis is table bee, no;
if the tf table of the pelvis is table collie, no;
if the tf table of the pelvis is table sheep, no;
if the tf table of the pelvis is table vixen, no;
if the tf table of the pelvis is table elf, no;
if the tf table of the pelvis is table fennec, no;
if the tf table of the pelvis is table icat, no;
if the tf table of the pelvis is table rogue, no;
if the tf table of the pelvis is table harpy, no;
if the tf table of the pelvis is table husky, no;
if the tf table of the pelvis is table 0 and playerfemale is 1, no;
if the tf table of the pelvis is table tree, no;
if the tf table of the pelvis is table demonic mouse, no;
if the tf table of the pelvis is table feral dragoness, no;
if the tf table of the pelvis is table otter, yes;
if the tf table of the pelvis is table latex fox and the destined masculinity of the player is 0, no;
if the tf table of the pelvis is table minotaur and the destined masculinity of the player is 0, no;
if the tf table of the pelvis is table goblin and the destined masculinity of the player is 0, no;
if the tf table of the pelvis is table werewolf and the destined masculinity of the player is 0, no;
yes;
 
A player has a number  called nursing. The nursing of a player is usually 0.
A person has a number  called pregnant. The pregnant of a person is usually 0.
A person has a number called mother. The mother of a person is usually 0.
A person has a number  called skunkpregnant. The skunkpregnant of a person is usually 0.
Corruption is a number that varies. Corruption is 0.
A person has a number called Humanity. The humanity of a person is usually 10.
Fucked is a number that varies. Fucked is 0.
Altending is a number that varies. Altending is 0.
prickpreg is a number that varies. Prickpreg is 0.

Understand "fuck [person]" as kissing.
Understand "hug [person]" as kissing.
understand "herd [person]" as attacking.

Does the player mean kissing the heavy monster person: it is very unlikely.

Definition: A person (called N) is skunkie:
	if the tf table of ctype of N is table 14, yes;


Section - Sex/Husky Stud

every turn:
	if the tf table of pelvis is table husky and there is a compatible visible npc person:
		if the pregnant of the player is 0:
			say	"Your loins ache and burn as you stumble slightly, overwhelmed with a massive surge of pleasure and need from your new cunt, probably due to your close proximity to another husky, just like you. A whimper escapes you as one of the male huskies notices your plight, smirking mischievously as he trots seductively towards you. Even as you reach down to try to take the edge off of your need, he comes up behind you, abruptly forcing you to the ground onto all fours before you can react. As you look back, you're surprised to see that he has a huge, throbbing canine cock right next to your ass, oozing pre. [if the tf table of head is table husky]You're unable to stop from subconsciously licking at your lips as you stare at his cock, your mouth watering as you feel the urge to wrap your muzzle around it.[end if][if the tf table of gut is table husky]Your tummy growls hungrily as you continue to stare at his cock, wanting nothing more than to be filled with seed like a good little bitch.[end if][if the tf table of rear is table husky]Your cute little husky tail sways eagerly behind you as you lift it up, offering yourself to the male husky like a good little slut.[otherwise]You raise your rear up into the air, exposing your aching slit to the male husky like a good little slut.[end if]Abruptly, he rams that cock into you, pounding into you over and over again, making you cry out in pure lust as you're brutally fucked, enjoying every second of it. You shudder and whine needfully as you feel his knot bump repeatedly into your lips, wanting nothing more than to feel it inside of you, filling you, only for your wish to come true as he finally forces it into your pussy, stretching you wide as you howl in orgasm, your walls clenching tightly at his cock as he explodes too, painting your insides creamy white with his seed, the knot preventing any of it from escaping as you lay there on the ground, panting. Finally, after a few minutes he pulls out with a wet slurping noise, grinning toothily at you as you manage to force yourself to your feet, only to look down at your tummy in shock as you feel it swell, quickly growing in size until it's obvious you're very pregnant and carrying his pups as he saunters off.";
			increase the pregnant of the player by 1;
	


Section - Sex/Skunkbeast

every turn:
	if the tf table of pelvis is table 14:
		repeat with U running through skunkie persons in the location of the player:
			if a random chance of 1 in willpower of ctype of the player succeeds:
				say "     The large skunk snuffles at the air for something, deciding you're what he's looking for it seems.  A huge, heavy paw knocks you down onto your hands and knees, and before you can get back up, the heavy weight pins you down.  The thick shaft parts your new black-furred slit, and pounds you wildly![line break]     The wild beast uses you for his own pleasure, as your body betrays you, a low groan rising in your throat.  You find yourself pushing back, panting, but the thick, messy cum that floods your body comes just before you can release, leaving you almost desperate and begging for more.";
				if the tf table of gut is table 14:
					now the desc of gut is "Your belly seems stretched, the hot bestial cum refusing to settle inside as memories of the rutting skunkbeast flash through your mind.";
				Increase the skunkpregnant of the player by 2;
				decrease the reflex of the player by a random number from 0 to 0;
				choose row with Segment of "full" in table 14;
				now desc text entry is "You are a female anthro skunk.  Your belly has swollen quite a bit, however, from a very rough mating that you got from a horny beast.  It feels difficult to stand on two legs, and it's getting more and more tempting to drop to all fours.[if skunkpregnant of player is greater than 0] The massive amount of goo still inside you makes you shudder, and something tells you that there's going to be a lot more four-legged giant skunks soon...[end if]";
				choose row with Segment of "gut" in table 14;
				now desc text entry is "Your belly sloshes a bit as you walk, and the sensations remind you of the beast that filled you with his seed.  For some reason, you have a growing desire to let yourself be dragged down to all fours and join him as his pet bitch.";
				if the tf table of gut is not table 14, infect gut with U;
	if the skunkpregnant of the player is not 0:
		if the tf table of gut is not table 14, infect gut with a random skunky person;
		if a random chance of 1 in 10 succeeds, say "You feel a kick from within your large round belly.";


Section - Sex/Rabbit

every turn:
	if a rabbit vagina is touchable and number of off-stage easter eggs is greater than 0: [lays egg if you have rabbit vagina and there are available eggs]
		if a random chance of 2 in the willpower of ctype of the player succeeds and the tf table of head is not table 22:
			let A be a random off-stage easter egg;
			move A to the location of the player;
			say "     You get a strange sensation from your new rabbit gender, and with an urge, you squat in place. Your belly becomes hard and you grunt as you feel something sliding down through your vagina. Pleasure and mild pain makes you pant and go red in the face as the egg smoothly slips free of you to land on the ground, already brightly colored.";
		if a random chance of 7 in the willpower of ctype of the player succeeds and the tf table of head is table 22: [higher odds of laying egg if you have rabbit head]
			let A be a random off-stage easter egg;
			move A to the location of the player;
			try silently taking A;
			say "     Coming all too naturally to your rabbit mind, you squeeze out an egg right into your waiting hands, now to find someone who wants to eat it! You carry it openly, sure that the right person will come to you on their own.";
	if a pacified rabbit guy is touchable and rabbit vagina is touchable and a random chance of 5 in the willpower of ctype of the player succeeds:
		say "     The rabbit guy wanders close to you from behind, taking you in his soft arms, he thrusts his huge shaft into your new rabbit cunt, rocking a few solid times until you feel an egg break inside of you and spill out over the rabbit's cock.";
		let A be a random touchable pacified rabbit guy;
		now A is not pacified;
	if a random chance of 1 in 10 succeeds: [sometimes makes rabbits hunt player]
		let n be a random not out of play rabbit guy;
		if n is not nothing:
			now the prey of n is the player;
			Now the N is not pacified;
	


Section - Sex/Alpha Lion

every turn:
	if the pregnant of the player is not 0 and ctype of pelvis is not sterile:
		[if the tf table of gut is not table 21, infect gut with a random alpha lion;]
		if a random chance of 1 in 10 succeeds, say "You feel a kick from within your large round belly.";
		let u be the pregnant of the player;
		increase the pregnant of the player by a random number from 0 to 3;
		if the pregnant of player is greater than 29 and the ctype of pelvis is semifertile and the player is not fertilized, now the pregnant of player is 29;
		if the destined masculinity of the player is 0 and the tf table of pelvis is table latex fox and prickpreg is 1 and the pregnant of the player is greater than 9:
			say "Your belly grows alarmingly warm. The seed within you flares with powerful tingling all through your limbs before it focuses on your wet rubbery lips. You can do little more than groan and whimper as soft squeaks of stretching rubber greet the arrival of a large, white, canine shaft.";
			now the destined masculinity of the player is 1;
			now the pregnant of the player is 0;
		otherwise if the pregnant of the player is greater than 10 and u is not greater than 10:
			say "Your belly swells larger as the child within matures. Strange maternal thoughts drift through your mind.";
		otherwise if the pregnant of the player is greater than 20 and u is not greater than 20:
			if the tf table of chest is not the tf table of pelvis and the player is femme, infect chest with pelvis;
			say "Your breasts swell and become a little sore as your body prepares for eventual birth. Your belly feels large and round, so full of life. You can't help but gently rub over it once in a while, thinking of your future child.";
		otherwise if the pregnant of the player is greater than 30 and the player is femme and there are off-stage monster persons:
			say "A sudden stab runs through your abdomen as you get the urge to crouch in place. Your senses full under powerful waves of pleasure that have you panting for breath as life emerges from within you. You are soon a mother.";
			now the pregnant of the player is 0;
			now the player is not fertilized;
			if there are off-stage persons:
				let z be a random off-stage person;
				now the tf table of z is the tf table of pelvis;
				tf z;
				move z to the location of player;
				say "[The Z] shakes off birthing fluids and begins to grow rapidly, soon full sized and ready for action.";
				now the matron of z is the player;
	if the the tf table of pelvis is table 21:
		let U be a random alpha npc person in the location of the player;
		if U is not nothing:
			if a random chance of 1 in willpower of ctype of the player succeeds:
				if pelvis is secret:
					let H be a random bottomed worn clothing;
					try silently taking off H;
					try silently dropping H;
					remove H from play;
				say "     The alpha lion approaches and sets a paw on your shoulder. You consider turning him away with your human mind, but the feline one wins out and you lean against him. He bites at your shoulder and neck, moving around you and lifting you. He is soon plunging his hungry shaft deep into your small curvy body, filling you in a way you have never been filled before as a human. You roar in pleasure as his seed fills your new womb, which swells outwards with the volume of it.[line break]     As you recover from the pleasure of it, the lion man snuggles, caressing your chest with his broad paws and rocking against you a few moments longer before he rises and releases you to your feet, wobbly though they may be.";
				if the tf table of gut is table 21:
					now the desc of gut is "Your belly protrudes in a grand sphere, making you look like you're in the third trimester of pregnancy, so full you are. You can even fill a kick once in a while with a shudder.";
				Increase the pregnant of the player by 1;
				decrease the reflex of the player by a random number from 0 to 0;
				choose row with Segment of "full" in table 21;
				now desc text entry is "You are a female lioness. You are only about four feet tall, though you have huge D cups for your height and your exposed sex is swollen and dripping with need. Your nipples are visible and black, begging to be sucked on, leaking a constant stream of thick cream down your front.[if pregnant of player is greater than 0] You look as if you are about eight months pregnant, with a huge furry belly that juts out in front of you proudly.[end if]";
				choose row with Segment of "gut" in table 21;
				now desc text entry is "Your belly protrudes in a grand sphere, making you look like you're in the third trimester of pregnancy, so full you are. You can even fill a kick once in a while with a shudder.";
				if the tf table of gut is not table 21, infect gut with U;
		
	


Section - Sex/Cat Girl

[general kissing]

Female sex of things is usually "[if the player is butch]     You lean her back and begin to piston into her juicy depths with increasing lust. Soon you are both trembling with building tension. As you spill your essence into her body, she squeals in delight and holds close to you for a few moments, holding your cock deep inside of her.[end if][if player is femme and player is not butch]You decide to share in the pleasure giving, licking and suckling at her eagerly even as she gravitates towards your new female equipment and begins to bathe you in saliva and attention. You are soon trembling and squealing with growing delight as you bring each other to crashing climax.[end if][if the player is not butch and the player is not femme]Though you lack genitals of your own, you eagerly push her back and dive between her legs, licking and nibbling at her until she's crying with pleasure, rocking against your face as you work at her.[end if]".

female sex of irish cat is "[if player is femme]You decide to share in the pleasure giving, licking and suckling at her eagerly even as she gravitates towards your new female equipment and begins to bathe you in saliva and attention. You are soon trembling and squealing with growing delight as you bring each other to crashing climax.[otherwise if noun is compatible]You let out a yowl of pain as your aqua colored pussy becomes damp with arousal, pain flooding through your body and the desperate urge to find a male immediately hits you hard. You throw yourself at the nearest male and land underneath him on your back. The male attempts to fight back against his urges only to fail, he starts to thrust hard into your tight, damp cunt with increasingly fast thrusts. His climax hits after a few minutes and you have him cumming hard into your body as he fills up your pussy and womb with his fertile seed. You then proceed to unwrap your legs from around [printed name of noun] and kick him up and out of your tight pussy. you get up and saunter off calmly.[otherwise]As she approaches you, the Irish Cat fills up a mug full of beer and shoves it into your hands as she slowly drops her miniskirt to the ground to reveal her dripping wet Aqua blue pussy to you. Her paws grip your shoulders softly as you drink the beer you feel her slowly plunge your cock deep into her wonderfully tight pussy, her vaginal walls tug and massage at your shaft as she continues to ride you slowly and hard. Really drawing it out as her double-C cup breasts bounced and moved softly inside of her outfit, the mug falling from your hands as you place them on her hips firmly. It is all just moments later when you cum hard into the Irish Cats aqua colored pussy and drain your load into her womb. After you finish blowing your load into her, she gives you a deep kiss on the lips as she orgasms all over your cock and balls. Getting off of you as she saunters off.[end if]".
male sex of irish cat is "[if noun is female]You decide to share in the pleasure giving, licking and suckling at her eagerly even as she gravitates towards your new female equipment and begins to bathe you in saliva and attention. You are soon trembling and squealing with growing delight as you bring each other to crashing climax.[otherwise]You let out a yowl of pain as your aqua colored pussy becomes damp with arousal, pain flooding through your body and the desperate urge to find a male immediately hits you hard. You throw yourself at the nearest male and land underneath him on your back. The male attempts to fight back against his urges only to fail, he starts to thrust hard into your tight, damp cunt with increasingly fast thrusts. His climax hits after a few minutes and you have him cumming hard into your body as he fills up your pussy and womb with his fertile seed. You then proceed to unwrap your legs from around [printed name of noun] and kick him up and out of your tight pussy. you get up and saunter off calmly.[end if]".
male sex of things is usually "[if player is butch]You guide your cock to his waiting entrance and ease smoothly into their form. Your pre cum splashes out, lubricating the way as you drive harder and deeper, pulling them back against your rocking motions until you fill their bowels with thick gouts of seed, groaning with relief.[end if][if player is not butch]You approach the [printed name of noun] and reach for their cock, but they refuse you, instead grabbing at your hips and moving into position against you. Soon they are pistoning against you, rocking deeper with every stroke along your sensitive loins as you both sing in pleasure. You can feel their seed spraying deep into your waiting womb as your body shudders in climax.[end if]".
female sex of momma nido is "[if player is butch][one of]The matronly looking creature looks at you as you approach with your jutting cock. She smiles and extends her hands to you. You move into her embrace eagerly, grinding your arousal to her urgently. She makes soft soothing sounds at you as she leans you back slowly, then swats you firmly on the ass, [apostrophe]Naughty boy, you will not play with mother like that,[apostrophe] she chastises with a grin. She slides up against you and starts to stroke over your excited pole, bringing you to full hardness, then keeping you on the edge as she coos into your ear. Your body trembles as your seed begins to spill wildly, spraying across the both of you before she finally releases you.[or]You sneak up behind [Noun], hoping to catch her by surprise. Just as you move to leap at her, her thick tail slices across the ground and you're sent sprawling. She is on you in a flash, pulling your rump into her lap and starting to smack it with the flesh of her palm, bringing shameful burning stinging to your butt as she dispenses maternal justice. Only after it feels like you're glowing red does she flip you over and cradle you like a baby against her curvaceous form, slowly stroking your member hard, then to bursting, letting you spray your hot cum across yourself as her soft fingers work at you.[at random][otherwise]You approach [Noun] and smile at her, and she smiles back. As if sensing your urge, she reaches for your hips and pulls you closer, [apostrophe]I know you're becoming a big girl, but I can not fulfill you that way. Lay back and I will put that fire out for a little while.[apostrophe] She soon has you on your back and her soft fingers are flicking over your netherlips, teasing and taunting you to a fever pitch as she plays you like an instrument. Your body goes rigid as you reach climax, then another, trembling under her unending assault on your cunt, smearing your flowing honey across your form as she works. Eventually, with your body limp and sated, she rises, looking satisfied.[end if]".
female sex of coyote is "[if noun is compatible][one of][Noun] barks softly at you and you freeze in place as if struck with lightning. She approaches and runs her soft hands over your sides, crossing together at your cock. As she slowly strokes along it, your body begins to relax, the effects of her bark wearing off. You lean in and lick at her snout, and she returns the favor, then she shoves. You are soon on your back, with her settling on top of you, guiding your cock into her waiting wet depths. She begins to moan and pant, long tongue dangling, as she rides you energetically. You watch her many breasts jiggle with every bounce and reach, caressing and stroking at them until climax strikes. You grab for her hips and pull her down into a thrust, locking your knot in her and filling her as you both howl your pleasure.[or]You approach [noun] with a grin and bark at her. She yips in return, then goes to all fours, raising her tail at you and wagging her bottom. You need no further permission, and leap atop her, grabbing her shoulders and starting to pound into her body. Her curvy form bounces and jostles with each motion as the both of you groan and pant with delight. You slide in closer to her, letting your large balls slap against her as your hands explore the soft warmth of her many breasts. Your knot pops into her, making your motions shorter, sharper, then the bliss hits peak. You howl as you fire thick jets of seed into her waiting cunt.[at random][otherwise if noun is neuter and noun is not tauric]You feel uncertain a moment, approaching something that has the curves you lust for, and a cock as well, but the lust wins out. You grab [noun] and lick her cheek before you thrust right up into her without foreplay. She takes it with grace, grabbing your ass firmly and driving her thick cock against your belly. You rock against one another with increasing anxiety until you both release in powerful torrents. Seed flowing into her womb as hers splatters messily over your belly.[otherwise]You creep up on [Noun] from behind before hugging from behind and shoving your large cock into their waiting passage. You begin to pant as you casually rape them, though they seem to be growing warm to the attention as it goes on. They do make a delightful yelp as your swollen knot is forced into them, then your seed flows, rushing deep within their trembling body.[end if]".
[male sex of coyote is "";]
male sex of felitaur is "[if noun is tauric and noun is male]You approach [Noun] and seize his rear hips, drawing him back as you rear up and slide onto his back. Your lower breasts tingle with delight as they brush against his back and your cock slips free. He wriggles under you almost nervously as you line up your huge member, then push it into his waiting pucker. The fit is quite tight, almost too much, but he loosens with every push, and the two of you begin to rock together before you make a mess of the area, seed firing so thickly that it back washes over your own balls and the ground beneath your legs.[end if][if noun is not tauric and noun is male]You grab for them and they resist, grabbing at your own breasts. They bite and nibble at the great spheres, making you mewl and purr with pleasure. Your milk, unbidden, spills out from your excited teats, leaking down your front and across [Noun]'s chest. [Noun]'s arousal pushes up against your sexless frontgroin and you growl, nudging him forward and swinging around, offering your vast rump to him. He moves up and takes a hold of your rear hips, pushing himself into you and starting to rut, rocking with you until warmth rushes out into your waiting womb.[end if]".
female sex of felitaur is "[if noun is neuter and noun is tauric]You smile at [Noun] knowingly and she smiles back. With barely a hint of foreplay, she turns and raises her tail for you, and you are on her, sliding your breast filled underbelly along her top until your top breasts mash against her upper torso. You hug her from behind, caressing her own breasts as your shaft pistons smoothly in and out of her form. You sing loud feral cries of bliss together as your body's move in heavenly union before you are both sent to shuddering spasm, her womb filled with your offering.[end if][if noun is neuter and noun is not tauric]How curious, [Noun] is a hermaphrodite like you, but missing mass. You approach her carefully, nuzzling into her cheeks, caressing her breasts and rubbing your own against her. Soon she is warmed up and submits to being laid down. You clamber over her, rubbing your big breasts against her front as you sink wetly into her waiting snatch. [Noun]'s cock drives up through your lower belly breasts, rocking with you. When you hit peak, so does [Noun], painting your great breasts with big gobs of fertile seed as you pump your own deep into her.[end if][if noun is tauric and noun is female][end if][if noun is not tauric and noun is female]You approach [Noun], rubbing over your breasts lightly before you are close enough to caress [Noun]'s, purring at her. She reaches to return the favor, exploring one another quietly as your shaft spills to the air, becoming long and hard. She notices the huge member and nods at you. You guide her to all fours and slip in over her, moving her body into the channel between your large lower breasts and easing your hungry member into her eager cunt. You begin to pound against her, giving her a thorough breeding as your large balls tense, spilling seed into her slickened, hot tunnel, mewling with satisfaction.[end if]".
male sex of uberfox is "You are just about ready to mount [noun] when some terrible new instinct siezes you. You slowly step off of [noun] and back away, growling. Your sexual lust snuffed like a candle for a moment. It seems you just can't force yourself upon things.".
female sex of uberfox is "[if noun is compatible][one of]You and [Noun] approach one another eagerly and snuffle across snout and necks as nips are exchanged. She rolls over onto her back and you slide up on top of her. Your breasts mash against hers in a burst of pleasure as you dip your snout between her hindlegs and begin slurping at her cock. Your own is engulfed in her snout and the bliss only increases. You seal to one another, licking, drooling and growling mutual affections until seed is sprayed wildly across tongue and snout.[or][Noun] notices your attention and snarls before dashing off. You are left dejected, ears drooping a moment before something lands on your back. Something heavy, but soft. Breasts run along your fur and you shiver, glancing over shoulder to see [Noun] mounting you. Thick fox cock pushes into your new vulva and you two are soon rocking against one another as eager lovers, howling your pleasure and spreading your pheromones to the dismay of any humans nearby. When [Noun] hits peak, you feel his knot slam into you, a moment of pain before warmth floods into your womb and soft shudders of delight rock your form.[or]You bury your nose under [Noun]'s tail a moment, snuffing at them before pulling yourself up on top. They arch their back as your breasts slide along it and you sink your teeth into their neck from behind. Your shaft thrusts into their sopping wet cunt and you rock against then, drawing out yelps and yips of rising intensity before your balls clench and you force your knot into the bitch, flooding them with your virile seed.[or][Noun] presses her snout to yours. Tongues flick out against one another as you kiss one another in a bestial way, pressing closer and closer until you roll onto your side and she slides up beside you, grabbing at you with her paws clumsily as you start to grind together. Thick organs press up into the abundant, soft, breast flesh of the other as you begin to titfuck together, whining and growling between tough, loving nips across neck and cheeks. [Noun] shudders, then howls, spraying your front with sticky seed. You roll over on top of her, rocking all the harder before your own tool stiffens, and you return the favor, painting her with thick gobs of fox cream.[at random][otherwise]You approach [Noun], tails flagged, eager to show them just how you want to make love to them, but then your shaft goes soft and your mind goes blank. You find yourself unable to complete the act, left standing there a moment or two in frustration.[end if]".
male sex of centauress is "[if noun is tauric]You turn and present your rump towards [Noun], shaking it slowly as they step up behind you. Their weight is delicious on your back, but nothing compared to the delight of feeling them pressing into your hungry cunt. Your body does not consume this male, no, there are other uses for nice stiff members. You start to drive back against [Noun], and he thrusts all the harder into you, moving against one another in lustful dancing. Your hoofs clop as you get better footing. As the tension hits breaking point, his seed gushes out into you in powerful waves, leaving you floating in place a moment, dizzy with pleasure.[otherwise]You suddenly grab at [noun] and hoist them up against your upper chest. You wrap delicate fingers around his shaft, stroking it towards hardness as he is lifted just high enough to drive that member into the deep soft channel of your breasts. He needs little further prompting and begins to rock against you, making love to your jiggling breasts as your hands support his ass and fingers squeeze gently at him. As he rises swiftly towards release, he grabs at your higher, larger, breasts, pinching and caressing as he moans, spraying your front with thick gobs of seed, raining down between your breasts and across your chin. You set the pleasured male back to the ground, patting [noun] on the head.[end if]".
female sex of centauress is "[if noun is not tauric]You approach [Noun] and reach for them. Your soft hands trail along your sensitive curves as you smile at them. As they become relaxed, you lift them into the air and put your warm tongue to work, flicking over nipples, then down over belly, giving a playful nip as they are raised higher still. Soon their groin is level with your face, and you nuzzle into them, licking and nibbling at them, driving wild moans from [Noun] as they wriggle in your grasp and grab at your hair. With a sudden ecstatic squeal from them, you set their still quivering form back to the ground.[otherwise][Noun] marches up to you and you reach out for them, soon hugging tightly to their front, mashing chests together as your hands wander the back of their upper torso. Tongues dance in frantic kisses as you purr and coo to one another, cuddling affectionately without regard for what's going on around.[end if]".

Does the player mean kissing an infection model: it is very unlikely.

before kissing something(called N):
	if N is an infection model:
		repeat with p running through npc touchable people:
			if ctype of p is N:
				now N is p;
				break;
	if N is not a person:
		say "It's not even alive...";
		stop the action;


instead of kissing something(called noun) when the ctype of pelvis is demonic mouse and the tf table of the noun is not table 0 and the tf table of the noun is not table demonic mouse:
	 try attacking the noun;

instead of kissing something(called noun):
	if the noun is the player:
		let P be a random not infected body part;
		if the player is butch and the player is femme:
			say "You take a moment to explore you enhanced sexuality, stroking your rock hard member with one hand while the other explores wantonly across your eager feminine entrance. The world seems forgotten for one blissful moment as you yelp, spraying seed and oozing honey from your twin sexes as climax rocks your form.";
			if P is not nothing and the tf table of pelvis is not table 0 and the tf table of pelvis is not table female human:
				say "Some of your heated fluids drip onto your [P] and it changes.";
				infect P with pelvis;
		otherwise:
			if the player is femme:
				say "You run eager hands down to your hot and needing lips, gently stirring yourself to rapture. As your clit begins to throb, you bring a thumb up to slowly tease over it, pressing a finger teasingly into your sopping wet hole. Heedless of what's around you, you shudder and wail with a sudden intense climax.";
				let P be a random not infected hand;
				if P is not nothing and the tf table of pelvis is not table 0 and the tf table of pelvis is not table female human:
					say "Some of your heated fluids drip onto your [P] and it changes.";
					infect P with pelvis;
			if the player is butch:
				say "You clasp your shaft in a hand and begin a slow stroking motion, rocking your hips against it as your eyes drift shut. Soft gasps escape from you, turning to louder and louder grunts like a wild stallion before you blow your load in a satisfying series of sprays.";
				if P is not nothing and the tf table of pelvis is not table 0:
					say "Some of your potent cum drips onto your [P] and it changes.";
					infect P with pelvis;
			if the player is not butch and the player is not femme:
				say "Sexuality is difficult in your current condition. Your hands wander fruitlessly over your form, but you lack the organs to truly enjoy the experience. Perhaps you will find relief in another's arms.";
		stop the action;
	if the tf table of pelvis is table huge dragoness:
		try grabbing the noun;
		stop the action;
	let Z be a pelvis;
	If the tf table of noun is table 0 or the tf table of noun is table female human:
		say "The [printed name of noun] looks confused at your advances."; 
		if a random chance of willpower of the noun in 20 succeeds:
			say "They resist the urge to play with you and struggle to get away.";
			if a random chance of reflex of the noun in 20 succeeds:
				say "They manage to wiggle away from you.";
				stop the action;
			otherwise:
				say "Despite their protests you manage to hold them still long enough to get the deed done.";
		otherwise:
			say "Perhaps it is your pheromones, or just the way you approach them, but they do not resist.";
	let zoidberg be 0;
	if ( the noun is male or the noun is neuter ) and the player is femme and a random chance of 1 in 2 succeeds, now zoidberg is 1;
	if ( the noun is female or the noun is neuter ) and zoidberg is 0:
		if the pelvis is secret:
			say "She notices that you have something covering your groin and she can do little more than paw at you wantingly.";
			if the tf table of pelvis is not the tf table of the noun and ( tf table of pelvis is table 0 or tf table of pelvis is table female human), infect pelvis with noun;
			stop the action;
		let zeptoid be 1;
		if the player is femme:
			if the player is butch and a random chance of 1 in 2 succeeds, now zeptoid is 0;
		if the player is butch and zeptoid is 1:
			say "[female sex of ctype of pelvis]";
	[		increase the willpower of ctype of the player by a random number from 0 to 2;]
			if mouse cock is visible:
				say "Your new pink cock suddenly swells inside the female. You can feel a renewed surge of fluids as she writhes and gives a sudden distressed noise. Her body begins to shift to a red/black color as the ground beneath her crumbles and she falls to the netherworlds, corrupted and prepared.";
				remove the noun from play;
				increase fucked by 1;
				stop the action;
			if a random chance of 1 in 3 succeeds and the pregnant of noun is 0 and ctype of pelvis is not sterile and the ctype of noun is not semifertile:
				say "[line break][The noun] groans and rubs at her belly as it swells with your potent seed.";
				increase the pregnant of noun by 1;
			now the noun is fertilized;
			if the tf table of pelvis is not table 0 and the tf table of pelvis is not table female human and the tf table of noun is table 0:
				infect the noun with pelvis;
			if the TF table of pelvis is not tf table of noun:
				if tf table of pelvis is table 0 or tf table of pelvis is table female human:
					infect Z with the noun;
					if the tf table of ctype of noun is table horse mare:
						grow horse cock from pelvis;
			otherwise:
				now Z is a random not infected exposed body part;
				if Z is not nothing and tf table of noun is not table 0 and tf table of noun is not table female human, infect Z with the noun;
				if pregnant of noun is 0:
					if the mother of the noun is greater than 0 and the ctype of noun is cat girl and a random chance of willpower of ctype of the player in 20  succeeds:
						try examining the player;
						say "[bold type]     You settle with the feline, who leans in and kisses your cheek before she begins to speak. She tells you about her life before she became a cat girl, and you tell her about yourself. With introductions exchanged, you feel the fire in your loins turning down to a low roar, and you feel more affection for her than lust. You both rise up and take hands, deciding silently to remain a couple and make your way quietly and stealthily from the city.";
						if the nursing of the player is not 0, say "     The small feline attached to your chest becomes like a daughter to the both of you. Though you try to 'raise' her, she never grows taller or matures. She is not stupid, however, and picks up on things eagerly. She does not pick up on boundaries, however, and refuses to consider the idea that mommy and daddy may want alone time. After trying to evict her from their sex life several times, she is finally admitted in, and becomes an eager participant in all play.";
						now altending is 1;
						end the story saying "You escaped the infection alive but forever changed.";
						stop the action;
			stop the action;
		otherwise:
			if corruption is greater than four:
				say "You have little interest in other females. Your new form yearns for the virile energy of a male.";
				stop the action;
			if the player is femme:
				say "[female sex of ctype of pelvis]";
			otherwise:
				say "[female sex of ctype of pelvis]";
		stop the action;
	if the noun is male or the noun is neuter:
		if corruption is 5 and the noun is not a monster:
			say "You take the helpless mortal and taunt him with the sinful appeals of your new body. As his hand grab clumsily over your furry form, you move  to disrobe him, whispering sweet nothings even as demonic energy builds within you. When he has lost all control, and is rutting with you wildly, you draw upon him, snatching his vital force to flow rapidly into your body. Your senses go white as the curse is sealed within you, and your patron whispers into your large ears, calling for you to return to the netherworlds.";
			increase corruption by 1;
			now altending is 1;
			end the story saying "As the victim of your urges squirms in torment, the earth splits asunder beneath you, drawing you down through lava forged caverns. Scrambling against the sides that batter against your form does little to slow your descent, landing heavily in an ornate pentagram. Your mistress stands just outside it, taller than the other mice, more a rat, tall and wicked. She reaches through the circle and grabs you by the back of your neck before you can recover and affixes a sold gold collar around your neck.[line break][line break]'You, my newest pet, will serve me well. Fear not, I am a benign prince, as demons go. If you bring me souls of the human kind, I will reward you and treasure you.'[line break][line break]Her words are sweet and soothing, the pain of the fall fading away as she pets over you slowly, rekindling the sinful flames of your lust. You are soon sent back to the mortal world, visiting dreams, or on lucky occasions, answering the call of naive sorcerers. Each mortal you seduce wins favor of your mistress. There are worse jobs to have.";
			stop the action;
		if corruption is 6, stop the action;
	if the player is butch:
[		if the noun is not neuter, say "You push [the noun] back as you kiss across his chest and grab at his hips. You swivel him around to present his rump towards you as you move into position, feeling steely hard and anxious.";]
		if the pelvis is secret:
			say "You realize at the last moment that your cock is covered with clothes and grunt with frustration.";
			stop the action;
		say "[male sex of ctype of pelvis]";
		if the TF table of pelvis is not tf table of noun:
			if Z is not nothing and tf table of pelvis is not table 0:
				infect Z with the noun;
		if the player is not femme, stop the action;
[		if the tf table of noun is table 0 and not a random chance of willpower of the noun in 10 succeeds:
			say "As if in a trance, they act against their higher will, obeying base urges instead.";]
		if the pregnant of the player is 0 and a random chance of 1 in 3 succeeds and the player is femme and ctype of pelvis is not semifertile:
			increase the pregnant of the player by 1;
		if the pregnant of the player is 1, say "The seed rushes up into your body with a shuddering explosion of pleasure as your belly swells forward.";
		now the player is fertilized;
	otherwise:
		if the player is femme and a random chance of one in 3 succeeds:
			say "[male sex of ctype of pelvis]";
			if the TF table of pelvis is not tf table of noun and a random chance of 1 in 3 succeeds:
				if Z is not nothing and tf table of noun is not table 0 and tf table of pelvis is table 0, infect pelvis with the noun;
			if the pregnant of the player is 0 and the ctype of pelvis is not semifertile and the ctype of pelvis is not sterile:
				increase the pregnant of the player by 1;
				say "Your belly swells round as the seed tingles inside of you with ominous warning.";
			now the player is fertilized;
		otherwise:
			say "You kneel before the [printed name of noun] and take his throbbing member into your mouth, suckling loudly and lewdly at him, stroking at him as you work your mouth back and forth along the excited pole. All too soon, they're exploding across lips and face, leaving you streaked with their salty deposit.";
			if the TF table of head is not tf table of noun:
				if Z is not nothing and tf table of noun is not table 0, infect head with the noun;
		if the player is femme and the tf table of pelvis is table latex fox and ctype of noun is latex prickvixen and the destined masculinity of the player is 0:
			now the prickpreg is 1;
	if the tf table of pelvis is not table 0 and the tf table of pelvis is not table female human and the tf table of noun is table 0:
		infect the noun with pelvis;

 
[kiss/sex with cat girl]
Does the player mean kissing the heavy person: it is very unlikely.
Does the player mean kissing the not heavy person: it is very likely.
instead of kissing a catty person: 
	if pregnant of the noun is not 0:
		say "She is not in the mood to mate, and turns you away.";
		stop the action;
	say "     The cat girl is all too eager to be affectionate with you, accepting your advance and taking you into her furry embrace with a loud purr." ;
	if pelvis is secret:
		say "     The cat girl notices you have pants on as she grinds lustfully against you. Her paws roam over your crotch, but she is unable to toy further with you.";
		if the tf table of pelvis is not table 20:
			infect pelvis with noun;
		stop the action;
	if mouse cock is visible:
		say "Your new pink cock suddenly swells inside the female. You can feel a renewed surge of fluids as she writhes and gives a sudden distressed noise. Soft mewls escape as her body begins to shift to a red/black color as the ground beneath her crumbles and she falls to the netherworlds, corrupted and prepared.";
		remove the noun from play;
		increase fucked by 1;
		stop the action;
	let Z be a pelvis;
	if the TF table of pelvis is table 20 or lioness cock is a part of the pelvis or the tf table of pelvis is table 22:
		say "     You start to rock against the feline, plunging your shaft deeper and deeper into her body as you grunt and gasp for air. Her claws rake over your body as she wails with delight, and you both climax loudly, powerfully.";
	[	increase the willpower of ctype of the player by a random number from 1 to 3;]
		if the TF table of pelvis is not tf table of noun and tf table of pelvis is not table 21  and tf table of pelvis is not table 22:
			if Z is not nothing, say "Your [Z] [secondary attack description of the  noun][line break]";
			if Z is not nothing, infect Z with the noun;
		otherwise:
			now Z is a random not infected exposed body part;
			if Z is not nothing, say "Your [Z] [secondary attack description of  the noun][line break]";
			if Z is not nothing, infect Z with the noun;
			if pregnant of noun is 0:
				if the mother of noun is greater than 0 and a random chance of willpower of ctype of the player in 20  succeeds:
					try examining the player;
					say "[bold type]     You settle with the feline, who leans in and kisses your cheek before she begins to speak. She tells you about her life before she became a cat girl, and you tell her about yourself. With introductions exchanged, you feel the fire in your loins turning down to a low roar, and you feel more affection for her than lust. You both rise up and take hands, deciding silently to remain a couple and make your way quietly and stealthily from the city.";
					if the nursing of the player is not 0, say "     The small feline attached to your chest becomes like a daughter to the both of you. Though you try to 'raise' her, she never grows taller or matures. She is not stupid, however, and picks up on things eagerly. She does not pick up on boundaries, however, and refuses to consider the idea that mommy and daddy may want alone time. After trying to evict her from their sex life several times, she is finally admitted in, and becomes an eager participant in all play.";
					now altending is 1;
					end the story saying "You escaped the infection alive but forever changed.";
					stop the action;
				now pregnant of noun is 1;
				say "The cat girl purrs and settles to the ground, rubbing her belly and looking sated, for now.";
				now the noun is pacified;
				now The description of the noun is "This strange creature  looks like a cross between a human and a feline, clearly female with huge bouncing breasts  and thick exposed vaginal lips. She looks calmer than other cat girls, rubbing at her mildly swollen belly and purring in a satisfied fashion.";
	otherwise:
		if the TF table of pelvis is table 21:
			say "     The cat girl starts to snuggle and lick at you, seemingly ready to mate when she notices your small furry snatch. She lifts you up and buries her larger snout into your small female sex, lapping eagerly. You squirm in place, moaning and squealing in delight.";
			say "     Your clit begins to throb and ache painfully a moment as the large feline licks over it, then it swells powerfully, growing into her mouth larger by the moment. With each ragged breath you draw, it becomes larger until you have a huge jutting shaft from your crotch. She purrs in delight and slides your shaft deep into her throat, drinking deep of your gushing cum. Her figure swells, breasts becoming fuller, hips becoming rounder, her belly swelling a little too. Her own clit throbs and surges forth, and she wraps her paw around it, only making it bigger with each squeeze.";
			grow lioness cock from pelvis;		
		otherwise:
			if Z is not nothing, say "Your [Z] [secondary attack description of the noun][line  break]";
			if Z is not nothing, infect Z with the noun;
	stop the action.

every turn while corruption is 5 and mouse cock is not visible:
	let q be a random number from 1 to 200;
	if willpower of ctype of the player is greater than q:
		now altending is 1;
		end the story saying "The burning urges within you cool, then die, leaving you shaken but still... yourself. At least mentally. Though you remain a red furred mouse, you feel you have passed some divine test, and have escaped the grasp of hell's minions, for today. Hope swelling in your new chest, you begin to flee the city. You are stopped by armed forces with automated weaponry, but a flash of bright white light whisks you safely to a far remote town. There, you are taken in by a priest who has had a vision of your coming.[line break][line break]Either in proving in God's humor, or in defiance of it, you become the priest's closest companion and play thing. He never marries, but you two are close enough to consider it the same. All is well until he dies of old age, and you feel as young as ever.";
	if an unchanged npc person is visible and a random chance of 1 in willpower of ctype of the player plus 5 succeeds:
		say "The urge becomes too great, and you quickly approach the closest male,";
		try the player kissing a random visible unchanged npc person;

 
every turn:
	if an ottery person is visible and the tf table of the head is table otter:
		let n be a random visible ottery person;
		if a random chance of 5 in the willpower of ctype of the player succeeds:
			say "It comes all too naturally to you. You are drawn towards your kin and begin playing with them without restraint.";
			try kissing n;
		otherwise:
			if a random chance of 5 in the willpower of ctype of the player succeeds:
				say "As if noticing your hesitation, one of the otters pushes you gently to the ground and raises your hips.";
				try submitting n;
	if a not heavy catty person is visible:
		let n be a random visible not heavy catty person;
		if a random chance of 1 in the willpower of ctype of the player succeeds:
			say "The urge becomes overwhelming and you approach [the N], Overcome with a an undeniable lust.";
			try kissing n;
	



Section - Sex/Herm Squirrel

does the player mean kissing something heavy: it is very unlikely;
 
 [kiss/sex with herm squirrel]
instead of kissing a squirrely person: 
	if pregnant of the noun is not 0:
		say "She is already heavily pregnant, but your advances are welcome anyway. Wrapping her paws around your hips, she seats you on the huge shelf of her breasts, swallowing your cock in her soft mouth. She sucks and gulps until you cum, her belly and breasts both swelling a little larger with your seed, then she lets you go, looking sated.";
		stop the action;
	say "     Delighted by your approach, the herm squirrel wraps her arms around you and presses her face and yours firmly together, kissing very passionately! Her breasts and cock grind against you, the girl horny from the encounter, and her soft big belly swells a little bit in her happiness." ;
	if pelvis is secret:
		say "     The herm squirrel notices you have pants on as she grinds lustfully against you. Her paws roam over your crotch, but she is unable to toy further with you.";
		if the tf table of pelvis is not table 55:
			infect pelvis with noun;
		stop the action;
	if mouse cock is visible:
		say "Your new pink cock suddenly swells inside the female. You can feel a renewed surge of fluids as she writhes and gives a sudden distressed noise. Her body begins to shift to a red/black color as the ground beneath her crumbles and she falls to the netherworlds, corrupted and prepared.";
		remove the noun from play;
		increase fucked by 1;
		stop the action;
	let Z be a pelvis;
	if the TF table of pelvis is table 55 or lioness cock is a part of the pelvis or the tf table of pelvis is table 22:
		say "     You start to rock against the squirrel, grinding your cock against her furry body, balls and belly. She senses your need and turns around for you, plunging your cock deeper and deeper into her hot cunt.  She sits on you, wrapping your arms around her pregnant belly, your hands sinking into the soft fur and softer, expanding flesh until you both cum.";
	[	increase the willpower of ctype of the player by a random number from 1 to 3;]
		if the TF table of pelvis is not tf table of noun and tf table of pelvis is not table 21  and tf table of pelvis is not table 55:
			if Z is not nothing, say "Your [Z] [secondary attack description of the  noun][line break]";
			if Z is not nothing, infect Z with the noun;
		otherwise:
			now Z is a random not infected exposed body part;
			if Z is not nothing, say "Your [Z] [secondary attack description of  the noun][line break]";
			if Z is not nothing, infect Z with the noun;
			if pregnant of noun is 0:
				if the printed name of the noun is "mother herm squirrel" and a random chance of willpower of ctype of the player in 20  succeeds:
					try examining the player;
					say "[bold type]     You settle with the feline, who leans in and kisses your cheek before she begins to speak. She tells you about her life before she became a cat girl, and you tell her about yourself. With introductions exchanged, you feel the fire in your loins turning down to a low roar, and you feel more affection for her than lust. You both rise up and take hands, deciding silently to remain a couple and make your way quietly and stealthily from the city.";
					if the nursing of the player is not 0, say "     The small feline attached to your chest becomes like a daughter to the both of you. Though you try to 'raise' her, she never grows taller or matures. She is not stupid, however, and picks up on things eagerly. She does not pick up on boundaries, however, and refuses to consider the idea that mommy and daddy may want alone time. After trying to evict her from their sex life several times, she is finally admitted in, and becomes an eager participant in all play.";
					now altending is 1;
					end the story saying "You escaped the infection alive but forever changed.";
					stop the action;
				now pregnant of noun is 1;
				say "The herm squirrel churrs and settles to the ground, rubbing her belly and looking sated, for now.";
				now the noun is pacified;
				now The description of the noun is "This strange creature  looks like a cross between a human and a squirrel, clearly female with huge bouncing breasts and clearly male with a huge jutting cock, fat sheath, and bloated balls. Behind her bushy tail  and heavy ass lie thick exposed vaginal lips. She looks calmer than other herm squirrels, rubbing at her mildly swollen belly and purring in a satisfied fashion.";
	otherwise:
		if Z is not nothing, say "Your [Z] [secondary attack description of the noun][line  break]";
		if Z is not nothing, infect Z with the noun;
	stop the action.

Every thing is either horny or not horny. A thing is usually not horny.

definition: A person (called N) is horny:
if the ctype of N is horny, yes;
no;


every turn:
	if a horny not heavy compatible person is visible:
		repeat with n running through visible not heavy horny compatible persons:
			if a random chance of 2 in the willpower of ctype of the player succeeds:
				say "You get a sudden urge to breed with [the n] and swiftly approach them with outstretched arms.";
				try kissing n;


Section - Sex/Felinoid

every turn:
	if a not out of play person is heavy:
		repeat with N running through heavy person:
			if N is the player, next;
			if the pregnant of N is not 0 and ctype of n is not sterile:
				increase the pregnant of N by a random number from 1 to 3;
				if the pregnant of N is greater than 30 and the ctype of N is semifertile and N is not fertilized, now the pregnant of N is 30;
				if the pregnant of N is greater than 30 and there are off-stage persons:
					now the pregnant of N is 0;
					now N is not fertilized;
					if N is visible, say "[The N] sinks to the ground and spreads her legs wide, huffing and panting for breath before a small creature spills from her distended sex onto the ground.";
					now N is not pacified;
					increase the mother of N by 1;
					if there are off-stage persons:
						let z be a random off-stage person;
						now the tf table of z is the tf table of N;
						tf z;
						move z to the location of n;
						if z is visible, say "[The Z] shakes off birthing fluids and begins to grow rapidly, soon full sized and ready for action.";
						now the matron of Z is the matron of N;
	if a Lioness is visible and the nursing of the player is 0:
		repeat with N running through visible lionette people:
			if a random chance of 1 in the willpower of ctype of the player succeeds and nursing of the player is 0:
				if chest is secret:
					if a random number from 1 to reflex of player is less than a random number from 1 to reflex of N:
						say "    The small cat lashes out with her claws, destroying your shirt!";
						let H be a random topped worn clothing;
						try silently taking off H;
						try silently dropping H;
						remove H from play;
					otherwise:
						say "     The small cat reaches up towards you and you pick her up against better judgement. She nuzzles at your chest wantingly, but your shirt is in the way. She tries to claw at it and you quickly set her back down.";
				otherwise:
					say "     The small curvy feline approaches and  looks up at you imploringly. Against your better judgement, you reach down and pick her up. She leans in and begins to eagerly suckle at your chest.";
					if the TF table of chest is not table 21 and the tf table of chest is not table 22:
						infect chest with N;
						say "     As the small cat nurses on you, your chest becomes covered with tawny brown fur and your B cup breasts begin to lactate into her eager maw. You feel your willpower ebbing as pleasure seers through your nerves at the delightful sensations.";
					otherwise:
						say "     The small cat's teeth chew at your own thick black teats and she begins to drink eagerly. You were not aware you were able to lactate, but she proves it in debilitating waves of delight.";
					remove N from play;
					now the nursing of the player is 1;
					decrease the willpower of ctype of the player by a random number from 0 to 2;
	if the nursing of the player is not 0:
		if a random chance of willpower of ctype of the player in 30 succeeds or the tf table of the chest is table 22:
			say "You manage to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
			now the nursing of the player is 0;
			repeat with Q running through off-stage monster persons:
				if no monster person is selected and the TF Table of Q is table 21, now Q is selected;
			let Q be a random selected monster;
			if Q is not nothing:
				move Q to the location of the player;
				now Q is not selected;
			if tf table of chest is table 22:
				now the tf table of Q is table 22;
				say "The small cat girl shudders and moans as your milk causes an internal change within her.";
		otherwise:
			say "     The bundle in your arms remains firmly attached, drinking hungrily from you and making it hard to concentrate. It seems no amount of your milk sates the busty feline as she snuggles against you.";
			if the tf table of chest is table 21:
				now the desc of chest is "You have the chest and back of a small lioness with huge D cups, black nipples aroused and displayed and leaking a thick cream that runs down into your fur if it isn't being drunk constantly.";
			choose row with Segment of "full" in table 21;
			now desc text entry is "You are a female lioness. You are only about four feet tall, though you have huge D cups for your height and your exposed sex is swollen and dripping with need. Your nipples are visible and black, begging to be sucked on, leaking a constant stream of thick cream down your front.";
			choose row with Segment of "chest" in table 21;
			now desc text entry is "You have the chest and back of a small lioness with huge D cups, black nipples aroused and displayed and leaking a thick cream that runs down into your fur if it isn't being drunk constantly.";
			if the willpower of the player is greater than 1 and a random chance of 1 in 3 succeeds, decrease the willpower of ctype of the player by 1;
			if the TF table of chest is not table 21 and the tf table of chest is not table 22:
				infect chest with a random lionette person;
			
	


[behavior.sex end]

[Behavior.Clothing start]

Part - Items

totalwin is a number that varies. Totalwin is usually 0.

every turn while totalwin is 0:
	let n be the number of on-stage monster persons;
	let i be 0;
	if an infectitem thing is not out of play:
		now i is 1;
	if n is 0 and i is 0:
		say "You have cleared the city of infection against all odds! When you are found, it is as a successful survivor. The quarantine on the city is lifted and you are permitted to join polite society, not only as a free citizen but as a hero, celebrated for your achievement.";
		end the story;

A thing is either infectitem or not infectitem.  A thing is usually not infectitem.

every turn:
	if an infectitem thing is not out of play: [deals with automatically consuming infectable items]
		repeat with I running through not out of play infectitem:
			repeat with J running through unchanged people in the location of I:
				if a random chance of 1 in the willpower of J succeeds and I can touch J and randominfection is 1:
					if the player is holding I and J is not the player:
						say "[The J] approaches you and looks at the [I] with a curious expression. Part of you wants to spare them from the infection, but you end up handing it over to them anyway.";
						try silently dropping I;
					if J is not holding I, try silently J taking I;
					if I is a drink:
						try silently J eating I;
						if j is the player:
							say "You're  not sure why you just drank that.";
					if I is edible:
						try silently J eating I;
						if j is the player:
							say "You're  not sure why you just ate that.";
					if I is wearable:
						try silently J wearing I;
						if j is the player:
							say "You're not sure why you just did that.";
					if I is readable:
						try silently J reading I;
						if j is the player:
							say "You're not sure why you just read that.";


Section - Wear

clothing is a kind of thing.
clothing is wearable.
clothing has some text called clothing type. The clothing type of clothing is usually "shirt".
The tf table of clothing is usually table 0.
a body part can be secret or exposed. A body part is usually exposed.

Definition: A clothing (called N) is worn if the player is wearing N;
Definition: A clothing (called N) is topped if the clothing type of N is "shirt";
Definition: A clothing (called N) is bottomed if the clothing type of N is "pants";
Definition: A clothing (called N) is footed if the clothing type of N is "shoes";
Definition: A clothing (called N) is hat if the clothing type of N is "headwear";


The player has a number called shirt. Shirt is 0.
The player has a number called pants. pants is 0.
The player has a number called shoes. shoes is 0.
The player has a number called headwear. headwear is 0.
Does the player mean taking off something not worn: it is very unlikely.
Does the player mean wearing something worn: it is very unlikely.


before wearing the stomach pouch:
	say "The pouch sticks to your belly suddenly. It feels like you were struck with a lightning bolt, then a giddy pleasure builds as something happens.";
	infect the gut with the noun;
	remove the noun from play;
	stop the action;
	
before wearing something: [makes sure your not already wearing something there and if so stops]
	if noun is not clothing:
		say "[The noun] does not appear to be clothing. Why are you trying to wear it?";
		stop the action;
	let x be clothing type of noun;
	if clothing type of noun is "shirt":
		if shirt of player is 1:
			say "You are already wearing a shirt.";
			stop the action;
	otherwise if x is "pants":
		if pants of player is 1:
			say "You are already wearing pants.";
			stop the action;
	otherwise if x is "shoes":
		if shoes of player is 1:
			say "You are already wearing shoes.";
			stop the action;
	otherwise if x is "headware":
		if headwear of player is 1:
			say "You are already wearing a hat.";
			stop the action;
	otherwise if x is "headwear":
		if headwear of player is 1:
			say "You are already wearing a hat.";
			stop the action;


after wearing something: [infects if clothing is infectable, otherwise conceals]
	let x be clothing type of noun;
	if x is "shirt":
		say "The shirt conceals your torso and arms from view, and may provide protection.";
		if the tf table of the noun is not table 0:
			infect chest with the noun;
			infect left forearm with the noun;
			infect right forearm with the noun;
			infect gut with the noun;
			infect left upper arm with the noun;
			infect upper right arm with the noun;
			remove noun from play;
		otherwise:
			now the chest is secret;
			now left forearm is secret;
			now right forearm is secret;
			now gut is secret;
			now left upper arm is secret;
			now upper right arm is secret;
			now shirt of player is 1;
	otherwise if x is "necklace":
		say "The necklace drapes over your chest.";
		if the tf table of the noun is not table 0:
			infect chest with the noun;
			remove noun from play;
	otherwise if x is "pants":
		say "You pull on some pants and feel more secure.";
		if the tf table of the noun is not table 0:
			infect pelvis with the noun;
			infect left thigh with the noun;
			infect right thigh with the noun;
			infect rear with the noun;
			infect left shin with the noun;
			infect right shin with the noun;
			remove noun from play;
		otherwise:
			now the pelvis is secret;
			now left thigh is secret;
			now right thigh is secret;
			now rear is secret;
			now left shin is secret;
			now right shin is secret;
			now pants of player is 1;
	otherwise if x is "shoes":
		say "You put on some shoes and feel more secure in the fact that your feet are now protected.";
		if the tf table of the noun is not table 0:
			infect left foot with the noun;
			infect right foot with the noun;
			remove noun from play;
		otherwise:
			now left foot is secret;
			now right foot is secret;
			now shoes of player is 1;
	otherwise if x is "headwear":
		say "You put on [the noun] and feel safer.";
		if the tf table of the noun is not table 0:
			infect head with the noun;
			remove noun from play;
		otherwise:
			now head is secret;
			now headwear of player is 1;

after taking off something: [informs of exposure and sets parts as exposed]
	let x be clothing type of noun;
	if x is "shirt":
		say "Your torso is now exposed.";
		now the chest is exposed;
		now left forearm is exposed;
		now right forearm is exposed;
		now gut is exposed;
		now left upper arm is exposed;
		now upper right arm is exposed;
		now shirt of player is 0;
	otherwise if x is "pants":
		say "Your bottom half is exposed.";
		now the rear is exposed;
		now left shin is exposed;
		now right shin is exposed;
		now pelvis is exposed;
		now left thigh is exposed;
		now right thigh is exposed;
		now pants of player is 0;
	otherwise if x is "shoes":
		say "Your feet are now exposed.";
		now the right foot is exposed;
		now left foot is exposed;
		now shoes of player is 0;
	otherwise if x is "headwear":
		say "Your head is now exposed.";
		now the head is exposed;
		now headwear of player is 0;

Instead of a person (called the wearer) wearing a thing(called the victim): [controls npc's wearing of wearables]
	try silently wearer taking the victim;
	if the tf table of victim is table 0:
		if wearer is visible, say "[The wearer] picks up [the victim] and wears it.";
	otherwise:
		if wearer is visible, say "[The wearer] picks up [the victim] and wears it. They look slightly odd afterwards.";
		infect wearer with victim;
	remove victim from play;
	stop the action;

Section - Eat

Understand "drink [something]" as eating.  drink is a kind of thing. A drink is edible.

Instead of eating a thing(called the victim): [controls players eating of things and infection if applicable]
	if the victim is not edible:
		say "That just doesn't look very appetizing.";
		stop the action;
	if the victim is not held, try silently taking the victim;
	if the tf table of victim is table 0:
		if the victim is not a drink:
			say "You pick up [the victim] and eat it.";
		otherwise:
			say "You pick up [the victim] and drink it.";
		remove victim from play;
	otherwise:
		if the victim is not a drink:
			say "You pick up [the victim] and eat it. Your tummy feels odd.";
		otherwise:
			say "You pick up [the victim] and drink. it. Your tummy feels odd.";
		remove victim from play;
		if rabbit vagina is not visible and the tf table of the victim is table 22: [special case for easter egg]
			grow rabbit vagina from pelvis;
[		if the tf table of * is not the tf table of the victim:
space for special cases like rabbit vagina
]		
		otherwise:
			if the tf table of gut is not the tf table of the victim: [infects gut for standard edibles]
				infect the gut with victim;
			otherwise:
				let Par be a random touchable not infected body part; [infects other parts if gut already infected]
				if par is not nothing:
					infect par with the victim;
				otherwise:
					repeat with part2 running through touchable body parts:
						if the tf table of part2 is not table 22:
							now par is part2;
							break;
						[now part2 is nothing;]
					if par is not nothing:
						infect par with the victim;
	stop the action;

Instead of a person (called the eater) eating a thing(called the victim): [controls npc's eating of edibles]
	try silently eater taking the victim;
	if the tf table of victim is table 0:
		if eater is visible, say "[The eater] picks up [the victim] and eats it.";
	otherwise:
		if eater is visible, say "[The eater] picks up [the victim] and eats it. They rub their belly afterwards.";
		infect eater with victim;
	remove victim from play;
	stop the action;

Section - Read

Reading is an action applying to one thing.  Understand "peruse [something]" as reading.
Understand the command "read" as something new. 
Understand "read [something]" as reading.
A thing is either readable or not readable.  A thing is usually not readable.

before reading Chakona Tails:
	if the player is butch:
		say "You start to read through the magazine, at first snickering, but then becoming engrossed. You lose track of time as you focus on the words, then lose them. You're standing in a grassy field, naked as the day you were born. It's a nice sunny day though, and you feel comfortable. Your partner and lover is beside you. She(or is that shi?) has carried lunch here on her broad back.[line break][line break]She looks to you with those brown eyes and a smile on her fanged and long snout. You can't seem to remember how you met her, but you love her. You embrace her upper torso firmly, mashing her huge breasts against your chest as you kiss her. She bursts into delighted giggles as her long tongue flickers over your lips. You, in turn, move your hands back and grab at her soft breasts. Her breasts are enormous, perfectly round cushions of joy. There are four on her chest, and you begin to play with them in earnest as you cock grows hard against her, sliding against the fur of the lower pair as you work.[line break][line break]She begins to make soft growling and whining sounds, enjoying your touches. 'Enough', she suddenly says, stepping back on her graceful paws. It is something of a wonder that she remains so agile, with her lower torso bearing equally enormous pillows, big enough to take up all the space between all four legs in many rows of milk producing hedonism. Despite this, she gingerly turns around, raising her long feline tail to reveal her pouting nethers. Beneath, large furry balls and the start of a sheath. You've seen that thing ready before, ready for a horse. That isn't your concern right now though.[line break][line break]You hurry up behind her and grab around her lower hips, pulling her back as you sink into her. Your cock tingles with delight as her wet tunnel grasps tightly at you, and you begin to make love. You lose track of how long you go at it, but eventually you're standing with the magazine again. Something feels different...";
	otherwise if the player is femme:
		say "You browse the magazine a little cautiously, curious as to what's inside. Woah, four legged centaurs, but cats, and they're, ugh, doing it on every couple of pages. You don't stop reading despite the initial revulsion, however, and get lose in it. You're in your bedroom. No, not that small apartment. You have a nice big bedroom, with a big soft bed. You know, you're on it, wearing nothing but a bath robe over yourself. [line break][line break]Your lover, a big feline taur with a charming smile, comes padding in, her many breasts all jiggling. You do wonder how she manages to carry them all without discomfort, but she never so much as stumbles, let alone gripes of weight. She reaches the side of the bed and rears up onto it, 'My love,' she whispers, 'I can smell you, you are in season. Allow me to satisfy you.'[line break][line break]It was true. Your cunt was tingling with need, and your lover was very good at taking care of that itch. You smile at her and reach, tweaking her large nipples slowly, teasing her. She was like a man this way, if you let her, she'd leap on you and get to business, but it's so much nicer to work up to it. You have her squirming in place, her huge shaft jutting powerfully. It's at least two feet long, with stiff fleshy barbs near the tip. Those tips had scared you witless the first time, now you only lick your lips with anticipation.[line break][line break]You can't keep her on edge forever, she eventually advances on you, ignoring your complaints and pressing you back onto the bed. Your face becomes lost in furry breasts as she works her member deep into your body. Size is no concern to her, seeming to stretch you right out to your maximum point and no further. Your body explodes in delight, and you lose all sense of self as the pleasure builds so rapidly and never lets up. You're not even sure when you stopped reading...";
		increase the pregnant of player by 1;
	otherwise:
		say "Just stupid furry stuff, and they're having sex. In your current sexless state, this has no interest for you at all, stupid junk. You stop reading.";
		stop the action;
	remove the noun from play;
	infect the pelvis with noun;
	infect the rear with noun;
	grow feline torso from rear;
	infect right thigh with noun;
	infect left thigh with noun;
	infect left shin with noun;
	infect right shin with noun;
	infect right foot with noun;
	infect left foot with noun;
	stop the action;

Carry out reading a thing (called victim):
	if the victim is not readable:
		say "[The victim] doesn't seem to have anything to read on it.";
		stop the action;
	if the victim is not held, try silently taking the victim;
	if the tf table of victim is table 0:
		say "You pick up [the victim] and read it.";
		stop the action;
	remove victim from play;
	say "You pick up [the victim] and read it. Your head feels odd.";
	if the tf table of head is not the tf table of the victim: [infects head for standard readables]
		infect the head with victim;
	otherwise:
		let Par be a random touchable not infected body part; [infects other parts if head already infected]
		if par is not nothing:
			infect par with the victim;
		otherwise:
			repeat with part2 running through touchable body parts:
				if the tf table of part2 is not table 22:
					now par is part2;
					break;
				now part2 is nothing;
			if par is not nothing:
				infect par with the victim;
	stop the action;

Instead of a person (called the reader) reading a thing (called the victim): [controls npc's reading of infectables]
	try silently reader taking the victim;
	if the tf table of victim is table 0:
		if reader is visible, say "[The reader] picks up [the victim] and reads it.";
	otherwise:
		if reader is visible, say "[The reader] picks up [the victim] and reads it. They scratch their head afterwards.";
		infect reader with victim;
	remove victim from play;
	stop the action;

[Behavior.Clothing end]

[Creatures start]

Book 4 - Creatures

[Definitions/descriptions for monsters.  Needs matching table (Book 1 - Tables).  Too many monsters in game can causes slow down.]

Section - Big Booby

A big booby is a infection model.  The description of a big booby is "A large humanoid version of a bird known as a blue-footed booby.  Covered in black and white feathers with a blue beak and legs.."  The TF table of a big booby is Table 10.

The move rate of a big booby is 2.
The attack rate of a big booby is 2.
The reflex of a big booby  is 10.
The primary attack description of a big booby is "fluffs his feathers as he charges, his needle like beak piercing".
The TF description of a big booby is "seems to burst in a shower of feathers, leaving a rather ridiculous looking".

The booby tail is a kind of body part.  The body part origin of the booby tail is "rear".  The shift of the booby tail is "With a funny little pinch a length of black feathers fan out from your rear."  The desc of the booby tail is "You have a fan of black feathers for a tail."  The TF table of the booby tail is Table 10.

The boar tail is a kind of body part.  The body part origin of the boar tail is "rear".  The shift of the booby tail is "With a feeling much like a fart a long ropy tail flops from your rear, tipped in a brush of stiff black hairs."  The desc of the boar tail is "You have a ropy brown boar's tail."  The TF table of the boar tail is Table 12.

Section - Circe

A Circe is a infection model.  The description of a Circe is "The woman before you has unearthly beauty, but she views the world around her with contempt."  The TF table of a Circe is Table 12. Circe is female. Circe is unique.

The move rate of a Circe is 4.
The attack rate of a Circe is 6.
The reflex of a Circe is 30.
The attack type of a Circe is "spray".
The primary attack description of a Circe is "The ancient sorceress Circe waves her hands, intoning an ancient spell which fills the area with light.".
The TF description of a Circe is "cackles with sudden glee as their form shifts and molds into".

Section - Boar Man

A boar man is a infection model.  The description of a boar man is "This man appear to be a rather fat boar creature, but closer examination reveals his stocky frame carries a good deal of muscle as well.  But the stench is absolutely horrid."  The TF table of a boar man is Table 12.

The plural of boar man is boar men.

The move rate of a boar man is 2.
The attack rate of a boar man is 2.
The reflex of a boar man  is 8.
The primary attack description of a boar man is "squeals and charges, one large tusk putting a rather nasty scrape".
The TF description of a boar man is "rolls around on the ground, their pleads for help turning to squeals as their form swells with fat and muscle, becoming a".

Section - Neanderthal

A neanderthal is a infection model.  The description of a neanderthal is "A large, very hairy, and very muscular but primitive looking man."  The TF table of a neanderthal is Table 11.

The move rate of a neanderthal is 1.
The attack rate of a neanderthal is 2.
The reflex of a neanderthal is 11.
The primary attack description of a neanderthal is "charges and tackles, leaving a smear of sweat on".
The TF description of a neanderthal is "hunches over, growing thick with muscle and hair and ushers a cry of triumph leaving a roaring".

Section - Tentacled Ooze

A tentacled ooze is a infection model.  The description of a tentacled ooze is "A large green slime swaying with tentacles, and a large one it uses to pull itself around."  The TF table of a tentacled ooze is Table 5. A tentacled ooze is neuter.

The move rate of a tentacled ooze is 5.
The attack rate of a tentacled ooze is 1.
The reflex of a tentacled ooze is 7.
The primary attack description of a tentacled ooze is "lashes out with its tentacles, turning all it touches into green slime as it strikes".
The TF description of a tentacled ooze is "shivers violently, tentacles rupturing from his body as the person's form sinks into a formless green mass leaving only a".

The tentaclea is a body part.  The body part origin of the tentaclea is "rear".  The shift of the tentaclea is "You cant help but lurch forward as a long slimy green tentacle pushes out from the remains of what was your rear."  The desc of the tentaclea is "A long slimy green tentacle waves from the remains of your ass."  The TF table of the tentaclea is Table 5.

The tentacleb is a body part.  The body part origin of the tentacleb is "gut".  The shift of the tentacleb is "A disgusting slurping noise comes from your insides as a long green tentacle bursts from your gut."  The desc of the tentacleb is "A long slimy green tentacle waves from the middle of your gut."  The TF table of the tentacleb is Table 5.

The tentaclec is a body part.  The body part origin of the tentaclec is "pelvis".  The shift of the tentaclec is "You shiver as the tentacle that was your penis splits from the tip into a total of three tentacles, each drooling murky green fluid."  The desc of the tentaclec is "Two tentacles oozing murky green liquid wave around with the one tentacle that was your penis."  The TF table of the tentaclec is Table 5.

The tentaclee is a body part.  The body part origin of the tentaclee is "chest".  The shift of the tentaclee is "You shake in pain as an enormous firm green slime tentacle bursts from your back."  The desc of the tentaclee is "A large firm green tentacle that grew from the remains of your back, you find it's strong enough to move you around easily."  The TF table of the tentaclee is Table 5.

Section - Momma Nido

A Momma Nido is a infection model. The description of Momma Nido is "What a curious looking creature. You're certain you saw it somewhere, but can't quite place it. Blue tough hide covers most of its curvaceous form, with a horn mounted on firm looking snout. She has two large and heavy breasts, a beige color that stands out against her largely blue body, with huge brown nipples. Wrapped around her right leg is a frilly band with white frills and a [one of]blue[or]green[or]yellow[or]orange[sticky random] center band. Her female sex is exposed and pouting, looking wet and ready, surrounded by the tough looking beige flesh that goes up across her belly like a plate. Covering her belly is a white apron that drapes down towards her lower belly but no further. Behind her is a pointed, thick tail, blue as the rest of her.". The TF Table of Momma Nido is table Nidoqueen. Momma Nido is female. Momma Nido is sterile. Momma Nido is semifertile.

The move rate of a Momma Nido is 2.
The attack rate of a Momma Nido is 2.
The reflex of a Momma Nido is 12.
A Momma Nido is horny.
The primary attack description of a Momma Nido is "suddenly reaches for [printed name of Targetx] and pulls them to her chest, forcing a teat into their mouth, feeding them thick gulps of sweet nourishing milk. As the milk flows, change can be seen in".
The TF description of a Momma Nido is "groans as they swell, body curving and armoring itself as thick plates overtake their old form. A strange blue and biege creature results, huge breasts jiggling as she looks around, now a".

Section - Husky Stud

A husky stud is a infection model. The description of husky stud is "A strong, virile male husky. Just looking at him causes your loins to burn slightly with need as you subconsciously cross your legs, trying to hide your enjoyment. Your success at this endeavor is questionable as he looks right at you, smirking provocatively.". The TF Table of husky stud is table husky. husky stud is male.

The move rate of a husky stud is 2.
The attack rate of a husky stud is 2.
The reflex of a husky stud is 12.
A husky stud is horny.
The primary attack description of a husky stud is "pounces on top of their victim, causing said victim to momentarily struggle. After a few seconds, a strange calming sensation comes over them as they willingly submit to the husky, as the husky stud furiously fucks them. Shortly after, he climaxes in a musky spray of seed which splatters on them, tainting".
The TF description of a husky stud is "growls ferally as snowy fur explodes all over their rapidly changing body, their new canine cock standing very erect and ready as they finish turning into a".

Section - Batcubus

A Batcubus is a infection model. The description of Batcubus is "She looks somehow familiar. A bat in a tight outfit that forms a pink heart over her ample bosom. Her short, white furred, tail pokes out behind her and grand ears are turned in your direction. Her eyes are shadowed a soft blue across the lids and her cream colored snout is painted a sexy shade of red, forming a pout across her lips under her cute button nose. Her wings are leathery and extend behind her, curled usually. For clothes, her forearm and hands are covered in a long white glove. Below, a pair of boots, rich in purple shades, covers feet, ending at the knees with flanges of lighter purple.". The TF Table of Batcubus is table Rogue. Batcubus is female.

The move rate of a Batcubus is 2.
The attack rate of a Batcubus is 2.
The reflex of a Batcubus is 12.
The primary attack description of a Batcubus is "looks around alertly before spotting [printed name of targetx]. A smile comes to her lips and she approaches, planting a soft kiss on".
The TF description of a Batcubus is "gasps as their face bursts into a small snout. White fur covers their head as they stumble forward. Even as large triangular ears form, a stiff white tail explodes from their bottom and their curves are enhanced to rounded fullness. Soon they rise, licking their red stained lips, now a".

Section - Neko

A Neko is a infection model. The description of Neko is "A shapely and largely naked female with tanned flesh. She has bright blue hair that cascades down her back like a flowing cape. Her ears are large and feline, twitching softly at sounds. Her ears, like other spots of her body, are covered in a soft layer of pure white fur. The fur tastefully covers her nipples from view, and forms stripes at her arms and legs. Her tail is entirely coated, curling and swaying sinuously. One private area that it does little to conceal is her erect phallus. It seems she is more of a he, a shemale, with glistening pre dripping from the ready six inch tool.". The TF Table of Neko is table Felicia. Neko is male.

The move rate of a Neko is 2.
The attack rate of a Neko is 2.
The reflex of a Neko is 12.
A Neko is horny.
The primary attack description of a Neko is "locks eyes with [targetx] and her tail flickers about anxiously before forming into a brief heart shape. She grabs at [targetx] and pins them candidly with loud purring as the neko girl's erect shaft pushes up into the back door of her victim. She rocks against them, wailing like a cat in heat as [printed name of targetx] yelps in a less pleased fashion before thick cum explodes, coating ass, crotch and ground with fecund spray, infecting".
The TF description of a Neko is "thrusts their hips forward as a hard shaft tears through any worn clothes. They moan and howl like a cat as a long tail forms and white fur grows in striped patterns. Soon all that is left is a".

Section - Centauress

A Centauress is a infection model. The description of Centauress is "Right out of mythology, this majestic and large horse has the head of a full, female, human torso. She has four breasts, the top two a heavy D, the bottom a smaller but substantial C. She has long, flowing, straw colored hair that flutters just above her powerful lower torso.". The TF Table of Centauress is table centauress. Centauress is female.

The move rate of a Centauress is 2.
The attack rate of a Centauress is 2.
The reflex of a Centauress is 12.
The belly of a centauress is womb.
Centauress is one-time.
The attack type of a centauress is "engulf".
The primary attack description of a Centauress is "[one of]notices [targetx] and approaches them with a smile. They snatch [targetx]'s head and cradles it to their soft bosom, murmuring gently to them before turning around. Their victim seems a bit muddled by the time she's pivoted and presented her horse rump. [targetx] reaches to touch, rubbing the lips lightly before a few fingers slip inside with a wet sound, then the hand. They are drawn right into the centauress despite a sudden attempt for freedom, soon lost to sight, nothing visible of[or]brushes against [targetx] before pinning them gently with her rump. She grinds against them softly while making pleading sounds. Soon [targetx] is licking away at her winking, wet, horse cunt. Tongue and face work deeper and deeper into the centauress as she whinnies with delight as [targetx] suddenly draws into her up to the waist. She looks back at them with a knowing smile as her strong cunt suckles her victim in, inch at a time, soon gone, nothing left of[or]suddenly slams [targetx] into a nearby vertical surface, knocking the wind from them as her horse rump rubs against them. They squeal and wriggle, trying to escape, but are drawn powerfully into those firm lips, sucked into the waiting womb of the centauress, perhaps the last we will see of[at random]".
The secondary attack description of a centauress is "suddenly squats her horse rump down. A form slides wetly from her huge sex and splats to the ground, shaking itself clean as it rises to new feet.".
The TF description of a Centauress is "explodes in mass as a horse grows from their back ends, raising them tall as their chest swells out into new round pillows. They are clearly a".

The centauress torso is a body part.  The body part origin of the centauress torso is "rear".  The shift of the centauress torso is "Your rear explodes in growth, throwing you back against the rapidly forming stump as it becomes larger and larger, forming a barrel with ribs, then righting itself as new legs sprout and you're soon standing on shaking legs, your rear legs clopping hooves against the ground. With a rush of tickles, your new torso is covered in soft white fur."  The desc of the centauress torso is "A fully formed body of a white draft horse extends out behind you. Between your rear thighs is a large winking maresex. It feels so hungry..."  The TF table of the centauress torso is Table centauress.


Section - Tree

A Tree is a infection model. The description of Tree is "A tree, tall and proud. It bears odd looking fruits that dangle just within reach. Who would put a tree here?". The TF Table of Tree is table Tree. Tree is female.

The move rate of a Tree is 99999999.
The attack rate of a Tree is 2.
The reflex of a Tree is 1.
The willpower of a tree is 15.
The attack type of a Tree is "none".
The primary attack description of a Tree is "takes aim at [targetx], drawing back her bow with a most fascinating ripple of her curvy form before an arrow sails, striking".
The TF description of a Tree is "explodes in mass as they become rooted to the spot. Their limbs branch out in to a mighty crown of leaves over their head as they rapidly become a".
 
Section - Elf

A Elf is a infection model. The description of Elf is "A human? Maybe? She has asian like facial features on lightly tanned flesh. Her ears are unusually long and tapered, but other than that, nothing impossible. She has delicious curves, with heavy G breasts swaying with every step, barely held in place with her sheer green silks. Strung over her back is a long curved wooden bow, almost as pretty as she is, if you like that kind of thing. She has long blond hair that flows down to her ass without bothering her graceful steps.". The TF Table of Elf is table Elf. Elf is female.

The move rate of a Elf is 2.
The attack rate of a Elf is 2.
The reflex of a Elf is 12.
The attack type of a Elf is "strike".
The primary attack description of a Elf is "takes aim at [targetx], drawing back her bow with a most fascinating ripple of her curvy form before an arrow sails, striking".
The TF description of a Elf is "emits a low soft groan as their body and clothes change rapidly. Curves swell as their chest and bottom expands out, leaving them an".

Section - Harpy

A Harpy is a infection model. The description of Harpy is "An athletic looking young woman with feathery wings attached to her arms like fins and great talons for hands and feet. Her legs are also covered in feathers, and she has a fan of feathers over her butt. She has light, flawless, flesh where exposed on her front and chubby, elfin, face. She would be cute if she wasn't scary.". The TF Table of Harpy is table Harpy. Harpy is female.

The move rate of a Harpy is 2.
The attack rate of a Harpy is 2.
The reflex of a Harpy is 12.
The attack type of a Harpy is "strike".
The primary attack description of a Harpy is "reaches out for [targetx] with a foot talon and manages to grab hold of".
The TF description of a Harpy is "gives a sudden sharp squawk as feathers explode over legs and back. They barely have time to abandon their clothes before they are left a".

Section - Goblin

A Male Goblin is a infection model. The description of Male Goblin is "A very short, maybe three foot tall, green skinned humanoid. He has huge long ears going out either side of his large head. His hair is [one of]swept back[or]a spiky mohawk[or]a sloppy topknot[sticky random] of [one of]blue[or]black[or]brown[sticky random] color. His grin is wide and teeth look like serrated razors. His hands and feet, like his head, seem oversized for the torso. He is dressed in finery more suitable for a medieval peasant of some kind than anything else, brightly colored at that.". The TF Table of Male Goblin is table Goblin. Male Goblin is male.

The move rate of a Male Goblin is 2.
The attack rate of a Male Goblin is 2.
The reflex of a Male Goblin is 12.
The attack type of a Male Goblin is "strike".
The primary attack description of a Male Goblin is "approaches [targetx] with a big toothy grin. They pull out a CD from nowhere in particular and offer it up, 'Best game you ever tried. Everyone[apostrophe]s doing it.' Once accepted, change begins to manifest in".
The TF description of a Male Goblin is "seems quite surprised when their ears triple in size. By the time they reach to explore, their body has shrunken almost in half, skin going a green shade. With a sudden cackle, their clothing transforms with them, leaving them a".

A Female Goblin is a infection model. The description of Female Goblin is "A very short, maybe three foot tall, green skinned humanoid. She has huge long ears going out either side of his large head. Her hair is [one of]swept back[or]a spiky mohawk[or]a sloppy topknot[sticky random] of [one of]blue[or]black[or]brown[sticky random] color. Her grin is wide and teeth look like serrated razors. Her hands and feet, like her head, seem oversized for the torso. She is dressed in finery more suitable for a medieval peasant of some kind than anything else, brightly colored at that. From the swells on her chest, she seems female.". The TF Table of Female Goblin is table Goblin. Female Goblin is female.

The move rate of a Female Goblin is 2.
The attack rate of a Female Goblin is 2.
The reflex of a Female Goblin is 12.
The attack type of a Female Goblin is "strike".
The primary attack description of a Female Goblin is "whistles innocently a moment until [targetx] wanders past, then smashes her wrench into".
The TF description of a Female Goblin is "seems quite surprised when their ears triple in size. By the time they reach to explore, their body has shrunken almost in half, skin going a green shade. With a sudden cackle, their clothing transforms with them, leaving them a".

Section - Centaur

[A centaur is a infection model.]  The description of a centaur is "At first the thing before you appears to be a ruggedly handsome man riding a draft horse, but you soon notice it to be one being, the human torso fused at the waist to the neck of the horse part."  The TF table of a centaur is Table 6. centaur is male.

The move rate of a centaur is 2.
The attack rate of a centaur is 4.
The reflex of a centaur is 16.
The primary attack description of a centaur is "draws an arrow from the quiver on his back.  He draws the bow back and shoots, purposefully only grazing".
The TF description of a centaur is "stretches as their torso inflates with muscle.  Their rear and legs stretch into the body of a draft horse, the result is a".

The horse torso is a body part.  The body part origin of the horse torso is "rear".  The shift of the horse torso is "You feel a strange sensation as your rear pushes out further, bones and internal organs forming in the large mass, it takes the distinct shape of a horse's torso.  The entire mass in enveloped in chestnut brown fur, but it's hard to walk without legs to support it  You suddenly feel more stable as you hear two hooves hit the floor behind you, your new hind legs swelling with muscle, coating with your sleek brown pelt.  A strange stirring sensation comes from between your new rear legs.  You look between your legs just in time to see a horse's sheath and large testicles to spring out under it.  The excitement causes the long shiny black monster that is your new shaft to slide from your sheath..  You feel long fur brush along your horse rump and looks behind you to see a long tail of brown hair swaying behind you."  The desc of the horse torso is "A The fully formed body of a brown draft horse extends out behind you, with a huge set of genitals to match."  The TF table of the horse torso is Table 6.

Section - Huge Dragoness

A Huge Dragoness is a infection model.  The description of a Huge Dragoness is "A massive beast. If you are indoors, then you might only be looking at a grasping talons, otherwise, this large beast is clearly reptilian, with the exception of the car sized breasts on her chest, bouncing with enough force to pulp any man (un)fortunate enough to be between them. She is about four stories tall, give or take, with a cock that measures out at two stories. When that tool decides to drip, the gobs are large enough to knock people down."  The TF table of a Huge Dragoness is Table huge dragoness. Huge Dragoness is neuter. Huge Dragoness is semifertile. Huge Dragoness is immune. Huge dragoness is npcimmune.

The move rate of a Huge Dragoness is 2.
The attack rate of a Huge Dragoness is 4.
The reflex of a Huge Dragoness is 16.
The willpower of Huge Dragoness is 10.
A Huge Dragoness is one-time.
The attack type of a Huge Dragoness is "none".
The primary attack description of a Huge Dragoness is "reaches with massive talons, snagging [targetx] and pushing them up between her legs, inserting them into her wet, pulsing, passage. She groans and pants as she devours".
The secondary attack description of a Huge Dragoness is "crouches low to the ground, grunting before an egg spills free, cracking when it hits the ground. A new dragon emerges, growing swiftly to match the mother".
The TF description of a Huge Dragoness is "shimmers with a layer of cum as they begin to grow and expand. A moan comes out muffelddly as huge breasts and huge shaft grows longer and longer, tail stretching backwards as they become a".

Section - Fennec Taur

A fennec taur is a infection model.  The description of a fennec taur is "A humanoid torso, clearly female, with four large breasts, covered with brown fur. She has an animal lower body, walking on powerful lower paws and swaying a large puffy tail. When her hind leg is lifted, dual genders can be spotted, but there is nothing in the front. She rubs her belly lightly, regarding you with disturbing interest."  The TF table of a fennec taur is Table fennec. fennec taur is neuter.

The move rate of a fennec taur is 2.
The attack rate of a fennec taur is 4.
The reflex of a fennec taur is 16.
The willpower of fennec taur is 10.
A fennec taur is one-time.
The attack type of a fennec taur is "engulf".
The primary attack description of a fennec taur is "suddenly reaches out and opens their mouth wide. Despite the size difference, they eagerly slurp down".
The secondary attack description of a fennec taur is "spits out a new fennec taur!".
The TF description of a fennec taur is "stretches as their torso inflates with muscle.  Their rear and legs stretch into the body of a fennec taur, the result is a".

The fennec torso is a body part.  The body part origin of the fennec torso is "rear".  The shift of the fennec torso is "Your rump begins to swell anew as two new legs drop from the swelling lump, fur growing in, brown and soft as you wriggle, trying to find your new balance. Between your hindlegs, renewed pleasure has you thumping a hindpaw as your new vulpine cock drops from sandy sheath to dangle in the air and your nethers pout wetly. With a shiver, your new tail brushes against the back of your legs, wide and bushy."  The desc of the fennec torso is "You have the lower body of a fennec fox, large and hermaphroditic, with a large fluffy tail behind you."  The TF table of the fennec torso is Table fennec.


Section - Feral Dragoness

A Feral Dragoness is a infection model. The description of Feral Dragoness is "A heavily armored beast of dark blue scales. Each scale along its top, sides, and thighs are an individual shield against harm, flexing imposingly with every sinuous step. Her face is a reptilian mask, a teeth filled with teeth behind a knowing grin, eyes a lighter shade of sky. Smooth leathery wings perch upon her back, a deep purple hue, folded securely. Her undercarriage is light blue, covered in smooth but visible plates of hardened scales. Her roughly scaled tail terminates in a sharp, pointed spade.". The TF Table of Feral Dragoness is table Feral Dragoness. Feral Dragoness is female.

The move rate of a feral dragoness is 2.
The attack rate of a feral dragoness is 4.
The reflex of a feral dragoness is 12.
[A feral dragoness is one-time.]
The belly of a feral dragoness is egg.
The attack type of a feral dragoness is "engulf".
The primary attack description of a feral dragoness is "rolls over onto her back while grabbing, dragging their victim into her waiting nethers, stretching widely as their feet, legs, then torso vanish up into her, soon there is nothing left of".
The secondary attack description of a feral dragoness is "crouches in place, laying a large egg that hatches almost as swiftly, splitting open to reveal a growing draconic form".
The TF description of a feral dragoness is "collapses to all fours as their body swells and explodes in scales, soon nothing is left but a".


Section - Masculine Bodybuilder

A masculine bodybuilder is a infection model.  The description of a masculine bodybuilder is "The man before you is humongous, and hairy.  You have the urge to let him take you, here and now."  The TF table of a masculine bodybuilder is Table 7. masculine bodybuilder is male.

The move rate of a masculine bodybuilder is 3.
The attack rate of a masculine bodybuilder is 2.
The reflex of a masculine bodybuilder is 18.
The attack type of a masculine bodybuilder is "spray".
The primary attack description of a masculine bodybuilder is "The masculine bodybuilder is stroking his cock furiously, rubbing his hairy chest and abs with his huge hands.  With a grunt of pleasure he sprays cum all over the area.".
The secondary attack description of a masculine bodybuilder is "is covered in the bodybuilder's cum, which is quickly absorbed by the skin.".
The TF description of a masculine bodybuilder is "shakes violently as their whole body swells into a hugely muscled monster of a man, thick body hair covering the man's form.  Anyone seeing them would think them a".

Section - Demon

A demon is a infection model.  The description of a demon is "The demon is monstrous, a large four armed, four pec'ed, red scaled torso, with bat wings and a long spiked tail, is supported by lower legs that resemble a black goat.  His head is horned and tusked with shaggy black hair and a goatee."  The TF table of a demon is Table 8. Demon is male.

The move rate of a demon is 2.
The attack rate of a demon is 2.
The reflex of a demon is 13.
The attack type of a demon is "spray".
The primary attack description of a demon is "The Demon lashes out, filling the area with flames.".
The secondary attack description of a demon is "is covered with painful, but superficial burns.".
The TF description of a demon is "unleashes a roar of fury, their form twisting and reshaping, turning the victim into a".

The second right arm is a body part.  The body part origin of the second right arm is "gut".  The shift of the second right arm is "Your feel a painful sensation in your right side.  Blood shoots from the spot as a new red scaled and muscular arm bursts out from beside your second set of pecs."  The desc of the second right arm is "You have grown a second right arm, which is muscular and red scaled, tipped with black claws."  The TF table of the second right arm is Table 8.

The second left arm is a body part.  The body part origin of the second left arm is "gut".  The shift of the second left arm is "Your feel a painful sensation in your left side.  Blood shoots from the spot as a new red scaled and muscular arm bursts out from beside your second set of pecs."  The desc of the second left arm is "You have grown a second left arm, which is muscular and red scaled, tipped with black claws."  The TF table of the second left arm is Table 8.

The right wing is a body part.  The body part origin of the right wing is "chest".  The shift of the right wing is "New muscles begin to form in your back, and you soon realize why when a red scaled frame of a massive wing shoots from the right side of your back, black membranes grow in, completing the wing."  The desc of the right wing is "A massive red scaled right wing with black membranes grows from your back."  The TF table of the right wing is Table 8.

The left wing is a body part.  The body part origin of the left wing is "chest".  The shift of the left wing is "New muscles begin to form in your back, and you soon realize why when a red scaled frame of a massive wing shoots from the left side of your back, black membranes grow in, completing the wing."  The desc of the left wing is "A massive red scaled right wing with black membranes grows from your back."  The TF table of the left wing is Table 8.

Section - Horse Stud

A Horse Stud is a infection model.  Horse stud is unique. The description of a Horse Stud is "The large black furred beast before you has a horse's head and legs, with the torso of a muscular man."  The TF table of a Horse Stud is Table horse mare. A Horse Stud is male. Horse Stud is fearful.

The move rate of a Horse Stud is 2.
The attack rate of a Horse Stud is 1.
The reflex of a Horse Stud is 14.
The primary attack description of a Horse Stud is "bears his teeth and nips, leaving wounds that sprout black fur on".
The TF description of a Horse Stud is "sprouts black fur and white mane, neighing in pleasure as they become[s] a".

The horse tail is a body part.  The body part origin of the horse tail is "rear".  The shift of the horse tail is "A cascade of white hair springs from above your rear, and brushes your legs, flicking as any normal horse tail would."  The desc of the horse tail is "A sleek white horse tail brushes against your legs."  The TF table of the horse tail is Table 9.

Section - Anthro Mare

A Anthro Mare is a infection model.  The description of a Anthro Mare is "A stunning female of black fur. Her violet eyes gaze at you with a coy expression as her generous hips sway back and forth. She may be a beast, but she has the assets of any human woman, and seems willing to share them."  The TF table of a Anthro Mare is Table horse mare. A Anthro Mare is female. Anthro Mare is fearful.

The move rate of a Anthro Mare is 2.
The attack rate of a Anthro Mare is 1.
The reflex of a Anthro Mare is 14.
The primary attack description of a Anthro Mare is "bears her teeth and nips, leaving wounds that sprout black fur on".
The TF description of a Anthro Mare is "collapses to their knees, whinnying and huffing as their body swells, ass, hips, and lastly chest blossoming out as they become an".

The horse mare tail is a body part.  The body part origin of the horse mare tail is "rear".  The shift of the horse mare tail is "A cascade of white hair springs from above your rear, and brushes your legs, flicking as any normal horse tail would."  The desc of the horse mare tail is "A sleek white horse tail brushes against your legs."  The TF table of the horse mare tail is Table horse mare.

The horse cock is a[ kind of] body part.  [The body part origin of the horse cock is "pelvis".]  The shift of  the horse cock is "You feel the most unusual thing, something pushing at your cunt from inside, being fucked backwards. You groan and rock your hips as pleasure builds and a thick flattened horse cock starts to emerge from you. As it slithers out to its full, over two feet, length, your stance shifts as heavy orbs fall into new sacs. Your thick lipped mare lips remain, tucked behind."  The desc of a horse cock is "Above your other genitals is a huge horse cock that twitches and oozes heavy precum on the ground wherever you walk. Under it are two large furry balls that fuel that canon with gallons of potent seed." The TF table of the horse cock is Table horse mare.

Section - Phoenix

A Phoenix is a infection model.  The description of a Phoenix is "A bipedal phoenix lady, with brilliant red and orange feathers, a friendly looking expression on her beaked face, and a worryingly stiff member between her legs. From behind, under her tailfeathers, a female sex can be easily seen. She has large breasts and hips, and when she moves just right, milk seems to form on her large nipples."  The TF table of a Phoenix is Table Phoenix. A Phoenix is neuter.

The move rate of a Phoenix is 3.
The attack rate of a Phoenix is 4.
The reflex of a Phoenix is 14.
The primary attack description of a Phoenix is "approaches and rubs against while whispering in an ear. While they cuddle amorously, their heavy breasts leak milk onto".
The TF description of a Phoenix is "begins to smolder before igniting violently into flames. Their clothes and possessions are lost, leaving behind a".

Section - Gryphon

A Gryphon is a infection model.  The description of a Gryphon is "Hey, a gryphon! But those aren't supposed to stand on two legs. They probably shouldn't be blue, and this one has huge breasts and a cock to match it, leaving you a little confused, or turned on, as the case may be. She licks over her black beak as she eyes you a moment. She can probably move quickly, with those large wings and those powerful long legs."  The TF table of a Gryphon is Table Gryphon. A Gryphon is neuter. A gryphon is horny.

The move rate of a Gryphon is 1.
The attack rate of a Gryphon is 3.
The reflex of a Gryphon is 14.
The primary attack description of a Gryphon is "suddenly grabs a victim with outstretched talons and nudges them to the ground. They mount and are soon thrusting their big black cock deep inside them. The two grunt and gasp with shared pleasure before the gryphon shudders, exploding in a massive spray of seed, some of it splashing on".
The TF description of a Gryphon is "suddenly grabs for their crotch, moaning as a big black cock bursts through any worn clothes. As they stroke at it desperately, huge breasts form on their chest and they swell out into a".

Section - Skunkbeast

A skunkbeast is a infection model.  The description of a skunkbeast is "This skunk-like would easily pass for a normal animal, if it weren't for two things.  One, the creature is the size of a small horse, and two, it's sporting the biggest erection you've ever seen as it waddles around on all fours.  Which is a bit less than comforting, with the way it looks into your eyes."  The TF table of a skunkbeast is Table 14.  Understand "skunk" as skunkbeast. A skunkbeast is male.

The move rate of a skunkbeast is 3.
The attack rate of a skunkbeast is 5.
The reflex of a skunkbeast is 15.
The primary attack description of a skunkbeast is "The massive skunk sprays thick, oily musk everywhere!".
The attack type of a skunkbeast is "spray".
The secondary attack description of a skunkbeast is "is covered by the thick musky-smelling spray!".
The TF description of a skunkbeast is "is consumed entirely by fur, dropping to all fours and leaving only a".

The skunk tail is a body part.  The body part origin of the skunk tail is "rear".  The shift of the skunk tail is "A thick, black mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip.  A pair of white stripes travel up its length, completing the effect."  The desc of the skunk tail is "A thick and luscious fluffy skunk tail extends upwards from behind you."  The TF table of the skunk tail is Table 14.  The tag of the skunk tail is "tail".

Section - Irish Cat

An irish cat is a infection model.  The description of a irish cat is "This curvy lass has clear feline influences, covered in striped fur of brown, black, and white. She has triangular ears that twitch top her head to either side of a round green hat. A well pressed green jacket rests over a darker shaded shirt and a tartan skirt covers her hips, with her tail poking out the back end. She wields a tankard of some kind of booze that she is taking generous swigs from as she looks about eagerly for companions."  The TF table of a irish cat is Table icat.  Irish Cat is female.

The move rate of a irish cat is 3.
The attack rate of a irish cat is 5.
The reflex of a irish cat is 11.
The primary attack description of a irish cat is "raises a tankard into the air, swinging it dangerously before some of the golden stuff spills on".
The TF description of a irish cat is "lets out a sudden cheer as their clothes turn bright green and a mug of booze appears out of nowhere in their rapidly fuzzing hands. Soon there is a leering example of an".


Section - Latex Skunk

A latex skunk is a infection model.  The description of a latex skunk is "This skunk-like creature has more than a few human features, making her almost sexy despite the fact that her skin is made of rubber and that the tail standing tall behind her makes you more than a little uneasy."  The TF table of a latex skunk is Table 1.  Latex Skunk is female.

The move rate of a latex skunk is 3.
The attack rate of a latex skunk is 5.
The reflex of a latex skunk is 11.
The primary attack description of a latex skunk is "The latex skunk sprays latex musk everywhere!".
The attack type of a latex skunk is "spray".
The secondary attack description of a latex skunk is "is covered by the thick latex spray!".
The TF description of a latex skunk is "is consumed entirely by latex, leaving only a".

The latex skunk tail is a body part.  The body part origin of the latex skunk tail is "rear".  The shift of the latex skunk tail is "A thick, black mass balloons from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip.  A pair of white stripes travel up its length, completing the effect."  The desc of the latex skunk tail is "A thick and luscious rubber skunk tail extends upwards from behind you."  The TF table of the latex skunk tail is Table 1.  The tag of the latex skunk tail is "tail".


Section - Minotaur

A Minotaur Bull is a infection model.  The description of a Minotaur Bull is "Straight from myth! Though this beast seems shaggier than some of the artwork you've seen, more like those cow people from that video game. Planet of conflictmaking or whatever. Either way, he's big, and looks strong enough to rip your arms off. That rocket between his legs doesn't look comforting either."  The TF table of a Minotaur Bull is Table Minotaur. A Minotaur Bull is male.

The move rate of a Minotaur Bull is 3.
The attack rate of a Minotaur Bull is 2.
The reflex of a Minotaur Bull is 14.
The primary attack description of a Minotaur Bull is "bullies and pushes around confidently before landing a nip on".
The TF description of a Minotaur Bull is "sinks to the ground, panting and mooing before they start to expand rapidly. With a loud lowing roar, and complete destruction of any worn clothes, they erupt into a".

A Minotaur Cow is a infection model.  The description of a Minotaur Cow is "A large cow lady. She seems gentle enough, despite her imposing build and intimidating muscle mass. She approaches things with a soft expression and spends more time sniffing or kissing at things than anything else. Harmless perhaps?"  The TF table of a Minotaur Cow is Table Minotaur. A Minotaur Cow is female.

The move rate of a Minotaur Cow is 3.
The attack rate of a Minotaur Cow is 2.
The reflex of a Minotaur Cow is 14.
The primary attack description of a Minotaur Cow is "approaches and leans in, snuffling and kissing at".
The TF description of a Minotaur Cow is "grabs at their chest and groans as it swells rapidly against their hands. Their body swells out of any clothes as they become furry. As teats press through their fingers, they become a".

Section - Were Fennec

A Were Fennec is a infection model.  The description of a Were Fennec is "A short, furry, female creature with huge ears and a kindly looking smile, if you can avoid being disturbed by a two legged beast. She is just as male as female, with a thick organ nestled between her thighs, plump and ready. Something about her seems... cute, as if she were entirely harmless, despite sharp teeth and exposed black claws."  The TF table of a Were Fennec is Table Were Fennec. A Were Fennec is neuter. A were Fennec is fast and stealthy.

The move rate of a Were Fennec is 3.
The attack rate of a Were Fennec is 1.
The reflex of a Were Fennec is 14.
The willpower of a were fennec is 12.
A were fennec is stat-switched.
The primary attack description of a Were Fennec is "[one of]approaches [targetx] and gently runs paws across their chest and belly slowly, purring at them and leaning in. [printed name of Noun]'s tongue flicks over [printed name of targetx]'s ear as they whisper gentle affections to[or]comes up from behind and grabs at [printed name of targetx]. Their paws hold them close as they snuggle gently a moment, something spoken gently after a moment before release, fingers brushing over[at random]".
The TF description of a Were Fennec is "looks up suddenly, then tears off their clothes, panting loudly. As their hands wander over their form, it is covered in soft, plush fur. Great ears sprout into being as cock and breasts swell dramatically, leaving them an adorable".

Section - Vixen

A Vixen is a infection model.  The description of a Vixen is "A small red fox with white underbelly and blackened paws. It has a short narrow snout and sharp little teeth. It's kind of cute, really."  The TF table of a Vixen is Table Vixen. A Vixen is female.

The move rate of a Vixen is 1.
The attack rate of a Vixen is 2.
The reflex of a Vixen is 14.
The primary attack description of a Vixen is "rushes up and sinks their little teeth into".
The TF description of a Vixen is "falls forward suddenly, shrinking rapidly. Clambering out of any clothes they once had, they are now a".

Section - Echoen Bat

A Bat is a infection model.  The description of a Bat is "This curvaceous beast is covered in brown fur except for the white tufts in her large ears, her naked, and huge, black cock, and thick black teats on heavy hanging breasts. She appears to be a bat hybrid, with fangs exposed from her upper lip over her bottom. She has two sets of arms, one human, the other a set of wings with hands included. Behind her, a fox like tail curls and flicks."  The TF table of a Bat is Table Echoen. A Bat is neuter.

The move rate of a Bat is 3.
The attack rate of a Bat is 1.
The reflex of a Bat is 14.
The attack type of a Bat is "nothing".
The primary attack description of a Bat is "bites, leaving puncture-like marks of rubber on".
The TF description of a Bat is "frantically pulls at their chest and a rapidly expanding shaft as they burst free of their clothing, wings unfurling to reveal a".

Section - Latex Fox

A latex fox is a infection model.  The description of a latex fox is "This beast looks like a cross between a man, a fox, and a pool-toy, its rubber skin catching reflections of light almost as well as its bared teeth."  The TF table of a latex fox is Table latex fox. A latex fox is male.

The move rate of a latex fox is 3.
The attack rate of a latex fox is 1.
The reflex of a latex fox is 14.
The primary attack description of a latex fox is "bites, leaving puncture-like marks of rubber on".
The TF description of a latex fox is "is engulfed by the latex, screams turning to snarls as he is replaced by a".

The fox tail is a body part.  The body part origin of the fox tail is "rear".  The shift of the fox tail is "A rounded chunk of latex grows from your back like a snake, then puffs out with a FLOOMP into a big, cartoonish fox tail."  The desc of the fox tail is "A cartoonish red fox tail follows behind you."  The TF table of the fox tail is Table latex fox.  The tag of the fox tail is "tail".

A Latex Vixen is a infection model.  The description of a Latex Vixen is "This beast looks like a cross between a curvy woman, a fox, and a pool-toy, its rubber skin catching reflections of light almost as well as its bared teeth."  The TF table of a Latex Vixen is Table latex fox. A Latex Vixen is female.

The move rate of a Latex Vixen is 3.
The attack rate of a Latex Vixen is 1.
The reflex of a Latex Vixen is 18.
The primary attack description of a Latex Vixen is "bites, leaving puncture-like marks of rubber on".
The TF description of a Latex Vixen is "is engulfed by the latex, screams turning to snarls as she is replaced by a".

A Latex Prickvixen is a infection model. Latex prickvixen is neuter. The description of a Latex Prickvixen is "This beast looks like a cross between a curvy woman, man, a fox, and a pool-toy, its rubber skin catching reflections of light almost as well as its bared teeth. Its assets are larger than any other foxes you might have seen, with grand, almost heavy(it's hard for inflatables), breasts and a huge bobbing cock."  The TF table of a Latex Prickvixen is Table Latex fox. A Latex Prickvixen is neuter.

The move rate of a Latex Prickvixen is 3.
The attack rate of a Latex Prickvixen is 1.
The reflex of a Latex Prickvixen is 18.
The primary attack description of a Latex Prickvixen is "bites, leaving puncture-like marks of rubber on".
The TF description of a Latex Prickvixen is "is engulfed by the latex, screams turning to snarls as her sexual characteristics are replaced and enhanced grossly, soon replaced by a".

Section - Latex Frog

A latex frog is a infection model.  The description of a latex frog is "This thing brings new meaning to the word [quotation mark]frog man[quotation mark], and its rubbery eyes have a ravenous glaze to them.  You get the feeling that his distended gut could hold a hell of a lot more than it looks like it should."  The TF table of a latex frog is Table 3.

The move rate of a latex frog is 4.
The attack rate of a latex frog is 5.
A latex frog is one-time.
The attack type of a latex frog is "engulf".
The reflex of a latex frog is 8.
The primary attack description of a latex frog is "whips its tongue around and consumes".
The secondary attack description of a latex frog is "spits out a new latex frog!".
The TF description of a latex frog is "croaks as he turns into".

Section - Latex Wolf

The wolf tail is a body part. The body part origin of the wolf tail is "rear". The shift of the wolf tail is "You feel a chunk of latex grow from your back like a snake, then puff out into a realistic looking latex wolf tail." The desc of the wolf tail is "A realistic latex wolf tail follows behind you." The TF table of the wolf tail is Table 54. The tag of the wolf tail is "tail".

A latex wolf is a infection model. The description of a latex wolf is "A wolf that would be no different than one you have seen on nature shows if not for the fact is was made of latex." The TF table of a latex wolf is Table 54. a latex wolf is male.

The move rate of a latex wolf is 2.
The attack rate of a latex wolf is 3.
The reflex of a latex wolf is 15.
The primary attack description of a latex wolf is "bites, leaving puncture-like marks of rubber on".
The TF description of a latex wolf is "is engulfed by the latex, screams turning to snarls as the latex covers his body and he is replaced by a".

Section - Latex Cow

The cow udder is a body part.  The body part origin of the cow udder is "gut".  The shift of the cow udder is "You feel a strange pressure at the base of your gut as a mass of flesh-like rubber expands from it, soon reaching halfway down to your knees before a set of four long teats grow from it."  The desc of the udder is "There is a large, fleshy pink rubber udder hanging from your gut."  The TF table of the cow udder is Table 4.  The tag of the cow udder is "udder". The cow udder is soft.

A latex cow is a infection model.  The description of a latex cow is "This large, fat cow-like creature is at least as tall as you.  It seems docile enough, mostly fondling its large udder and ignoring you, but it may be best not to spend too much time with it."  The TF table of a latex cow is Table 4.  Latex cow is female.

The move rate of a latex cow is 3.
The attack rate of a latex cow is 2.
A latex cow is stat-switched.
The attack type of a latex cow is "growth".
The target of a latex cow is the cow udder.
The reflex of a latex cow is 8.
The willpower of a latex cow is 12.
The primary attack description of a latex cow is "rubs its massive udder, and you find yourself unable to resist giving its milk just a little taste... and then nearly vomit from the unsurprisingly rubbery taste."
The secondary attack description of a latex cow is "rubs her udder, soon attracting a sip of her teat from".
The TF description of a latex cow is "lets out a blood-curdling moo as he transforms into".

Section - Ferret

A Ferret is a infection model.  The description of a Ferret is "A tall creature covered in brown fur. She moves with an unparalleled grace, like water in motion. Her long tail flicks and curls behind her in counter play to her movement as she looks around with a grin, licking her lips. Above her visible pink nethers is a cock of the same color."  The TF table of a Ferret is Table ferret.  Ferret is neuter.

The move rate of a Ferret is 2.
The attack rate of a Ferret is 2.
A Ferret is stat-switched.
The attack type of a Ferret is "growth".
The target of a Ferret is the pelvis.
The reflex of a Ferret is 15.
A ferret is benign.
A ferret is horny.
The willpower of a Ferret is 12.
The primary attack description of a Ferret is "gives a soft moan as a small furry shape falls from her distended vulva. The new tiny ferret rushes over to you. Before you can escape, it is scampering up your leg and nuzzling at you between the legs. Strange new pleasure erupts through your body as something changes down there, then a long burst of delight as the little creature wriggles up into you, getting cozy."
The secondary attack description of a Ferret is "grunts as a wet furry creature spills from her. The new tiny ferret rushes over and scales up inside of".
The TF description of a Ferret is "moans and shivers as their body lengthens and stretches, becoming rapidly furry from the inside out, soon leaving behind a".

Section - Cat Girl

A cat girl is a infection model.  The description of a cat girl is "This strange creature  looks like a cross between a human and a feline, clearly female with huge bouncing breasts  and thick exposed vaginal lips. She is on the prowl for a mate, and you might make a good  candidate."  The TF table of a cat girl is Table 20.  Cat Girl is female.

The move rate of a cat girl is 2.
The attack rate of a cat girl is 2.
The reflex of a cat girl  is 13.
The primary attack description of a cat girl is "approaches and draws close, grinding  lustfully while a hand reaches out to brush against".
The secondary attack description of a cat girl is " changes as her soft paws stroke over it and she whispers something sweetly in your ear.".
The TF description of a cat girl is "shudders and moans, grabbing at their chest and crotch  as they collapse to the ground,[if noun is male or noun is neuter] spilling the last of their seed in a great, and final,  climax[end if] before rising as a".

Section - Sheep

A Sheep is a infection model.  The description of a Sheep is "A sheep on two legs? Weird. You presume it's female, since it has no horns. It has thick white wool and a short waggy tail. It's very cute, really."  The TF table of a Sheep is Table Sheep.  Sheep is female. Sheep is fearful.

The move rate of a Sheep is 2.
The attack rate of a Sheep is 5.
The reflex of a Sheep  is 8.
The primary attack description of a Sheep is "happens by casually and chomps".
The secondary attack description of a Sheep is " changes as her soft paws stroke over it and she whispers something sweetly in your ear.".
The TF description of a Sheep is "falls to all fours as wool explodes over their form. They slowly rise back to their hoof-feet, disoriented and now a".

Section - Collie

A Collie is a infection model.  The description of a Collie is "A tall and, arguably, pretty collie. Like a werewolf, but clearly a dog, with half flopped ears and a grin on her face. She seems harmless enough, and even talks once in a while. Such manners compared to most of the monsters around here."  The TF table of a Collie is Table Collie.  Collie is female. Collie is not jealous. Collie is herder. Collie is cooperative.

The move rate of a Collie is 2.
The attack rate of a Collie is 1.
The reflex of a Collie  is 18.
The willpower of Collie is 12.
The primary attack description of a Collie is "suddenly rushes up and employs their large tongue to lick at".
The secondary attack description of a Collie is " changes as her soft paws stroke over it and she whispers something sweetly in your ear.".
The TF description of a Collie is "gives a soft moan and staggers in place. Clothes they were wearing tears right off as they expand into a".

Section - Kangaroos

A Kangaroo Boomer is a infection model.  The description of a Kangaroo Boomer is "Once a person, now infused with bestial features. This kangaroo stands bipedal on powerful leaping feet and lean muscular legs. He has an expressive face, largely confused and adjusting to his new state as a kangaroo hybrid. At a distance, it would be easy to confuse this person as a normal kangaroo, it is only close that one can see the light of intelligence in their eyes, and the deft way they can move their agile fingers."  The TF table of a Kangaroo Boomer is Table Kangaroo.  Kangaroo Boomer is male. the kangaroo boomer is immune. the kangaroo boomer is benign. The belly of the kangaroo boomer is the birthing pouch. A kangaroo boomer is fearful.

The move rate of a Kangaroo Boomer is 2.
The attack rate of a Kangaroo Boomer is 2.
The reflex of a Kangaroo Boomer  is 13.
The Kangaroo Boomer is pacified.
The primary attack description of a Kangaroo Boomer is "approaches and draws close, grinding  lustfully while a hand reaches out to brush against".
The secondary attack description of a Kangaroo Boomer is " gives a soft moan as power surges over their form. With a crackle of power, they reach into their pouch and draw out a fully grown kangaroo despite the size difference, setting them to their somewhat unsteady feet. The new roo looks disoriented, but well".
The TF description of a Kangaroo Boomer is "closes their eyes and gives a soft, wistful, sigh as their body smoothly gains fur and mass. It is a peaceful transcendeance to become something new, though as the tranquility of the event passes, they become confused at how they woke up this morning to become a".

A Kangaroo Flyer is a infection model.  The description of a Kangaroo Flyer is "Once a person, now infused with bestial features. This kangaroo stands bipedal on powerful leaping feet and lean muscular legs. She has an expressive face, largely confused and adjusting to his new state as a kangaroo hybrid. At a distance, it would be easy to confuse this person as a normal kangaroo, it is only close that one can see the light of intelligence in their eyes, and the deft way they can move their agile fingers. Another giveaway are her breasts, perhaps a B cup, carried over from her days as a human and covered in the same soft brown fur that covers the rest of her form."  The TF table of a Kangaroo Flyer is Table Kangaroo.  Kangaroo Flyer is female. the kangaroo flyer is immune. the kangaroo flyer is benign. The belly of the kangaroo flyer is the birthing pouch. A kangaroo flyer is fearful.

The move rate of a Kangaroo Flyer is 2.
The attack rate of a Kangaroo Flyer is 2.
The reflex of a Kangaroo Flyer  is 13.
The Kangaroo Flyer is pacified.
The primary attack description of a Kangaroo Flyer is "approaches and draws close, grinding  lustfully while a hand reaches out to brush against".
The secondary attack description of a Kangaroo Flyer is " gives a soft moan as power surges over their form. With a crackle of power, they reach into their pouch and draw out a fully grown kangaroo despite the size difference, setting them to their somewhat unsteady feet. The new roo looks disoriented, but well".
The TF description of a Kangaroo Flyer is "closes their eyes and gives a soft, wistful, sigh as their body smoothly gains fur and mass. It is a peaceful transcendeance to become something new, though as the tranquility of the event passes, they become confused at how they woke up this morning to become a".

Section - Uber Fox

A UberFox is a infection model.  The description of a uberfox is "A huge fox like creature, standing about six feet tall from paw to shoulders and from snout to tail base. She stands on four legs, with six breasts in pairs running down her undercarriage, large and swaying, but doing little to conceal her large pink shaft and tightly drawn balls. Viewed from behind, her many large tails are easily seen, and her large wet gash of a cunt.[if the tf table of head is table 0] A powerful scent comes from her, drawing you towards her and keeping you arroused. You've never seen such a sexy beast.[end if]".  The TF table of a UberFox is Table uber fox.  uberfox is neuter. the uberfox is immune. the uberfox is benign. A uberfox is npcimmune. A uberfox is sanitized. A uberfox is sterile.

The move rate of a uberfox is 2.
The attack rate of a uberfox is 2.
The reflex of a uberfox  is 13.
The uberfox is pacified.
The primary attack description of a Uberfox is "approaches and draws close, grinding  lustfully while a hand reaches out to brush against".
The secondary attack description of a Uber Fox is " gives a soft moan as power surges over their form. With a crackle of power, they reach into their pouch and draw out a fully grown kangaroo despite the size difference, setting them to their somewhat unsteady feet. The new roo looks disoriented, but well".
The TF description of a Uber Fox is "gives a soft mournful howl as the last of their humanity flees them. They fall to all fours and swell with new muscles as they are left an".

Section - Hyena

A Hyena is a infection model.  The description of a Hyena is "Not far from the image of a Gnoll, this beast sports much more sexuality than any fantasy classic vermin could. This hyena has mottled brown and black fur. She has wide hips and huge, perfectly round, breasts. The areola of the breasts is quite large, much of it taken by the tapering and large teat on each, leaking faint amounts of milk. Her paws, both hand and feet, are capped with dangerous looking claws, and the teeth in her mouth look quite sharp indeed. Adding to the danger of the female is the obscenely long, but relatively slender shaft, slick looking and leaking pre fluids constantly. Under it are some plum sized furry balls, vagina glistening just behind and under a long swaying tail."  The TF table of a Hyena is Table Hyena.  Hyena is neuter. the Hyena is immune. the Hyena is benign. The belly of the Hyena is the dark belly.

The move rate of a Hyena is 2.
The attack rate of a Hyena is 2.
The reflex of a Hyena  is 15.
The primary attack description of a Hyena is "[one of]approaches their victim with a soft growl. When they try to flee, she lands on their back in a sudden pounce, knocking them both to the ground heavily. Softly furred, but irresistably strong paws hold the poor soul down as she begins to rut against them, grinding her pre cum drenched, tapered shaft against[or]makes a come hither motion with one finger while the other hand lifts her buoyant breasts in offer. Their victim approaches hesitantly, but is soon nursing at the large teats of the beast, making her growl with growing pleasure as changes are seen in[at random]".
The secondary attack description of a Hyena is " gives a soft moan as power surges over their form. With a crackle of power, they reach into their pouch and draw out a fully grown kangaroo despite the size difference, setting them to their somewhat unsteady feet. The new roo looks disoriented, but well".
The TF description of a Hyena is "gives a sudden low growl, swiping at the air and staggering. Their hands become paws abruptly and they howl, face pushing forward into a snout. Huge breasts rip any shirt they were wearing as a tail bursts free down below. As heavy, but slender, shaft slides into view, they hunch forward a little, now a were".

Section - Feline Taur

A Felitaur is a infection model.  The description of a Felitaur is "A strange, four legged creature. Like centaur, but with a feline like lower and upper body. She has six breasts on her upper body, covered in tawny fur like the rest of her. Each pair is slightly larger than the one below it, topmost pair being D cup in size. At the end of her powerful looking leonine body is a long tufted tail. Under that, a huge set of pulsing orbs fuel a two liter sized sheath that runs up along a good portion of her lower belly. Surrounding the sheath at either side, running up along her lower belly, are six more breasts. Each swells just large enough to take up all the available space and each is very firm, jiggling just a little with her powerful steps. When she raises her tail, it becomes obvious that she is female as well, with dark stained dewy lips."  The TF table of a Felitaur is Table felitaur.  Felitaur is neuter. the Felitaur is immune. the Felitaur is benign. The belly of the Felitaur is the dark belly.

The move rate of a Felitaur is 2.
The attack rate of a Felitaur is 2.
The reflex of a Felitaur  is 13.
The primary attack description of a Felitaur is "[one of]leaps from ambush, knocking her victim over onto their back and pinning them with strong paws. She rubs her breast filled lower belly against their belly as she lines up her huge cock and drives it deep inside. She ruts and mates, at first alone, then with increasing consent, until both are howling like cats. When she finally blows her load, a change is seen in[or]charges suddenly on powerful feline paws. She lands on her victim and pins them in place before starting to rut against them. Their massive breasts rub against the victim's back with every lustful motion. She and her victim groan with shared pleasure even as her barbed cock locks deep inside and her heavy balls clench, firing seed in great torrents and causing change in[at random]".
The secondary attack description of a Felitaur is " gives a soft moan as power surges over their form. With a crackle of power, they reach into their pouch and draw out a fully grown kangaroo despite the size difference, setting them to their somewhat unsteady feet. The new roo looks disoriented, but well".
The TF description of a Felitaur is "gasps as their pants blow off, taken up by a new lower torso. A huge, naked, cock flops down before a sheath begins to form, grabbing it and pulling it up even as their balls swell. Breasts begin to form, huge and ponderous on both torsos as they grind and sway in place, lost in the pleasure of changing into a".

The feline torso is a body part.  The body part origin of the feline torso is "rear".  The shift of the feline torso is "You snap your head around to stare. You have the feline body from the magazine. Huge, four legs, breasts lining the bottom. Your new tail twitches anxiously as you stare at the hypersexualized torso you've been given."  The desc of the feline torso is "You have the lower torso of a cat, of sorts, starting at your hips and working back. It appears to be that of a cougar, with mixtures of cream, brown, and even a splash of black at the end of your long tail. Along your lower belly are six huge breasts, taking up all the space between your powerful legs, at least the space not taken up by the two liter sized sheath and the huge furry balls that rest just under your thick, pouting, nethers."  The TF table of the feline torso is Table felitaur. The feline torso is benign.

Section - Jackal Priest

A Jackal Priest is a infection model.  The description of a Jackal Priest is "Where there was once a human, not there is a strange creature of myth. A jackal, on two legs, wearing fine egyptian fare and sporting a great deal of gold and silver religious symbols, ankhs being popular. Her body is lean, with the exception of her full breasts. Her entire form is covered in soft black fur, and behind her, a cord like tail wags excitedly."  The TF table of a Jackal Priest is Table Jackal.  Jackal Priest is female. the jackal priest is immune. the jackal priest is benign. The jackal priest is pacified. jackal priest is sanitized.

The move rate of a Jackal Priest is 999.
The attack rate of a Jackal Priest is 2000.
The reflex of a Jackal Priest  is 13.
The Jackal Priest is pacified.
The primary attack description of a Jackal Priest is "approaches and draws close, grinding  lustfully while a hand reaches out to brush against".
The secondary attack description of a Jackal Priest is " gives a soft moan as power surges over their form. With a crackle of power, they reach into their pouch and draw out a fully grown kangaroo despite the size difference, setting them to their somewhat unsteady feet. The new roo looks disoriented, but well".
The TF description of a Jackal Priest is "squirms and writhes as their body is covered in black and and their clothing vanishes. As they groan, their body becomes curvy and a long, thin, tail sprouts. Soon they are a".


Section - Herm Squirrel

A herm squirrel is a infection model. The description of a herm squirrel is "This sexual beauty is as tall as a person but has the features of a squirrel. It sports a massive pair of heaving breasts with thick nipples, and an erect cock dripping with hot seed fueled by fluffy, overloaded balls. Her soft belly is rounded in pregnancy, and when she sees you looking at her, she raises her arms and shakes herself a bit... her belly swelling a little bit larger." The TF table of a herm squirrel is Table 55. Herm Squirrel is a neuter. A herm squirrel is fearful.

The move rate of a herm squirrel is 2.
The attack rate of a herm squirrel is 3.
The reflex of a herm squirrel is 14.
The primary attack description of a herm squirrel is "approaches to press her soft belly into your hands. It swells a little bigger, distracting you from the thick cum drooling from her cock onto".
The secondary attack description of a herm squirrel is "changes as she locks her lips with yours, raking her buck teeth to your tongue, her passionate kiss making the appendage tingle and change."
The TF description of a herm squirrel is "lets out a chittering squeal, squeezing their body as it blossoms rapidly, spraying milk and seed as they burst out of their clothes and start stroking their hermy, pregnant body of a".

The squirrel tail is a body part. The body part origin of the squirrel tail is "rear". The shift of the squirrel tail is "A thick, brown-red mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip." The desc of the squirrel tail is "A thick and luscious fluffy squirrel tail extends upwards from behind you." The TF table of the squirrel tail is Table 55. The tag of the squirrel tail is "tail". 


Section - Otters

Otter is a infection model. The description of a otter is "Like an otter on two legs, it is slinky and brown furred, its pelt shimmering in the light. She is not very tall, but possesses smooth streamlined curves, B cupped breasts and rounded hips that sway with her movements. The only distraction to her smooth outline is the very male sheath tucked between her furry legs. Her cock is at half mast when she's not actively using it, but at a quick guess, she can probably reach ten inches of throbbing black meat. When she turns around, her pouting and available female sex glistens invitingly.[if noun is heavy] Her form is rounder than usual, heavy with a cub or two in that dome of a belly, marring her usually sleek form.[end if][if noun is matronly] Her general form is softened and she has the feeling of a mother, caring and bountiful.[end if]". The TF table of a otter is Table otter. otter is neuter.

The move rate of a otter is 2.
The attack rate of a otter is 3.
The reflex of a otter is 14.
The willpower of an otter is 10.
A otter is stat-switched.
The attack type of a otter is "growth".
The target of a otter is the pelvis.
The primary attack description of a otter is "approaches you with a knowing grin and holds up a fish for you before setting it at your feet. After a moment of hesitation, you reach to accept the offering. A sudden whim has you nibbling at it.".
The secondary attack description of a otter is "seems displeased about something and suddenly rushes forward, biting at the ankle of the".
The TF description of a otter is "begins panting loudly, shrinking out of their clothes as their pants burst from a long rudderish tail. Soon, a slinky brown otter person emerges, ready to begin life as an".

Section - Lioness

A Lioness is a infection model.  The description of a Lioness is "A small cute girl, about four feet in height, covered in fur with round lion ears and a bright smile. She is quite developed for her size, sporting B cups and wide hips and seems to be eyeing you rather provocatively."  The TF table of a Lioness is Table 21.  Lioness is female.

The move rate of a Lioness is 1.
The attack rate of a Lioness is 3.
The reflex of a Lioness  is 6.
The primary attack description of a Lioness is "leans forward and attaches herself to the groin suckling noisily. Moments later, change is seen on".
The TF description of a Lioness is "gasps in a high tone as they begin to shrink right out of their clothing, soon becoming a".

Section - Werewolves 

A Werewolf Stud is a infection model.  The description of a Werewolf Stud is "It's surprisingly hard to get a look at them, but if you focus you can see that they are a large wolf person, with strong muscles, dense fur, and a wagging tail to top it all off. No one seems to notice their feral nature half the time."  The TF table of a Werewolf Stud is Table werewolf.  Werewolf Stud is male. Werewolf Stud is fast. Werewolf Stud is stealthy.

The move rate of a Werewolf Stud is 1.
The attack rate of a Werewolf Stud is 2.
The reflex of a Werewolf Stud  is 6.
The primary attack description of a Werewolf Stud is "suddenly lashes out with great clawed paws, their form swelling large as they lash out at".
The TF description of a Werewolf Stud is "growls and shudders as they explode in size and stature, then slowly change back to normal. They seem to be a".

A Werewolf Bitch is a infection model.  The description of a Werewolf Bitch is "A she wolf. Despite being covered in thick, soft, fur, she is quite humanoid, with slim breasts, wide hips and a smile that would be charming if not for the huge jagged claws that it revealed. It's odd that most don't seem to notice her."  The TF table of a Werewolf Bitch is Table werewolf.  Werewolf Bitch is female. Werewolf Bitch is fast. Werewolf Bitch is stealthy.

The move rate of a Werewolf Bitch is 1.
The attack rate of a Werewolf Bitch is 2.
The reflex of a Werewolf Bitch  is 6.
The primary attack description of a Werewolf Bitch is "suddenly lashes out with great clawed paws, their form swelling large as they lash out at".
The TF description of a Werewolf Bitch is "growls and shudders as they explode in size and stature, then slowly change back to normal. They seem to be a".

Section - SlutRat

A SlutRat is a infection model.  The description of a SlutRat is "A tall furry female. She  appears a rat, with pointed snout and large round ears. Her dazzling eyes seem to be bright and piercing as she flashes bucked teeth. Her form is deliciously curvy, with wide hips, generous ass and large round breasts. At the apex of each breast is a large firm black nipple. Her tail, unlike the rest of her black furred form, is naked and pink, segmented like a wriggling worm. Viewed from behind, her cunt and pucker are visible, but so are her large dangling orbs, leading up to the powerful looking black shaft in the front. The shaft curves upwards, pointing up towards her breasts, ready for action. Her paws, both her hands and feet, are pink like her exposed tail."  The TF table of a SlutRat is Table slutrat.  SlutRat is neuter. Slutrat is immune.

The move rate of a SlutRat is 1.
The attack rate of a SlutRat is 3.
The reflex of a SlutRat  is 6.
The attack type of slutrat is "Nothing."
The primary attack description of a SlutRat is "leans forward and attaches herself to the groin suckling noisily. Moments later, change is seen on".
The TF description of a SlutRat is "groans, one hand grabbing at swelling chest as the other strokes over growing lump between the thighs. She shudders and pants as she becomes a".

Section - Wyvern

A Wyvern is a infection model.  The description of a Wyvern is "A massive reptilian beast with wings for arms and two legs. It appears to be a female of its breed. Her massive tail whips around looking large and dangerous."  The TF table of a Wyvern is Table wyvern.  Wyvern is female.

The move rate of a Wyvern is 1.
The attack rate of a Wyvern is 3.
The reflex of a Wyvern is 10.
The primary attack description of a Wyvern is "suddenly strikes out, sinking their massive teeth into".
The TF description of a Wyvern is "groans and collapses to the ground as their belly swells, then bursts with a new form, rapidly maturing into a".

Section - Demon Mouse

A Demonic Mouse is a infection model. A demonic mouse is a hunter.  The description of a Demonic Mouse is "A bipedal rodent of only three feet in stature. She seems to have heavy human influences, with wide hips, prominent breasts and the ability to express her libidinous face. Her body is covered in soft red fur that goes deepest black at the hands and feet, which are digitigrade. Her tail flickers around behind her, raised just high enough to see her from front and back, her nether lips swollen obscenely, large enough for her to take most anything as it comes up to her lower belly and drips fell fluids to the floor, hissing softly where it strikes."  The TF table of a Demonic Mouse is Table Demonic Mouse.  Demonic Mouse is female.

The move rate of a Demonic Mouse is 1.
The attack rate of a Demonic Mouse is 999999.
The attack type of a demonic mouse is "no attacking".
[The Demonic Mouse is pacified.]
The reflex of a Demonic Mouse  is 6.
The primary attack description of a Demonic Mouse is "leans forward and attaches herself to the groin suckling noisily. Moments later, change is seen on".
The TF description of a Demonic Mouse is "is consumed in hellacious fire. Their soul and body are consumed as reality bends about the site. With the weakening of the barrier of here and there, something else comes through, and as the fire dies down, all that is left is a".

The mouse cock is a[ kind of] body part.  [The body part origin of the lioness cock is "pelvis".]  The shift of  the mouse cock is "As powerful and dirty energy flows powerfully through your groin, a harsh tenseness builds within your gaping slit. You pant and rock your hips, dripping sizzling fluids to the ground and whimpering with almost painful amounts of purest, sinful, delight. Just as it becomes too much, a wet splitting sound heralds a new, throbbing, pink shaft sliding from within your passage, arcing upwards in a potent display of re found masculinity."  The desc of a mouse cock is "Tucked into the upper portion of your huge nether lips is a naked pink tapered cock. When not in use, it tucks away entirely, but otherwise it projects potently ahead and upwards, twitching." The TF table of the mouse cock is Table demonic mouse.

Section - Doe

A Doe is a infection model.  The description of a doe is "A tall humanoid with generous curves and aroused members. They seem to prefer the company of their own, or making more of that same company. Behind them, a short tail wags eagerly over an exposed set of vulva. The tail is brown along the top with soft white colored fur on the underside. Her feet are more like two hooves."  The TF table of a Doe is Table deer.  Doe is neuter. A doe is horny. A doe is fearful.

The move rate of a Doe is 1.
The attack rate of a Doe is 3.
The reflex of a Doe  is 6.
The primary attack description of a Doe is "approaches and reaches with their delicate hands as their tongue extends from their slender muzzle, dripping a few bits of saliva on".
The TF description of a Doe is "puts their hands on their chest as it grows rapidly. A low lustful groan escapes as their cock bursts free of their clothing. As they grow, the rest of it shreds, leaving them as a".

Section - Furry Doe

A Furry Doe is a infection model.  The description of a Furry Doe is "A bipedal deer with soft brown fur and creamy off-white belly and undertail. Her nose, eartips and hands are dark hues. She has large cream covered breasts capped with thick black teats. She has a hungry, lustful look in her eyes, one hand usually straying to  her cock, stroking it almost absentmindedly. It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base. She has large plum sized balls contained in a creamy colored softly furred sac. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form."  The TF table of a Furry Doe is Table furry deer.  Furry Doe is neuter. A furry doe is horny. A furry doe is fearful.

The move rate of a Furry Doe is 1.
The attack rate of a Furry Doe is 3.
The reflex of a Furry Doe  is 6.
The willpower of a furry doe is 12.
A furry doe is stat-switched.
The attack type of a furry doe is "growth".
The target of a furry doe is the pelvis.
The secondary attack description of a furry doe is "makes her move, grabbing her breast with one hand as she grabs at her victim with the other, drawing them close and grinding against them as she whispers something in their ear. They begin to blush and pant as a bulge forms between their legs and above their ass. As their senses return to they, they look stricken. What does fate have in store for the".
The primary attack description of a Furry Doe is "licks her lips and approaches you in an hypnotic saunter. Even as the rational part of your brain screams at you to flee as fast as you can, you offer no resistance as she kneels before you and undoes your zipper. A startlingly long tongue uncurls and wraps around your cock, limp at first, but rapidly swelling into her muzzle as she lowers down onto you, suckling at you noisily. Hot ripples of pleasure radiate through your body with every warm wet draw of her mouth before you feel your seed splashing across her tongue, grunting with pleasure. She draws back, revealing your new, huge, organ.".
The TF description of a Furry Doe is "begins to pant loudly as brown and cream fur coats their body. They groan, collapsing to all fours a moment, exploding out of their clothes as they grow, looking like a deer for a moment before they rise, huge breasts and erect shafted as a".

Section - Stag

A Stag is a infection model. It is a hunter.  It is rare. The description of a Stag is "A tall humanoid with generous curves and aroused members. They seem to prefer the company of their own, or making more of that same company. Behind them, a short tail wags eagerly over an exposed set of vulva. The tail is brown along the top with soft white colored fur on the underside. Her feet are more like two hooves. This stag is a bit taller than other does you may see, and has a handsome rack of antlers atop of her head."  The TF table of a Stag is Table deer.  Stag is neuter. A stag is horny. A stag is fearful.

The move rate of a Stag is 2.
The attack rate of a Stag is 2.
The reflex of a Stag  is 12.
The primary attack description of a Stag is "Approaches with a grin on hir face, hir thick organ splashing around as shi grabs at".
The TF description of a Stag is "tears off their pants heedless of who is watching, jerking at their aroused member as their body grows large breasts. Huge antlers project from their head as they groan, becoming a".

Section - Coyote
 
A Coyote is a infection model. It is horny. The description of a Coyote is "An overly curvy furry female. She looks like a fox or a wolf, no wait, coyote. You've seen coyotes before, though never this pretty. She stands on two slim digitigrade paws and is covered with soft orange/brown fur, except for a stripe of white that runs from her snout down to between her legs. The white fur spreads out over her large, D cupped breasts, of which she has four, jostling and jiggling with every step she takes. Dripping from the pinkened teats is a constant thick flow of cream. [if pregnant of noun is 0]Her white furred belly is slim and fit.[otherwise if pregnant of noun is less than 10]Her soft white belly shows a pudgy bulge outwards.[otherwise]She has a rounded dome of a belly, covered in soft white fur, full of life.[end if]".  The TF table of a Coyote is Table coyote. Coyote is female.

The move rate of a Coyote is 2.
The attack rate of a Coyote is 3.
The reflex of a Coyote  is 12.
The willpower of coyote is 15.
The coyote is stat-switched.
The primary attack description of a Coyote is "[one of]approaches with a smile, reaching with slender hands to take the cheeks of her victim. She draws them forward towards a thick teat, almost burying their face in delightfully soft breastflesh. They are lost in the simple pleasure of feeding on that thick, sweet cream, that they don't notice the chance in[or]leans back and rubs over her crowded chest a moment just as their victim passes by, brushing a bit of warm milk across[or]gives out a sudden sharp whine. Despite having no words in it, her victim is compelled suddenly to approach and grab her. She is soon being drained, feeding the hapless soul her thick milk, barking with pleasure as change runs through[at random]".
The TF description of a Coyote is "grabs at their chest, moaning and grinding their legs together as fur blossoms across their form. As their voice becomes increasingly sultry, they look up to you pleadingly, gasping as four large breasts burst free, covered in white fur. She yelps and shudders as her body reforms, a thick horny scent rising in the air as she become a".

Section - Alpha Lion
 
A alpha lion is a infection model. It is unique. It is a seeker.  The description of a alpha lion is "A large, strongly muscled and powerful lion/human hybrid. He has a dark brown mane and slightly lighter fur everywhere else with round ears and sharp looking teeth. He is entirely naked, allowing you to see his thickly furred sheath and the jutting pink lion shaft. It is oozing with precum as he walks and seeks out a mate."  The TF table of a alpha lion is Table 21. alpha lion is male.

The move rate of a alpha lion is 1.
The attack rate of a alpha lion is 3.
The reflex of a alpha lion  is 12.
The primary attack description of a alpha lion is "lunges with large powerful paws and gets a good grip on".
The TF description of a alpha lion is "gives a low purring growl as they expand into a".

The lion tail is a[ kind of] body part.  The body part origin of the lion tail is "rear".  The shift of  the lion tail is "You can't help but to shake your ass as something squirms just above it.  Involuntary grunts and moans greets your new appendage as it drops and begins to twitch  softly, a long tufted lion's tail."  The desc of the lion tail is "You have a long tufted  lion's tail."  The TF table of the lion tail is Table 20.

The lioness tail is a[ kind of] body part.  The body part origin of the lioness tail is "rear".  The shift of  the lioness tail is "You can't help but to shake your ass as something squirms just above it.  Involuntary grunts and moans greets your new appendage as it drops and begins to twitch  softly, a long tufted lion's tail."  The desc of the lioness tail is "You have a long tufted  lion's tail."  The TF table of the lioness tail is Table 21.
 
The lioness cock is a[ kind of] body part.  [The body part origin of the lioness cock is "pelvis".]  The shift of  the lioness cock is "Your clit twitches, then expands explosively from your groin. As you groan with the new sensations, it tenses, then explodes powerfully, spraying the area with sticky strands of seed. You feel ready to mate with anything."  The desc of a lioness cock is "Above your other genitals is a huge lion shaft that twitches and oozes heavy precum on the ground wherever you walk." The TF table of the lioness cock is Table 21.

Section - Male Mall Rat

The male rat tail is a[ kind of] body part.  The body part origin of the male rat tail is "rear".  The shift of  the male rat tail is "Your ass itches oddly a moment before an almost wet slithering is felt as your tail comes into being. It is sinuous and flexible and slides smoothly without disrupting anything."  The desc of a male rat tail is "Behind you, a large pink hairless rat's tail twitches softly." The TF table of the male rat tail is Table 23.

A rat dude is a infection model.  The description of a rat dude is "Eeek! A rat! On two legs no less. Standing about five feet tall with a long pink naked tail and wearing the latest in fashion, this rat looks properly equipped for hanging out at a mall with its friends, probably other rats."  The TF table of a rat dude is Table 23. a rat dude is male.

The move rate of a rat dude is 3.
The attack rate of a rat dude is 2.
A rat dude is stat-switched.
The attack type of a rat dude is "growth".
The target of a rat dude is the male rat tail.
The reflex of a rat dude is 8.
The willpower of a rat dude is 12.
The primary attack description of a rat dude is "hangs out with you and starts talking about shopping and recent scandal and celebrity rumors. Just as you begin to understand him, a strange sensation is felt behind you, a new limb slithering into existence."
The secondary attack description of a rat dude is "hangs out with".
The TF description of a rat dude is "sinks to their knees as black fur overwhelms their body and they grow long rat tails, rising as a".
 
Section - Rabbit Guy

The rabbit vagina is a [ kind of] body part. The rabbit vagina is soft.  The body part origin of the rabbit vagina is "pelvis".  The shift of  the rabbit vagina is "A powerful warmth builds in your belly before pressing down. Squirming, you can only gasp as the heat finds an outlet through a new orifice, thickly lipped, your new vagina is lined with soft white fur and hides between balls and ass."  The desc of a rabbit vagina is "Between your balls and ass is a plump vagina of a rabbit, surrounded with white fur." The TF table of the rabbit vagina is Table 22.

A rabbit guy is a infection model. It is a seeker.  The description of a rabbit guy is "This obviously male rabbit sports a very human like cock that juts a foot from its crotch. It's holding chocolates and eggs and is always smiling. His expression is a little distant, but seems to come into a bit of focus if a female rabbit is around."  The TF table of a rabbit guy is Table 22. a rabbit guy is male. A rabbit guy is fearful.

The move rate of a rabbit guy is 1.
The attack rate of a rabbit guy is 1.
A rabbit guy is stat-switched.
A rabbit guy is benign.
A rabbit guy is one-time.
A rabbit guy is pacified.
The attack type of a rabbit guy is "growth".
The target of a rabbit guy is the rabbit vagina.
The reflex of a rabbit guy is 8.
The willpower of a rabbit guy is 20.
The primary attack description of a rabbit guy is "approaches you with a brightly colored egg in his furry hand. You consider refusing it, but something about the rabbit makes you trust him. You reach and accept the egg, chewing it softly before it is gone. The rabbit nods knowingly at you and pats you on the ass before moving away. Odd."
The secondary attack description of a rabbit guy is "lunges at a person and begins thrusting their cock into them with great zeal. There is a lot of grunting and squealing before a titanic explosion of seed leaves the rabbit and the victim covered in goo as well as a small area around the both. The rabbit guy looks peaceful again and gets off".
The TF description of a rabbit guy is "is covered in white fur and groans as their clothing tears off of them in the transformation. They look around dazed a moment as they become an ".

[Creatures end]

[Play.Start start]

Book 5 - Play



randominfection is a number that varies. randominfection is usually 1.
 
 Instead of looking for the first time:  [welcome people and starts getting input for stats]
	say "Welcome to Flexible Infection!  At any time type [quotation mark]help[quotation mark] for a list of help commands.  First off, how evasive would you like people to be?  Pick a number from 1 to 10 to decide it - the lower the number, the easier it will be for them to be hit."

Startcount is a number that varies. Startcount is 0.

After reading a command when the turn count is 1: [continues getting input for stats and then starts game]
	if the player's command matches "[number]":
		if Startcount is 0:
			if the number understood is less than 11 and the number understood is greater than 0:
				now the reflex of normal man is the number understood;
				say "Thank you!  And how resistant would you like them to be to changes?  This time, pick a number from 1 to 10.  This will decide how quickly they succumb once they've been infected - the lower it is, the quicker they change.";
				now Startcount is 1;
			otherwise:
				say "That's not a valid number.  Try again.";
		otherwise if Startcount is 1:
			if the number understood is less than 11 and the number understood is greater than 0:
				now the willpower of normal man is the number understood;
				say "Great!  Now there's just one last question: how would you like to distribute your stats?  You have 20 points to distribute as you choose between two stats: Reflex, which allows you to avoid attacks, and Willpower, which allows you to resist further changes.  How many of the 20 points would you like for Reflex (minimum 1, maximum 19)?[line break]";
				now Startcount is 2;
			otherwise:
				say "That's not a valid number.  Try again.";
		otherwise if Startcount is 2:
			if the number understood is greater than 0 and the number understood is less than 20:
				now the reflex of ctype of the player is the number understood;
				now the willpower of ctype of the player is 20 minus the number understood;
				say "With a Reflex score of [reflex of ctype of the player], you will have a Willpower of [willpower of ctype of the player]!  Enjoy the game![line break]";
				say "Oh, one more question, do you want random transformation by item? If not, items will never force people to use them. Enter 1 for forced, 0 for manual.";
				now Startcount is 3;
			otherwise:
				say "That's not a valid number.  Try again.";
		otherwise if Startcount is 3:
			if the number understood is greater than -1 and the number understood is less than 2:
				now the randominfection is the number understood;
				if randominfection is 1:
					say "Ok, items will tempt people towards them.";
				otherwise:
					say "Ok, items will not tempt people.";
				now Startcount is 4;
				say "I lied, two more questions. Do you want be a male? Type 1 for yes and 0 for no.";
			otherwise:
				say "That's not a valid number.  Try again.";
		otherwise if Startcount is 4:
			if the number understood is greater than -1 and the number understood is less than 2:
				let z be the number understood;
				if z is 1:
					say "Ok, you are a male.";
				otherwise:
					say "Ok, you are a female.";
					now playerfemale is 1;
				now Startcount is 5;
				say "Do you want items to be randomized? 1 for yes, 0 for no.";
			otherwise:
				say "That's not a valid number.  Try again.";
		otherwise if Startcount is 5:
			if the number understood is greater than -1 and the number understood is less than 2:
				let z be the number understood;
				if z is 1:
					say "We'll pick five items.";
					let q be a random not selected on-stage infectitem;
					now q is selected;
					let q be a random not selected on-stage infectitem;
					now q is selected;
					let q be a random not selected on-stage infectitem;
					now q is selected;
					let q be a random not selected on-stage infectitem;
					now q is selected;
					let q be a random not selected on-stage infectitem;
					now q is selected;
					repeat with P running through not selected infectitem:
						now P is off-stage;
					now all things are not selected;
					repeat with thingie running through on-stage infectitem:
						move thingie to a random ic room;
				otherwise:
					say "Perhaps you'd like to have more choice?";
					infection menu;
				now Startcount is 5;
				try looking;
				follow the advance time rule;
				rule succeeds;
			otherwise:
				say "That's not a valid number.  Try again.";
	otherwise:
		say "That's not a valid entry.  You need to enter a number.";
	reject the player's command.
	
playerinput is a snippet variable.
To get typed command as (S - a snippet): (-
	KeyboardPrimitive(buffer, parse);
	{S} = 100 + WordCount();  -)

To Infection Menu:
	repeat with x running through on-stage infectitem:
		now x is selected;
	while 1 is 1:
		say "Allowed Infection Items: [list of selected on-stage infectitem][line break]";
		say "Disallowed Infection Items: [list of not selected on-stage infectitem][line break]q to quit[line break]a to allow all[line break]d to deny all[line break]>";
		get typed command as playerinput;
		let tex be indexed text;
		now tex is playerinput;
		if playerinput matches "a":
			repeat with z running through infectitem things:
				now z is selected;
			next;
		if playerinput matches "d":
			repeat with z running through infectitem things:
				now z is not selected;
			next;
		if playerinput matches "q", break;
		change the text of the player's command to playerinput;
		repeat with z running through infectitem things:
			if printed name of z in lower case matches the text tex in lower case:
				if z is selected:
					now z is not selected;
				otherwise:
					now z is selected;
	repeat with P running through not selected infectitem:
		now P is off-stage;
		
	
The destined masculinity of the player is a number that varies.

The destined femininity of the player is a number that varies.

 When play begins:
[	now the right hand status line is "[if player is femme]F[end if][if player is butch]M[end if]|W:[willpower of ctype of the player]|R:[reflex of ctype of the player]|P:[number of not infected body parts]";]
	repeat with x running through infection models:
		now x is a part of pelvis;
	now The destined masculinity of the player is a random number from 0 to 1;
	now The destined femininity of the player is a random number from 0 to 1;
	if the destined femininity of the player is 1 and the destined masculinity of the player is 1:
		if a random chance of 99 in 100 succeeds:
			if a random chance of 1 in 2 succeeds:
				now the destined masculinity of the player is 0;
			otherwise:
				now the destined femininity of the player is 0;
	if the destined femininity of the player is 0 and the destined masculinity of the player is 0:
		if a random chance of 1 in 2 succeeds:
			now the destined masculinity of the player is 1;
		otherwise:
			now the destined femininity of the player is 1;
	if a random chance of 1 in 2 succeeds, now the tf table of a random stag antlers is table furry deer.

	

When play begins:
	repeat with part running through out of play things:
		remove part from play;
	repeat with part running through out of play persons:
		remove part from play;
	let j be a random not out of play easter egg;
	if j is not nothing:
		now The description of J is  "A brightly colored and delicious looking egg. Just perfect to start the day.";
	

[Play.Start end]
[Play.End start]

Part - Demonic Mouse Corruption


instead of opening the stable doors for the first time:
	say "You reach to open the doors when suddenly a horse sails over the top and goes galloping towards the city like a bolt of lightning. What was that all about?";
	if there is an on-stage npc person:
		let z be a random on-stage npc person;
		now the tf table of z is table horse mare;
		tf z;
	otherwise:
		let q be a random off-stage person;
		move q to a random visited room;
		now tf table of q is table horse mare;
		tf q;
	now prometheus is in the stables;

instead of opening the pasture door for the first time:
	now the pasture door is open;
	say "You reach for the door and something woolly rushes right out at first opportunity.";
	let z be a random on-stage npc person;
	now the tf table of z is table sheep;
	tf z;
	now the tf table of player is table collie;
	tf player;
	now the ctype of player is pc;
	say "[line break]A second shape charges past you, 'You let my sheep out, bad! Now you can help me get them back.'";
	let u be a random off-stage person;
	if u is not nothing:
		now the tf table of u is table collie;
		tf u;
		move u to a random visited ic room;
	

Studly is a number that varies. Studly is 0.
kitsunespawn is a number that varies. kitsunespawn is 0.

every turn while kitsunespawn is 0:
	repeat with Z running through on-stage monster persons:
		if ctype of z is demonic mouse or ctype of z is rat dude or ctype of z is slutrat:
			let u be a random on-stage foxy person;
			if u is nothing:
				now u is a random off-stage person;
				if u is nothing, now u is a random unchanged on-stage npc person;
				if u is not nothing:
					now u is in forest glade;
					now the tf table of u is table vixen;
					tf u;
					now kitsunespawn is 1;
	
Every turn while a mare person is in stables and studly is 0:
	now studly is 1;
	now the tf table of anthro mare is table 9;
	repeat with z running through mare persons:
		now the tf table of z is table 9;
		move z to the stables;
	now the anthro mare is horny;
	if there is a visible mare person:
		let X be a random visible mare npc person;
		say "With a deafening sound of thundering hooves, the stables fill with all those infected with the horse infection.";
		say "[The X] suddenly calms down, and looks at you with a whole new expression. She moves up towards you, her breasts and hips swaying hypnotically as she reaches for your chest. Soft, black furred, fingers play at you as she works them lower, grabbing at you between the legs and rubbing firmly, 'Our stud...'[line break]You notice that the key is nowhere to be seen, and the stall doors are closed, and locked!";
		infect chest with x;
		infect pelvis with x;
		remove iron key from play;
		now stable doors is closed;
		now stable doors is locked;
		The mare releases in 10 turns from now;
		try the player kissing x;

At the time when the mare releases:
	say "The mare, seemingly satisfied, finally opening the door to let you out.";
	now the stable doors are unlocked;
	now the stable doors are open;
			
	

Every turn while there is a on-stage mousey npc person:
	repeat with x running through on-stage mousey npc persons:
		if a random chance of 1 in 3 succeeds and there is an unchanged not infected person in the location of x:
			let y be a random unchanged not infected person in the location of x;
			if a random number from 1 to the willpower of x is greater than a random number from 1 to the willpower of y and y is not the player:
				if y is visible:
					say "[The y] approaches the demonic mouse and they are soon in one another's arms, rutting and fucking with wild abandon. The man doesn't seem at all aware of his impending doom as he releases deep into the female.";
				otherwise:
					if corruption is 5:
						say "Your soul echoes softly as the wails of [the y] are heard as it is damned. A rush of coldness sweeps past you, heading downwards where heat resides, waiting to warm you.";
				infect y with x;
 
Dragoncounter is a number that varies. Dragoncounter is usually 0
 
Every turn while the player is in Apartment roof:
	increase dragoncounter by 1;
	if dragoncounter is 1:
		say "The ground under you shudders softly. What is going on in this city?";
	otherwise if dragoncounter is 3:
		say "A huge female figure steps up alongside the roof, and looks down at you with a sudden smile, [apostrophe]Hello little human thing. You're just the thing I was looking for, and already so far up too...[apostrophe] You edge towards the stairs as she talks, hoping to flee her. Her fist comes down, smashing the stairs to pieces. [apostrophe]Not so fast...[apostrophe]";
		change down exit of apartment roof to nowhere;
		change up exit of first floor hallway to nowhere;
		now the apartment roof is not IC;
	otherwise if dragoncounter is 4:
		say "Despite your attempts to avoid it, her talons close around you, and lift you clear off the roof. For a moment you can see nothing but the scaly insides of her hands before they unfold. You can see much more of the city from this dizzying height. She is smiling at you, She must be six stories tall, with a body to match. If you fell, you could hope to land on a breast, should slide you down a full story. Beyond that, though, was a huge... tower... of a cock, half as tall as she is, dripping thick gobs of pre to splash noisily on the street below.[line break][line break][apostrophe]Don't you worry a bit, little one, you'll be big and strong soon.[apostrophe], she coos in a soothing tone as she spreads her stance out a bit and lowers you past the ridged shaft, past the huge breasts and wide hips. A new scent assails your nose, making you dizzy with lust as her huge cunt comes towering into view, getting larger by the moment all too swiftly.";
	otherwise if dragoncounter is 5:
		now the tf table of player is table huge dragoness;
		tf player;
		now the player is pacified;
		let u be a random on-stage person;
		now the tf table of u is table huge dragoness;
		tf u;
		now the matron of u is u;
		say "Wetness suddenly descends over you as you're plunged into that seeping orifice. Powerful, slick, muscles grip and pull you upwards as you struggle for breath, senses reeling as the pheromones threaten to drive you mad with desire. Seemingly forever later, you spill out into a dark watery tomb, swimming around in an Olympic pool all to yourself. You finally succumb to the need to breath and open your mouth, then cough violently, but soon you are breathing normally despite it. Your body tingles faintly, but otherwise you begin to feel almost... normal. Normal as anyone can feel inside a giant womb.[line break][line break]Your tranquility is interrupted as the chamber begins to shudder and quake in rapid but rhythmic motions. An unexplained pleasure builds in your groin before cresting in a crashing orgasm, your liquids added to the womb as you muffeldly groan with sourceless pleasure. Sudden heat washes up along your feet, legs, hips. Your eyes, adjusting to the gloom, can see that it is a soft grey. Someone just fucked your new mother! The cum flows up over your body and the tingling triples in intensity.[line break][line break]You groan and shudder, growing and gaining mass rapidly. Your body is covered in fine scales and your chest forms into plentiful breasts. Your changing hands, becoming talons, grab at your thickening shaft, stroking it in quick jerks as you groan and pant. Between your legs, behind your balls, a new burning is felt, and you stray a hand back to it, teasing at yourself with your new claws. All too soon, your body becomes cramped, curled up inside your new mother, your shaft wedged into your own mouth, suckling it and waiting.[line break][line break]She does not keep you waiting long. The chamber clenches powerfully, and begins to push. Like a sudden water luge, you slip down into her tunnel, and flop out powerfully to the ground, whumph! [apostrophe]There you are, my child. Your sister is already out in the city. Find her, fertilize the captured humans with her. The one who bears the most will get a special favor of me[apostrophe], she promises with a toothy grin. While you struggle to your feet, she saunters off, leaving the city behind.";
		move the player to downtown;
		say "[bold type]((You feel like you could just 'grab' people up! Note, you cannot do this while pregnant ))[roman type]";
		now the command prompt is "Pregnancy: [pregnant of player] Fertilized:[if player is fertilized]Yes[otherwise]No[end if]>";		


Every turn while a mousey npc person is visible and corruption is less than 5:
	Let z be a random visible mousey person;
	if z is nothing, stop the action;
	now the prey of z is the player;
	if a random chance of corruption plus 2 in the willpower of ctype of the player succeeds:
		say "Something deep inside of you smolders with unclean desire as you approach the mouse, who watches you with a dark amusement, ";
		try the player kissing z;
	otherwise:
		say "You resist the urge to have anything to do with that demonic looking mouse. It might be best to get away from here.";

Every turn while a person (called victim) is stuck to a pentagram (called pentie):
	if the male rat tail is visible:
		now the victim is not stuck to the pentie;
		now a random visible rope is not stuck to the pentie;
		now the tf table of player is table slutrat;
		tf player;
		repeat with u running through on-stage monster persons:
			if ctype of u is rat dude:
				now tf table of u is table slutrat;
				tf u;
				now ctype of u is slutrat;
				now tf table of u is table slutrat;
		say "A mouse appears in the pentagram, curvy, female, and dark red in color. She stares at you a few moments, then vanishes in a puff of sulfur, leaving [Victim] where they started, wriggling in muffled panic.[line break][line break]After a few moments, a new figure appears, more slender, but still quite curved, with more a rat than a mouse. She looks around, then down at [printed name of Victim], laughing, [apostrophe]What is this, a snack? She is good to her mistress...[apostrophe] It is only then that she seems to notice you, looking you over with a frown, [Apostrophe]Oh ho, what is this? A lost worshipper? But you're all blocked up, my dear, to think something would bear so close a harmony to me but have so little lust.[apostrophe] As she whispers, your body seems to freeze in place under her penetrating stare. Her soft pink hands reach to grab at your crotch, where a new, large, black shaft is swelling larger by the moment as if magnetically drawn to her.[line break][line break]With every stroke, stars dance before your eyes. Your balls swell as excitement grows and your body begins to warp and chance, leather appearing over you, clinging tightly as huge breasts swell. You coo and groan under her touches, wanting to climax, but denied the pleasure of it by her teasing paws. Your shaft suddenly lurches, seed rushing up the passage just for the rat to clench it shut. The seed seems to flow and flow, pressure building, cock growing larger under the pressure, then she pushes down, forcing it all back into your balls. You black out from the sudden pain of it.[line break][line break]When you awaken, your victim is free, but staring at you with amazement, and you have changed. A soft voice whispers in your large left ear, [apostrophe]Go and enjoy the freedom I have given you. Your kind will know me as a most generous and loving god.[apostrophe]";
	otherwise:
		if the victim is a mousey person:
			say "The mouse seems quite surprised when you shove her back into the pentagram and start the ritual over again. 'Wait!' she cries out, but you ignore her pleads and begging, even as she offers the most exquisite of delights and threatens most vile retributions. Her curvy form jiggles as she struggles with a last sneering snarl before you are thrown to your back under an explosion of sulfur and a wash of heat.[line break] [line break]The mouse is gone, replaced with a rat looking figure, as curved as she is potent. She runs a pink hand down along her side, giving her shaft a slow pull as she looks you over, long naked tail flicking thoughtfully.";
			if corruption is less than 5:
				say "'You are not one of mine,' she declares after a brief time. 'You have some gall, sorcerer, to call me as a mortal. Your kind has no power over me, nor interest, save as soul material.' She reaches for your trembling form, hauling you to your feet.";
				if the player is femme:
					say "With a wave of her hand, any clothing you were wearing is burnt to ash, sulfur smell growing worse. She draws you up against herself, thrusting herself deep into you as her naked hands hold your hips, pulling you down against her motions, 'Mmmm, it has been a while since I shared simple pleasures with a simple creature. Perhaps you will serve a purpose yet.' With one final push, your insides suddenly feel like they're on fire, her boiling hot seed burning a hot path through you, drawing a sudden scream. The demon leans in to kiss your open mouth, breathing into you. Each gust of her sweetened breath converts the pain, soon delirious pleasure. As you lose grip on your sanity, she steps back into the pentagram with you, whisking you away to the nether worlds.";
				otherwise:
					if the player is butch:
						say "Her pink hand reaches to your cock, stroking over it with feather touches, her huge wicked claws just grazing the sensitive flesh as whatever clothes you were wearing dissolve into sulfuric ashes, 'Mmm, men always were weakest. I will make my offer, and you will take it,' she instructs, giving a pleasant squeeze to that organ. She then turned, raising her tail and exposing her thick lipped pussy, 'You come with me, keep the girls... entertained, when they are not on duty.' The foul stench that comes from the rat is undeniable. While the rational part of your mind struggles to break away, the command sent to your animal side cannot be denied, and you are soon on top of the rat, pistoning wildly into her. She grunts, squeezing her tunnel around you expertly, stroking you off even as you thrust into her, 'Yes, good little male, you keep that up and we might just keep you a long...long time' With loud laughter, she steps back into the pentagram with you, and you both vanish back to hell.";
					otherwise:
						say "'You are of no use to me at all. Mmm, did you think being a Eunuch would spare you my temptations? I suppose it does at that... Clever summoner. Very well then, we will bargain. Speak your terms.' You are unsure what to say at first, but you know you have to speak fast. You scramble to your feet and quickly spit out your fondest wish. 'Oh, that? I could do that, but what do I get in return?' You try offering things you have, but what use has a demon for such trinkets? She eventually agrees to make your wishes come true, but on the condition that the first person you truly care for that dies will become hers on death. Such a small price.";
				now altending is 1;
				end the story saying "";
				stop the action;
			otherwise:
				say "She looks you over and give a loud laugh, 'One of my future girls, who still clings to some tiny shred of purity.' She steps up to you, grabbing at your new breasts, claws pinching at your teats, sending waves of pleasure through your demonic form, 'Oh, so precious. I don't usually get to play with you until after you're entirely damned.' she whispers, stroking over you as she pushes you back, licking at her lips. 'As much as I would like to simply fuck your little brains out until you were begging to be mine forever, I feel there's a better possibility, if I wait. You still have a small bit of your old, male, self in there. Let me show you'. She grabs you between the legs then, rubbing firmly across your distended vulva, stroking as she gazes into your eyes.";
				grow mouse cock from pelvis;
				say "'Now that is much better. This a gift, girl of mine. While we have played, the city has succumbed to mortal disease of  human creation. Go forth, bring my influence to them with your new toy.' She emphasizes her words by squeezing at your new cock, slowly stroking, 'Work quickly enough, and you will be rewarded thoroughly.'";
				Judgement in 20 turns from now;
				repeat with k running through npc persons:
					move k to a random IC room;
					now the tf table of k is a tf table of a random female infection model;
					tf k;
	[			repeat with counter running from 1 to 20:
					move a random off-stage female to a random IC room;
	]
			now the victim is not stuck to the pentie;
			now a random visible rope is not stuck to the pentie;
			remove the victim from play;
			try looking;
			stop the action;
		say "[The victim] struggles wildly as you lash them down to the pentragam. You get out your book of 'ancient rites and rituals' and give it a try. Stomping around, lightning incense, slitting his throat. Slitting his throat? You should have read ahead! Racked with uncertainty, you hesitate. In that moment, [the victim] screams, and is engulfed in flames, something new appearing.";
		now the victim is not stuck to the pentie;
		now a random visible rope is not stuck to the pentie;
		move the victim to the location of the player;
		if a random chance of 4 in 5 succeeds:
			now the tf table of victim is table demonic mouse;
		otherwise:
			now the tf table of victim is table 8;
		tf victim;
		try looking;
	
at the time when judgement:
	say "A sudden flush of warmth runs through your body, your cock spraying a gob of foul smelling spunk to the ground, then another. You grunt and groan with unexpected pleasure as a puddle slowly forms under your quivering pole. From it rises the demon rat, smirking with hands on her hips. 'Now let's see what we've been up to.[if fucked is 0] Not even one? Not even a single one? I guess you didn't want to do it after all. Ah well, I can still get use from you.[otherwise] I see you fucked [fucked]. I could have done better, but I suppose I can only expect so much from such a new demon.[end if]";
	if fucked is 0:
		end the story saying "You are stripped of your cock and become the lowest demons of your mistress' army. You are abused and mocked and fucked when nothing else is at hand. This not to say that your new family  has no care for you. They love you, in their own twisted way, and protect you from predation of other hell spawn. You never advance from your lowly position, however.";
	otherwise if fucked is less than 5:
		end the story saying "'Ah well, you will serve me well enough as my personal pet,' she decides, grabbing at the scruff of your neck. Your neck tingles as a golden collar forms around it, 'Such a cutie you are too.' She kisses your cheek, then your nose, long tongue slipping out to lick over your face as she draws you back into the puddle she emerged from. In hell, you remain at her side, serving loyally as one of her most favored submissive possessions. She puts many children into your belly over the coming eons, and you exist in a state of general contentment.";
	otherwise:
		end the story saying "'You show promise, real promise. You will be as a general in my army. Come forward and accept my blessing.' She thrusts her hips forward. Acting on an unknown instinct, you greedily take her large shaft into your snout and suckle eagerly at her. She grabs at your large ears, rubbing as she rocks into you. Molten heat pours down your throat as your red fur grows denser and bristly, tail losing its fur, bright pink, as does your hands. Your form grows and sharpens, becoming rat instead of mouse. [line break][line break]You rise and follow your mistress to hell, where you develop your demonic powers, growing more powerful over time. You lead her rodent armies in great campaigns, against other demonic forces, and even heaven itself. In time, you amass a great harem all of your own, you and your mistress now peers, friends, allied under one banner.";
		
definition: A person(called N) is mousey:
if the ctype of N is demonic mouse, yes;
no;

definition: A person(called N) is foxy:
if the ctype of N is vixen, yes;
no;

definition: A person(called N) is daughter:
if the matron of N is the player, yes;
no;

definition: A person(called N) is centuaressy:
if the ctype of N is centauress, yes;
no;

definition: A person(called N) is uber:
	if the ctype of N is uberfox, yes;
	if n is the player:
		if the ctype of head is uberfox, yes;
	no;

definition: A person(called N) is brave:
	if the tf table of ctype of n is not the tf table of n, no;
	if the ctype of N is not fearful, yes;
	no;

definition: A person(called N) is tauric:
if the ctype of N is felitaur, yes;
if the ctype of N is centaur, yes;
if the ctype of N is fennec taur, yes;
no;

definition: A person(called N) is drooly:
if the ctype of N is husky stud, yes;
no;

definition: A person(called N) is buzzy:
if the ctype of N is large bee, yes;
no;

definition: A person(called N) is jackaly:
if the ctype of N is jackal priest, yes;
no;

definition: A body part (Called N) is ok:
if N is not visible, no;
if N is not touchable, no;
if the location of n is not the location of the player, no;
if N is not part of the player, no;
yes;

definition: A person(called N) is mare:
if the ctype of N is anthro mare, yes;
no;
 
definition: A person(called N) is alpha:
if the ctype of N is alpha lion, yes;
no;

definition: A person(called N) is lionette:
if the ctype of N is lioness, yes;
no;
 
definition: A person(called N) is staggy:
if the ctype of N is stag, yes;
no;

definition: A person(called N) is skunky:
if the ctype of N is skunkbeast, yes;
no;


definition: A person(called N) is squirrely:
if the tf table of ctype of N is table 55, yes;
no;

instead of kissing a mousey person (called seducer):
	if there is visible infected body part and corruption is less than 5:
		say "The mouse shakes her head and runs her paws over your trembling form. 'I can't share you, you are mine alone...'";
		repeat with x running through visible infected body parts:
			infect x with the player;
	If the pelvis is secret:
		let z be a random worn bottomed clothing;
		try player taking off z;
		say "A sudden urge has you removing your pants.";
	if corruption is 0:
		say "The mouse leans in and nuzzles against your belly, speaking words that are difficult to understand, deep and guttural even as they wrap around your mind like silken wine. You can feel your shaft rising to painful prominence as she strokes it slowly with her ebon furred hands, gazing up at you with a smile, 'That's it, embrace the repressed urges within you. I will show you such things that you had dared not to even dream.'";
		increase corruption by 1;
		stop the action;
	if corruption is 1:
		say "'Don't even think of escape. This what you want,' whispers the mouse as she turns before you, raising her tail and exposing her huge, winking nether lips. The stench of it is like a kick in the gut, at first repulsive, like fouling urine, but as it burns its path into your nose, it seems to change, suddenly a sweet, flowery fragrance, luring you forward. Your hands settle as the small creature's grand hips, rubbing over them as she coos encouragingly.";
		increase corruption by 1;
		stop the action;
	if corruption is 2:
		say "Unable to further resist, you feel like a passenger in your own body a moment as the mouse mounts your steely hard member, sinking her huge lips around it with a wet parting sound. The fluids that run along her tunnel burn along your shaft, but this does not stop you from starting to rut up into her, rocking against her with a mad desperation. As muscle control returns to you, you feel as if you have a moment, a precious final moment, to resist, to draw back, but it all feels too good, and you plunge as far into her as you can.[line break][line break]Your balls contract almost painfully as you spray into her waiting womb, crying out with pleasure as something seems to flow from you into her, carrying some vital essence that has her squealing with satisfaction. As the moment fades and you slump towards the ground, she rises back to her feet and grins at you, 'I have taken that troubling male energy from you, now I will show you the pleasure of my kind.'";
		increase corruption by 1;
		stop the action;
	if corruption is 3:
		say "The mouse pushes you back to a sitting position and moves in to mount your still hard shaft, sitting in your lap and hugging around your middle. She rises and falls against you in slow, misleadingly loving motions as she murmurs gentle approval. As your shaft tenses, ready to release, she reaches beneath herself and takes your balls in her furry fingers, squeezing painfully. With a loud yelp, you reach an explosive climax within her small body, making her belly begin to swell dangerously as she clenches all the firmer. By the time she is done, there seems to be little left of your poor sac. It is present, but feels empty now.[line break][line break]'Good boy. But for how long,' she asks even as your shaft goes limp at last. 'Don't worry my pet, I won't leave you this way for long.";
		increase the corruption by 1;
		stop the action;
	if corruption is 4:
		repeat with z running through visible body parts:
			infect z with seducer;
		say "Feeling exhausted, you are almost relieved when the mouse pushes you onto your back, letting you pant for breath. Soft wetness descends on your limp member. At first you think she has mounted you again, but a glance shows it is her lips, suckling at you with loud lewd noises. With every powerful suction, your body begins to change. Fur spreads down from your hair as it hues to a deep bold red color. Your ass itches as a new tail slinks free, your body distorts as it grows generous hips and sheds in height. Soon you are as short as she, giving loud, female, cries of pleasure as she dips her tongue deep into your new vulva. As climax ripples through you, she nips and pulls, stretching your new sex large and wide enough to take things much larger than you. You appear to be a demonic mouse, much like her.[line break][line break]'Oh, don't you think that's done yet. You have to find a male and let him put his seed in you, only then will the corruption be complete,' she informs, 'And don't even dream of resisting.";
		increase the corruption by 1;
		stop the action;
	if the player is butch:
		say "The demon mouse glances between your legs at your new tool and gasps in shock. She suddenly turns and makes to escape, and a powerful drive takes your new form. You grab her hips as they are presented and draw her back, slipping into her hot folds and starting to rock against her. She curses and blasphemes profusely even as her form shakes with pleasure. When you release, her body bloats heavily. She shudders powerfully before sinking against you, impaled on your mighty cock, then fading with a puff of sulfur, defeated and sent back to the netherworld.";
		remove seducer from play;
		increase fucked by 1;
	otherwise:
		say "The mouse laughs at you softly, but refuses to get amorous beyond a kiss on either cheek, 'Go find a mortal to seduce.'";

Part - Slutrat Actions

definition: A person(called N) is ratty:
	if N is the player:
		if ctype of pelvis is slutrat, yes;
		no;
	if ctype of n is slutrat, yes;
	
every turn while the player is stunned:
	now the player is not stunned;
	if a random chance of 1 in 2 succeeds:
		say "You are stunned.";
		follow the turn sequence rules;

every turn while there is a ratty on-stage person:
	now ychecker is ctype of a random ratty person;
	repeat with N running through ratty on-stage people:
		if N is stunned:
			now N is not stunned;
			next;
		if a random chance of 1 in attack rate of ctype of N succeeds:
			now N is N;
		otherwise:
			next;
		if there is a not ratty not heavy person in the location of N:
			let Z be a random not ratty not heavy person in the location of N;
			let U be the number of not stunned ratty persons in the location of N;
			if a random number from 1 to reflex of ctype of Z is greater than a random number from 1 to the reflex of ctype of N plus U:
				if N is visible, say "[Printed name of Z] manages to avoid [N]'s advances.";
				next;
			if U is 1:
				if N is visible, say "[Printed name of N] rubs between their legs with a mildly pained expression, dripping fluids across the ground as they approach [printed name of Z]. [Printed name of Z] moves to step away but [printed name of N] cuts them off, then embraces them. [if Z is female or z is neuter]The rat's huge shaft is pushed up against her victim, and is soon pushing up into her, rocking intently. The pained expression is exchanged with one of rapture, turning still into a keening wail of bliss as [printed name of N] orgasms powerfully, seed spraying into [printed name of Z] in powerful bursts, the rest splattering across the ground and making [printed name of Z]'s belly swell.[otherwise][printed name of N] takes [printed name of Z] by the head and lowers towards her throbbing member, sinking the black length into their waiting throat and rocking against them. Despite eager sliding thrusts, [printed name of Z] is soon moaning muffledly in tune to the rat, overwhelmed with pheromones. The spray, when it arrives, has the rat burying her tool as deep as she can, filling the male's belly before the rest splatters across his lips, dripping over chest and belly.[end if]";
			if U is 2:
				let Q  be a random not stunned ratty person which is not N in the location of N;
				if N is visible, say "[Printed name of Q] grabs [printed name of Z] from behind suddenly  and thrusts them forward with a delighted sneer as [printed name of N] triumphantly approaches from the front. [printed name of Q] grabs [printed name of Z] at the hips and thrusts into them eagerly, starting to rock as [printed name of N] slips their cock into [printed name of Z]'s mouth. [printed name of Z] is rocked back and forth between the two love making rats, risen to fitful surges of pleasure as all three moan and thrust with growing pleasure. When the rat's peak, seed bloats the body of [printed name of Z] and splatters everywhere in the area in fitful gushes of the fertile cream.";
				now Q is stunned;
			if U is greater than 2:
				let Q  be a random not stunned ratty person which is not N in the location of N;
				let K  be a random not stunned ratty person which is not Q in the location of N;
				while K is N:
					let K  be a random not stunned ratty person which is not Q in the location of N;
				let P be N;
				if Z is male, now P is a random not heavy ratty person in the location of N;
				if N is visible, say "[Printed name of Z] looks quite horrified as they are surrounded by [Printed name of Q], [Printed name of K], and [Printed name of N].[if z is female or z is neuter][Printed name of Z] is shoved back into [Printed name of K]'s arms, who begins to rub over her chest eagerly and lay onto her back, thrusting up into [Printed name of Z]'s wet cunt from beneath her, drawing out forced, but increasingly earnest, moans. [Printed name of K] smiles at the display and draws back before thrusting her now lubed shaft into [Printed name of Z]'s ass without hesitation. [Printed name of Q] moves in above the writhing female, slipping easily into the now vacant tunnel and rutting against [Printed name of Z] eagerly. [Printed name of N], not to be left out, crouches over [Printed name of Z]'s head and begins to stroke herself manically. All four reach peak together, their cries heard through the city in their combined volume. Seed fills womb and belly as [Printed name of N] sprays wildly across face and open mouth. [Printed name of Z] almost chokes, but swallows a great deal of the seed even as she is plastered with the stuff.[otherwise][Printed name of K] grabs [Printed name of Z] by the hips and leans him forward a little, thrusting into his puckered entrance without delay. She purrs and bites at his ears as [Printed name of N] approaches and kneels, taking [Printed name of Z]'s Cock into her long snout and suckling noisily at the male.[Printed name of Q] does not come up all the way, stopping a foot back and stroking over her swollen tool as she watches the other two play with [Printed name of Z]. [Printed name of N] hits peak first, spraying wildly, her massive balls lurching and sending incredible amounts of sticky white cum raining over the two rats and [Printed name of Z] together. The rain seems to incite them all to immediate climax, [Printed name of Z] firing deep into [Printed name of N]'s eager mouth while his ass is filled by [Printed name of K].[end if][if Z is male and P is not nothing]Overwhelmed with the burning lust of infection, [Printed name of Z] grabs [Printed name of P] and shoves her to the ground with a delighted squeal from the rat. The two begin to rut against one another with increasingly loud squeaks as [Printed name of Z] thrusts harder and harder into [Printed name of P]'s cunt, even as his balls grow huge and furry. When he releases into her, her belly swells triumphantly, and he shudders, succumbing to infection rapidly.[end if]";
				if z is male and p is not nothing:
					increase pregnant of p by 1;
					now tf table of z is table slutrat;
					tf z;
				if N is not visible, say "Elsewhere in the city, a keening howl drifts, lustful and urgent.";
				now Q is stunned;
				now K is stunned;
				infect Z with N;
			if z is female or z is neuter:
				if tf table of z is not table 0 and pregnant of z is 0 and a random chance of U in 3 succeeds:
					increase the pregnant of z by 1;
					if Z is visible and tf table of z is not table slutrat, say "Sinking to the ground, [printed name of Z] rubs at her belly.";
			if tf table of z is table slutrat:
				tf Z;
				now ctype of z is slutrat;
			now tf table of z is table slutrat;
			if a random chance of U in the willpower of ctype of N succeeds:
				if z is visible, say "[Printed name of Z] is too overwhelmed to escape or retaliate.";
				now z is stunned;
			now N is stunned;
			

Part - Tree Actions

definition: A person(called N) is foliage:
	if N is the player:
		if ctype of head is tree, yes;
		no;
	if ctype of n is tree, yes;

every turn while there are on-stage foliage people:
	now ychecker is tree;
	repeat with N running through on-stage foliage people:
		let Z be the number of not foliage people in the location of N;
		if z is not 0:
			let Q be a random not foliage person in the location of N;
			if a random number from 1 to the willpower of ctype of N is greater than a random number from 1 to the willpower of ctype of Q:
				if q is visible and q is not the player, say "[Q] reaches up suddenly and plucks a fruit from [printed name of N] and bites into it, juice splattering over their face as they devour it eagerly, mmm...";
				if q is the player:
					say "You reach up suddenly and grab a fruit from [printed name of N] and begin devouring it eagerly. It tastes fantastic despite its odd appearance and is soon gone, leaving your face splattered with juicy bits.";
					infect a random visible not same body part with N;
				if N is the player:
					SAY "Intense pleasure radiates through your changed body as the fruit is plucked.";
					infect Q with head;
				otherwise:
					infect Q with N;
				
 
 instead of kissing while the tf table of pelvis is table tree:
	say "I don't think you can do that right now.";
	
every turn while the tf table of left foot is table tree or the tf table of right foot is table tree:
	now the player is immobile;
	
instead of going somewhere while the player is immobile:
	say "You can't move!";
	stop the action;

Part - Bat Actions

definition: A person(called N) is batty:
	if N is the player:
		if ctype of pelvis is bat, yes;
		no;
	if ctype of n is bat, yes;
	
every turn while there is a not heavy batty on-stage person:
	now ychecker is ctype of a random batty person;
	let spooge be 0;
	repeat with N running through not heavy batty on-stage people:
		now spooge is 0;
		if N is stunned:
			now N is not stunned;
			next;
		if a random chance of 1 in attack rate of ctype of N succeeds:
			now N is N;
		otherwise:
			next;
		now n is stunned;
		if there is a not stunned batty not heavy person in the location of N:
			now spooge is 1;
			let Z be a random not stunned batty not heavy person in the location of N;
			now z is stunned;
			let U be the number of not stunned batty persons in the location of N plus one;
			if U is 1:
				if N is visible, say "[if n is not the player][Printed name of N] spots[otherwise]You spot[end if] [printed name of Z] and [one of][if n is not the player]dives[otherwise]dive[end if] into [if z is not the player]their[otherwise]your[end if] arms, [if z is not the player][printed name of Z] catching them and drawing[otherwise]you catch them and draw[end if] them up into a tight embrace. The two bats nuzzle fiercely before moving on to kisses, then collapse to the ground, groping and squeezing at one another. Soon [if n is not the player][Printed name of N] is[otherwise]you are[end if] thrusting her huge cock deep into [if z is not the player][Printed name of Z]'s[otherwise]your[end if] sopping wet cunt, each shuddering slam drawing sighs of pleasure from the both until peak is reached. [if n is not the player][Printed name of N]'s[otherwise]Your[end if] heavy balls lift and a muffled thump is heard as [if n is not the player]her[otherwise]your[end if] cannon fires deep inside [Printed name of Z]. The seed flows thick and fast, filling womb, then splattering back and everywhere in great rains of seed.[or]creeps up behind [Printed name of Z]. She hefts up [Printed name of Z] and, without fanfare, begins to thrust right up in to [if z is not the player]her[otherwise]you[end if], holding [if z is not the player]her[otherwise]your[end if] thighs apart as [if n is not the player]she plunges[otherwise]you plunge[end if] deep into [if z is not the player][Printed name of Z]'s[otherwise]your[end if] spread cunt, the both groaning with increasing pleasure. [if n is not the player][Printed name of N] leans her[otherwise]You lean your[end if] head back as [if n is not the player]she climaxes[otherwise]you climax[end if], filling [Printed name of Z] as [if z is not the player][Printed name of Z]'s[otherwise]your[end if] own cock tenses and begins to fire thick wads of cream over the area.[at random]";
			if U is 2:
				let Q  be a random not stunned batty person in the location of N;
				if N is visible, say "[if Q is not the player][Printed name of Q] grabs[otherwise]You grab[end if] [if z is not the player][printed name of Z]'s[otherwise]your[end if] cock from behind suddenly  and begins to pump over the large, slick, organ, licking over ear and neck as they purr in pleasure. [if n is not the player][printed name of N] calmly approaches[otherwise]You calmly approach[end if] from the front, shaft bobbing with each step. She pushes the cock against [if z is not the player][Printed name of Z]'s[otherwise]your[end if] mouth, easing in slowly even as she grabs for that same cock [if q is not the player][Printed name of Q] is[otherwise]you are[end if] jerking, lapping at the head with her long tongue, caressing the entire organ as she rocks her hips up into [if z is not the player][Printed name of Z]'s[otherwise]your[end if] mouth, [Printed name of N] moaning around the cock. All three rock against one another in fitful motions of increasing lust, their pace strengthening, then slowing, then building towards a fevered tempo. Shafts gush wildly, popping free of mouths to splash cum almost violently against faces, chests, and anyone unlucky enough to be standing nearby.";
				now Q is stunned;
[			if U is greater than 2:
				let Q  be a random not stunned batty person in the location of N;
				now q is stunned;
				let K  be a random not stunned batty person which is not Q in the location of N;
				while K is N:
					let K  be a random not stunned batty person which is not Q in the location of N;
				let P be N;
				if Z is male, now P is a random not heavy batty person in the location of N;
				if N is visible, say "[Printed name of Z] looks quite horrified as they are surrounded by [Printed name of Q], [Printed name of K], and [Printed name of N].[if z is female or z is neuter][Printed name of Z] is shoved back into [Printed name of K]'s arms, who begins to rub over her chest eagerly and lay onto her back, thrusting up into [Printed name of Z]'s wet cunt from beneath her, drawing out forced, but increasingly earnest, moans. [Printed name of K] smiles at the display and draws back before thrusting her now lubed shaft into [Printed name of Z]'s ass without hesitation. [Printed name of Q] moves in above the writhing female, slipping easily into the now vacant tunnel and rutting against [Printed name of Z] eagerly. [Printed name of N], not to be left out, crouches over [Printed name of Z]'s head and begins to stroke herself manically. All four reach peak together, their cries heard through the city in their combined volume. Seed fills womb and belly as [Printed name of N] sprays wildly across face and open mouth. [Printed name of Z] almost chokes, but swallows a great deal of the seed even as she is plastered with the stuff.[otherwise][Printed name of K] grabs [Printed name of Z] by the hips and leans him forward a little, thrusting into his puckered entrance without delay. She purrs and bites at his ears as [Printed name of N] approaches and kneels, taking [Printed name of Z]'s Cock into her long snout and suckling noisily at the male.[Printed name of Q] does not come up all the way, stopping a foot back and stroking over her swollen tool as she watches the other two play with [Printed name of Z]. [Printed name of N] hits peak first, spraying wildly, her massive balls lurching and sending incredible amounts of sticky white cum raining over the two rats and [Printed name of Z] together. The rain seems to incite them all to immediate climax, [Printed name of Z] firing deep into [Printed name of N]'s eager mouth while his ass is filled by [Printed name of K].[end if][if Z is male and P is not nothing]Overwhelmed with the burning lust of infection, [Printed name of Z] grabs [Printed name of P] and shoves her to the ground with a delighted squeal from the rat. The two begin to rut against one another with increasingly loud squeaks as [Printed name of Z] thrusts harder and harder into [Printed name of P]'s cunt, even as his balls grow huge and furry. When he releases into her, her belly swells triumphantly, and he shudders, succumbing to infection rapidly.[end if]";
				if z is male and p is not nothing:
					increase pregnant of p by 1;
					now tf table of z is table echoen;
					tf z;
				if N is not visible, say "Elsewhere in the city, a keening howl drifts, lustful and urgent.";
				now Q is stunned;
				now K is stunned;
				infect Z with N;
]
			if z is female or z is neuter:
				if tf table of z is not table 0 and pregnant of z is 0 and a random chance of U in 3 succeeds:
					increase the pregnant of z by 1;
					if Z is visible and tf table of z is not table slutrat, say "Sinking to the ground, [printed name of Z] rubs at her belly.";
			if tf table of z is table echoen:
				tf Z;
				now ctype of z is bat;
			now tf table of z is table echoen;
		otherwise:
			now spooge is 1;
			if n is visible, say "[if n is not the player][Printed name of N] looks[otherwise]You look[end if] around the area for something that is apparently not there before pumping [if n is not the player]their[otherwise]your[end if] hands along [if n is not the player]their[otherwise]your[end if] long, slick, member. The prejuices make for excellent lubrication as they grunt and rock their hips. [if n is not the player]their[otherwise]Your[end if] climax is swift in coming, spraying the area wildly with huge gobs of fertile cream.";
			now n is not stunned;
		if there is a not batty person in the location of n and spooge is 1:
			repeat with z running through not batty persons in the location of n:
				if a random number from 1 to reflex of ctype of Z is greater than a random number from 1 to the reflex of ctype of N:
					if N is visible and Z is not the player, say "[Printed name of Z] avoids being hit by flying cum.";
					if Z is the player, say "You narrowly avoid being hit by flying seed.";
				otherwise:
					if Z is the player:
						let O be a random visible not same body part;
						say "Cum from [Printed name of N] lands on your [O], feeling quite warm at first before the seed melts away, leaving change in its wake.";
						if n is not the player, infect o with N;
						if n is the player, infect o with pelvis;
					otherwise:
						if n is visible, say "[printed name of Z] is struck with a strand of seed, looking disgusted, though it seems to melt away almost instantly.";
						if n is not the player, infect z with N;
						if n is the player, infect z with pelvis;
					
			

Part - End Game Conditions

every turn while there are no unchanged on-stage npc persons:
	if the tf table of chest is table hyena or the tf table of rear is table slutrat or the tf table of rear is table huge dragoness or the tf table of head is table were fennec or the tf table of head is table werewolf or the tf table of rear is table jackal or the tf table of head is table echoen, end the story saying "There are no more people to claim.";

every turn while there are no unchanged on-stage npc persons and the tf table of rear is table uber fox:
	end the story saying "There is no more humanity to be absorbed..";

every turn while there are no unchanged on-stage npc persons and the tf table of chest is table phoenix:
	end the story saying "There are no more people to rebirth.";

every turn while there are no not secure on-stage npc not compatible monster persons and the pasture door has been open:
	end the story saying "There are no more things to herd.";

every turn while there are no unchanged on-stage npc persons and the pasture door has been open:
	end the story saying "There are no more people to save.";

every turn while there are uber on-stage persons:
	if the player is uber, now the command prompt is "Humanity: [0 minus humanity of player]>";		
	repeat with N running through uber on-stage persons:
		let U be the number of not uber unchanged persons in the location of N;
		if U is 0, next;
		repeat with J running through not uber unchanged persons in the location of N:
			if the humanity of J is greater than 1:
				decrease the humanity of N by 1;
				decrease the humanity of J by 1;
				if the humanity of J is less than 1, now the humanity of J is 1;
			if the humanity of J is greater than 5:
				if J is visible, say "[one of][J] pants a little as they breathe in pheromones.[or][J] looks a little distracted.[or][J] glances at [N] before looking away, blushing.[at random]";
			otherwise if the humanity of J is greater than 3:
				if J is visible, say "[if J is male][J] has a clear erection, squirming and looking anxious.[otherwise][J] rubs their legs together softly, glancing around.[end if]";
			otherwise:
				if J is visible:
					if a random chance of 1 in willpower of ctype of player succeeds:
						say "You notice [J] staring at you. You are certain they are ready to surrender and oblige them.";
						try player offering J;
					otherwise:
						if j is visible, say "[J] gives out a soft moan, ready to surrender to their urges[bold type](You should 'offer [J]')[roman type].";
				if J is not visible:
					decrease the humanity of J by 5;
					decrease the humanity of N by 5;
					now J is pacified;
					now the tf table of J is table uber fox;
					now the ctype of J is uberfox;
					say "You hear the far off pleasured howl of a fox as someone else succumbs to the curse.";
			


every turn while there are no unchanged on-stage npc persons and the tf table of gut is table kangaroo:
	verify the player;
	if xcheckerx is not 0:
		say "You did not complete your personal transformation. The changes begin to recede over time, eventually leaving you with just the pouch. Those you manage to talk into entering it fit comfortably, no matter how large they are, but its transformational powers fade.";
	otherwise:
		say "You have embraced your new nature, and glow with the divine power of your new kangaroo goddess body. Though your desire to stuff people against their will fades back to rationality, you remain capable of it. Wherever you go, people stare at your huge, bestial, and sexy body, and you command instant attention.";
	if there are no on-stage compatible npc persons:
		say "Being entirely alone, you are helpless when the humans strike back. You are captured and taken to a laboratory, where you are studied and experimented on for your remaining years. On the bright side, you're pretty sure that lab assistant Jessica really likes your pouch. Maybe you could become friends...";
	if there are less than 6 on-stage compatible npc persons:
		say "You herd out your small collection of faithful and get them out of the city before trouble can arrive. You sneak aboard a large shipping freighter and eventually get yourself and your family to Australia, where you hide peacefully for the remainder of your days.";
	if there are no on-stage not compatible npc persons:
		say "The entire city has succumbed to your divine might. When the police come, they find the citizens asking them to leave. There is some violence at first, but your people insist on peace, and are eventually accepted as harmless, if strange looking. You become the mayor of the city, easily elected, and re-elected. With your divine powers keeping aging away, you look forward to guiding your people for a long time indeed.";
	end the story saying "You have played the part of a kangaroo goddess, for better or worse.";

Every turn while the head is infected: [end game conditions]
	if corruption is 5, stop the action;
	if the tf table of gut is table kangaroo, continue the action;
	if the tf table of chest is table phoenix:
		now ychecker is ctype of chest;
		let u be the number of on-stage same npc persons;
		if u is greater than 0, continue the action;
	if Loss Switch is "mind":
		if a random chance of 1 in the willpower of ctype of the player succeeds:
			verify the player;
			if xcheckerx is 0:
				let Y be the TF table of the head;
				choose row with segment of "full" in Y;
				say "Final description: [desc text entry][line break]";
				say "Wearing: [list of worn clothing] [line break]";
			otherwise:
				say "Final body:[line break]";
				check along the player;
			end the story saying "You lose your mind to the changes.";
	otherwise if loss switch is "mixed tf":
		now xcheckerx is 0;
		repeat with N running through body parts:
			if the TF table of N is Table 0 or the tf table of N is table female human:
				now xcheckerx is 1;
		if xcheckerx is 0 and a random chance of 1 in the willpower of ctype of the player succeeds and the player is not pacified and the gut is not immune:
			verify the player;
			if xcheckerx is 0:
				let N be the TF table of the head;
				choose row with segment of "full" in N;
				say "Final description: [desc text entry][line break]";
				say "Wearing: [list of worn clothing] [line break]";
			otherwise:
				say "Final body:[line break]";
				check along the player;
			end the story saying "You have been overcome by the changes.";
		now xcheckerx is 0;
	otherwise if loss switch is "full tf":
		now xcheckerx is 0;
		if a random chance of 1 in the willpower of ctype of the player succeeds:
			verify the player;
			if xcheckerx is 0:
				let N be the TF table of the head;
				choose row with segment of "full" in N;
				say "Final description: [desc text entry][line break]";
				end the story saying "You have been overcome by the changes.";
		now xcheckerx is 0;

[Play.End end]
[Play.Outcome start]

Part - Game Outcome

when play ends:
	if totalwin is 1:
		resume the story;
		continue the action;
	now totalwin is 1;
	if altending is 0:
		say "[bold type]";
	if the mother of the player is greater than 0:
		say "Your [if the mother of the player is 1]single child[otherwise][mother of the player] children[end if] follow you faithfully. They always look up to you, even if they swiftly reach their full height and maturity. Despite acknowledging you as a mother figure, this never prevents them from approaching you in other relations over the years as needed.";
	if the tf table of the rear is table jackal:
		say "All other infection on your body suddenly vanishes, leaving you human, with the exception of your jackal's tail. You look around as a voice booms";
		let u be the number of jackaly npc on-stage persons;
		if u is less than 4:
			say "'You have displeased me. So few converts? Though you are not a creature of your word, or simply incompetent, you will serve me as a guardian despite this.'[line break][line break]You are thrown forward as your legs snap and reform, making standing on all fours all the easier, especially as your arms become more legs. Your body begins to bulk with muscles as your face pushes into a growling snout. You have become a great jackal, a guardian of Anubis' new temple. A glance between your legs shows that you have traded in your sexual identity in favor of immortality. You have a long time to consider if it is worth the exchange.";
			stop the action;
		if u is less than 8:
			say "'You have done as well as I can expect from a mortal. You may join your sisters in my service.'[line break][line break]The fur on your bottom begins to spread rapidly, sweeping around your hips to engulf your cock. Having a fur covered member feels quite weird, but it does not last long as it draws up into your body, leaving an equally furry cleft. Your chest pushes out into two deliciously full breasts and your body curves. Your gasp comes out higher pitched than before as a snout grows and great ears sprout from the top of your head. You are soon a female jackal, though still bipedal, your clothes giving way to garb fitting a worshipper of Anubis. You return to the new temple and join your sisters in worshipping him, never growing older.";
			stop the action;
		say "'You have exceeded my every expectation, mortal, you will be as an avatar to me, carrying a portion of my divine being into the living world.'[line break][line break]Power surges through your body, lifting you from the ground as it becomes more and more intense. Your arms suddenly transform with loud pops, becoming slender and black furred. Your legs are next, sleek and toned. Your tail gains a little fur mass, becoming lustrous and soft. Your face forms into a pretty female snout, all too human and expressive. Your new breasts are huge, and studded with a large gold ring on each. Across your black face grows golden lines, like hieroglyphics, declaring your loyalties.[line break][line break]Despite all the female changes, your cock remains, becoming covered with fur at the base, and swelling twice as large. Your balls suffer similar treatment, growing larger and fuzzier before your loins are covered under clean white loincloth. Your neck is adorned with gold and jewels and an ankh settles between your large breasts. You are the head priest of Anubis now and forever, his direct voice to this diseased world.";
		stop the action;
	if the tf table of pelvis is table 14:
		if the skunkpregnant of the player is 0, say "     Your furry slit makes you feel eager for something, but nothing ever seems quite able to quell the heat inside you.  Eventually you buy a pet skunk, the little creature making you smile, as you feel warm and happy being near him.  One day, he licks at your changed sex, the pleasure slamming into you like a lightning bolt, as the little animal's body grows larger and larger.  Too distracted by the tongue, you don't notice until he pins you down, rutting you constantly and forcing you to become his pet instead of the other way around.  One of your final actions as a human is to buy a thick pink collar to wear, because the sight of it around your neck pleases your Master, the very skunk who now owns you.";
		if the skunkpregnant of the player is not 0, say "     Your belly continues to grow, and finally you sink to your knees, your hands resting on the ground to steady yourself.  However, before long, the skunkbeast from earlier comes by, nipping at your shoulder as he bends you forward once more.  The pleasure is simply too wonderful, and you give in completely, letting your mind think of him only as Master, with you as his Pet...  Each thrust of his cock forces away a little more of your humanity, until you're nothing but his horny cock-loving skunk-bitch.  From all the constant mating, you eventually give birth to your first litter, a full [skunkpregnant of the player] animal kittens, nursing them as you happily await your next heat, so you can serve your Master's desire for another litter...";
		if the tf table of pelvis is table 20, say "     You wander the land, seeking things to plunge your cock into, always hungering for the next coupling. Only a select few manage to satiate your need for very long, but you leave a large scattering of pregnant women and mysterious feline births.";
	if lioness cock is visible and nursing of the player is not 0 and the pregnant of the player is 0:
		say "     Your huge lioness cock does not go unnoticed by your passenger for long. She soon longs for your 'other' sort of milk, and becomes your mate. She never stops being clingy, however, and is usually seen holding to your front and riding your cock eighteen hours out of the day. Every year she grows round and large and she parts from you for a few weeks before she gives birth to a large litter of kittens. The kittens are infectious, and you two flee another city while they cause chaos behind you. Amazingly, it seems your shaft is retractable, and do so on its own when you are in the middle of mating with a female.";
	otherwise:
		if pregnant of the player is greater than 0 and the tf table of the pelvis is table 21 :
			say "     The lion man finds you as you collapse under your own weight. He lifts you into your strong arms and nuzzles your cheek before carrying you away, to make you his alpha mate and bear the strongest of his children. You never see your home city again, but bear at least [pregnant of the player], if not more cubs over the next year as you adjust to being a lioness in his pride.";
			if rabbit vagina is visible or the tf table of gut is table 22, say "     Your womb is never entirely empty of eggs and you continue to lay them in the rare moments you are not pregnant. They prove to be nutritious and delicious to your pride mates, but highly infectious to humans that eat them, who become short curvy lionesses soon after. You become a valuable source to the pride who worships your life giving belly.";
			if lioness cock is visible, say "     Being an alpha female is made easier with your huge twitching clit shaft. When others of your pride disobey you, you work out your frustration and deepen familial bonds by fucking them until they submit in a puddle of pleasured fluids. Besides bearing children, you also sire several.";
			if the nursing of the player is not 0, say "     The cat at your chest becomes your best female friend. She calms as you settle into the role of alpha female and helps you to enforce the rules of the pride. She never stops enjoying your thick cream however.";
		otherwise:
			if lioness cock is visible, say "     You are eventually taken in by a woman who finds the presence of your cock quite interesting on your odd body. She seems immune to any mutagenic effects and cares for you until the end of your days as your lover, giving birth to great litters of kittens every year. Amazingly, it seems your shaft is retractable, and do so on its own when you are in the middle of mating with a female.";
			if the nursing of the player is not 0:
				if the tf table of pelvis is table 20:
					say "     Despite the constant hunger you feel, your agony is lessened with the presence of the small feline companion. She relies on you for food and protection, often held in your arms, as often nursing from you as not. When you rest, she expresses her thanks with skilled tongue and paws, stroking your huge leonine shaft, or sometimes just riding it until you fill her with seed. When the episodes become particularly bad, she is the only one who can keep up with you, and you are both locked in one another's arms for weeks at a time, rutting wildly.";
				otherwise:
					say "     The small cat attached to your chest becomes a life long companion, relying on you entirely for food, protection, and sexual gratification. You greet each day to the sensation of her nursing from you, and it lulls you to sleep at night. She proves to be more conversational than she was at first, and you two become friends, then lovers, and eventually decide to be mates in your own way, though normal people will never quite understand.";
		now xcheckerx is 0;
		verify the player;
		if xcheckerx is 0:
			if tf table of head is table furry deer:
				if the number of on-stage furry doe is greater than 8:
					say "You assemble your massive collection of does, some already showing signs of pregnancy. You flee the city, but not forever. Your numbers swell under your watchful eye and you eventually return, a general of many groups of stags and does, and slowly convert humanity to the ways of your kind, forging a great civilization ruled by ethics of lust and cooperation. Your only challenge left is the stars.";
				otherwise:
					say "You collect up your small herd of [number of on-stage furry doe] and hurry them out of the city before they can be hurt by armed response to the outbreak. You live in the forests of the northwest, loving, fucking, and managing your herd dutifully. Your children eventually spawn off new alpha bucks to spread over a modestly impressive area, claiming several state parks for your kind.";
			if tf table of head is table Dragon Babe:
				say "You flee the city at the sound of the incoming military, taking to the sewers and moving for what feels like a month of migration. You find a new city, still abandoned, mostly. It seems to have a lot of mutants in it, but more interestingly, some untouched humans still holding out. You have learned the sewers well, and your charms and skill keep you fed, too well fed. One day you find yourself stuck running along a familiar passage. For some reason, you don't feel nervous about the situation, knowing someone, despite all logic, will be along shortly to free you, and perhaps something more interesting than that. You can hardly wait.";
			if tf table of head is table Fox Taur:
				say "[foxtaur ending][line break]";
			if tf table of head is table goblin:
				let u be the number of compatible on-stage npc persons;
				say "You [if u is greater than 0], and [u] others, [end if] flee to the outskirts of the city. A great roaring sound comes from above, where an airship comes in for a landing, its various gears spinning wildly in the struggle to keep it aloft. As soon as the plank is lowered, you dash up it. The goblins there greet their new member[if u is greater than 0]s[end if] eagerly and the ship sales off into the sky, towards adventure!";
			if tf table of head is table slutrat:
				let u be the number of compatible npc on-stage persons;
				if u is 0:
					say "Alone, you scurry down into an open manhole and descend into the darkness. Long after the city is retaken, strange rumors persist among those charged with upkeeping the sewers, whom you visit with your great lust and affection. Those who succumb entirely to your pleasure refuse to leave your company and slowly become a rat like you, until a thriving colony of horny rats inhabits the under city.";
				otherwise if u is less than 10:
					say "You and your followers receive a vision of the rat goddess. She seems pleased, but not thrilled, and guides you on a pilgrimage to a small town. The pathetically small population is soon defeated, either violently, or often with promises and deliverance of eager bedside manner. Those who give up find themselves becoming rats much more slowly than you did, growing tails after a month, the rest over the following year, but eventually becoming sisters in their own right, loyal to your patron god, who protects the community so long as proper ceremonies and sacrifices are made.";
				otherwise:
					say "As high priestess of your new, thriving, community, you and your people follow the words of your goddess, spoken directly to your waiting ears. You arrive by bus, the driver already growing tail and whiskers, in a new town in Long Island and set up shop. By remaining true to your God's words, you slowly take over the whole of the state over the next decade. So long as you remain loyal, your youth and vigor remain true, and you convert many humans to your god. Unable to accept your people as equals, you eventually declare the captured state a country of its own right, and you lead your people to peace and long rule. It's a shame so many tourists go missing though. No one ever looks for them very hard though.";
			if tf table of head is table nidoqueen:
				say "Just as the chaos of the city reaches its zenith, you are approached by a large blue form. The female reaches for you and plucks you up against her chest, cradling you as she departs the city. She adopts you without further todo, keeping you as her child, feeding, dressing, and scolding you as needed. Despite your urges and ready, if scrawny, form, you are not allowed to find a girlfriend or seek that sort of solace in your new mother. She only permits release with her soft fingers, and you never seem to grow any larger or mature.";
			if tf table of head is table tree:
				let u be the number of compatible npc on-stage persons;
				if u is 0:
					say "When the army arrives, they scour the city of infection. You are ignored, just one misplaced tree. Eventually people return, and play beneath you. Your fruit does not cause any changes, and becomes something of a local favorite. You don't mind. Every fruit that grows and is plucked is a delicious thrill of pleasure through your stiff body. You remain erect in the city for many, many, years.";
				otherwise if u is less than 10:
					say "A few trees are ignored as the army moves in to clear out the infection in the city. When a few soldiers vanish, however, alert is raised. When the source is found, there's little you can do to defend yourself. Ah well, it was nice being a tree for a little while.";
				otherwise:
					say "By the time the army arrives, the city has been practically converted into a forest. They find no survivors, no infections, nothing but trees parked in the damndest of places. The city is forbidden to all, and only the most brave of thrillseeker wanders through your domain. Once in a while, your forest gains a new tree as a result.";
			if tf table of head is table huge dragoness:
				let u be the number of daughter compatible npc on-stage persons;
				let j be the number of not daughter compatible npc on-stage persons;
				if u is greater than j:
					say "With soft but deep vibrations, the dragon who turned you comes back into view, stepping over buildings easily. She reaches to pet and stroke over your head and neck, [apostrophe]Good job, my daughter. You have proven yourself leader of this city. Your sister is now your mate and servant.[apostrophe] With this said, she departs. Your sister moves to nuzzle into your sides shortly after, submitting to your will. You fight off the humans that come to take back the city, swatting them aside and laughing at their ticklish munitions. Some of their soldiers make fine children as well. The country will never be the same again.";
				otherwise:
					say "Your sister approaches suddenly and shoves at you. You snarl in anger, but the emotion flees you. You dip your head and she bites at the frills at your neck before embracing you. You become her head wife, submissive to her needs and will. She does not do poorly as queen, leading you and the others away to hide in upstate New York, making occasional snacks, and spawn, of foolish hikers.";
			if tf table of head is table harpy:
				say "You take flight and are rejoined with other harpies high in a secluded mountain. You are content with one another except when heat strikes. Once a year, each of you feels a 'special' need that cannot be met by your sisters and you descend on the small city below, plucking up a male to satisfy you and give you an egg to care for, until the next year. Most men prove to be pliable enough, and a few even stay, helping to tend to the aeries while the females do business and hunt.";
			if tf table of head is table felicia:
				say "You slink away from the city before things get too intense and eventually make your way to another thronging metropolis. For better or worse, your infectiousness has mostly passed, and you make a living satisfying the needs of your new form as a prostitute. Though your clients are more limited than the other 'girls', they tend to pay better. Your favorites tend to slowly evolve mild feline attributes, which in turn increases their loyalty to you.";
			if tf table of head is table elf:
				say "Feeling no more attachment to this boring world, you speak the words of a spell that you suddenly remember. The air ripples and shudders as a great portal opens before you, shimmering with heat. You step through without hesitation and a great feline beast waits patiently in a jungle. You mount the beast and he carries you back to your people swiftly. Play time was over, but you would not forget your time among the humans. You would suggest to the queen that your people take over a town of them. They would make delightful pets...";
			if tf table of head is table icat:
				say "As the military rolls into the city, you and the other Irish Cats all run to the nearby pub and enter inside of it. The sounds of every joyous and drunken cats draws the military to the pub and before they can do anything you hand them tankards of alcohol and egg them onto drinking. Hours pass as the drunk soldiers screw many of your fellow sisters and become Irish Cats themselves. Very few of the soldiers remain human, a few of them even remain male with fur that matches your own with ears and a cats tail protruding from their bodies. The military's operations seem to stay intact due to another military regiment being sent to the city and quarantining the city to keep this outbreak contained.";
			if tf table of head is table hyena:
				let u be the number of brave not compatible on-stage npc persons;
				let j be the number of compatible on-stage npc persons;
				let k be the number of not brave on-stage npc persons;
				if j is 0:
					say "You are the only hyena, and you flee, dejected. You are unsure what to do with yourself, and live out a meek survival under overpasses and out of sight, until one day a small girl comes crashing into you. She is quite surprised at the sight of you, but you make gentle sounds, and convince her you mean no harm. She explains she was running away from home, and you invite her to stay with you. She never leaves. It isn't a pack, but you feel little remorse over your little companion.";
				otherwise:
					say "You become the queen of the [j plus 1] hyenas, serving as their shaman, leader, and alpha stud. It is considered a grand honor to bear your child, and you grant this honor to many over the time of your ruling. You only bear a single child, your successor, planted in you by your bravest, most powerful, warrior, to carry your line forward.";
					if j is greater than 6:
						say "The city is never reclaimed by the humans. Though you have long lost your easy infectiousness, you find that captive humans can be fed milk every day for a full lunar cycle. Afterwards they gain a hyena cock similar to the one you have. They are then released with a female in heat. If they can resist the urge, they eventually regain their humanity, and are permitted to leave. A few stay regardless. Those who succumb become entirely male hyena. The lowest of the social order, but loyal to the death.";
					otherwise:
						say "The humans come to take back their city, and the fighting is quite disastrous for your people. Only a few survive the conflict, and you are left with a small section of the city to rule over in the end, holding out against the pressing human masses.";
					if u is 0, say "Your people live without competition or rivals.";
					if u is greater than 0 and u is less than 5, say "Your people live with minor competition from other predators. They prove a nuisance, but you prevail.";
					if u is greater than 4, say "Your people are constantly harassed by local competition. Other predatory infections seeking the same food you do leave your people often hungry.";
					if k is greater than 4:
						say "You were wise in saving those [k] prey creatures. You herd them into a kennel and breed them together. Barring predation from rivals, you live like kings, never lacking for food, or even sport.";
					otherwise:
						say "There are not enough prey species to go around, and the city is a poor place to scavenge for long. Your people eventually drift out towards the country, where wild animals can be hunted, but it's never easy.";
					if k is greater than 4 and j is greater than 6 and u is 0:
						say "Having constructed the perfect hyena utopia, your rule is never challenge. Your people worship you as much as a god as a queen, and your every word is followed eagerly. Eventually, the humans send peaceful diplomats, and trade begins with the outside world. Some humans even approach, asking to join your city, some as humans, others as male hyenas, as they choose.";
			if tf table of head is table centauress:
				let u be the number of on-stage centuaressy npc persons;
				if u is 0:
					say "You are the only centauress around. You depart the city, and eventually find a kindly rancher woman. You hit it off. Your sex no longer hungers for flesh, and you delight in the companionship the human provides instead of gulping her down. You live with her for many years, and neither of you are unhappy for the bond you share.";
				otherwise if u is less than 10:
					say "You and the other [u] centauresses depart the city in a loose band. The burning in your loins never quite goes out, and you capture agreeable, or slow, humans to supplement your numbers over the years. You grow stable around twenty, avoiding being caught just ahead of savoring the delights of drawing fresh human flesh into your greedy passages."; 
				otherwise:
					say "As you leave the city with the other [u], a strange burning, brighter than the one already there, irritates you between your legs. You squirm and writhe, but keep up with your sisters until you are well away. When you awaken the next day, your sisters have surrounded you, staring. You blink at them, then raise up to your hooves. The burning has stopped, but something else feels odd. You discover that you have become a stud for the herd, a huge horse shaft and balls grown in just ahead of your mare sex. Your sisters fall into a heavy heat, two or three at a time, and you fill them with child. The need for humans fades over time, but never entirely passes. The sisters become more selective in their choices, taking very strong or very smart humans, and preferring the willing over the forced.";
			if tf table of head is table echoen:
				let u be the number of on-stage batty npc persons;
				if u is 0:
					say "Being the last bat in the city, you take flight before an organized resistance can arrive. You don't land until exhaustion threatens to overwhelm and land in someone's back yard. Said person turns out to be someone who's seen something very similar to you online. They offer protection and you become fast friends. Your infectiousness seems to have departed, allowing the human to live a relatively normal life, besides being your eager lover and caretaker.";
				otherwise if u is less than 10:
					say "You detect there are not enough of you, so [u plus 1] bats take off into the night, abandoning the city. You find a large cavern and claim it for yourselves, rutting, living and frolicking in general enjoyment. When a spelunker arrives, you find your infectiousness is still active, and fuck the poor soul into sisterhood. Their disappearance gives the cave notoriety, and eventually other, brave and foolish, souls follow."; 
				otherwise:
					say "When the army arrives, the great orgy abruptly ends. You and your sisters disperse through the city and begin a campaign of ambush and surprise. Few soldiers resist for long after you've pounced on them and begun their change to something better. The city is eventually given up despite public outcry, though the quarantine is iron clad.[line break][line break]Oddly enough, every few months, a human enters anyway, sneaking past the tight security to join you and your people.";
			if tf table of head is table werewolf:
				let u be the number of compatible npc on-stage persons;
				if u is less than 10:
					say "There are not enough of the pack to secure the city. Rather than face the army while they purge the city, you and your people flee and disperse. You enroll in another college... A transfer, and never reveal your second nature. It's sort of odd, no one noticing you're a huge slavering beast, but it's also kind of cool. You eventually happen upon a werecheetah very much like you, and marry.";
				otherwise:
					say "The city rapidly falls under sway of the most subtle infection. When the armed forces arrive, they find a city entirely calm. Everyone claims to be well, and are going about their daily tasks. With no enemy to fight, they leave, confused. The media attention is fierce, but eventually even they give up. That you live in a city gone to the dogs, literally, is just your little secret...";
			if tf table of head is table vixen:
				let u be the number of compatible npc on-stage persons;
				if u is less than 10:
					say "Following some fuzzy instinct, you retreat to the forest lands. You live your days with other foxes, largely as ordinary beasts, though your clever human wits serve you well to keep you from the jaws of larger predators or human intruders.";
				otherwise:
					say "With most of the city succumbed to vixenhood, you gather up at the outskirt of town. With a howl to the moon, you begin to rise and stretch. One of you, perhaps the original, bursts with tails, nine in total. She explains that you are all kitsune now, and will eventually earn your other tails. You return to school, as the others return to their lives, as if nothing happened. The military finds nothing to do battle with that day.";
			if tf table of head is table were fennec:
				let u be the number of compatible npc on-stage persons;
				if u is less than 10:
					say "You get an instinctive feeling that there are not enough of your loving people to take the city, so you depart it. You hike out to the edge of the city and catch a truck on the road. Flirting with the trucker, you make a good and lasting friend. You travel the country at his side, spreading cheer and good will, though it seems only those close to death are susceptible to change. They are the ones that need it most, though. Very few ever realize you are anything but human.";
				otherwise:
					say "When the armed retaliation arrives, they find a city full of buxom, happy, females. They are greeted warmly and eventually depart with no enemy to face. The people of the city are alert, coherent, and are even going about their business. There's nothing to report or do. The media attention is fierce at first, especially with how eager this 'city of females' is to kiss and hug on camera.[line break][line break][apostrophe]You should come join us.[apostrophe] says one interviewed female. [apostrophe]We might all be ladies, but guys are more than welcome. There's no crime. You won't be left out of our warm community. In fact, I can assure, it will grow on you.[apostrophe][line break][line break]For your own part, you find a fennec that you love a little more than the others and become her mate. You give one another many cubs over the years and live in bliss in your city of fennecs.";
			if tf table of head is table uber fox:
				if humanity of player is greater than -10:
					say "You wander the city, searching for something you can't even work up the word for. You knew a lot of words, once. Why can't you figure it out now. Ah well, may as well go home... Where was that? You frown and snarl. Everything is becoming harder to remember. You can't even grasp your own name anymore. You become a horror of the night, skulking the shadows, little more than a feral beast.";
				otherwise if humanity of player is greater than -100:
					say "The humanity you have absorbed begins to stir in your cursed flesh. With a grunt and a groan, you manage to pull yourself up to two paws, shaking. It is easier to be on all fours, but you have fingers again, and can talk. Looking down over yourself, you see that your frightening visage is softened. With enough clothes, perhaps you could hide. You seek out the one that changed you, but never find her. Your sexual scent draws other sorts of attention though. Communicating with your old friends via library terminals, you are invited to a convention, there you meet your internet friends for the first time.[line break][line break]At first, they think you have the best fur suit of all times, but when they are convinced it is real, they fall in love with you. After a night of wrestling in the sheets, you watch in fascination and horror as they twist and deform, becoming another fox. Fortunately, there are many humans in the hotel, and you help them become at least as human as yourself before fleeing. At least you have a mate.";
				otherwise if humanity of player is greater than -200:
					say "As the last of the humanity in the city is drained away, you feel warmth build in your bones. The power you have stolen whirls through you in an erotic eddy as you rise smoothly to your feet. Your huge breasts withdraw, becoming smaller, then fading entirely until you only have two, human sized, breasts, and your shaft shrinks down to a 'mere' six inches. You find some clothes and a hat and look perfectly presentable by the time any other humans arrive, and you are escorted away as a 'lucky survivor'. Besides your foxish ears, and your cock, you appear as a very pretty human woman. When aroused, your foxish traits burst into the fore, making you look like an anthro fox.[line break][line break]When you escape the city, you are hugged from behind. A glance reveals the original fox that left you, 'I knew you were special', she whispered in your ear and licked it. You then lived together. You could keep one another's balance, remaining mostly human, seducing the rare human when energies ran low, and leaving the city with another uber fox to puzzle over as it ran wild through the streets.";
				otherwise:
					say "Your body trembles with an abundance of stolen human energy. You rise up to two feet rapidly, marveling and admiring your sleek, human form. You're so pretty and charming, perfectly divine in every way. As you stroke your hands across your sides and let out a laugh, it comes out as a rough yipping bark. You clap a hand over your face, and see the hand is a paw! You fall forward, body growing, swelling, pain racking you as you back slide into being an uber fox, the energy collapsing to a tight ball inside you. Too much! It was all too much! You are soon left quadrupedal again, whining, tears streaming from your eyes, cursed to remain this sexual beast forever. For better or worse, your mind remains sharp, stuck inside this inhuman form.";
			if tf table of head is table sheep:
				say "You are eventually found by a collie person, who gently and lovingly urges you back outside the city, to the ranch, where you are allowed to live and prosper in a small pasture. Your life becomes quite simple, sheered once in a while, fed well, at least until they bring in that ram...";
			if tf table of head is table ferret:
				if the number of on-stage ferret is greater than 8:
					say "With so many ferrets roaming the street, you spread with your kin across the country in a wave of terror to your human neighbors. Military response thins your numbers at times, but your dexterity and seemingly unending energy soon has any ground forces joining your people. As the world succumbs to this strain of infection, amusement parks were never so profitable, providing distracting entertainment to easily amused slinky bipeds.";
				otherwise:
					say "As the sound of sirens draws close, fear clutches at your heart. You race away from the hostile sounds, only to feel a net suddenly drop down on you. You struggle valiantly but are dragged away.[line break][line break]When you are released, you are in a small cozy room with your kin. The pillows are large and soft, and the food is amazing. Eventually you are introduced to your new owner, a somewhat eccentric, but wealthy, individual that keeps you all as their most treasured possession.";
			if tf table of head is table phoenix:
				let u be the number of on-stage compatible npc persons;
				if u is 0:
					say "Alone, you take flight and leave the city. You remain in hiding for some time, but eventually find other, sympathetic, souls. You give them a new life as a phoenix, and your numbers grow slowly as you and your new servants seek ways to purify the world.";
				if u is greater than 15:
					say "The other phoenixes regard you as the great mother, and rally behind you. Your people take hold of the city entire, reforging everyone who does not flee. The city is soon made into a grand nest of sorts, and offer any comers a chance to be free of disease and aging. Your numbers are bolstered by the sick and weak, who become strong and happy after they visit you and spend some time in your divine womb.";
			if tf table of head is table coyote:
				let u be the number of compatible npc on-stage persons;
				if u is less than 5:
					say "You set off on your own, escaping the city into the rising dawn. You find that 'furries' are quite enamored with your form, and make a healthy living going from convention to convention. It also serves as a precious outlet for your bottomless libido. Male, female, you hardly care as you grab willing humans and work out your frustration upon them to great mutual satisfaction. For better or worse, you don't change anyone else after leaving the city.";
				otherwise:
					say "You and the [u] others flee the city and meet up in the Mojave desert, where you form a commune of coyotes. The females never seem to get enough of you, and that's alright with you, because your new, enhanced, cock seems to never get tired of them. You wake most mornings to one of them squatting down over you to ride, or slurping away at you with their soft tongues. You couldn't imagine a finer life.";
			if tf table of head is table minotaur:
				let u be the number of compatible npc on-stage persons;
				if player is femme and player is not butch and u is less than 10:
					say "You ran away toward the farm side, where you have hidden. Some would say that you could feel lonely as the only one of Your kind, yet the silent and secluded farmstead soon become famous for very welcoming owner, which took care of guests' needs in every possible way.";
				if the player is femme and u is greater than 9:
					say "You flee the city with your herd mates, and become one of the herd, bearing children and milk for the good of your people. New members of the tribe come from breeding and the occasional human convert, though your infectiousness seems much lower than it was in those intense first hours.";
				if the player is butch and u is less than 10:
					say "You flee the city with what few of you are left. Though you manage to lay claim to the few females against your brothers, it is far too few to persist forever. Your generation is likely one of the last the world will see of the fabled minotaurs.";
				if the player is butch and player is not femme and u is greater than 9:
					say "You do not flee the city, instead rallying your people to meet the attack head on. When the army arrives, they are quite startled at the sudden counter attack. Each wave reinforces more than you lose, and soon the city is written off as lost. You become the bull of the city, most desired of the females, and whose opinion is highly regarded.";
				if the player is butch and the player is femme:
					say "Your over sexualized body drives you away from your brothers and sisters. You flee the country entirely, and manage to get to India, where you are worshipped devoutly as a sacred being. You bless your followers with health and fertility, and are given all the companionship you could ask for.";
			if tf table of head is table gryphon:
				say "Your body's new needs are almost all consuming. When the military arrives, you grab a soldier that becomes separated from the others. You were not paying attention at the time, but once you had stripped the clothes from them, you realized it was a she. She was stunned at your appearance, and all the more so when you began to make love to her, rutting her for hours, licking and caressing her sensitive places and filling her with enough seed to overflow. Your infectiousness seems to have passed, as she does not change from all this, except for growing warm to your advances. By the time her friends find her, she is on top of you, riding your thick black cock eagerly as you coo beneath her.[line break][line break]Later, when it becomes clear that you are not infectious, you become a subject of much curiosity, and gain a new home at a secret base. The soldier is sent with you once it is apparent that you are sad without her. She becomes your caretaker, as far as the superiors are concerned, but you and she know better. You remain true mates for the rest of your life, and she bears you several healthy gryphon eggs.";
			if tf table of head is table collie:
				if there are no not secure not ottery on-stage npc monster not compatible persons:
					say "You have rounded up [number of secure on-stage npc monster persons] and saved [number of unchanged on-stage npc persons] from transformation. You are regarded as a hero and champion of the city, and get all the dogbones you can chew and a pat on the head whenever you want one. You are more than content to live on with the other collie sisters, and tend to your flock, especially the sheep.[if there is a secure on-stage drooly person] One of those shepherded was a husky, and what a specimen! He becomes quite friendly with the collie pack, who keeps him on to tend to their other needs. They never let him take charge, treating him more as a prized luxury, and ignoring most of what he says. He's a good lay though.[end if]";
				otherwise:
					say "Despite having rounded up [number of secure on-stage npc monster persons], there are no more humans left to save. When the army arrives, they find your pasture, and you, and seem unsure what to do about it. You eventually serve as a test subject, treated well enough, but never allowed off the base, pending understanding of the strange transformative disease that gripped the city.[if there is a secure on-stage drooly person] The husky that was in the pen is also taken to the base with you. He becomes your mate, for lack of choice in the matter. Fortunately, after you set your paw down a few times, he stops trying to dominate you, and you start to get along, and even warm up to him. You become good friends, then sincere lovers.[end if]";
			if tf table of head is table husky:
				say "You flee the city on your swift paws and make your way slowly to a nearby forest. There you hide away from whatever is left of humanity. It comes with great pleasure when you happen to run into a pack of huskies. The alpha quickly claims you as his mate which you willingly submit to as he fucks you hard and long, your humanity completely slipping away as he turns you into his little breeder pet, constantly keeping your tummy round with his pups... [line break][line break]You quickly come to enjoy this new life as your human mind finally slips away, the pleasure too much for it as you become your Master's slutty little husky bitch.";
			if tf table of head is table rogue:
				say "A squeal of breaking tires is heard before another bat comes hurrying in towards you. She looks you over critically a moment before gesturing you to follow. Though your mind rebels and boggles, your body moves to follow her without hesitation. [if number of same on-stage people is greater than 1]In the van she drove in, you can see [number of same on-stage people minus one] other bats.[end if] She drives out of the city with you. You discover she created the lipstick to create a harem of people like herself, submissive to her needs and desires.[line break][line break]As it turns, her desires are large, and she pulls you aside every day for long play sessions of fondling, sucking and groping. Just as you grow used to this, she calls you aside and shows you a special cream, asking you to put it across her reddened vulva. Obliging, you find that her clit swells monstrously and she is soon fucking your large eared brains out. The shaft does not last for long, but long enough for her to make most of her harem heavy with child every time they are in season.";
			if tf table of head is table fennec:
				say "You flee the city on your swift paws and make your way slowly to the Mojave desert. There you hide away from most of humanity. It comes with great pleasure when you happen to run into another of your kind. You don't become 'mates', but do become friends, and do couple with one another once in a while, but otherwise keep to your own territory.[line break][line break]Almost ten years pass this way before your neighbor brings you to her home. There you are greeted with over a dozen other fennecs. She reveals that she had been testing you, and that you are worthy. You join the fennec society full time, and with no regrets.";
			if tf table of head is table Horse mare:
				say "You become a mare of the herd. You follow obediently behind the stud. Your herd goes through a few studs in your life time, grabbing a fresh human when something befalls the old stud. Your belly swells with the progeny of them, and you are well cared for. Outside the herd, you keep contact with your human life through the internet. Imagine the expression on your best friend's face when you convince him to visit you...";
				if horse cock is a part of pelvis:
					say "Though not a stud, your cock does not go without its  uses. Your stud is jealous of your breeding with 'his' mares, so most of your sisters lavish you with softly furred hands and skillful mouths. Such limitations do not apply to humans, however. You make a sizable proceeding quietly inviting furries to visit you in discrete locations. Fortunately, or not, your infectiousness has long passed, allowing you to play with the lustful human fans without harm.";
			if tf table of head is table latex fox:
				if the destined femininity of the player is 1 and the destined masculinity of the player is 1:
					say "Your thoughts are often dragged back to lustful demandings of your extreme form. Your infectiousness fades over the next few days, but your new mind does not. You look up your old friends and pay them a visit, leaving them wishing for more, but none can entirely satisfy your burgeoning needs.";
				otherwise if the destined femininity of the player is 1 and the destined masculinity of the player is 0:
					say "With the sound of incoming retaliation, you decide to flee. For a short time, you live in the forest. You find you don't get hungry any more, so long as you can stay inflated. You befriend a hiker who is a little swayed by your charms. He takes you home where you become a lover, and as close to a wife as a pool toy can be. You bear him several children by the time he realizes that you are still mildly infectious, not that he seems to mind his new rubbery cock, which he practices on your willing cunt often.";
				otherwise:
					say "You feel so angry! You flee the city, rubber claws bouncing off the pavement, and flee up into the wilderness, surviving on wits and feral instincts alone. You come across a female hiker one day and leap upon her, fully meaning to have your way, and maybe eat her. Instead of screaming in horror, she accepts you into her arms. What should have been ravishing turns into wild love making, and she rides you until you are exhausted and sated. Tired, she carries you home and you offer no resistance. Being her toy doesn't seem like a bad fate.";
			if tf table of head is table 9:
				say "Your collect up [number of on-stage mare npc person] of your herd and guide them from town. You delight in breeding your faithful mares when you're not busy protecting them, and they savor your attention before any other consideration. You never want for company, and live quite happily ever after.";
			if tf table of head is table deer:
				if there is an on-stage stag:
					say "The stag collects all [number of on-stage doe] of you and guides you to an abandoned bus. With amazing skill, shi hotwires it and you're all rolling right up out of town past an unawares military reacting all too slowly. Giddy with relief, you fall into one another's arms, kissing, hugging, stroking and breeding as the stag dutifully drives the new hard North into Canada.[line break][line break]In Canada, your family blossoms and grows together, until, many years later, a new stag is born. This new alpha eventually rounds up her siblings and they set off to start a new herd, and so it continues, the does spreading through the chill wilderness. With strong buck influences, actual breeding is usually limited to the stag, with sex between does only rarely resulting in child, and the rest resulting from the stag breeding each doe in turn when in heat.";
				otherwise:
					say "With no authority figure, the [number of on-stage doe] gather together and flee the city just ahead of the incoming sirens and armed forces. They stay together with a sense of family and fear, but as the event passes, they stay together out of love, breeding freely. Humans are absorbed into the herd somewhat haphazardly as any man or woman that catches a doe's eye is brought in to be shown new heights of delight before becoming another of the herd.";
			if tf table of head is table feral dragoness:
				say "You slink away from the city before big trouble can properly rain down on the city. You're not sure how many, if any, of your sisters escaped, but you perservered. Over the years, you befriend many other humans in your travels, proving to be mostly harmless, claws and jaws excluded. Once in a while, you take someone 'into the fold', or is that folds? Being a territorial creature, you part from them once they are large enough to fend for themselves, but you always leave as friends and lovers.";
			if tf table of head is table otter:
				say "Now an otter, you rejoin the [number of on-stage ottery people] others. With much playing and splashing, you form a powerful family bond, but the sounds of sirens and alarm pierce through the desire to play. Your new mates cluster around you protectively, then you all leave together, diving under the water and swimming through a long tunnel that doesn't break surface for what seems like miles. You eventually emerge and make your way to a small out of the way river, where you hunt for fish and play with your family for the rest of your days.[line break][line break]At least until that hiker showed up...";
			if tf table of head is table wyvern:
				say "You take flight as sirens begin to sound. Rather than remain in the city, you retreat to the mountains, where you prey on hikers. You prudently keep your attacks rare enough to avoid undue notice, and eventually have a full family of your kind. One hiker does eventually escape, carrying wild tales to the city. It is unfortunate that he was already bearing an egg, and gave birth to the child within the city, causing quite a disturbance. In the confusion, your family relocated.";
			if tf table of head is table bee:
				say "You get the urge to flee the city suddenly and launch into the night sky with your new wings. The other bees are soon following you, and you fly well into the morning when you arrive at a tall mountain not far from the city. There you oversee your drone's construction of a great hive, where you become queen and live out your days. Under your watchful gaze, two more hives are built.";
			if tf table of head is table 54:
				say "    You hear the sirens off in the distance and with your improved hearing can tell they are coming your way. Firetrucks arrive, sirens blaring and you run up to one, tail wagging. As you move closer to the truck you are sprayed with a strange chemical, Perhaps this the cure? You turn your head back and watch as the latex melts off of your body leaving fur underneath. You fall down and whimper as you realize that you are no longer a latex wolf, but a real one...";
			if tf table of head is table 22 and the pregnant of the player is 0:
				say "    The sound of sirens is faint in the distance, but approaching quickly. You decide that this city has seen enough of your eggs for today and quickly flee the area. Later, you find an internet forum dedicated to people who talk about change and you begin to pay visits to their members, bringing plenty of eggs and candy with you. You eventually settle on a remote commune with some of these people and live peacefully. You seem incapable of bearing children, but do sire several with the single unmodified female of the commune.";
			if tf table of head is table 21:
				say "     Becoming a lioness is quite an adjustment, but your body is not unattractive, to the right sort of people. You grow accustomed to its quirks and hungers, your inhibitions largely loosening, especially when it comes to contact and sex. You never grow any taller, but you don't seem to be infectious anymore.";
			if tf table of head is table 20:
				say "     Being an alpha lion, you herd up the cat women in the area and guide them away from the city and the incoming danger you sense. Those who do not follow you are eventually slain, but you do not care for them, you have a pride, and you spend your days protecting them, and fucking each cat women in turn. You all live in an isolated place in the mountains, but the people of the city would see your kind again, after you built up the population a bit...";
			if tf table of head is table felitaur:
				say "Suddenly, you feel a great suction. You are propelled through the city back to abandoned magazine, which flutters open to a blank page just as you're drawn inside. Though the series had been cancelled, the magazine begins new publication, with you as the protagonist, and you make many friends, thwart enemies, and sire and bear many children during your adventures for your furry fans.";
				let u be the number of compatible on-stage npc persons;
				if u is greater than 0:
					say "The [u] you left behind wander the city, pouncing and converting, for several hours more before the infection's power fades, and takes a chunk of their overwhelming libido with it. By the time the army arrives, they are largely docile and cogent. They surrender peacefully, rather than fighting, and are taken away to a secret base, where they are at first studied intensively. When the scientists grow bored and the funding dries up, they have long since pair bonded with military men and women, forming families and creating happy lives. They prove to be quite cross fertile with humans.";
			if tf table of head is table 55:
				say "	Losing your mind to your desires and body, you hug your pregnant belly and stroke your huge cock against it. Pleasure builds in you as your final acceptance of your form causes your belly to swell, expanding outward from your body into a larger and larger soft sphere. Sinking to the ground you spread your legs and in a great gush of juices, your herm squirrel child is born. Instincts kick in and you bring her to your front, pressing her face against yours, kissing your daughter full on the lips, thrusting tongues and raking teeth. She matures and grows quickly, larger and larger in your arms, her breasts and thick squirrel cock soon developing and rivaling your own. She looks just like you, breasts and cocks smoshing together... and still kissing, you both moan into each other's mouths, feeling your bellies swelling up and pressing against each other, both of you pregnant now and ready to continue the cycle....";
		otherwise:
			if the tf table of chest is table phoenix:
				let u be the number of on-stage same npc persons;
				if u is 0:
					say "Your phoenix like features fade over time as you flee from capture. You are soon left human, with large breasts and a dual gender. Whenever someone so much as glances at your heavy chest, you feel the urge to offer a sip, though you have no more power to change anyone. You eventually find someone who appreciates your interesting attributes, and settle with them contently enough.";
				otherwise:
					say "The other phoenixes come to you expectantly, but seem upset when they see you have not become entirely a phoenix. They wash you with purifying fire, and your white feathers turn red, and the transformation completes. Looking like your sisters, you flee the city. Without a mother, the phoenixes lose the power to purify others into phoenixes, and must rely on more... natural... methods to bolster numbers. Some healing talent remains, however, and you find work as traveling doctors of sorts, tending to the terminal and desperate, easing their pains and extending their lives with your presence and delicious fresh milk.";
	say "Do you wish to continue?";
	if the player consents:
		say "Let the game continue!";
		now the player is pacified;
		now totalwin is 1;
		resume the story;


[Play.Outcome end]
[Help start]

Book 6 - Help

[In game help topics.  Information about the game and how to play it.]
A help-topic is a kind of value. Some help-topics are defined by the Table of Infection Help.

Table of Infection Help
help-topic	reply
Cheating	"What, cheating? Well ok fine, if you must.[line break]setwill (number): Change your willpower.[line break]setreflex (number): Change your reflex."
Clothes	"Clothing keeps you decent, it also can give you some measure of defense against some monster attacks. If you want to enjoy the benefits of clothes, you must [bold type]wear[roman type] them.  If you grow a new body part, it may destroy the clothing worn over it.[line break]Example: [bold type]wear shirt[roman type]"
Credits	"Based on [quotation mark]Wave of Change[quotation mark] by Nuku Valente (http://www.yiffstar.com/?pid=59286)
Which was based on [quotation mark]Flexible Infection[quotation mark] by Shrimpy (http://www.tfgamessite.com/phpbb3/viewtopic.php?f=4&t=133&sid=9f67dc9b9cf43a23ce5af7a2c61fc01f)[line break]Some bugfixes and optimizations by Nuku Nookee, including the rope and wait commands."
Food	"There are some things that are very tasty. If you see such an object and wish to partake, don't hesitate to [bold type]eat[roman type] it.[line break]Example: [bold type]eat egg[roman type]"
Game Over	"It is game over when you are fully infected, and fail a willpower save. When this happens, you will be given a last glimpse of what you have become. There is also a chance of an ending being displayed. The ending depends on what you did during play, and what your final form is. Being entirely infected by a creature is an obvious ending, but there are many others, some involving combinations of creatures."
Items	"If you see an object you want to have [bold type]get[roman type] it. You can carry as much as you want.[line break]Example: [bold type]get pants[roman type]"
Killing	"Sometimes the best defense is a good offense. You can attack and slay creatures and people if you want. Killing a person who is not a monster brands you as dangerous however, and people will react accordingly, running away or attacking you as proper. If you are entirely infected (purity 0), attacking a person will infect them instead of killing them.[line break]Example: [bold type]kill person[roman type]"
Observation	"Looking around is a good idea to know what you are dealing with. You can even [bold type]look at me[roman type] to see yourself, or what you've become.[line break]Example: [bold type]look at person[roman type]"
Idling	"Just want time to pass? Use the wait command. Try wait ten minutes or wait an hour."
Movement	"Movement is one of the most basic actions of the game. To move, type the name of the direction you want to go.[line break]Example: [bold type]north[roman type]"
Mutation	"Generally, one would consider mutation a bad thing. Eating infected food or coming into contact with monsters can lead to mutations. Once a body part is mutated, it will spread the infection outwards across your body. If a central body part, or multiple bodyparts are infected, it's even possible for the infection to spread faster as a result. If your entire body is mutated, you may become a monster yourself.  It is possible for different infections to 'compete' for a hosts body, causing the mutation to sweep back and forth over the body as they vie for dominance.  You may [bold type]submit[roman type] to a monster if you would like it to infect you, although this not recommended."
Saving	"To save the game, type [bold type]SAVE[roman type]. You will be prompted to supply a file-name for your saved game. If you'd like to return to play at that point again later, [bold type]RESTORE[roman type] the saved game."
Scanner	"[bold type]Look at scanner[roman type] to see how many infected people (monsters) and how many uninfected people (normal people) are in the city."
Monster Commands	"What's that? You[apostrophe]re a monster now? Well some monsters can do weird things like 'feed' their milk to people, giving out a mighty 'flare' of flames at someone, or if you're large enough, why not just 'grab' people? If you happen to have one, you could also 'pouch' your victims into your safe place."


Understand "help [help-topic]" as asking for help about. Asking for help about is an action out of world, applying to one help-topic.
Understand "help" or "help [text]" as a mistake ("Help is available on the following topics: [help-topics list]").

To say help-topics list:
	repeat through the Table of Infection Help:
		say "[line break]  [help-topic entry]";

Carry out asking for help about:
	repeat through the Table of Infection Help:
		if the help-topic understood is the help-topic entry:
			say "[reply entry][paragraph break]";
			break.
[Help end]
[World.Items start]

Book 7 - The World

[items that can be worn, some are infectable]

Part - Items

Dog Treat is a kind of thing. A Dog Treat is edible. Understand "treat" as Dog Treat. The description of Dog Treat is "An innocent looking brown cookie shaped in the form of a bone. It looks exactly like the type of treats you always used to feed your pet dog when you were a kid. For some reason your mouth starts to water as you stare at it and you barely resist the urge to eat it.". The tf table of Dog Treat is table husky. Dog Treat is infectitem. 1 dog treat is in apartment 1E.

Ferret Cage is a kind of container. It is closed. Understand "Cage" as a ferret cage. The description of Ferret Cage is "A simple cage for small animals. This one appears to be the home of a ferret or two.".

Instead of opening a ferret cage for the first time:
	say "Woah! Something small and slinky just ran right out of the cage and went scurrying out of the area in a blur of brown fur.";
	if there is an on-stage npc person:
		let z be a random on-stage npc person;
		now the tf table of z is table ferret;
		tf z;
	otherwise:
		let q be a random off-stage person;
		move q to a random visited room;
		now tf table of q is table ferret;
		tf q;
	stop the action;

Instead of opening a ferret cage:
	say "There doesn't seem to be anything left in there anymore.";
	stop the action;

Sarcophagus is a closed container. The description of Sarcophagus is "An ornate sarcophagus that is inlaid with precious gems and gold, carved into an image of Anubis, an Egyptian god of Death, if you recall correctly. It rests on a sturdy pedestal and a small sign nearby asks for visitors to not bother the casket.". It is in History Wing. It is fixed in place. Understand "casket" as Sarcophagus.

An oversized fox is a thing. "A massive fox creature stares at you from the bushes. No one else seems to notice it. Odd". It is fixed in place. It is in Johnson State Park. The description of oversized fox is "A great fox, about six feet high and long, with large breasts along its bottom and a big knotted shaft. She stares at you from the bushes, licking her snout and waiting patiently for something."

Every turn while there is a visible oversized fox:
	decrease the humanity of the player by 1;
	if the humanity of the player is greater than 5:
		say "[one of]A warm flash runs through your body. Something smells nice.[or]You glance around a moment, looking for something. You're not sure what.[at random]";
	otherwise if the humanity of the player is greater than 3:
		say "You[one of]'re starting to feel really aroused. Your groin feels a little funny, too[or] pant a little as lurid visions dance in your head[at random].";
	otherwise:
		say "[one of]The fox moves at least, approaching and nuzzling your crotch. You groan, feeling something swelling. A very fox like shaft bursts free into view, throbbing anxiously. You look at the vixen, turning and raising her many tails, and grab at her, thrusting up into her tight wet cunt. You rock against her with increasing fever until your knot swells, locking you to her, and then everything goes fuzzy. You cum and cum, exploding without relent as your body begins to change and shape, falling forward over the vixen as you become a fox much like her, breasts swelling under you and shaft swelling within her[or]You can't take these feelings anymore. You approach the fox on instinct, shucking off what clothes you had on. You thrust your fox like shaft to her snout and she looks like she might bite it off a moment before she opens her snout and takes it in, sucking at you quite well for a muzzled beast. You groan and pant as she works, knot swelling and tying you to her. By the time your orgasm ebbs, you have become a beast like her, shivering and yelping as she draws off your shaft with a pop[at random].";
		now the humanity of the player is 0;
		remove oversized fox from play;
		repeat with u running through visible body parts:
			now the tf table of u is table uber fox;
			now the ctype of u is uberfox;
		now the player is pacified;
		say "The fox laughs at you as she rises to two legs, her feral features retracting. She is soon a fox person instead of a hulking fox, running a hand over her shrinking breasts until she only has two, 'Sorry about that, but I had to. If you want to be on two legs again, you'll do the same.' She blows you a kiss, then flees."

instead of opening the sarcophagus for the first time:
	say "A gust of sand blows across your face as you reach for the relic. You squint your eyes shut against the sting as a voice whispers in your head, 'I have slept for long enough. Mortal, since you believe you are worthy to take what is mine, perhaps you are bold enough to be of use.'[line break][line break]The sand settles and you look around. Nothing seems changed, at least until you feel something new wagging behind you. The voice continues, 'Find others and bring them to me, only pure humans, not those already succumbed to the taint of this land. Bring them and offer them to me, and I will be most pleased.'";
	now jackal priest is not sanitized;
	infect rear with jackal priest;
	now jackal priest is sanitized;
	now rear is benign;
	now the player is pacified;

understand "offer [person] to anubis" as sacrificing.
Sacrificing is an action applying to one visible thing.

check sacrificing:
	if the player is not in History Wing:
		say "You're in the wrong place for that.";
		stop the action;
	if the tf table of rear is not table jackal:
		say "Your offer goes unheard. As if Anubis cares about you.";
		stop the action;

carry out sacrificing:
	if ctype of noun is not human:
		say "Anubis seems uninterested in this corrupted specimen.";
		stop the action;
	say "The sarcophagus suddenly cracks open. From the darkness comes a set of dusty bandages that wrap around [noun] and drag them inside. After a moment, something new emerges. A voice whispers, 'Excellent, continue to do as I have bid you and eternal reward awaits.'";
	now jackal priest is not sanitized;
	infect noun with jackal priest;
	now jackal priest is sanitized;
	tf noun;
	if noun is stuck to a rope(called u):
		now the noun is not stuck to the u;
	

instead of opening the sarcophagus:
	say "It seems quite sealed. You have your mission. Get unchanged people and bring them here to offer them to anubis.";
	stop the action;

Mysterious Box is a kind of container. It is closed. Understand "Cage" as a Mysterious Box. The description of Mysterious Box is "A box imported all the way from Greece. It's said that no one can open it, and the one that can manage the feat will be blessed by the gods. That sounds great! Maybe you're the lucky one.". There is a mysterious box in Art Wing.

Instead of taking the mysterious box:
	say "The guards might frown on that. Besides, you're not a thief, right?";
	stop the action;

Instead of opening a Mysterious Box for the first time:
	say "A rush of old musty scent and a tingle of energy escapes the box as you pop it open as a box of gum. Then... it just sits there. What a rip off.";
	now the noun is open;
	let z be a random unchanged on-stage person;
	now the tf table of z is table Minotaur;
	tf z;
	stop the action;

Instead of opening a Mysterious Box:
	say "This crappy thing still isn't doing anything.";
	stop the action;


Feather Necklace is a kind of clothing. understand "necklace" as Feather Necklace.  The clothing type of Feather Necklace is "necklace". The description of Feather Necklace is "What a pretty necklace, with bright gold and red feathers all along it.". The tf table of Feather Necklace is table phoenix. Feather Necklace is infectitem. 

A sturdy stump is a kind of thing.  The description of sturdy stump is "A stump a few gnarled branches still stuck to it.  The sturdy stump looks like a good place to tie an animal." . A sturdy stump is fixed in place.  Understand "stump" as sturdy stump.

There is a Wooden desk in Ranch Office.  The Wooden desk is an openable container.  It is closed.  It is fixed in place.  There is a catnip mouse in the Wooden desk.  Understand "desk" as Wooden desk.  The description of Wooden desk is "An old fancy desk from the 19th century and the mark of a successful businessman from days gone-by.  How this desk got into this simple office is beyond you." .

A pack of nuts is a kind of thing.  A pack of nuts is edible.  Understand "nuts" as a pack of nuts.  Understand "pack" as a pack of nuts.  The TF table of a pack of nuts is table 55.  The description of a pack of nuts is "This a package of all-natural, mixed tree nuts.  You don't recognize the brand, but they look quite tasty nonetheless." . A pack of nuts is infectitem.

Red T-Shirt is a kind of clothing. Understand "shirt" as a Red T-Shirt. understand "shirts" as the plural of Red T-Shirt. The printed plural name of Red T-Shirt is "Red T-Shirts". The description of Red T-Shirt is "A basic long sleeved shirt that happens to be a red color."; 

Jeans is a kind of clothing. Understand "pants" as a jeans. The printed plural name of jeans is "pairs of jeans". The description of Jeans is "Stone washed and looking cool". The clothing type of Jeans is "pants".

Lucky Paw is a kind of clothing. Understand "paw" as a Lucky Paw. The printed plural name of Lucky Paw is "pairs of Lucky Paw". The description of Lucky Paw is "A lucky paw you bought off some traveling gypsy. Keeps you safe from werewolf attacks, or so she said. Oh well, you see no reason to take chances, so you keep it on.". The clothing type of Lucky Paw is "necklace". The player is wearing a lucky paw.

after taking off the lucky paw for the first time:
	say "You get a bad feeling as you take off the paw.";
	let u be a random unchanged npc on-stage person;
	let z be a random stealthy infection model;
	infect u with z;
	tf u;
	now u is not spotted;
	if a random chance of 1 in 5 succeeds:
		if a random chance of 1 in 2 succeeds:
			now z is a random stealthy infection model;
		let u be a random unchanged npc on-stage person;
		infect u with z;
		tf u;
		now u is not spotted;
	


Stomach Pouch is a kind of clothing. Understand "pouch" as a stomach pouch. The description of stomach pouch is "A pouch designed to be worn under other clothes, to conceal money and other valuables.". The clothing type of Jeans is "pants". The tf table of stomach pouch is table kangaroo. stomach pouch is infectitem.

There is a Dresser in Apartment 1A. The Dresser is an openable container. It is closed. It is fixed in place. There is a stomach pouch and jeans and red t-shirt in it. There is a Feather Necklace in it. The description of Dresser is "A normal enough looking dresser, made of wood. You got it at Ikea a few years back. ".
A Button is an object.
There is a Button in the dresser. The description of the button is "So shiny and red, maybe you should push it? Maybe not...". It is fixed in place.

instead of pushing the button:
	say "You feel the world rewrite itself around you. The infection has progressed to the terminal stage, with everyone changed in radical ways! Your pentagram explodes in a wave of foul-smelling brimstone, consuming itself as evil energy flows into you, perverting your form.";
	repeat with J running through on-stage persons:
		if J is the player, next;
		if the tf table of J is table 0:
			let Q be a random infection model;
			now the tf table of J is the tf table of Q;
			tf J;
	repeat with J running through on-stage infectitem:
		let Q be a random person in the location of J;
		if Q is not nothing and Q is not the player:
			now the tf table of Q is the tf table of J;
			tf Q;
		remove J from play;
	let Q be a random pentagram;
	remove Q from play;
	now Q is a random ferret cage;
	let K be a random person in the location of Q;
	if K is not nothing and K is not the player:
		now the tf table of k is  table ferret;
		tf K;
	remove Q from play;
	repeat with N running from 1 to number of rows in the tf table of demonic mouse:
		let part be the Segment in row N of the tf table of demonic mouse;
		let foundit be 0;
		let expart be a random body part;
		repeat with J running through visible body parts:
			if the printed name of J is part:
				now expart is J;
				now foundit is 1;
		if foundit is 0, next;
		choose row N in the tf table of demonic mouse;
		if there is a shift text entry, say "[shift text entry][line break]";
		now the ctype of expart is demonic mouse;
		now the tf table of expart is the tf table of demonic mouse;
	try examining player;


Pair of latex wolf paws is a kind of clothing. [Pair of latex wolf paws is edible.]  understand "paws" as a pair of latex wolf paws. understand "latex paws" as a pair of latex wolf paws. understand "wolf paws" as a pair of latex wolf paws. The printed plural name of pair of latex wolf paws is "pairs of latex wolf paws". The description of pair of latex wolf paws is "Slippers made out of a shiny black material. They are styled to look identical to a pair of wolf paws." The clothing type of pair of latex wolf paws is "shoes". The TF table of pair of latex wolf paws is table 54. Pair of latex wolf paws is infectitem.

Mephit Perfume is a kind of clothing.  Understand "perfume" as 1 Mephit Perfume.  The Description of Mephit Perfume is "A black can with white lettering stating it is Mephit Perfume.  Claims to be the finest of scents.  You wonder why you'd want to wear it.".  The tf table of Mephit Perfume is table 14.  The clothing type of Mephit Perfume is "headwear".  Mephit Perfume is infectitem.

Longbow is a kind of clothing. The Description of Longbow is "A long and ornate longbow. Somewhat fancy looking compared to many of the others that were sitting beside it. It's designed to be worn across the back.".  The tf table of Longbow is table Elf.  The clothing type of Longbow is "shirt".  Longbow is infectitem.

Fennec Ear Hat is a kind of clothing. Understand "hat" as Fennec Ear Hat. The description of Fennec Ear Hat is "Morbid humor for a hunting store. These cheap looking fox ears are part of a hood you can wear over your head. Cute.". The tf table of Fennec Ear Hat is table fennec. Fennec Ear Hat is infectitem. The clothing type of fennec ear hat is "headwear".

Coyote Tail is a kind of clothing. "Wedged between two fur coats is a discarded coyote tail, odd.". Understand "tail" as Coyote Tail. The description of Coyote Tail is "What an odd thing. You didn't know this fur store actually catered to furries, but there it is, a wearable coyote tail.". The tf table of Coyote Tail is table coyote. Coyote Tail is infectitem. The clothing type of Coyote Tail is "pants".

Stag Antlers is a kind of clothing. understand "Antlers" as stag antlers.  The clothing type of stag antlers is "headwear". The description of Stag Antlers is "The antlers of some deer, removed by a hunter and set out to display. Oddly, it has a strap on it. You could wear it easily.". The tf table of stag antlers is table deer. The clothing type of stag antlers is "headwear". Stag Antlers is infectitem.

Feathered Mask is a kind of clothing. understand "Mask" as Feathered Mask.  The clothing type of Feathered Mask is "headware". The description of Feathered Mask is "Blue feathers around a long beak. What an odd mask.". The tf table of Feathered Mask is table gryphon. The clothing type of Feathered Mask is "headwear". Feathered Mask is infectitem.

Irish Cap is a kind of clothing. understand "hat" as Irish Cap.  The clothing type of Irish Cap is "headwear". The description of Irish Cap is "A round cap that is bright green. It practically screams 'Irish' looking at it.". The tf table of Irish Cap is table icat. Irish Cap is infectitem. There is a Irish Cap in downtown.

Interesting Lipstick is a kind of clothing. understand "Lipstick" as Interesting Lipstick.  The clothing type of Interesting Lipstick is "headware". The description of Interesting Lipstick is "A shiny red metal cannister that can be turned to reveal silky smooth lipstick.". The tf table of Interesting Lipstick is table rogue. The clothing type of Interesting Lipstick is "headwear". Interesting Lipstick is infectitem.

Cat Ear Band is a kind of clothing. understand "Band" as Cat Ear Band.  The clothing type of Cat Ear Band is "headware". The description of Cat Ear Band is "A band of white plastic with big fake white cat ears on it. Cute.". The tf table of Cat Ear Band is table felicia. The clothing type of Cat Ear Band is "headwear". Cat Ear Band is infectitem.

Aviator Goggles is a kind of clothing. understand "Goggles" as Aviator Goggles.  The clothing type of Aviator Goggles is "headware". The description of Aviator Goggles is "Old fashioned leather and real glass? These look pretty valuable as odd clothing accessories go.". The tf table of Aviator Goggles is table Goblin. The clothing type of Aviator Goggles is "headwear". Aviator Goggles is infectitem.

An easter egg is a kind of thing. An easter egg is edible.  understand "egg" as easter egg.  The TF table of an easter egg is table 22.  The description of a easter egg is "This a brightly colored eater egg that came from your own vagina. Odd, but it does look delightful.". an easter egg is infectitem.

An Tobasco Sauce is a kind of drink. An Tobasco Sauce is edible.  understand "sauce" as Tobasco Sauce.  The TF table of an Tobasco Sauce is table Feral Dragoness.  The description of a Tobasco Sauce is "A bottle of tobasco sauce. Written on it is, 'Puts a fire in your belly'. Huh, a likely story!". an Tobasco Sauce is infectitem.

An Hawk Milk is a kind of drink. An Hawk Milk is edible.  understand "milk" as Hawk Milk.  The TF table of an Hawk Milk is table Harpy.  The description of a Hawk Milk is "A bottle of Hawk Milk. Written on it is, 'Gain the eyes, and spirit, of an eagle'. Man, those marketing guys will write anything these days.". an Hawk Milk is infectitem.

An Baby Bottle is a kind of drink. An Baby Bottle is edible.  understand "bottle" as Baby Bottle.  The TF table of an Baby Bottle is table nidoqueen.  The description of a Baby Bottle is "A baby bottle, with clear plastic containing creamy looking fluid within and a great big ole rubber teat at the end for baby satisfaction.". an Baby Bottle is infectitem.

An Echo'N Brand Mayonnaise is a kind of drink. An Echo'N Brand Mayonnaise is edible.  understand "mayo" as Echo'N Brand Mayonnaise.  The TF table of an Echo'N Brand Mayonnaise is table echoen.  The description of a Echo'N Brand Mayonnaise is "A jar of Echo'N Brand Mayonnaise. What an odd brand, and no ingredient list!". an Echo'N Brand Mayonnaise is infectitem.

Fox Soda can is a kind of drink.  Understand "fox soda" as Fox Soda can. understand "Fox Soda" as 1 Fox Soda can. The description of a Fox Soda can is "This a red can of soda, labeled as 'Fox Soda.' You find it strange that you have never heard of that brand before.". The tf table of Fox Soda can is table latex fox.  Fox soda can is infectitem.

Wyvern Water can is a kind of drink.  Understand "wyvern water"  as Wyvern Water can. understand "Wyvern Water" as 1 Wyvern Water can. The description of a Wyvern Water can is "This a purple can of soda, labeled as 'Wyvern Water.' You find it strange that you have never heard of that brand before.". The tf table of Wyvern Water can is table wyvern.  Wyvern Water can is infectitem.

A pentagram is a kind of thing.  The description of pentagram is "A design you scrawled on your floor on a joke. What were you thinking when you did that?". A pentagram is fixed in place. 

There is a pentagram in apartment 1A. 

Bottle of milk is a kind of drink.  Understand "Milk" as Bottle of Milk.  Understand "Bottle" as Bottle of Milk.  The description of Bottle of Milk is "A glass bottle of milk.  It is cool to the touch."  The tf table of Bottle of Milk is table 4. Bottle of milk is infectitem.

instead of drinking, try silently eating the noun.

[Catnip Mouse is a kind of thing.]  Catnip Mouse is edible.  Understand "mouse" as catnip mouse.  Understand "catnip" as catnip mouse.  The TF table of catnip mouse is table 21.  The description of Catnip Mouse is "A small toy mouse, it smells faintly of catnip.".  Catnip mouse is infectitem.

Fresh Apple is a kind of thing.  Fresh Apple is edible.  Understand "apple" as Fresh Apple.  The TF table of Fresh Apple is table tree.  The description of Fresh Apple is "A delicious apple!".  Fresh Apple is infectitem.

Interesting Lamp is a kind of thing. The description of Interesting Lamp is "An intricate and old lamp with odd runes along the bottom and little metal hyena holding the glass in place. Looks kind of dirty though, maybe you should clean it?". The TF Table of Interesting Lamp is table hyena.

Instead of rubbing interesting lamp:
	say "You scrub vigorously at the lamp when no one is looking, trying to get your good deed of the day done. You're rewarded for your virtue by the lamp leaping out of your hands a moment and billowing thick purple smoke. Is it a genie? You hope so! A wish or three would be awesome![line break][line break]The mist flows out and around, but no genie forms at all. What a let down...";
	repeat with u running through visible persons:
		if u is not the player:
			infect u with noun;
		otherwise:
			now the player is pacified;
			infect pelvis with noun;
			infect rear with noun;
			
			

Tuna Fish is a kind of thing.  Tuna Fish is edible.  Understand "tuna" as tuna fish.  Understand "fish" as tuna fish.  The TF table of tuna fish is table 20.  The description of Tuna Fish is "It looks like a fish, it smells like a fish, perhaps you should see if it tastes like a fish?".  Tuna Fish is infectitem.

Glamour Magazine is a kind of thing.  Glamour Magazine is readable. Understand "magazine" as 1 Glamour Magazine.  The Description of Glamour Magazine is "You've never heard of Glamour Magazine, but judging by it's cover it's full of celebrity gossip and the latest fashions. If you have the time, you could [bold type]peruse[roman type] it."  The tf table of Glamour Magazine is table 23.  Glamour Magazine is infectitem

Chakona Tails is a kind of thing.  "A suspicious magazine hangs over the back of the couch, hmmm". Chakona Tails is readable. Understand "magazine" as 1 Chakona Tails.  The Description of Chakona Tails is "What kind of  book is this? Ah ha, this proves it, Greg is totally a furry. You can see wierd four legged cat taur like people running around on the cover."  The tf table of Chakona Tails is table felitaur.  Chakona Tails is infectitem. 1 Chakona Tails is in apartment 1E.

Infection Scanner is a kind of thing.  The description of the infection scanner is "There are [number of on-stage monster persons] infected people and [number of on-stage not monster people] uninfected people in the city.";



[World.Items end]
[World.Places start]

[To add your monsters to the game, they need to be in the room.  Also, because of the way the TFs work on NPCs (replacing them rather than actually changing them), you'll need a number of whatever monsters you have in the room called "holdingpen".  That's the room that creatures and things we don't really need sit in until they need to be used.
Adding a room is pretty easy.  You can either write "<Room name> is a room." the way I have with Johnson Park below to define a room specifically, or "<Direction> of the <Room 1> is <Room 2>." to define new rooms that are in directions from old rooms.  You can see this done with most of the lines of code.
Adding creatures and characters into the areas is a cinch.  Just add the line "<Some number of> people are in <the name of a room>.", and that number of people will start the game in that room.  You can see that I've done this for several rooms below.  Monsters are added in much the same way, but using the monster's name rather than the word "people".  Always remember: for every kind of monster that you have, you need a number of that monster equal to the number of people to be placed in holdingpen.
You can also use the line "The player is in <a room>." to tell the game what room the player starts in.
That's all there is to it!  Just a word of warning: if you have too many people and monsters running around, it could seriously degrade the performance of the game and cause some massive slowdown.  It's not really a concern with things in holdingpen since AI doesn't run for them, but for every person or monster that isn't in that room a pretty substantial chunk of code has to be run every single turn.
Well, have fun!  And remember, there's no harm in experimenting a bit - if you screw something up, you can always just revert to this original code, and if you don't you might even come up with some really great stuff!]

Part - keys

The iron key is a thing. It unlocks the stable doors. The iron key is in the Ranch Office.
understand "key" as iron key. The description of the iron key is "An ordinary looking key, except that it has a picture of a horse on it.";

A room is either IC or not IC. A room is usually IC.

Part - Places

Apartment 1A is a room.  "Your apartment. You've had better, you've had worse. At least this one has a window with a nice view, and you've only been mugged once all year! You got the place at a steal, and if you graduate on time, you'll be on to bigger and better soon. The pentagram you drew on a dare is still visible. Hope the land lord doesn't come and see that, oh well. Your dresser rests under your mirror, both cheap emergency buys from the local Ikea.".
First Floor Hallway is a room. Wooden door is a door. Northwest of wooden door is Apartment 1A. Southeast of wooden door is First Floor Hallway.[Northwest of First Floor Hallway is Apartment 1A.  ]The description of First Floor Hallway is "Just outside your apartment on the first floor. Whoever designed this apartment building was a little paranoid. Every floor has its own key, so you can't get to the other floors, just this one. The stairs lead down to the street at the end of the hallway, or you could go up to the roof. No key is needed up there. Two other apartments are visible from here as well.".
Apartment 1B is a room. "Home of Bob and Susan. You know them from school, since they go to college with you. You're pretty sure they're an item, but they admit to nothing. The most prominent feature of the room is the huge fridge they got for Christmas last year. The thing is gargantuan, chrome, and has one of those built in water/ice dispensers. You are so jealous.".
South of Apartment 1B is First Floor Hallway.
There is a Refrigerator in Apartment 1B. The description of the refrigerator is "A huge chrome fridge. It even has one of those ice/water dispensers. Aw man, you wish you had one of these.". The Refrigerator is an openable container. It is closed. It is fixed in place. There is an easter egg and a bottle of milk in the refrigerator. understand "fridge" as refrigerator. There is a cat ear band in Apartment 1B. "Someone left a strange hair band laying around, it has cat ears on it.".
Apartment 1E is a room. "Home of David and Greg. You've heard Greg was a bit of a 'furry'. You know, one of those weird internet cult things, whatever. Either way, they do have a pet ferret in a cage right there on the counter of the kitchen. That has to be proof, right? I mean, really, there's even a dog treat shaped cookie in a clear cookie jar. Total furry." East of Apartment 1E is First Floor Hallway.
There is a ferret cage in apartment 1E.
There is a hawk milk in apartment 1E. "Some kind of dietary supplement drink is sitting there, [apostrophe]Hawk Milk[apostrophe], odd name.".

The Apartments is a region.  Apartment 1A and Apartment 1B and Apartment 1E and First Floor Hallway is in The Apartments.


[Second Street, including Uptown (which links to Apartments) and Downtown (which links to Outskirts).]
Uptown is a room. "You can see your house from here! Of course you're just standing outside of it, so that's not really a big accomplishment. Uptown is usually a busy place, but it seems oddly subdued this morning, as if something was about to happen, or is already happening? Nah, you're just being paranoid. You can see the stairs heading back up to your apartment, or you can head into the city along the main road of 'second street' just south, or a smaller winding street to the southwest.". Above Uptown is First Floor Hallway.
Apartment Roof is a room. "The wind gusts past a bit coolly up here. You can see most of the city, writhing about in the grips of this strange, terrible, day. Perhaps you can wait up here for it to all be over?"
Above First Floor Hallway is Apartment Roof.
Second Street North is a room.  "A major road with a lot of cars going one way or the other. This is where you got that mugging, so you tend to not stay around here for long. You're pretty sure there's a 7-11 around here somewhere but you never got the courage to go looking for it. North of here leads back to your house, and south heads further into the city.". North of Second Street North is Uptown.
Second Street South is a room. "Nestled between Davis street to the west and Downtown to the south, this area of the city sees much use as a gas stop, or parking lot, depending on how traffic is feeling that day." North of Second Street South is Second Street North. 
Downtown is a room. "Ah, downtown, you could almost sing a song about it. It's a shame you were never much good at singing. There's plenty to do here. To the east, you can see the national museum has opened up again. They just got in that new 'wonders of Egypt' display. You had meant to go see that, hmm.. Southeast of here, a long road heads out of town.".  North of Downtown is Second Street South.
East of Downtown is National Museum. The description of National Museum is "A large museum that has an art wing to the north side, history on the right, southwest, side, and a mix of rotating displays to the east.".
North of National Museum is Art Wing. The description of Art Wing is "Not a bad assortment of various national arts here. It's separated largely by region of origin.".
There is an Interesting Lamp in Art Wing. "A curious lamp is on display. It looks like an old school thing with glass and a wick, but there are little metal hyena instead of the standard basic clamps that hold the glass in place. It looks a little dirty though, when's the last time someone cleaned it?"
Southwest of National Museum is History Wing. The description of history wing is "'Wonders of Egypt' proclaims a large banner just overhead as you walk in. All kinds of things are laid out, but the big prize is the big mummy's casket right in the center there. It's kind of rare for such a small museum to actually get a loaner on one of these, might as well enjoy it while it lasts.".
Sturdy Stump is a kind of supporter.
[Outskirts (which links to Uptown).]
Town Border is a room.  "Just getting out of the city, where the suburbs start to get sparse. You can see a few cows out in the fields, as farmland starts to dominate things. You never much cared about cows, except for hamburgers and milk. Keep on, majestic cows, kinda makes you hungry... If you wanted to get closer to the cows, or just away from the city, south would be the way to go." Northwest of Town Border is Downtown.
North of Pasture is Ranch Yard. 1 sturdy stump is in pasture.
There is 1 fresh apple on it. "Someone left an apple on the stump. Looks delicious.".
The description of pasture is "A nice, grassy, area. It seems the livestock is kept off most of it, with a large fenced in area just to the east. The main part of the ranch is to the north.".
The description of ranch yard is "You're coming up one of the ranches. Why this one? It was one of the few that didn't have a huge padlock right on the road and signs about shooting trespassers on sight. You're not even sure if this ranch is in use, looks a little rundown. To the north are some stables in a barn, but there is a padlock on that. To the south, a grassy field is visible. The road awaits you back west, or perhaps you want to explore inside the house?".
Pasture Door is a door.
West of Pasture Door is Pasture.
East of Pasture Door is Sheep Pasture. The description of Sheep Pasture is "A fine fenced in area for some small livestock, probably sheep, guessing by the wool.".
Ranch Yard is a room.  West of Ranch Yard is Town Border.
inside of ranch yard is Ranch Office.
The description of ranch office is "This place is definititely abandoned. There's dust everywhere, except for a small patch on the counter. To the east, you see an open doorway leading to another room, or you could head out. You can feel your allergies about to kick in with all the dust.".
East of Ranch Office is Ranch Bedroom.
The description of Ranch bedroom is "A fine bedroom, if you don't mind neglect and dust. There is still a bed, surprisingly soft looking if dirty. There is a window, but it was boarded up from the outside quite some time ago. To the west you see the main ranch office.".
The Stable Doors is a door.
understand "door" or "gate" as the stable doors.
North of Ranch yard is Stable Doors.
North of Stable Doors is Stables.
The description of stables is "Small stalls are set up for individual animals, perhaps horses or goats, something like that. You wouldn't know much about that, but at least the place smells fresh enough. No recent cow patties. Back south it the ranch yard.".
Stable doors is lockable and locked.
Outskirts is a room. "Heading further out from the city, you can barely see the lights anymore. Ah, sweet nature. You can hear squirrels in the trees, and the haunting cries of the songbirds. You've also been told there are grizzlies and wild cats around here, so don't enjoy nature too much there, pal. If you're taking this warning to heart, the city is back north, or go ahead and ignore me and head south.". North of Outskirts is Town Border.
Forest Glade is a room. "Tall forest trees at all side, blocking much of the light. You can hear buzzing insects somewhere close by, ah there it is, a beehive just eight feet off the ground, hanging from a branch. You can also see the remains of a camp that was taken down maybe a day or two ago. People are so careless when it comes to protecting the forest. Ah well, the city is north of here.". North of Forest Glade is Outskirts. There is a beehive in Forest Glade. The description of beehive is "A bee hive with unusually large bees buzzing around it. It's probably best to leave it alone.". It is fixed in place.
understand "hive" as beehive.

[Davis street (which links First and Second streets), and it's end.]
Davis Street is a room. "Davis is a small street that ends here and runs south a short distance before ending again. Most people come here for the movie theater, but it appears to be closed right now. Just your luck.".  East of Davis Street is Second Street South.
There is a Feathered Mask in Davis Street.
Miller Avenue is a room.  "This really should be part of Davis Street, but it's not. You can blame some city official for that. either way, it continues north, where it becomes Davis, or south, where it ends.". North of Miller Avenue is Davis Street.
Dead End is a room. "Not much more than a short alleyway with poor lighting. There's a small porch here with a metal door that looks fairly securely locked. Ah well, at least you can get out back North before one of the rats around here decides to take a nip out of you.". North of Dead End is Miller Avenue.

[First Street, including Commercial (which links to the mall and park).]
First Street North is a room. "You're not that far from your apartment, which is Northeast of here. The street bends off to the west, narrowing into a small alley, making this part of the road somewhat unpopular, if it wasn't for that hotdog stand on the side of the road. Best dogs in the city.". Northeast of First Street North is Uptown.
West of First Street North is a Small Alley.
The description of Small Alley is "A narrow little road that leads south into the center of the city. Watch out, though, you hear rumors of bikers and pedestrians being whalloped by cars in this place at least once a month.".
South of a Small Alley is First Street Center.
First Street Center is a room.  "Ah, one of the centers of the city. South of here, you can see the mall and commercial district, where you are often headed. From here, you could head west out to the pond. That's a good place to pick up chicks, or just hang out if you have no money.". East of First Street Center is Davis Street.
First Street South is a room.  "The mall draws closer here, and the density of people increases. Usually, there are a few people standing around, trying to sell useless baubles, but they're not around today, that's odd. The mall remains to the South, despite this.". North of First Street South is First Street Center.
Commercial District is a room. "Accept no substitutions, the true center of the city, or at least the center of most of your free time. Girls, food, toys, this place has all your needs met. It's just a shame You're often lacking the money to enjoy it. To the north is First Street, to the west is the Mall itself, and it looks like the park is open to the South. You can already hear a few ducks quacking.".  North of Commercial District is First Street South.

There is 1 Interesting Lipstick in commercial district. "Someone has left a small canister of lipstick on a bench."

Johnson Park Entrance is a room.  "Johnson Park, a fine place, if you like ducks. There's also been a bit of a skunk problem of late. Visitors are reminded by helpful signs not to agitate skunks. They're not cute black dogs, and they are not striped cats. To the north is the commercial district, while a neat little walkway winds its way southeast further into the park.". North of Johnson Park Entrance is Commercial District.
Johnson State Park is a room.  "Deep in the park is a small pond. There's almost always some bread spread around, offering to the local duck and geese overlords that run the park and the humans borrow from time to time. A paved trail leads northeast back towards the entrance of the park.". Northeast of Johnson State Park is Johnson Park Entrance.

Dirt Road is a room.  "A dusty dirt road leads west away from the city proper, into a small patch of wilderness. A pond is ahead, light glinting off of it. This is a popular way to go on hot summer days. The city can be seen back east.". East of Dirt Road is First Street Center.
Lewis Pond is a room. "A fair sized pond, big enough to take a few minutes swimming either way across it. This place is a hot bed of activity in the summer, offering low cost relief from the heat. A dirt road leads east back towards the city.". East of Lewis Pond is Dirt Road.

[First Floor Mall (which links to Commercial district and second floor mall).]
First Floor Mall Lobby is a room. "Soft muzak plays from cleverly(not) concealed(yea, right) speakers. Welcome to consumer heaven, where all your needs are met for 19.99 each. To the north is a small Radioshack, didn't those close down already? To the south is a small hunting store, popular enough with the local rednecks. West leads to the food court, one of your favorite places. Escalators lead up to the second floor as well, and the street is back East.". East of First Floor Mall Lobby is Commercial District.
Radioshack is a room.  South of Radioshack is First Floor Mall Lobby.  The description of radioshack is "    You have questions, we have answers[line break] [line break]    Do they have answers for a plague of infectious monsters? Maybe. There's a lot of small electronic gizmos around here, including some cell phones and GPS systems. On one wall, several LCD TVs play the discovery channel in HD.".
There is 1 Aviator Goggles in Radioshack. "Someone seems to have abandoned a good looking pair of goggles here.".
Food Court is a room.  "Chinese, BBQ, even a McDonalds tucked in there. This place has it all! Well, everything but comfortable seats. These metal chairs are not ergonomic for any creature of earth, but people put up with it for cheap good eats. The main area of the mall is to the east.". East of Food Court is First Floor Mall Lobby.
There is one baby bottle in Food Court. "Someone left their baby bottle sitting on one of the tables.".
Al's Hunting Emporium is a room. "If you can shoot it, we can get you the ammo. What a motto. Since there aren't quite as many hunters as one would think, the place makes a side market on hunting clothes, though some of the stuff they have stocked here really makes you wonder. The exit from this doomed outlet is North.". North of Al's Hunting Emporium is First Floor Mall Lobby.
There is 1 longbow in Al's Hunting Emporium. "There is a rather fancy longbow on a rack among other, much more plain, examples.".
[Second Floor Mall (which links to first floor mall).]
Second Floor Mall Lobby is a room. "Arriving from the escalator, the first thing one notices is that most of these stores are for old people. Man, you never come up here if you can help it. Why did you come up here now? Too late. Maybe the fur shop has something? It's just to the south.". Below Second Floor Mall Lobby is First Floor Mall Lobby.
Fantastic Furs is a room. "Mostly frequented by ladies trying to look fashionable, you can only gawk at things with no comprehension of their value. As if they saw you coming, they have set up a small section to the side filled with un-feminine clothing accessories for you to admire. The exit is north, use it before it's too late.". North of Fantastic Furs is Second Floor Mall Lobby.

The City Mall is a region. Fantastic Furs and Radioshack and First Floor Mall Lobby and Food Court and Al's Hunting Emporium and Second Floor Mall Lobby is in The City Mall.

Dark Belly is a room. The description of dark belly is "You seem to be inside someone, or somethings, stomach.  While not completely dark, it is difficult to see.". [used by engulf attack for storing victims]
Womb is a room. The description of womb is "You have been drawn into the womb of some fantastic beast. You feel snuggly held from all sides, pulsing flesh throbbing against your form as your body tingles with new possibilities.". [used by engulf attack for storing victims]
Egg is a room. The description of egg is "You have been drawn into the egg of some fantastic beast. You feel snuggly held from all sides, pulsing flesh throbbing against your form as your body tingles with new possibilities.". [used by engulf attack for storing victims]
Understand "Pouch" as birthing pouch.
Birthing Pouch is a room. The description of Birthing Pouch is "You seem to be in a large furry pouch. The walls are warm, and a little slick despite the fur. You feel safe here, like everything is going to be alright, even as your body shivers faintly with strange new sensations.". [used by engulf attack for storing victims]
The holdingpen is a room.  Holdingpen is dark.  [used to store out of play monsters and items]

Dark belly and womb and egg and holdingpen and birthing pouch are not IC.

There is a vending machine in Johnson Park Entrance.  The vending machine is an openable container.  It is open.  It is fixed in place.  There is a fox soda can and a pack of nuts and a wyvern water can in the vending machine.  Understand "machine" as vending machine. The description of a vending machine is "A machine full of tasty snacks for hungry park visitors." .

 The home of Collie is Sheep Pasture.
 [World.Places end]
[World.People start] 

Part - People

The player is in Apartment 1A.  [1 skunkbeast is in apartment 1a.] [1 herm squirrel are in apartment 1a.] 
Bob is a man in apartment 1B. He has a male name "Bob". He has a female name "Roberta". 
Understand "Roberta" as Bob.
Susan is a woman in apartment 1B. She has a male name "Seth". She has a female name "Susan".
Understand "Seth" as Susan.
David is a man in apartment 1E. He has a male name "David". He has a female name "Diva".
Understand "Diva" as David.
Greg is a man in apartment 1E. He has a male name "Greg". He has a female name "Georgina".
Understand "Georgina" as Greg.
Paula is a woman in Second Street North. She has a male name "Paul". She has a female name "Paula".
Understand "Paul" as Paula.
Trixia is a woman in Downtown. She has a male name "Trace". She has a female name "Trixia".
Understand "Trace" as Trixia.
Shaquia is a woman in Downtown. She has a male name "Shaquielle". She has a female name "Shaquia".
Understand "Shaquielle" as Shaquia.
Tony is a woman in Downtown. She has a male name "Tony". She has a female name "Tony".
Thomas is a man in Downtown. He has a male name "Thomas". He has a female name "Thoma".
Understand "Thoma" as Thomas.
Joe is a man in Downtown. He has a male name "Joe". He has a female name "Jackey". 
Understand "Jackey" as Joe.
Larry is a man in Downtown. He has a male name "Larry". He has a female name "Lynette".
Understand "Lynette" as Larry.
Prometheus is a man. He has a male name "Prometheus". He has a female name "Methia". He has a ctype Centaur. Prometheus has a tf table table 6.
Understand "Methia" as Prometheus.
1 tuna fish is in Forest Glade.
Timothy is a man in First Street Center. He has a male name "Timothy". He has a female name "Tia".
Understand "Tia" as Timothy.
Sammy is a woman in First Street Center. She has a male name "Sam". She has a female name "Sammy".
Understand "Sam" as Sammy.
Henrietta is a woman in Johnson Park Entrance. She has a female name "Henrietta". She has a male name "Henry".
Understand  "Henry" as Henrietta.
Sasha is a woman in Johnson Park Entrance. She has a male name "Boris". She has a female name "Sasha".
Understand "Boris" as Sasha.
Lisa is a woman in Johnson Park Entrance. She has a male name "Loius". She has a female name "Lisa".
Understand "Loius" as Lisa.
Juan is a man in Johnson Park Entrance. He has a male name "Juan". He has a female name "Jaquette".
Understand "Jaquette" as Juan.
Mark is a man in Johnson Park Entrance. He has a male name "Mark". He has a female name "Marry".
Understand "Marry" as Mark.
Darrell is a man in Johnson Park Entrance. He has a male name "Darrell". He has a female name "Darna".
Understand "Darna" as Darrell.
1 Mephit Perfume is in Johnson State Park.
[3 people are in Lewis Pond.] [1 latex frog is in Lewis Pond.]
Petey is a man in lewis pond. He has a male name "Petey". He has a female name "Petra". He has a tf table table otter. He has a ctype Otter.
Understand "Petra" as Petey.
Longtail is a woman in lewis pond. She has a male name "Longtail". She has a female name "Longtail". She has a tf table table otter. She has a ctype Otter.
1 Infection Scanner is in Radioshack.
Jazmine is a woman in Food court. She has a male name "Jacob". She has a female name "Jazmine".
Understand "Jacob" as Jazmine.
1 tobasco sauce is in food court. "A bottle of tobasco sauce sits on one of the tables.".
1 Echo'N Brand Mayonnaise is in food court. "Did someone bring some mayo from home and leave it here? Odd.".
1 Glamour Magazine  and 1 fennec ear hat is in Al's Hunting Emporium. [3 doe are in al's hunting emporium.]
Christopher is a man in Fantastic Furs. He has a male name "Christopher". He has a female name "Christie".
Understand "Christie" as Christopher.
1 pair of latex wolf paws and 1 stag antlers and 1 coyote tail is in Fantastic Furs.
John is a man in Fantastic Furs.  He has a male name "John" . He has a female name "Jane" . Understand "Jane" as John.

Charles is a man in the holdingpen.  He has a male name "Charles" . He has a female name "Charlene" .  Understand "Charlene" as Charles. The ctype of charles is large bee. the tf table of charles is table bee.
Andrew is a man in the holdingpen.  He has a male name "Andrew" . He has a female name "Andrea" . Understand "Andrea" as Andrew. The ctype of Andrew is large bee. the tf table of andrew is table bee.
Shrimpy is a man in holdingpen. He has a male name "Shrimpy". He has a female name "Shrimpette". Understand "Shrimpette" as Shrimpy.
Jack is a man in the holdingpen.  He has a male name "Jack" . He has a female name "Jackie" . Understand "Jackie" as Jack.
Donald is a man in the holdingpen.   He has a male name "Donald". He has a female name "Donna" . Understand "Donna" as Donald.
Stacey is a man in the holdingpen.  He has a male name "Stacey" . He has a female name "Stacey" . [yeah I know, I cheated ] 
Casey is a man in the holdingpen.  He has a male name "Casey" . He has a female name "Kacey" . Understand "Kacey" as Casey. 
Harry is a man in the holdingpen.  He has a male name "Harry" . He has a female name "Harriet" . Understand "Harriet" as Harry.
20 easter eggs are in the holdingpen.  [10 wyverns are in the holdingpen. 10 demonic mouse are in the holdingpen. 10 latex skunks are in the holdingpen.  10 Demons are in the holdingpen. 10 latex foxes are in the holdingpen.  [10 latex frogs are in holdingpen.  10 Tentacled Oozes are in the holdingpen.  10 Centaurs are in the holdingpen.  10 Masculine Bodybuilders are in the holdingpen.  10 Anthro Mares are in the holdingpen.  10 Big Boobys are in the holdingpen.  10 Neanderthals are in the holdingpen.  10 Boar Men are in the holdingpen.]  10 skunkbeasts are in the holdingpen. 2 alpha lions are in holdingpen.  10 lionesses are in holdingpen. 10 cat girls are in holdingpen. 10 rabbit guys are in holdingpen. 10 Rat Dudes are in the holdingpen.  10 Latex Wolfs are in the holdingpen. 10 herm squirrels are in holdingpen. 10 centaurs are in the holdingpen. 12 large bees are in the holdingpen. 10 latex cows are in holdingpen. 10 otters are in holdingpen. 10 does are in the holdingpen. 1 stag is in holdingpen. 10 furry does are in the holdingpen. 10 fennec taurs are in the holdingpen. 10 feral dragonesses are in holdingpen. 10 ferrets are in the holdingpen.]
[World.People end]



[THE END]

Volume - Harry Gates mods

Book - Base Tables and Utilities

Table of Adjacencies
Placing	Body Part		Adjacent Parts		BlackStatusFigure	
1	head				{2}					Figure of Black 01
2	chest				{1, 3, 5, 8}			Figure of Black 02
3	gut					{2, 4, 17}				Figure of Black 03
4	pelvis				{3, 17, 11, 14}			Figure of Black 04
5	left upper arm		{2, 6}				Figure of Black 05
6	left forearm			{5, 7}				Figure of Black 06
7	left hand			{6}					Figure of Black 07
8	right upper arm		{2, 9}				Figure of Black 08
9	right forearm		{8, 10}				Figure of Black 09
10	right hand			{9}					Figure of Black 10
11	left thigh			{4, 12}				Figure of Black 11
12	left shin				{11, 13}				Figure of Black 12
13	left foot				{12}					Figure of Black 13
14	right thigh			{4, 15}				Figure of Black 14
15	right shin			{14, 16}				Figure of Black 15
16	right foot			{15}					Figure of Black 16
17	rear					{3, 4, 11, 14}

Part - Status line

Definition: a direction (called D) is valid if the room D from the location of the player is a room.

Table of Fancy Status
left	central	right
" Location: [the player's surroundings]"	"P:[number of body parts - number of infected body parts]"	"[if player is femme]F[end if][if player is butch]M[end if]|W:[willpower of ctype of the player]|R:[reflex of ctype of the player]"
" Exits: [list of valid directions]"	""	"[time of day]"
[" You are:[Player_Status], [Player_Gender_Status]"	""	""]

The first for constructing the status line rule:
	fill status bar with Table of Fancy Status;
	rule succeeds.

Every turn:
	let z be 0;
	let q be 0;


[
Chapter - Toggling text map view (in place of Chapter - Hacking Automap in Glimmr Automap by Erik Temple)

First for constructing the status line (this is the bypass status line map rule):
	if glulx graphics is supported and the map-window is g-present:
		fill status bar with table of fancy status;
		rule succeeds;
	otherwise:
		if current zoom is map absent:
			fill status bar with table of fancy status;
		otherwise:
			now current zoom is map zoomed in;
			reserve automap memory of (text-map depth) rows;
			fill status bar with table of fancy status and map.
]

When play begins: 
[	change right alignment depth to 18;]
	now all rooms in the apartments are indoor.

Chapter - Generate Player Status

To Generate Player Status:
	let PGS_temp be a text;
	let infection list be a list of table names;
	now infection list is {};
	repeat with N running from 1 to 17:
		choose row with a placing of N in the table of adjacencies;
		let item be TF table of the body part entry;
		add item to infection list, if absent;
	if the number of entries in infection list is greater than 1:
		now Player_Status is "partially infected";
	otherwise:
		if entry 1 of infection list is Table 0:
			now Player_Status is "uninfected";
		otherwise:
			now Player_Status is "fully infected";
	repeat with IL running through infection list:
		let ILTemp be 0;
		repeat with ILCheck running from 1 to 17:
			choose row with a placing of ILCheck in the table of adjacencies;
			if TF table of the body part entry is IL, increase ILTemp by 1;
		now Player_Status_Temp is (ILTemp * 100) / 17;
		now Body_Part is the Shift Text in row 18 of IL;
		now PGS_temp is  "[Player_Status], [Player_Status_Temp]% [Body_Part]";
		now Player_Status is PGS_temp;
	now Player_Gender_Status is "and";
	if skunkpregnant of the player is greater than 0 or pregnant of the player is greater than 0:
		now PGS_temp is "[Player_Gender_Status] a pregnant";
		now Player_Gender_Status is PGS_temp;
	if the player is femme:
		if the player is butch:
			now PGS_temp is "[Player_Gender_Status] herm";
			now Player_Gender_Status is PGS_temp;
		otherwise:
			now PGS_temp is "[Player_Gender_Status] female";
			now Player_Gender_Status is PGS_temp;
	otherwise:
		if the player is butch:
			now PGS_temp is "[Player_Gender_Status] male";
			now Player_Gender_Status is PGS_temp;
		otherwise:
			now PGS_temp is "[Player_Gender_Status] neuter";
			now Player_Gender_Status is PGS_temp;
	[follow the window-drawing rules for the side-window.][ With GLIMMR in use, this rule gets called last every turn anyway, so it doesn't make sense to do it here.]

Part - Global variables

A thing is either cheatable or uncheatable.  A thing is usually cheatable.

Check_Matches is a text that varies.

Graphics Toggle is a thing.  Graphics Toggle is either on or off.  Graphics Toggle is on.  Graphics toggle is either refresh or norefresh.  Graphics toggle is refresh.

Body_Part is an indexed text that varies.

Player_Name is an indexed text that varies.

Player_Alternate_Name is an indexed text that varies.

Player_Status is an indexed text that varies.

Player_Gender_Status is an indexed text that varies.

Player_Status_Temp is a number that varies.  Player_Status_Temp is 0.

Part - Figures

Figure of Blank White is the file "Blank White.jpg".
Figure of Frame is the file "Frame.png".

Chapter - Body status figures

Figure of Body Base is the file "body_base.png".
Figure of Body Status is the file "body_status.png".
Figure of Black 01 is the file "black_01.png".
Figure of Black 02 is the file "black_02.png".
Figure of Black 03 is the file "black_03.png".
Figure of Black 04 is the file "black_04.png".
Figure of Black 05 is the file "black_05.png".
Figure of Black 06 is the file "black_06.png".
Figure of Black 07 is the file "black_07.png".
Figure of Black 08 is the file "black_08.png".
Figure of Black 09 is the file "black_09.png".
Figure of Black 10 is the file "black_10.png".
Figure of Black 11 is the file "black_11.png".
Figure of Black 12 is the file "black_12.png".
Figure of Black 13 is the file "black_13.png".
Figure of Black 14 is the file "black_14.png".
Figure of Black 15 is the file "black_15.png".
Figure of Black 16 is the file "black_16.png".

Include Basic Screen Effects by Emily Short.

[Include Glulx Status Window Control by Erik Temple.]

[Book - Flexible Windows support

Include Flexible Windows by Jon Ingold.

The side-window is a text-buffer g-window spawned by the main-window.
The measurement of the side-window is 30.

Window-drawing rule for the side-window (this is the construct inventory rule):
	if inventory-window is g-present:
		move focus to inventory-window, clearing the window;
		if the number of things enclosed by the player is 0[ and available cash of the player is $0.00]:
			say "You don[apostrophe]t seem to be carrying anything at the moment.[line break]";[(Health: [present health of the player]/[max health of the player])[line break]";]
		otherwise:
			let inv_count be 0;
			let inv_item be nothing;
			let item_count be 0;
			say "You are carrying: [line break]";
			[if available cash of the player is greater than $0.00, say "  [available cash of the player] in cash[line break]";]
			if the number of things enclosed by the player is not 0:
				repeat with item running through things enclosed by the player:
					if item is concealed or item is scenery, next;
					if item is not carried by the player and item is not worn by the player, next;
					if inv_item is nothing, now inv_item is item;
					if the printed name of item is the printed name of inv_item:
						increase item_count by 1;
					otherwise:
						say "  [if item_count is greater than 1][item_count] [printed plural name of inv_item][otherwise][a inv_item][end if]";
						if inv_item is worn and item_count is 1, say " (worn)";
						say "[line break]";
						now item_count is 1;
						now inv_item is item;
					increase inv_count by 1;
					if inv_count is greater than (height of inventory-window - 2):
						say "      (list truncated)[line break]";
						break;
				if inv_count is less than (height of inventory-window - 2):
					say "  [if item_count is greater than 1][item_count] [printed plural name of inv_item][otherwise][a inv_item][end if]";
					if inv_item is worn and item_count is 1, say " (worn)";
					say "[line break]";				
	if status-window is g-present:
		move focus to status-window, clearing the window;
		Generate Player Status;
		say "You are [Player_Status], [Player_Gender_Status].";
[	if Graphics Toggle is on and graphics-window is g-present and Graphics Toggle is refresh:
		Clear_Graphics;
		[if the player is fully gynoid, draw scaled framed for Figure of Side by Side in graphics-window;]]
	now Graphics Toggle is refresh;
	if Graphics Toggle is on and graphic-status-window is g-present:
[		Clear_Graphic_Status;]
[		draw scaled copy of Figure of Body Status in graphic-status-window;]
		repeat with N running from 1 to 16:
			choose row with a placing of N in the table of adjacencies;
			let F be the BlackStatusFigure entry;
			let GSBP be the body part entry;
[			if TF table of GSBP is not Table 0, draw scaled copy of F in graphic-status-window;]
	return to main screen.

The graphic-status-window is a graphics g-window.  The side-window spawns the graphic-status-window.  The position of the graphic-status-window is g-placeabove.  The scale method of the graphic-status-window is g-proportional.  The measurement of the graphic-status-window is 42.

The graphics-window is a graphics g-window spawned by the side-window.  The position of the graphics-window is g-placeabove.  The scale method of the graphics-window is g-proportional.  The measurement of the graphics-window is 35.

The status-window is a g-window. The side-window spawns the status-window. The position of the status-window is g-placeabove. The scale method of the status-window is g-fixed-size. The measurement of the status-window is 5.

The inventory-window is a g-window.  The side-window spawns the inventory-window.  The position of the inventory-window is g-placebelow.  The scale method of the inventory-window is g-proportional.  The measurement of the inventory-window is 100.

[Inform 6 code for handling graphics scaling.]

[To draw scaled copy of (f - a figure-name) in (g - a g-window):
	 (- DrawScaled({f}, {g}); -) .
]
[Include (-

		! Doing scaling calculations in I6 lets us handle bigger numbers

		[ GetImageSize curimg index result;
			result = glk_image_get_info( ResourceIDsOfFigures-->curimg, gg_arguments,  gg_arguments+WORDSIZE);
			return gg_arguments-->index;
		];

		[ DrawScaled figure g w_total h_total graph_height graph_width w_offset h_offset;
		graph_height = WindowSize(g, 1);
		graph_width = gg_arguments-->0;
		w_total = GetImageSize(figure, 0);
		h_total = gg_arguments-->1;
	
		if (graph_height - h_total < 0) !	if the image won't fit, find the scaling factor
		{
			w_total = (graph_height * w_total)/h_total;
			h_total = graph_height;

		}

		if (graph_width - w_total < 0)
		{
			h_total = (graph_width * h_total)/w_total;
			w_total = graph_width;
		}

		w_offset = (graph_width - w_total)/2; if (w_offset < 0) w_offset = 0;
		h_offset = (graph_height - h_total)/2; if (h_offset < 0) h_offset = 0;
	
		glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->figure, w_offset, h_offset, w_total, h_total); 
		];
	
	-) .

To draw stretched copy of (f - a figure-name) in (g - a g-window):
	(- DrawStretched({f}, {g}); -) .

Include (-

		[ DrawStretched figure g graph_height graph_width;
		graph_height = WindowSize(g, 1);
		graph_width = gg_arguments-->0;
	
		glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->figure, 0, 0, graph_width, graph_height); 
		];
	
	-) .

To draw scaled framed copy of (f - a figure-name) in (g - a g-window):
	 (- DrawScaledFramed({f}, {g}); -) .

Include (-

		! Doing scaling calculations in I6 lets us handle bigger numbers

		[ DrawScaledFramed figure g w_total h_total graph_height graph_width w_offset h_offset;
		graph_height = WindowSize(g, 1) - 10;
		graph_width = gg_arguments-->0 - 10;
		w_total = GetImageSize(figure, 0);
		h_total = gg_arguments-->1;
	
		if (graph_height - h_total < 0) !	if the image won't fit, find the scaling factor
		{
			w_total = (graph_height * w_total)/h_total;
			h_total = graph_height;

		}

		if (graph_width - w_total < 0)
		{
			h_total = (graph_width * h_total)/w_total;
			w_total = graph_width;
		}

		w_offset = (graph_width - w_total)/2; if (w_offset < 5) w_offset = 5;
		h_offset = (graph_height - h_total)/2; if (h_offset < 5) h_offset = 5;
	
		glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->figure, w_offset, h_offset, w_total, h_total); 
		];
	
	-) .

To draw stretched framed copy of (f - a figure-name) in (g - a g-window):
	(- DrawStretchedFramed({f}, {g}); -) .

Include (-

		[ DrawStretchedFramed figure g graph_height graph_width;
		graph_height = WindowSize(g, 1) - 10;
		graph_width = gg_arguments-->0 - 10;
	
		glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->figure, 5, 5, graph_width, graph_height); 
		];
	
	-) .

To draw scaled framed for (f - a figure-name) in (g - a g-window):
	draw scaled framed copy of f in g;
	draw stretched copy of Figure of Frame in g;

To draw stretched framed for (f - a figure-name) in (g - a g-window):
	draw stretched framed copy of f in g;
	draw stretched copy of Figure of Frame in g;

To Clear_Graphics:
	if graphics-window is g-present:
		draw stretched framed for Figure of Blank White in graphics-window;

To Clear_Graphic_Status:
	if graphic-status-window is g-present:
		draw stretched copy of Figure of Blank White in graphic-status-window;

][
Book - Automap / Hyperlinks / Autowalk support

Chapter -  Glimmr Automap support

Include Glimmr Automap by Erik Temple.
Include Glimmr Automap Tileset by Erik Temple.
Include Glimmr Bitmap Font by Erik Temple.

The map-renderer plus internal compass rule is listed instead of the map-renderer display rule in the element display rules.

An element display rule for the map-renderer (this is the map-renderer plus internal compass rule):
	let tilesetting be the associated tileset of map-renderer;
	let scan be 0;
	let row be the win-y of the map-renderer;
	let column be the win-x of the map-renderer;
	let xx be the tile-width of the tilesetting * scaling factor of the current window to the nearest whole number;
	let yy be the tile-height of the tilesetting * scaling factor of the current window to the nearest whole number;
	unless the background tint of the map-renderer is g-placenullcol:
		draw a rectangle (color background tint of the map-renderer) in (the current window) at (column) by (row) with dimensions (map-width of map-renderer * scaling factor of the current window to the nearest whole number) by (map-height of map-renderer * scaling factor of the current window to the nearest whole number);
		#if utilizing Glimmr debugging;
		say "[>console][GLAM]Drawing background rectangle (glulx color-value [background tint of map-renderer]) from ([win-x], [win-y]) to ([win-x + (map-width of map-renderer * scaling factor of the current window to the nearest whole number)], [win-y + (map-height of map-renderer * scaling factor of the current window to the nearest whole number)]) for element [i][map-renderer][/i] in [i][current window][/i].[<]";
		#
[	unless using the no post-processing option:]
	follow the automap post-processing rules;
	repeat with count running from 1 to (map height * map width):
		increase scan by 1;
		if scan > map width:
			increase row by yy;
			now column is the win-x of the map-renderer;
			let scan be 1;
		let V be the map glyph of count;
		if there is a char of V in the translation-table of the tilesetting:
			choose row with a char of V in the translation-table of the tilesetting;
			let the current tile be tile entry;
			drscimage (current tile) in (current window) at (column) by (row) with dimensions (xx) by (yy);
			if 1 is 0[using the automap hyperlinks option]:
				if there is a char of V in the Table of Directional Correspondences:
					choose row with a char of V in the Table of Directional Correspondences;
					set a graphlink in the current window identified as dir entry from column by row to (column + xx) by (row + yy) as "", ignoring redundant links;
				otherwise if linked room-ID of count > 0:
					set a graphlink in the current window identified as map-renderer from column by row to (column + xx) by (row + yy) as linked room-ID of count, ignoring redundant links;
		increase column by xx;
	#if utilizing Glimmr debugging;
	say "[>console][GLAM]Drawing element [i]map-renderer[/i] in [i][current window][/i] at origin ([win-x of map-renderer], [win-y of map-renderer]), dimensions [map width * xx] x [map height * yy] pixels ([map width] x [map height] tiles).[line break][if the automap hyperlinks option is active][GLAM]Hyperlinks set for linked room-ID and directional movement, as provided.[end if][<]";
	#end if.

An automap graphlink rule for a direction (called the way) (this is the direction-selecting graphlink rule):
	let current-direction be indexed text;
	let current-direction be "[way]";
	let current-direction be "[current-direction in upper case]";
	now glulx replacement command is "[current-direction]";
	exit.

Table of Directional Correspondences
Char	Dir
59	north
60	south
61	east
62	west
67	southwest
68	northwest
69	northeast
70	southeast

Use automap hide paths through closed doors.

The display status of UI-query is g-active.

The map-window is a map-display window spawned by the main-window. The position is g-placeabove. The measurement of the map-window is 40.

The map-canvas is a g-canvas. The associated canvas of the map-window is the map-canvas.

The associated canvas of the map-renderer is the map-canvas. The associated canvas of a UI-element is the map-canvas. The associated canvas of a g-element is the map-canvas.

[When play begins:
	follow the opening up the map window rules.]

Understand "[any room]" as going by name. Understand "go to [any room]" as going by name.

Going by name is an action applying to one thing.

Check going by name:
	if the noun is the location, say "You're already in [the location]." instead;
	if the noun is not adjacent and the noun is unvisited, say "That noun did not make sense in this context." instead.

Carry out going by name:
	let aim be the best route from the location to the noun, using doors;
	if aim is not a direction, say "You can't think how to get there from here." instead;
	say "(heading [aim])[command clarification break]";
	try going aim;
	if the location is not the noun, say "You'll have to stop here."

Automap graphlink rule for a room (called the target):
	let target-text be the printed name of the target in upper case;
	now glulx replacement command is "GO TO [target-text]";
	exit.

Chapter - Graphic Windows exempt from GLIMMR canvas rules

A graphics g-window is either canvas-controlled or not canvas-controlled.  A graphics g-window is usually canvas-controlled.

The graphics-window is not canvas-controlled.  The graphic-status-window is not canvas-controlled.

A window-drawing rule for a graphics g-window (called the window) (this is the clever canvas-based drawing rule):
	if the window is g-present and the window is canvas-controlled:
		#if utilizing Glimmr debugging;
		say "[>console][paragraph break][CBD]Following the default canvas-based drawing rule for the window [i][window][/i].[<]";
		#
		carry out the scaling activity with the window;
		carry out the offset calculation activity with the window;
		carry out the window-framing adjustment activity with the window;
		clear the window;
		carry out the drawing the canvas background activity with the window;
		carry out the drawing the active elements activity with the window.

[Procedural rule:  substitute the clever canvas-based drawing rule for the default canvas-based drawing rule.]

Part - Window setup at the start of play

Every turn when the startcount is 5:
	increase the startcount by 1;
	[change the command prompt to "[if the player is partly infected or the player is fully infected][Player_Name](infected)[otherwise][Player_Name][end if] >";]
	open up the side-window;
	[if Graphics Toggle is on and glulx graphics is supported:
		open up the graphics-window;
		Clear_Graphics;]
	if Graphics Toggle is on and glulx graphics is supported:
		open up the graphic-status-window;
		Clear_Graphic_Status;
	open up the status-window;
[	if glulx graphics is supported:
		if Graphics Toggle is off, open up the inventory-window;
	otherwise:]
	open up the inventory-window;
	open the status window;
	if Graphics Toggle is on and glulx graphics is supported:
		follow the opening up the map window rules;
	Generate Player Status;
	[follow the advance time rule;
	say "[bold type]Press any key to continue:[roman type]";
	wait for any key;
	clear the screen;
	try looking;]


]]

Book - Enhanced commands / items

Part - Enhanced basic actions

Chapter - Examining

Examining something is acting fast. Looking is acting fast.

The take visual actions out of world rule is listed before the every turn stage rule in the turn sequence rules. 

This is the take visual actions out of world rule: if acting fast, rule succeeds. 

Chapter - Inventory

Taking inventory is acting fast. 

Chapter - Waiting more

Waiting more is an action applying to one number. 

Understand "wait [a time period]" or "wait for [a time period]" or "wait for a/an [a time period]" or "wait a/an [a time period]" as waiting more. 

Check waiting more:
	if the time understood is greater than one hour, say "You really haven't got that kind of patience." instead. 

Carry out waiting more:
	let the target time be the time of day plus the time understood; 
	decrease the target time by one minute; 
	while the time of day is not the target time: 
		[if Game Over is "yes", break;]
		follow the turn sequence rules;

Report waiting more:
	say "It is now [time of day + 1 minute].".

Part - New commands

Chapter - Cheating

Cheating is an action applying to nothing.  Understand "cheat" as cheating.

Carry out cheating:
	let cheatcount be 0;
	let cheatlist be the list of on-stage not fixed in place not scenery things;
	remove the list of backdrops from cheatlist;
	remove the list of people from cheatlist;
	repeat with cheatitem running through cheatlist:
		if cheatitem is not carried by the player and cheatitem is not part of something and cheatitem is not in the holdingpen and (cheatitem is not enclosed by someone or cheatitem is in a container) and cheatitem is cheatable:
			move cheatitem to the player;
			increase cheatcount by 1;
			say "[A cheatitem] magically appears in your pocket.[line break]";
	if cheatcount is 0, say "Nothing happens.[line break]";

Chapter - Who

Whoing is an action applying to nothing.  Understand "who" as whoing.  Whoing is a visual action.  Whoing is acting fast.

To ScanStatistics:
	let PCount be 0;
	let IPCount be 0;
	let MCount be 0;
	let TFlist be a list of table names;
	repeat with P running through on-stage people:
		if P is not the player:
			add TF table of P to TFlist, if absent;
		if P is a monster:
			increase MCount by 1;
		otherwise:
			increase Pcount by 1;
			if P is infected:
				increase IPcount by 1;
	repeat with TFIndex running through TFlist:
		let TFCount be 0;
		repeat with P running through on-stage people:
			if TF table of P is TFIndex, increase TFCount by 1;
		if TFCount is greater than 0:
			let TFPercent be (TFCount * 100) / the number of on-stage people;
			say "There [if TFCount is 1]is 1 [Shift text in row 18 of TFIndex][otherwise]are [TFCount] [Shift text in row 18 of TFIndex]s[end if] in the game, [TFPercent]% of the total.[line break]";
	say "There [if PCount is 1]is 1 person[otherwise]are [PCount] people[end if] in the game, [IPCount] infected.[line break]";
	say "There [if MCount is 1]is 1 monster[otherwise]are [MCount] monsters[end if] in the game.[line break]";

Carry out whoing:
	say "[bold type]--- Number of people by TF type ---[roman type][line break]";
	ScanStatistics;
	say "[bold type]--- People and their locations ---[roman type][line break]";
	repeat with P running through on-stage people:
		if P is not the player:
			say "[if P is not infected]uninfected [end if][P], located in [location of P][roman type].[line break]";
	say "[bold type]--- Infection items and their locations ---[roman type][line break]";
	repeat with P running through on-stage infectitem things:
		say "[P], located in [location of P][roman type].[line break]";

Chapter - Prog

Progging is an action applying to nothing.  Understand "prog" as progging.  Understand "progress" as progging.

Carry out progging:
	say "[bold type]--- Number of people by TF type ---[roman type][line break]";
	ScanStatistics;
	say "[bold type]--- Infected people and their locations ---[roman type][line break]";
	repeat with P running through on-stage people:
		if P is not the player and P is infected:
			say "[P], located in [location of P][roman type].[line break]";
	say "[bold type]--- Infection items and their locations ---[roman type][line break]";
	repeat with P running through on-stage infectitem things:
		say "[P], located in [location of P][roman type].[line break]";

Part - Enhanced Items
		
Chapter - Rope

A rope is a kind of thing.

Definition: a thing is nonrope if it is not a rope. [The perfect idiocy of this statement notwithstanding, having a shortcut will come in very handy later]

Attachment relates things to each other in groups. The verb to be stuck to implies the attachment relation.

Definition: a thing is tied if the number of things stuck to it is greater than 1.

Definition: a thing is free if it is not tied.

Definition: a rope is free if the number of nonrope things stuck to it is less than 2.

Definition: a thing is hindering if it is stuck to the noun and it is not within the location.

A thing can be round or unevenly shaped. A thing is usually round.  The player is unevenly shaped.  A person is usually unevenly shaped.  A monster is usually unevenly shaped. An infection model is usually round. A sturdy stump is usually unevenly shaped. 

Definition: something is anchored if it is fixed in place or it is scenery or it is part of an anchored thing.

Definition: something is draggable if it is not had by the player and it is not the player and it is not anchored.

The description of a rope is "A rope.".  1 rope is in Apartment 1A.  1 rope is in Ranch Office.  1 rope is in Al's Hunting Emporium.

[Now, we want a rope to be described in terms of the way it is tied, when it's described in a room description.]

Rule for writing a paragraph about a rope (called the coil):
	if the coil is stuck to something which is in a room (called the next room) which is not the location:
		let the way be the best route from the location to the next room, using even locked doors;
		if the way is up or the way is down:
			say "[The coil] runs [way] into [the next room].";
		otherwise:
			say "[The coil] snakes across the floor [way] towards [the next room].";
	otherwise:
		say "There is [a coil] here[if the coil is stuck to a visible nonrope thing], tied to [the list of nonrope visible things which are stuck to the coil][end if]."

understand "wear rope" as fashion styling.
fashion styling is an action applying to nothing.

carry out fashion styling:
	say "You consider the style a moment... nah, not working for you.";
	stop the action;

To decide what room is the home of (item - a thing):
	let next room be an object;
	if item is a door:
		let front cut be the number of moves from the location to the front side of the item;
		let back cut be the number of moves from the location to the back side of the item;
		if front cut is -1, let front cut be 999;
		if back cut is -1, let back cut be 999;
		if front cut is greater than back cut, let next room be the back side of the item;
		otherwise let next room be the front side of the item;
		if the location encloses the item, let next room be the location;
	otherwise:
		let the next room be the location of the item;
	decide on the next room.

Rule for writing a paragraph about a nonrope thing (called the anchor) which is stuck to a rope (called the coil):
	if the coil is in an adjacent room:
		let the next room be the home of the coil;
		let the way be the best route from the location to the next room, using even locked doors;
		if the way is up or the way is down:
			say "[The coil] runs [way] from [the anchor] into [the next room].";
		otherwise:
			say "From [the anchor] runs [a coil], heading off toward [way].";
	otherwise:
		if the coil is stuck to something which is not visible,
			say "[The coil] is tied to [the anchor][if the coil is stuck to something in an adjacent room (called the next room)], and from there runs off towards [the next room][end if]."

[We need a way to account for it when it's being carried, as well.]

After printing the name of a rope (called the tied object) while taking inventory:
	if something nonrope is stuck to the tied object:
		say " (attached to [the list of nonrope things which are stuck to the tied object])";
	otherwise:
		say " (with both ends free)".

[And, indeed, whenever the player examines a rope, we should see what's connected.]

Instead of examining a rope (called the strand) when something is stuck to the strand:
	say "[The noun] is tied to [the list of secondary things which are stuck to the noun]."

[Similarly, any time the player looks at something tied to a rope.]

After examining the player when the player is stuck to something which is not the player:
	say "You're currently lashed to [the list of secondary things stuck to the noun]."

After examining something which is stuck to something secondary:
	say "[The noun] is currently attached to [the list of secondary things stuck to the noun]."

[We also need to make sure that the rope can be interacted with properly even when it's partly in the next room.]

After deciding the scope of the player:
	if something stuck to a rope (called the coil) is in the location, place the coil in scope.

A reaching inside rule:
	if the noun is a rope:
		let the anchor be a random visible thing stuck to the noun;
		if the anchor is touchable, allow access.

[Now tying:]

Before tying something to a rope:
	if the noun is stuck to the second noun, say "[The noun] and [the second noun] are already tied together." instead;
	if the second noun is not free, say "[The second noun] has no ends free." instead;
	if the noun is round and the noun is not fixed in place, say "You can't realistically tie anything to [the noun]." instead.

Instead of tying a rope to something:
	try tying the second noun to the noun.

Instead of tying a player to a rope:
	say "This is no time to indulge in your BDSM fantasies!";
	
does the player mean tying an infection model to a rope: It is very unlikely.
	
Instead of tying something to a rope:
	now the noun is stuck to the second noun;
	say "You loop [the second noun] around [the noun] and knot firmly."


Instead of tying something to a nonrope tied thing:
	let the coil be a random rope stuck to the second noun;
	try tying the noun to the coil.

Instead of tying a nonrope tied thing to something:
	let the coil be a random rope stuck to the noun;
	try tying the second noun to the coil.

Instead of tying a free nonrope thing to a free nonrope thing:
	if the player carries a free rope (called the coil):
		try tying the noun to the coil;
		if the noun is stuck to the coil and the coil is free:
			try tying the second noun to the coil;
	otherwise:
		say "You lack the requisite spare rope."

Understand "untie [something] from [something]" as untying it from. Understand "untie [something]" as untying  it from.

Rule for supplying a missing second noun while untying something from:
	if the number of secondary things stuck to the noun is 0, say "[The noun] is already entirely free." instead;
	if the noun is a rope:
		if the number of touchable nonrope things which are stuck to the noun > 1:
			say "You'll have to say which thing you want to untie [the noun] from.";
			rule fails;
		otherwise:
			if the number of touchable nonrope things stuck to the noun is 0, say "You can't reach [the random nonrope thing stuck to the noun]." instead;
			let the tied object be a random touchable nonrope thing which is stuck to the noun;
			say "(from [the tied object])[line break]";
			now the second noun is the tied object;
	otherwise:
		if the noun is stuck to a rope (called the tied object):
			say "(from [the tied object])[line break]";
			now the second noun is the tied object.

Untying it from is an action applying to two things.

Before untying a rope from something: try untying the second noun from the noun instead.

Before untying something from a rope:
	if the second noun is not held:
		say "(first picking up [the second noun])[line break]";
		try taking the second noun.

Check untying it from:
	unless the noun is stuck to the second noun or the second noun is stuck to the noun,
		say "[The noun] and [the second noun] are already not tied together." instead.

Carry out untying it from:
	now the noun is not stuck to the second noun.

Report untying it from:
	say "Untied."


[Another part of the fun of a rope is that you can drag things from another room:]

After reading a command: now every thing is unmentioned.

Before pulling something anchored: say "[The noun] is firmly anchored." instead.

Instead of pulling something tied:
	if the noun is unmentioned:
		say "The impulse is transmitted to [the list of pullable things stuck to the noun].";
		repeat with item running through pullable things stuck to the noun:
			say "[item]: [run paragraph on]";
			try pulling the item;
		if the noun is a rope and the noun is not within the location:
			if the number of nonrope hindering things is 0, move the noun to the location;
	otherwise:
		continue the action.

Before pulling something which is not visible:
	if the noun is anchored:
		say "[The noun] resists, for whatever reason." instead;
	otherwise:
		let space be the holder of the noun;
		let way be the best route from the space to the location, using even locked doors;
		if the way is a direction:
			move the noun to the location;
			say "[The noun] [if the way is up]rises[otherwise]slides[end if] into view." instead;
		otherwise:
			move the noun to the location;
			say "[The noun] slides into view." instead.

Definition: a thing is secondary if it is not the noun.  Definition: a thing is pullable if it is not the noun and it is not the player.

[A player who is tied to things should also have some restrictions on his ability to move.]

Before going a direction (called the way) when the player has something (called the link) which is stuck to something anchored (called the anchor):
	let the next room be the home of the anchor;
	if the next room is not a room, continue the action;
	if the next room is the location:
		if the link is stuck to at least two anchored things,
			say "You can't go far while you're carrying [the link] tied to [the list of anchored things stuck to the link]." instead;
	otherwise:
		let the safe way be the best route from the location to the next room, using even locked doors;
		if the safe way is the way:
			if the player is not stuck to the anchor, say "(coiling up your rope again as you go...)";
		otherwise:
			if the safe way is a direction:
				let Dtmp be the best route from the location to the next room, using even locked doors;
				say "While you have [the link] you can't really head any direction but [Dtmp]." instead;
			otherwise:
				say "You're tied up here." instead.

Before going a direction (called the way) when the player is stuck to something anchored (called the anchor):
	let the next room be the home of the anchor;
	if the next room is not a room, continue the action;
	if the next room is the location:
		if the player is stuck to at least two anchored things,
			say "You can't go far while you're tied to [the list of anchored things stuck to the player]." instead;
	otherwise:
		if the best route from the location to the next room, using even locked doors is the way:
			say "(coiling up your rope again as you go...)";
		otherwise:
			let Dtmp be the best route from the location to the next room, using even locked doors;
			say "Your attachments prevent you going any way but [Dtmp]." instead.

[Sometimes, if the player is tied to a movable object, the moved object will move with him.]

After going somewhere when the player has something (called the link) which is stuck to something draggable:
	if the player is not stuck to the link:
		say "You drag along behind you [the list of draggable things which are stuck to the link].";
		now every draggable thing which is stuck to the link is in the location;
	continue the action.

Report going somewhere when the player is stuck to something draggable:
	say "You drag along behind you [the list of draggable things which are stuck to the player].";
	now every draggable thing which is stuck to the player is in the location.
	
	
Include Dragon Babe by Nuku Valente.
Include Fox Taur by Nuku Valente.

