//debug("findCloserInstance INI " + s(argument0.numba) + " (" + s(argument0.x) + "," + s(argument0.y)+")")

var shortestDistance = room_width
var nearestInstanceNumba = INVALID

with (objPassivePlaya)
{
    //debug("findCloserInstance MID " + s(self.numba) + " " + s(other.numba))
    if (global.isPlayer1 && !global.isAttack)
    {
        //debug("findCloserInstance XXXXX " + s(numba) + " " + s(other.numba) + "  + " + s(x) + " " + s(other.x))
        if (x > other.x) //to my right
        {
            var distance = point_distance(other.x, other.y, x, y)
            if (distance <= shortestDistance)
            {
                shortestDistance = distance
                nearestInstanceNumba = self.numba
            }
        }
    }
    else
    {
        //debug("findCloserInstance YYYYY " + s(numba) + " " + s(other.numba) + "  + " + s(x) + " " + s(other.x))
        if (x < other.x) //to my left
        {
            var distance = point_distance(other.x, other.y, x, y)
            if (distance <= shortestDistance)
            {
                shortestDistance = distance
                nearestInstanceNumba = self.numba
            }
        }
    }
}

//debug("findCloserInstance END " + string(nearestInstanceNumba))
if (global.isPlayer1 && !global.isAttack)
return instance_find(objPassivePlaya, nearestInstanceNumba-1)
else
return instance_find(objPassivePlaya, nearestInstanceNumba-11-1)
