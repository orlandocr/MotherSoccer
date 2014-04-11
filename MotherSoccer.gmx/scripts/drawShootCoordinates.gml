if (isShootSelected())
{
    draw_set_halign(fa_right)
    draw_set_font(font28)
    draw_text(970, 195, "Shoot")    
    draw_text(970, 225, "("+string(global.rowAttack) + "," + string(global.columnAttack)+")")
}
