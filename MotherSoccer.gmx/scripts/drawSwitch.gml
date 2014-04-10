draw_set_font(font96bold)

if (global.player1IsPlaying)
{
    draw_set_halign(fa_left)
    draw_text(10, 300, "Player 1")
    
    if (global.player1Attacks)
    {
        draw_text(10, 400, "ATTACK!")
    }
    else
    {
        draw_text(10, 400, "DEFEND!")
    }
}
else
{
    draw_set_halign(fa_right)
    draw_text(1000, 300, "Player 2")
    if (global.player1Attacks)
    {
        draw_text(1000, 400, "DEFEND!")
    }
    else
    {
        draw_text(1000, 400, "ATTACK!")
    }

}
