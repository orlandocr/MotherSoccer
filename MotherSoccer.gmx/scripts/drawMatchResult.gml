draw_set_halign(fa_center);
var xCentered = room_width/2

var msg = string(global.goals1) + " - " + string(global.goals2)

draw_set_font(font224bold)
draw_text(xCentered,200,msg);



draw_set_font(font64)


switch (global.result)
{
    case RESULT_NO_STRIKE: draw_text(xCentered, 600, "PASE INTERCEPTADO"); break;
    case RESULT_GOAL_STOPPED_ROW: draw_text(xCentered, 600, "PORTERO tapa fila"); break;
    case RESULT_GOAL_STOPPED_COLUMN: draw_text(xCentered, 600, "PORTERO tapa columna"); break;
    case RESULT_GOAL_STOPPED_PERFECT: draw_text(xCentered, 600, "PORTEROOOOOOO"); break;
    case RESULT_GOAL: draw_text(xCentered, 600, "GOOOOOOL PANADOOOL"); break;
    default: break;
}
