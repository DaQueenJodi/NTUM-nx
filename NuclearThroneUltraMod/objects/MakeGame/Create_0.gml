/*//preventing players from pirating
if (!file_exists("amb106.ogg")||
!file_exists("amb0.ogg")||
!file_exists("amb0b.ogg")||
!file_exists("amb0c.ogg")||
!file_exists("amb1.ogg")||
!file_exists("amb2.ogg")||
!file_exists("amb3.ogg")||
!file_exists("amb3.ogg")||
!file_exists("amb4.ogg")||
!file_exists("amb5.ogg")||
!file_exists("amb6.ogg")||
!file_exists("amb7.ogg")||
!file_exists("amb100.ogg")||
!file_exists("amb101.ogg")||
!file_exists("amb102.ogg")||
!file_exists("amb103.ogg")||
!file_exists("amb104.ogg")||
!file_exists("amb105.ogg")||
!file_exists("amb106.ogg")||
!file_exists("mus1.ogg")||
!file_exists("mus2.ogg")||
!file_exists("mus3.ogg")||
!file_exists("mus4.ogg")||
!file_exists("mus5.ogg")||
!file_exists("mus6.ogg")||
!file_exists("mus7.ogg")||
!file_exists("mus1b.ogg")||
!file_exists("mus3b.ogg")||
!file_exists("mus5b.ogg")||
!file_exists("mus7b.ogg")||
!file_exists("mus100.ogg")||
!file_exists("mus100b.ogg")||
!file_exists("mus102.ogg")||
!file_exists("mus103.ogg")||
!file_exists("mus104.ogg")||
!file_exists("mus105.ogg")||
!file_exists("mus106.ogg")||
!file_exists("mus106b.ogg")||
!file_exists("mus107.ogg")||
!file_exists("musBoss1.ogg")||
!file_exists("musBoss2.ogg")||
!file_exists("musBoss3.ogg")||
!file_exists("musBoss4A.ogg")||
!file_exists("musBoss4B.ogg")||
!file_exists("musBoss4Silence.ogg")||
!file_exists("musBoss5.ogg")||
!file_exists("musBoss6.ogg")||
!file_exists("musBoss6B.ogg")||
!file_exists("musBoss7.ogg")||
!file_exists("musBoss8.ogg")||
!file_exists("musBossDead.ogg")||
!file_exists("musCredits.ogg")||
!file_exists("musThemeA.ogg")||
!file_exists("musThemeB.ogg")||
!file_exists("musThemeP.ogg")
)
{
show_error("##
Files missing!#
Place .exe and data.win into your ->UPDATED<- Nuclear Throne local folder##

make sure you save your original data.win somewhere#
when you want to play the original nuclear throne#
you can then place the old data.win into the folder again.##",true);
game_end();
exit;
}
//*/

if !instance_exists(UberCont)
instance_create(0,0,UberCont)


room_goto(romGame)
instance_destroy()