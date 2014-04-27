var a = drawPase(IS_GOALIE, IS_DEFENDER)
var b = drawPase(IS_DEFENDER, IS_MIDFIELDER)
var c = drawPase(IS_MIDFIELDER, IS_STRIKER)
var d = drawTiroAMarco()

setSprites()

drawShootCoordinates()
drawGoalkeepCoordinates()

drawMatchResult()

if (global.result == RESULT_GAME_IN_PROGRESS)
{
    calculateResult();
    //mofoReport()
}
else
{
    var noGotoResult = instance_number(ctrlMatchResult) < 1;
    if (noGotoResult)
    {
        instance_create(-1,-1,ctrlMatchResult)
    }
}
