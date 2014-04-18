//Do nothing when the players are comparing results
if (global.modeCheckResults)
{
    return INVALID;
}

if (argument0.type == IS_GOALIE)
{
    show_message("MACHETE DON'T KILL THE PORTERO")
    return INVALID;
}

var shortestDistance = room_width;
var nearestInstanceNumba = INVALID;
var myType = INVALID;

with (objPlaya)
{
    if (other.x < x) //to my right
    {
        var distance = point_distance(x, y, other.x, other.y)
        if (distance < shortestDistance)
        {
            shortestDistance = distance
            nearestInstanceNumba = self.numba
            myType = self.type
        }
    }
}

global.deadPlayaz[myType] = nearestInstanceNumba;
global.killedBy[myType] = argument0.numba
//debug("killNearest " + string(myType) + " " + string(nearestInstanceNumba))
