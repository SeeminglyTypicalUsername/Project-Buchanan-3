#define ACCESS_SECURITY 1 // Security equipment, security records, gulag item storage, secbots
#define ACCESS_BRIG 2 // Brig cells+timers, permabrig, gulag+gulag shuttle, prisoner management console
#define ACCESS_ARMORY 3 // Armory, gulag teleporter, execution chamber
#define ACCESS_FORENSICS_LOCKERS 4 //Detective's office, forensics lockers, security+medical records
#define ACCESS_MEDICAL 5
#define ACCESS_MORGUE 6
#define ACCESS_TOX 7 //R&D department, R&D console, burn chamber on some maps
#define ACCESS_TOX_STORAGE 8 //Toxins storage, burn chamber on some maps
#define ACCESS_GENETICS 9
#define ACCESS_ENGINE 10 //Engineering area, power monitor, power flow control console
#define ACCESS_ENGINE_EQUIP 11 //APCs, EngiVend/YouTool, engineering equipment lockers
#define ACCESS_MAINT_TUNNELS 12
#define ACCESS_EXTERNAL_AIRLOCKS 13
#define ACCESS_EMERGENCY_STORAGE 14 //Not in use
#define ACCESS_CHANGE_IDS 15
#define ACCESS_AI_UPLOAD 16
#define ACCESS_TELEPORTER 17
#define ACCESS_EVA 18
#define ACCESS_HEADS 19 //Bridge, EVA storage windoors, gateway shutters, AI integrity restorer, clone record deletion, comms console
#define ACCESS_CAPTAIN 20
#define ACCESS_ALL_PERSONAL_LOCKERS 21
#define ACCESS_CHAPEL_OFFICE 22
#define ACCESS_TECH_STORAGE 23
#define ACCESS_ATMOSPHERICS 24
#define ACCESS_BAR 25
#define ACCESS_JANITOR 26
#define ACCESS_CREMATORIUM 27
#define ACCESS_KITCHEN 28
#define ACCESS_ROBOTICS 29
#define ACCESS_RD 30
#define ACCESS_CARGO 31
#define ACCESS_CONSTRUCTION 32
#define ACCESS_CHEMISTRY 33
#define ACCESS_CARGO_BOT 34 //Not in use
#define ACCESS_HYDROPONICS 35
#define ACCESS_MANUFACTURING 36 //Only used on research.dmm away mission
#define ACCESS_LIBRARY 37
#define ACCESS_LAWYER 38
#define ACCESS_VIROLOGY 39
#define ACCESS_CMO 40
#define ACCESS_QM 41
#define ACCESS_COURT 42
#define ACCESS_SURGERY 45
#define ACCESS_THEATRE 46
#define ACCESS_RESEARCH 47
#define ACCESS_MINING 48
#define ACCESS_MINING_OFFICE 49 //Not in use
#define ACCESS_MAILSORTING 50
#define ACCESS_MINT 51 //Not in use
#define ACCESS_MINT_VAULT 52 //Not in use
#define ACCESS_VAULT 53
#define ACCESS_MINING_STATION 54
#define ACCESS_XENOBIOLOGY 55
#define ACCESS_CE 56
#define ACCESS_HOP 57
#define ACCESS_HOS 58
#define ACCESS_RC_ANNOUNCE 59 //Request console announcements
#define ACCESS_KEYCARD_AUTH 60 //Used for events which require at least two people to confirm them
#define ACCESS_TCOMSAT 61 // has access to the entire telecomms satellite / machinery
#define ACCESS_GATEWAY 62
#define ACCESS_SEC_DOORS 63 // Outer brig doors, department security posts
#define ACCESS_MINERAL_STOREROOM 64 //For releasing minerals from the ORM
#define ACCESS_MINISAT 65
#define ACCESS_WEAPONS 66 //Weapon authorization for secbots
#define ACCESS_NETWORK 67 //NTnet diagnostics/monitoring software
#define ACCESS_CLONING 68 //Cloning room and clone pod ejection
#define ACCESS_ENTER_GENPOP 69
#define ACCESS_LEAVE_GENPOP 70

	//BEGIN CENTCOM ACCESS
	/*Should leave plenty of room if we need to add more access levels.
	Mostly for admin fun times.*/
#define ACCESS_CENT_GENERAL 101//General facilities. CentCom ferry.
#define ACCESS_CENT_THUNDER 102//Thunderdome.
#define ACCESS_CENT_SPECOPS 103//Special Ops. Captain's display case, Marauder and Seraph mechs.
#define ACCESS_CENT_MEDICAL 104//Medical/Research
#define ACCESS_CENT_LIVING 105//Living quarters.
#define ACCESS_CENT_STORAGE 106//Generic storage areas.
#define ACCESS_CENT_TELEPORTER 107//Teleporter.
#define ACCESS_CENT_CAPTAIN 109//Captain's office/ID comp/AI.
#define ACCESS_CENT_BAR 110 // The non-existent CentCom Bar

	//Desert Rose 2 Custom access

