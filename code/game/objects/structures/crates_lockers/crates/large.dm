/obj/structure/closet/crate/large
	name = "large crate"
	desc = "A hefty wooden crate. You'll need a crowbar to get it open."
	icon_state = "largecrate"
	density = TRUE
	material_drop = /obj/item/stack/sheet/mineral/wood
	material_drop_amount = 4
	delivery_icon = "deliverybox"
	integrity_failure = 0 //Makes the crate break when integrity reaches 0, instead of opening and becoming an invisible sprite.

/obj/structure/closet/crate/large/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	add_fingerprint(user)
	if(manifest)
		tear_manifest(user)
	else
		to_chat(user, span_warning("You need a crowbar to pry this open!"))

/obj/structure/closet/crate/large/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/crowbar))
		if(manifest)
			tear_manifest(user)

		user.visible_message("[user] pries \the [src] open.", \
							span_notice("You pry open \the [src]."), \
							span_italics("You hear splitting wood."))
		playsound(src.loc, 'sound/weapons/slashmiss.ogg', 75, 1)

		var/turf/T = get_turf(src)
		for(var/i in 1 to material_drop_amount)
			new material_drop(src)
		for(var/atom/movable/AM in contents)
			AM.forceMove(T)

		qdel(src)

	else
		if(user.a_intent == INTENT_HARM)	//Only return  ..() if intent is harm, otherwise return 0 or just end it.
			return ..()						//Stops it from opening and turning invisible when items are used on it.

		else
			if(HAS_TRAIT(user, TRAIT_SKITTISH)) //for our stealthy skittish types to close crates after they've used them
				close()
			to_chat(user, span_warning("You need a crowbar to pry this open!"))
			return FALSE

/obj/structure/closet/crate/large/CtrlShiftClick()
	return ..()
