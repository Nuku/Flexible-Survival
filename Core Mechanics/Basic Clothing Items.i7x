Version 1 of Basic Clothing Items by Core Mechanics begins here.
[ Written by Wahn ]
[ Version 1 - New File ]

"Adds new equipment for the player."

PlayerClothingGenderAppearance is a number that varies.[@Tag:Notsaved]
PlayerClothingSlutty is a number that varies.[@Tag:Notsaved]
PlayerClothingStyle is a number that varies.[@Tag:Notsaved]
PlayerClothingSport is a number that varies.[@Tag:Notsaved]
PlayerClothingBDSM is a number that varies.[@Tag:Notsaved]

to CalculateEquipmentValues:
	[reset all of these values]
	now PlayerClothingGenderAppearance is 0;
	now PlayerClothingSlutty is 0;
	now PlayerClothingSport is 0;
	now PlayerClothingBDSM is 0;
	[now we go through all equipped equipment to calculate the values]
	repeat with z running through equipped equipment:
		increase PlayerClothingGenderAppearance by GenderAppearance of z;
		if "Slutty" is listed in traits of z:
			increase PlayerClothingSlutty by 1;
		if "Stylish" is listed in traits of z:
			increase PlayerClothingStyle by 1;
		if "Sporty" is listed in traits of z:
			increase PlayerClothingSport by 1;
		if "BDSM" is listed in traits of z:
			increase PlayerClothingBDSM by 1;

[ Section 1 - Waist Items ]

When Play begins:
	[testing drop of all items in the library]
	[
	add { "ripped jeans", "black jeans", "sturdy jeans", "skinny jeans", "hot pants", "gray pants", "camo pants", "jogging pants", "bermuda shorts", "black miniskirt", "pencil skirt", "floral skirt" } to invent of Grey Abbey Library;
	add { "centaur cum", "centaur cum", "centaur cum", "centaur cum", "centaur cum", "behemoth horn", "behemoth horn", "behemoth horn", "behemoth horn", "behemoth horn" } to invent of Grey Abbey Library;
	]
	[not sure why setting the plural boolean does not work for the pants, but this should (for now) fix that after the fact, at the same start]
	now plural of ripped jeans is true;
	now plural of black jeans is true;
	now plural of sturdy jeans is true;
	now plural of skinny jeans is true;
	now plural of hot pants is true;
	now plural of gray pants is true;
	now plural of camo pants is true;
	now plural of jogging pants is true;
	now plural of bermuda shorts is true;

Table of Game Objects (continued)
name	desc	weight	object
"ripped jeans"	"A pair of jeans with some rips and slashes in them. Before all of this started, their look might have been a fashion statement, but these days one usually ends up with ripped clothing after a fight."	1	ripped jeans
"black jeans"	"A pair of solid black jeans. They're well-worn and a little washed out in places, but quite comfortable even in the most dire situations."	1	black jeans
"sturdy jeans"	"A pair of sturdy jeans in the typical blue color of that type of pants. They're well-worn and a little washed out in places, but quite comfortable even in the most dire situations."	1	sturdy jeans
"skinny jeans"	"A pair of jeans made from thin and fairly flexible material. They look like they'd be snug just about everywhere on any person that can wiggle their way into such a tight garment."	1	skinny jeans
"hot pants"	"A pair of red hot pants, barely long enough to cover someone's thighs even to about a third."	1	hot pants
"gray pants"	"A pair of gray cloth pants, most likely belonging to a business suit."	1	gray pants
"camo pants"	"A pair of camo pants in various shades of green. Clearly, these belong to the uniform of a soldier of the US army."	1	camo pants
"jogging pants"	"A pair of jogging pants made from fairly soft and stretchy fabric."	1	jogging pants
"bermuda shorts"	"A pair of wide shorts covered in patterns of leaves and bright flowers. They look fitting to be worn by a tourist or vacationer."	1	bermuda shorts
"black miniskirt"	"A simple black miniskirt, barely long enough to cover someone's thighs even halfway."	1	black miniskirt
"pencil skirt"	"A light blue pencil skirt, long enough to cover an average person's whole thighs, down to the knees."	1	pencil skirt
"floral skirt"	"A full length skirt, covered with a floral print that depicts cherry blossoms."	1	floral skirt

ripped jeans is a grab object.
ripped jeans is equipment.
It is not temporary.
Plural of ripped jeans is true.
Taur-compatible of ripped jeans is false.
GenderAppearance of ripped jeans is 0.
Size of ripped jeans is 3.
AC of ripped jeans is 0.
Effectiveness of ripped jeans is 0.
Placement of ripped jeans is "waist".
Descmod of ripped jeans is "A pair of ripped and torn jeans cover your hips and legs. Even though they have holes, wearing them gives you a somewhat protected feeling.".
Slot of ripped jeans is "legs".
Scent of ripped jeans is "The jeans have the typical faintly musky scent of pants that have been worn a few days. But surely they're clean enough to wear another week or two at least...".

black jeans is a grab object.
black jeans is equipment.
It is not temporary.
Plural of black jeans is true.
Taur-compatible of black jeans is false.
GenderAppearance of black jeans is 0.
Size of black jeans is 3.
AC of black jeans is 0.
Effectiveness of black jeans is 0.
Placement of black jeans is "waist".
Descmod of black jeans is "A pair of solid black jeans cover your hips and legs. The sturdy fabric gives you a well-protected feeling.".
Slot of black jeans is "legs".
Scent of black jeans is "The jeans have the typical faintly musky scent of pants that have been worn a few days. But surely they're clean enough to wear another week or two at least...".

