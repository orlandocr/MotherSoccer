selectFormation()

var numba = 0;

for (playaType=IS_GOALIE; playaType<=IS_STRIKER; playaType++)
{
    var howManyOfPlayaType = global.formation[playaType];

    for (currentOfPlayaType=1; currentOfPlayaType<=howManyOfPlayaType; currentOfPlayaType++)
    {
        numba++;
        var xxx = getPlayaTypeX(playaType);
        if (!global.isAttack)
        {
            xxx = room_width - xxx + 16
        }
        var yyy = getPlayaY(howManyOfPlayaType,currentOfPlayaType);
        if (global.isPlayer1 && !global.isAttack)
        {
            createPassivePlaya(numba, playaType, xxx, yyy)
        }
        else
        {
            createPlaya(numba, playaType, xxx, yyy)
        }
    };
};

if (!global.isAttack)
{
for (playaType=IS_GOALIE; playaType<=IS_STRIKER; playaType++)
{
    var howManyOfPlayaType = global.formation[playaType];

    for (currentOfPlayaType=1; currentOfPlayaType<=howManyOfPlayaType; currentOfPlayaType++)
    {
        numba++;
        var xxx = getPlayaTypeXR2L(playaType);
        if (!global.isAttack)
        {
            xxx = room_width - xxx + 16
        }
        var yyy = getPlayaY(howManyOfPlayaType,currentOfPlayaType);

        if (global.isPlayer1)
        {
            createPlaya(numba, playaType, xxx, yyy)
        }
        else
        {
            createPassivePlaya(numba, playaType, xxx, yyy)
        }
    };
};

}

if (global.isPlayer1 && global.isAttack) || (!global.isPlayer1 && !global.isAttack) 
{
    objGoal.image_angle=0;
    objGoal.x = 960;
}
else
{
    objGoal.image_angle=180;
    objGoal.x = 64;
}
