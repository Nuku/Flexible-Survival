Version 1 of Expanded Clothing Mechanics by Core Mechanics begins here.

[                   The Pretty Kitty                                            ]
[Hat: Head Slot                                                                 ]
[Hair Accessory: Hair Slot                                                      ]
[Glasses: Eye Slot                                                              ]
[Mask: Face Slot                                                                ]
[Neckwear: Throat Slot                                                          ]
[Necklace: Throat Slot                                                          ]
[Jacket: Back Slot                                                              ]
[Shirt: Chest Slot                                                              ]
[Bra: Breast Slot                                                               ]
[Torso Trainers: Stomach Slot                                                   ]
[Gloves: Hands Slot                                                             ]
[Rings: Hands Slot                                                              ]
[Belt: Waist Slot                                                               ]
[Pants: Leg Slot                                                                ]
[Skirt: Leg Slot                                                                ]
[Underwear: Groin Slot                                                          ]
[Socks: Calf Slot                                                               ]
[Shoes: Feet Slot                                                               ]

[                   Restrained Desire                                           ]
[Hat: Head Slot                                                                 ]
[Hair Accessory: Head Slot                                                      ]
[Mask: Face Slot                                                                ]
[Gag: Mouth Slot                                                                ]
[Neckwear: Throat Slot                                                          ]
[Necklace: Throat Slot                                                          ]
[Jacket: Back Slot                                                              ]
[Shirt: Chest Slot                                                              ]
[Bra: Breast Slot                                                               ]
[Torso Trainers: Stomach Slot                                                   ]
[Gloves: Hands Slot                                                             ]
[Rings: Hand Slot                                                               ]
[Belt: Waist Slot                                                               ]
[Pants: Leg Slot                                                                ]
[Skirt: Leg Slot                                                                ]
[Underwear: Groin Slot                                                          ]
[Cock Accessory: Cock Slot                                                      ]
[Pussy Accessory: Cunt Slot                                                     ]
[Socks: Calf Slot                                                               ]
[Shoes: Feet Slot                                                               ]

[                   The Painted Dragon                                          ]
[Earring: Ear Slot                                                              ]
[Eyebrow Ring: Eyebrow Slot                                                     ]
[Nose Ring: Nose Slot                                                           ]
[Lip Ring: Lip Slot                                                             ]
[Tongue Ring: Tongue Slot                                                       ]
[Nipple Ring: Nipple Slot                                                       ]
[Bellybutton Ring: Bellybutton Slot                                             ]
[Cock Ring: Shaft Slot                                                          ]
[Clit Ring: Clit Slot                                                           ]

Book 1 - Variables

Section 1 - Clothing Gender

PlayerClothingGA is a number that varies.[@Tag:Notsaved]

Section 2 - Clothing Traits

[                   Simple Traits                                               ]

PlayerClothingBasic is a number that varies.[@Tag:Notsaved]
PlayerClothingStylish is a number that varies.[@Tag:Notsaved]
PlayerClothingCool is a number that varies.[@Tag:Notsaved]
PlayerClothingGrungy is a number that varies.[@Tag:Notsaved]
PlayerClothingSporty is a number that varies.[@Tag:Notsaved]
PlayerClothingViolent is a number that varies.[@Tag:Notsaved]
PlayerClothingSmart is a number that varies.[@Tag:Notsaved]
PlayerClothingSexy is a number that varies.[@Tag:Notsaved]
PlayerClothingAuthoritive is a number that varies.[@Tag:Notsaved]
PlayerClothingRebellious is a number that varies.[@Tag:Notsaved]

[                   Gender Based Traits                                         ]

PlayerClothingCute is a number that varies.[@Tag:Notsaved] [female]
PlayerClothingTrap is a number that varies.[@Tag:Notsaved] [male]
PlayerClothingSlutty is a number that varies.[@Tag:Notsaved] [female]
PlayerClothingSissy is a number that varies.[@Tag:Notsaved] [male]
PlayerClothingBimbo is a number that varies.[@Tag:Notsaved] [female]
PlayerClothingHimbo is a number that varies.[@Tag:Notsaved] [male]
PlayerClothingBrah is a number that varies.[@Tag:Notsaved] [male]

[                   Dom/Sub Based Traits                                        ]

PlayerClothingMistress is a number that varies.[@Tag:Notsaved] [dominant feat, female]
PlayerClothingMaster is a number that varies.[@Tag:Notsaved] [dominant feat, male]
PlayerClothingSlave is a number that varies.[@Tag:Notsaved] [submissive feat]

Part 1 - Gender&Trait Code

