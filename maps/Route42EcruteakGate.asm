	object_const_def
	const ROUTE42ECRUTEAKGATE_OFFICER

Route42EcruteakGate_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

Route42EcruteakGateHighBadgeCheckScene:
	opentext
	writetext Route42EcruteakGateOfficerHoldOnText
	waitbutton
	closetext
	turnobject PLAYER, UP
	sjump Route42EcruteakGateBadgeCheckScript

Route42EcruteakGateLowBadgeCheckScene:
	opentext
	writetext Route42EcruteakGateOfficerHoldOnText
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement PLAYER, Route42EcruteakGateStepUpMovement
	sjump Route42EcruteakGateBadgeCheckScript

Route42EcruteakGateBadgeCheckScript:
	opentext
	writetext Route42EcruteakGateOfficerBadgeCheckText
	promptbutton
	readvar VAR_BADGES
	ifgreater NUM_JOHTO_BADGES - 3, .AllEightBadges
	writetext Route42EcruteakGateOfficerNoGoText
	waitbutton
	closetext
	applymovement PLAYER, Route42EcruteakGateStepLeftMovement
	end

.AllEightBadges:
	writetext Route42EcruteakGateOfficerGoThroughText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	end

Route42EcruteakGateStepLeftMovement:
	step LEFT
	step_end

Route42EcruteakGateStepUpMovement:
	step UP
	step_end

Route42EcruteakGateOfficerScript:
	jumptextfaceplayer Route42EcruteakGateOfficerText

Route42EcruteakGateOfficerText:
	text "MT.MORTAR is like"
	line "a maze inside."

	para "Be careful. Don't"
	line "get lost in there."
	done

Route42EcruteakGateOfficerHoldOnText:
	text "Excuse me!"
	done

Route42EcruteakGateOfficerBadgeCheckText:
	text "The road this way"
	line "is dangerous."

	para "Only strong"
	line "#MON TRAINERS"

	para "Are allowed this"
	line "way."
	done

Route42EcruteakGateOfficerNoGoText:
	text "I'm afraid I"
	line "can't let you"
	cont "through."
	done

Route42EcruteakGateOfficerGoThroughText:
	text "Oh! That is the"
	line "MINERAL BADGE!"

	para "Feel free to go"
	line "on through."
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	def_coord_events
	coord_event  5,  4, SCENE_DEFAULT, Route42EcruteakGateHighBadgeCheckScene
	coord_event  5,  5, SCENE_DEFAULT, Route42EcruteakGateLowBadgeCheckScene

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, -1
