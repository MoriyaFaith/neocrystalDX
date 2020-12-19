	object_const_def

Route48_MapScripts:
	def_scene_scripts

	def_callbacks

Route48PharmacySign:
	text "500 Years of"
	line "Tradition"

	para "CIANWOOD CITY"
	line "PHARMACY"

	para "We Await Your"
	line "Medicinal Queries"
	done

Route48Sign:
	text "ROUTE 48"
	done
	
Route48_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, CIANWOOD_PHARMACY, 1
	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_READ, Route48PharmacySign
	bg_event 27, 11, BGEVENT_READ, Route48Sign

	def_object_events
