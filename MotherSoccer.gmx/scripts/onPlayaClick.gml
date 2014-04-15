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
    playSound(sfxSelectShoot)
}
else
{
    if (argument0.numba == 1)
    {
        playSound(sfxSelectPorteroDelete)
        show_message("mae no weon, como va a matar al portero? no ve que solo tenemos uno?")
    }
    else
    {
        global.deadPlayaz[argument0.type] = argument0.numba;
        playSound(sfxSelectDefend)
    }
}
