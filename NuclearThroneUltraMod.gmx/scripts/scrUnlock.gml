dir = 0
totkills = 0
totdeaths = 0

repeat(UberCont.racemax)
{
totkills += UberCont.ctot_kill[dir]
totdeaths += UberCont.ctot_dead[dir]
dir += 1
}


//EYES:
if BackCont.area >= 2 or BackCont.loops >= 1
UberCont.cgot[3] = 1

//MELTING:
UberCont.cgot[4] = 1

//PLANT:
if totkills >= 100
UberCont.cgot[5] = 1


//ROBOT:
if BackCont.area >= 3 or BackCont.loops >= 1
UberCont.cgot[8] = 1


//REBEL:
if BackCont.area >= 2 or BackCont.loops >= 1
UberCont.cgot[10] = 1
