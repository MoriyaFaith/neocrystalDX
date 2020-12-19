HappinessChanges:
; entries correspond to HAPPINESS_* constants
; change if happiness < 60, change if happiness < 120, change if happiness < 180, change otherwise
	db  +3,  +5,  +3,  +2 ; Gained a level
	db  +3,  +5,  +3,  +2 ; Vitamin
	db  +1,  +1,  +1,  +0 ; X Item
	db  +2,  +3,  +2,  +1 ; Battled a Gym Leader
	db  +1,  +1,  +1,  +0 ; Learned a move
	db  -2,  -1,  -1,  -1 ; Lost to an enemy
	db -10,  -5,  -5, -10 ; Fainted due to poison
	db -10,  -5,  -5, -10 ; Lost to a much stronger enemy
	db  +1,  +1,  +1,  +1 ; Haircut (older brother) 1
	db  +3,  +3,  +3,  +1 ; Haircut (older brother) 2
	db  +5,  +5,  +5,  +2 ; Haircut (older brother) 3
	db  +1,  +1,  +1,  +1 ; Haircut (younger brother) 1
	db  +3,  +3,  +3,  +1 ; Haircut (younger brother) 2
	db +10, +10, +10,  +4 ; Haircut (younger brother) 3
	db -10,  -5,  -5, -10 ; Used Heal Powder or Energypowder (bitter)
	db -15, -10, -10, -15 ; Used Energy Root (bitter)
	db -20, -15, -15, -20 ; Used Revival Herb (bitter)
	db  +3,  +3,  +3,  +1 ; Grooming
	db +10, +10,  +6,  +4 ; Gained a level in the place where it was caught
