draw_set_halign(fa_center);
var xCentered = room_width/2

var msg = string(global.goals1) + " - " + string(global.goals2)

draw_set_font(font224bold)
draw_text(xCentered,200,msg);



draw_set_font(font64)


switch (global.result)
{
    case RESULT_NO_STRIKE: draw_text(xCentered, 600, "PASE INTERCEPTADO"); break;
    case RESULT_GOAL_STOPPED: draw_text(xCentered, 600, "PORTEEEEEEROOO"); break;
    case RESULT_GOAL: draw_text(xCentered, 600, "GOOOOOOL PANADOOOL"); break;
    default: break;
}

