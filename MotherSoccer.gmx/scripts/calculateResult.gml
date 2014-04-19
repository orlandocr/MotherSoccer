var isNoStrike = false;
var isGoalKept = false;
var isGoal = false;

//FUCKING HACK OMG I'M A BITCH
{
    var tmp = global.killedBy[IS_DEFENDER]
    global.killedBy[IS_DEFENDER] = global.killedBy[IS_STRIKER]
    global.killedBy[IS_STRIKER] = tmp
}

debug("calculateResult REPORT")
debug("S: " + s(global.selectedPlayaz[IS_GOALIE]) + " " + s(global.selectedPlayaz[IS_DEFENDER]) + " " + s(global.selectedPlayaz[IS_MIDFIELDER]) + " " + s(global.selectedPlayaz[IS_STRIKER]))
debug("D: " + s(global.deadPlayaz[IS_GOALIE]) + " " + s(global.deadPlayaz[IS_DEFENDER]) + " " + s(global.deadPlayaz[IS_MIDFIELDER]) + " " + s(global.deadPlayaz[IS_STRIKER]))
debug("K: " + s(global.killedBy[IS_GOALIE]) + " " + s(global.killedBy[IS_DEFENDER]) + " " + s(global.killedBy[IS_MIDFIELDER]) + " " + s(global.killedBy[IS_STRIKER]))
debug("K: " + s(global.killedBy[IS_GOALIE]-11) + " " + s(global.killedBy[IS_DEFENDER]-11) + " " + s(global.killedBy[IS_MIDFIELDER]-11) + " " + s(global.killedBy[IS_STRIKER]-11))


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