sturdy jeans is a grab object.
sturdy jeans is equipment.
It is not temporary.
Plural of sturdy jeans is true.
Taur-compatible of sturdy jeans is false.
GenderAppearance of sturdy jeans is 0.
Size of sturdy jeans is 3.
AC of sturdy jeans is 0.
Effectiveness of sturdy jeans is 0.
Placement of sturdy jeans is "waist".
Descmod of sturdy jeans is "A pair of dark blue jeans cover your hips and legs. The sturdy fabric gives you a well-protected feeling.".
Slot of sturdy jeans is "legs".
Scent of sturdy jeans is "The jeans have the typical faintly musky scent of pants that have been worn a few days. But surely they're clean enough to wear another week or two at least...".

skinny jeans is a grab object.
skinny jeans is equipment.
It is not temporary.
Plural of skinny jeans is true.
Taur-compatible of skinny jeans is false.
GenderAppearance of skinny jeans is 0.
Size of skinny jeans is 3.
AC of skinny jeans is 0.
Effectiveness of skinny jeans is 0.
Placement of skinny jeans is "waist".
Descmod of skinny jeans is "A pair of dark blue jeans cover your hips and legs. They look almost painted onto you, with stretchy fabric that follows every last curve of your legs and hips.".
Slot of skinny jeans is "legs".
Scent of skinny jeans is "The jeans have the typical faintly musky scent of pants that have been worn a few days. But surely they're clean enough to wear another week or two at least...".

hot pants is a grab object.
hot pants is equipment.
It is not temporary.
Plural of hot pants is true.
Taur-compatible of hot pants is false.
GenderAppearance of hot pants is -1.
Size of hot pants is 3.
AC of hot pants is 0.
Effectiveness of hot pants is 0.
Placement of hot pants is "waist".
Descmod of hot pants is "A pair of red hot pants cover your hips and legs. They are really skimpy, barely covering a third of your thighs. If they were any tighter, you could call them underwear.".
Slot of hot pants is "legs".
Scent of hot pants is "The pants have the typical faintly musky scent of clothing that has been worn a few days. But surely they're clean enough to wear another week or two at least...".

gray pants is a grab object.
gray pants is equipment.
It is not temporary.
Plural of gray pants is true.
Taur-compatible of gray pants is false.
GenderAppearance of gray pants is 0.
Size of gray pants is 3.
AC of gray pants is 0.
Effectiveness of gray pants is 0.
Placement of gray pants is "waist".
Descmod of gray pants is "A pair of gray pants cover your hips and legs. They are fairly light and soft, but you worry how long they'll last given the regular fights you can get into.".
Slot of gray pants is "legs".
Scent of gray pants is "The pants have the typical faintly musky scent of clothing that has been worn a few days. But surely they're clean enough to wear another week or two at least...".

camo pants is a grab object.
camo pants is equipment.
It is not temporary.
Plural of camo pants is true.
Taur-compatible of camo pants is false.
GenderAppearance of camo pants is 1.
Size of camo pants is 3.
AC of camo pants is 0.
Effectiveness of camo pants is 0.
Placement of camo pants is "waist".
Descmod of camo pants is "A pair of camo pants covers your hips and legs. The sturdy fabric gives you a well-protected feeling.".
Slot of camo pants is "legs".
Scent of camo pants is "The pants have the typical faintly musky scent of clothing that has been worn a few days. But surely they're clean enough to wear another week or two at least...".

jogging pants is a grab object.
jogging pants is equipment.
It is not temporary.
Plural of jogging pants is true.
Taur-compatible of jogging pants is false.
GenderAppearance of jogging pants is 0.
Size of jogging pants is 3.
AC of jogging pants is 0.
Effectiveness of jogging pants is 0.
Placement of jogging pants is "waist".
Descmod of jogging pants is "A pair of jogging pants cover your hips and legs. They are fairly light and soft, but you worry how long they'll last given the regular fights you can get into.".
Slot of jogging pants is "legs".
Scent of jogging pants is "The pants have the typical faintly musky scent of clothing that has been worn a few days. But surely they're clean enough to wear another week or two at least...".

bermuda shorts is a grab object.
bermuda shorts is equipment.
It is not temporary.
Plural of bermuda shorts is true.
Taur-compatible of bermuda shorts is false.
GenderAppearance of bermuda shorts is 0.
Size of bermuda shorts is 3.
AC of bermuda shorts is 0.
Effectiveness of bermuda shorts is 0.
Placement of bermuda shorts is "waist".
Descmod of bermuda shorts is "A pair of colorful bermuda shorts cover your hips and legs. With their bright and colorful patterns, they'll surely draw attention to you.".
Slot of bermuda shorts is "waist".
Scent of bermuda shorts is "The shorts have the typical faintly musky scent of clothing that has been worn a few days. But surely they're clean enough to wear another week or two at least...".

black miniskirt is a grab object.
black miniskirt is equipment.
It is not temporary.
Plural of black miniskirt is false.
Taur-compatible of black miniskirt is false.
GenderAppearance of black miniskirt is -1.
The Traits of black miniskirt is {"Slutty","Stylish"}.
Size of black miniskirt is 3.
AC of black miniskirt is 0.
Effectiveness of black miniskirt is 0.
Placement of black miniskirt is "waist".
Descmod of black miniskirt is "A simple black miniskirt covers your hips and legs. It is really quite easy to accidentally (or on purpose) expose yourself while wearing it.".
Slot of black miniskirt is "waist".
Scent of black miniskirt is "The skirt has the typical faintly musky scent of clothing that has been worn a few days. But surelyit is clean enough to wear another week or two at least...".

pencil skirt is a grab object.
pencil skirt is equipment.
It is not temporary.
Plural of pencil skirt is false.
Taur-compatible of pencil skirt is false.
GenderAppearance of pencil skirt is -1.
Size of pencil skirt is 3.
AC of pencil skirt is 0.
Effectiveness of pencil skirt is 0.
Placement of pencil skirt is "waist".
Descmod of pencil skirt is "A dark blue pencil skirt covers your hips and legs. It is long and narrow, giving you a slim look.".
Slot of pencil skirt is "waist".
Scent of pencil skirt is "The skirt has the typical faintly musky scent of clothing that has been worn a few days. But surely it is clean enough to wear another week or two at least...".

