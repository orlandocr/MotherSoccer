//onPlayerClick(self)

if (argument0.numba == 1)
{
    return -1;
}

if (global.modeCheckResults)
{
    return -2;
}

if (global.isAttack)
{
    global.selectedPlayaz[argument0.type] = argument0.numba;
}
else
{
    global.deadPlayaz[argument0.type] = argument0.numba;
}
