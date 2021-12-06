FS Graphics by Core Mechanics begins here.
[- Originally Authored By: Nuku Valente -]

Part 0 - Variables

graphics is a truth state that varies.
NewGraphics is a truth state that varies. NewGraphics is usually true.
NewGraphicsInteger is a number that varies. NewGraphicsInteger is usually 2.
NewGraphicsDebugMode is a truth state that varies. NewGraphicsDebugMode is usually false.
NewGraphicsRatio is a number that varies. NewGraphicsRatio is usually 30.
NewGraphicsPosition is a number that varies. [0 = right, 1 = left, 2 = above, 3 = below]
NewGraphicsOpened is a truth state that varies. NewGraphicsOpened is usually false. [set to true for entire playthrough if graphics window opened - unless inline/disabled specified at start]

[Please Note!]
[Unix filesystem names can be case sensitive. Try to match the letter case here with the actual filename case]

Figure of title_graphic is the file "title.jpg".
Figure of pixel is the file "pixel.jpg".
Figure of pixel_icon is the file "pixel.jpg".

A thing has a figure name called icon.
The icon of a thing is usually figure of pixel.

[infection icons]
Figure of AlphaWolf_hard_icon is the file "AlphaWolf_hard.jpg".
Figure of AlphaWolf_naked_icon is the file "AlphaWolf_naked.jpg".
Figure of Amazon_icon is the file "Amazon.jpg".
Figure of AnthroShaftBeast_icon is the file "AnthroSB_ig.jpg".
Figure of Bear_icon is the file "fs_bear.jpg".
Figure of Beaver1_icon is the file "Beaver_ig1.jpg".
Figure of Beaver2_icon is the file "Beaver_ig2.jpg".
Figure of BlackEquinoid_icon is the file "FSTF_blackEquinoid_ig.jpg".
Figure of BlueGel_icon is the file "BlueGel.jpg".
Figure of Bobcat1_icon is the file "FS-Bobcat.jpg".
Figure of Bobcat2_icon is the file "FS-bobbibob2rs.jpg".
Figure of Bottlenose_icon is the file "FS_BottlenoseToy.jpg".
Figure of Bovine_F_icon is the file "FS_Bovine_F.jpg".
Figure of Bubble_icon is the file "Bubble.jpg".
Figure of BunnyJock_icon is the file "Bunny Jock.jpg".
Figure of Cerberus_icon is the file "Cerberus.jpg".
Figure of ChocoLab_icon is the file "ChocoLab_ig.jpg".
Figure of CheetahWoman_icon is the file "CheetahWoman.png".
Figure of CentaurStallion_hard_icon is the file "CentaurStallion_hard.jpg".
Figure of CentaurStallion_soft_icon is the file "CentaurStallion_soft.jpg".
Figure of CentaurMare_icon is the file "CentaurMare.jpg".
Figure of Collie_clothed_icon is the file "Collie_clothed.jpg".
Figure of Collie_naked_icon is the file "Collie_naked.jpg".
Figure of Cougar_icon is the file "Cougar_ig.jpg".
Figure of DarkElf_icon is the file "Dark Elf.jpg".
Figure of DemonBrute_icon is the file "Brutus_evil.jpg".
Figure of Donkeywoman_clothed_icon is the file "Donkeywoman_clothed.jpg".
Figure of Donkeyman_soft_icon is the file "Donkeyman_soft.jpg".
Figure of Donkeyman_hard_icon is the file "Donkeyman_hard.jpg".
Figure of Dracovixentaur_icon is the file "dracovixentaur_ig.jpg".
Figure of MagicDrake_icon is the file "FS_Dragoness.jpg".
Figure of ElvenHunter_Encounter_icon is the file "ElvenHunter_Encounter.jpg".
Figure of ElvenHunter_icon is the file "ElvenHunter.jpg".
Figure of ElvenHunter_hard_icon is the file "ElvenHunter_hard.jpg".
Figure of Ewe_icon is the file "Ewe.jpg".
Figure of Feline_F1_icon is the file "FS_SmallLioness_01.jpg".
Figure of Feline_F2_icon is the file "FS_SmallLioness_02.jpg".
Figure of FeralShaftBeast_icon is the file "FeralSB_ig.jpg".
Figure of FireSpriteMale_icon is the file "FireSprite_male.jpg".
Figure of FluffyOwl_icon is the file "FluffyOwl.png".
Figure of FrPony_icon is the file "fs_afriendshippony.jpg".
Figure of GooGirl_icon is the file "GooGirl.jpg".
Figure of BlueGryphon_icon is the file "BlueGryphon.jpg".
Figure of BlueGryphon_face_icon is the file "BlueGryphon_face.jpg".
Figure of BlueGryphon_hard_icon is the file "Blue Gryphon hard.jpg".
Figure of BlueGryphon_soft_icon is the file "Blue Gryphon soft.jpg".
Figure of FeralGryphon_hard_icon is the file "Feral_Gryphon_hard.jpg".
Figure of FeralGryphon_soft_icon is the file "Feral_Gryphon_soft.jpg".
Figure of Gargoyle_hard_icon is the file "Gargoyle_hard.jpg".
Figure of Gargoyle_soft_icon is the file "Gargoyle_soft.jpg".
Figure of Gazelle_hard_icon is the file "Gazelle_hard.jpg".
Figure of Gazelle_soft_icon is the file "Gazelle_soft.jpg".
Figure of GermanShepherd_hard_icon is the file "GermanShepherd_hard.jpg".
Figure of GermanShepherd_naked_icon is the file "GermanShepherd_naked.jpg".
Figure of GiraffeHerm_hard_icon is the file "Giraffe Herm_hard.jpg".
Figure of GiraffeHerm_soft_icon is the file "Giraffe Herm_soft.jpg".
Figure of Gunbunny_icon is the file "Gunbunny_ig.jpg".
Figure of Ebonflame_Drake_icon is the file "Ebonflame_Drake.jpg".
Figure of Harpy_icon is the file "Harpy.jpg".
Figure of Hawkman_naked_icon is the file "Hawkman_naked.jpg".
Figure of Helot_icon is the file "Helot.jpg".
Figure of HellfireDemon_clothed_icon is the file "HellfireDemon_clothed.jpg".
Figure of HellfireDemon_soft_icon is the file "HellfireDemon_soft.jpg".
Figure of HellfireDemon_hard_icon is the file "HellfireDemon_hard.jpg".
Figure of HellfireDemon_noharness_icon is the file "HellfireDemon_noharness.jpg".
Figure of HellfireDemon_softnoharness_icon is the file "HellfireDemon_softnoharness.jpg".
Figure of HellfireDemon_hardnoharness_icon is the file "HellfireDemon_hardnoharness.jpg".
Figure of Helot_face_icon is the file "Helot_face.jpg".
Figure of Henry_soft_icon is the file "Henry_soft.jpg".
Figure of Henry_hard_icon is the file "Henry_hard.jpg".
Figure of Herm_Hyena_clothed_icon is the file "Hyena_clothed.jpg".
Figure of Herm_Hyena_naked_icon is the file "Hyena_naked.jpg".
Figure of HomoSapiens_icon is the file "Homo Sapiens.jpg".
Figure of HornyDoctor_M_icon is the file "HornyDoctor_M_ig.jpg".
Figure of Horsemazon_clothed_icon is the file "Horsemazon_clothed.jpg".
Figure of Horsemazon_naked_icon is the file "Horsemazon_naked.jpg".
Figure of Horseman_clothed_icon is the file "Horseman_clothed.jpg".
Figure of Horseman_hard_icon is the file "Horseman_hard.jpg".
Figure of Horseman_soft_icon is the file "Horseman_soft.jpg".
Figure of Hulking_Cheerleader_icon is the file "Hulking_Cheerleader.jpg".
Figure of HuskyAlpha_hard_icon is the file "HuskyAlpha_hard.jpg".
Figure of HuskyAlpha_soft_icon is the file "HuskyAlpha_soft.jpg".
Figure of Husky_Bitch_icon is the file "Husky_Bitch.jpg".
Figure of Imp_clothed_icon is the file "Imp_clothed.jpg".
Figure of Imp_naked_icon is the file "Imp_naked.jpg".
Figure of Imp_face_icon is the file "Imp_face.jpg".
Figure of Incubus_clothed_icon is the file "Incubus_clothed.jpg".
Figure of Incubus_naked_icon is the file "Incubus_naked.jpg".
Figure of Jennifer_icon is the file "Jennifer.jpg".
Figure of Kangaroo_icon is the file "Red Kangaroo.jpg".
Figure of Lamia_icon is the file "FSTF_Lamia.jpg".
Figure of LatexErmine_icon is the file "latexermine_ig.jpg". [creature loss variant]
Figure of LatexErmineBlue_icon is the file "FSTF_LatexErmineBlue_ig.jpg". [color variants]
Figure of LatexErmineGreen_icon is the file "FSTF_LatexErmineGreen_ig.jpg".
Figure of LatexErmineIndigo_icon is the file "FSTF_LatexErmineIndigo_ig.jpg".
Figure of LatexErminePink_icon is the file "FSTF_LatexErminePink_ig.jpg".
Figure of LatexErmineRed_icon is the file "FSTF_LatexErmineRed_ig.jpg".
Figure of LatexErmineTeal_icon is the file "FSTF_LatexErmineTeal_ig.jpg".
Figure of LatexFox_hard_icon is the file "LatexFox_hard.jpg".
Figure of LatexFox_soft_icon is the file "LatexFox_soft.jpg".
Figure of LatexVixen_icon is the file "FS_LatexVixen.jpg".
Figure of Leopardman_hard_icon is the file "Leopardman_hard.jpg".
Figure of Leopardman_soft_icon is the file "Leopardman_soft.jpg".
Figure of Mammoth_icon is the file "Mammoth.jpg".
Figure of Mareslut_icon is the file "Mareslut_naked.jpg".
Figure of Mannequin_icon is the file "Mannequin.jpg".
Figure of MathTeacher_icon is the file "MathTeacher.png".
Figure of Megakitty_icon is the file "Megakitty_ig.jpg".
Figure of MentalMice_icon is the file "Mental_Mice.jpg".
Figure of MessyPig_icon is the file "FS_MessyPig.jpg".
Figure of Minotaur_hard_icon is the file "Minotaur_hard.jpg".
Figure of Minotaur_naked_icon is the file "Minotaur_naked.jpg".
Figure of Naga_icon is the file "Naga.jpg".
Figure of Nightmare_hard_icon is the file "Nightmare_hard.jpg".
Figure of Nightmare_soft_icon is the file "Nightmare_soft.jpg".
Figure of Slutslave_icon is the file "Slutslave.jpg".
Figure of NinjaCat_F_icon is the file "CatNinja_F_ig.jpg".
Figure of NinjaCat_M_icon is the file "NinjaCat_M_ig.jpg".
Figure of Orca_hard_icon is the file "Orca_hard.jpg".
Figure of Orca_clothed_icon is the file "Orca_clothed.jpg".
Figure of OrcBreeder_random_icon is the file "OrcBreeder.jpg".
Figure of OrcWarrior_random_icon is the file "OrcWarrior.jpg".
Figure of PantherTaur_clothed_icon is the file "Panther Taur_clothed.jpg".
Figure of PantherTaur_hard_icon is the file "Panther Taur_hard.jpg".
Figure of PinkGel_icon is the file "PinkGel.jpg".
Figure of PinkPoodle_icon is the file "fs_poodle.jpg".
Figure of PlushLion_icon is the file "FS_PlushLion.jpg".
Figure of QueenBee_icon is the file "QueenBee_ig.jpg".
Figure of Reindeer_icon is the file "Reindeer_ig.jpg".
Figure of SandMan_icon is the file "Sand Man.jpg".
Figure of Satyress_naked_icon is the file "Satyress.jpg".
Figure of ShadowBeast_icon is the file "ShadowBeast.jpg".
Figure of Pewter_Consort_icon is the file "Pewter_Consort.jpg".
Figure of PirateShark_icon is the file "sharkpirate.png".
Figure of Ram_naked_icon is the file "Ram_naked.jpg".
Figure of Saber_Kitty_icon is the file "Saber Kitty.jpg".
Figure of Sabretooth_soft_icon is the file "Sabretooth_soft.jpg".
Figure of Sabretooth_hard_icon is the file "Sabretooth_hard.jpg".
Figure of SeaDragoness_NSFW_icon is the file "Sea Dragoness_NSFW.jpg".
Figure of SeaDragoness_SFW_icon is the file "Sea Dragoness_SFW.jpg".
Figure of SeaDragon_hard_icon is the file "Sea Dragon hard.jpg".
Figure of SeaDragon_soft_icon is the file "Sea Dragon soft.jpg".
Figure of SiameseCat_icon is the file "siamesecats_ig.jpg".
Figure of Siren_clothed_icon is the file "Siren_clothed.jpg".
Figure of Siren_hard_icon is the file "Siren_hard.jpg".
Figure of SnowBat_icon is the file "SnowBat_ig.jpg".
Figure of SnowLeopard_hard_icon is the file "SnowLeopard_hard.jpg".
Figure of SnowLeopard_soft_icon is the file "SnowLeopard_soft.jpg".
Figure of SpartanHelot_icon is the file "Spartan_Helot.jpg".
Figure of Spartan_face_icon is the file "Spartan_face.jpg".
Figure of SpartanHelot_dressed_icon is the file "SpartanHelot_dressed.jpg".
Figure of SpartanHelot_naked_icon is the file "SpartanHelot_naked.jpg".
Figure of Spartan_icon is the file "Spartan.jpg".
Figure of Stallionboi_hard_icon is the file "Stallionboi_hard.jpg".
Figure of Stallionboi_clothed_icon is the file "Stallionboi_clothed.jpg".
Figure of Succubus_clothed_icon is the file "Succubus_clothed.jpg".
Figure of SugarGlider_icon is the file "Sugar_Glider.jpg".
Figure of ThoughtEater_icon is the file "ThoughtEater.jpg".
Figure of Tigertaur_hard_icon is the file "Tigertaur_hard.jpg".
Figure of Tigertaur_soft_icon is the file "Tigertaur_soft.jpg".
Figure of TigressHooker_icon is the file "tigresshooker_ig.jpg".
Figure of Triceratops_icon is the file "triceratops_ig.jpg".
Figure of TyrannosaurusMale_hard_icon is the file "TyrannosaurusMale_hard.jpg".
Figure of TyrannosaurusMale_soft_icon is the file "TyrannosaurusMale_soft.jpg".
Figure of TyrannosaurusMale_clothed_icon is the file "TyrannosaurusMale_clothed.jpg".
Figure of VixenNurse_icon is the file "VixenNurse_ig.jpg".
Figure of Vixentaur_icon is the file "vixentaur_ig.jpg".
Figure of Wolftaur_hard_icon is the file "Wolftaur_hard.jpg".
Figure of Wolftaur_soft_icon is the file "Wolftaur_soft.jpg".
Figure of Wereraptor_female_icon is the file "Wereraptor_female.jpg".
Figure of Wereraptor_male_hard_icon is the file "Wereraptor_male_hard.jpg".
Figure of Wereraptor_male_soft_icon is the file "Wereraptor_male_soft.jpg".
Figure of Werewolf_female_icon is the file "Werewolf.jpg".
Figure of Werewolf_hard_icon is the file "Werewolf_hard.jpg".
Figure of Werewolf_clothed_icon is the file "Werewolf_clothed.jpg".
Figure of Wildcat_icon is the file "wildcat_ig.jpg".
Figure of Wood_Elf_icon is the file "Wood Elf.jpg".
Figure of WrestlingWolf_hard_icon is the file "Wrestling Wolf_hard.jpg".
Figure of WrestlingWolf_clothed_icon is the file "Wrestling Wolf_clothed.jpg".
Figure of Wyvern_female_day_icon is the file "Wyvern_female_day.jpg".
Figure of Wyvern_female_night_icon is the file "Wyvern_female_night.jpg".
Figure of Wyvern_female_icon is the file "Wyvern_female.jpg".
Figure of Wyvern_male_day_icon is the file "Wyvern_male_day.jpg".
Figure of Wyvern_male_night_icon is the file "Wyvern_male_night.jpg".
Figure of YamatoDragon_red_hard_icon is the file "YamatoDragon_red_hard.jpg".
Figure of YamatoDragon_red_soft_icon is the file "YamatoDragon_red_soft.jpg".
Figure of YamatoDragon_green_hard_icon is the file "YamatoDragon_green_hard.jpg".
Figure of YamatoDragon_green_soft_icon is the file "YamatoDragon_green_soft.jpg".
Figure of YamatoDragon_blue_hard_icon is the file "YamatoDragon_blue_hard.jpg".
Figure of YamatoDragon_blue_soft_icon is the file "YamatoDragon_blue_soft.jpg".
Figure of YamatoDragoness_red_SFW_icon is the file "YamatoDragoness_red_SFW.jpg".
Figure of YamatoDragoness_red_NSFW_icon is the file "YamatoDragoness_red_NSFW.jpg".
Figure of YamatoDragoness_green_SFW_icon is the file "YamatoDragoness_green_SFW.jpg".
Figure of YamatoDragoness_green_NSFW_icon is the file "YamatoDragoness_green_NSFW.jpg".
Figure of YamatoDragoness_blue_SFW_icon is the file "YamatoDragoness_blue_SFW.jpg".
Figure of YamatoDragoness_blue_NSFW_icon is the file "YamatoDragoness_blue_NSFW.jpg".
Figure of YuppieMink_icon is the file "FSTF_YuppieMink_ig.jpg".
Figure of Zebra_icon is the file "Zebra.jpg".
Figure of Zebra_face_icon is the file "Zebra_face.jpg".