floral skirt is a grab object.
floral skirt is equipment.
It is not temporary.
Plural of floral skirt is false.
Taur-compatible of floral skirt is false.
GenderAppearance of floral skirt is -1.
Size of floral skirt is 3.
AC of floral skirt is 0.
Effectiveness of floral skirt is 0.
Placement of floral skirt is "waist".
Descmod of floral skirt is "A floor length skirt covers your hips and legs. It is covered in a floral pattern that depics cherry blossoms.".
Slot of floral skirt is "waist".
Scent of floral skirt is "The skirt has the typical faintly musky scent of clothing that has been worn a few days. But surely it is clean enough to wear another week or two at least...".


[ Section 2 - Chest Items ]

[
When Play begins:
	add { "black t-shirt", "white t-shirt", "maroon pullover", "zephyr shirt", "camo shirt", "sleeveless shirt", "mesh shirt" } to invent of Grey Abbey Library;
]

Table of Game Objects (continued)
name	desc	weight	object
"black t-shirt"	"A simple black t-shirt, without any pattern or frills to it."	1	black t-shirt
"white t-shirt"	"A simple white t-shirt, without any pattern or frills to it"	1	white t-shirt
"maroon pullover"	"A fairly large maroon pullover. It is perfect to keep its wearer warm."	1	maroon pullover
"zephyr shirt"	"A simple dark gray t-shirt, with a light blue stylized Z covering the middle of its chest. Depending on whom you ask, it either makes the wearer look like a superhero, or a corporate drone of Zephyr."	1	zephyr shirt
"camo shirt"	"A t-shirt with camo patterns in various shades of green. Clearly, it belongs to the uniform of a soldier of the US army."	1	camo shirt
"sleeveless shirt"	"A white sleeveless shirt, made from thin and stretchy fabric. It looks suitable to be working out in it."	1	sleeveless shirt
"mesh shirt"	"A tight shirt made of some kind of black, sheer mesh. You can literally see right through it."	1	mesh shirt

black t-shirt is a grab object.
black t-shirt is equipment.
It is not temporary.
Plural of black t-shirt is false.
Taur-compatible of black t-shirt is true.
Size of black t-shirt is 3.
AC of black t-shirt is 0.
Effectiveness of black t-shirt is 0.
Placement of black t-shirt is "chest".
Descmod of black t-shirt is "Your upper body is covered by a black t-shirt.".
Slot of black t-shirt is "chest".
Scent of black t-shirt is "The fabric has the typical faintly musky scent clothing that has been worn a few days. Still, it's good enough for a few more, at least. During the nanite apocalypse, one can give some leeway in terms of body hygiene - survival comes first...".

white t-shirt is a grab object.
white t-shirt is equipment.
It is not temporary.
Plural of white t-shirt is false.
Taur-compatible of white t-shirt is true.
Size of white t-shirt is 3.
AC of white t-shirt is 0.
Effectiveness of white t-shirt is 0.
Placement of white t-shirt is "chest".
Descmod of white t-shirt is "Your upper body is covered by a white t-shirt.".
Slot of white t-shirt is "chest".
Scent of white t-shirt is "The fabric has the typical faintly musky scent clothing that has been worn a few days. Still, it's good enough for a few more, at least. During the nanite apocalypse, one can give some leeway in terms of body hygiene - survival comes first...".

maroon pullover is a grab object.
maroon pullover is equipment.
It is not temporary.
Plural of maroon pullover is false.
Taur-compatible of maroon pullover is true.
Size of maroon pullover is 3.
AC of maroon pullover is 0.
Effectiveness of maroon pullover is 0.
Placement of maroon pullover is "chest".
Descmod of maroon pullover is "Your upper body is covered by a maroon pullover.".
Slot of maroon pullover is "chest".
Scent of maroon pullover is "The fabric has the typical faintly musky scent clothing that has been worn a few days. Still, it's good enough for a few more, at least. During the nanite apocalypse, one can give some leeway in terms of body hygiene - survival comes first...".

zephyr shirt is a grab object.
zephyr shirt is equipment.
It is not temporary.
Plural of zephyr shirt is false.
Taur-compatible of zephyr shirt is true.
Size of zephyr shirt is 3.
AC of zephyr shirt is 0.
Effectiveness of zephyr shirt is 0.
Placement of zephyr shirt is "chest".
Descmod of zephyr shirt is "Your upper body is covered by a dark gray t-shirt with the Zephyr logo.".
Slot of zephyr shirt is "chest".
Scent of zephyr shirt is "The fabric has the typical faintly musky scent clothing that has been worn a few days. Still, it's good enough for a few more, at least. During the nanite apocalypse, one can give some leeway in terms of body hygiene - survival comes first...".

camo shirt is a grab object.
camo shirt is equipment.
It is not temporary.
Plural of camo shirt is false.
Taur-compatible of camo shirt is true.
Size of camo shirt is 3.
AC of camo shirt is 0.
Effectiveness of camo shirt is 0.
Placement of camo shirt is "chest".
Descmod of camo shirt is "Your upper body is covered by a camo pattern t-shirt in shades of green.".
Slot of camo shirt is "chest".
Scent of camo shirt is "The fabric has the typical faintly musky scent clothing that has been worn a few days. Still, it's good enough for a few more, at least. During the nanite apocalypse, one can give some leeway in terms of body hygiene - survival comes first...".

sleeveless shirt is a grab object.
sleeveless shirt is equipment.
It is not temporary.
Plural of sleeveless shirt is false.
Taur-compatible of sleeveless shirt is true.
Size of sleeveless shirt is 3.
AC of sleeveless shirt is 0.
Effectiveness of sleeveless shirt is 0.
Placement of sleeveless shirt is "chest".
Descmod of sleeveless shirt is "Your upper body is covered by a white sleeveless shirt.".
Slot of sleeveless shirt is "chest".
Scent of sleeveless shirt is "The fabric has the typical faintly musky scent clothing that has been worn a few days. Still, it's good enough for a few more, at least. During the nanite apocalypse, one can give some leeway in terms of body hygiene - survival comes first...".

