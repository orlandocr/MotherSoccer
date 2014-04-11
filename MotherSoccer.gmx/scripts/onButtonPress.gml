//onButtonPress(argument0)

//print("("+string(argument1)+","+string(argument2)+")")

if (global.isAttack)
{
    global.rowAttack = argument0.row
    global.columnAttack = argument0.column
}
else
{
    global.rowDefend = argument0.row
    global.columnDefend = argument0.column
}

room_goto(roomField)
