//GOALIE
var j = instance_find(objPlaya, 1);
j.sprite_index = sprGoalie

//ALL STANDARD PLAYERS
for (i=2; i<=11; i++)
{
    var j = instance_find(objPlaya, i-1);
    j.sprite_index = sprPlaya;
};

if (global.isAttack)
{
    //SELECTED PLAYERS
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        if (isSelected(i))
        {
            var j = getSelected(i);
            if (j != noone)
            {
                j.sprite_index = sprPlayaSelected;
            }
        }
    };
}
else
{
    //DEAD PLAYERS
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        if (isDead(i))
        {
            var j = getDead(i);
            if (j != noone)
            {
                j.sprite_index = sprPlayaDead;
            }
        }
    };
}
