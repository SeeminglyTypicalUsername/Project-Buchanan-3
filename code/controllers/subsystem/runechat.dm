SUBSYSTEM_DEF(runechat)
	name = "Runechat"
	priority = FIRE_PRIORITY_RUNECHAT
	wait = 5

	var/list/datum/callback/message_queue = list()

/datum/controller/subsystem/runechat/fire(resumed)
	while(message_queue.len)
		var/datum/callback/queued_message = message_queue[message_queue.len]
		queued_message.Invoke()
		message_queue.len--
		if(MC_TICK_CHECK)
			return
