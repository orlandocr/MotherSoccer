if (isShootSelected())
{
    if (isSelected(IS_STRIKER))
    {
        //draw line between striker and goal
        var s = getSelected(IS_STRIKER);
        drawPas(s.x, s.y, objGoal.x, objGoal.y);
        return true;
    }
}

return false;
