for (var i=IS_DEFENDER; i<=IS_STRIKER; i++)
{
    global.selectedPlayaz[i] = -1
    global.deadPlayaz[i] = -1
};
global.selectedPlayaz[IS_GOALIE] = 1


global.isAttack = true
global.isPlayer1 = true

global.rowAttack = -1
global.columnAttack = -1
global.rowDefend = -1
global.columnDefend = -1

global.modeCheckResults = false


draw_set_color(c_white)
