draw_set_halign(fa_center);
var xCentered = room_width/2;

draw_set_font(font164bold);
var msg = string(global.goals1) + " - " + string(global.goals2);
draw_text(xCentered,200,msg);

draw_set_font(font64)
switch (global.result)
{
    case RESULT_NO_STRIKE: draw_text(xCentered, 550, "barriiidaaa"); break;
    case RESULT_GOAL_STOPPED: draw_text(xCentered, 550, "POOORTEEEEEEROOO"); break;
    case RESULT_GOAL: draw_text(xCentered, 550, "GOOOLLL PANADOOOLLL"); break;
    default: break;
}
