draw_set_halign(fa_center);
var xCentered = room_width/2;

draw_set_font(font224bold);
var msg = string(global.goals1) + " - " + string(global.goals2);
draw_text(xCentered,200,msg);

draw_set_font(font96bold)
switch (global.result)
{
    case RESULT_NO_STRIKE: draw_text(xCentered, 550, "barriiidaaa"); break;
    case RESULT_GOAL_STOPPED: draw_text(xCentered, 550, "PORTEEEROOO"); break;
    case RESULT_GOAL: draw_text(xCentered, 550, "GOLLL PANADOLLL"); break;
    default: break;
}
