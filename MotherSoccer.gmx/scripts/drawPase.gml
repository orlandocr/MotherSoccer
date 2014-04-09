if (isSelected(argument0) && isSelected(argument1))
{
    var p1 = getSelected(argument0);
    var p2 = getSelected(argument1);

    drawPas(p1.x, p1.y, p2.x, p2.y);
    return true;
}

return false;
