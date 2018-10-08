Version 1 of The Brushwood Café by Song begins here.
[not resolution tagged as it isn't in the game yet]
"Adds The Brushwood Café to Flexible Survival, a rustic coffee shop run by a group of Shiba Inus."


Section 1 - Setup

Table of GameEventIDs (continued)
Object	Name
Strange Café	"Strange Café"

Strange Café is a situation.
The sarea of Strange Café is "Outside".

BrushwoodStatus is a number that varies.[@Tag:NotSaved] BrushwoodStatus is usually 0.

[ BrushwoodStatus                                               ]
[ Determines current amount of interaction with the coffee shop ]
[ 0 = Never visited                                             ]
[ 1 = Visited once at night                                     ]
[ 2 = Visited once during day, didn't enter                     ]
[ 3 = Visited during day, entered but declined payment          ]
[ 4 = Visited during day, entered and paid                      ]


Determines interactions with successive visits]


Section 2 - Event and Initial Interactions

Instead of resolving Strange Café:
	say "     While exploring a more intact section of the city, you come across a small coffee shop that catches your attention. Cursive lettering on the façade proudly proclaims it to be 'The Brushwood Café'. The brick walls and slate gray awnings lend a rather rustic feel to the building that stands out against the more minimalist display windows that flank it on either side. Overall, it carries the atmosphere of a homely old town establishment, suggesting reprieve from the madness of the city.";
	say "     Drawn closer, you notice a stylized icon on one of the windows. It's a side profile of an anthro canine woman wearing a crown, her muzzle parted in a happy smile. Below, someone has decided to mar the logo with graffiti, adding a generous pair of breasts. Whether that was the work of a hoodlum or an intentional decision by the store's new proprietor remains to be seen.";
	if daytimer is day:
		say "     Looking through the polished glass, you can see that the store is being manned by several female Shiba Inus who are clothed in nothing more than chest-high aprons. The garment barely obscures their cleavage, and some of them wear it a little lower, leaving their furred breasts exposed without a hint of shame. Most of the dogs are busy making coffee or conversing with patrons, while others simply talk among themselves to pass the time. From where you stand, they appear to be friendly, and one of them even gives you a polite little wave when she sees you looking in.";
		LineBreak;
		say "     [bold type]Do you wish to enter the café?[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes. You could use a break from everything. Sit down, relax, and maybe even try a cup of coffee.";
		say "     ([link]N[as]n[end link]) - No. Something about the café seems sketchy. Note its location for later and leave.";
		if player consents:
			say "[FirstTimeAtBrushwoodCafé]";
		else:
			say "     Not willing to take any unnecessary risks, you step away the store and [if journal is owned]write down the address in your journal[else]make a mental note of the address[end if]. Should you ever feel the need, you can always return to this place and see what all the commotion is about.";
	else:
		say "     Looking through the polished glass, you can only see the dark silhouettes of furniture and simple décor. You'd peg the place as abandoned if not for the sign on the front door that lists the hours of operation as [']morning to evening[']. Giving the handle a turn regardless, you find that it doesn't budge at all. Whoever runs the place had the foresight to employ a deadbolt, a barricade, or both to curtail attempts at breaking and entering. You [if journal is owned]write down the café's address in your journal[else]make a mental note of the café's address[end if] and remind yourself to return here later when it's open.";
	now Strange Café is resolved;
	now The Brushwood Café is known;

Returning
say "     Returning to the small café you found in a more intact section of the city, you walk up to the window and take a look inside. As before, various mutants and survivors are being serviced by an all-Shiba crew of baristas, the busty canine women going about their business with a refreshing air of professionalism - save for the casual toplessness of some of their staff. You don't see any overt threats from where you stand, and you doubt that any of the scavenging ferals would try to cause trouble while you have safety in numbers.";
say "     Do you wish to enter the café?";

Yes - You could use a break from everything. Sit down, relax, and maybe even try a cup of coffee.
No - Something about the café makes you uneasy. Stay away for now.

No
say "     Still uncertain about the intent of the café's proprietor, you decide to err on the side of caution and step away from the store. You can always come back later if you are desperate for company or get a craving for caffeine.";

YES, OH GOD YES!!!!
say "     You open the front door to the tune of a small bell announcing your entrance. Almost immediately you're struck by the aroma of coffee beans, milk, and various spices, as well as a subtle undercurrent of canine arousal. One of the bare-breasted baristas welcomes you with a friendly smile. 'Welcome to The Brushwood Café, home of the best coffee in town. My name is Jenny, and I'll be your server today,' she says. Her tone is warm and tactful, and her tail wags behind her as she speaks. 'We accept payment in the form of food and water. However, our policy strictly prohibits any contaminated goods. We simply do not have the equipment on hand to purify infectious items at this time.'";
say "     The canine woman looks aside at your pack. 'Just for your information, we've been having some problems with customers leaving without paying recently. I'm going to need to see that you can foot the bill before seating you.' The Shiba girl stares at you expectantly while she waits for a response.";
say "     Offer to pay?";

No
say "     You decline to pay and mention that you might drop by later. The Shiba woman nods respectfully. 'I'm sorry about the cost of our patronage discouraging you. We try to be as inclusive as possible with our pricing, and we look forward to you returning and enjoying our company.' Her phrasing sounds like a passage torn directly from the playbook of customer service, feeling completely out of place in this post-apocalyptic environment. The dog girl waves after you as you leave the store and step back into the vacant city streets.";

Yes
if the player has food, water bottles, chips, or soda:
	payment-options;
else:
	empty-handed;

empty-handed:
	say "     Uncertain if you have anything that fits the bill on your person, you set your pack down and quickly rifle through it. You unfortunately come up empty-handed and apologize to the barista for wasting her time. 'Don't worry about it. You're free to drop by whenever you find something to trade,' she assures you. Nodding in response, you shoulder your pack again and say your goodbyes, then step back out onto the street.";
	WaitLineBreak;

payment-options:
	What do you offer her?
	if player has food:
		1) food;
	if player has water:
		2) water;
	if player has chips:
		3) chips;
	if player has soda:
		4) soda;

