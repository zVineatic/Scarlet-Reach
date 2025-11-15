/*
LICH SKELETONS
*/


/datum/job/roguetown/greater_skeleton/lich
	title = "Fortified Skeleton"
	advclass_cat_rolls = list(CTAG_LSKELETON = 20)
	tutorial = "You are bygone. Your will belongs to your master. Fulfil and kill."

	outfit = /datum/outfit/job/roguetown/greater_skeleton/lich

/datum/outfit/job/roguetown/greater_skeleton/lich
	cloak = /obj/item/clothing/cloak/half	//starts black, so they can be identified.
	belt = /obj/item/storage/belt/rogue/leather/black
	wrists = /obj/item/clothing/wrists/roguetown/bracers/paalloy
	backl = /obj/item/storage/backpack/rogue/satchel
	gloves = /obj/item/clothing/gloves/roguetown/chain/paalloy

/datum/outfit/job/roguetown/greater_skeleton/lich/pre_equip(mob/living/carbon/human/H)
	..()
	REMOVE_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)

// Melee goon w/ javelins. All-rounder.
/datum/advclass/greater_skeleton/lich/legionnaire
	name = "Ancient Legionnaire"
	tutorial = "A veteran lineman. How far you've fallen."
	outfit = /datum/outfit/job/roguetown/greater_skeleton/lich/legionnaire

	category_tags = list(CTAG_LSKELETON)

/datum/outfit/job/roguetown/greater_skeleton/lich/legionnaire/pre_equip(mob/living/carbon/human/H)
	..()

	H.STASTR = 12
	H.STASPD = 8
	H.STACON = 9
	H.STAEND = 12
	H.STAINT = 3
	H.STAPER = 11

	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

	H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axes, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)

	H.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/masonry, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)

	head = /obj/item/clothing/head/roguetown/helmet/heavy/paalloy
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/paalloy
	pants = /obj/item/clothing/under/roguetown/chainlegs/kilt/paalloy
	armor = /obj/item/clothing/suit/roguetown/armor/leather/studded
	neck = /obj/item/clothing/neck/roguetown/chaincoif/paalloy
	shoes = /obj/item/clothing/shoes/roguetown/sandals/aalloy

	backr = /obj/item/rogueweapon/shield/wood
	beltl = /obj/item/quiver/javelin/paalloy
	H.adjust_blindness(-3)
	var/weapons = list("Gladius","Kopesh","Shortsword","Axe", "Flail")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Gladius")
			beltr = /obj/item/rogueweapon/sword/iron/short/gladius/pagladius
			H.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
		if("Kopesh")
			beltr = /obj/item/rogueweapon/sword/sabre/palloy
			H.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
		if("Shortsword")
			beltr = /obj/item/rogueweapon/sword/short/pashortsword
			H.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
		if("Axe")
			beltr = /obj/item/rogueweapon/stoneaxe/woodcut/steel/paaxe
			H.adjust_skillrank(/datum/skill/combat/axes, 1, TRUE)
		if("Flail")
			beltr = /obj/item/rogueweapon/flail/sflail/paflail
			H.adjust_skillrank(/datum/skill/combat/whipsflails, 1, TRUE)

// Ranged goon w/ a dumb bow. Ranger, what else is there to say.
/datum/advclass/greater_skeleton/lich/ballistiares
	name = "Ancient Ballistiares"
	tutorial = "Your frame has wept off your skin. Your fingers are mere peaks. Yet your aim remains true."
	outfit = /datum/outfit/job/roguetown/greater_skeleton/lich/ballistiares

	category_tags = list(CTAG_LSKELETON)

