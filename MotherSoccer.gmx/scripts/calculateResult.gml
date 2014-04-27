var isNoStrike = false;
var isGoalKept = false;
var isGoal = false;


var omfg = global.isPlayer1 && !global.isAttack;
if (omfg)
{
    //d <-> k
    //switch d,k
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        var tmp = global.killedBy[IS_DEFENDER]
        global.killedBy[IS_DEFENDER] = global.deadPlayaz[IS_STRIKER]
        global.deadPlayaz[IS_STRIKER] = tmp
    }
}

//FUCKING HACK OMG I'M A BITCH
//k[1] <-> k[3]
{
    var tmp = global.killedBy[IS_DEFENDER]
    global.killedBy[IS_DEFENDER] = global.killedBy[IS_STRIKER]
    global.killedBy[IS_STRIKER] = tmp
}

for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
{
    var passPlaya = global.selectedPlayaz[i];
    if (passPlaya == noone)
    {
        continue;
    }
    
    for (j=IS_DEFENDER; j<=IS_STRIKER; j++)
    {
        var scheissePlaya = global.killedBy[j] - 11;
        //debug("calculateResult " + s(passPlaya) + "-" + s(scheissePlaya))
        
        if (scheissePlaya == INVALID)
        {
            continue;
        }
        
        if (passPlaya == scheissePlaya)
        {
            isNoStrike = true;
        }
        else
        {
            if (global.rowAttack == global.rowDefend) && (global.columnAttack == global.columnDefend)
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
