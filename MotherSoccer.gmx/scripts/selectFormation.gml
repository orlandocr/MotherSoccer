/*
Formations: 253, 442, 433, 532, 343, 352, ...
min:2 max:6 total:10
*/
global.formation[IS_DEFENDER] = 2
global.formation[IS_MIDFIELDER] = 5
global.formation[IS_STRIKER] = 3

var totalFieldPlayers = global.formation[IS_DEFENDER] + global.formation[IS_MIDFIELDER] + global.formation[IS_STRIKER];
if (totalFieldPlayers != 10)
{
    show_message("UBER SCHEISSE, needed 10 field players but got " + string(totalFieldPlayers));
    game_end(); 
}
