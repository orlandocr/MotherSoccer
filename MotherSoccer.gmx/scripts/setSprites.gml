//GOALIE
var j = instance_find(objPlaya, 1-1);
if (!global.isAttack)
{
    j.sprite_index = sprGoalieSelectedLeft
}
else if (isSelected(IS_GOALIE))
{
    j.sprite_index = sprGoalieSelected
    if (isLeftToRight())
    {
        j.sprite_index = sprGoalieSelected;
    }
    else
    {
        j.sprite_index = sprGoalieSelectedLeft;
    } 
}
else
{
    j.sprite_index = sprGoalie
}

//ALL STANDARD PLAYERS
for (i=2; i<=11; i++)
{
    var j = instance_find(objPlaya, i-1);
    j.sprite_index = sprPlaya;
    
    var enemy = instance_find(objPassivePlaya, i-1);
    enemy.sprite_index = sprPassivePlaya;
    
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
                if (isLeftToRight())
                {
                    j.sprite_index = sprPlayaSelected;
                }
                else
                {
                    j.sprite_index = sprPlayaSelectedLeft;
                }                
            }
        }
    };
}
else
{

    //Passive Goalie
    var passiveGoalie = instance_find(objPassivePlaya, 1-1);
    passiveGoalie.sprite_index = sprPassiveGoalieSelected

    //DEAD PLAYERS
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        if (isDead(i))
        {
            var j = getDead(i);
            
            
            if (j != noone)
            {
                j.sprite_index = sprPlayaSelectedLeft;
                //draw_set_color(c_red);
                
                var killedByNumba = global.killedBy[j.type];
                //debug("setSprites " + s(j.numba) + "-" + s(killedByNumba))
                var killedBy = instance_find(objPassivePlaya, killedByNumba-11-1);
                killedBy.sprite_index = sprPassivePlayaDead;
                //debug("setSprites " + s(j.numba) + "-" + s(killedByNumba))
                if (!global.modeCheckResults)
                {
                    draw_line_width(j.x, j.y, killedBy.x, killedBy.y, 10)
                }
            }
        }
    };
}

draw_set_color(c_white)
