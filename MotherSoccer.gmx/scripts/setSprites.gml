/*if (global.isPlayer1 && !global.isAttack)
{
    with(objPlaya){sprite_index = sprPlaya}
    with(objPassivePlaya){sprite_index = sprPassivePlaya}
    return INVALID;
}*/


//GOALIE
var j = instance_find(objPlaya, 1-1);
if (!global.isAttack)
{
    j.sprite_index = sprGoalieSelectedLeft
    
    if (global.isPlayer1)
        j.sprite_index = sprGoalieSelected
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
    if (global.isPlayer1 && !global.isAttack)
        passiveGoalie.sprite_index = sprPassiveGoalieSelectedLeft
    else
        passiveGoalie.sprite_index = sprPassiveGoalieSelected


    if (global.isPlayer1)
        setSpritesDefensePlayer1()
    else
        setSpritesDefensePlayer2()
}

draw_set_color(c_white)
