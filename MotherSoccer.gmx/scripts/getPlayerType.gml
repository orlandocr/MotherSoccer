///Returns the IS_type constant, according to the player's number

var firstDefender = 2;
var lastDefender = global.formation[IS_DEFENDER]+1;

var firstMiddle = lastDefender+1;
var lastMiddle = firstMiddle+global.formation[IS_MIDFIELDER]-1;

var firstStriker = lastMiddle+1;
var lastStriker = 11;

if (argument0 == 1)
    return IS_GOALIE;
else if (argument0 >= firstDefender) && (argument0 <= lastDefender)
    return IS_DEFENDER;
else if (argument0 >= firstMiddle) && (argument0 <= lastMiddle)
    return IS_MIDFIELDER;
else if (argument0 >= firstStriker) && (argument0 <= lastStriker)
    return IS_STRIKER;
else
    return IS_WTF_I_DUNNO;