Choosing food:
	say "     You set down your pack and quickly rifle through it, finding that you do have some food. The barista nods and smiles when you show her you can pay.";

Choosing water bottle:
	say "     You set down your pack and quickly rifle through it, finding that you do have a bottle of pure water. The barista nods and smiles when you show her you can pay.";

Choosing chips:
	say "     You set down your pack and quickly rifle through it, finding that you do have a bag of chips. The barista nods and smiles when you show her you can pay.";

Choosing soda:
	say "     You set down your pack and quickly rifle through it, finding that you do have a bag of chips. The barista nods and smiles when you show her you can pay.";

first-time-seating:
	say "     As you're seated at one of the open tables, you find your gaze wandering over the well-decorated interior. The style sits somewhere between the cozy comfort of a greasy spoon and the more modernized simplicity of a new age restaurant, making the best use they could out of salvaged materials. The menu at your table has been fitted into a simple plastic sleeve and features a selection of handwritten options. Judging by the elegant, serif-dense penmanship on display, its creator must have some experience with calligraphy.";
	WaitLineBreak;
	say "     After looking over what's available, you're approached by the same barista who welcomed you on arrival. She whips out a small notepad from a pocket in her apron and puts a ballpoint pen to paper. 'What can I get for you today, hon?'";

Multi-Prompt
1) Instant Black
2) Espresso
3) Latte

Any choice
say "     'Mmh-hmn. Would you like that for here or to go?'";

Prompt
1) Here
2) To go

Here
	if instant black:
		say "";
	if espresso:
		say "";
	if latte:
		say "";

To go
say "     You take the coffee to go.";


Section 3 - Subsequent Visits

say "placeholder";


The Brushwood Café ends here.