[NPC icons]
Figure of Ace_icon is the file "Ace.jpg".
Figure of Adam_icon is the file "Adam.jpg".
Figure of Aerana_naked_icon is the file "Aerana_naked.jpg".
Figure of Alexandra_clothed_icon is the file "Alexandra_clothed.jpg".
Figure of Alexandra_clothed_preg_icon is the file "Alexandra_clothed_preg.jpg".
Figure of Alexandra_face_icon is the file "Alexandra_face.jpg".
Figure of Alexandra_naked_icon is the file "Alexandra_naked.jpg".
Figure of Alexandra_clothed0_frown_icon is the file "Alexandra_clothed0_frown.jpg".
Figure of Alexandra_clothed1_frown_icon is the file "Alexandra_clothed1_frown.jpg".
Figure of Alexandra_clothed2_frown_icon is the file "Alexandra_clothed2_frown.jpg".
Figure of Alexandra_clothed0_neutral_icon is the file "Alexandra_clothed0_neutral.jpg".
Figure of Alexandra_clothed0_smile_icon is the file "Alexandra_clothed0_smile.jpg".
Figure of Alexandra_naked_smile_icon is the file "Alexandra_naked_smile.jpg".
Figure of Alexandra_naked_frown_icon is the file "Alexandra_naked_frown.jpg".
Figure of Alex_icon is the file "Alex_ig.jpg".
Figure of Amy_icon is the file "Amy.jpg".
Figure of Amy_face_icon is the file "Amy_face.jpg".
Figure of Anastasia_icon is the file "Anastasia_ig.jpg".
Figure of Andre_icon is the file "Andre.jpg".
Figure of Andre_face_icon is the file "Andre_face.jpg".
Figure of Andrew_icon is the file "andrew_ig.jpg".
Figure of Angie_icon is the file "FS_Angie.jpg".
Figure of Anthony_naked_icon is the file "Anthony_naked.jpg".
Figure of Anthony_clothed_icon is the file "Anthony_clothed.jpg".
Figure of Anthony_face_icon is the file "Anthony_face.jpg".
Figure of Artemis_icon is the file "artemisengulf_ig.jpg".
Figure of Atticus_hard_smile_arms_lowered_icon is the file "Atticus_hard_smile_arms lowered.jpg".
Figure of Atticus_hard_smile_arm_raised_icon is the file "Atticus_hard_smile_arm raised.jpg".
Figure of Atticus_hard_neutral_arm_raised_icon is the file "Atticus_hard_neutral_arm raised.jpg".
Figure of Atticus_soft_neutral_arm_raised_icon is the file "Atticus_soft_neutral_arm raised.jpg".
Figure of Atticus_soft_smile_arms_lowered_icon is the file "Atticus_soft_smile_arms lowered.jpg".
Figure of Atticus_soft_neutral_arms_lowered_icon is the file "Atticus_soft_neutral_arms lowered.jpg".
Figure of Atticus_soft_frown_arms_crossed_icon is the file "Atticus_soft_frown_arms crossed.jpg".
Figure of Atticus_jeans_neutral_arms_lowered_icon is the file "Atticus_jeans_neutral_arms lowered.jpg".
Figure of Atticus_jeans_neutral_arms_crossed_icon is the file "Atticus_jeans_neutral_arms crossed.jpg".
Figure of Atticus_jeans_smile_arms_lowered_icon is the file "Atticus_jeans_smile_arms lowered.jpg".
Figure of Atticus_jeans_smile_arm_raised_icon is the file "Atticus_jeans_smile_arm raised.jpg".
Figure of Atticus_jeans_frown_arms_crossed_icon is the file "Atticus_jeans_frown_arms crossed.jpg".
Figure of Aurora_clothed_icon is the file "Aurora.png".
Figure of Blanche1_icon is the file "blanche_ig1.jpg".
Figure of Blanche2_icon is the file "Blanche_ig2.jpg".
Figure of Blot_icon is the file "FSTF_blot.jpg".
Figure of Boghrim_clothed_icon is the file "Boghrim_clothed.jpg".
Figure of Boghrim_naked_icon is the file "Boghrim_naked.jpg".
Figure of Boghrim_face_icon is the file "Boghrim_face.jpg".
Figure of Bradford_clothed_icon is the file "Bradford_clothed.jpg".
Figure of Bradford_naked_icon is the file "Bradford_naked.jpg".
Figure of Brennan_clothed_icon is the file "Brennan_clothed.jpg".
Figure of Brennan_face_icon is the file "Brennan_face.jpg".
Figure of Brooke_icon is the file "Brooke.jpg".
Figure of Brian_icon is the file "Brian_ig.jpg".
Figure of Buster_icon is the file "Buster_ig.jpg".
Figure of BrutusGood_icon is the file "Brutus_good.jpg".
Figure of Brutus_good_face_icon is the file "Brutus_good_face.jpg".
Figure of BrutusEvil_icon is the file "Brutus_evil.jpg".
Figure of Brutus_evil_face_icon is the file "Brutus_evil_face.jpg".
Figure of Candy_icon is the file "candy_ig.jpg".
Figure of Candy_clothed_icon is the file "Candy_clothed.jpg".
Figure of Candy_naked_icon is the file "Candy_naked.jpg".
Figure of Carl_clothed_icon is the file "Carl_clothed.jpg".
Figure of Carl_naked_icon is the file "Carl_naked.jpg".
Figure of Carl_face_icon is the file "Carl_face.jpg".
Figure of Carl_knot_icon is the file "Carl_knot.jpg".
Figure of Carl_Eric_training_icon is the file "Carl_Eric_training.jpg".
Figure of Carl_Eric_sofa_fuck_1_icon is the file "Carl_Eric_sofa_fuck_1.jpg".
Figure of Carl_Eric_sofa_fuck_2_icon is the file "Carl_Eric_sofa_fuck_2.jpg".
Figure of Carl_Eric_sofa_fuck_3_icon is the file "Carl_Eric_sofa_fuck_3.jpg".
Figure of Carl_Eric_sofa_fuck_4_icon is the file "Carl_Eric_sofa_fuck_4.jpg".
Figure of Chase_face_icon is the file "Chase_face.jpg".
Figure of Chris_breeder_clothed_icon is the file "Chris_breeder_clothed.jpg".
Figure of Chris_breeder_naked_icon is the file "Chris_breeder_naked.jpg".
Figure of Chris_clothed_icon is the file "Chris_clothed.jpg".
Figure of Chris_naked_icon is the file "Chris_naked.jpg".
Figure of Chris_face_icon is the file "Chris_face.jpg".
Figure of Christy_pregnant_icon is the file "ChristyPregnant.jpg".
Figure of Christy_face_icon is the file "Christy_face.jpg".
Figure of Colleen_face_icon is the file "Colleen_face.jpg".
Figure of Colleen_clothed_icon is the file "Colleen_clothed.jpg".
Figure of Colleen_naked_icon is the file "Colleen_naked.jpg".
Figure of Corbin_face_icon is the file "Corbin_face.jpg".
Figure of Danny_naked_icon is the file "Danny_naked.jpg".
Figure of Danny_clothed_icon is the file "Danny_clothed.jpg".
Figure of Danny_face_icon is the file "Danny_face.jpg".
Figure of Darius_face_icon is the file "Darius_face.jpg".
Figure of DarkTyrant_icon is the file "DarkTyrant.jpg".
Figure of Dash_icon is the file "Dash.jpg".
Figure of David_naked_icon is the file "David_naked.jpg".
Figure of David_clothed_icon is the file "David_clothed.jpg".
Figure of David_casualclothed_icon is the file "David_casualclothed.jpg".
Figure of David_hurt_icon is the file "David_hurt.jpg".
Figure of David_barechest_icon is the file "David_barechest.jpg".
Figure of David_face_hurt_icon is the file "David_face_hurt.jpg".
Figure of David_face_naked_icon is the file "David_face_naked.jpg".
Figure of David_face_casualclothed_icon is the file "David_face_casualclothed.jpg".
Figure of David_face_icon is the file "David_face.jpg".
Figure of Dmitri_clothed_icon is the file "Dmitri_clothed.jpg".
Figure of Dmitri_naked_icon is the file "Dmitri_naked.jpg".
Figure of Diego_icon is the file "Diego.jpg".
Figure of Diego_face_icon is the file "Diego_face.jpg".
Figure of DiegoFem_icon is the file "DiegoFem.jpg".
Figure of DiegoFem_face_icon is the file "DiegoFem_face.jpg".
Figure of Doran_icon is the file "Doran.jpg".
Figure of Doran_face_icon is the file "Doran_face.jpg".
Figure of DrMatt_face_icon is the file "Dr.Matt_face.jpg".
Figure of DrMoffatt1_icon is the file "drmoffatt_ig1.jpg".
Figure of DrMoffatt2_icon is the file "drmoffatt_ig2.jpg".
Figure of DrMouse_clothed_icon is the file "Dr.Mouse_clothed.jpg".
Figure of DrMouse_naked_icon is the file "Dr.Mouse_naked.jpg".
Figure of Elijah_evil_icon is the file "Elijah_evil.jpg".
Figure of Elijah_evil_naked_icon is the file "Elijah_evil_naked.jpg".
Figure of Elijah_evil_face_icon is the file "Elijah_evil_face.jpg".
Figure of Elijah_good_icon is the file "Elijah_good.jpg".
Figure of Elijah_good_face_icon is the file "Elijah_good_face.jpg".
Figure of Elijah_good_naked_icon is the file "Elijah_good_naked.jpg".
Figure of Elijah_virgin_icon is the file "Elijah_good.jpg".
Figure of Eric_BriefsM_neutral_icon is the file "Eric_BriefsM_neutral.jpg".
Figure of Eric_FirstMeeting_hostile_icon is the file "Eric_FirstMeeting_hostile.jpg".
Figure of Eric_FirstMeeting_neutral_icon is the file "Eric_FirstMeeting_neutral.jpg".
Figure of Eric_FirstMeeting_shocked_icon is the file "Eric_FirstMeeting_shocked.jpg".
Figure of Eric_Naked_happy_icon is the file "Eric_Naked_happy.jpg".
Figure of Eric_Naked_hostile_icon is the file "Eric_Naked_hostile.jpg".
Figure of Eric_Naked_neutral_icon is the file "Eric_Naked_neutral.jpg".
Figure of Eric_Naked_shocked_icon is the file "Eric_Naked_shocked.jpg".
Figure of Eric_Naked_tongue_icon is the file "Eric_Naked_tongue.jpg".
Figure of Eric_NakedHorseHard_happy_icon is the file "Eric_NakedHorseHard_happy.jpg".
Figure of Eric_NakedHorseSoft_neutral_icon is the file "Eric_NakedHorseSoft_neutral.jpg".
Figure of Eric_NakedOrcHard_happy_icon is the file "Eric_NakedOrcHard_happy.jpg".
Figure of Eric_NakedOrcSoft_neutral_icon is the file "Eric_NakedOrcSoft_neutral.jpg".
Figure of Eric_NakedSatyrHard_happy_icon is the file "Eric_NakedSatyrHard_happy.jpg".
Figure of Eric_NakedSatyrSoft_neutral_icon is the file "Eric_NakedSatyrSoft_neutral.jpg".
Figure of Eric_Panties_neutral_icon is the file "Eric_Panties_neutral.jpg".
Figure of Eric_Soldier_happy_icon is the file "Eric_Soldier_happy.jpg".
Figure of Eric_Soldier_neutral_icon is the file "Eric_Soldier_neutral.jpg".
Figure of Eric_Speedo_happy_icon is the file "Eric_Speedo_happy.jpg".
Figure of Eric_SpeedoM_happy_icon is the file "Eric_SpeedoM_happy.jpg".
Figure of Eric_Student_happy_icon is the file "Eric_Student_happy.jpg".
Figure of Eric_TShirt_happy_icon is the file "Eric_TShirt_happy.jpg".
Figure of Eric_TShirt_hostile_icon is the file "Eric_TShirt_hostile.jpg".
Figure of Eric_TShirt_neutral_icon is the file "Eric_TShirt_neutral.jpg".
Figure of Eric_TShirt_shocked_icon is the file "Eric_TShirt_shocked.jpg".
Figure of Eric_TShirt_tongue_icon is the file "Eric_TShirt_tongue.jpg".
Figure of Eric_clothed_icon is the file "Eric_clothed.jpg".
Figure of Eric_down_icon is the file "Eric_down.jpg".
Figure of Eric_face_icon is the file "Eric_face.jpg".
Figure of Eric_naked_icon is the file "Eric_naked.jpg".
Figure of Eric_sofa_icon is the file "Eric1.jpg".
Figure of Erin_face_icon is the file "Erin_face.jpg".
Figure of Fiona_icon is the file "Fiona.jpg".
Figure of Fancy_icon is the file "FSTF_Fancy_ig.jpg".
Figure of Fang_face_icon is the file "Fang_face.jpg".
Figure of Felix_icon is the file "Felix.jpg".
Figure of Francois_icon is the file "Francois_ig.jpg".
Figure of Frank_icon is the file "Frank.jpg".
Figure of Gabriel_icon is the file "Gabriel.jpg".
Figure of Garrett_icon is the file "garrett_ig.jpg".
Figure of Garth_face_icon is the file "Garth_face.jpg".
Figure of Gillian_icon is the file "Gillian_ig.jpg".
Figure of Gina_face_icon is the file "Gina_face.jpg".
Figure of Gobby_icon is the file "gobby_ig.jpg".
Figure of Grant_face_icon is the file "Grant_face.jpg".
Figure of Grant_icon is the file "grant_ig.jpg".
Figure of Grant2_icon is the file "grant_ig2.jpg".
Figure of Hadiya_0_icon is the file "hadiya_0_ig.jpg".
Figure of Hadiya_icon is the file "Hadiya_ig.jpg".
Figure of Hayato_icon is the file "Hayato_reading.jpg".
Figure of Harold_icon is the file "Harold.jpg".
Figure of Harold_naked_icon is the file "Harold_naked.jpg".
Figure of Helen_naked_icon is the file "Helen.png".
Figure of Hobo_icon is the file "Hobo.jpg".
Figure of Honey_icon is the file "Honey_ig.jpg".
Figure of Isaac_clothed_icon is the file "Isaac_clothed.jpg".
Figure of Isaac_hard_icon is the file "Isaac_hard.jpg".
Figure of Isaac_soft_icon is the file "Isaac_soft.jpg".
Figure of Isaac_face_icon is the file "Isaac_face.jpg".
Figure of James_icon is the file "james_ig.jpg".
Figure of Janice_icon is the file "FS_Janice_ig.jpg".
Figure of Jason_clothed_icon is the file "Jason_clothed.jpg".
Figure of Jason_naked_icon is the file "Jason_naked.jpg".
Figure of Jill_icon is the file "Jill.jpg".
Figure of Jimmy_icon is the file "Jimmy_ig.jpg".
Figure of Katherine_icon is the file "Katherine.jpg".
Figure of Karel&Isaac_clothed_icon is the file "Karel & Isaac_clothed.jpg".
Figure of Karel&Isaac_naked_icon is the file "Karel & Isaac_naked.jpg".
Figure of Karel_clothed_icon is the file "Karel_clothed.jpg".
Figure of Karel_hard_icon is the file "Karel_hard.jpg".
Figure of Karel_soft_icon is the file "Karel_soft.jpg".
Figure of Karel_face_icon is the file "Karel_face.jpg".
Figure of Katya_clothed_icon is the file "Katya.png".
Figure of Klauz_face_icon is the file "Klauz_face.jpg".
Figure of Koghh_clothed_icon is the file "Koghh_clothed.jpg".
Figure of Koghh_naked_icon is the file "Koghh_naked.jpg".
Figure of Koghh_Yatur_naked_icon is the file "Koghh_Yatur_naked.jpg".
Figure of Korvin_blackcollar_icon is the file "Korvin_blackcollar.jpg".
Figure of Korvin_blackcollar_face_icon is the file "Korvin_blackcollar_face.jpg".
Figure of Korvin_pinkcollar_icon is the file "Korvin_pinkcollar.jpg".
Figure of Korvin_pinkcollar_face_icon is the file "Korvin_pinkcollar_face.jpg".
Figure of Krampus_hard_icon is the file "Krampus_hard.jpg".
Figure of Krampus_soft_icon is the file "Krampus_soft.jpg".
Figure of Jay_elf_outfit_icon is the file "Jay_elf_outfit.jpg".
Figure of Jay_leggins_icon is the file "Jay_leggins.jpg".
Figure of Jay_naked_icon is the file "Jay_naked.jpg".
Figure of Jay_suit_icon is the file "Jay_suit.jpg".
Figure of Jay_suit_quest_icon is the file "Jay_suit_quest.jpg".
Figure of Jay_undies_icon is the file "Jay_undies.jpg".
Figure of LeonardViolin_icon is the file "Leonardv_ig.jpg".
Figure of Lilith_clothed_icon is the file "Succubus_clothed.jpg".
Figure of Lilith_naked_icon is the file "Succubus_naked.jpg".
Figure of Lilith_face_icon is the file "Succubus_face.jpg".
Figure of Lilith_boobs_icon is the file "Succubus_boobs.jpg".
Figure of Lindsey_hard_icon is the file "Lindsey_hard.jpg".
Figure of Lindsey_soft_icon is the file "Lindsey_soft.jpg".
Figure of Malakhi_icon is the file "Malakhi.jpg".
Figure of MasterMind_icon is the file "MasterMind_ig.jpg".
Figure of MarcOrwell_icon is the file "MarcOrwell.jpg".
Figure of Marc_face_icon is the file "Marc_face.jpg".
Figure of Marc_fucked_icon is the file "Marc_fucked.jpg".
Figure of Mason_icon is the file "Mason.jpg".
Figure of Medea_face_icon is the file "Medea_face.jpg".
Figure of Mike_face_icon is the file "Mike_face.jpg".
Figure of Mike_icon is the file "Mike.jpg".
Figure of Mogdraz_clothed_icon is the file "Mogdraz_clothed.jpg".
Figure of Mogdraz_face_icon is the file "Mogdraz_face.jpg".
Figure of Mogdraz_nakedsoft_icon is the file "Mogdraz_nakedsoft.jpg".
Figure of Mogdraz_nakedhard_icon is the file "Mogdraz_nakedhard.jpg".
Figure of Mogdraz_noharness_icon is the file "Mogdraz_noharness.jpg".
Figure of Mogdraz_underwear_icon is the file "Mogdraz_underwear.jpg".
Figure of Monty_ass_icon is the file "Monty_ass.jpg".
Figure of Monty_clothed_icon is the file "Monty_clothed.jpg".
Figure of Monty_combat_icon is the file "Monty_combat.jpg".
Figure of Monty_postcombat_icon is the file "Monty_postcombat.jpg".
Figure of Monty_face_icon is the file "Monty_face.jpg".
Figure of Monty_naked_icon is the file "Monty_naked.jpg".
Figure of Moreau_face_icon is the file "Moreau_face.jpg".
Figure of Moreau_hard_icon is the file "Moreau_hard.jpg".
Figure of Moreau_soft_icon is the file "Moreau_soft.jpg".
Figure of Mul_clothed_icon is the file "Mul_clothed.jpg".
Figure of Mul_naked_icon is the file "Mul_naked.jpg".
Figure of Mul_face_icon is the file "Mul_face.jpg".
Figure of Nadia_icon is the file "FS_Nadia_ig.jpg".
Figure of Nelson_clothed_icon is the file "Nelson_clothed.jpg".
Figure of Nelson_naked_icon is the file "Nelson_naked.jpg".
Figure of Nermine_clothed_icon is the file "Nermine_clothed.jpg".
Figure of Nermine_clothed_face_icon is the file "Nermine_clothed_face.jpg".
Figure of Nermine_naked_icon is the file "Nermine_naked.jpg".
Figure of Nermine_naked_face_icon is the file "Nermine_naked_face.jpg".
Figure of Newt_icon is the file "Newt_ig.jpg".
Figure of Micaela_icon is the file "micaela_ig.jpg".
Figure of Orc_Brothers_clothed_icon is the file "Orc_Brothers_naked.jpg".
Figure of Orc_Brothers_naked_icon is the file "Orc_Brothers_naked.jpg".
Figure of Orbul_clothed_icon is the file "Orbul_clothed.jpg".
Figure of Orbul_naked_icon is the file "Orbul_naked.jpg".
Figure of Orthas_face_icon is the file "Orthas_face.jpg".
Figure of Paula_icon is the file "Paula_ig.jpg".
Figure of Penny_icon is the file "Penny.jpg".
Figure of Rachel_icon is the file "Rachel_ig.jpg".
Figure of Rane_clothed_icon is the file "Rane_clothed.jpg".
Figure of Rane_face_icon is the file "Rane_face.jpg".
Figure of Ronda_icon is the file "Ronda.jpg".
Figure of Rod_icon is the file "Rod.jpg".
Figure of RondaSR_icon is the file "ronda_ig.jpg".
Figure of Ruby_naked_icon is the file "Ruby_naked.jpg".
Figure of Ryousei_face_icon is the file "Ryousei_face.jpg".
Figure of Ryousei_fundoshi_icon is the file "Ryousei_fundoshi.jpg".
Figure of Ryousei_naked_icon is the file "Ryousei_naked.jpg".
Figure of Ryousei_wink_icon is the file "Ryousei_wink.jpg".
Figure of Sally_icon is the file "sally_ig.jpg".
Figure of SantaClaws_face_icon is the file "Santa Claws.jpg".
Figure of sandy_icon is the file "sandra.jpg".
Figure of Sarah_clothed_icon is the file "Sarah_clothed.jpg".
Figure of Sarah_face_icon is the file "Sarah_face.jpg".
Figure of Sarah_face_naked_icon is the file "Sarah_face_naked.jpg".
Figure of Sarah_naked_icon is the file "Sarah_naked.jpg".
Figure of Septus_icon is the file "Septus.jpg".
Figure of Septus_face_icon is the file "Septus_face.jpg".
Figure of SgtMarks_icon is the file "sgtmarks_ig.jpg".
Figure of Sidney_wusky_Icon is the file "Sidney_wusky.jpg".
Figure of Sidney_vixen_Icon is the file "Sidney_vixen.jpg".
Figure of Sidney_clothed_Icon is the file "Sidney_otteress.jpg".
Figure of Skarnoth_undies_icon is the file "Skarnoth_undies.jpg".
Figure of Skarnoth_naked_icon is the file "Skarnoth_naked.jpg".
Figure of Snow_icon is the file "Snow.jpg".
Figure of Sonny_halfwool_jeans_icon is the file "Sonny_halfwool_jeans.jpg".
Figure of Sonny_halfwool_nude_icon is the file "Sonny_halfwool_nude.jpg".
Figure of Sonny_shaved_jeans_icon is the file "Sonny_shaved_jeans.jpg".
Figure of Sonny_shaved_nude_icon is the file "Sonny_shaved_nude.jpg".
Figure of Sonny_face_icon is the file "Sonny_face.jpg".
Figure of Spike_jacket_icon is the file "Spike_jacket.jpg".
Figure of Spike_clothed_icon is the file "Spike_clothed.jpg".
Figure of Spike_shirtless_icon is the file "Spike_shirtless.jpg".
Figure of Spike_jockstrap_icon is the file "Spike_jockstrap.jpg".
Figure of Spike_straps_icon is the file "Spike_straps.jpg".
Figure of Spike_straps_hard_icon is the file "Spike_straps_hard.jpg".
Figure of Spike_speedo_icon is the file "Spike_speedo.jpg".
Figure of Spike_face_icon is the file "Spike_face.jpg".
Figure of Spike_hard_icon is the file "Spike_hard.jpg".
Figure of Spike_naked_hard_icon is the file "Spike_naked_hard.jpg".
Figure of Spike_naked_soft_icon is the file "Spike_naked_soft.jpg".
Figure of Stella_icon is the file "Stella_ig.jpg".
Figure of Susan_face_icon is the file "Susan_face.jpg".
Figure of Susan_FHerm_clothed_icon is the file "Susan_FHerm_clothed.jpg".
Figure of Susan_FHerm_hard_icon is the file "Susan_FHerm_hard.jpg".
Figure of Sven_naked_icon is the file "Sven_naked.jpg".
Figure of Sven_tail_icon is the file "Sven_tail.jpg".
Figure of Tehuantl_Male_Face_icon is the file "Tehuantl_Male_Face.jpg".
Figure of Tehuantl_Male_clothed_icon is the file "Tehuantl_Male_clothed.jpg".
Figure of Tehuantl_Male_hard_icon is the file "Tehuantl_Male_hard.jpg".
Figure of Tehuantl_Female_Face_icon is the file "Tehuantl_Female_Face.jpg".
Figure of Timothy_icon is the file "Timothy.jpg".
Figure of TinyTim_icon is the file "Tiny_Solo.jpg".
Figure of TinyTim_face_icon is the file "Tiny_Face.jpg".
Figure of TinyTim_In_Action_icon is the file "Tiny_In_Action.jpg".
Figure of Thomas_erect_icon is the file "Thomas_erect.jpg".
Figure of Thomas_face_icon is the file "Thomas_face.jpg".
Figure of Thomas_soft_icon is the file "Thomas_soft.jpg".
Figure of Toven_clothed_icon is the file "Toven_clothed.jpg".
Figure of Toven_naked_icon is the file "Toven_naked.jpg".
Figure of Tristian_icon	is the file "Tristian.jpg".
Figure of TSW_icon is the file "TSW.jpg".
Figure of TSW_headshot_icon is the file "TSW_headshot.png".
Figure of TSW_naked_icon is the file "TSW_naked.jpg".
Figure of TSW_sansNecklace_icon is the file "TSW_sansNecklace.jpg".
Figure of Tyke_clothed_icon is the file "Tyke_clothed.jpg".
Figure of Tyke_naked_icon is the file "Tyke_naked.jpg".
Figure of Urik_ass_icon is the file "Urik_ass.jpg".
Figure of Urik_clothed_icon is the file "Urik_clothed.jpg".
Figure of Urik_face_icon is the file "Urik_face.jpg".
Figure of Urik_naked_icon is the file "Urik_naked.jpg".
Figure of Valerie_icon is the file "Valerie.jpg".
Figure of Violet_face_icon is the file "Violet_face.jpg".
Figure of Voodoo_Gecko_icon is the file "Voodoo_Gecko.jpg".
Figure of Chris_warrior_clothed_icon is the file "Chris_warrior_clothed.jpg".
Figure of Chris_warrior_naked_icon is the file "Chris_warrior_naked.jpg".
Figure of Xaedihr_Full_icon is the file "Xaedihr_Full.jpg".
Figure of Xaedihr_FullMagic_icon is the file "Xaedihr_FullMagic.jpg".
Figure of Xaedihr_FullNoRuby_icon is the file "Xaedihr_FullNoRuby.jpg".
Figure of Xaedihr_Underwear_icon is the file "Xaedihr_Underwear.jpg".
Figure of Xaedihr_NudeSoft_icon is the file "Xaedihr_NudeSoft.jpg".
Figure of Xaedihr_NudeHard_icon is the file "Xaedihr_NudeHard.jpg".
Figure of Xaedihr_Portrait_icon is the file "Xaedihr_Portrait.jpg".
Figure of Yatur_clothed_icon is the file "Yatur_clothed.jpg".
Figure of Yatur_naked_icon is the file "Yatur_naked.jpg".
Figure of Yolanda_icon is the file "Yolanda_ig.jpg".
Figure of Zigor_icon is the file "Zigor_ig.jpg".
Figure of Zoe_face_icon is the file "Zoe_face.jpg".
Figure of Zoe_clothed_icon is the file "Zoe_clothed.jpg".
Figure of Zoe_naked_icon is the file "Zoe_naked.jpg".

[objects]
Figure of Item_Bottle_Cum is the file "Item_Bottle_Cum.jpg".
Figure of Item_Bottle_Demon_Seed is the file "Item_Bottle_Demon Seed.jpg".
Figure of Item_Bottle_Dirty_Water is the file "Item_Bottle_Dirty Water.jpg".
Figure of Item_Bottle_Empty_Bottle is the file "Item_Bottle_Empty Bottle.jpg".
Figure of Item_Bottle_Femcum is the file "Item_Bottle_Femcum.jpg".
Figure of Item_Bottle_Silver_Cum is the file "Item_Bottle_Silver Cum.jpg".
Figure of Item_Fur_black is the file "Item_Fur_black.jpg".
Figure of Item_Fur_blonde is the file "Item_Fur_blonde.jpg".
Figure of Item_Fur_brown is the file "Item_Fur_brown.jpg".
Figure of Item_Fur_dappled is the file "Item_Fur_dappled.jpg".
Figure of Item_Fur_dark_brown is the file "Item_Fur_dark brown.jpg".
Figure of Item_Fur_dark_grey is the file "Item_Fur_dark grey.jpg".
Figure of Item_Fur_gold is the file "Item_Fur_gold.jpg".
Figure of Item_Fur_grey_and_white is the file "Item_Fur_grey and white.jpg".
Figure of Item_Fur_grey is the file "Item_Fur_grey.jpg".
Figure of Item_Fur_orange is the file "Item_Fur_orange.jpg".
Figure of Item_Fur_pink is the file "Item_Fur_pink.jpg".
Figure of Item_Fur_tan is the file "Item_Fur_tan.jpg".
Figure of Item_Fur_white is the file "Item_Fur_white.jpg".
Figure of Item_Gel_Bitch_Breaker is the file "Item_Gel_Bitch Breaker.jpg".
Figure of Item_Gel_blue is the file "Item_Gel_blue.jpg".
Figure of Item_Gel_green is the file "Item_Gel_green.jpg".
Figure of Item_Gel_pink is the file "Item_Gel_pink.jpg".
Figure of Item_Gel_purple is the file "Item_Gel_purple.jpg".
Figure of Item_Gel_Pussy_Spreader is the file "Item_Gel_Pussy Spreader.jpg".
Figure of Item_Gel_RightnTight is the file "Item_Gel_RightnTight.jpg".
Figure of Item_Gel_Sissifier is the file "Item_Gel_Sissifier.jpg".
Figure of Item_Wyvern_Goop is the file "Item_Wyvern Goop.jpg".

