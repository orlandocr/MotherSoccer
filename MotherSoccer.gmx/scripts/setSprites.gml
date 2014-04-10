//GOALIE
var j = instance_find(objPlayer, 1);
j.sprite_index = sprGoalie

//ALL STANDARD PLAYERS
for (i=2; i<=11; i++)
{
    var j = instance_find(objPlayer, i-1);
    j.sprite_index = sprPlayer;
};

var plays1 = global.player1IsPlaying;
var plays2 = !global.player1IsPlaying;
var attack1 = global.player1Attacks;
var defend1 = !global.player1Attacks;
var attack2 = !attack1;
var defend2 = !defend1;

if (plays1 && attack1) || (plays2 && attack2)
{
    //SELECTED PLAYERS
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        if (isSelected(i))
        {
            var j = getSelected(i);
            if (j != noone)
            {
                j.sprite_index = sprPlayerSelected;
            }
        }
    };
}
else if (plays1 && defend1) || (plays2 && defend2)
{
    //DEAD PLAYERS
    for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
    {
        if (isDead(i))
        {
            var j = getDead(i);
            if (j != noone)
            {
                j.sprite_index = sprPlayerDead;
            }
        }
    };
}
