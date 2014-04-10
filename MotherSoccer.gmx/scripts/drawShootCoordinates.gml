if (isShootSelected())
{
    draw_set_halign(fa_left)
    draw_set_font(font28)
    draw_text(880, 210, "Shoot")    
    draw_text(880, 240, "("+string(global.rowAttack) + "," + string(global.columnAttack)+")")
}
