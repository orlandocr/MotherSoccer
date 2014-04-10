var a = drawPase(IS_GOALIE, IS_DEFENDER)
var b = drawPase(IS_DEFENDER, IS_MIDFIELDER)
var c = drawPase(IS_MIDFIELDER, IS_STRIKER)
var d = drawTiroAMarco()

setSprites()

drawShootCoordinates()
drawGoalkeepCoordinates()

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
    show_message("someone got killed, so no strike...")
}
else if (isGoalKept)
{
    show_message("PORTERO!!! (EL MAE TAPA TODA LA FILA Y TODA LA COLUMNA)")
}
else if (isGoal)
{
    show_message("GOOOOAAAAAAAAALLLL!!!!!")
}
else
{
    show_message("WTF did just happened?!")
}

