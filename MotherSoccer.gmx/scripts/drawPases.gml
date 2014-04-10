if (global.isAttack)
{
    var a = drawPase(IS_GOALIE, IS_DEFENDER)
    var b = drawPase(IS_DEFENDER, IS_MIDFIELDER)
    var c = drawPase(IS_MIDFIELDER, IS_STRIKER)
    var d = drawTiroAMarco()
    
    if (a && b && c && d)
    {
        global.isAttack = !global.isAttack
        global.isPlayer1 = !global.isPlayer1
        room_goto(roomSwitch)
    }
}
else
{
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        if (global.deadPlayaz[i] == -1)
        {
            return false;
        }
    };

    if (isDefendSelected())
    {
        global.modeCheckResults = true
        conceal();
    }
    
    return false;
}