[scene icons]
Figure of BrutusFuckingDavid_icon is the file "Brutus&David1.jpg". [Brutus fucking David]
Figure of BT_Trapped_icon is the file "Bottlenose_Trapped_ig.jpg". [Encased by Bottlenose Toy]
Figure of Christyend_icon is the file "Christyend_ig.jpg". [for 'Tourist Attraction' ending only.]
Figure of Corbin_Felinoid_icon is the file "Corbin_Felinoid.jpg". [riding the cat]
Figure of DukeShawnFuck_icon is the file "Duke&Shawn.jpg". [Shawn topping Duke scene.]
Figure of DUP_FloorShow_icon is the file "DUP_FloorShow_ig.jpg". [The Down Under Pub's floor show.]
Figure of EricRidingRane_icon is the file "Rane&Eric3.jpg". [make-up sex]
Figure of Eric_Urik_naked_icon is the file "Eric_Urik_naked.jpg".
Figure of Boy_To_Fox_Shampoo1_icon is the file "Boy_To_Fox_Shampoo1.jpg".
Figure of Boy_To_Fox_Shampoo2_icon is the file "Boy_To_Fox_Shampoo2.jpg".
Figure of Fang_Candy_icon is the file "Fang_Candy_ig.jpg". [Fang topping Candy scene.]
Figure of Malakhi_Barnabas_icon is the file "Malakhi_Barnabas.jpg".
Figure of Malakhi_Kano_icon is the file "Malakhi_Kano.jpg".
Figure of Mammoth_CV1_icon is the file "Mammoth_CV1.jpg". [Mammoth cock-vore scene 1.]
Figure of Mammoth_CV2_icon is the file "Mammoth_CV2.jpg". [Mammoth cock-vore scene 2.]
Figure of Mammoth_CV3_icon is the file "Mammoth_CV3.jpg". [Mammoth cock-vore scene 3.]
Figure of Mammoth_CV4_icon is the file "Mammoth_CV4.jpg". [Mammoth cock-vore scene 4.]
Figure of Mammoth_CV5_icon is the file "Mammoth_CV5.jpg". [Mammoth cock-vore scene 5.]
Figure of Mammoth_CVF_icon is the file "Mammoth_CVF.jpg". [Mammoth pure succumb ending - bonus CV pic.]
Figure of Parasol_Nap_icon is the file "Parasol_Nap.jpg". [female canine lying on the beach]
Figure of SamBadEnd_icon is the file "sambadend_ig.jpg". [Sam's Bad End to assault and infection.]
Figure of Shy_Vixen_icon is the file "Shy_Vixen.jpg".
Figure of SkunkbeastLord_icon is the file "SkunkbeastLord_ig.jpg". [Skunkbeast Lord battle.]
Figure of SpidertaurAlleySex_icon is the file "SpidertaurAlleySex.jpg". [mid-sex scene graphic.]
Figure of Talov_Kerr_Barrel_icon is the file "Talov_Kerr_Barrel.jpg". [satyrs with barrel]
Figure of Talov_Kerr_Party_icon is the file "Talov_Kerr_Party.jpg". [satyrs in the frat party]
Figure of RaneDefendingEric_icon is the file "Rane&Eric1.jpg". [Hellhound fight]
Figure of RaneSavingEric_icon is the file "Rane&Eric2.jpg". [after the Hellhound fight]
Figure of SkinDiagram1_icon is the file "SkinDiagram1.jpg".
Figure of SkinDiagram2_icon is the file "SkinDiagram2.jpg".

[maps]
Figure of Beach_Overlook_icon is the file "Beach_overlook.jpg".
Figure of Map_Smith_Haven_Mall_icon is the file "Map_Mall.jpg".
Figure of Map_Tenvale_College_icon is the file "Campus_Map.jpg".
Figure of Map_Bunker_Main_icon is the file "Map_Bunker_Main.jpg".
Figure of Map_Bunker_Restroom_icon is the file "Map_Bunker_Restroom.jpg".
Figure of Map_Bunker_Shower_icon is the file "Map_Bunker_Shower.jpg".
Figure of Map_Bunker_Storeroom_icon is the file "Map_Bunker_Storeroom.jpg".
Figure of Map_City_icon is the file "CityMap_small.jpg".
Figure of Map_Library_Back_icon is the file "Map_Library_Back.jpg".
Figure of Map_Library_Front_icon is the file "Map_Library_Front.jpg".
Figure of Map_Library_Fountain_icon is the file "Map_Library_Fountain.jpg".
Figure of Map_Library_Street_icon is the file "Map_Library_Street.jpg".
Figure of Map_Library_Garden_icon is the file "Map_Library_Garden.jpg".
Figure of Map_Library_Shack_icon is the file "Map_Library_Shack.jpg".
Figure of Map_Library_North1_icon is the file "Map_Library_North1.jpg".
Figure of Map_Library_North2_icon is the file "Map_Library_North2.jpg".
Figure of Map_Library_North3_icon is the file "Map_Library_North3.jpg".
Figure of Map_Library_North4_icon is the file "Map_Library_North4.jpg".
Figure of Map_Library_South1_icon is the file "Map_Library_South1.jpg".
Figure of Map_Library_South2_icon is the file "Map_Library_South2.jpg".
Figure of Map_Library_South3_icon is the file "Map_Library_South3.jpg".
Figure of Map_Library_2F_West_icon is the file "Map_Library_2F_West.jpg".
Figure of Map_Library_2F_North_icon is the file "Map_Library_2F_North.jpg".
Figure of Map_Library_2F_East_icon is the file "Map_Library_2F_East.jpg".
Figure of Map_Library_2F_South_icon is the file "Map_Library_2F_South.jpg".
Figure of Map_RedLight_Nopower_1_icon is the file "Map_RedLight_Nopower_1.jpg".
Figure of Map_RedLight_Nopower_2_icon is the file "Map_RedLight_Nopower_2.jpg".
Figure of Map_RedLight_Nopower_3_icon is the file "Map_RedLight_Nopower_3.jpg".
Figure of Map_RedLight_Nopower_4_icon is the file "Map_RedLight_Nopower_4.jpg".
Figure of Map_RedLight_Nopower_5_icon is the file "Map_RedLight_Nopower_5.jpg".
Figure of Map_RedLight_Nopower_6_icon is the file "Map_RedLight_Nopower_6.jpg".
Figure of Map_RedLight_Nopower_7_icon is the file "Map_RedLight_Nopower_7.jpg".
Figure of Map_RedLight_Nopower_8_icon is the file "Map_RedLight_Nopower_8.jpg".
Figure of Map_RedLight_Nopower_9_icon is the file "Map_RedLight_Nopower_9.jpg".
Figure of Map_RedLight_Nopower_10_icon is the file "Map_RedLight_Nopower_10.jpg".
Figure of Map_RedLight_Nopower_11_icon is the file "Map_RedLight_Nopower_11.jpg".
Figure of Map_RedLight_1_icon is the file "Map_RedLight_1.jpg".
Figure of Map_RedLight_2_icon is the file "Map_RedLight_2.jpg".
Figure of Map_RedLight_3_icon is the file "Map_RedLight_3.jpg".
Figure of Map_RedLight_4_icon is the file "Map_RedLight_4.jpg".
Figure of Map_RedLight_5_icon is the file "Map_RedLight_5.jpg".
Figure of Map_RedLight_6_icon is the file "Map_RedLight_6.jpg".
Figure of Map_RedLight_7_icon is the file "Map_RedLight_7.jpg".
Figure of Map_RedLight_8_icon is the file "Map_RedLight_8.jpg".
Figure of Map_RedLight_9_icon is the file "Map_RedLight_9.jpg".
Figure of Map_RedLight_10_icon is the file "Map_RedLight_10.jpg".
Figure of Map_RedLight_11_icon is the file "Map_RedLight_11.jpg".
Figure of Map_Farm_1_icon is the file "Map_Farm_1.jpg".
Figure of Map_Farm_2_icon is the file "Map_Farm_2.jpg".
Figure of Map_Farm_3_icon is the file "Map_Farm_3.jpg".
Figure of Map_Farm_4_icon is the file "Map_Farm_4.jpg".
Figure of Map_Farm_5_icon is the file "Map_Farm_5.jpg".
Figure of Map_Farm_6_icon is the file "Map_Farm_6.jpg".
Figure of Map_Farm_7_icon is the file "Map_Farm_7.jpg".
Figure of Map_Farm_8_icon is the file "Map_Farm_8.jpg".
Figure of Map_Farm_9_icon is the file "Map_Farm_9.jpg".
Figure of Map_Farm_10_icon is the file "Map_Farm_10.jpg".
Figure of Map_Farm_11_icon is the file "Map_Farm_11.jpg".
Figure of Map_Farm_12_icon is the file "Map_Farm_12.jpg".
Figure of Map_Zoo_1_icon is the file "Zoo1.jpg".
Figure of Map_Zoo_2_icon is the file "Zoo2.jpg".
Figure of Map_Zoo_3_icon is the file "Zoo3.jpg".
Figure of Map_Zoo_4_icon is the file "Zoo4.jpg".
Figure of Map_Zoo_5_icon is the file "Zoo5.jpg".
Figure of Map_Zoo_6_icon is the file "Zoo6.jpg".
Figure of Map_Zoo_7_icon is the file "Zoo7.jpg".
Figure of Map_Zoo_8_icon is the file "Zoo8.jpg".
Figure of Map_Zoo_9_icon is the file "Zoo9.jpg".
Figure of Map_Zoo_10_icon is the file "Zoo10.jpg".
Figure of Map_Zoo_11_icon is the file "Zoo11.jpg".
Figure of Map_Zoo_12_icon is the file "Zoo12.jpg".
Figure of Map_Zoo_13_icon is the file "Zoo13.jpg".
Figure of Map_Zoo_14_icon is the file "Zoo14.jpg".
Figure of Map_Zoo_15_icon is the file "Zoo15.jpg".
Figure of Map_Beach_Full_icon is the file "Map_Beach_Full.jpg".
Figure of Map_Beach_1_icon is the file "Map_Beach_1.jpg".
Figure of Map_Beach_2_icon is the file "Map_Beach_2.jpg".
Figure of Map_Beach_3_icon is the file "Map_Beach_3.jpg".
Figure of Map_Beach_4_icon is the file "Map_Beach_4.jpg".
Figure of Map_Beach_5_icon is the file "Map_Beach_5.jpg".
Figure of Map_Beach_6_icon is the file "Map_Beach_6.jpg".
Figure of Map_Beach_7_icon is the file "Map_Beach_7.jpg".
Figure of Map_Beach_8_icon is the file "Map_Beach_8.jpg".
Figure of Map_Beach_9_icon is the file "Map_Beach_9.jpg".
Figure of Map_Beach_10_icon is the file "Map_Beach_10.jpg".
Figure of Map_Beach_11_icon is the file "Map_Beach_11.jpg".
Figure of Map_Beach_12_icon is the file "Map_Beach_12.jpg".
Figure of Map_Beach_13_icon is the file "Map_Beach_13.jpg".
Figure of Map_Beach_14_icon is the file "Map_Beach_14.jpg".
Figure of Map_Beach_15_icon is the file "Map_Beach_15.jpg".

[emap - special]
Figure of emap_special_signalnotfound_icon is the file "emap_special_signalnotfound.png".
Figure of emap_special_shutdown_icon is the file "emap_special_shutdown.png".

[emap - mall]
Figure of emap_mall_alley_icon is the file "emap_mall_alley.png".
Figure of emap_mall_atrium_icon is the file "emap_mall_atrium.png".
Figure of emap_mall_bodyshop_icon is the file "emap_mall_bodyshop.png".
Figure of emap_mall_bransonpartner_icon is the file "emap_mall_bransonpartner.png".
Figure of emap_mall_brookstonebooks_icon is the file "emap_mall_brookstonebooks.png".
Figure of emap_mall_Christmasvillage_icon is the file "emap_mall_Christmasvillage.png".
Figure of emap_mall_eastwing_icon is the file "emap_mall_eastwing.png".
Figure of emap_mall_foodcourt_icon is the file "emap_mall_foodcourt.png".
Figure of emap_mall_foyer_icon is the file "emap_mall_foyer.png".
Figure of emap_mall_gamestore_icon is the file "emap_mall_gamestore.png".
Figure of emap_mall_garage_icon is the file "emap_mall_garage.png".
Figure of emap_mall_guardpost_icon is the file "emap_mall_guardpost.png".
Figure of emap_mall_lockers_icon is the file "emap_mall_lockers.png".
Figure of emap_mall_loteast_icon is the file "emap_mall_loteast.png".
Figure of emap_mall_lotnorth_icon is the file "emap_mall_lotnorth.png".
Figure of emap_mall_lotsouth_icon is the file "emap_mall_lotsouth.png".
Figure of emap_mall_lotwest_icon is the file "emap_mall_lotwest.png".
Figure of emap_mall_nermines_icon is the file "emap_mall_nermines.png".
Figure of emap_mall_pkboutique_icon is the file "emap_mall_pkboutique.png".
Figure of emap_mall_restrooms_icon is the file "emap_mall_restrooms.png".
Figure of emap_mall_shagshack_icon is the file "emap_mall_shagshack.png".
Figure of emap_mall_westwing_icon is the file "emap_mall_westwing.png".

[emap - Capitol building]
Figure of emap_A_Volcanic_Crater_icon  is the file "emap_A_Volcanic_Crater.png".
Figure of emap_Approaching_Capitol_Building_icon is the file "emap_Approaching_Capitol_Building.png".
Figure of emap_Charred_Streets_icon is the file "emap_Charred_Streets.png".
Figure of emap_Path_of_Ashes_icon is the file "emap_Path_of_Ashes.png".
Figure of emap_Rusty_Walkways_icon is the file "emap_Rusty_Walkways.png".
Figure of emap_Salamander_Hideaway_icon is the file "emap_Salamander_Hideaway.png".

[emap - Fire station 86]
Figure of emap_Fire_Station_86_icon is the file "emap_Fire_Station_86.png".
Figure of emap_Firehouse_icon is the file "emap_Firehouse.png".
Figure of emap_Sleeping_Quarters_icon is the file "emap_Sleeping_Quarters.png".

[emap - Green apartment building]
Figure of emap_Brennans_Bathroom_icon is the file "emap_Brennans_Bathroom.png".
Figure of emap_Brennans_Bedroom_icon is the file "emap_Brennans_Bedroom.png".
Figure of emap_Green_Apartment_Building_icon is the file "emap_Green_Apartment_Building.png".
Figure of emap_Green_Lobby_icon is the file "emap_Green_Lobby.png".
Figure of emap_Overgrown_Rooftop_icon is the file "emap_Overgrown_Rooftop.png".
Figure of emap_Survivor_Refuge_icon is the file "emap_Survivor_Refuge.png".

[emap - Milking Facility Entrance]
Figure of emap_Milking_Facility_Entrance_icon is the file "emap_Milking_Facility_Entrance.png".
Figure of emap_Milking_Facility_Factory_icon is the file "emap_Milking_Facility_Factory.png".
Figure of emap_Milking_Facility_Operations_Room_icon is the file "emap_Milking_Facility_Operations_Room.png".

[emap - Pediatrics Lobby]
Figure of emap_Doctors_office_icon is the file "emap_Doctors_office.png".
Figure of emap_Pediatrics_Lobby_icon is the file "emap_Pediatrics_Lobby.png".

[emap - Red Apartment Building]
Figure of emap_Raven_Nest_icon is the file "emap_Raven_Nest.png".
Figure of emap_Red_Apartment_1st_Floor_icon is the file "emap_Red_Apartment_1st_Floor.png".
Figure of emap_Red_Apartment_2nd_Floor_icon is the file "emap_Red_Apartment_2nd_Floor.png".
Figure of emap_Red_Apartment_3rd_Floor_icon is the file "emap_Red_Apartment_3rd_Floor.png".
Figure of emap_Red_Apartment_4th_Floor_icon is the file "emap_Red_Apartment_4th_Floor.png".
Figure of emap_Red_Apartment_Building_icon is the file "emap_Red_Apartment_Building.png".
Figure of emap_Red_Apartment_Rooftop_icon is the file "emap_Red_Apartment_Rooftop.png".

[emap - Park Entrance]
Figure of emap_Hiking_Trail_Bend_icon is the file "emap_Hiking_Trail_Bend.png".
Figure of emap_Hiking_Trail_Split_icon is the file "emap_Hiking_Trail_Split.png".
Figure of emap_Hiking_Trail_Start_icon is the file "emap_Hiking_Trail_Start.png".
Figure of emap_Park_Entrance_icon is the file "emap_Park_Entrance.png".
Figure of emap_Park_Trail_icon is the file "emap_Park_Trail.png".
Figure of emap_Park_Trail_Secret_icon is the file "emap_Park_Trail_Secret.png".
Figure of emap_Shinto_Shrine_icon is the file "emap_Shinto_Shrine.png".
Figure of emap_Stocks_icon is the file "emap_Stocks.png".

[emap - The Palomino]
Figure of emap_Ammys_Flatlet_icon is the file "emap_Ammys_Flatlet.png".
Figure of emap_Palomino_icon is the file " emap_Palomino.png".
Figure of emap_Private_Booths_icon is the file "emap_Private_Booths.png".
Figure of emap_Private_Club_Room_icon is the file "emap_Private_Club_Room.png".
Figure of emap_Topless_Lounge_icon is the file "emap_Topless_Lounge.png".

[emap - Dry Planes]
Figure of emap_Dry_Plains_icon is the file "emap_Dry_Plains.png".
Figure of emap_Hidden_Camp_icon is the file "emap_Hidden_Camp.png".
Figure of emap_Inconspicuous_Trail_icon is the file "emap_Inconspicuous_Trail.png".

[emap - State Fair]
Figure of emap_State_Fair_icon is the file "emap_State_Fair.png".

[emap - Entrance to high rise District]
Figure of emap_Entrance_to_the_High_Rise_District_icon is the file "emap_Entrance_to_the_High_Rise_District.png".
Figure of emap_Overgrown_Street_icon is the file "emap_Overgrown_Street.png".

[emap - Zaphyr]
Figure of emap_Zephyr_Lobby_icon is the file "emap_Zephyr_Lobby.png".
Figure of emap_Zephyr_Storeroom_icon is the file "emap_Zephyr_Storeroom.png".

[emap - Hospital]
Figure of emap_City_Hospital_icon is the file "emap_City_Hospital.png".
Figure of emap_Hospital_Halls_icon is the file "emap_Hospital_Halls.png".
Figure of emap_Hospital_Interior_icon is the file "emap_Hospital_Interior.png".
Figure of emap_Locked_Starwell_icon is the file "emap_Locked_Starwell.png".

[emap - Plant Overview]
Figure of emap_Administration_Offices_icon is the file "emap_Administration_Offices.png".
Figure of emap_Catwalk_icon is the file "emap_Catwalk.png".
Figure of emap_Control_Room_icon is the file "emap_Control_Room.png".
Figure of emap_Plant_Lobby_icon is the file "emap_Plant_Lobby.png".
Figure of emap_Plant_Overview_icon is the file "emap_Plant_Overview.png".

[emap - Power Lines]
Figure of emap_Power_Lines_icon is the file "emap_Power_Lines.png".

[emap - Abandoned Lot]
Figure of emap_Abandoned_Lot_icon is the file "emap_Abandoned_Lot.png".
Figure of emap_Junkyard_Alley_icon is the file "emap_Junkyard_Alley.png".
Figure of emap_Junkyard_Entrance_icon is the file "emap_Junkyard_Entrance.png".
Figure of emap_Storage_Room_icon is the file "emap_Storage_Room.png".

[emap - Museum Foyer]
Figure of emap_Museum_Foyer_icon is the file "emap_Museum_Foyer.png".

[emap - Grey Abbey Library]
Figure of emap_Grey_Abbey_Library_icon is the file "emap_Grey_Abbey_Library.png".
Figure of emap_Attic_icon is the file "emap_Attic.png".
Figure of emap_Back_Library_icon is the file "emap_Back_Library.png".
Figure of emap_Breakroom_icon is the file "emap_Breakroom.png".
Figure of emap_Bunker_icon is the file "emap_Bunker.png".
Figure of emap_Communal_Shower_icon is the file "emap_Communal_Shower.png".
Figure of emap_Computer_Lab_icon is the file "emap_Computer_Lab.png".
Figure of emap_Courtyard_icon is the file "emap_Courtyard.png".
Figure of emap_Darkened_Alcove_icon is the file "emap_Darkened_Alcove.png".
Figure of emap_Garden_View_icon is the file "emap_Garden_View.png".
Figure of emap_Georges_Animal_Emporium_icon is the file "emap_Georges_Animal_Emporium.png".
Figure of emap_Grey_Abbey_2F_icon is the file "emap_Grey_Abbey_2F.png".
Figure of emap_Grey_Abbey_Garden_icon is the file "emap_Grey_Abbey_Garden.png".
Figure of emap_Half_Renovated_Room_icon is the file "emap_Half_Renovated_Room.png".
Figure of emap_Large_Shed_icon is the file "emap_Large_Shed.png".
Figure of emap_Looted_Shops_icon is the file "emap_Looted_Shops.png".
Figure of emap_Main_&_7th_Street_icon is the file "emap_Main_&_7th_Street.png".
Figure of emap_Maintainance_Storeroom_icon is the file "emap_Maintainance_Storeroom.png".
Figure of emap_Makeshift_Rec_Room_icon is the file "emap_Makeshift_Rec_Room.png".
Figure of emap_Pantry_icon is the file "emap_Pantry.png".
Figure of emap_Sitting_Area_icon is the file "emap_Sitting_Area.png".
Figure of emap_Underground_Restroom_icon is the file "emap_Underground_Restroom.png".

[emap - Trevor Lab]
Figure of emap_2F_Trevor_Labs_icon is the file "emap_2F_Trevor_Labs.png".
Figure of emap_Outside_Trevor_Labs_icon is the file "emap_Outside_Trevor_Labs.png".
Figure of emap_Primary_Lab_icon is the file "emap_Primary_Lab.png".
Figure of emap_Trevor_Labs_Lobby_icon is the file "emap_Trevor_Labs_Lobby.png".

[emap - Bright Alley]
Figure of emap_Bright_Alley_icon is the file "emap_Bright_Alley.png".

[emap - Entrance to the Red Light District]
Figure of emap_Atticuss_Bedroom_icon is the file "emap_Atticuss_Bedroom.png".
Figure of emap_Boundary_Street_East_icon is the file "emap_Boundary_Street_East.png".
Figure of emap_Boundary_Street_West_icon is the file "emap_Boundary_Street_West.png".
Figure of emap_BurnedOut_Chapel_icon is the file "emap_BurnedOut_Chapel.png".
Figure of emap_Crimson_Street_icon is the file "emap_Crimson_Street.png".
Figure of emap_Dariuss_Crib_icon is the file "emap_Dariuss_Crib.png".
Figure of emap_Dark_Alley_icon is the file "emap_Dark_Alley.png".
Figure of emap_Dingy_Alley_icon is the file "emap_Dingy_Alley.png".
Figure of emap_Entrance_to_the_Red_Light_District_icon is the file "emap_Entrance_to_the_Red_Light_District.png".
Figure of emap_Hellfire_Cell_icon is the file "emap_Hellfire_Cell.png".
Figure of emap_Hellfire_Club_icon is the file "emap_Hellfire_Club.png".
Figure of emap_Hellfire_Corridor_icon is the file "emap_Hellfire_Corridor.png".
Figure of emap_Hellfire_Dungeon_icon is the file "emap_Hellfire_Dungeon.png".
Figure of emap_Hellfire_Lounge_icon is the file "emap_Hellfire_Lounge.png".
Figure of emap_Hellfire_Restroom_icon is the file "emap_Hellfire_Restroom.png".
Figure of emap_Hellfire_Storage_icon is the file "emap_Hellfire_Storage.png".
Figure of emap_Hellfire_Unknown_icon is the file "emap_Hellfire_Unknown.png".
Figure of emap_Narrow_Alley_icon is the file "emap_Narrow_Alley.png".
Figure of emap_Northern_Street_1_icon is the file "emap_Northern_Street_1.png".
Figure of emap_Northern_Street_2_icon is the file "emap_Northern_Street_2.png".
Figure of emap_Restrained_Desire_icon is the file "emap_Restrained_Desire.png".
Figure of emap_Sacristy_icon is the file "emap_Sacristy.png".
Figure of emap_VIP_Floor_icon is the file "emap_VIP_Floor.png".

[emap - Orc Lair]
Figure of emap_Breeder_Lockup_A_icon is the file "emap_Breeder_Lockup_A.png".
Figure of emap_Bright_Hallway_1_icon is the file "emap_Bright_Hallway_1.png".
Figure of emap_Bright_Hallway_2_icon is the file "emap_Bright_Hallway_2.png".
Figure of emap_Dark_Hallway_1_icon is the file "emap_Dark_Hallway_1.png".
Figure of emap_Dark_Hallway_2_icon is the file "emap_Dark_Hallway_2.png".
Figure of emap_Main_Hall_icon is the file "emap_Main_Hall.png".
Figure of emap_Observation_Room_icon is the file "emap_Observation_Room.png".
Figure of emap_Orc_Lair_Side_Entrance_icon is the file "emap_Orc_Lair_Side_Entrance.png".
Figure of emap_Police_Station_Locker_Room_icon is the file "emap_Police_Station_Locker_Room.png".
Figure of emap_Slave_Cell_1_icon is the file "emap_Slave_Cell_1.png".
Figure of emap_Slave_Cell_2_icon is the file "emap_Slave_Cell_2.png".

[emap - Beach]
Figure of emap_Beach_Plaza_icon is the file "emap_Beach_Plaza.png".
Figure of emap_Boardwalk_icon is the file "emap_Boardwalk.png".
Figure of emap_church_hall_icon is the file "emap_church_hall.png".
Figure of emap_City_Center_icon is the file "emap_City_Center.png".
Figure of emap_City_Entrance_icon is the file "emap_City_Entrance.png".
Figure of emap_City_Market_icon is the file "emap_City_Market.png".
Figure of emap_City_Residential_icon is the file "emap_City_Residential.png".
Figure of emap_Dirty_Sheds_icon is the file "emap_Dirty_Sheds.png".
Figure of emap_End_of_Beach_icon is the file "emap_End_of_Beach.png".
Figure of emap_Open_Ocean_icon is the file "emap_Open_Ocean.png".
Figure of emap_Overgrown_Area_icon is the file "emap_Overgrown_Area.png".
Figure of emap_Public_Beach_icon is the file "emap_Public_Beach.png".
Figure of emap_Resteraunt_icon is the file "emap_Resteraunt.png".
Figure of emap_Rock_Arch_icon is the file "emap_Rock_Arch.png".
Figure of emap_Rocky_Cliff_icon is the file "emap_Rocky_Cliff.png".
Figure of emap_Royal_Bed_Chambers_icon is the file "emap_Royal_Bed_Chambers.png".
Figure of emap_Royal_Palace_Entrance_icon is the file "emap_Royal_Palace_Entrance.png".
Figure of emap_Royal_Throne_Room_icon is the file "emap_Royal_Throne_Room.png".
Figure of emap_Shallow_Bay_icon is the file "emap_Shallow_Bay.png".
Figure of emap_Sunken_Ship_icon is the file "emap_Sunken_Ship.png".
Figure of emap_Sunny_Snacks_icon is the file "emap_Sunny_Snacks.png".
Figure of emap_Wild_Fringe_icon is the file "emap_Wild_Fringe.png".

[emap - Bouncy Castle]
Figure of emap_Ball_Pit_Room_icon is the file "emap_Ball_Pit_Room.png".
Figure of emap_Bouncy_Castle_icon is the file "emap_Bouncy_Castle.png".
Figure of emap_Bouncy_Play_Room_icon is the file "emap_Bouncy_Play_Room.png".
Figure of emap_Castle_Throne_Room_icon is the file "emap_Castle_Throne_Room.png".
Figure of emap_Eastern_Parapets_icon is the file "emap_Eastern_Parapets.png".
Figure of emap_Fencing_Room_icon is the file "emap_Fencing_Room.png".
Figure of emap_Great_Hall_icon is the file "emap_Great_Hall.png".
Figure of emap_Kings_Chambers_icon is the file "emap_Kings_Chambers.png".
Figure of emap_Knights_Chambers_icon is the file "emap_Knights_Chambers.png".
Figure of emap_Lower_Tower_icon is the file "emap_Lower_Tower.png".
Figure of emap_Punching_Pillars_icon is the file "emap_Punching_Pillars.png".
Figure of emap_Tower_Turret_icon is the file "emap_Tower_Turret.png".
Figure of emap_Toy_Room_icon is the file "emap_Toy_Room.png".
Figure of emap_Upper_Hall_icon is the file "emap_Upper_Hall.png".
Figure of emap_Upper_Tower_icon is the file "emap_Upper_Tower.png".
Figure of emap_Western_Parapets_icon is the file "emap_Western_Parapets.png".

[emap - College Campus]
Figure of emap_Astroslide_Field_Locker_Room_icon is the file "emap_Astroslide_Field_Locker_Room.png".
Figure of emap_Astroslide_Football_Field_icon is the file "emap_Astroslide_Football_Field.png".
Figure of emap_Athletic_Street_icon is the file "emap_Athletic_Street.png".
Figure of emap_College_Administration_Building_icon is the file "emap_College_Administration_Building.png".
Figure of emap_College_Belltower_icon is the file "emap_College_Belltower.png".
Figure of emap_College_Campus_Entrance_icon is the file "emap_College_Campus_Entrance.png".
Figure of emap_College_Fountain_icon is the file "emap_College_Fountain.png".
Figure of emap_College_Walkway_East_icon is the file "emap_College_Walkway_East.png".
Figure of emap_College_Walkway_Northeast_icon is the file "emap_College_Walkway_Northeast.png".
Figure of emap_College_Walkway_Northwest_icon is the file "emap_College_Walkway_Northwest.png".
Figure of emap_College_Walkway_West_icon is the file "emap_College_Walkway_West.png".
Figure of emap_Deans_Office_icon is the file "emap_Deans_Office.png".
Figure of emap_Dorm_Street_icon is the file "emap_Dorm_Street.png".
Figure of emap_Greek_Street_icon is the file "emap_Greek_Street.png".
Figure of emap_Jadakos_Room_icon is the file "emap_Jadakos_Room.png".
Figure of emap_Jakes_Room_icon is the file "emap_Jakes_Room.png".
Figure of emap_Julians_Room_icon is the file "emap_Julians_Room.png".
Figure of emap_Lecture_Street_icon is the file "emap_Lecture_Street.png".
Figure of emap_Pericles_Room_icon is the file "emap_Pericles_Room.png".
Figure of emap_Randalls_Room_icon is the file "emap_Randalls_Room.png".
Figure of emap_Richards_Room_icon is the file "emap_Richards_Room.png".
Figure of emap_Second_Floor_Male_Dorms_icon is the file "emap_Second_Floor_Male_Dorms.png".
Figure of emap_Showers_icon is the file "emap_Showers.png".
Figure of emap_Sports_Arena_Lockerroom_icon is the file "emap_Sports_Arena_Lockerroom.png".
Figure of emap_Stewarts_Room_icon is the file "emap_Stewarts_Room.png".
Figure of emap_Sylvias_Room_icon is the file "emap_Sylvias_Room.png".
Figure of emap_Tenvale_College_Female_Dorms_icon is the file "emap_Tenvale_College_Female_Dorms.png".
Figure of emap_Tenvale_College_Library_icon is the file "emap_Tenvale_College_Library.png".
Figure of emap_Tenvale_College_Male_Dorms_icon is the file "emap_Tenvale_College_Male_Dorms.png".
Figure of emap_The_Clouds_icon is the file "emap_The_Clouds.png".
Figure of emap_Thunderbolts_Stable_icon is the file "emap_Thunderbolts_Stable.png".
Figure of emap_Wallys_Room_icon is the file "emap_Wallys_Room.png".
Figure of emap_Your_Dorm_Room_icon is the file "emap_Your_Dorm_Room.png".

[emap - Urban Forest]
Figure of emap_Avalon_Crossroads_icon is the file "emap_Avalon_Crossroads.png".
Figure of emap_Forest_Borrow_Entrance_icon is the file "emap_Forest_Borrow_Entrance.png".
Figure of emap_Forest_Cave_Entrance_icon is the file "emap_Forest_Cave_Entrance.png".
Figure of emap_Frozen_Cave_Tunnel_icon is the file "emap_Frozen_Cave_Tunnel.png".
Figure of emap_Ice_Foxes_Den_icon is the file "emap_Ice_Foxes_Den.png".
Figure of emap_Ironscale_Hollow_icon is the file "emap_Ironscale_Hollow.png".
Figure of emap_Kobolds_icon is the file "emap_Kobolds.png".
Figure of emap_Mysterious_Glade_icon is the file "emap_Mysterious_Glade.png".
Figure of emap_Snowy_Forest_Trail_icon is the file "emap_Snowy_Forest_Trail.png".
Figure of emap_Urban_Forest_icon is the file "emap_Urban_Forest.png".
Figure of emap_Virgins_Pass_icon is the file "emap_Virgins_Pass.png".

[emap - Warehouse District]
Figure of emap_Gloomy_Warehouse_icon is the file "emap_Gloomy_Warehouse.png".
Figure of emap_Northern_Docks_icon is the file "emap_Northern_Docks.png".
Figure of emap_Packaging_Warehouse_icon is the file "emap_Packaging_Warehouse.png".
Figure of emap_South_Harbor_icon is the file "emap_South_Harbor.png".
Figure of emap_Warehouse_District_icon is the file "emap_Warehouse_District.png".

[emap - Zoo]
Figure of emap_Bird_Enclosure_icon is the file "emap_Bird_Enclosure.png".
Figure of emap_Bird_House_icon is the file "emap_Bird_House.png".
Figure of emap_Border_Wall_icon is the file "emap_Border_Wall.png".
Figure of emap_Cheetah_Habitat_icon is the file "emap_Cheetah_Habitat.png".
Figure of emap_Fence_Path_icon is the file "emap_Fence_Path.png".
Figure of emap_Gator_Pit_icon is the file "emap_Gator_Pit.png".
Figure of emap_Main_Path_1_icon is the file "emap_Main_Path_1.png".
Figure of emap_Main_Path_2_icon is the file "emap_Main_Path_2.png".
Figure of emap_Monkey_House_icon is the file "emap_Monkey_House.png".
Figure of emap_Snake_House_icon is the file "emap_Snake_House.png".
Figure of emap_Zoo_Entrance_icon is the file "emap_Zoo_Entrance.png".
Figure of emap_Zoo_Entryway_icon is the file "emap_Zoo_Entryway.png".
Figure of emap_Zoo_Giftshop_icon is the file "emap_Zoo_Giftshop.png".
Figure of emap_Zoo_Parking_icon is the file "emap_Zoo_Parking.png".
Figure of emap_Zoo_Rest_Area_icon is the file "emap_Zoo_Rest_Area.png".
Figure of emap_Zoo_Restrooms_icon is the file "emap_Zoo_Restrooms.png".

before examining a thing (called t):
	if the icon of t is figure of pixel:
		continue the action;
	project the icon of t;

[OLD BACKUP]
[to project (x - a figure name):
	if graphics is true and NewGraphics is false:
		repeat with y running from 1 to number of filled rows in table of game art:
			choose row y in table of game art;
			if icon entry is x and artist entry is not listed in BlockList of Player:
				display x;
				break;]

[Inline Project ONLY function]
to inline_project (x - a figure name):
	if graphics is true:
		repeat with y running from 1 to number of filled rows in table of game art:
			choose row y in table of game art;
			if icon entry is x and artist entry is not listed in BlockList of Player:
				display x;
				now ngraphics_currentartist is artist entry; [graphics processing]
				update the status line;
				break;

[New Hybrid Project (Reverts to inline if NewGraphics disabled)]
to project (x - a figure name):
	if graphics is true and NewGraphics is true:
		[repeat with z running from 1 to number of filled rows in table of game art:
			choose row z in Table of Zpc Location Reference;
			if debugactive is 1 and x is icon entry in Table of Zpc Location Reference:
				say "Found zpc Figure! attempting projection...";]
		repeat with y running from 1 to number of filled rows in table of game art:
			choose row y in table of game art;
			if icon entry is x and artist entry is not listed in BlockList of Player:
				if formatrule entry is "normal":
					if NewGraphicsDebugMode is true:
						say "Graphics Debug - Normal Mode";
					[blank window to backgroundcolor entry;]
					now graphics background color is backgroundcolor entry;
					if NewGraphicsDebugMode is true: [inline debug report toggled by "graphics_debug"]
						say "Graphics Debug - NAME : [bold type][title entry][roman type] [line break]";
						say "Graphics Debug - ICON ENTRY : [bold type][icon entry][roman type] [line break]";
						say "Graphics Debug - ARTIST ENTRY : [bold type][artist entry][roman type] [line break]";
						say "Graphics Debug - COLOR : [bold type][backgroundcolor entry][roman type] [line break]";
						say "This is developer debug information, if you are seeing this by accident try typing 'graphics_debug' to toggle this off.[line break]";
					now the currently shown picture is x;
					follow the current graphics drawing rule;
					now ngraphics_currentartist is artist entry; [graphics processing]
					update the status line;
				else if formatrule entry is "inline_only":
					if NewGraphicsDebugMode is true:
						say "Graphics Debug - Inline Mode";
					display x;
					now ngraphics_currentartist is artist entry; [graphics processing]
					update the status line;
					break;
				else:
					if NewGraphicsDebugMode is true:
						say "Graphics Debug - Status Error";
	else if graphics is true and NewGraphics is false: [legacy fallback (new disabled)]
		repeat with y running from 1 to number of filled rows in table of game art:
			choose row y in table of game art;
			if icon entry is x and artist entry is not listed in BlockList of Player:
				display x;
				now ngraphics_currentartist is artist entry; [graphics processing]
				update the status line;
				break;

		[else if icon entry is x and formatrule entry is window_only:
			if graphics is true and NewGraphics is true:
				repeat with y running from 1 to number of filled rows in table of game art:
					choose row y in table of game art;
					if icon entry is x and artist entry is not listed in BlockList of Player:
						[blank window to backgroundcolor entry;]
						now graphics background color is backgroundcolor entry;
						if NewGraphicsDebugMode is true: [inline debug report toggled by "graphics_debug"]
							say "Graphics Debug - NAME : [bold type][title entry][roman type] [line break]";
							say "Graphics Debug - ICON ENTRY : [bold type][icon entry][roman type] [line break]";
							say "Graphics Debug - ARTIST ENTRY : [bold type][artist entry][roman type] [line break]";
							say "Graphics Debug - COLOR : [bold type][backgroundcolor entry][roman type] [line break]";
							say "This is debug function, if you are seeing this by accident try typing 'graphics_debug' to toggle this off.[line break]";
							now the currently shown picture is x;
							follow the current graphics drawing rule;
							if graphics is true and NewGraphics is false:
								repeat with y running from 1 to number of filled rows in table of game art:
									choose row y in table of game art;
									if icon entry is x and artist entry is not listed in BlockList of Player:
										display x;
										break;]

[COMPOUND -> nproject]
[to ngraphics_project (x - a figure name):
	if graphics is true and NewGraphics is true:
		repeat with y running from 1 to number of filled rows in table of game art:
			choose row y in table of game art;
			if icon entry is x and artist entry is not listed in BlockList of Player:
				follow the ngraphics_open rule;
				now the currently shown picture is x;
				follow the current graphics drawing rule;
	if graphics is true and NewGraphics is false:
		repeat with y running from 1 to number of filled rows in table of game art:
			choose row y in table of game art;
			if icon entry is x and artist entry is not listed in BlockList of Player:
				display x;
				break;]


Table of game art
title	icon(figure name)	artist	backgroundcolor	formatrule
"Abcdefghij"	Figure of pixel	""	g-black	"normal" [blocker for first position]
"Abcdefghij"	Figure of pixel_icon	""	g-black	"normal" [blocker for first position]
"Adam"	Figure of Adam_icon	"Kadel"	g-white	"normal"
"Aerana"	Figure of Aerana_naked_icon	"Gherod"	g-black	"normal"
"Ace"	Figure of Ace_icon	"Waxraven/WXRVN"	g-white	"normal"
"Alexandra_clothed"	Figure of Alexandra_clothed_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_clothed_preg"	Figure of Alexandra_clothed_preg_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_face"	Figure of Alexandra_face_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_clothed0_frown"	Figure of Alexandra_clothed0_frown_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_clothed1_frown"	Figure of Alexandra_clothed1_frown_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_clothed2_frown"	Figure of Alexandra_clothed2_frown_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_clothed0_neutral"	Figure of Alexandra_clothed0_neutral_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_clothed0_smile"	Figure of Alexandra_clothed0_smile_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_naked_smile"	Figure of Alexandra_naked_smile_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_naked_frown"	Figure of Alexandra_naked_frown_icon	"Lyttathebug"	g-black	"normal"
"Alexandra_naked"	Figure of Alexandra_naked_icon	"Lyttathebug"	g-black	"normal"
"Alex"	Figure of Alex_icon	"canned"	g-black	"normal"
"Alpha Wolf hard"	Figure of AlphaWolf_hard_icon	"Vashaa"	g-White	"normal"
"Alpha Wolf naked"	Figure of AlphaWolf_naked_icon	"Vashaa"	g-White	"normal"
"Amazonian"	Figure of Amazon_icon	"Waxraven/WXRVN"	g-white	"normal"
"Amy"	Figure of Amy_icon	"Sususmiles"	g-white	"normal"
"Amy_face"	Figure of Amy_face_icon	"Sususmiles"	g-white	"normal"
"Anastasia"	Figure of Anastasia_icon	"SandySchreiber"	g-white	"normal"
"Andre"	Figure of Andre_icon	"Wemd"	g-black	"normal"
"Andre_face"	Figure of Andre_face_icon	"Wemd"	g-white	"normal"
"Andrew"	Figure of Andrew_icon	"Rukis"	g-black	"normal"
"Angie"	Figure of Angie_icon	"Anymouse1968"	g-white	"normal"
"Anthony_naked"	Figure of Anthony_naked_icon	"FsMaverick"	g-black	"normal"
"Anthony_clothed"	Figure of Anthony_clothed_icon	"Laylo"	g-white	"normal"
"Anthony_face"	Figure of Anthony_face_icon	"Laylo"	g-black	"normal"
"Anthro Shaft Beast"	Figure of AnthroShaftBeast_icon	"TwilightMaster"	g-white	"normal"
"Artemis"	Figure of Artemis_icon	"FaroreNightclaw"	g-white	"normal"
"Atticus_hard_smile_arms_lowered"	Figure of Atticus_hard_smile_arms_lowered_icon	"Lyttathebug"	g-black	"normal"
"Atticus_hard_smile_arm_raised"	Figure of Atticus_hard_smile_arm_raised_icon	"Lyttathebug"	g-black	"normal"
"Atticus_hard_neutral_arm_raised"	Figure of Atticus_hard_neutral_arm_raised_icon	"Lyttathebug"	g-black	"normal"
"Atticus_soft_neutral_arm_raised"	Figure of Atticus_soft_neutral_arm_raised_icon	"Lyttathebug"	g-black	"normal"
"Atticus_soft_smile_arms_lowered"	Figure of Atticus_soft_smile_arms_lowered_icon	"Lyttathebug"	g-black	"normal"
"Atticus_soft_neutral_arms_lowered"	Figure of Atticus_soft_neutral_arms_lowered_icon	"Lyttathebug"	g-black	"normal"
"Atticus_soft_frown_arms_crossed"	Figure of Atticus_soft_frown_arms_crossed_icon	"Lyttathebug"	g-black	"normal"
"Atticus_jeans_neutral_arms_lowered"	Figure of Atticus_jeans_neutral_arms_lowered_icon	"Lyttathebug"	g-black	"normal"
"Atticus_jeans_neutral_arms_crossed"	Figure of Atticus_jeans_neutral_arms_crossed_icon	"Lyttathebug"	g-black	"normal"
"Atticus_jeans_smile_arms_lowered"	Figure of Atticus_jeans_smile_arms_lowered_icon	"Lyttathebug"	g-black	"normal"
"Atticus_jeans_smile_arm_raised"	Figure of Atticus_jeans_smile_arm_raised_icon	"Lyttathebug"	g-black	"normal"
"Atticus_jeans_frown_arms_crossed"	Figure of Atticus_jeans_frown_arms_crossed_icon	"Lyttathebug"	g-black	"normal"
"Aurora_clothed"	Figure of Aurora_clothed_icon	"Waxraven/WXRVN"	g-white	"normal"
"Beach Overlook"	Figure of Beach_Overlook_icon	"Nokturnalkittie"	g-black	"inline_only"
"Brown Bear Female"	Figure of Bear_icon	"Anymouse1968"	g-white	"normal"
"Beaver"	Figure of Beaver2_icon	"HBruton"	g-white	"normal"
"Black Equinoid"	Figure of BlackEquinoid_icon	"Anymouse1968"	g-white	"normal"
"Blanche1"	Figure of Blanche1_icon	"The_Negative"	g-white	"normal"
"Blanche2"	Figure of Blanche2_icon	"Xenotropos"	g-white	"normal"
"Blot"	Figure of Blot_icon	"Anymouse1968"	g-white	"normal"
"Blue Gel"	Figure of BlueGel_icon	"Rastear"	g-black	"normal"
"Boghrim_clothed"	Figure of Boghrim_clothed_icon	"Kupo Klein"	g-white	"normal"
"Boghrim_naked"	Figure of Boghrim_naked_icon	"Kupo Klein"	g-white	"normal"
"Boghrim_face"	Figure of Boghrim_face_icon	"Kupo Klein"	g-black	"normal"
"Bottlenose Toy_Human"	Figure of Bottlenose_icon	"Anymouse1968"	g-white	"normal"	[only shown for humanoid version]
"Bottlenose Trapped"	Figure of BT_Trapped_icon	"Anymouse1968"	g-white	"normal"
"Bovine_F"	Figure of Bovine_F_icon	""	g-white	"normal"	[only shown for female version]
"Boy_To_Fox_Shampoo1"	Figure of Boy_To_Fox_Shampoo1_icon	"Watsup"	g-white	"normal"
"Boy_To_Fox_Shampoo2"	Figure of Boy_To_Fox_Shampoo2_icon	"Watsup"	g-white	"normal"
"Bradford_clothed"	Figure of Bradford_clothed_icon	"SteppeCrow"	g-white	"normal"
"Bradford_naked"	Figure of Bradford_naked_icon	"SteppeCrow"	g-white	"normal"
"Brennan_clothed"	Figure of Brennan_clothed_icon	"SineAlas"	g-black	"normal"
"Brennan_face"	Figure of Brennan_face_icon	"SineAlas"	g-black	"normal"
"Brooke"	Figure of Brooke_icon	"Otterbits"	g-black	"normal"
"Brian"	Figure of Brian_icon	"dhstein"	g-white	"normal"
"BrutusGood"	Figure of BrutusGood_icon	"Inkydemon"	g-black	"normal"
"Brutus_good_face"	Figure of Brutus_good_face_icon	"Inkydemon"	g-black	"normal"
"BrutusEvil"	Figure of BrutusEvil_icon	"Inkydemon"	g-black	"normal"
"Brutus_evil_face"	Figure of Brutus_evil_face_icon	"Inkydemon"	g-black	"normal"
"Bubble"	Figure of Bubble_icon	"SteppeCrow"	g-white	"normal"
"Bunny Jock"	Figure of BunnyJock_icon	"Darian821"	g-black	"normal"
"Buster"	Figure of Buster_icon	"Padunk"	g-white	"normal"
"Campus Map"	Figure of Map_Tenvale_College_icon	"Anonymous"	g-black	"inline_only"
"Candy"	Figure of Candy_icon	"uniformvixen"	g-black	"normal"
"Candy_clothed"	Figure of Candy_clothed_icon	"BeaverTyan"	g-white	"normal"
"Candy_naked"	Figure of Candy_naked_icon	"BeaverTyan"	g-white	"normal"
"Carl_clothed"	Figure of Carl_clothed_icon	"Hufnaar"	g-black	"normal"
"Carl_naked"	Figure of Carl_naked_icon	"Hufnaar"	g-black	"normal"
"Carl_face"	Figure of Carl_face_icon	"Lyttathebug"	g-black	"normal"
"Carl_knot"	Figure of Carl_knot_icon	"Lyttathebug"	g-black	"normal"
"Carl_Eric_training"	Figure of Carl_Eric_training_icon	"Lyttathebug"	g-black	"normal"
"Carl_Eric_sofa_fuck_1"	Figure of Carl_Eric_sofa_fuck_1_icon	"Lyttathebug"	g-black	"normal"
"Carl_Eric_sofa_fuck_2"	Figure of Carl_Eric_sofa_fuck_2_icon	"Lyttathebug"	g-black	"normal"
"Carl_Eric_sofa_fuck_3"	Figure of Carl_Eric_sofa_fuck_3_icon	"Lyttathebug"	g-black	"normal"
"Carl_Eric_sofa_fuck_4"	Figure of Carl_Eric_sofa_fuck_4_icon	"Lyttathebug"	g-black	"normal"
"Catgirl"	Figure of Fiona_icon	"Valen"	g-white	"normal"
"Centaur Stallion hard"	Figure of CentaurStallion_hard_icon	"Vashaa"	g-white	"normal"
"Centaur Stallion soft"	Figure of CentaurStallion_soft_icon	"Vashaa"	g-white	"normal"
"Centaur Mare"	Figure of CentaurMare_icon	"Vashaa"	g-white	"normal"
"Cerberus"	Figure of Cerberus_icon	"Anonymous"	g-white	"normal"
"Chase_face"	Figure of Chase_face_icon	"SineAlas"	g-black	"normal"
"Cheetah Woman"	Figure of CheetahWoman_icon	"Waxraven/WXRVN"	g-white	"normal"
"Chocolate Lab"	Figure of ChocoLab_icon	"SparklePens"	g-white	"normal"
"Chris_breeder_clothed"	Figure of Chris_breeder_clothed_icon	"SteppeCrow"	g-white	"normal"
"Chris_breeder_naked"	Figure of Chris_breeder_naked_icon	"SteppeCrow"	g-white	"normal"
"Chris_clothed"	Figure of Chris_clothed_icon	"Kupo Klein"	g-white	"normal"
"Chris_naked"	Figure of Chris_naked_icon	"Kupo Klein"	g-white	"normal"
"Chris_face_icon"	Figure of Chris_face_icon	"Kupo Klein"	g-black	"normal"
"Christy_pregnant"	Figure of Christy_pregnant_icon	"Anymouse1968"	g-white	"normal"
"Christy_face"	Figure of Christy_face_icon	"SineAlas"	g-white	"normal"
"Colleen_face"	Figure of Colleen_face_icon	"SineAlas"	g-white	"normal"
"Colleen_clothed"	Figure of Colleen_clothed_icon	"SteppeCrow"	g-white	"normal"
"Colleen_naked"	Figure of Colleen_naked_icon	"SteppeCrow"	g-white	"normal"
"Corbin_face"	Figure of Corbin_face_icon	"SineAlas"	g-white	"normal"
"Cougar"	Figure of Cougar_icon	"catnamedfish"	g-white	"normal"
"Danny_naked"	Figure of Danny_naked_icon	"Laylo"	g-white	"normal"
"Danny_clothed"	Figure of Danny_clothed_icon	"Dragonpunk"	g-white	"normal"
"Danny_face_icon"	Figure of Danny_face_icon	"Dragonpunk"	g-white	"normal"
"Darius_face"	Figure of Darius_face_icon	"SineAlas"	g-black	"normal"
"Dash"	Figure of Dash_icon	"Conchi"	g-white	"normal"
"David_naked"	Figure of David_naked_icon	"Keitaro87"	g-white	"normal"
"David_clothed"	Figure of David_clothed_icon	"Keitaro87"	g-white	"normal"
"David_casualclothed"	Figure of David_casualclothed_icon	"Keitaro87"	g-white	"normal"
"David_hurt"	Figure of David_hurt_icon	"Keitaro87"	g-white	"normal"
"David_barechest"	Figure of David_barechest_icon	"Keitaro87"	g-white	"normal"
"David_face_hurt"	Figure of David_face_hurt_icon	"Keitaro87"	g-white	"normal"
"David_face_naked"	Figure of David_face_naked_icon	"Keitaro87"	g-white	"normal"
"David_face"	Figure of David_face_icon	"Keitaro87"	g-white	"normal"
"David_face_casualclothed"	Figure of David_face_casualclothed_icon	"Keitaro87"	g-white	"normal"
"Demon Brute"	Figure of DemonBrute_icon	"Lay"	g-black	"normal"
"Dark Elf"	Figure of DarkElf_icon	"Nokturnalkittie"	g-black	"normal"
"DarkTyrant"	Figure of DarkTyrant_icon	"Gherod"	g-black	"normal"
"Diego"	Figure of Diego_icon	"valdericblackstag"	g-black	"normal"
"Diego_face"	Figure of Diego_face_icon	"valdericblackstag"	g-black	"normal"
"DiegoFem"	Figure of DiegoFem_icon	"Damdidoo"	g-black	"normal"
"DiegoFem_face"	Figure of DiegoFem_face_icon	"Damdidoo"	g-black	"normal"
"Dmitri_clothed"	Figure of Dmitri_clothed_icon	"SteppeCrow"	g-white	"normal"
"Dmitri_naked"	Figure of Dmitri_naked_icon	"SteppeCrow"	g-white	"normal"
["Doberman_Defeat"	Figure of DobermanCop_icon	"TheRedAngel"	g-white	"normal"]	[old image, disabled]
"Donkeywoman"	figure of Donkeywoman_clothed_icon	"Vashaa"	g-white	"normal"
"Donkeyman soft"	figure of Donkeyman_soft_icon	"Vashaa"	g-white	"normal"
"Donkeyman hard"	figure of Donkeyman_hard_icon	"Vashaa"	g-white	"normal"
"Doran"	Figure of Doran_icon	"Anymouse1968"	g-white	"normal"
"Doran_face"	Figure of Doran_face_icon	"Anymouse1968"	g-white	"normal"
"Dracovixentaur"	Figure of Dracovixentaur_icon	"Anymouse1968"	g-white	"normal"
"DrMatt_face"	Figure of DrMatt_face_icon	"SineAlas"	g-white	"normal"
"DrMoffatt1"	Figure of DrMoffatt1_icon	"The_Negative"	g-black	"normal"
"DrMoffatt2"	Figure of DrMoffatt2_icon	"MadTurtle"	g-white	"normal"
"DrMouse_clothed"	Figure of DrMouse_clothed_icon	"SteppeCrow"	g-white	"normal"
"DrMouse_naked"	Figure of DrMouse_naked_icon	"SteppeCrow"	g-white	"normal"
"Ebonflame Drake"	Figure of Ebonflame_Drake_icon	"Anonymous"	g-white	"normal"
"Elijah_evil"	Figure of Elijah_evil_icon	"Banni"	g-black	"normal"
"Elijah_evil_naked"	Figure of Elijah_evil_naked_icon	"Banni"	g-black	"normal"
"Elijah_evil_face"	Figure of Elijah_evil_face_icon	"Banni"	g-black	"normal"
"Elijah_good"	Figure of Elijah_good_icon	"Banni"	g-black	"normal"
"Elijah_good_face"	Figure of Elijah_good_face_icon	"Banni"	g-black	"normal"
"Elijah_virgin"	Figure of Elijah_virgin_icon	"Banni"	g-black	"normal"
"Elijah_good_naked"	Figure of Elijah_good_naked_icon	"Banni"	g-black	"normal"
"Elven Hunter Encounter"	Figure of ElvenHunter_Encounter_icon	"Aosuka"	g-white	"normal"
"Elven Hunter"	Figure of ElvenHunter_icon	"Vashaa"	g-white	"normal"
"Elven Hunter hard"	Figure of ElvenHunter_hard_icon	"Vashaa"	g-white	"normal"
"Eric_down"	Figure of Eric_down_icon	"Lytta"	g-black	"normal"
"Eric_BriefsM_neutral"	Figure of Eric_BriefsM_neutral_icon	"Lytta"	g-white	"normal"
"Eric_FirstMeeting_hostile"	Figure of Eric_FirstMeeting_hostile_icon	"Lytta"	g-white	"normal"
"Eric_FirstMeeting_neutral"	Figure of Eric_FirstMeeting_neutral_icon	"Lytta"	g-white	"normal"
"Eric_FirstMeeting_shocked"	Figure of Eric_FirstMeeting_shocked_icon	"Lytta"	g-white	"normal"
"Eric_Naked_happy"	Figure of Eric_Naked_happy_icon	"Lytta"	g-white	"normal"
"Eric_Naked_hostile"	Figure of Eric_Naked_hostile_icon	"Lytta"	g-white	"normal"
"Eric_Naked_neutral"	Figure of Eric_Naked_neutral_icon	"Lytta"	g-white	"normal"
"Eric_Naked_shocked"	Figure of Eric_Naked_shocked_icon	"Lytta"	g-white	"normal"
"Eric_Naked_tongue"	Figure of Eric_Naked_tongue_icon	"Lytta"	g-white	"normal"
"Eric_NakedHorseHard_happy"	Figure of Eric_NakedHorseHard_happy_icon	"Lytta"	g-white	"normal"
"Eric_NakedHorseSoft_neutral"	Figure of Eric_NakedHorseSoft_neutral_icon	"Lytta"	g-white	"normal"
"Eric_NakedOrcHard_happy"	Figure of Eric_NakedOrcHard_happy_icon	"Lytta"	g-white	"normal"
"Eric_NakedOrcSoft_neutral"	Figure of Eric_NakedOrcSoft_neutral_icon	"Lytta"	g-white	"normal"
"Eric_NakedSatyrHard_happy"	Figure of Eric_NakedSatyrHard_happy_icon	"Lytta"	g-white	"normal"
"Eric_NakedSatyrSoft_neutral"	Figure of Eric_NakedSatyrSoft_neutral_icon	"Lytta"	g-white	"normal"
"Eric_Panties_neutral"	Figure of Eric_Panties_neutral_icon	"Lytta"	g-white	"normal"
"Eric_Soldier_happy"	Figure of Eric_Soldier_happy_icon	"Lytta"	g-white	"normal"
"Eric_Soldier_neutral"	Figure of Eric_Soldier_neutral_icon	"Lytta"	g-white	"normal"
"Eric_Speedo_happy"	Figure of Eric_Speedo_happy_icon	"Lytta"	g-white	"normal"
"Eric_SpeedoM_happy"	Figure of Eric_SpeedoM_happy_icon	"Lytta"	g-white	"normal"
"Eric_Student_happy"	Figure of Eric_Student_happy_icon	"Lytta"	g-white	"normal"
"Eric_TShirt_happy"	Figure of Eric_TShirt_happy_icon	"Lytta"	g-white	"normal"
"Eric_TShirt_hostile"	Figure of Eric_TShirt_hostile_icon	"Lytta"	g-white	"normal"
"Eric_TShirt_neutral"	Figure of Eric_TShirt_neutral_icon	"Lytta"	g-white	"normal"
"Eric_TShirt_shocked"	Figure of Eric_TShirt_shocked_icon	"Lytta"	g-white	"normal"
"Eric_TShirt_tongue"	Figure of Eric_TShirt_tongue_icon	"Lytta"	g-white	"normal"
"Eric_clothed"	Figure of Eric_clothed_icon	"Kupo Klein"	g-white	"normal"
"Eric_face"	Figure of Eric_face_icon	"SineAlas"	g-black	"normal"
"Eric_naked"	Figure of Eric_naked_icon	"Kupo Klein"	g-white	"normal"
"Eric_sofa"	Figure of Eric_sofa_icon	"Bludwing"	g-white	"normal"
"Eric & Urik Naked"	Figure of Eric_Urik_naked_icon	"Kupo Klein"	g-black	"normal"
"Erin_face"	Figure of Erin_face_icon	"SineAlas"	g-black	"normal"
"Ewe"	Figure of Ewe_icon	"Vashaa"	g-white	"normal"
"Fancy"	Figure of Fancy_icon	"Anymouse1968"	g-white	"normal"
"Fang_face"	Figure of Fang_face_icon	"SineAlas"	g-black	"normal"
"Feline_F1"	Figure of Feline_F1_icon	"Anymouse1968"	g-white	"normal"	[shows one of these two for female Feline]
"Feline_F2"	Figure of Feline_F2_icon	"Anymouse1968"	g-white	"normal"	[shows one of these two for female Feline]
"Felix"	Figure of Felix_icon	"ConnyChiwa"	g-white	"normal"
"Francois"	Figure of Francois_icon	"Xenotropos"	g-white	"normal"
"Frank"	Figure of Frank_icon	"Dolphpup"	g-black	"normal"
"Feral Shaft Beast"	Figure of FeralShaftBeast_icon	"Demon-Man"	g-white	"normal"
"Fiona"	Figure of Fiona_icon	"Valen"	g-white	"normal"
"Fluffy Owl"	Figure of FluffyOwl_icon	"Waxraven/WXRVN"	g-white	"normal"
"Gabriel"	Figure of Gabriel_icon	"Darian821"	g-black	"normal"
"Gargoyle_soft"	Figure of Gargoyle_soft_icon	"SteppeCrow"	g-white	"normal"
"Gargoyle_hard"	Figure of Gargoyle_hard_icon	"SteppeCrow"	g-white	"normal"
"Garrett"	Figure of Garrett_icon	"Catmonkshiro"	g-black	"normal"
"Garth_face"	Figure of Garth_face_icon	"SineAlas"	g-white	"normal"
"Gazelle hard"	Figure of Gazelle_hard_icon	"Vashaa"	g-White	"normal"
"Gazelle soft"	Figure of Gazelle_soft_icon	"Vashaa"	g-White	"normal"
"German Shepherd hard"	Figure of GermanShepherd_hard_icon	"Vashaa"	g-White	"normal"
"German Shepherd naked"	Figure of GermanShepherd_naked_icon	"Vashaa"	g-White	"normal"
"Gillian"	Figure of Gillian_icon	"Eevachu"	g-white	"normal"
"Gina_face"	Figure of Gina_face_icon	"Vashaa"	g-black	"normal"
"Giraffe Herm hard"	Figure of GiraffeHerm_hard_icon	"Vashaa"	g-white	"normal"
"Giraffe Herm soft"	Figure of GiraffeHerm_soft_icon	"Vashaa"	g-white	"normal"
"Gobby"	Figure of Gobby_icon	"lionsilverwolf"	g-white	"normal"
"Grant_face"	Figure of Grant_face_icon	"Vashaa"	g-black	"normal"
"Grant"	Figure of Grant_icon	"uniformvixen"	g-white	"normal"
"Grant2"	Figure of Grant2_icon	"Familliar"	g-white	"normal"
"Gunbunny"	Figure of Gunbunny_icon	"HBruton"	g-white	"normal"
"Friendship Pony"	Figure of FrPony_icon	"Anymouse1968"	g-white	"normal"
"Goo Girl"	Figure of GooGirl_icon	"Rastear"	g-black	"normal"
"Hadiya"	Figure of Hadiya_0_icon	"lionsilverwolf"	g-white	"normal"
"Hadiya_icon"	Figure of Hadiya_icon	""	g-black	"normal"
"Harold"	Figure of Harold_icon	"Hufnaar"	g-black	"normal"
"Harold_naked"	Figure of Harold_naked_icon	"Hufnaar"	g-black	"normal"
"Harpy"	Figure of Harpy_icon	"Vashaa"	g-white	"normal"
"Hawkman Male"	Figure of Hawkman_naked_icon	"Vashaa"	g-white	"normal"
"Hayato"	Figure of Hayato_icon	"Darian821"	g-black	"normal"
"Helen"	Figure of Helen_naked_icon	"Waxraven/WXRVN"	g-white	"normal"
"Helot Manservant"	Figure of Helot_icon	"Obieblu"	g-white	"normal"
"Hellfire Demon Clothed"	Figure of HellfireDemon_clothed_icon	"Gherod"	g-white	"normal"
"Hellfire Demon Soft"	Figure of HellfireDemon_soft_icon	"Gherod"	g-white	"normal"
"Hellfire Demon Hard"	Figure of HellfireDemon_hard_icon	"Gherod"	g-white	"normal"
"Hellfire Demon No Harness"	Figure of HellfireDemon_noharness_icon	"Gherod"	g-white	"normal"
"Hellfire Demon Soft No Harness"	Figure of HellfireDemon_softnoharness_icon	"Gherod"	g-white	"normal"
"Hellfire Demon Hard No Harness"	Figure of HellfireDemon_hardnoharness_icon	"Gherod"	g-white	"normal"
"Hobo"	Figure of Hobo_icon	"Conchi"	g-white	"normal"
"Blue Gryphon Herm_old"	Figure of BlueGryphon_icon	"dbd"	g-black	"normal"
"Blue Gryphon hard"	Figure of BlueGryphon_hard_icon	"Vashaa"	g-white	"normal"
"Blue Gryphon soft"	Figure of BlueGryphon_soft_icon	"Vashaa"	g-white	"normal"
"Feral Gryphon hard"	Figure of FeralGryphon_hard_icon	"Vashaa"	g-white	"normal"
"Feral Gryphon soft"	Figure of FeralGryphon_soft_icon	"Vashaa"	g-white	"normal"
"Hermaphrodite Gryphon Face"	Figure of BlueGryphon_face_icon	"dbd"	g-black	"normal"
"Latex Vixen Herm"	Figure of LatexVixen_icon	"Anymouse1968"	g-white	"normal"
"Hyena Herm"	Figure of Herm_Hyena_clothed_icon	"Vashaa"	g-White	"normal"
"Henry_soft"	Figure of Henry_soft_icon	"CastBound"	g-white	"normal"
"Henry_hard"	Figure of Henry_hard_icon	"CastBound"	g-white	"normal"
"Herm Hyena_naked"	Figure of Herm_Hyena_naked_icon	"Vashaa"	g-White	"normal"
"Homo Sapiens"	Figure of HomoSapiens_icon	"Astro"	g-black	"normal"
"Honey"	Figure of Honey_icon	"SandySchreiber"	g-white	"normal"
"Horny Doctor_M"	Figure of HornyDoctor_M_icon	"Cooper"	g-white	"normal"	[only shown for males]
"Horsemazon_clothed"	Figure of Horsemazon_clothed_icon	"SteppeCrow"	g-white	"normal"
"Horseman clothed"	Figure of Horseman_clothed_icon	"Vashaa"	g-white	"normal"
"Horsemazon_naked"	Figure of Horsemazon_naked_icon	"SteppeCrow"	g-white	"normal"
"Horseman hard"	Figure of Horseman_hard_icon	"Vashaa"	g-white	"normal"
"Horseman soft"	Figure of Horseman_soft_icon	"Vashaa"	g-white	"normal"
"Human Survivor"	Figure of Brennan_clothed_icon	"SineAlas"	g-black	"normal"
"Hulking Cheerleader"	Figure of Hulking_Cheerleader_icon	"Seija"	g-white	"normal"
"Husky Alpha Hard"	Figure of HuskyAlpha_hard_icon	"Vashaa"	g-white	"normal"
"Husky Alpha soft"	Figure of HuskyAlpha_soft_icon	"Vashaa"	g-white	"normal"
"Husky Bitch"	Figure of Husky_Bitch_icon	"Vashaa"	g-White	"normal"
"Imp Male"	Figure of Imp_clothed_icon	"Kupo Klein"	g-white	"normal"
"Imp_naked"	Figure of Imp_naked_icon	"Kupo Klein"	g-white	"normal"
"Imp_face"	Figure of Imp_face_icon	"Kupo Klein"	g-white	"normal"
"Incubus"	Figure of Incubus_clothed_icon	"Kupo Klein"	g-white	"normal"
"Incubus_naked"	Figure of Incubus_naked_icon	"Kupo Klein"	g-white	"normal"
"Isaac_clothed"	Figure of Isaac_clothed_icon	"Reaper3d"	g-white	"normal"
"Isaac_hard"	Figure of Isaac_hard_icon	"Reaper3d"	g-white	"normal"
"Isaac_soft"	Figure of Isaac_soft_icon	"Reaper3d"	g-white	"normal"
"Isaac_face"	Figure of Isaac_face_icon	"Reaper3d"	g-white	"normal"
"James"	Figure of James_icon	"Anyare"	g-white	"normal"
"Janice"	Figure of Janice_icon	"Anymouse1968"	g-white	"normal"
"Jason_clothed"	Figure of Jason_clothed_icon	"Kupo Klein"	g-white	"normal"
"Jason_naked"	Figure of Jason_naked_icon	"Kupo Klein"	g-white	"normal"
"Jay_elf_outfit"	Figure of Jay_elf_outfit_icon	"Lytta"	g-black	"normal"
"Jay_leggins"	Figure of Jay_leggins_icon	"Lytta"	g-black	"normal"
"Jay_naked"	Figure of Jay_naked_icon	"Lytta"	g-black	"normal"
"Jay_suit"	Figure of Jay_suit_icon	"Lytta"	g-black	"normal"
"Jay_suit_quest"	Figure of Jay_suit_quest_icon	"Lytta"	g-black	"normal"
"Jay_undies"	Figure of Jay_undies_icon	"Lytta"	g-black	"normal"
"Jennifer"	Figure of Jennifer_icon	"Waxraven/WXRVN"	g-white	"normal"
"Jill"	Figure of Jill_icon	"Sususmiles"	g-white	"normal"
"Jimmy"	Figure of Jimmy_icon	"Redragon"	g-white	"normal"
"Karel&Isaac_clothed"	Figure of Karel&Isaac_clothed_icon	"Reaper3d"	g-white	"normal"
"Karel&Isaac_naked"	Figure of Karel&Isaac_naked_icon	"Reaper3d"	g-white	"normal"
"Karel_clothed"	Figure of Karel_clothed_icon	"Reaper3d"	g-white	"normal"
"Karel_hard"	Figure of Karel_hard_icon	"Reaper3d"	g-white	"normal"
"Karel_soft"	Figure of Karel_soft_icon	"Reaper3d"	g-white	"normal"
"Karel_face"	Figure of Karel_face_icon	"Reaper3d"	g-white	"normal"
"Katherine"	Figure of Katherine_icon	"Vashaa"	g-white	"normal"
"Katya"	Figure of Katya_clothed_icon	"Waxraven/WXRVN"	g-white	"normal"
"Klauz_face"	Figure of Klauz_face_icon	"SineAlas"	g-black	"normal"
"Red Kangaroo"	Figure of kangaroo_icon	"Anonymous"	g-white	"normal"
"Koghh_clothed"	Figure of Koghh_clothed_icon	"Kupo Klein"	g-white	"normal"
"Koghh_naked"	Figure of Koghh_naked_icon	"Kupo Klein"	g-white	"normal"
"Koghh_Yatur_naked"	Figure of Koghh_Yatur_naked_icon	"Kupo Klein"	g-white	"normal"
"Korvin_blackcollar"	Figure of Korvin_blackcollar_icon	"Lyttathebug"	g-black	"normal"
"Korvin_blackcollar_face"	Figure of Korvin_blackcollar_face_icon	"Lyttathebug"	g-black	"normal"
"Korvin_pinkcollar"	Figure of Korvin_pinkcollar_icon	"Lyttathebug"	g-black	"normal"
"Korvin_pinkcollar_face"	Figure of Korvin_pinkcollar_face_icon	"Lyttathebug"	g-black	"normal"
"Krampus_hard"	Figure of Krampus_hard_icon	"Lytta"	g-black	"normal"
"Krampus_soft"	Figure of Krampus_soft_icon	"Lytta"	g-black	"normal"
"Lamia"	Figure of Lamia_icon	"Anymouse1968"	g-white	"normal"
"Latex Bobcat"	Figure of Bobcat1_icon	"Uniformvixen"	g-white	"normal"
"Latex Ermine_Defeat"	Figure of LatexErmine_icon	"Anymouse1968"	g-white	"normal"	[only used in defeat]
"Latex Ermine_Blue"	Figure of LatexErmineBlue_icon	"Anymouse1968"	g-white	"normal"
"Latex Ermine_Green"	Figure of LatexErmineGreen_icon	"Anymouse1968"	g-white	"normal"
"Latex Ermine_Indigo"	Figure of LatexErmineIndigo_icon	"Anymouse1968"	g-white	"normal"
"Latex Ermine_Pink"	Figure of LatexErminePink_icon	"Anymouse1968"	g-white	"normal"
"Latex Ermine_Red"	Figure of LatexErmineRed_icon	"Anymouse1968"	g-white	"normal"
"Latex Ermine_Teal"	Figure of LatexErmineTeal_icon	"Anymouse1968"	g-white	"normal"
"Latex Fox_hard"	Figure of LatexFox_hard_icon	"SteppeCrow"	g-black	"normal"
"Latex Fox_soft"	Figure of LatexFox_soft_icon	"SteppeCrow"	g-black	"normal"
"LeonardViolin"	Figure of LeonardViolin_icon	"SandySchreiber"	g-white	"normal"
"Leopardman hard"	Figure of Leopardman_hard_icon	"Vashaa"	g-white	"normal"
"Leopardman soft"	Figure of Leopardman_soft_icon	"Vashaa"	g-white	"normal"
"Lilith_boobs_icon"	Figure of Lilith_boobs_icon	"Kupo Klein"	g-black	"normal"
"Lilith_clothed"	Figure of Lilith_clothed_icon	"Kupo Klein"	g-white	"normal"
"Lilith_face"	Figure of Lilith_face_icon	"Kupo Klein"	g-black	"normal"
"Lilith_naked"	Figure of Lilith_naked_icon	"Kupo Klein"	g-white	"normal"
"Lindsey_hard"	Figure of Lindsey_hard_icon	"Vashaa"	g-white	"normal"
"Lindsey_soft"	Figure of Lindsey_soft_icon	"Vashaa"	g-white	"normal"
"Magic Drake"	Figure of MagicDrake_icon	"Anymouse1968"	g-white	"normal"
"Malakhi"	Figure of Malakhi_icon	"Jahi"	g-black	"normal"
"Malakhi & Barnabas"	Figure of Malakhi_Barnabas_icon	"Jahi"	g-black	"normal"
"Malakhi & Kano"	Figure of Malakhi_Kano_icon	"Jahi"	g-black	"normal"
"Mall Map"	Figure of Map_Smith_Haven_Mall_icon	"Anonymous"	g-black	"normal"
"Mammoth"	Figure of Mammoth_icon	"Boo3"	g-white	"normal"
"Mammoth_CV1"	Figure of Mammoth_CV1_icon	"Boo3"	g-white	"normal"
"Mammoth_CV2"	Figure of Mammoth_CV2_icon	"Boo3"	g-white	"normal"
"Mammoth_CV3"	Figure of Mammoth_CV3_icon	"Boo3"	g-white	"normal"
"Mammoth_CV4"	Figure of Mammoth_CV4_icon	"Boo3"	g-white	"normal"
"Mammoth_CV5"	Figure of Mammoth_CV5_icon	"Boo3"	g-white	"normal"
"Mammoth_CVF_icon"	Figure of Mammoth_CVF_icon	"Boo3"	g-white	"normal"
"Mannequin"	Figure of Mannequin_icon	"Rastear"	g-black	"normal"
"MarcOrwell"	Figure of MarcOrwell_icon	"CrashBurnDraw"	g-black	"normal"
"Marc_face"	Figure of Marc_face_icon	"CrashBurnDraw"	g-black	"normal"
"Marc_fucked"	Figure of Marc_fucked_icon	"Laylo"	g-black	"normal"
"Mareslut"	Figure of Mareslut_icon	"Vashaa"	g-white	"normal"
"Mason"	Figure of Mason_icon	"Abelsword"	g-black	"normal"
"MasterMind"	Figure of MasterMind_icon	""	g-white	"normal"
"Math Teacher"	Figure of MathTeacher_icon	"Waxraven/WXRVN"	g-white	"normal"
"Medea_face"	Figure of Medea_face_icon	"LocksTO"	g-white	"normal"
"Megakitty"	Figure of Megakitty_icon	"BushyCat"	g-white	"normal"
"Mental Mouse"	Figure of MentalMice_icon	"Xilrayne"	g-white	"normal"
"Messy Pig"	Figure of MessyPig_icon	"Anymouse1968"	g-white	"normal"
"Micaela"	Figure of Micaela_icon	"Kattzie"	g-white	"normal"
"Mike_face"	Figure of Mike_face_icon	"SineAlas"	g-black	"normal"
"Mike"	Figure of Mike_icon	"Darian821"	g-black	"normal"
"Minotaur hard"	Figure of Minotaur_hard_icon	"Vashaa"	g-White	"normal"
"Minotaur naked"	Figure of Minotaur_naked_icon	"Vashaa"	g-White	"normal"
"Mogdraz_clothed"	Figure of Mogdraz_clothed_icon	"Gherod"	g-black	"normal"
"Mogdraz_face"	Figure of Mogdraz_face_icon	"Gherod"	g-black	"normal"
"Mogdraz_nakedsoft"	Figure of Mogdraz_nakedsoft_icon	"Gherod"	g-black	"normal"
"Mogdraz_nakedhard"	Figure of Mogdraz_nakedhard_icon	"Gherod"	g-black	"normal"
"Mogdraz_noharness"	Figure of Mogdraz_noharness_icon	"Gherod"	g-black	"normal"
"Mogdraz_underwear"	Figure of Mogdraz_underwear_icon	"Gherod"	g-black	"normal"
"Monty_ass"	Figure of Monty_ass_icon	"Obieblu"	g-white	"normal"
"Monty_combat"	Figure of Monty_combat_icon	"Obieblu"	g-white	"normal"
"Monty_postcombat"	Figure of Monty_postcombat_icon	"Obieblu"	g-white	"normal"
"Monty_face"	Figure of Monty_face_icon	"Obieblu"	g-white	"normal"
"Monty_naked"	Figure of Monty_naked_icon	"Obieblu"	g-white	"normal"
"Moreau_face"	Figure of Moreau_face_icon	"Lytta"	g-black	"normal"
"Moreau_hard"	Figure of Moreau_hard_icon	"Lytta"	g-black	"normal"
"Moreau_soft"	Figure of Moreau_soft_icon	"Lytta"	g-black	"normal"
"Mul_clothed"	Figure of Mul_clothed_icon	"Kupo Klein"	g-white	"normal"
"Mul_naked"	Figure of Mul_naked_icon	"Kupo Klein"	g-white	"normal"
"Mul_face"	Figure of Mul_face_icon	"Kupo Klein"	g-black	"normal"
"Nadia"	Figure of Nadia_icon	"Anymouse1968"	g-white	"normal"
"Naga"	Figure of Naga_icon	"Rastear"	g-black	"normal"
"Nelson_clothed"	Figure of Nelson_clothed_icon	"Ticl"	g-white	"normal"
"Nelson_naked"	Figure of Nelson_naked_icon	"Ticl"	g-white	"normal"
"Nermine_clothed"	Figure of Nermine_clothed_icon	"Lytta"	g-black	"normal"
"Nermine_clothed_face"	Figure of Nermine_clothed_face_icon	"Lytta"	g-black	"normal"
"Nermine_naked"	Figure of Nermine_naked_icon	"Lytta"	g-black	"normal"
"Nermine_naked_face"	Figure of Nermine_naked_face_icon	"Lytta"	g-black	"normal"
"Newt"	Figure of Newt_icon	"Anyare"	g-white	"normal"
"Nightmare_hard"	Figure of Nightmare_hard_icon	"Vashaa"	g-White	"normal"
"Nightmare_soft"	Figure of Nightmare_soft_icon	"Vashaa"	g-white	"normal"
"Ninja Cat_F"	Figure of NinjaCat_F_icon	"Bix707"	g-white	"normal"	[only shown for female succumb ending]
"Ninja Cat"	Figure of NinjaCat_M_icon	""	g-white	"normal"
"Orbul_clothed"	Figure of Orbul_clothed_icon	"Kupo Klein"	g-white	"normal"
"Orbul_naked"	Figure of Orbul_naked_icon	"Kupo Klein"	g-white	"normal"
"Orca clothed"	Figure of Orca_clothed_icon	"Vashaa"	g-white	"normal"
"Orca hard"	Figure of Orca_hard_icon	"Vashaa"	g-white	"normal"
"Orc Breeder"	Figure of OrcBreeder_random_icon	"Gene Lightfoot"	g-black	"normal"
"Orc Brothers_clothed"	Figure of Orc_Brothers_clothed_icon	"Kupo Klein"	g-white	"normal"
"Orc Brothers_naked"	Figure of Orc_Brothers_naked_icon	"Kupo Klein"	g-white	"normal"
"Orc Female"	Figure of Katya_clothed_icon	"Waxraven/WXRVN"	g-white	"normal"
"Orc Warrior"	Figure of OrcWarrior_random_icon	"Gene Lightfoot"	g-white	"normal"
"Orthas_face"	Figure of Orthas_face_icon	"SineAlas"	g-white	"normal"
"PantherTaur_clothed"	Figure of PantherTaur_clothed_icon	"SteppeCrow"	g-white	"normal"
"PantherTaur_hard"	Figure of PantherTaur_hard_icon	"SteppeCrow"	g-white	"normal"
"Parasol_Nap"	Figure of Parasol_Nap_icon	"Watsup"	g-black	"normal"
"Paula"	Figure of Paula_icon	"Kikeri-arts"	g-white	"normal"
"Penny"	Figure of Penny_icon	"Waxraven/WXRVN"	g-white	"normal"
"Plush Lion"	Figure of PlushLion_icon	"Anymouse1968"	g-white	"normal"
"Pink Gel"	Figure of PinkGel_icon	"Rastear"	g-black	"normal"
"Pink Poodle"	Figure of PinkPoodle_icon	"Anymouse1968"	g-white	"normal"
"Pewter Consort"	Figure of Pewter_Consort_icon	"Xilrayne"	g-white	"normal"
"Shark Herm"	Figure of PirateShark_icon	"Zealot"	g-white	"normal"
"Queen Bee"	Figure of QueenBee_icon	"Caltroplay"	g-white	"normal"
"Rachel"	Figure of Rachel_icon	"o-kemono"	g-white	"normal"
"Ram_hunk"	Figure of Ram_naked_icon	"Vashaa"	g-white	"normal"
"Rane_clothed"	Figure of Rane_clothed_icon	"Inkydemon"	g-black	"normal"
"Rane_face"	Figure of Rane_face_icon	"SineAlas"	g-black	"normal"
"Reindeer"	Figure of Reindeer_icon	"MoT"	g-black	"normal"
"Rod"	Figure of Rod_icon	"Ticl"	g-white	"normal"
"Ronda"	Figure of Ronda_icon	"Ticl"	g-white	"normal"
"RondaSR"	Figure of RondaSR_icon	"uniformvixen"	g-black	"normal"
"Ruby_naked"	Figure of Ruby_naked_icon	"Watsup"	g-white	"normal"
"Ryousei_face"	Figure of Ryousei_face_icon	"ValdericBlackstag"	g-black	"normal"
"Ryousei_fundoshi"	Figure of Ryousei_fundoshi_icon	"ValdericBlackstag"	g-black	"normal"
"Ryousei_naked"	Figure of Ryousei_naked_icon	"ValdericBlackstag"	g-black	"normal"
"Ryousei_wink"	Figure of Ryousei_wink_icon	"ValdericBlackstag"	g-black	"normal"
"Saber Kitty"	Figure of Saber_Kitty_icon	"Vashaa"	g-White	"normal"
"Sabretooth_hard"	Figure of Sabretooth_hard_icon	"Vashaa"	g-White	"normal"
"Sabretooth_soft"	Figure of Sabretooth_soft_icon	"Vashaa"	g-White	"normal"
"Sally"	Figure of Sally_icon	"Furball"	g-white	"normal"
"Sand Man"	Figure of SandMan_icon	"Rastear"	g-black	"normal"
"Sandy"	Figure of sandy_icon	""	g-white	"normal"
"Santa Claws"	Figure of SantaClaws_face_icon	"SineAlas"	g-black	"normal"
"Sarah_clothed"	Figure of Sarah_clothed_icon	"Lyttathebug"	g-white	"normal"
"Sarah_face"	Figure of Sarah_face_icon	"Lyttathebug"	g-white	"normal"
"Sarah_face_naked"	Figure of Sarah_face_naked_icon	"Lyttathebug"	g-white	"normal"
"Sarah_naked"	Figure of Sarah_naked_icon	"Lyttathebug"	g-white	"normal"
"Stallionboi hard"	Figure of Stallionboi_hard_icon	"Vashaa"	g-White	"normal"
"Stallionboi clothed"	Figure of Stallionboi_clothed_icon	"Vashaa"	g-White	"normal"
"Satyress_naked"	Figure of Satyress_naked_icon	"Vashaa"	g-White	"normal"
"Sea Dragoness NSFW"	Figure of SeaDragoness_NSFW_icon	"Vashaa"	g-white	"normal"
"Sea Dragoness SFW"	Figure of SeaDragoness_SFW_icon	"Vashaa"	g-white	"normal"
"Sea Dragon Hard"	Figure of SeaDragon_hard_icon	"Vashaa"	g-white	"normal"
"Sea Dragon Soft"	Figure of SeaDragon_soft_icon	"Vashaa"	g-white	"normal"
"Septus"	Figure of Septus_icon	"Feralise"	g-black	"normal"
"Septus_face"	Figure of Septus_face_icon	"Cirrusthecloud"	g-black	"normal"
"SgtMarks"	Figure of SgtMarks_icon	"Anyare"	g-white	"normal"
"Shadow Beast Male"	Figure of ShadowBeast_icon	"Hioshiru"	g-white	"normal"
"Smooth Collie Shemale_clothed"	Figure of Collie_clothed_icon	"SteppeCrow"	g-white	"normal"
"Smooth Collie Shemale_naked"	Figure of Collie_naked_icon	"SteppeCrow"	g-white	"normal"
"Shy_vixen"	Figure of Shy_Vixen_icon	"Watsup"	g-white	"normal"
"Siamese Cat"	Figure of SiameseCat_icon	"RedCoatCat"	g-white	"normal"
"Sidney_wusky"	Figure of Sidney_wusky_Icon	"Anymouse1968"	g-white	"normal"
"Sidney_vixen"	Figure of Sidney_vixen_Icon	"Anymouse1968"	g-white	"normal"
"Sidney_clothed"	Figure of Sidney_clothed_Icon	"Anymouse1968"	g-white	"normal"
"Siren_clothed"	Figure of Siren_clothed_icon	"SteppeCrow"	g-white	"normal"
"Siren_hard"	Figure of Siren_hard_icon	"SteppeCrow"	g-white	"normal"
"Skunkbeast Lord"	Figure of SkunkbeastLord_icon	"MoT"	g-black	"normal"
"Slutslave"	Figure of Slutslave_icon	"Vashaa"	g-white	"normal"
"Snow"	Figure of Snow_icon	"Waxraven/WXRVN"	g-white	"normal"
"Snow Bat"	Figure of SnowBat_icon	"Rosali"	g-black	"normal"
"Snow Leopard hard"	Figure of SnowLeopard_hard_icon	"Vashaa"	g-white	"normal"
"Snow Leopard soft"	Figure of SnowLeopard_soft_icon	"Vashaa"	g-white	"normal"
"Sonny_halfwool_jeans"	Figure of Sonny_halfwool_jeans_icon	"The_Negative"	g-black	"normal"
"Sonny_halfwool_nude"	Figure of Sonny_halfwool_nude_icon	"The_Negative"	g-black	"normal"
"Sonny_shaved_jeans"	Figure of Sonny_shaved_jeans_icon	"The_Negative"	g-black	"normal"
"Sonny_shaved_nude_icon"	Figure of Sonny_shaved_nude_icon	"The_Negative"	g-black	"normal"
"Sonny_face"	Figure of Sonny_face_icon	"The_Negative"	g-black	"normal"
"Spartan Warrior"	Figure of Spartan_icon	"Obieblu"	g-white	"normal"
"Stella"	Figure of Stella_icon	"Furball"	g-white	"normal"
"Skarnoth_undies"	Figure of Skarnoth_undies_icon	"Kien-Biu"	g-black	"normal"
"Skarnoth_naked"	Figure of Skarnoth_naked_icon	"Kien-Biu"	g-black	"normal"
"Skin Diagram 1"	Figure of SkinDiagram1_icon	"Wahn"	g-white	"normal"
"Skin Diagram 1"	Figure of SkinDiagram2_icon	"Wahn"	g-white	"normal"
"Spike_jacket"	Figure of Spike_jacket_icon	"Lyttathebug"	g-black	"normal"
"Spike_clothed"	Figure of Spike_clothed_icon	"Lyttathebug"	g-black	"normal"
"Spike_shirtless"	Figure of Spike_shirtless_icon	"Lyttathebug"	g-black	"normal"
"Spike_jockstrap"	Figure of Spike_jockstrap_icon	"Lyttathebug"	g-black	"normal"
"Spike_straps"	Figure of Spike_straps_icon	"Lyttathebug"	g-black	"normal"
"Spike_straps_hard"	Figure of Spike_straps_hard_icon	"Lyttathebug"	g-black	"normal"
"Spike_speedo"	Figure of Spike_speedo_icon	"Lyttathebug"	g-black	"normal"
"Spike_hard"	Figure of Spike_hard_icon	"Lyttathebug"	g-black	"normal"
"Spike_naked_hard"	Figure of Spike_naked_hard_icon	"Lyttathebug"	g-black	"normal"
"Spike_speedo"	Figure of Spike_naked_soft_icon	"Lyttathebug"	g-black	"normal"
"Spike_naked_soft"	Figure of Spike_face_icon	"SineAlas"	g-black	"normal"
"Succubus"	Figure of Succubus_clothed_icon	"Kupo Klein"	g-white	"normal"
"Sugar Glider"	Figure of SugarGlider_icon	"Xilrayne"	g-black	"normal"
"Susan_face"	Figure of Susan_face_icon	"SineAlas"	g-black	"normal"
"Susan_FHerm_clothed"	Figure of Susan_FHerm_clothed_icon	"Vashaa"	g-white	"normal"
"Susan_FHerm_hard"	Figure of Susan_FHerm_hard_icon	"Vashaa"	g-white	"normal"
"Sven_naked"	Figure of Sven_naked_icon	"Brun69"	g-black	"normal"
"Sven_tail"	Figure of Sven_tail_icon	"Brun69"	g-black	"normal"
"Talov_Kerr_Barrel"	Figure of Talov_Kerr_Barrel_icon	"Kupo Klein"	g-black	"normal"
"Talov_Kerr_Party"	Figure of Talov_Kerr_Party_icon	"Kupo Klein"	g-black	"normal"
"Tehuantl_Male_face"	Figure of Tehuantl_Male_face_icon	"Vashaa"	g-black	"normal"
"Tehuantl_Male_clothed"	Figure of Tehuantl_Male_clothed_icon	"Yora"	g-black	"normal"
"Tehuantl_Male_hard"	Figure of Tehuantl_Male_hard_icon	"Yora"	g-black	"normal"
"Tehuantl_Female_face"	Figure of Tehuantl_Female_face_icon	"Vashaa"	g-black	"normal"
"Thomas_erect"	Figure of Thomas_erect_icon	"Inkydemon"	g-black	"normal"
"Thomas_face"	Figure of Thomas_face_icon	"Inkydemon"	g-black	"normal"
"Thomas_soft"	Figure of Thomas_soft_icon	"Inkydemon"	g-black	"normal"
"Thought Eater"	Figure of ThoughtEater_icon	"Rastear"	g-black	"normal"
"Malayan Tiger Male"	Figure of SgtMarks_icon	"Anyare"	g-white	"normal"
"Tiger Shark Male"	Figure of TSW_icon	"Zealot"	g-white	"normal"
"Tigertaur Hard"	Figure of Tigertaur_hard_icon	"Vashaa"	g-white	"normal"
"Tigertaur Soft"	Figure of Tigertaur_soft_icon	"Vashaa"	g-white	"normal"
"Timothy"	Figure of Timothy_icon	"Waxraven/WXRVN"	g-white	"normal"
"TSW_headshot"	Figure of TSW_headshot_icon	"Zealot"	g-black	"normal"
"TSW_naked"	Figure of TSW_naked_icon	"Zealot"	g-white	"normal"
"TSW_sansNecklace"	Figure of TSW_sansNecklace_icon	"Zealot"	g-white	"normal"
"TyrannosaurusMale_clothed"	Figure of TyrannosaurusMale_clothed_icon	"SteppeCrow"	g-white	"normal"
"TyrannosaurusMale_soft"	Figure of TyrannosaurusMale_soft_icon	"SteppeCrow"	g-white	"normal"
"TyrannosaurusMale_hard"	Figure of TyrannosaurusMale_hard_icon	"SteppeCrow"	g-white	"normal"
"Malayan Tiger Herm"	Figure of TigressHooker_icon	"Sharei"	g-black	"normal"
"TinyTim"	Figure of TinyTim_icon	"Obieblu"	g-black	"normal"
"TinyTim_face"	Figure of TinyTim_face_icon	"SineAlas"	g-black	"normal"
"Tiny_In_Action"	Figure of TinyTim_In_Action_icon	"Obieblu"	g-black	"normal"
"Toven_clothed"	Figure of Toven_clothed_icon	"Kupo Klein"	g-white	"normal"
"Toven_naked"	Figure of Toven_naked_icon	"Kupo Klein"	g-white	"normal"
"Triceratops"	Figure of Triceratops_icon	"HBruton"	g-white	"normal"
"Tristian"	Figure of Tristian_icon	"Enaya-TheWhiteWolfen"	g-black	"normal"
"Tyke_clothed"	Figure of Tyke_clothed_icon	"TylerAz"	g-white	"normal"
"Tyke_naked"	Figure of Tyke_naked_icon	"TylerAz"	g-white	"normal"
"Urik_ass"	Figure of Urik_ass_icon	"Kupo Klein"	g-white	"normal"
"Urik_clothed"	Figure of Urik_clothed_icon	"Kupo Klein"	g-white	"normal"
"Urik_face"	Figure of Urik_face_icon	"SineAlas"	g-black	"normal"
"Urik_naked"	Figure of Urik_naked_icon	"Kupo Klein"	g-white	"normal"
"Valerie"	Figure of Valerie_icon	"Sususmiles"	g-white	"normal"
"Violet_face"	Figure of Violet_face_icon	"SineAlas"	g-black	"normal"
"Vixentaur"	Figure of Vixentaur_icon	"Anymouse1968"	g-white	"normal"
"Vixen Nurse"	Figure of VixenNurse_icon	"KV1NN4"	g-white	"normal"
"Voodoo Gecko"	Figure of Voodoo_Gecko_icon	"Waxraven/WXRVN"	g-white	"normal"
"Chris_warrior_clothed"	Figure of Chris_warrior_clothed_icon	"Kupo Klein"	g-white	"normal"
"Chris_warrior_naked"	Figure of Chris_warrior_naked_icon	"Kupo Klein"	g-white	"normal"
"Werewolf (female)"	Figure of Werewolf_female_icon	"Watsup"	g-white	"normal"
"Werewolf clothed"	Figure of Werewolf_clothed_icon	"SteppeCrow"	g-white	"normal"
"Werewolf naked"	Figure of Werewolf_hard_icon	"SteppeCrow"	g-white	"normal"
"Wereraptor female"	Figure of Wereraptor_female_icon	"Vashaa"	g-white	"normal"
"Wereraptor male hard"	Figure of Wereraptor_male_hard_icon	"Vashaa"	g-white	"normal"
"Wereraptor male soft"	Figure of Wereraptor_male_soft_icon	"Vashaa"	g-white	"normal"
"Wildcat"	Figure of Wildcat_icon	"Strype"	g-white	"normal"
"Wolftaur_hard"	Figure of Wolftaur_hard_icon	"Vashaa"	g-white	"normal"
"Wolftaur_soft"	Figure of Wolftaur_soft_icon	"Vashaa"	g-white	"normal"
"Wood Elf"	Figure of Wood_Elf_icon	"Vashaa"	g-White	"normal"
"Wrestling Wolf hard"	Figure of WrestlingWolf_hard_icon	"Vashaa"	g-White	"normal"
"Wrestling Wolf clothed"	Figure of WrestlingWolf_clothed_icon	"Vashaa"	g-White	"normal"
"Wyvern_male_day"	Figure of Wyvern_male_day_icon	"Corbee"	g-white	"normal"
"Wyvern_male_night"	Figure of Wyvern_male_night_icon	"Corbee"	g-white	"normal"
"Wyvern_female_day"	Figure of Wyvern_female_day_icon	"Corbee"	g-white	"normal"
"Wyvern_female_night"	Figure of Wyvern_female_night_icon	"Corbee"	g-white	"normal"
"Xaedihr_Full"	Figure of Xaedihr_Full_icon	"Gherod"	g-black	"normal"
"Xaedihr_FullMagic"	Figure of Xaedihr_FullMagic_icon	"Gherod"	g-black	"normal"
"Xaedihr_FullNoRuby"	Figure of Xaedihr_FullNoRuby_icon	"Gherod"	g-black	"normal"
"Xaedihr_Underwear"	Figure of Xaedihr_Underwear_icon	"Gherod"	g-black	"normal"
"Xaedihr_NudeSoft"	Figure of Xaedihr_NudeSoft_icon	"Gherod"	g-black	"normal"
"Xaedihr_NudeHard"	Figure of Xaedihr_NudeHard_icon	"Gherod"	g-black	"normal"
"Xaedihr_Portrait"	Figure of Xaedihr_Portrait_icon	"Gherod"	g-black	"normal"
"Yatur_clothed"	Figure of Yatur_clothed_icon	"Kupo Klein"	g-white	"normal"
"Yatur_naked"	Figure of Yatur_naked_icon	"Kupo Klein"	g-white	"normal"
"Yolanda"	Figure of Yolanda_icon	"SandySchreiber"	g-white	"normal"
"Yamato Dragon Red Hard"	Figure of YamatoDragon_red_hard_icon	"Vashaa"	g-white	"normal"
"Yamato Dragon Red Soft"	Figure of YamatoDragon_red_soft_icon	"Vashaa"	g-white	"normal"
"Yamato Dragon Blue Hard"	Figure of YamatoDragon_blue_hard_icon	"Vashaa"	g-white	"normal"
"Yamato Dragon Blue Soft"	Figure of YamatoDragon_blue_soft_icon	"Vashaa"	g-white	"normal"
"Yamato Dragon Green Hard"	Figure of YamatoDragon_green_hard_icon	"Vashaa"	g-white	"normal"
"Yamato Dragon Green Soft"	Figure of YamatoDragon_green_soft_icon	"Vashaa"	g-white	"normal"
"Yamato Dragoness Red SFW"	Figure of YamatoDragoness_red_SFW_icon	"Vashaa"	g-white	"normal"
"Yamato Dragoness Red NSFW"	Figure of YamatoDragoness_red_NSFW_icon	"Vashaa"	g-white	"normal"
"Yamato Dragoness Blue SFW"	Figure of YamatoDragoness_blue_SFW_icon	"Vashaa"	g-white	"normal"
"Yamato Dragoness Blue NSFW"	Figure of YamatoDragoness_blue_NSFW_icon	"Vashaa"	g-white	"normal"
"Yamato Dragoness Green SFW"	Figure of YamatoDragoness_green_SFW_icon	"Vashaa"	g-white	"normal"
"Yamato Dragoness Green NSFW"	Figure of YamatoDragoness_green_NSFW_icon	"Vashaa"	g-white	"normal"
"Yuppie Mink_F"	Figure of YuppieMink_icon	"Anymouse1968"	g-white	"normal"	[only shown for female version]
"Zebra Stallion"	Figure of Zebra_icon	"Purplepardus"	g-black	"normal"
"Zigor"	Figure of Zigor_icon	"AugurMew"	g-black	"normal"
"Zoe_face"	Figure of Zoe_face_icon	"SineAlas"	g-black	"normal"
"Zoe_clothed"	Figure of Zoe_clothed_icon	"Vashaa"	g-White	"normal"
"Zoe_naked"	Figure of Zoe_naked_icon	"Vashaa"	g-White	"normal"
[objects]
"alpha wolf cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"black wolf cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"brown rat cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"centaur cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"dalmatian cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"diavoborg cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"doberman male cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"dryad cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"earthen seed"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"elven male cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"ferret cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"fox cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"gecko cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"german shepherd male cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"gryphon cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"jackal alpha cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"hawkman male cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"horseman cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"husky alpha cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"hyena herm cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"nerdy mouse cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"orc cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"piggy cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"pink fox cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"red panda cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"rhino cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"sea dragon cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"smilodon cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"smilodon male cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"tyrannosaurus cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"werewolf brute cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"wolf cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"zebra cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
"dire-wolf cum"	Figure of Item_Bottle_Cum	"Gherod"	g-white	"normal"
[femcum]
"husky bitch cum"	Figure of Item_Bottle_Femcum	"Gherod"	g-white	"normal"
"orc fem cum"	Figure of Item_Bottle_Femcum	"Gherod"	g-white	"normal"
"wolf fem-cum"	Figure of Item_Bottle_Femcum	"Gherod"	g-white	"normal"
[demonic cum]
"demon seed"	Figure of Item_Bottle_Demon_Seed	"Gherod"	g-white	"normal"
"hellfire seed"	Figure of Item_Bottle_Demon_Seed	"Gherod"	g-white	"normal"
[silver cum]
"pewter seed"	Figure of Item_Bottle_Silver_Cum	"Gherod"	g-white	"normal"
[bottles]
"dirty water"	Figure of Item_Bottle_Dirty_Water	"Gherod"	g-white	"normal"
"empty bottle"	Figure of Item_Bottle_Empty_Bottle	"Gherod"	g-white	"normal"
[fur - black]
"alpha wolf fur"	Figure of Item_Fur_black	"Gherod"	g-white	"normal"
"black wolf fur"	Figure of Item_Fur_black	"Gherod"	g-white	"normal"
"demon fox fur"	Figure of Item_Fur_black	"Gherod"	g-white	"normal"
"jackal alpha fur"	Figure of Item_Fur_black	"Gherod"	g-white	"normal"
"zebra fur"	Figure of Item_Fur_black	"Gherod"	g-white	"normal"
[fur - blonde]
"spotted fur"	Figure of Item_Fur_blonde	"Gherod"	g-white	"normal"
[fur - brown]
"horsemazon fur"	Figure of Item_Fur_brown	"Gherod"	g-white	"normal"
[fur - dappled]
"horse fur"	Figure of Item_Fur_dappled	"Gherod"	g-white	"normal"
[fur - dark brown]
"smooth collie shemale fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
"doberman bitch fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
"doberman male fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
"elk bull fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
"elk cow fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
"elk herm fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
"elk trans bull fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
"elk trans cow fur"	Figure of Item_Fur_dark_brown	"Gherod"	g-white	"normal"
[fur - dark grey]
"werewolf brute fur"	Figure of Item_Fur_dark_grey	"Gherod"	g-white	"normal"
[fur - gold]
"smilodon male fur"	Figure of Item_Fur_gold	"Gherod"	g-white	"normal"
[fur - grey & white]
"nerdy mouse fur"	Figure of Item_Fur_grey_and_white	"Gherod"	g-white	"normal"
"husky bitch fur"	Figure of Item_Fur_grey_and_white	"Gherod"	g-white	"normal"
"husky alpha fur"	Figure of Item_Fur_grey_and_white	"Gherod"	g-white	"normal"
[fur - grey]
"tuft of chin fur"	Figure of Item_Fur_grey	"Gherod"	g-white	"normal"
[fur - orange]
"red fur"	Figure of Item_Fur_orange	"Gherod"	g-white	"normal"
[fur - pink]
"piggy fur"	Figure of Item_Fur_pink	"Gherod"	g-white	"normal"
"pink fox fur"	Figure of Item_Fur_pink	"Gherod"	g-white	"normal"
[fur - tan]
"hyena herm fur"	Figure of Item_Fur_tan	"Gherod"	g-white	"normal"
"german shepherd bitch fur"	Figure of Item_Fur_tan	"Gherod"	g-white	"normal"
"german shepherd male fur"	Figure of Item_Fur_tan	"Gherod"	g-white	"normal"
[fur - white]
"dalmatian fur"	Figure of Item_Fur_white	"Gherod"	g-white	"normal"
[goo]
"glob of goo"	Figure of Item_Gel_green	"Gherod"	g-white	"normal"
"blue gel"	Figure of Item_Gel_blue	"Gherod"	g-white	"normal"
"pink gel"	Figure of Item_Gel_pink	"Gherod"	g-white	"normal"
"purple gel"	Figure of Item_Gel_purple	"Gherod"	g-white	"normal"
"bitch breaker gel"	Figure of Item_Gel_Bitch_Breaker	"Gherod"	g-white	"normal"
"pussy spreader cream"	Figure of Item_Gel_Pussy_Spreader	"Gherod"	g-white	"normal"
"rightntight cream"	Figure of Item_Gel_RightnTight	"Gherod"	g-white	"normal"
"sissifier gel"	Figure of Item_Gel_Sissifier	"Gherod"	g-white	"normal"
"wyvern goop"	Figure of Item_Wyvern_Goop	"Gherod"	g-white	"normal"
[emap - special]
"Navigation - Signal Lost Screen"	Figure of emap_special_signalnotfound_icon	"executaball"	g-black	"normal"
"Navigation - Shutdown Screen"	Figure of emap_special_shutdown_icon	"executaball"	g-black	"normal"
[emap - mall]
"Navigation - Mall - Alley"	Figure of emap_mall_alley_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Atrium"	Figure of emap_mall_atrium_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Bodyshop"	Figure of emap_mall_bodyshop_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Branson & Partner"	Figure of emap_mall_bransonpartner_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Brookstone Books"	Figure of emap_mall_brookstonebooks_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Christmas Village"	Figure of emap_mall_Christmasvillage_icon	"executaball"	g-black	"normal"
"Navigation - Mall - East Wing"	Figure of emap_mall_eastwing_icon	"executaball"	g-black	"normal"
"Navigation - Mall - FoodCourt"	Figure of emap_mall_foodcourt_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Foyer"	Figure of emap_mall_foyer_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Game Store"	Figure of emap_mall_gamestore_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Garage"	Figure of emap_mall_garage_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Guardpost"	Figure of emap_mall_guardpost_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Lockers"	Figure of emap_mall_lockers_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Lot East"	Figure of emap_mall_loteast_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Lot North"	Figure of emap_mall_lotnorth_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Lot South"	Figure of emap_mall_lotsouth_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Lot West"	Figure of emap_mall_lotwest_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Nermine's"	Figure of emap_mall_nermines_icon	"executaball"	g-black	"normal"
"Navigation - Mall - PK Boutique"	Figure of emap_mall_pkboutique_icon	"executaball"	g-black	"normal"
"Navigation - Mall - Restrooms"	Figure of emap_mall_restrooms_icon	"executaball"	g-black	"normal"
"Navigation - Mall - ShagShack"	Figure of emap_mall_shagshack_icon	"executaball"	g-black	"normal"
"Navigation - Mall - West Wing"	Figure of emap_mall_westwing_icon	"executaball"	g-black	"normal"
[Library Map]
"Map Bunker_Main"	Figure of Map_Bunker_Main_icon	"Goncalo"	g-black	"normal"
"Map Bunker_Restroom"	Figure of Map_Bunker_Restroom_icon	"Goncalo"	g-black	"normal"
"Map Bunker_Shower"	Figure of Map_Bunker_Shower_icon	"Goncalo"	g-black	"normal"
"Map Bunker_Storeroom"	Figure of Map_Bunker_Storeroom_icon	"Goncalo"	g-black	"normal"
"Map City"	Figure of Map_City_icon	"Goncalo"	g-black	"inline_only"
"Map Library_Back"	Figure of Map_Library_Back_icon	"Goncalo"	g-black	"normal"
"Map Library_Front"	Figure of Map_Library_Front_icon	"Goncalo"	g-black	"normal"
"Map Library_Fountain"	Figure of Map_Library_Fountain_icon	"Goncalo"	g-black	"normal"
"Map Library_Street"	Figure of Map_Library_Street_icon	"Goncalo"	g-black	"normal"
"Map Library_Garden"	Figure of Map_Library_Garden_icon	"Goncalo"	g-black	"normal"
"Map Library_Shack"	Figure of Map_Library_Shack_icon	"Goncalo"	g-black	"normal"
"Map Library_North1"	Figure of Map_Library_North1_icon	"Goncalo"	g-black	"normal"
"Map Library_North2"	Figure of Map_Library_North2_icon	"Goncalo"	g-black	"normal"
"Map Library_North3"	Figure of Map_Library_North3_icon	"Goncalo"	g-black	"normal"
"Map Library_North4"	Figure of Map_Library_North4_icon	"Goncalo"	g-black	"normal"
"Map Library_South1"	Figure of Map_Library_South1_icon	"Goncalo"	g-black	"normal"
"Map Library_South2"	Figure of Map_Library_South2_icon	"Goncalo"	g-black	"normal"
"Map Library_South3"	Figure of Map_Library_South3_icon	"Goncalo"	g-black	"normal"
"Map Library_2F_West"	Figure of Map_Library_2F_West_icon	"Goncalo"	g-black	"normal"
"Map Library_2F_North"	Figure of Map_Library_2F_North_icon	"Goncalo"	g-black	"normal"
"Map Library_2F_South"	Figure of Map_Library_2F_South_icon	"Goncalo"	g-black	"normal"
"Map Library_2F_East"	Figure of Map_Library_2F_East_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 1"	Figure of Map_RedLight_Nopower_1_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 2"	Figure of Map_RedLight_Nopower_2_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 3"	Figure of Map_RedLight_Nopower_3_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 4"	Figure of Map_RedLight_Nopower_4_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 5"	Figure of Map_RedLight_Nopower_5_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 6"	Figure of Map_RedLight_Nopower_6_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 7"	Figure of Map_RedLight_Nopower_7_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 8"	Figure of Map_RedLight_Nopower_8_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 9"	Figure of Map_RedLight_Nopower_9_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 10"	Figure of Map_RedLight_Nopower_10_icon	"Goncalo"	g-black	"normal"
"Map Redlight Nopower 11"	Figure of Map_RedLight_Nopower_11_icon	"Goncalo"	g-black	"normal"
"Map Redlight 1"	Figure of Map_RedLight_1_icon	"Goncalo"	g-black	"normal"
"Map Redlight 2"	Figure of Map_RedLight_2_icon	"Goncalo"	g-black	"normal"
"Map Redlight 3"	Figure of Map_RedLight_3_icon	"Goncalo"	g-black	"normal"
"Map Redlight 4"	Figure of Map_RedLight_4_icon	"Goncalo"	g-black	"normal"
"Map Redlight 5"	Figure of Map_RedLight_5_icon	"Goncalo"	g-black	"normal"
"Map Redlight 6"	Figure of Map_RedLight_6_icon	"Goncalo"	g-black	"normal"
"Map Redlight 7"	Figure of Map_RedLight_7_icon	"Goncalo"	g-black	"normal"
"Map Redlight 8"	Figure of Map_RedLight_8_icon	"Goncalo"	g-black	"normal"
"Map Redlight 9"	Figure of Map_RedLight_9_icon	"Goncalo"	g-black	"normal"
"Map Redlight 10"	Figure of Map_RedLight_10_icon	"Goncalo"	g-black	"normal"
"Map Redlight 11"	Figure of Map_RedLight_11_icon	"Goncalo"	g-black	"normal"
"Map Farm 1"	Figure of Map_Farm_1_icon	"Goncalo"	g-black	"normal"
"Map Farm 2"	Figure of Map_Farm_2_icon	"Goncalo"	g-black	"normal"
"Map Farm 3"	Figure of Map_Farm_3_icon	"Goncalo"	g-black	"normal"
"Map Farm 4"	Figure of Map_Farm_4_icon	"Goncalo"	g-black	"normal"
"Map Farm 5"	Figure of Map_Farm_5_icon	"Goncalo"	g-black	"normal"
"Map Farm 6"	Figure of Map_Farm_6_icon	"Goncalo"	g-black	"normal"
"Map Farm 7"	Figure of Map_Farm_7_icon	"Goncalo"	g-black	"normal"
"Map Farm 8"	Figure of Map_Farm_8_icon	"Goncalo"	g-black	"normal"
"Map Farm 9"	Figure of Map_Farm_9_icon	"Goncalo"	g-black	"normal"
"Map Farm 10"	Figure of Map_Farm_10_icon	"Goncalo"	g-black	"normal"
"Map Farm 11"	Figure of Map_Farm_11_icon	"Goncalo"	g-black	"normal"
"Map Farm 12"	Figure of Map_Farm_12_icon	"Goncalo"	g-black	"normal"
"Map Zoo 1"	Figure of Map_Zoo_1_icon	"Goncalo"	g-black	"normal"
"Map Zoo 2"	Figure of Map_Zoo_2_icon	"Goncalo"	g-black	"normal"
"Map Zoo 3"	Figure of Map_Zoo_3_icon	"Goncalo"	g-black	"normal"
"Map Zoo 4"	Figure of Map_Zoo_4_icon	"Goncalo"	g-black	"normal"
"Map Zoo 5"	Figure of Map_Zoo_5_icon	"Goncalo"	g-black	"normal"
"Map Zoo 6"	Figure of Map_Zoo_6_icon	"Goncalo"	g-black	"normal"
"Map Zoo 7"	Figure of Map_Zoo_7_icon	"Goncalo"	g-black	"normal"
"Map Zoo 8"	Figure of Map_Zoo_8_icon	"Goncalo"	g-black	"normal"
"Map Zoo 9"	Figure of Map_Zoo_9_icon	"Goncalo"	g-black	"normal"
"Map Zoo 10"	Figure of Map_Zoo_10_icon	"Goncalo"	g-black	"normal"
"Map Zoo 11"	Figure of Map_Zoo_11_icon	"Goncalo"	g-black	"normal"
"Map Zoo 12"	Figure of Map_Zoo_12_icon	"Goncalo"	g-black	"normal"
"Map Zoo 13"	Figure of Map_Zoo_13_icon	"Goncalo"	g-black	"normal"
"Map Zoo 14"	Figure of Map_Zoo_14_icon	"Goncalo"	g-black	"normal"
"Map Zoo 15"	Figure of Map_Zoo_15_icon	"Goncalo"	g-black	"normal"
"Map Beach Full"	Figure of Map_Beach_Full_icon	"Goncalo"	g-black	"normal"
"Map Beach 1"	Figure of Map_Beach_1_icon	"Goncalo"	g-black	"normal"
"Map Beach 2"	Figure of Map_Beach_2_icon	"Goncalo"	g-black	"normal"
"Map Beach 3"	Figure of Map_Beach_3_icon	"Goncalo"	g-black	"normal"
"Map Beach 4"	Figure of Map_Beach_4_icon	"Goncalo"	g-black	"normal"
"Map Beach 5"	Figure of Map_Beach_5_icon	"Goncalo"	g-black	"normal"
"Map Beach 6"	Figure of Map_Beach_6_icon	"Goncalo"	g-black	"normal"
"Map Beach 7"	Figure of Map_Beach_7_icon	"Goncalo"	g-black	"normal"
"Map Beach 8"	Figure of Map_Beach_8_icon	"Goncalo"	g-black	"normal"
"Map Beach 9"	Figure of Map_Beach_9_icon	"Goncalo"	g-black	"normal"
"Map Beach 10"	Figure of Map_Beach_10_icon	"Goncalo"	g-black	"normal"
"Map Beach 11"	Figure of Map_Beach_11_icon	"Goncalo"	g-black	"normal"
"Map Beach 12"	Figure of Map_Beach_12_icon	"Goncalo"	g-black	"normal"
"Map Beach 13"	Figure of Map_Beach_13_icon	"Goncalo"	g-black	"normal"
"Map Beach 14"	Figure of Map_Beach_14_icon	"Goncalo"	g-black	"normal"
"Map Beach 15"	Figure of Map_Beach_15_icon	"Goncalo"	g-black	"normal"
[emap - Capitol building]
"emap - A Volcanic Crater"	Figure of emap_A_Volcanic_Crater_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Approaching the Capitol Building"	Figure of emap_Approaching_Capitol_Building_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Charred Streets"	Figure of emap_Charred_Streets_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Path of Ashes"	Figure of emap_Path_of_Ashes_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Rusty Walkways"	Figure of emap_Rusty_Walkways_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Salamander Hideaway"	Figure of emap_Salamander_Hideaway_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Fire station 86]
"emap - Fire Station 86"	Figure of emap_Fire_Station_86_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Firehouse"	Figure of emap_Firehouse_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Sleeping Quarters"	Figure of emap_Sleeping_Quarters_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Green apartment building]
"emap - Brennan's Bathroom"	Figure of emap_Brennans_Bathroom_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Brennan's Bedroom"	Figure of emap_Brennans_Bedroom_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Green Apartment Building"	Figure of emap_Green_Apartment_Building_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Green Lobby"	Figure of emap_Green_Lobby_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Overgrown Rooftop"	Figure of emap_Overgrown_Rooftop_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Survivor Refuge"	Figure of emap_Survivor_Refuge_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Milking Facility Entrance]
"emap - Milking Facility Entrance"	Figure of emap_Milking_Facility_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Milking Facility Factory"	Figure of emap_Milking_Facility_Factory_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Milking Facility Operations Room"	Figure of emap_Milking_Facility_Operations_Room_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Pediatrics Lobby]
"emap - Doctor's Office"	Figure of emap_Doctors_office_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Pediatrics Lobby"	Figure of emap_Pediatrics_Lobby_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Red Apartment Building]
"emap - Raven Nest"	Figure of emap_Raven_Nest_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Red Apartment 1st Floor"	Figure of emap_Red_Apartment_1st_Floor_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Red Apartment 2nd Floor"	Figure of emap_Red_Apartment_2nd_Floor_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Red Apartment 3rd Floor"	Figure of emap_Red_Apartment_3rd_Floor_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Red Apartment 4th Floor"	Figure of emap_Red_Apartment_4th_Floor_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Red Apartment Building"	Figure of emap_Red_Apartment_Building_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Red Apartment Rooftop"	Figure of emap_Red_Apartment_Rooftop_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Park Entrance]
"emap - Hiking Trail Bend"	Figure of emap_Hiking_Trail_Bend_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hiking Trail Split"	Figure of emap_Hiking_Trail_Split_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hiking Trail Start"	Figure of emap_Hiking_Trail_Start_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Park Entrance"	Figure of emap_Park_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Park Trail"	Figure of emap_Park_Trail_Secret_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Shinto Shrine"	Figure of emap_Shinto_Shrine_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Stocks"	Figure of emap_Stocks_icon	"Wolfram Rolf"	g-black	"normal"
[emap - The Palomino]
"emap - Ammy's Flatlet"	Figure of emap_Ammys_Flatlet_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Palomino"	Figure of emap_Palomino_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Private Booths"	Figure of emap_Private_Booths_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Private Club Room"	Figure of emap_Private_Club_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Topless Lounge"	Figure of emap_Topless_Lounge_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Dry Planes]
"emap - Dry Plains"	Figure of emap_Dry_Plains_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hidden Camp"	Figure of emap_Hidden_Camp_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Inconspicuous Trail"	Figure of emap_Inconspicuous_Trail_icon	"Wolfram Rolf"	g-black	"normal"
[emap - State Fair]
"emap - State Fair"	Figure of emap_State_Fair_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Entrance to high rise District]
"emap - Entrance to the High Rise District"	Figure of emap_Entrance_to_the_High_Rise_District_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Overgrown Street"	Figure of emap_Overgrown_Street_icon	"Wolfram Rolf"	g-black	"normal"
[emap - ZaphyrBut mark]
"emap - Zephyr Lobby"	Figure of emap_Zephyr_Lobby_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Zephyr Storeroom"	Figure of emap_Zephyr_Storeroom_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Hospital]
"emap - City Hospital"	Figure of emap_City_Hospital_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hospital Halls"	Figure of emap_Hospital_Halls_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hospital Interior"	Figure of emap_Hospital_Interior_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Locked Stairwell"	Figure of emap_Locked_Starwell_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Plant Overview]
"emap - Administration Offices"	Figure of emap_Administration_Offices_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Catwalk"	Figure of emap_Catwalk_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Control Room"	Figure of emap_Control_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Plant Lobby"	Figure of emap_Plant_Lobby_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Plant Overview"	Figure of emap_Plant_Overview_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Power Lines]
"emap - Power Lines"	Figure of emap_Power_Lines_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Abandoned Lot]
"emap - Abandoned Lot"	Figure of emap_Abandoned_Lot_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Junkyard Alley"	Figure of emap_Junkyard_Alley_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Junkyard Entrance"	Figure of emap_Junkyard_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Storage Room"	Figure of emap_Storage_Room_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Museum Foyer]
"emap - Museum Foyer"	Figure of emap_Museum_Foyer_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Grey Abbey Library]
"emap - Grey Abbey Library"	Figure of emap_Grey_Abbey_Library_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Attic"	Figure of emap_Attic_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Back Library"	Figure of emap_Back_Library_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Breakroom"	Figure of emap_Breakroom_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Bunker"	Figure of emap_Bunker_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Communal Shower"	Figure of emap_Communal_Shower_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Computer Lab"	Figure of emap_Computer_Lab_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Courtyard"	Figure of emap_Courtyard_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Darkened Alcove"	Figure of emap_Darkened_Alcove_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Garden View"	Figure of emap_Garden_View_icon	"Wolfram Rolf"	g-black	"normal"
"emap - George's Animal Emporium"	Figure of emap_Georges_Animal_Emporium_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Grey Abbey 2F"	Figure of emap_Grey_Abbey_2F_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Grey Abbey Garden"	Figure of emap_Grey_Abbey_Garden_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Half-Renovated Room"	Figure of emap_Half_Renovated_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Large Shed"	Figure of emap_Large_Shed_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Looted Shops"	Figure of emap_Looted_Shops_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Main & 7th Street"	Figure of emap_Main_&_7th_Street_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Maintenance Storeroom"	Figure of emap_Maintainance_Storeroom_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Makeshift Rec Room"	Figure of emap_Makeshift_Rec_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Pantry"	Figure of emap_Pantry_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Sitting Area"	Figure of emap_Sitting_Area_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Underground Restroom"	Figure of emap_Underground_Restroom_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Trevor Lab]
"emap - 2F Trevor Labs"	Figure of emap_2F_Trevor_Labs_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Outside Trevor Labs"	Figure of emap_Outside_Trevor_Labs_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Primary Lab"	Figure of emap_Primary_Lab_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Trevor Labs Lobby"	Figure of emap_Trevor_Labs_Lobby_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Bright Alley]
"emap - Bright Alley"	Figure of emap_Bright_Alley_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Entrance to the Red Light District]
"emap - Atticus's Bedroom"	Figure of emap_Atticuss_Bedroom_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Boundary Street East"	Figure of emap_Boundary_Street_East_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Boundary Street West"	Figure of emap_Boundary_Street_West_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Burned-Out Chapel"	Figure of emap_BurnedOut_Chapel_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Crimson Street"	Figure of emap_Crimson_Street_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Darius's Crib"	Figure of emap_Dariuss_Crib_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Dark Alley"	Figure of emap_Dark_Alley_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Dingy Alley"	Figure of emap_Dingy_Alley_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Entrance to the Red Light District"	Figure of emap_Entrance_to_the_Red_Light_District_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Cell"	Figure of emap_Hellfire_Cell_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Club"	Figure of emap_Hellfire_Club_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Corridor"	Figure of emap_Hellfire_Corridor_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Dungeon"	Figure of emap_Hellfire_Dungeon_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Lounge"	Figure of emap_Hellfire_Lounge_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Restroom"	Figure of emap_Hellfire_Restroom_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Storage"	Figure of emap_Hellfire_Storage_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire Unknown"	Figure of emap_Hellfire_Unknown_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Narrow Alley"	Figure of emap_Narrow_Alley_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Northern Street 1"	Figure of emap_Northern_Street_1_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Northern Street 2"	Figure of emap_Northern_Street_2_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Restrained Desire"	Figure of emap_Restrained_Desire_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Sacristy"	Figure of emap_Sacristy_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Hellfire VIP Floor"	Figure of emap_VIP_Floor_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Orc Lair]
"emap - Breeder Lockup A"	Figure of emap_Breeder_Lockup_A_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Bright Hallway 1"	Figure of emap_Bright_Hallway_1_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Bright Hallway 2"	Figure of emap_Bright_Hallway_2_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Dark Hallway 1"	Figure of emap_Dark_Hallway_1_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Dark Hallway 2"	Figure of emap_Dark_Hallway_2_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Main Hall"	Figure of emap_Main_Hall_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Observation Room"	Figure of emap_Observation_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Orc Lair Side Entrance"	Figure of emap_Orc_Lair_Side_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Police Station Lockerroom"	Figure of emap_Police_Station_Locker_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Slave Cell 1"	Figure of emap_Slave_Cell_1_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Slave Cell 2"	Figure of emap_Slave_Cell_2_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Beach]
"emap - Beach Plaza"	Figure of emap_Beach_Plaza_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Boardwalk"	Figure of emap_Boardwalk_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Church Hall"	Figure of emap_church_hall_icon	"Wolfram Rolf"	g-black	"normal"
"emap - City Center"	Figure of emap_City_Center_icon	"Wolfram Rolf"	g-black	"normal"
"emap - City Entrance"	Figure of emap_City_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - City Market"	Figure of emap_City_Market_icon	"Wolfram Rolf"	g-black	"normal"
"emap - City Residential"	Figure of emap_City_Residential_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Dirty Sheds"	Figure of emap_Dirty_Sheds_icon	"Wolfram Rolf"	g-black	"normal"
"emap - BeachEnd"	Figure of emap_End_of_Beach_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Open Ocean"	Figure of emap_Open_Ocean_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Overgrown Area"	Figure of emap_Overgrown_Area_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Public Beach"	Figure of emap_Public_Beach_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Restaurant"	Figure of emap_Resteraunt_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Rock Arch"	Figure of emap_Rock_Arch_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Rocky Cliff"	Figure of emap_Rocky_Cliff_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Royal Bed Chambers"	Figure of emap_Royal_Bed_Chambers_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Royal Palace Entrance"	Figure of emap_Royal_Palace_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Royal Throne Room"	Figure of emap_Royal_Throne_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Shallow Bay"	Figure of emap_Shallow_Bay_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Sunken Ship"	Figure of emap_Sunny_Snacks_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Wild Fringe"	Figure of emap_Wild_Fringe_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Bouncy Castle]
"emap - Ball Pit Room"	Figure of emap_Ball_Pit_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Bouncy Castle"	Figure of emap_Bouncy_Castle_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Bouncing Play Room"	Figure of emap_Bouncy_Play_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Castle Throne Room"	Figure of emap_Castle_Throne_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Eastern Parapets"	Figure of emap_Eastern_Parapets_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Fencing Room"	Figure of emap_Fencing_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Great Hall"	Figure of emap_Great_Hall_icon	"Wolfram Rolf"	g-black	"normal"
"emap - King's Chambers"	Figure of emap_Kings_Chambers_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Knight's Chambers"	Figure of emap_Knights_Chambers_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Lower Tower"	Figure of emap_Lower_Tower_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Punching Pillars"	Figure of emap_Punching_Pillars_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Tower Turret"	Figure of emap_Tower_Turret_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Toy Room"	Figure of emap_Toy_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Upper Hall"	Figure of emap_Upper_Hall_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Upper Tower"	Figure of emap_Upper_Tower_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Western Parapets"	Figure of emap_Western_Parapets_icon	"Wolfram Rolf"	g-black	"normal"
[emap - College Campus]
"emap - Astroslide Field Locker-Room"	Figure of emap_Astroslide_Field_Locker_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Astroslide Football Field"	Figure of emap_Astroslide_Football_Field_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Athletic Street"	Figure of emap_Athletic_Street_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Administration Building"	Figure of emap_College_Administration_Building_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Belltower"	Figure of emap_College_Belltower_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Campus Entrance"	Figure of emap_College_Campus_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Fountain"	Figure of emap_College_Fountain_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Walkway East"	Figure of emap_College_Walkway_East_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Walkway Northeast"	Figure of emap_College_Walkway_Northeast_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Walkway Northwest"	Figure of emap_College_Walkway_Northwest_icon	"Wolfram Rolf"	g-black	"normal"
"emap - College Walkway West"	Figure of emap_College_Walkway_West_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Dean's Office"	Figure of emap_Deans_Office_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Dorm Street"	Figure of emap_Dorm_Street_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Greek Street"	Figure of emap_Greek_Street_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Jadako's Room"	Figure of emap_Jadakos_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Jake's Room"	Figure of emap_Jakes_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Julian's Room"	Figure of emap_Julians_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Lecture Street"	Figure of emap_Lecture_Street_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Pericles' Room"	Figure of emap_Pericles_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Randall's Room"	Figure of emap_Randalls_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Richard's Room"	Figure of emap_Richards_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Second Floor Male Dorms"	Figure of emap_Second_Floor_Male_Dorms_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Showers"	Figure of emap_Showers_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Sports Arena Lockerroom"	Figure of emap_Sports_Arena_Lockerroom_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Stewart's Room"	Figure of emap_Stewarts_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Sylvia's Room"	Figure of emap_Sylvias_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Tenvale College Female Dorms"	Figure of emap_Tenvale_College_Female_Dorms_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Tenvale College Library"	Figure of emap_Tenvale_College_Library_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Tenvale College Male Dorms"	Figure of emap_Tenvale_College_Male_Dorms_icon	"Wolfram Rolf"	g-black	"normal"
"emap - The Clouds"	Figure of emap_The_Clouds_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Thunderbolt's Stable"	Figure of emap_Thunderbolts_Stable_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Wally's Room"	Figure of emap_Wallys_Room_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Your Dorm Room"	Figure of emap_Your_Dorm_Room_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Urban Forest]
"emap - Avalon-Crossroads"	Figure of emap_Avalon_Crossroads_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Forest Burrow Entrance"	Figure of emap_Forest_Borrow_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Forest Cave Entrance"	Figure of emap_Forest_Cave_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Frozen Cave Tunnel"	Figure of emap_Frozen_Cave_Tunnel_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Ice Fox's Den"	Figure of emap_Ice_Foxes_Den_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Ironscale Hollow"	Figure of emap_Ironscale_Hollow_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Kobold Caves Gates"	Figure of emap_Kobolds_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Mysterious Glade"	Figure of emap_Mysterious_Glade_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Snowy Forest Trail"	Figure of emap_Snowy_Forest_Trail_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Urban Forest"	Figure of emap_Urban_Forest_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Virgin's Pass"	Figure of emap_Virgins_Pass_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Warehouse District]
"emap - Gloomy Warehouse"	Figure of emap_Gloomy_Warehouse_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Northern Docks"	Figure of emap_Northern_Docks_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Packaging Warehouse"	Figure of emap_Packaging_Warehouse_icon	"Wolfram Rolf"	g-black	"normal"
"emap - S Harbor"	Figure of emap_South_Harbor_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Warehouse District"	Figure of emap_Warehouse_District_icon	"Wolfram Rolf"	g-black	"normal"
[emap - Zoo]
"emap - Bird Enclosure"	Figure of emap_Bird_Enclosure_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Bird House"	Figure of emap_Bird_House_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Border Wall"	Figure of emap_Border_Wall_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Cheetah Habitat"	Figure of emap_Cheetah_Habitat_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Fence Path"	Figure of emap_Fence_Path_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Gator Pit"	Figure of emap_Gator_Pit_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Main Path 1"	Figure of emap_Main_Path_1_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Main Path 2"	Figure of emap_Main_Path_2_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Monkey House"	Figure of emap_Monkey_House_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Snake House"	Figure of emap_Snake_House_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Zoo Entrance"	Figure of emap_Zoo_Entrance_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Zoo Entryway"	Figure of emap_Zoo_Entryway_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Zoo Giftshop"	Figure of emap_Zoo_Giftshop_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Zoo Parking"	Figure of emap_Zoo_Parking_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Zoo Rest Area"	Figure of emap_Zoo_Rest_Area_icon	"Wolfram Rolf"	g-black	"normal"
"emap - Zoo Restrooms"	Figure of emap_Zoo_Restrooms_icon	"Wolfram Rolf"	g-black	"normal"

