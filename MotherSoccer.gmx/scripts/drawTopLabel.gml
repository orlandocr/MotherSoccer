draw_set_font(font36)
draw_set_halign(fa_left)
var msg = "Player ";

if (global.player1IsPlaying)
{
    msg += "1";

    if (global.player1Attacks)
    {
        msg += ": ATTACK!";
    }
    else
    {
        msg += ": DEFEND!";    
    }

}
else
{
    msg += "2";
    
    if (global.player1Attacks)
    {
        msg += ": DEFEND!";
    }
    else
    {
        msg += ": ATTACK!";    
    }

}


draw_text(10, 10, msg)