mesh shirt is a grab object.
mesh shirt is equipment.
It is not temporary.
Plural of mesh shirt is false.
Taur-compatible of mesh shirt is true.
Size of mesh shirt is 3.
AC of mesh shirt is 0.
Effectiveness of mesh shirt is 0.
Placement of mesh shirt is "chest".
Descmod of mesh shirt is "Your upper body is covered by a black mesh shirt. With its sheer fabric, you can literally see right through it.".
Slot of mesh shirt is "chest".
Scent of mesh shirt is "The fabric has the typical faintly musky scent clothing that has been worn a few days. Still, it's good enough for a few more, at least. During the nanite apocalypse, one can give some leeway in terms of body hygiene - survival comes first...".

[ Section 3 - Shoes ]

When Play begins:
	[
	add { "brown loafers", "leather sandals", "high heels", "stiletto heels", "jogging shoes", "cowboy boots" } to invent of Grey Abbey Library;
	]
	now plural of brown loafers is true;
	now plural of leather sandals is true;
	now plural of high heels is true;
	now plural of stiletto heels is true;
	now plural of jogging shoes is true;
	now plural of cowboy boots is true;

Table of Game Objects (continued)
name	desc	weight	object
"brown loafers"	"A pair of brown loafers. They look comfortable and one can just slide right in without having to worry about tying them."	1	brown loafers
"leather sandals"	"A pair of leather sandals. They have a number of straps that can be used to fasten them to your foot."	1	leather sandals
"high heels"	"A pair of bright red woman's shoes, with moderately high heels. Not exactly the best thing to run around with at speed."	1	high heels
"stiletto heels"	"A pair of black woman's shoes, with very high heels. Not exactly the best thing to run around with at speed."	1	stiletto heels
"jogging shoes"	"A pair of athlete's jogging shoes. They look new and are still bright and shiny."	1	jogging shoes
"cowboy boots"	"A pair of cowboy boots made from dark brown leather, complete with high heels and a relatively narrow toe. They are sure to make using stirrups easier, and can protect against rattlesnake bites."	1	cowboy boots

brown loafers is a grab object.
brown loafers is equipment.
It is not temporary.
Plural of brown loafers is true.
Taur-compatible of brown loafers is false.
Size of brown loafers is 3.
AC of brown loafers is 0.
Effectiveness of brown loafers is 0.
Placement of brown loafers is "feet".
Descmod of brown loafers is "You are wearing comfortable brown loafers.".
Slot of brown loafers is "feet".
Scent of brown loafers is "The loafers smell like leather.".

leather sandals is a grab object.
leather sandals is equipment.
It is not temporary.
Plural of leather sandals is true.
Taur-compatible of leather sandals is false.
Size of leather sandals is 3.
AC of leather sandals is 0.
Effectiveness of leather sandals is 0.
Placement of leather sandals is "feet".
Descmod of leather sandals is "Two leather sandals are strapped to your feet.".
Slot of leather sandals is "feet".
Scent of leather sandals is "The sandals smell like leather.".

high heels is a grab object.
high heels is equipment.
It is not temporary.
Plural of high heels is true.
Taur-compatible of high heels is false.
Size of high heels is 3.
AC of high heels is 0.
Effectiveness of high heels is 0.
Placement of high heels is "feet".
Descmod of high heels is "You are wearing two red high heels. It won't be easy to run in these, but you sure look fabulous like this.".
Slot of high heels is "feet".
Scent of high heels is "The shoes smell a bit of laquer and plastic.".

stiletto heels is a grab object.
stiletto heels is equipment.
It is not temporary.
Plural of stiletto heels is true.
Taur-compatible of stiletto heels is false.
Size of stiletto heels is 3.
AC of stiletto heels is 0.
Effectiveness of stiletto heels is 0.
Placement of stiletto heels is "feet".
Descmod of stiletto heels is "You are wearing two black stiletto heels. They're quite extraordinary high and have very narrow heels.".
Slot of stiletto heels is "feet".
Scent of stiletto heels is "The shoes smell a bit of laquer and plastic.".

jogging shoes is a grab object.
jogging shoes is equipment.
It is not temporary.
Plural of jogging shoes is true.
Taur-compatible of jogging shoes is false.
Size of jogging shoes is 3.
AC of jogging shoes is 0.
Effectiveness of jogging shoes is 0.
Placement of jogging shoes is "feet".
Descmod of jogging shoes is "You are wearing fairly new jogging shoes. Just perfect to run with.".
Slot of jogging shoes is "feet".
Scent of jogging shoes is "The shoes smell like plastic and not much else. Good thing these are new.".

cowboy boots is a grab object.
cowboy boots is equipment.
It is not temporary.
Plural of cowboy boots is true.
Taur-compatible of cowboy boots is false.
Size of cowboy boots is 3.
AC of cowboy boots is 0.
Effectiveness of cowboy boots is 0.
Placement of cowboy boots is "feet".
Descmod of cowboy boots is "You are wearing a pair of dark brown cowboy boots. You won't have to fear brambles and rattlesnakes with these on, that's for sure.".
Slot of cowboy boots is "feet".
Scent of cowboy boots is "The boots smell like leather.".


[ Section 4 - Underwear ]

When Play begins:
	[
	add { "ragged loincloth", "simple loincloth", "boxer briefs", "white briefs", "orange jockstrap", "mesh undies", "pink panties" } to invent of Grey Abbey Library;
	]
	now plural of boxer briefs is true;
	now plural of white briefs is true;
	now plural of mesh undies is true;
	now plural of pink panties is true;