artistcredits is an action applying to nothing.

understand "artwork credits" as artistcredits.
understand "artworkcredits" as artistcredits.
understand "art credits" as artistcredits.
understand "artcredits" as artistcredits.
understand "art cred" as artistcredits.
understand "artcred" as artistcredits.

carry out artistcredits:
	say "Artwork Credits for Flexible Survival:[line break]";
	LineBreak;
	say "Infections:[line break]";
	say "     Ace by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Alpha Wolf by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Amazon by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Anthro Shaft Beast concept created by TwilightMaster @ furaffinity.net[line break]";
	say "     Anthro Shaft Beast artwork by Demon-Man @ furaffinity.net[line break]";
	say "     Bear by Anymouse1968 @ furaffinity.net[line break]";
	say "     Beaver by HBruton @ furaffinity.net[line break]";
	say "     Black Equinoid by Anymouse1968 @ furaffinity.net[line break]";
	say "     Blue Gel by Rastear @ y-gallery.net[line break]";
	say "     Bobcat by Uniformvixen @ furaffinity.net[line break]";
	say "     Bottlenose Toy by Anymouse1968 @ furaffinity.net[line break]";
	say "     Catgirl by Valen @ ?[line break]";
	say "     Cat Ninja (female) by Bix707 @ furaffinity.net[line break]";
	say "     Centaur Stallion by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Centaur Mare by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Cerberus by Anonymous[line break]";
	say "     Cheetah Woman by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Chocolate Lab by SparklePens @ furaffinity.net[line break]";
	say "     Cougar by catnamedfish @ furaffinity.net[line break]";
	say "     Dark Elf by Nokturnalkittie @ https://www.furaffinity.net/user/nokturnalkittie/[line break]";
	say "     Demon Brute by Lay @ y-gallery.net[line break]";
	say "     Doberman Cop by TheRedAngel @ furaffinity.net[line break]";
	say "     Donkeywoman by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Donkeyman by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Dracovixentaur by Anymouse1968 @ furaffinity.net[line break]";
	say "     Ebonflame Drake by Anonymous[line break]";
	say "     Elven Hunter Encounter by Aosuka @ y-gallery.net[line break]";
	say "     Elven Hunter by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Ewe by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Feline (females) by Anymouse1968 @ furaffinity.net[line break]";
	say "     Feral Gryphon by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Feral Shaft Beast concept created by TwilightMaster @ furaffinity.net[line break]";
	say "     Feral Shaft Beast artwork by Demon-Man @ furaffinity.net[line break]";
	say "     Fiona by Valen[line break]";
	say "     Fire Sprite Male by Genelightfoot @ y-gallery.net[line break]";
	say "     Fluffy Owl by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Friendship Pony by Anymouse1968 @ furaffinity.net[line break]";
	say "     Gazelle by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     German Shepherd by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Giraffe Herm by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Goo Girl by Rastear @ y-gallery.net[line break]";
	say "     Gunbunny by HBruton @ furaffinity.net[line break]";
	say "     Harpy by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Hawkman by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Hellfire Demon by Gherod @ https://twitter.com/gherodv ; https://www.instagram.com/gherodv/[line break]";
	say "     Helot by Obieblu @ tumblr.com[line break]";
	say "     Hermaphrodite Gryphon by dbd @ furaffinity.net[line break]";
	say "     Hermaphrodite Gryphon by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Hermaphrodite Latex Vixen by Anymouse1968 @ furaffinity.net[line break]";
	say "     Homo Sapiens by Astro @ y-gallery.net[line break]";
	say "     Horny Doctor (male) by Cooper @ furaffinity.net[line break]";
	say "     Horsemazon by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Horseman by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Hulking Cheerleader by Seija @ ?[line break]";
	say "     Husky Alpha by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Husky Female by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Imp by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Incubus by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Jennifer by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Kangaroo by Anonymous[line break]";
	say "     Lamia by Anymouse1968 @ furaffinity.net[line break]";
	say "     Latex Ermine (color variants) by Anymouse1968 @ furaffinity.net[line break]";
	say "     Latex Ermine (creature loss) by Halcy0n @ furaffinity.net[line break]";
	say "     Latex Fox by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Leopardman by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Magic Drake by Anymouse1968 @ furaffinity.net[line break]";
	say "     Mammoth by Boo3 @ furaffinity.net[line break]";
	say "     Mammoth Pure Succumb by Boo3 @ furaffinity.net[line break]";
	say "     Mannequin by Rastear @ y-gallery.net[line break]";
	say "     Math Teacher by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Mental Mice by Xilrayne @ https://inkbunny.net/Xilrayne[line break]";
	say "     Messy Pig by Anymouse1968 @ furaffinity.net[line break]";
	say "     Megakitty by BushyCat @ furaffinity.net[line break]";
	say "     Minotaur by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Naga by Rastear @ y-gallery.net[line break]";
	say "     Ninja Cat (female) by Bix707 @ furaffinity.net[line break]";
	say "     Ninja Cat (male) by <redacted>[line break]";
	say "     Naga by Rastear @ y-gallery.net[line break]";
	say "     Orca by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Orc Breeder by Genelightfoot @ y-gallery.net[line break]";
	say "     Orc Warrior by Genelightfoot @ y-gallery.net[line break]";
	say "     Pink Gel by Rastear @ y-gallery.net[line break]";
	say "     Pink Poodle by Anymouse1968 @ furaffinity.net[line break]";
	say "     Pewter Consort by Xilrayne @ https://inkbunny.net/Xilrayne[line break]";
	say "     Pirate Shark by Zealot @  https://www.furaffinity.net/user/Drakosacerdos/[line break]";
	say "     Plush Lion by Anymouse1968 @ furaffinity.net[line break]";
	say "     Queen Bee by Caltroplay @ furaffinity.net[line break]";
	say "     Ram by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Reindeer by MoT @ furaffinity.net[line break]";
	say "     Saber Kitty by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Sabretooth by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Sand Man by Rastear @ y-gallery.net[line break]";
	say "     Satyress by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Sea Dragoness by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Sea Dragon by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Shadow Beast by Hioshiru @ https://www.furaffinity.net/user/hioshiru/[line break]";
	say "     Smooth Collie Shemale by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Siamese Cats by RedCoatCat @ furaffinity.net[line break]";
	say "     Snow Bat by Rosali @ Furaffinity.net[line break]";
	say "     Snow Leopard by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Spartan by Obieblu @ tumblr.com[line break]";
	say "     Spartan & Helot by Obieblu @ tumblr.com[line break]";
	say "     Stallionboi by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Succubus by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Sugar Glider by Xilrayne @ https://inkbunny.net/Xilrayne[line break]";
	say "     Thought Eater by Rastear @ y-gallery.net[line break]";
	say "     Tigress Hooker by Sharei @ furaffinity.net[line break]";
	say "     Triceratops by HBruton @ furaffinity.net[line break]";
	say "     Vixentaur by Anymouse1968 @ furaffinity.net[line break]";
	say "     Vixen Nurse by KV1NN4 @ furaffinity.net[line break]";
	say "     Voodoo Gecko by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Wereraptor by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Werewolf (female) by Watsup @ https://www.furaffinity.net/user/watsup/[line break]";
	say "     Wildcat by Strype @ furaffinity.net[line break]";
	say "     Wolftaur by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Wood Elf by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Wrestling Wolf by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Wyvern Male by Corbee @ https://www.furaffinity.net/user/corneliablanka/[line break]";
	say "     Wyvern Female by Corbee @ https://www.furaffinity.net/user/corneliablanka/[line break]";
	say "     Wyvern Female by Anonymous[line break]";
	say "     Yamato Dragon by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Yamato Dragoness by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Yuppie Mink by Anymouse1968 @ furaffinity.net[line break]";
	say "     Zebra by Purplepardus @ furaffinity.net[line break]";
	LineBreak;
	say "NPCs:[line break]";
	say "     Alexandra by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Amy by Sususmiles @ furaffinity.net[line break]";
	say "     Andrew by Rukis @ furaffinity.net[line break]";
	say "     Angie by Anymouse1968 @ furaffinity.net[line break]";
	say "     Adam by Kadel @ y-gallery.net[line break]";
	say "     Aerana by Gherod @ https://twitter.com/gherodv ; https://www.instagram.com/gherodv/[line break]";
	say "     Alex by canned @ weasyl.com (6cans @ furaffinity.net)[line break]";
	say "     Andre by Wemd @ furaffinity.net[line break]";
	say "     Anthony (dressed) by Laylo @ https://www.furaffinity.net/user/lay-lo/[line break]";
	say "     Anthony (design, naked) by FsMaverick @ http://www.furaffinity.net/user/fsmaverick/[line break]";
	say "     Artemis by FaroreNightclaw @ furaffinity.net[line break]";
	say "     Anastasia by SandySchreiber @ furaffinity.net[line break]";
	say "     Atticus by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Aurora by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Blanche (color) by The_Negative @ furaffinity.net[line break]";
	say "     Blanche (lineart) by Xenotropos @ furaffinity.net[line break]";
	say "     Blot by Anymouse1968 @ furaffinity.net[line break]";
	say "     Boghrim by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Bradford by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Brennan by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Brian by dhstein @ furaffinity.net[line break]";
	say "     Brooke by Otterbits @ https://www.furaffinity.net/user/otterbits/[line break]";
	say "     Brutus by Inkydemon @ https://www.furaffinity.net/user/inkydemon/[line break]";
	say "     Bubble by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Bunny Jock by Darian821 @ y-gallery.net[line break]";
	say "     Buster by Padunk @ furaffinity.net[line break]";
	say "     Candy by BeaverTyan @ https://www.furaffinity.net/scraps/beavertyan/[line break]";
	say "     Carl by Hufnaar @ furaffinity.net[line break]";
	say "     Carl + Eric by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Chase by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Chris by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Chris (breeder) by SteppeCrow @ http://kupo-klein.tumblr.com/[line break]";
	say "     Christy by Anymouse1968 @ furaffinity.net[line break]";
	say "     Christy (face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Colleen (face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Colleen (body) by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Corbin (face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Dash by Conchi @ https://artisticconch.tumblr.com/[line break]";
	say "     Danny (naked) by Laylo @ https://www.furaffinity.net/user/lay-lo/[line break]";
	say "     Danny (design + dressed) by Dragonpunk @ furaffinity.net[line break]";
	say "     Darius by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Dark Tyrant (Fallen King) by Gherod @ https://twitter.com/gherodv ; https://www.instagram.com/gherodv/[line break]";
	say "     David by Keitaro87 @ y-gallery.net / kei87art.tumblr.com[line break]";
	say "     Diego by valdericblackstag @ furaffinity.net[line break]";
	say "     Diego by Anonymous/Damdidoo[line break]";
	say "     Dmitri by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Dr. Matt (face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Dr. Matt by The_Negative @ furaffinity.net[line break]";
	say "     Dr. Moffatt (color) by The_Negative @ furaffinity.net[line break]";
	say "     Dr. Moffatt (bw) by MadTurtle @ furaffinity.net[line break]";
	say "     Dr. Mouse by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Doran by Anymouse1968 @ furaffinity.net[line break]";
	say "     Elijah by Banni @ https://www.furaffinity.net/user/banniart/[line break]";
	say "     Eric (depressed) Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Eric Headshot by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Eric (on sofa) by Bludwing @ http://bludwingart.tumblr.com[line break]";
	say "     Eric by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Erin Headshot by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Fancy by Anymouse1968 @ furaffinity.net[line break]";
	say "     Fang by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Francois by Xenotropos @ furaffinity.net[line break]";
	say "     Frank by Dolphpup @ weasyl.com (Isil @ furaffinity.net)[line break]";
	say "     Felix by ConnyChiwa @ https://www.furaffinity.net/user/connychiwa/[line break]";
	say "     Gabriel by Darian821 @ y-gallery.net[line break]";
	say "     Garrett by Catmonkshiro @ furaffinity.net[line break]";
	say "     Garth (face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Gillian by Eevachu @ furaffinity.net[line break]";
	say "     Gina by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Gobby by lionsilverwolf @ furaffinity.net[line break]";
	say "     Grant by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
