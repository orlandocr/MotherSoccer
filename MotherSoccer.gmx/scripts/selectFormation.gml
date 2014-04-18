/*
Formations: 253, 442, 433, 532, 343, 352, ...
min:2 max:6 total:10
*/
global.formation[IS_GOALIE] = 1
global.formation[IS_DEFENDER] = 2
global.formation[IS_MIDFIELDER] = 5
global.formation[IS_STRIKER] = 3

var totalFieldPlayers = global.formation[IS_GOALIE] + global.formation[IS_DEFENDER] + global.formation[IS_MIDFIELDER] + global.formation[IS_STRIKER];
if (totalFieldPlayers != 11)
{
    show_message("UBER SCHEISSE, needed 11 players but got " + string(totalFieldPlayers));
    game_end(); 
}
