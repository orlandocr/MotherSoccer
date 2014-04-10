var isNoStrike = false;
var isGoalKept = false;
var isGoal = false;

for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
{
    var passPlaya = global.selectedPlayaz[i];
    if (passPlaya == noone)
    {
        continue;
    }

    for (j=IS_DEFENDER; j<=IS_STRIKER; j++)
    {
        var scheissePlaya = global.deadPlayaz[j];
        if (scheissePlaya == noone)
        {
            continue;
        }
        
        if (passPlaya == scheissePlaya)
        {
            isNoStrike = true;
        }
        else
        {
            if (global.rowAttack == global.rowDefend) || (global.columnAttack == global.columnDefend)
            {
                isGoalKept = true
            }
            else
            {
                isGoal = true
            }
        }
        
    };

};

if (isNoStrike)
{
    global.result = RESULT_NO_STRIKE
}
else if (isGoalKept)
{
    global.result = RESULT_GOAL_STOPPED
}
else if (isGoal)
{
    global.result = RESULT_GOAL
    

    if (global.isAttack)
    {
        if (global.isPlayer1)
        {
            global.goals1++
        }
        else
        {
            global.goals2++
        }
    }
    else
    {
        if (global.isPlayer1)
        {
            global.goals2++
        }
        else
        {
            global.goals1++
        }
    }
}
