if (isDefendSelected())
{
    draw_set_halign(fa_left)
    draw_set_font(font36)
    draw_text(880, 200, "("+string(global.rowDefend) + "," + string(global.columnDefend)+")")
    draw_text(880, 150, "STOP")
}