Table of Game Objects (continued)
name	desc	weight	object
"orc loincloth"	"A ragged piece of brown fabric that one can tie around their hips to cover the bare essentials."	0	orc loincloth
"ragged loincloth"	"A ragged piece of brown fabric that one can tie around their hips to cover the bare essentials."	0	ragged loincloth
"simple loincloth"	"A simple white cotton loincloth. One can tie it around their hips to cover the bare essentials."	0	simple loincloth
"boxer briefs"	"A pair of black boxer briefs with a gray band of elastic at the top. Simple, yet functional."	0	boxer briefs
"white briefs"	"A pair of tight white briefs. Simple, yet functional."	0	white briefs
"orange jockstrap"	"A jockstrap in bright orange, clearly made for people who do not mind showing off quite a bit."	0	orange jockstrap
"mesh undies"	"Underwear made of sheer black mesh. You can literally see right through it."	0	mesh undies
"pink panties"	"A pair of pink panties with frilly edges."	0	pink panties

orc loincloth is a grab object.
orc loincloth is equipment.
It is not temporary.
Plural of orc loincloth is false.
Taur-compatible of orc loincloth is false.
Size of orc loincloth is 3.
AC of orc loincloth is 0.
Effectiveness of orc loincloth is 0.
Placement of orc loincloth is "crotch".
Descmod of orc loincloth is "An orc loincloth barely covers your crotch. It is fairly easy to expose yourself with the wrong (or right?) move.".
Slot of orc loincloth is "crotch".
Scent of orc loincloth is "The cloth has Scent of manly musk clinging to it. Just breathing in with it under your nose makes you think of orcs.".

ragged loincloth is a grab object.
ragged loincloth is equipment.
It is not temporary.
Plural of ragged loincloth is false.
Taur-compatible of ragged loincloth is false.
Size of ragged loincloth is 3.
AC of ragged loincloth is 0.
Effectiveness of ragged loincloth is 0.
Placement of ragged loincloth is "crotch".
Descmod of ragged loincloth is "A ragged loincloth barely covers your crotch. It is fairly easy to expose yourself with the wrong (or right?) move.".
Slot of ragged loincloth is "crotch".
Scent of ragged loincloth is "Smells a little bit musky. Apparently the loincloth has been worn before, but is fairly clean.".

simple loincloth is a grab object.
simple loincloth is equipment.
It is not temporary.
Plural of simple loincloth is false.
Taur-compatible of simple loincloth is false.
Size of simple loincloth is 3.
AC of simple loincloth is 0.
Effectiveness of simple loincloth is 0.
Placement of simple loincloth is "crotch".
Descmod of simple loincloth is "A simple white loincloth is tied around your crotch.".
Slot of simple loincloth is "crotch".
Scent of simple loincloth is "Smells a little bit musky. Apparently the loincloth has been worn before, but is fairly clean.".

boxer briefs is a grab object.
boxer briefs is equipment.
It is not temporary.
Plural of boxer briefs is true.
Taur-compatible of boxer briefs is false.
Size of boxer briefs is 3.
AC of boxer briefs is 0.
Effectiveness of boxer briefs is 0.
Placement of boxer briefs is "crotch".
Descmod of boxer briefs is "A pair of black boxer briefs cover your crotch.".
Slot of boxer briefs is "crotch".
Scent of boxer briefs is "Smells a little bit musky. Apparently the underwear has been worn before, but is fairly clean.".

white briefs is a grab object.
white briefs is equipment.
It is not temporary.
Plural of white briefs is true.
Taur-compatible of white briefs is false.
Size of white briefs is 3.
AC of white briefs is 0.
Effectiveness of white briefs is 0.
Placement of white briefs is "crotch".
Descmod of white briefs is "A pair of tight white briefs cover your crotch.".
Slot of white briefs is "crotch".
Scent of white briefs is "Smells a little bit musky. Apparently the underwear has been worn before, but is fairly clean.".

orange jockstrap is a grab object.
orange jockstrap is equipment.
It is not temporary.
Plural of orange jockstrap is false.
Taur-compatible of orange jockstrap is false.
Size of orange jockstrap is 3.
AC of orange jockstrap is 0.
Effectiveness of orange jockstrap is 0.
Placement of orange jockstrap is "crotch".
Descmod of orange jockstrap is "An orange jockstrap covers your crotch while leaving your ass and back door bare. This makes you feel somewhat exposed, yet at the same time you can't help but want to show off.".
Slot of orange jockstrap is "crotch".
Scent of orange jockstrap is "Smells a little bit musky. Apparently the underwear has been worn before, but is fairly clean.".

mesh undies is a grab object.
mesh undies is equipment.
It is not temporary.
Plural of mesh undies is true.
Taur-compatible of mesh undies is false.
Size of mesh undies is 3.
AC of mesh undies is 0.
Effectiveness of mesh undies is 0.
Placement of mesh undies is "crotch".
Descmod of mesh undies is "A pair of mesh undies around your hips expose more than they conceal.".
Slot of mesh undies is "crotch".
Scent of mesh undies is "Smells a little bit musky. Apparently the underwear has been worn before, but is fairly clean.".

pink panties is a grab object.
pink panties is equipment.
It is not temporary.
Plural of pink panties is true.
Taur-compatible of pink panties is false.
Size of pink panties is 3.
AC of pink panties is 0.
Effectiveness of pink panties is 0.
Placement of pink panties is "crotch".
Descmod of pink panties is "A skimpy and frilly pair of pink panties cover your crotch.".
Slot of pink panties is "crotch".
Scent of pink panties is "Smells a little bit musky. Apparently the underwear has been worn before, but is fairly clean.".

[ Section 5 - Glasses ]

When Play begins:
	[
	add { "" } to invent of Grey Abbey Library;
	]
	now plural of stylish sunglasses is true;
	now plural of basic sunglasses is true;
	now plural of horn-rimmed glasses is true;
	now plural of aviator goggles is true;
	now plural of lab goggles is true;
	now plural of prop glasses is true;
	now plural of rose-tinted glasses is true;

