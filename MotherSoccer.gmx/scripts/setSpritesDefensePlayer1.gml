//DEAD PLAYERS

for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
{
    /*if (isKilledBy(i))
    {
        var j = getKilledBy(i);
        if (j != noone)
        {
            j.sprite_index = sprPlayaSelectedLeft;
            //var killedByNumba = global.killedBy[j.type];
            var killedByNumba = global.deadPlayaz[j.type];
            //var killedBy = instance_find(objPassivePlaya, killedByNumba-11-1);
            var killedBy = instance_find(objPassivePlaya, killedByNumba-1);
            killedBy.sprite_index = sprPassivePlayaDead;
            mofoReport()
            debug("setSpritesDefensePlayer1 " + s(j.numba) + " " + s(killedByNumba) + " " + s(killedBy.numba))
            if (!global.modeCheckResults)
            {
                draw_set_color(c_fuchsia)
                draw_line_width(j.x, j.y, killedBy.x, killedBy.y, 10)
            }
        }
    }*/
    if (!global.modeCheckResults) && (global.deadPlayaz[i] != INVALID)  && (global.killedBy[i] != INVALID)
    {
        var n1 = global.deadPlayaz[i];
        var n2 = global.killedBy[i];
        debug("setSpritesDefensePlayer1 " + s(n1) + " " + s(n2))
        
        var p1 = instance_find(objPlaya, n1-11-1);
        var p2 = instance_find(objPassivePlaya, n2-1);
        debug("setSpritesDefensePlayer1 " + s(p1.numba) + " " + s(p2.numba))

        draw_set_color(c_fuchsia)
        draw_line_width(p1.x, p1.y, p2.x, p2.y, 10)
    }
    
};
