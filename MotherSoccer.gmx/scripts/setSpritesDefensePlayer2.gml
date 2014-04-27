//DEAD PLAYERS
for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
{
    if (isDead(i))
    {
        var j = getDead(i);
        
        
        if (j != noone)
        {
            j.sprite_index = sprPlayaSelectedLeft;
            //draw_set_color(c_red);
            
            var killedByNumba = global.killedBy[j.type];
            //debug("setSpritesDefensePlayer2 " + s(j.numba) + "-" + s(killedByNumba))
            var killedBy = instance_find(objPassivePlaya, killedByNumba-11-1);
            killedBy.sprite_index = sprPassivePlayaDead;
            //debug("setSpritesDefensePlayer2 " + s(j.numba) + "-" + s(killedByNumba))
            if (!global.modeCheckResults)
            {
                draw_line_width(j.x, j.y, killedBy.x, killedBy.y, 10)
            }
        }
    }
};