Table of Game Objects (continued)
name	desc	weight	object
"stylish sunglasses"	"A set of Lu-Beam sunglasses with a very stylish shape. Those are sure to make anyone look like a star."	0	stylish sunglasses
"basic sunglasses"	"A set of fairly basic sunglasses with a black plastic frame. Nothing special, but they'll protect your eyes."	0	basic sunglasses
"horn-rimmed glasses"	"A pair of dignified horn-rimmed glasses with slightly curved lenses."	0	horn-rimmed glasses
"aviator goggles"	"A set of aviator goggles with a strap to keep them tightly pressed to someone's face. Perfect for situations like being in strong winds, or being in danger of getting cum-facials by lots of horny monsters."	0	aviator goggles
"lab goggles"	"A pair of clear plastic goggles that closely fit to someone's face. They're perfect to keep harmful chemicals (and spurting cum) out of your eyes."	0	lab goggles
"prop glasses"	"A pair of stylish glasses with clear glass lenses in their frames. These are what you'd see on stage or in a movie, creating the right appearance without giving people headaches from wearing glasses even if they are not needed."	0	prop glasses
"rose-tinted glasses"	"A pair of rose-tinted glasses with frilly edges. There even are some glass gemstones with reflective backing glued to them."	0	rose-tinted glasses

stylish sunglasses is a grab object.
stylish sunglasses is equipment.
It is not temporary.
Plural of stylish sunglasses is true.
Taur-compatible of stylish sunglasses is true.
Size of stylish sunglasses is 0.
AC of stylish sunglasses is 0.
Effectiveness of stylish sunglasses is 0.
Placement of stylish sunglasses is "eyes".
Descmod of stylish sunglasses is "An expensive set of sunglasses sits on your nose, giving you a stylish look and protecting your eyes.".
Slot of stylish sunglasses is "eyes".
Scent of stylish sunglasses is "The glasses don't smell like anything really.".

basic sunglasses is a grab object.
basic sunglasses is equipment.
It is not temporary.
Plural of basic sunglasses is true.
Taur-compatible of basic sunglasses is true.
Size of basic sunglasses is 0.
AC of basic sunglasses is 0.
Effectiveness of basic sunglasses is 0.
Placement of basic sunglasses is "eyes".
Descmod of basic sunglasses is "An cheap set of sunglasses sits on your nose, protecting your eyes from bright light.".
Slot of basic sunglasses is "eyes".
Scent of basic sunglasses is "The glasses don't smell like anything really.".

horn-rimmed glasses is a grab object.
horn-rimmed glasses is equipment.
It is not temporary.
Plural of horn-rimmed glasses is true.
Taur-compatible of horn-rimmed glasses is true.
Size of horn-rimmed glasses is 0.
AC of horn-rimmed glasses is 0.
Effectiveness of horn-rimmed glasses is 0.
Placement of horn-rimmed glasses is "eyes".
Descmod of horn-rimmed glasses is "A pair of horn-rimmed glasses on your nose give you a dignified look.".
Slot of horn-rimmed glasses is "eyes".
Scent of horn-rimmed glasses is "The glasses don't smell like anything really.".

aviator goggles is a grab object.
aviator goggles is equipment.
It is not temporary.
Plural of aviator goggles is true.
Taur-compatible of aviator goggles is true.
Size of aviator goggles is 0.
AC of aviator goggles is 0.
Effectiveness of aviator goggles is 0.
Placement of aviator goggles is "eyes".
Descmod of aviator goggles is "A pair of aviator goggles cover your eyes, protecting them from danger - like spurts of cum, for example.".
Slot of aviator goggles is "eyes".
Scent of aviator goggles is "The goggles don't smell like anything really.".

lab goggles is a grab object.
lab goggles is equipment.
It is not temporary.
Plural of lab goggles is true.
Taur-compatible of lab goggles is true.
Size of lab goggles is 0.
AC of lab goggles is 0.
Effectiveness of lab goggles is 0.
Placement of lab goggles is "eyes".
Descmod of lab goggles is "A pair of lab goggles cover your eyes, protecting them from danger - like spurts of cum, for example.".
Slot of lab goggles is "eyes".
Scent of lab goggles is "The goggles don't smell like anything really.".

prop glasses is a grab object.
prop glasses is equipment.
It is not temporary.
Plural of prop glasses is true.
Taur-compatible of prop glasses is true.
Size of prop glasses is 0.
AC of prop glasses is 0.
Effectiveness of prop glasses is 0.
Placement of prop glasses is "eyes".
Descmod of prop glasses is "A pair of prop glasses on your nose gives you an intelligent air.".
Slot of prop glasses is "eyes".
Scent of prop glasses is "The glasses don't smell like anything really.".

rose-tinted glasses is a grab object.
rose-tinted glasses is equipment.
It is not temporary.
Plural of rose-tinted glasses is true.
Taur-compatible of rose-tinted glasses is true.
Size of rose-tinted glasses is 0.
AC of rose-tinted glasses is 0.
Effectiveness of rose-tinted glasses is 0.
Placement of rose-tinted glasses is "eyes".
Descmod of rose-tinted glasses is "A pair of somewhat kitschy glasses on your nose gives you a rose-tinted outlook of the world.".
Slot of rose-tinted glasses is "eyes".
Scent of rose-tinted glasses is "The glasses don't smell like anything really.".

[ Section 6 - Helmets ]

[
When Play begins:

	add { "" } to invent of Grey Abbey Library;
]

