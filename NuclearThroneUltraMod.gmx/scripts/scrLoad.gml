//scrInitStats();
//scrInitOptions();
//scrInitData();

var saveFileString;
saveFileString="ntultra"+string(version)+".sav";

//if (file_exists(saveFileString))
//{
//show_message("THERE IS A FILE!");
    ini_open(saveFileString);
    scrLoadStats();
    scrLoadOptions();
    scrLoadData();
    ini_close();
/*}
else{
scrInitStats();
scrInitOptions();
scrInitData();
show_message("TNO FILE INIT!");
scrSave();
}
