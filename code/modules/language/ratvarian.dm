/datum/language/ratvar
	name = "Ratvarian"
	desc = "A timeless language full of power and incomprehensible to the unenlightened."
	ask_verb = "requests"
	exclaim_verb = "proclaims"
	whisper_verb = "imparts"
	key = "r"
	default_priority = 10
	spans = list(SPAN_ROBOT)
	icon_state = "ratvar"
	var/static/list/random_speech_verbs = list("clanks", "clinks", "clunks", "clangs")

/datum/language/ratvar/scramble(input)
	. = text2ratvar(input)

/datum/language/ratvar/get_spoken_verb(msg_end)
	if(!msg_end)
		return pick(random_speech_verbs)
	return ..()