Table of Game Objects (continued)
name	desc	weight	object
"motorcycle helmet"	"A black motorcycle helmet with a clear visor. Heavy, but protective."	3	motorcycle helmet
"bike helmet"	"A plastic foam bicycle helmet, complete with a white shell and reflective stripes, as well as a strap to fasten it to the wearer's head."	1	bike helmet
"protective helmet"	"A white protection helmet as might be worn by industrial workers. That should certainly ward off some bumps to the wearer's head."	2	protective helmet
"tin-foil hat"	"A bunch of tin foil, bent into shape to cover a human's head. It might protect its wearer from alien mind control rays, or could possibly ensure that the head is still juicy and not burned on the outside when baked..."	0	tin-foil hat
"gray fedora"	"A gray fedora hat with soft brim and indented crown. Wearing it might make you look like a private detective, or a hipster."	0	gray fedora
"baseball cap"	"A blue baseball cap with the logo of the Tenvale Silverbacks on its front."	0	baseball cap
"knitted skullcap"	"A woolen cap, made to rightly stretch over someone's skull."	0	knitted skullcap
"football helmet"	"A white football helmet with the logo of the Tenvale Silverbacks on both sides. Heavy, but protective."	3	football helmet
"urban explorer helmet"	"A protective helmet with flashy crimson-red finish. It should certainly ward off some bumps to someone's head. A compact camera is attached to the front, to capture everything the wearer sees, but sadly its batteries seem to be empty and it doesn't turn on."	2	urban explorer helmet

motorcycle helmet is a grab object.
motorcycle helmet is equipment.
It is not temporary.
Plural of motorcycle helmet is false.
Taur-compatible of motorcycle helmet is true.
Size of motorcycle helmet is 3.
AC of motorcycle helmet is 60.
Effectiveness of motorcycle helmet is 80.
Placement of motorcycle helmet is "head".
Descmod of motorcycle helmet is "Your head is encased in the thick shell of a motorcycle helmet.".
Slot of motorcycle helmet is "head".
Scent of motorcycle helmet is "The helmet smells of plastic and fabric.".

bike helmet is a grab object.
bike helmet is equipment.
It is not temporary.
Plural of bike helmet is false.
Taur-compatible of bike helmet is true.
Size of bike helmet is 3.
AC of bike helmet is 20.
Effectiveness of bike helmet is 40.
Placement of bike helmet is "head".
Descmod of bike helmet is "A plastic bike helmet encases the upper half of your head.".
Slot of bike helmet is "head".
Scent of bike helmet is "The helmet smells like plastic.".

protective helmet is a grab object.
protective helmet is equipment.
It is not temporary.
Plural of protective helmet is false.
Taur-compatible of protective helmet is true.
Size of protective helmet is 3.
AC of protective helmet is 30.
Effectiveness of protective helmet is 60.
Placement of protective helmet is "head".
Descmod of protective helmet is "A white protective helmet sits on your head, providing some protection.".
Slot of protective helmet is "head".
Scent of protective helmet is "The helmet smells like plastic.".

tin-foil hat is a grab object.
tin-foil hat is equipment.
It is not temporary.
Plural of tin-foil hat is false.
Taur-compatible of tin-foil hat is true.
Size of tin-foil hat is 3.
AC of tin-foil hat is 0.
Effectiveness of tin-foil hat is 0.
Placement of tin-foil hat is "head".
Descmod of tin-foil hat is "A tin-foil hat covers your head, providing a dubious level of protection against... something.".
Slot of tin-foil hat is "head".
Scent of tin-foil hat is "The hat smells a bit like metal".

gray fedora is a grab object.
gray fedora is equipment.
It is not temporary.
Plural of gray fedora is false.
Taur-compatible of gray fedora is true.
Size of gray fedora is 3.
AC of gray fedora is 0.
Effectiveness of gray fedora is 0.
Placement of gray fedora is "head".
Descmod of gray fedora is "A gray fedora covers your head, making you look like a private detective from the prohibition days.".
Slot of gray fedora is "head".
Scent of gray fedora is "The hat smells like wool.".

baseball cap is a grab object.
baseball cap is equipment.
It is not temporary.
Plural of baseball cap is false.
Taur-compatible of baseball cap is true.
Size of baseball cap is 3.
AC of baseball cap is 0.
Effectiveness of baseball cap is 0.
Placement of baseball cap is "head".
Descmod of baseball cap is "A blue baseball cap covers your head, providing some protection from the sun with its visor.".
Slot of baseball cap is "head".
Scent of baseball cap is "The cap smells like fabric and plastic".

knitted skullcap is a grab object.
knitted skullcap is equipment.
It is not temporary.
Plural of knitted skullcap is false.
Taur-compatible of knitted skullcap is true.
Size of knitted skullcap is 3.
AC of knitted skullcap is 0.
Effectiveness of knitted skullcap is 0.
Placement of knitted skullcap is "head".
Descmod of knitted skullcap is "A knitted skullcap covers the top of your head.".
Slot of knitted skullcap is "head".
Scent of knitted skullcap is "The cap smells like wool.".

football helmet is a grab object.
football helmet is equipment.
It is not temporary.
Plural of football helmet is false.
Taur-compatible of football helmet is true.
Size of football helmet is 3.
AC of football helmet is 40.
Effectiveness of football helmet is 80.
Placement of football helmet is "head".
Descmod of football helmet is "Your head is encased in the thick shell of a football helmet.".
Slot of football helmet is "head".
Scent of football helmet is "The helmet smells of plastic and fabric.".

urban explorer helmet is a grab object.
urban explorer helmet is equipment.
It is not temporary.
Plural of urban explorer helmet is false.
Taur-compatible of urban explorer helmet is true.
Size of urban explorer helmet is 3.
AC of urban explorer helmet is 30.
Effectiveness of urban explorer helmet is 80.
Placement of urban explorer helmet is "head".
Descmod of urban explorer helmet is "Your head is encased in a protective helmet with crimson-red finish.".
Slot of urban explorer helmet is "head".
Scent of urban explorer helmet is "The helmet smells of plastic and fabric.".

[ Section 6 - Helmets ]