/datum/outfit/job/roguetown/greater_skeleton/lich/ballistiares/pre_equip(mob/living/carbon/human/H)
	..()

	H.STASTR = 10
	H.STASPD = 10
	H.STACON = 7
	H.STAEND = 14
	H.STAINT = 6
	H.STAPER = 15

	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

	H.adjust_skillrank(/datum/skill/combat/bows , 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/crossbows, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/slings, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)

	H.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/masonry, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)

	head = /obj/item/clothing/head/roguetown/helmet/heavy/paalloy
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/paalloy
	pants = /obj/item/clothing/under/roguetown/chainlegs/kilt/paalloy
	armor = /obj/item/clothing/suit/roguetown/armor/leather/studded
	neck = /obj/item/clothing/neck/roguetown/chaincoif/paalloy
	shoes = /obj/item/clothing/shoes/roguetown/sandals/aalloy

	beltr = /obj/item/rogueweapon/huntingknife/idagger/steel/padagger
	H.adjust_blindness(-3)
	var/weapons = list("Recurve Bow","Yew Longbow","Sling")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Recurve Bow")
			l_hand = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve
			beltl = /obj/item/quiver/paalloy
			H.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
		if("Yew Longbow")
			l_hand = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/longbow
			beltl = /obj/item/quiver/paalloy
			H.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
		if("Sling")
			l_hand = /obj/item/gun/ballistic/revolver/grenadelauncher/sling
			beltl = /obj/item/quiver/sling/paalloy
			H.adjust_skillrank(/datum/skill/combat/slings, 1, TRUE)

// Heavy/Tanky goon. Not heavy armor but due to the steel + weapons they'll fare just fine.
/datum/advclass/greater_skeleton/lich/bulwark
	name = "Ancient Death Bulwark"
	tutorial = "All throughout, you've borne the brunt. And even in death, will you continue."
	outfit = /datum/outfit/job/roguetown/greater_skeleton/lich/bulwark

	category_tags = list(CTAG_LSKELETON)

/datum/outfit/job/roguetown/greater_skeleton/lich/bulwark/pre_equip(mob/living/carbon/human/H)
	..()

	H.STASTR = 13
	H.STASPD = 5
	H.STACON = 11
	H.STAEND = 10
	H.STAINT = 1
	H.STAPER = 10

	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)

	H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)

	H.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/masonry, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)

	head = /obj/item/clothing/head/roguetown/helmet/heavy/guard/paalloy
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/paalloy
	armor = /obj/item/clothing/suit/roguetown/armor/plate/half/paalloy
	neck = /obj/item/clothing/neck/roguetown/gorget/paalloy
	shoes = /obj/item/clothing/shoes/roguetown/boots/aalloy

	H.adjust_blindness(-3)
	var/weapons = list("Greatsword", "Bardiche", "Mace + Shield","Spear", "Warhammer + Shield")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Greatsword")
			r_hand = /obj/item/rogueweapon/greatsword/paalloy
			H.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
		if("Bardiche")
			r_hand = /obj/item/rogueweapon/halberd/bardiche/paalloy
			H.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
		if("Mace + Shield")
			r_hand = /obj/item/rogueweapon/mace/steel/palloy
			l_hand = /obj/item/rogueweapon/shield/wood
			H.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
		if("Spear")
			r_hand = /obj/item/rogueweapon/spear/paalloy
			H.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
		if("Warhammer + Shield")
			r_hand = /obj/item/rogueweapon/mace/warhammer/steel/paalloy
			l_hand = /obj/item/rogueweapon/shield/wood
			H.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
			H.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)

// non-Combat crafter goon. Worse weapons + armor but does base-building. Fortnite.
/datum/advclass/greater_skeleton/lich/sapper
	name = "Broken-Bone Sapper"
	tutorial = "Simple. Obedient. Like an ant in a colony."
	outfit = /datum/outfit/job/roguetown/greater_skeleton/lich/sapper

	category_tags = list(CTAG_LSKELETON)

/datum/outfit/job/roguetown/greater_skeleton/lich/sapper/pre_equip(mob/living/carbon/human/H)
	..()

	H.STASTR = 10
	H.STASPD = 6
	H.STACON = 9
	H.STAEND = 10
	H.STAINT = 6
	H.STAPER = 10

	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

	H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axes, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/bows , 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/slings, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)

	H.adjust_skillrank(/datum/skill/craft/carpentry, 4, TRUE)
	H.adjust_skillrank(/datum/skill/craft/masonry, 4, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sewing, 4, TRUE)
	H.adjust_skillrank(/datum/skill/craft/traps, 4, TRUE)
	H.adjust_skillrank(/datum/skill/craft/engineering, 4, TRUE)
	H.adjust_skillrank(/datum/skill/labor/mining, 4, TRUE)
	H.adjust_skillrank(/datum/skill/labor/lumberjacking, 3, TRUE)

	head = /obj/item/clothing/head/roguetown/helmet/kettle/minershelm
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/paalloy
	armor = /obj/item/clothing/suit/roguetown/armor/leather/studded
	neck = /obj/item/clothing/neck/roguetown/coif
	shoes = /obj/item/clothing/shoes/roguetown/sandals/aalloy
	backl = /obj/item/storage/backpack/rogue/satchel

	beltr = /obj/item/rogueweapon/stoneaxe/woodcut
	beltl = /obj/item/rogueweapon/pick/copper


