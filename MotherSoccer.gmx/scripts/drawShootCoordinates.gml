var plays1 = global.player1IsPlaying;
var plays2 = !global.player1IsPlaying;
var attack1 = global.player1Attacks;
var defend1 = !global.player1Attacks;
var attack2 = !attack1;
var defend2 = !defend1;

if (plays1 && attack1) || (plays2 && attack2)
{
    if (isShootSelected())
    {
        draw_set_halign(fa_left)
        draw_set_font(font36)
        draw_text(880, 550, "("+string(global.rowAttack) + "," + string(global.columnAttack)+")")    
        draw_text(880, 500, "Shoot")
    }
}
else if (plays1 && defend1) || (plays2 && defend2)
{
    if (isDefendSelected())
    {
        draw_set_halign(fa_left)
        draw_set_font(font36)
        draw_text(880, 550, "("+string(global.rowAttack) + "," + string(global.columnAttack)+")")
        draw_text(880, 500, "STOP")
    }
}

