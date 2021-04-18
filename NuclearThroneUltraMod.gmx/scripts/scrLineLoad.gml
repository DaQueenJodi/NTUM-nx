if file_text_eof(txt) = false
{
file_text_readln(txt)
tmptxt = file_text_read_string(txt)
//show_message(tmptxt)
//tmp = string(argument0)+"="+string(tmptxt)
//execute_string(tmp) //optimise

argument0=tmptxt;
}