#define ACCESS_BOS			120 //general BOS access
#define ACCESS_NCR			121 //general NCR access
#define ACCESS_NCR_ARMORY   122 //NCR armory access

#define ACCESS_DEN			87
/*general den access. This one has the same number as the line it's on, the rest should
also be like that but I can't be arsed to go back and change them all*/

#define ACCESS_LEGION		123	//general legion access
#define ACCESS_FOLLOWER		124	//general followers access
#define ACCESS_KHAN			125	//general khan access
#define ACCESS_VAULT_F13	126	//general vault access
#define ACCESS_RESTRICT		127	//general restricted access
#define ACCESS_MILITARY		128	//general military access
#define ACCESS_MEDICAL_F13	129	//general medical access
#define ACCESS_COMMAND		130	//general command access
#define ACCESS_TRIBE		131	//general tribe access
#define ACCESS_NCROFFDUTY	132 //general NCR access
#define ACCESS_CLINIC		133 //Oasis clinic access
#define ACCESS_ENCLAVE 		134 //enclave minibunker
#define ACCESS_80S 	        80  //80s access
#define ACCESS_80SB 	    81  //80s blue access
#define ACCESS_80SR 	    82  //80s red access
#define ACCESS_USPS	        76  //Postal service access
#define ACCESS_MORDINOS 	135 //mordino casino/stables

#define ACCESS_WRIGHTS 		137 //wright estate/trainstation
#define ACCESS_SALVATORES 	138 //salvatores bar
#define ACCESS_HOTEL 		139 //hotel
#define ACCESS_NRA 			140 //new reno arms
#define ACCESS_RENO_CLINIC 	141 //clinic
#define ACCESS_PHAR			142 //pharamacy
#define ACCESS_YAKUZA 		143 //yakuza dojo
#define ACCESS_GYM			144 //gym/store
#define ACCESS_VANGRAFFS	145 //van graff HQ, store
#define ACCESS_NRPD			146 //new reno police department




	//The Syndicate
#define ACCESS_SYNDICATE 150//General Syndicate Access. Includes Syndicate mechs and ruins.
#define ACCESS_SYNDICATE_LEADER 151//Nuke Op Leader Access


//////////////////////
//Shark Club/Bishops//
//////////////////////

	//Room Keys
#define ACCESS_ROOMONE		152 //hotel room access
#define ACCESS_ROOMTWO		153 //hotel room access
#define ACCESS_ROOMTHREE	154 //hotel room access
#define ACCESS_ROOMFOUR		155 //hotel room access
#define ACCESS_ROOMFIVE		156 //hotel room access
#define ACCESS_ROOMSIX		157 //hotel room access
#define ACCESS_ROOMSEVEN	158 //hotel room access
#define ACCESS_ROOMEIGHT	159 //hotel room access
#define ACCESS_ROOMNINE		160 //hotel room access

#define ACCESS_SUITEONE		161 //hotel room access
#define ACCESS_SUITETWO		162 //hotel room access

	//Shark Club
#define ACCESS_BISHOPS		163
#define ACCESS_BISHOPSLAB	164
#define ACCESS_BISHOPCOM	165
#define ACCESS_BISHOPVAULT	166
#define ACCESS_BISHOPRR		167

#define ACCESS_HEIST		168


	//Away Missions or Ruins
	/*For generic away-mission/ruin access. Why would normal crew have access to a long-abandoned derelict
	or a 2000 year-old temple? */
#define ACCESS_AWAY_GENERAL 200//General facilities.
#define ACCESS_AWAY_MAINT 201//Away maintenance
#define ACCESS_AWAY_MED 202//Away medical
#define ACCESS_AWAY_SEC 203//Away security
#define ACCESS_AWAY_ENGINE 204//Away engineering
#define ACCESS_AWAY_GENERIC1 205//Away generic access
#define ACCESS_AWAY_GENERIC2 206
#define ACCESS_AWAY_GENERIC3 207
#define ACCESS_AWAY_GENERIC4 208

	//Special, for anything that's basically internal
#define ACCESS_BLOODCULT 250
#define ACCESS_CLOCKCULT 251

#define ACCESS_NCRREP 252 //NCR Rep access

#define ACCESS_NCR_COMMAND 253
#define ACCESS_LEGION_COMMAND 254
#define ACCESS_BROTHERHOOD_COMMAND 255
#define ACCESS_ENCLAVE_COMMAND  266
