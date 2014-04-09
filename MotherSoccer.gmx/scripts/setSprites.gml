//GOALIE
var j = instance_find(objPlayer, 1);
j.sprite_index = sprGoalie

//ALL STANDARD PLAYERS
for (i=2; i<=11; i++)
{
    var j = instance_find(objPlayer, i-1);
    j.sprite_index = sprPlayer;
};

//SELECTED PLAYERS
for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
{
    if (isSelected(i))
    {
        var j = getSelected(i);
        if (j != noone)
        {
            j.sprite_index = sprPlayerSelected;
        }
    }
};

