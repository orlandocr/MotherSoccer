if (isDefendSelected())
{
    draw_set_halign(fa_right)
    draw_set_font(font28)
    draw_text(960, 515, "STOP")
    draw_text(960, 545, "("+string(global.rowDefend) + "," + string(global.columnDefend)+")")
}
