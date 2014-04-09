//onButtonPress(argument0)
show_message("ROW: " + string(argument0.row) + " CLMN: " + string(argument0.column))
global.rowAttack = argument0.row
global.columnAttack = argument0.column
room_goto(roomField)
