if (room == roomMatchResult)
{
    draw_set_font(font164bold);
    draw_set_halign(fa_center);
    var msg = string(global.goals1) + " - " + string(global.goals2);
    var xCentered = (room_width/2) - (string_width(msg)/2);
    draw_text(xCentered,250,msg);
    
    draw_set_font(font64)
    draw_set_halign(fa_center);
    //draw_text(INVALID,INVALID,"");
    var msgAtBottom = getMatchResultMessage();
    var x2 = (room_width/2);
    draw_text(x2, 600, msgAtBottom)
}
else if (room == roomField)
{
    draw_set_font(font28)
    draw_set_halign(fa_right);
    //draw_text(INVALID,INVALID,"");
    var msgAtBottom = getMatchResultMessage();
    var x2 = (room_width-10);
    draw_text(x2, room_height-10-string_height(msgAtBottom), msgAtBottom)
}
