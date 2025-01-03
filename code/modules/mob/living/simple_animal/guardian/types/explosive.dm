//Bomb
/mob/living/simple_animal/hostile/guardian/bomb
	damage_coeff = list(BRUTE = 0.6, BURN = 0.6, TOX = 0.6, CLONE = 0.6, STAMINA = 0, OXY = 0.6)
	playstyle_string = span_holoparasite("As an <b>explosive</b> type, you have moderate close combat abilities, take half damage, may explosively teleport targets on attack, and are capable of converting nearby items and objects into disguised bombs via alt click.")
	magic_fluff_string = span_holoparasite("..And draw the Scientist, master of explosive death.")
	tech_fluff_string = span_holoparasite("Boot sequence complete. Explosive modules active. Holoparasite swarm online.")
	carp_fluff_string = span_holoparasite("CARP CARP CARP! Caught one! It's an explosive carp! Boom goes the fishy.")
	var/bomb_cooldown = 0

/mob/living/simple_animal/hostile/guardian/bomb/get_status_tab_items()
	. = ..()
	if(bomb_cooldown >= world.time)
		. += "Bomb Cooldown Remaining: [DisplayTimeText(bomb_cooldown - world.time)]"

/mob/living/simple_animal/hostile/guardian/bomb/AttackingTarget()
	. = ..()
	if(. && prob(40) && isliving(target))
		var/mob/living/M = target
		if(!M.anchored && M != summoner && !hasmatchingsummoner(M))
			new /obj/effect/temp_visual/guardian/phase/out(get_turf(M))
			do_teleport(M, M, 10, channel = TELEPORT_CHANNEL_BLUESPACE)
			for(var/mob/living/L in range(1, M))
				if(hasmatchingsummoner(L)) //if the summoner matches don't hurt them
					continue
				if(L != src && L != summoner)
					L.apply_damage(15, BRUTE)
			new /obj/effect/temp_visual/explosion(get_turf(M))

/mob/living/simple_animal/hostile/guardian/bomb/AltClickOn(atom/movable/A)
	if(!istype(A))
		AltClickNoInteract(src, A)
		return
	if(loc == summoner)
		to_chat(src, "[span_danger("<B>You must be manifested to create bombs!")]</B>")
		return
	if(isobj(A) && Adjacent(A))
		if(bomb_cooldown <= world.time && !stat)
			var/datum/component/killerqueen/K = A.AddComponent(/datum/component/killerqueen, EXPLODE_HEAVY, CALLBACK(src, PROC_REF(on_explode)), CALLBACK(src, PROC_REF(on_failure)), \
			examine_message = span_holoparasite("It glows with a strange <font color=\"[guardiancolor]\">light</font>!"))
			QDEL_IN(K, 1 MINUTES)
			to_chat(src, "[span_danger("<B>Success! Bomb armed!")]</B>")
			bomb_cooldown = world.time + 200
		else
			to_chat(src, "[span_danger("<B>Your powers are on cooldown! You must wait 20 seconds between bombs.")]</B>")

/mob/living/simple_animal/hostile/guardian/bomb/proc/on_explode(atom/bomb, atom/victim)
	if((victim == src) || (victim == summoner) || (hasmatchingsummoner(victim)))
		to_chat(victim, span_holoparasite("[src] glows with a strange <font color=\"[guardiancolor]\">light</font>, and you don't touch it."))
		return FALSE
	to_chat(src, span_danger("One of your explosive traps caught [victim]!"))
	to_chat(victim, span_danger("[bomb] was boobytrapped!"))
	return TRUE

/mob/living/simple_animal/hostile/guardian/bomb/proc/on_failure(atom/bomb)
	to_chat(src, "[span_danger("<b>Failure! Your trap didn't catch anyone this time.")]</B>")
