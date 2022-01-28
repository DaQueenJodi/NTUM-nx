function scrSkillLeft(argument0, argument1, argument2, argument3) {
	//Run in LevCont
	//Checks if there are still skills that you haven't taken.
   
	    //freespot = false
	    var dirskill=1
    
	    repeat(maxskill)
	    {
	    if Player.skill_got[dirskill]=0 && dirskill!=argument0&&dirskill!=argument1&&dirskill!=argument2&&dirskill!=argument3//skill is not already selected skill
	    return true
    
	    dirskill++;
	    }
    
	    return false



}
