draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var xCentered = room_width/2

var msg = string(global.goals1) + " - " + string(global.goals2)

draw_set_font(font224bold)
draw_text(xCentered,room_height/2,msg);



draw_set_font(font64)



if (global.result == RESULT_NO_STRIKE)
{
    draw_text(xCentered, 600, "PASE INTERCEPTADO")
}
else if (global.result == RESULT_GOAL_STOPPED)
{
    draw_text(xCentered, 600, "PORTERO tapa fil y col")
}
else if (global.result == RESULT_GOAL)
{
    draw_text(xCentered, 600, "GOOOL PANADOOOL")
}
