var msg = ""
if (global.modeCheckResults)
{
    msg = "Compare results";
}
else
{
    if (room==roomShoot)
    {
        msg = "Player " + string(getCurrentPlayer()) + ": " + getAttackOrDefendVerb();
    }
    else
    {
        msg = "Player " + string(getCurrentPlayer()) + ": " + getAttackOrDefendMessage();
    }
}

draw_set_font(font28)
draw_set_halign(fa_left)
draw_text(10, 10, msg)

if (room == roomShoot)
{
    draw_set_halign(fa_center)
    if (global.isAttack)
    {
        draw_text(512, 150, "esto es un marco y uno escoge pa donde remata")
    }
    else
    {
        draw_text(512, 150, "esto es un marco y uno escoge pa donde se lanza")
    }
}
