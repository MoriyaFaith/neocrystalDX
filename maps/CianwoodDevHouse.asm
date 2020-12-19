	object_const_def
	const CIANWOODDEVHOUSE_MORIYA

CianwoodDevHouse_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

CianwoodMoriya:
	faceplayer
	opentext
	writetext MoriyaText
	promptbutton
	special FadeOutMusic
	pause 45
	setevent EVENT_TALKED_TO_MORIYA_IN_DEV_HOUSE
	writetext NotProgrammedYetText
	waitbutton
	closetext
	playmusic MUSIC_ROUTE_47
	end

Homoru:
	faceplayer
	opentext
	cry GENGAR
	writetext HomoruText
	waitbutton
	closetext
	end

Lambda:
	faceplayer
	opentext
	cry AMPHAROS
	writetext LambdaText
	waitbutton
	closetext
	end

Aries:
	faceplayer
	opentext
	cry HERACROSS
	writetext AriesText
	waitbutton
	closetext
	end

Daande:
	faceplayer
	opentext
	cry HYPNO
	writetext DaandeText
	waitbutton
	closetext
	end

Skarr:
	faceplayer
	opentext
	cry SKARMORY
	writetext SkarrText
	waitbutton
	closetext
	end

Seedee:
	faceplayer
	opentext
	cry KINGDRA
	writetext SeedeeText
	waitbutton
	closetext
	end

CianwoodDevHouseBookshelf:
	jumpstd DifficultBookshelfScript

CianwoodDevHouseGrave1:
	jumptext CianwoodDevHouseGrave1Text
	end

CianwoodDevHouseGrave2:
	jumptext CianwoodDevHouseGrave2Text
	end

MoriyaText:
	text "???: Huh? Who're"
	line "you? Don't you"
	cont "know how to"
	cont "knock?"

	para "Anyways, name's"
	line "MORIYA."

	para "…"

	para "That's what people"
	line "call me, at least."

	para "This is the"
	line "Obligatory Dev"
	cont "secret."

	para "Not like it's that"
	line "much of a secret."
	done

NotProgrammedYetText:
	text "Uh... My fight's"
	line "not programmed"
	cont "quite yet."

	para "Come back in a"
	line "later build."
	done
	
HomoruText:
	text "HOMORU: …"

	para "Seems that it's"
	line "not one for"
	cont "smiling."
	done
LambdaText:
	text "LAMBDA: Ampha…"

	para "She's wearing"
	line "strange clothes,"

	para "even if it were"
	line "on a human."
	done
AriesText:
	text "ARIES: HERA!"

	para "Looks like she's"
	line "training."
	done
DaandeText:
	text "DAANDE: No…"

	para "Don't HYPNO"
	line "normally have"
	cont "pendulums?"
	done
SkarrText:
	text "SKAR: SKRAA!"

	para "It's cry sounds"
	line "like grinding"
	cont "metal…"
	done
SeedeeText:
	text "SEEDEE: DRA!"

	para "It seems to be"
	line "proud of its"
	cont "power."
	done
CianwoodDevHouseGrave1Text:
	text "DANTE the"
	line "QUILAVA"
	done

CianwoodDevHouseGrave2Text:
	text "OASIS the"
	line "SANDSLASH"
	done

CianwoodDevHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 11, CIANWOOD_CITY, 4
	warp_event  7, 11, CIANWOOD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodDevHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodDevHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, CianwoodDevHouseBookshelf
	bg_event  3,  1, BGEVENT_READ, CianwoodDevHouseBookshelf
	bg_event  0,  4, BGEVENT_READ, CianwoodDevHouseGrave1
	bg_event  1,  4, BGEVENT_READ, CianwoodDevHouseGrave2

	def_object_events
	object_event  4,  4, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodMoriya, -1
	object_event  5,  2, SPRITE_HOMORU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Homoru, -1
	object_event  9,  6, SPRITE_LAMBDA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Lambda, -1
	object_event 11,  3, SPRITE_ARIES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Aries, -1
	object_event 11,  8, SPRITE_DAANDE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Daande, -1
	object_event  1,  7, SPRITE_SKARR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Skarr, -1
	object_event  3, 10, SPRITE_SEEDEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Seedee, -1
