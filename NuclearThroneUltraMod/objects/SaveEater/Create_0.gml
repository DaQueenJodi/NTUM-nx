/// @description xxx
image_xscale = 0.5;
image_yscale = 0.5;
alarm[0] = 6;
alarm[1] = 3;
with UberCont
{
	var saveFileString;
	saveFileString="ntultra"+string(version)+".sav";
	debug("DELETE");
	if ( file_exists(saveFileString) )
	{
		var deleted = file_delete(saveFileString);
		debug("delete ",deleted);
		}
	var saveFile ="ntultraencrypted"+string(version)+".sav";
	if (file_exists(saveFile))
	{	
		var deleted = file_delete(saveFile);
		debug("delete 2 ",deleted);
	}
	persistent = false;
}