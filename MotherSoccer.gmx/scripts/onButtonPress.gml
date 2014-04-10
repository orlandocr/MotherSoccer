//onButtonPress(argument0)

var plays1 = global.player1IsPlaying;
var plays2 = !global.player1IsPlaying;
var attack1 = global.player1Attacks;
var defend1 = !global.player1Attacks;
var attack2 = !attack1;
var defend2 = !defend1;

if (plays1 && attack1) || (plays2 && attack2)
{
    global.rowAttack = argument0.row
    global.columnAttack = argument0.column

}
else if (plays1 && defend1) || (plays2 && defend2)
{
    global.rowDefend = argument0.row
    global.columnDefend = argument0.column
}

room_goto(roomField)
