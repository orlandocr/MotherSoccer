if (room == roomMatchResult)
{
    draw_set_font(font164bold);
    draw_set_halign(fa_center);
    var msg = string(global.goals1) + " - " + string(global.goals2);
    var xCentered = (room_width/2) - (string_width(msg)/2);
    draw_text(xCentered,300,msg);
}

draw_set_font(font64)
draw_set_halign(fa_center);
draw_text(INVALID,INVALID,"");
var msgAtBottom = getMatchResultMessage();
var x2 = (room_width/2)// - (string_width(msgAtBottom)/2);
//print(string(x2) + "" + string(msgAtBottom) + " " + string(string_width(msgAtBottom)))
draw_text(x2, 600, msgAtBottom)
