var a = drawPase(IS_GOALIE, IS_DEFENDER)
var b = drawPase(IS_DEFENDER, IS_MIDFIELDER)
var c = drawPase(IS_MIDFIELDER, IS_STRIKER)
var d = drawTiroAMarco()

setSprites()

drawShootCoordinates()
drawGoalkeepCoordinates()
    
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
        
        /*var a = passPlaya.numba;
        var b = scheissePlaya.numba;*/
        if (passPlaya == scheissePlaya)
        {
            /*show_message("no strike")
            break;
            room_goto(roomIntro)*/
        }
        else
        {
            if (global.rowAttack == global.rowDefend) && (global.columnAttack == global.columnDefend)
            {
                /*show_message("GOALKEEPERED")
                break;
                room_goto(roomIntro)*/
            }
            else
            {
                /*show_message("GOOOOAAAAAAAAALLLL!!!!!")
                break;
                room_goto(roomIntro)*/
            }
        }
        
    };

};

