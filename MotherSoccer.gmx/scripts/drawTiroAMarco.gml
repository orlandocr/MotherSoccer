if (isShootSelected())
{
    if (isSelected(IS_STRIKER))
    {
        //draw line between striker and goal
        var slctd = getSelected(IS_STRIKER);
        drawPas(slctd.x, slctd.y, objGoal.x, objGoal.y);
        return true;
    }
}

return false;
