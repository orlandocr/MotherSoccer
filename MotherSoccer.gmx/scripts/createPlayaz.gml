selectFormation()

var numba = 1;
for (playaType=IS_DEFENDER; playaType<=IS_STRIKER; playaType++)
{
    var howManyOfPlayaType = global.formation[playaType];

    for (currentOfPlayaType=1; currentOfPlayaType<=howManyOfPlayaType; currentOfPlayaType++)
    {
        numba++;
        var xxx = getPlayaTypeX(playaType);
        var yyy = getPlayaY(howManyOfPlayaType,currentOfPlayaType);
        createPlaya(numba, playaType, xxx, yyy)
    };
};
