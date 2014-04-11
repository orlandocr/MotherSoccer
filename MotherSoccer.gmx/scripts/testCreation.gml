xx[IS_GOALIE] = 96
xx[IS_DEFENDER] = 256
xx[IS_MIDFIELDER] = 480
xx[IS_STRIKER] = 736


yy[1,1] = 384

yy[2,1] = 256
yy[2,2] = 512

yy[3,1] = 192
yy[3,2] = 384
yy[3,3] = 576

yy[4,1] = 96
yy[4,2] = 288
yy[4,3] = 480
yy[4,4] = 672

yy[5,1] = 64
yy[5,2] = 224
yy[5,3] = 384
yy[5,4] = 544
yy[5,5] = 704

yy[6,1] = 64
yy[6,2] = 192
yy[6,3] = 320
yy[6,4] = 448
yy[6,5] = 576
yy[6,6] = 704

/*
253
442
433
532
343
352

min:2
max:6
total:10
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

var numba = 1;
for (i=IS_DEFENDER; i<=IS_STRIKER; i++)
{
    var c = global.formation[i];

    for (j=1; j<=c; j++)
    {
        numba++;
        print(string(numba) + " " + string(i) + " " + string(xx))
        var xxx = xx[i];
        var yyy = yy[c,j];
        var playa = instance_create(xxx, yyy, objPlayer);
        registerPlayer(playa, numba, i);
    };
    
};

