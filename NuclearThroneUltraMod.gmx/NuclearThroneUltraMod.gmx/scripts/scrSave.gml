/*txt = file_text_open_write("nuclearthrone"+string(version)+".sav")
//HEADER
file_text_write_string(txt,"YUNG VENUZ WILL SHANK YOU IF YOU EDIT THIS FILE. VLAMBEER DRM 2013-NOW")
file_text_writeln(txt)
scrSaveStats()
scrSaveOptions()
scrSaveData()

file_text_close(txt)
*/
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
