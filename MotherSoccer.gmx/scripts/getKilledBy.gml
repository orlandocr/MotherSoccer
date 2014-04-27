if (isKilledBy(argument0))
{
    var n = global.killedBy[argument0];
    return getPlayerInstance(n);
}
else
{
    return noone;
}
