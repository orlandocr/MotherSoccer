if (isShootSelected())
{
    draw_set_font(font36)
    draw_text(880, 500, "Shoot")
    draw_text(880, 550, "("+string(global.rowAttack) + "," + string(global.columnAttack)+")")
}
