if (isSelected(argument0) && isSelected(argument1))
{
    var p1 = getSelected(argument0);
    var p2 = getSelected(argument1);

    //debug("drawPase " + s(p1.numba) + "->" + s(p2.numba))
    
    drawPas(p1.x, p1.y, p2.x, p2.y);
    return true;
}

return false;
