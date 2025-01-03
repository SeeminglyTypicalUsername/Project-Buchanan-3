/mob/living/simple_animal/cockroach
	name = "cockroach"
	desc = "This station is just crawling with bugs."
	icon_state = "cockroach"
	icon_dead = "cockroach"
	blood_volume = 50
	health = 1
	maxHealth = 1
	turns_per_move = 5
	loot = list(/obj/effect/decal/cleanable/insectguts)
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 270
	maxbodytemp = INFINITY
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	mob_size = MOB_SIZE_TINY
	mob_biotypes = MOB_ORGANIC|MOB_BUG
	response_help_continuous = "pokes"
	response_help_simple = "poke"
	response_disarm_continuous = "shoos"
	response_disarm_simple = "shoo"
	response_harm_continuous = "splats"
	response_harm_simple = "splat"
	speak_emote = list("chitters")
	density = FALSE
	ventcrawler = VENTCRAWLER_ALWAYS
	mob_size = MOB_SIZE_TINY
	gold_core_spawnable = FRIENDLY_SPAWN
	verb_say = "chitters"
	verb_ask = "chitters inquisitively"
	verb_exclaim = "chitters loudly"
	verb_yell = "chitters loudly"
	del_on_death = TRUE
	var/squish_chance = 50

/mob/living/simple_animal/cockroach/Initialize(mapload)
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_ENTERED = PROC_REF(on_entered),
	)
	AddElement(/datum/element/connect_loc, loc_connections)

/mob/living/simple_animal/cockroach/death(gibbed)
	if(SSticker.mode && SSticker.mode.station_was_nuked) //If the nuke is going off, then cockroaches are invincible. Keeps the nuke from killing them, cause cockroaches are immune to nukes.
		return
	..()

/mob/living/simple_animal/cockroach/proc/on_entered(datum/source, atom/movable/arrived, atom/old_loc, list/atom/old_locs)
	SIGNAL_HANDLER

	if(isstructure(arrived))
		if(prob(squish_chance))
			arrived.visible_message(span_notice("[src] was crushed under [arrived]."))
			adjustBruteLoss(1)
		else
			visible_message(span_notice("[src] avoids getting crushed."))
		return
	if(!ismob(arrived))
		return
	if(!isliving(arrived))
		return
	var/mob/living/A = arrived
	if(A.mob_size > MOB_SIZE_SMALL && !(A.movement_type & FLYING))
		if(prob(squish_chance))
			A.visible_message(span_notice("[A] squashed [src]."), span_notice("You squashed [src]."))
			adjustBruteLoss(1) //kills a normal cockroach
		else
			visible_message(span_notice("[src] avoids getting crushed."))

/mob/living/simple_animal/cockroach/ex_act() //Explosions are a terrible way to handle a cockroach.
	return