[
	say "     Grant by uniformvixen @ furaffinity.net[line break]";
	say "     Grant (color) by Familliar @ furaffinity.net[line break]";
]
	say "     Hadiya (solo) by lionsilverwolf @ furaffinity.net[line break]";
	say "     Hadiya w/Gobby by SandySchreiber @ furaffinity.net[line break]";
	say "     Helen by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Henry (Adopt) by CastBound @ https://www.furaffinity.net/user/castbound/[line break]";
	say "     Hayato by Darian821 @ y-gallery.net[line break]";
	say "     Harold by Hufnaar @ furaffinity.net[line break]";
	say "     Hobo by Conchi @ https://artisticconch.tumblr.com/[line break]";
	say "     Honey by SandySchreiber @ furaffinity.net[line break]";
	say "     Isaac by Reaper3d @ https://www.furaffinity.net/user/reaper3d/[line break]";
	say "     James by Anyare @ furaffinity.net[line break]";
	say "     Janice by Anymouse1968 @ furaffinity.net[line break]";
	say "     Jason by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Jay by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Jill by Sususmiles @ furaffinity.net[line break]";
	say "     Jimmy by Redragon @ ???[line break]";
	say "     Katherine by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Karel by Reaper3d @ https://www.furaffinity.net/user/reaper3d/[line break]";
	say "     Katya by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Klauz by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Koghh by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Korvin by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Krampus by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Leonard by SandySchreiber @ furaffinity.net[line break]";
	say "     Lilith by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Lindsey by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	[say "     Logan by Rik @ https://www.furaffinity.net/user/almee/[line break]";] [WIP]
	say "     Malakhi by Jahi @ https://www.furaffinity.net/user/jahi/[line break]";
	say "     Master Mind by HBruton @ furaffinity.net[line break]";
	say "     Marc Orwell by CrashBurnDraw @ y-gallery.net[line break]";
	say "     Marc (fucked) by Laylo @ https://www.furaffinity.net/user/lay-lo/[line break]";
	say "     Mareslut by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Mason by Abelsword @ https://www.furaffinity.net/user/Abelsword[line break]";
	say "     Medea by LocksTO @ https://www.furaffinity.net/user/locksto/[line break]";
	say "     Micaela by Kattzie @ furaffinity.net[line break]";
	say "     Mike (face) SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Mike by Darian821 @ y-gallery.net[line break]";
	say "     Mogdraz by Gherod @ https://twitter.com/gherodv ; https://www.instagram.com/gherodv/[line break]";
	say "     Moreau by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Mul by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Nadia by Anymouse1968 @ furaffinity.net[line break]";
	say "     Nelson by Ticl @ https://www.furaffinity.net/user/ticl/[line break]";
	say "     Nermine by Lyttathebug @ furaffinity.net[line break]";
	say "     Newt by Anyare @ furaffinity.net[line break]";
	say "     Nightmare by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Orbul by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Orthas (face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Paula by Kikeri-arts @ deviantart.com[line break]";
	say "     Penny by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Rachel by o-kemono @ furaffinity.net[line break]";
	say "     Rane Headshot by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Rane by Inkydemon @ https://www.furaffinity.net/user/inkydemon/[line break]";
	say "     Rod by Ticl @ https://www.furaffinity.net/user/ticl/[line break]";
	say "     Ronda by Ticl @ https://www.furaffinity.net/user/ticl/[line break]";
	say "     Ronda (Slut Rat) by uniformvixen @ furaffinity.net[line break]";
	say "     Ruby by Watsup @ https://www.furaffinity.net/user/watsup/[line break]";
	say "     Ryousei by ValdericBlackstag @ https://www.furaffinity.net/user/valdericblackstag/[line break]";
	say "     Sally by Furball @ furaffinity.net[line break]";
	say "     Sam (as Dracovixentaur) by Anymouse1968 @ furaffinity.net[line break]";
	say "     Sam (as Vixentaur) by Anymouse1968 @ furaffinity.net[line break]";
	say "     Santa Claws by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Sandra by Trav @ ???[line break]";
	say "     Sarah by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Septus by Feralise @ furaffinity.net[line break]";
	say "     Septus (face) by Cirrusthecloud @ https://www.furaffinity.net/user/cirrusthecloud/[line break]";
	say "     Sgt Marks by Anyare @ furaffinity.net[line break]";
	say "     Stella by Furball @ furaffinity.net[line break]";
	say "     Sidney by Anymouse1968 @ furaffinity.net[line break]";
	say "     Siren by SteppeCrow @ https://www.furaffinity.net/user/steppecrow/[line break]";
	say "     Skarnoth by Kien-Biu @ http://nsfwbetitngoan.tumblr.com/[line break]";
	say "     Slutslave by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Snow by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Sonny by The_Negative @ furaffinity.net / Colors by nokturnalkittie @ furaffinity.net[line break]";
	say "     Spike Body by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Spike Headshot by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Susan (face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Sven by Brun69 @ https://www.furaffinity.net/user/brun69/[line break]";
	say "     Tehuantl M/F Faces by Vashaa @ https://www.furaffinity.net/user/vashaa/[line break]";
	say "     Tehuantl Male by Yora @ https://www.furaffinity.net/user/yora/[line break]";
	say "     Thomas by Inkydemon @ https://www.furaffinity.net/user/inkydemon/[line break]";
	say "     Tiger Shark Warrior by Zealot @ https://www.furaffinity.net/user/Drakosacerdos/[line break]";
	say "     Timothy by Waxraven/WXRVN @ http://www.waxraven.tumblr.com/[line break]";
	say "     Tiny Tim by Obieblu @ tumblr.com[line break]";
	say "     Tiny Tim (Face) by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Toven by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Tristian by Enaya-TheWhiteWolfen @ https://www.furaffinity.net/user/enaya-thewhitewolfen/";
	say "     Tyke by TylerAz @ https://www.furaffinity.net/user/tyleraz[line break]";
	say "     Urik Headshot by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Urik by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Valerie by Sususmiles @ furaffinity.net[line break]";
	say "     Violet Headshot by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "     Xaedihr by Gherod @ https://twitter.com/gherodv ; https://www.instagram.com/gherodv/[line break]";
	say "     Yatur by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "     Yolanda by SandySchreiber @ furaffinity.net[line break]";
	say "     Zigor by AugurMew @ furaffinity.net[line break]";
	say "     Zoe Headshot by SineAlas @ https://www.furaffinity.net/user/SineAlas/[line break]";
	say "Scenes:[line break]";
	say "     Bottlenose Trapped by Anymouse1968 @ furaffinity.net[line break]";
	say "     Brutus & David by Rocketman @ http://rocketmenstudio.tumblr.com/[line break]";
	say "     Boy to Fox Shampoo by Watsup @ https://www.furaffinity.net/user/watsup/[line break]";
	say "     Christy (tourist ending) by maxblackrabbit @ furaffinity.net[line break]";
	say "     Corbin & Felinoid by ValdericBlackstag @ https://www.furaffinity.net/user/valdericblackstag/[line break]";
	say "     Duke & Shawn by Hufnaar @ furaffinity.net[line break]";
	say "     Fang and Candy by Dolphpup @ weasyl.com (Isil @ furaffinity.net)[line break]";
	say "     Floor Show by MoT @ furaffinity.net[line break]";
	say "     Malakhi & Barnabas by Jahi @ https://www.furaffinity.net/user/jahi/[line break]";
	say "     Malakhi & Kano by Jahi @ https://www.furaffinity.net/user/jahi/[line break]";
	say "     Mammoth Cock Vore Sequence by Boo3 @ furaffinity.net[line break]";
	say "     Mammoth Pure Succumb by Boo3 @ furaffinity.net[line break]";
	say "     Parasol Nap by Watsup @ https://www.furaffinity.net/user/watsup/[line break]";
	say "     Rane & Eric Scenes by Lyttathebug @ https://lyttathebug.deviantart.com/[line break]";
	say "     Sam's Bad End by The_Negative @ furaffinity.net[line break]";
	say "     Shy Vixen by Watsup @ https://www.furaffinity.net/user/watsup/[line break]";
	say "     Skin Diagrams by Wahn @ https://www.furaffinity.net/user/wahn/[line break]";
	say "     Skunkbeast Lord Battle by MoT @ furaffinity.net[line break]";
	say "     Spidertaur by CrashBurnDraw @ y-gallery.net[line break]";
	say "     Talov & Kerr by Kupo Klein @ http://kupo-klein.tumblr.com/[line break]";
	say "Maps:[line break]";
	say "     Mall Map by Anonymous @ -[line break]";
	say "     Beach Map by Goncalo @ https://www.artstation.com/beepe/[line break]";
	say "     City Map by Goncalo @ https://www.artstation.com/beepe/[line break]";
	say "     Library Maps by Goncalo @ https://www.artstation.com/beepe/[line break]";
	say "     Red Light District Maps by Goncalo @ https://www.artstation.com/beepe/[line break]";

