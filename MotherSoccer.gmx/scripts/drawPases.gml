var a = drawPase(IS_GOALIE, IS_DEFENDER)
var b = drawPase(IS_DEFENDER, IS_MIDFIELDER)
var c = drawPase(IS_MIDFIELDER, IS_STRIKER)
var d = drawTiroAMarco()

if (a && b && c && d)
{
    room_goto(roomIntro)
}