to CalculateEquipmentValues:
	[reset all of these values]
	now PlayerClothingGA is 0;
	now PlayerClothingBasic is 0;
	now PlayerClothingStylish is 0;
	now PlayerClothingCool is 0;
	now PlayerClothingGrungy is 0;
	now PlayerClothingSporty is 0;
	now PlayerClothingViolent is 0;
	now PlayerClothingSmart is 0;
	now PlayerClothingSexy is 0;
	now PlayerClothingAuthoritive is 0;
	now PlayerClothingRebellious is 0;
	now PlayerClothingCute is 0;
	now PlayerClothingTrap is 0;
	now PlayerClothingSlutty is 0;
	now PlayerClothingSissy is 0;
	now PlayerClothingBimbo is 0;
	now PlayerClothingHimbo is 0;
	now PlayerClothingBrah is 0;
	now PlayerClothingMistress is 0;
	now PlayerClothingMaster is 0;
	now PlayerClothingSlave is 0;
	[now we go through all equipped equipment to calculate the values]
	repeat with z running through equipped equipment:
		increase PlayerClothingGA by GA of z;
		if "basic" is listed in traits of z:
			increase PlayerClothingBasic by 1;
		if "stylish" is listed in traits of z:
			increase PlayerClothingStylish by 1;
		if "cool" is listed in traits of z:
			increase PlayerClothingCool by 1;
		if "grungy" is listed in traits of z:
			increase PlayerClothingGrungy by 1;
		if "sporty" is listed in traits of z:
			increase PlayerClothingSporty by 1;
		if "violent" is listed in traits of z:
			increase PlayerClothingViolent by 1;
		if "smart" is listed in traits of z:
			increase PlayerClothingSmart by 1;
		if "sexy" is listed in traits of z:
			increase PlayerClothingSexy by 1;
		if "authoritive" is listed in traits of z:
			increase PlayerClothingAuthoritive by 1;
		if "rebellious" is listed in traits of z:
			increase PlayerClothingRebellious by 1;
		if "cute" is listed in traits of z:
			if player is male:
				increase PlayerClothingTrap by 1;
			else if player is female:
				increase PlayerClothingCute by 1;
		if "slutty" is listed in traits of z:
			if player is male:
				increase PlayerClothingSissy by 1;
			else if player is female:
				increase PlayerClothingSlutty by 1;
		if "bimbo" is listed in traits of z:
			if player is male:
				increase PlayerClothingHimbo by 1;
			else if player is female:
				increase PlayerClothingBimbo by 1;
		if "brah" is listed in traits of z:
			if player is male:
				increase PlayerClothingBrah by 1;
		if "mistress" is listed in traits of z:
			if player is male:
				increase PlayerClothingMaster by 1;
			else if player is female:
				increase PlayerClothingMistress by 1;
		if "slave" is listed in traits of z:
			increase PlayerClothingSlave by 1;

Section 3 - Plurals

When Play begins:
	[testing drop of all items in the library]
	[
	add { "ripped jeans", "black jeans", "sturdy jeans", "skinny jeans", "hot pants", "gray pants", "camo pants", "jogging pants", "bermuda shorts", "black miniskirt", "pencil skirt", "floral skirt" } to invent of Grey Abbey Library;
	add { "centaur cum", "centaur cum", "centaur cum", "centaur cum", "centaur cum", "behemoth horn", "behemoth horn", "behemoth horn", "behemoth horn", "behemoth horn" } to invent of Grey Abbey Library;
	]
	[not sure why setting the plural boolean does not work for the pants, but this should (for now) fix that after the fact, at the same start]
	now plural of aviator goggles is true;
	now plural of lab goggles is true;
	now plural of simple sunglasses is true;
	now plural of designer sunglasses is true;
	now plural of horn-rimmed glasses is true;
	now plural of prop glasses is true;
	now plural of rose-tinted glasses is true;
	now plural of football pads is true;
	now plural of black slacks is true;
	now plural of gray slacks is true;
	now plural of black jeans is true;
	now plural of dark-blue jeans is true;
	now plural of ripped black jeans is true;
	now plural of ripped blue jeans is true;
	now plural of black skinny jeans is true;
	now plural of light-blue skinny jeans is true;
	now plural of scarlet hot pants is true;
	now plural of emerald hot pants is true;
	now plural of amethyst hot pants is true;
	now plural of green camo pants is true;
	now plural of green army camo pants is true;
	now plural of black jogging pants is true;
	now plural of pink jogging pants is true;
	now plural of beige bermuda shorts is true;
	now plural of flowered bermuda shorts is true;
	now plural of white briefs is true;
	now plural of black boxer briefs is true;
	now plural of pink panties is true;
	now plural of black mesh briefs is true;
	now plural of black combat boots is true;
	now plural of dark-brown cowboy boots is true;
	now plural of leather sandals is true;
	now plural of brown loafers is true;
	now plural of bright-red pumps is true;
	now plural of black stiletto heels is true;
	now plural of blue running shoes is true;

Expanded Clothing Mechanics ends here.
