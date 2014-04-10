if (isDefendSelected())
{
    draw_set_halign(fa_left)
    draw_set_font(font36)
    draw_text(880, 495, "STOP")
    draw_text(880, 545, "("+string(global.rowDefend) + "," + string(global.columnDefend)+")")
}
