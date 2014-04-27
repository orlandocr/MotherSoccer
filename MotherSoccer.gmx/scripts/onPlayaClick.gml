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
    if (argument0.type == IS_GOALIE)
    {
        doPortero()
    }
    else if (argument0.numba == 12)
    {
        playSound(sfxSelectPorteroDelete)
        show_message("mae no weon, uno no puede matar al portero!")
    }
    else
    {
        global.deadPlayaz[argument0.type] = argument0.numba;
        var killer = findCloserInstance(argument0)
        global.killedBy[argument0.type] = killer.numba
        //debug("onPlayoClick " + string(killer.numba) + " " + string(argument0.numba))
        playSound(sfxSelectDefend)
    }
}
