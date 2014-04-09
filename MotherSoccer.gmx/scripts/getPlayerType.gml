///Returns the IS_type constant, according to the player's number

switch (argument0)
{
    case 1:
        return IS_GOALIE;
    
    case 2:
    case 3:
        return IS_DEFENDER;

    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        return IS_MIDFIELDER;

    case 9:
    case 10:
    case 11:
        return IS_STRIKER;

    default:
        return IS_WTF_I_DUNNO;
}
