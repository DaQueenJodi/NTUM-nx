function scrSave() {
	var saveFileString;
	saveFileString="ntultra"+string(version)+".sav";
	if ( file_exists(saveFileString) )
	{file_delete(saveFileString);}

	ini_open(saveFileString);

	scrSaveStats();
	scrSaveOptions();
	scrSaveData();

	ini_close();

	completionpercentage=scrCompletionPercentage();
}
