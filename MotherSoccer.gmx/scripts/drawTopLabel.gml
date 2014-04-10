var msg = "Player ";

if (global.isPlayer1)
{
    msg += "1";
}
else
{
    msg += "2";
}

if (global.isAttack)
{
    msg += ": ATTACK!";
}
else
{
    msg += ": DEFEND!";
}

draw_set_font(font36)
draw_set_halign(fa_left)
draw_text(10, 10, msg)
