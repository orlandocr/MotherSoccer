//onPlayerClick(self)

if (argument0.numba == 1)
{
    return -1;
}


var plays1 = global.player1IsPlaying;
var plays2 = !global.player1IsPlaying;
var attack1 = global.player1Attacks;
var defend1 = !global.player1Attacks;
var attack2 = !attack1;
var defend2 = !defend1;

if (plays1 && attack1) || (plays2 && attack2)
{
    //argument0.sprite_index = sprPlayerSelected;
    global.selectedPlayaz[argument0.type] = argument0.numba;
}
else if (plays1 && defend1) || (plays2 && defend2)
{
    //argument0.sprite_index = sprPlayerDead;
    global.deadPlayaz[argument0.type] = argument0.numba;

    /*print("X-> " + string(argument0.numba))
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        print(string(i) + ": " + string(global.deadPlayaz[i]));
    };
    */
}
