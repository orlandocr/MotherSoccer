//debug("FCI " + s(argument0.numba) + " (" + s(argument0.x) + "," + s(argument0.y)+")")

var shortestDistance = room_width
var nearestInstanceNumba = INVALID

with (objPassivePlaya)
{
    //debug("WITH " + s(self.numba) + " " + s(other.numba))
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

//debug("findCloserInstance " + string(nearestInstanceNumba))
return instance_find(objPassivePlaya, nearestInstanceNumba-11-1)
