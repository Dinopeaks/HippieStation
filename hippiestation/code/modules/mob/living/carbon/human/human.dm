/mob/living/carbon/human/create_internal_organs()
  internal_organs += new /obj/item/organ/butt
  return ..()

/mob/living/carbon/human/canSuicide()
	var/datum/mutation/human/HM = GLOB.mutations_list[CLUWNEMUT]
	if(dna.species.id == "tarajan" || dna.species.id == "meeseeks" || HM in dna.mutations)
		return FALSE
	else
		return ..()

/mob/living/carbon/human/canSuccumb()
	var/datum/mutation/human/HM = GLOB.mutations_list[CLUWNEMUT]
	if(dna.species.id == "tarajan" || dna.species.id == "meeseeks" || HM in dna.mutations)
		return FALSE
	else
		return ..()

/mob/living/carbon/human/canGhost()
	var/datum/mutation/human/HM = GLOB.mutations_list[CLUWNEMUT]
	if(dna.species.id == "tarajan" || dna.species.id == "meeseeks" || HM in dna.mutations)
		return FALSE
	else
		return ..()

//Nanosuit fast cuff break for strength mode 2018/04/09
/mob/living/carbon/human/cuff_resist(obj/item/I)
	if(istype(wear_suit, /obj/item/clothing/suit/space/hardsuit/nano))
		var/obj/item/clothing/suit/space/hardsuit/nano/NS = wear_suit
		if(NS.mode == "strength")
			if(..(I, cuff_break = FAST_CUFFBREAK))
				dropItemToGround(I)
	..()