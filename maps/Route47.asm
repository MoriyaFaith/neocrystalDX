	object_const_def

Route47_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route47TileScript
	
Route47TileScript:
	checkscene
	iftrue .underfoot
	callasm .overhead_asm
	return

.underfoot:
	callasm .underfoot_asm
	return

.overhead_asm:
	; bridge 1
	changebridgeblock 42, 24, $a6, ROUTE_47
	changebridgeblock 44, 24, $e7, ROUTE_47
	changebridgeblock 46, 24, $e7, ROUTE_47
	changebridgeblock 48, 24, $e7, ROUTE_47
	changebridgeblock 50, 24, $a7, ROUTE_47
	; bridge 2
	changebridgeblock 44, 18, $8a, ROUTE_47
	changebridgeblock 46, 18, $8a, ROUTE_47
	changebridgeblock 48, 18, $8a, ROUTE_47
	; bridge 3
	changebridgeblock 20, 24, $8a, ROUTE_47
	changebridgeblock 22, 24, $8a, ROUTE_47
	changebridgeblock 24, 24, $8a, ROUTE_47
	; bridge 4
	changebridgeblock 18, 16, $a6, ROUTE_47
	changebridgeblock 20, 16, $e7, ROUTE_47
	changebridgeblock 22, 16, $e7, ROUTE_47
	changebridgeblock 24, 16, $e7, ROUTE_47
	changebridgeblock 26, 16, $a8, ROUTE_47
	jp BufferScreen

.underfoot_asm:
	; bridge 1
	changebridgeblock 42, 24, $94, ROUTE_47
	changebridgeblock 44, 24, $a5, ROUTE_47
	changebridgeblock 46, 24, $a5, ROUTE_47
	changebridgeblock 48, 24, $a5, ROUTE_47
	changebridgeblock 50, 24, $95, ROUTE_47
	; bridge 2
	changebridgeblock 44, 18, $a5, ROUTE_47
	changebridgeblock 46, 18, $a5, ROUTE_47
	changebridgeblock 48, 18, $a5, ROUTE_47
	; bridge 3
	changebridgeblock 20, 24, $a5, ROUTE_47
	changebridgeblock 22, 24, $a5, ROUTE_47
	changebridgeblock 24, 24, $a5, ROUTE_47
	; bridge 4
	changebridgeblock 18, 16, $94, ROUTE_47
	changebridgeblock 20, 16, $a5, ROUTE_47
	changebridgeblock 22, 16, $a5, ROUTE_47
	changebridgeblock 24, 16, $a5, ROUTE_47
	changebridgeblock 26, 16, $89, ROUTE_47
	jp BufferScreen

Route47_FinishOverheadBridge:
	xor a
	jr Route47_FinishBridge

Route47_FinishUnderfootBridge:
	ld a, $1
Route47_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute47SceneID], a ; setscene a
	jp GenericFinishBridge

Route47Bridge1OverheadTrigger:
	callthisasm
	changebridgeblock 42, 24, $e9, ROUTE_47
	changebridgeblock 44, 24, $e7, ROUTE_47
	changebridgeblock 46, 24, $e7, ROUTE_47
	changebridgeblock 48, 24, $e7, ROUTE_47
	changebridgeblock 50, 24, $ea, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge1UnderfootTrigger:
	callthisasm
	changebridgeblock 42, 24, $aa, ROUTE_47
	changebridgeblock 44, 24, $e6, ROUTE_47
	changebridgeblock 46, 24, $e6, ROUTE_47
	changebridgeblock 48, 24, $e6, ROUTE_47
	changebridgeblock 50, 24, $ab, ROUTE_47
	jp Route47_FinishUnderfootBridge

Route47Bridge2OverheadTrigger:
	callthisasm
	changebridgeblock 44, 18, $e8, ROUTE_47
	changebridgeblock 46, 18, $e8, ROUTE_47
	changebridgeblock 48, 18, $e8, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge2UnderfootTrigger:
	callthisasm
	changebridgeblock 44, 18, $e6, ROUTE_47
	changebridgeblock 46, 18, $e6, ROUTE_47
	changebridgeblock 48, 18, $e6, ROUTE_47
	jp Route47_FinishUnderfootBridge

