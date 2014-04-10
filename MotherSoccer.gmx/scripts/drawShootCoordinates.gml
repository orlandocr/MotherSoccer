if (isShootSelected())
{
    draw_set_halign(fa_left)
    draw_set_font(font36)
    draw_text(880, 180, "Shoot")    
    draw_text(880, 230, "("+string(global.rowAttack) + "," + string(global.columnAttack)+")")
}