ArtistBanning is an action applying to nothing.

understand "artist block" as ArtistBanning.
understand "artist ban" as ArtistBanning.
understand "artist disable" as ArtistBanning.
understand "artistblocking" as ArtistBanning.
understand "artistsblocking" as ArtistBanning.
understand "artistbanning" as ArtistBanning.
understand "artistsbanning" as ArtistBanning.
understand "ban artist" as ArtistBanning.
understand "ban artists" as ArtistBanning.
understand "block artist" as ArtistBanning.
understand "block artists" as ArtistBanning.
understand "disable artist" as ArtistBanning.
understand "disable artists" as ArtistBanning.

carry out ArtistBanning:
	artistbanmenu;

to artistbanmenu: [more compact version]
	let artistlist be {"Abelsword", "Anonymous", "Anyare", "Anymouse1968", "Aosuka", "Astro", "AugurMew", "BeaverTyan", "Bix707", "Bludwing", "Boo3", "Brun69", "BushyCat", "Caltroplay", "Candy", "canned", "CastBound", "Catmonkshiro", "catnamedfish", "Cirrusthecloud", "Conchi", "ConnyChiwa", "Cooper", "Corbee", "CrashBurnDraw", "Damdidoo", "Darian821", "dbd", "Demon-Man", "dhstein", "Dolphpup", "Dragonpunk", "Eevachu", "Familliar", "FaroreNightclaw", "Feralise", "Furball", "FsMaverick", "Geir", "Genelightfoot", "Gherod", "Goncalo", "HBruton", "Hioshiru", "Hufnaar", "Inkydemon", "JaxxBlackFox", "Kadel", "Kattzie", "Keitaro87", "Kien-Biu", "Kikeri-arts", "Kupo Klein", "KV1NN4", "Lay", "Laylo", "lionsilverwolf", "Waxraven/WXRVN", "Luneth", "Lyttathebug", "MadTurtle", "MoT", "Nokturnalkittie", "Obieblu", "o-kemono", "Padunk", "Purplepardus", "Rastear", "Reaper3d", "RedCoatCat", "Redragon", "Rosali", "Rukis", "SandySchreiber", "Seija", "Sharei", "SineAlas", "Soryane", "SparklePens", "SteppeCrow", "Strype", "Sususmiles", "Ticl", "The_Negative", "TheRedAngel", "TheWhiteWolfen", "TwilightMaster", "TylerAz", "Uniformvixen", "Unknown", "valdericblackstag", "Valen", "Vashaa", "Wahn", "Watsup", "Wemd", "Wolfram Rolf", "Xenotropos, Yora"};
	now calcnumber is -1;
	let countnumber be 1;
	let abmexit be 0;
	while abmexit is 0:
		say "[bold type]Artists:[roman type][line break]";
		while countnumber <= number of entries in artistlist:
			say "[link][entry countnumber of artistlist][as][countnumber][end link]: [run paragraph on]";
			BlockCheck entry countnumber of artistList;
			if remainder after dividing countnumber by 5 is 0:
				LineBreak;
			increase countnumber by 1;
		say "[link]Exit Menu[as]0[end link][line break]";
		now countnumber is 1;
		while 1 is 1:
			say "Choice? (0-[number of entries in artistlist])>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= number of entries in artistlist:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 0:
			now abmexit is 1;
		else if calcnumber >= 1 and calcnumber <= number of entries in artistlist:
			artistbanswitch entry calcnumber of artistList;

to BlockCheck (x - text):
	if x is not listed in BlockList of Player:
		say "[bold type][special-style-1]On  [roman type]";
	else:
		say "[bold type][special-style-2]Off  [roman type]";

to artistbanswitch (name - text):
	if name is not listed in BlockList of Player:
		add name to Blocklist of Player;
		say "[name] Blocked!";
	else if name is listed in Blocklist of Player:
		remove name from Blocklist of Player;
		say "[name] Unblocked!";


ArtworkTest is an action applying to nothing.
understand "art test" as ArtworkTest.

carry out ArtworkTest:
	repeat with y running from 1 to number of filled rows in table of game art:
		choose row y in table of game art;
		say "[title entry]:";
		project icon entry;
		wait for any key;

FS Graphics ends here.