// Skeleton Job used only for the Skeleton Siege event. This spawn the skeletons using advclasses for fortified skeletons
//Code is based off the the existing lich.dm and deathknight.dm code,as well as the skeleton.dm job from Vanderlin 
/datum/job/roguetown/greater_skeleton/lich/besieger
	title = "Besieger Skeleton"
	advclass_cat_rolls = list(CTAG_LSKELETON = 20)
	outfit = /datum/outfit/job/roguetown/greater_skeleton/lich 

/datum/job/roguetown/greater_skeleton/lich/besieger/after_spawn(mob/living/L, mob/M, client/player_client)
	..()
	var/mob/living/carbon/human/H = L
	L.can_do_sex = FALSE //literaly 1984
	if(L.mind)
		L.mind.special_role = "Besieger Skeleton"
		L.mind.assigned_role = "Besieger Skeleton"
	if(H.dna && H.dna.species)
		H.dna.species.species_traits |= NOBLOOD
		H.dna.species.soundpack_m = new /datum/voicepack/skeleton()
		H.dna.species.soundpack_f = new /datum/voicepack/skeleton()
//Skeletonizes our body
	var/obj/item/bodypart/O = H.get_bodypart(BODY_ZONE_R_ARM)
	if(O)
		O.drop_limb()
		qdel(O)
	O = H.get_bodypart(BODY_ZONE_L_ARM)
	if(O)
		O.drop_limb()
		qdel(O)
	H.regenerate_limb(BODY_ZONE_R_ARM)
	H.regenerate_limb(BODY_ZONE_L_ARM)
	H.base_intents = list(INTENT_HELP, INTENT_DISARM, INTENT_GRAB, /datum/intent/simple/claw)
	H.update_a_intents()
	for (var/obj/item/bodypart/B in H.bodyparts)
		B.skeletonize(FALSE)
//Replace_eyes proc from the lich.dm, Gives us undead eyes since we're a skeleton.
	var/obj/item/organ/eyes/eyes = H.getorganslot(ORGAN_SLOT_EYES)
	if(eyes)
		eyes.Remove(H, TRUE)
		QDEL_NULL(eyes)
	eyes = new /obj/item/organ/eyes/night_vision/zombie
	eyes.Insert(H)
// Last touches. Sets our name, faction, and deletes any char flaws from our preferences.
	H.ambushable = FALSE
	if(H.charflaw)
		QDEL_NULL(H.charflaw)
	H.mob_biotypes = MOB_UNDEAD
	H.faction = list("undead")
	H.name = "Skeleton"
	H.real_name = "Skeleton"
// Skelelook proc from lich.dm . Updates our appearance
	H.hairstyle = "Bald"
	H.facial_hairstyle = "Shaved"
	H.underwear = "Nude"
	H.update_body()
	H.update_hair()
	H.update_body_parts(redraw = TRUE)
//Adds our skeleton traits, then allows us to choose a new name, pronouns, and body frame. Also gives us a spell to explode ourselves if we get stuck.
	ADD_TRAIT(H, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_INFINITE_STAMINA, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_EASYDISMEMBER, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOBREATH, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOPAIN, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_TOXIMMUNE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOSLEEP, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_SHOCKIMMUNE, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_LIMBATTACHMENT, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_SILVER_WEAK, TRAIT_GENERIC)
	addtimer(CALLBACK(H, TYPE_PROC_REF(/mob/living/carbon/human, choose_name_popup), "BESIEGER SKELETON"), 3 SECONDS)
	addtimer(CALLBACK(H, TYPE_PROC_REF(/mob/living/carbon/human, choose_pronouns_and_body)), 7 SECONDS)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/suicidebomb/lesser)
