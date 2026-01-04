Onna Uma by Sundered Dragon begins here.


Section 1 - Creature Responses

to say losetoOnna Uma:
	say "Error 404: yiff not found.";

to say beattheOnna Uma:
	say "Error 404: yiff not found.";

to say Onna Umadesc:
	say "Error 404: yiff not found.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Onna Uma"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Onna Uma" to infections of FurryList;
	add "Onna Uma" to infections of hybridList;
	add "Onna Uma" to infections of BipedalList;
	add "Onna Uma" to infections of FemaleList;
	add "Onna Uma" to infections of HermList;
	add "Onna Uma" to infections of SheathedCockList;
	add "Onna Uma" to infections of BluntCockList;
	add "Onna Uma" to infections of TailList;
	add "Onna Uma" to infections of TailWeaponList;
	add "Onna Uma" to infections of EquineList;
	now Name entry is "Onna Uma";
	now enemy title entry is "Error 404 yiff not found."; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "Error 404 yiff not found.";
	now defeated entry is "[beattheOnna Uma]";
	now victory entry is "[losetoOnna Uma]";
	now desc entry is "[Onna Umadesc]";
	now face entry is "deceptively human, your amethyst eyes and cocksure expression gives you the air of a constant trickster, or a sly, temperamental devil. Lustrous bangs of opalescent silver hair laced with the barest hints of lavender along its edges trails down past your waist. Your silken hair does nothing to hide the prominent pair of horsey ears perched near your forehead. Ever alert, your ears are constantly moving, listening for the sounds of another challenger foolish enough to think they can chase you down"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "strikingly feminine figure is graced with noticeably toned legs, and a shapely midriff that would put any model or athlete to shame. You often carry yourself with a stately strut that neatly shows off your peerless lithe physique to any and all comers. Few though are aware of the pounding furnace in your breast, keeping your body on edge, itching for the chance to prove yourself the fastest around";
	now skin entry is "pristine alabaster hide glitters like spun platinum in [if daytimer is day]the sunlight[else if daytimer is night]the starlight[end if] leaving onlookers in awe of your regal"; [Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a lengthy horse tail bobbing down well past your knees, resplendent and radiant, its hair gleams like a polished mother-of-pearl in the light, and often flicks in response to your moods. With some effort, you can suppress such outbursts, though the odd well-timed flick of your tail helps to drive home a point when needed. Or, punish naughty, undeserving curs who dare lay hands on you without permission.";
	now cock entry is "cute, blunt mare cock, festooned with a tasteful mix of rosy peach and ebony flesh, your [cock size desc of Player] spire is lovingly coddled in a gossamer sheath of cloudy white fur. Rather inviting to the touch, you often find yourself stroking its lustrous length as you prowl the city, looking for a worthy fling";
	now face change entry is "soaring heat like you were caught in the middle of a roaring Okinawa summer courses through your visage. Worried, you hurriedly touch a hand your cheeks, as flesh almost seems to melt like wax pouring through a mold, as your bones and muscles drift an all too familiar shape. Far from painful, the strange sensation of your face flowing beneath your fingertip into a more feminine human form elicits a gentle whinny from your lips. A sudden deafness quiets the world around you, though only for the briefest of instances as your ears drift up to your forehead while your hair turns a striking silver interlaced with lavender hues and your spooling locks spill down to your knees. Curious, you brush your fingers through their now equine lengths with an approving horsey chuff as your hearing returns, sharper and crisper than ever"; [Your face feels funny as [face change entry]." ]
	now body change entry is "your heart pounds wildly within your breast as your temperature soars, sweat and steam pour from you in a billowing sheen, as any lingering fat or extraneous tissue seems to burn away in an odorless cloud. In its place, raw, dense muscle surges across your changing body as your figure flows into an outwardly human and fetchingly feminine build. Inhumanly lithe with tastefully carved legs and abs, your body could easily pass for an athletic baseliner. Yet even as the changes begin to subside and the steam billowing off you dissipates, you can still feel your heart thrum and legs twitch as the urge to run nips at the back of your mind. The sensation is not born of fright or weakness, but a primal pride to show your lessers what true speed is"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "a near unbearable pall of itchiness surges through you, neighing in disgust, you begin raking your nails along your [skinname of player] hide, leaving long ebony cracks in their wake. Too enraged and irate to care about such frivolous things, your scratching only intensifies as your former skin flakes off, revealing a supple layer of pure alabaster skin beneath. Strangely relieving, you tear into yourself with reckless abandon as your former flesh hardens, then cracks off like glassy ash, leaving you with a clean, resplendent hide befitting of a champion in the making";
	now ass change entry is "you find yourself caught by sudden urge to sneeze, and try as you might to suppress it, you rear back your head and bellow out an ear-ringing *achoo*, that shakes your being from head-to-toe. Stumbling backwards, your balance seems shift as an unearthly pressure along the tip of your tailbone as your bone length and regal, metallic-white pony tail shoots out behind you in a plume of silver hair entwined with muted hints of creamy lavender. Perplexed, you give the thing an inquisitive shake, and find, much to your delight, it responds rather well to your commands. Though it will likely take some getting used to, a small mote pride still ripples through you at the sight of it glittering in the light as you cheerfully cut the air behind you with a satisfying swish";
	now cock change entry is "it recedes into you. Alarmed, you hurriedly reach for your tool, only to purr in delight as your shrinking rod is enveloped in a toasty layer of pure pearlescent fur. Unbidden, your wrists move, seemingly under their own power, gently stoking the shifting length as your cock changes beneath your tender touch. Panting, your eyes soon widen in delight as your meaty sheath is pulled devilishly taut by the lush emergence of your rosy, blunt, equine rod. While an audible dribble of fresh salty pre beads from its gorgeous tip, your dick swells to full mast in your elated clutches. Giving it a loving shake, your mind drifts to some of the cute mares and studly stallions you've encountered throughout the city. Perhaps, some side deviant voice tempts, you should pay them a visit after, as you lovingly trace your fingers about the proud bestial tip of your tool";
	now str entry is 18;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 10;
	now int entry is 20;
	now cha entry is 15;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 1; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 1; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 1; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 24; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 4; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 24;
	now Cunt Tightness entry is 24;
	now SeductionImmune entry is false;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "Onna Uma Milk";
	now CumItem entry is "Onna Uma Cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is ""; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]athletic[or]mature[or]girly[or]tone[or]regal[at random]";
	now type entry is "liminal"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is true;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Onna Uma ends here.