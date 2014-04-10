if (isDefendSelected())
{
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_font(font28)
    draw_text(880, 525, "STOP")
    draw_text(880, 555, "("+string(global.rowDefend) + "," + string(global.columnDefend)+")")
}