When Play begins:
	[
	add { "" } to invent of Grey Abbey Library;
	]
	now plural of football pads is true;

Table of Game Objects (continued)
name	desc	weight	object
"leather jacket"	"A black leather jacket some shiny silver buttons and zippers. Stylish and protective."	4	leather jacket
"sturdy greatcoat"	"A full-body coat made from thick wool. It will certainly protect you from bad weather, but the sturdy material should also be some help in a close-combat fight."	5	sturdy greatcoat
"bulletproof vest"	"A heavy-duty bulletproof vest, complete with metal plates for extra protection."	14	bulletproof vest
"medieval breastplate"	"A shiny medieval breastplate. It is either a historical artifact or a quite good reproduction - either way, this should allow for some serious protection for someone who wants to survive the nanite apocalypse."	20	medieval breastplate
"roadsign breastplate"	"A breastplate that someone fairly large seems to have crafted from things that were available - namely roadsigns. The front is formed by a STOP sign that has been hammered into a slight curve, with further signs bolted to its edges to curve around the sides of the body. Heavy leather straps for over the shoulders hold another stop sign forming the back plate."	30	roadsign breastplate
"football pads"	"Tough polymer football pads, sized to cover the shoulders and upper chest of a human player. There even is an extra plate attached to the front in order to cover the abdominal area of the wearer. You can see the logo of the Tenvale Silverbacks emblazoned on the left pec."	9	football pads
"life jacket"	"A bright orange life jacket. It'll help normal humans stay afloat and comes with an attached whistle and light."	2	life jacket
"shoulder pad"	"An oversized, padded shoulderpad that juts out to the side too much. It won't cover much, but it might help."	1	shoulder pad

leather jacket is a grab object.
leather jacket is equipment.
It is not temporary.
Plural of leather jacket is false.
Taur-compatible of leather jacket is true.
Size of leather jacket is 3.
AC of leather jacket is 30.
Effectiveness of leather jacket is 70.
Placement of leather jacket is "body".
Descmod of leather jacket is "A black leather jacket covers your upper body.".
Slot of leather jacket is "body".
Scent of leather jacket is "The jacket smells like leather.".

sturdy greatcoat is a grab object.
sturdy greatcoat is equipment.
It is not temporary.
Plural of sturdy greatcoat is false.
Taur-compatible of sturdy greatcoat is true.
Size of sturdy greatcoat is 3.
AC of sturdy greatcoat is 15.
Effectiveness of sturdy greatcoat is 80.
Placement of sturdy greatcoat is "body".
Descmod of sturdy greatcoat is "A full length woolen greatcoat covers your body.".
Slot of sturdy greatcoat is "body".
Scent of sturdy greatcoat is "The coat smells like whool.".

bulletproof vest is a grab object.
bulletproof vest is equipment.
It is not temporary.
Plural of bulletproof vest is false.
Taur-compatible of bulletproof vest is true.
Size of bulletproof vest is 3.
AC of bulletproof vest is 70.
Effectiveness of bulletproof vest is 60.
Placement of bulletproof vest is "body".
Descmod of bulletproof vest is "A reinforced bulletproof vest covers your upper body.".
Slot of bulletproof vest is "body".
Scent of bulletproof vest is "The vest smells slightly of sweat, which isn't too woundrous as these things usually are put on in times of great stress.".

medieval breastplate is a grab object.
medieval breastplate is equipment.
It is not temporary.
Plural of medieval breastplate is false.
Taur-compatible of medieval breastplate is true.
Size of medieval breastplate is 3.
AC of medieval breastplate is 65.
Effectiveness of medieval breastplate is 60.
Placement of medieval breastplate is "body".
Descmod of medieval breastplate is "A medieval breastplate covers your chest and back with shiny metal.".
Slot of medieval breastplate is "body".
Scent of medieval breastplate is "The breastplate smells like metal".

roadsign breastplate is a grab object.
roadsign breastplate is equipment.
It is not temporary.
Plural of roadsign breastplate is false.
Taur-compatible of roadsign breastplate is true.
Size of roadsign breastplate is 4.
AC of roadsign breastplate is 60.
Effectiveness of roadsign breastplate is 50.
Placement of roadsign breastplate is "body".
Descmod of roadsign breastplate is "A roadsign breastplate covers your chest and back in an improvised patchwork of metal.".
Slot of roadsign breastplate is "body".
Scent of roadsign breastplate is "The breastplate smells like metal".

football pads is a grab object.
football pads is equipment.
It is not temporary.
Plural of football pads is true.
Taur-compatible of football pads is true.
Size of football pads is 3.
AC of football pads is 30.
Effectiveness of football pads is 50.
Placement of football pads is "body".
Descmod of football pads is "Blue football pads cover chest, abs and shoulders providing protective padding.".
Slot of football pads is "body".
Scent of football pads is "The pads smell of plastic, fabric and sweat.".

life jacket is a grab object.
life jacket is equipment.
It is not temporary.
Plural of life jacket is false.
Taur-compatible of life jacket is true.
Size of life jacket is 3.
AC of life jacket is 20.
Effectiveness of life jacket is 40.
Placement of life jacket is "body".
Descmod of life jacket is "A bright orange life jacket covers your upper body.".
Slot of life jacket is "body".
Scent of life jacket is "The life jacket smells of synthetic fabrics.".

shoulder pad is a grab object.
shoulder pad is equipment.
It is not temporary.
Plural of shoulder pad is false.
Taur-compatible of shoulder pad is true.
Size of shoulder pad is 3.
AC of shoulder pad is 13.
Effectiveness of shoulder pad is 13.
Placement of shoulder pad is "body".
Descmod of shoulder pad is "A single, armored pad is strapped to your shoulder.".
Slot of shoulder pad is "body".
Scent of shoulder pad is "The shoulder pad stinks of the [']90s.".


Basic Clothing Items ends here.
