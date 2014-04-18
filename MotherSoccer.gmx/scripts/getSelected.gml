if (isSelected(argument0))
{
    var n = global.selectedPlayaz[argument0];
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
