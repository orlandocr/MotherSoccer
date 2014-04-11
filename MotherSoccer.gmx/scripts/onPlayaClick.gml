//onPlayerClick(self)

//Do nothing when the players are comparing results
if (global.modeCheckResults)
{
    return INVALID;
}

//A playa has been clicked
if (global.isAttack)
{
    global.selectedPlayaz[argument0.type] = argument0.numba;
}
else
{
    if (argument0.numba == 1)
    {
        show_message("hijueputa carepicha no puede matar al portero malparío me cago en su maire voy a ir a pichasealo a su casa con Lonnis, el chunche y Roy Anthony Myers")
    }
    else
    {
        global.deadPlayaz[argument0.type] = argument0.numba;
    }
}