Route47Bridge3OverheadTrigger:
	callthisasm
	changebridgeblock 20, 24, $e8, ROUTE_47
	changebridgeblock 22, 24, $e8, ROUTE_47
	changebridgeblock 24, 24, $e8, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge3UnderfootTrigger:
	callthisasm
	changebridgeblock 20, 24, $e6, ROUTE_47
	changebridgeblock 22, 24, $e6, ROUTE_47
	changebridgeblock 24, 24, $e6, ROUTE_47
	jp Route47_FinishUnderfootBridge

Route47Bridge4OverheadTrigger:
	callthisasm
	changebridgeblock 18, 16, $e9, ROUTE_47
	changebridgeblock 20, 16, $e7, ROUTE_47
	changebridgeblock 22, 16, $e7, ROUTE_47
	changebridgeblock 24, 16, $e7, ROUTE_47
	changebridgeblock 26, 16, $eb, ROUTE_47
	jp Route47_FinishOverheadBridge

Route47Bridge4UnderfootTrigger:
	callthisasm
	changebridgeblock 18, 16, $aa, ROUTE_47
	changebridgeblock 20, 16, $e6, ROUTE_47
	changebridgeblock 22, 16, $e6, ROUTE_47
	changebridgeblock 24, 16, $e6, ROUTE_47
	changebridgeblock 26, 16, $b7, ROUTE_47
	jp Route47_FinishUnderfootBridge

Route47_MapEvents:
	db 0, 0 ; filler
	def_warp_events
	warp_event 67, 21, CIANWOOD_CITY, 8
	warp_event 53, 21, ROUTE_47, 3
	warp_event 52, 17, ROUTE_47, 2
	warp_event 59, 25, ROUTE_47, 5
	warp_event 53, 29, ROUTE_47, 4

	def_coord_events
	coord_event 42, 24, 1, Route47Bridge1OverheadTrigger
	coord_event 42, 25, 1, Route47Bridge1OverheadTrigger
	coord_event 51, 24, 1, Route47Bridge1OverheadTrigger
	coord_event 51, 25, 1, Route47Bridge1OverheadTrigger
	coord_event 43, 24, 0, Route47Bridge1UnderfootTrigger
	coord_event 43, 25, 0, Route47Bridge1UnderfootTrigger
	coord_event 50, 24, 0, Route47Bridge1UnderfootTrigger
	coord_event 50, 25, 0, Route47Bridge1UnderfootTrigger
	coord_event 42, 18, 1, Route47Bridge2OverheadTrigger
	coord_event 42, 19, 1, Route47Bridge2OverheadTrigger
	coord_event 51, 18, 1, Route47Bridge2OverheadTrigger
	coord_event 51, 19, 1, Route47Bridge2OverheadTrigger
	coord_event 43, 18, 0, Route47Bridge2UnderfootTrigger
	coord_event 43, 19, 0, Route47Bridge2UnderfootTrigger
	coord_event 50, 18, 0, Route47Bridge2UnderfootTrigger
	coord_event 50, 19, 0, Route47Bridge2UnderfootTrigger
	coord_event 18, 24, 1, Route47Bridge3OverheadTrigger
	coord_event 18, 25, 1, Route47Bridge3OverheadTrigger
	coord_event 27, 24, 1, Route47Bridge3OverheadTrigger
	coord_event 27, 25, 1, Route47Bridge3OverheadTrigger
	coord_event 19, 24, 0, Route47Bridge3UnderfootTrigger
	coord_event 19, 25, 0, Route47Bridge3UnderfootTrigger
	coord_event 26, 24, 0, Route47Bridge3UnderfootTrigger
	coord_event 26, 25, 0, Route47Bridge3UnderfootTrigger
	coord_event 18, 16, 1, Route47Bridge4OverheadTrigger
	coord_event 18, 17, 1, Route47Bridge4OverheadTrigger
	coord_event 27, 16, 1, Route47Bridge4OverheadTrigger
	coord_event 27, 17, 1, Route47Bridge4OverheadTrigger
	coord_event 19, 16, 0, Route47Bridge4UnderfootTrigger
	coord_event 19, 17, 0, Route47Bridge4UnderfootTrigger
	coord_event 26, 16, 0, Route47Bridge4UnderfootTrigger
	coord_event 26, 17, 0, Route47Bridge4UnderfootTrigger
	def_bg_events

	def_object_events
