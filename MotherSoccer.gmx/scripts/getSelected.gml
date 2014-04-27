if (isSelected(argument0))
{
    var n = global.selectedPlayaz[argument0];
    //debug("getSelected selectedPlayaz[" + s(argument0) + "]" + s(n))
    if (global.modeCheckResults)
    {
        return getPassivePlayerInstance(n);
    }
    else
    {
        return getPlayerInstance(n);
    }
}
else
{
    return noone;
}
