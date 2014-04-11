//onPlayerClick(self)

//Do nothing when clicking on the goalkeeper
if (argument0.numba == IS_GOALIE)
{
    return INVALID;
}

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
    global.deadPlayaz[argument0.type] = argument0.numba;
}
