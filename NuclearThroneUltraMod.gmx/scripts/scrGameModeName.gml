var gamemode;

if UberCont.opt_gamemode = 0{
gamemode="NORMAL"}
else if UberCont.opt_gamemode = 1 {gamemode="ONE WEAPON ONLY"}
else if UberCont.opt_gamemode = 2 {gamemode="FAVOURABLE BUILD"}
else if UberCont.opt_gamemode = 3 {gamemode="NO HUD"}
else if UberCont.opt_gamemode = 4 {gamemode="WALL IS LAVA"}
else if UberCont.opt_gamemode = 5 {gamemode="1HP EQUALITY"}
else if UberCont.opt_gamemode = 6 {gamemode="CLAUSTROFOBIA"}
else if UberCont.opt_gamemode = 7 {gamemode="ATOM TELEPORT ONLY#NO WALKING"}
else if UberCont.opt_gamemode = 8 {gamemode="CROWN START"}
else if UberCont.opt_gamemode = 9 {gamemode="EASY MODE"}
else if UberCont.opt_gamemode = 10 {gamemode="RANDOM LEVELS"}
else if UberCont.opt_gamemode = 11 {gamemode="GUN GAME"}
else if UberCont.opt_gamemode = 12 {gamemode="HUNTER ONLY SHOOT#WHEN MARKED"}
else if UberCont.opt_gamemode = 13 {gamemode="ROCKET GLOVE ONLY#NO WALKING"}
else if UberCont.opt_gamemode = 14 {gamemode="FISH'S PARTNER ONLY#NO WEAPONS"}
else if UberCont.opt_gamemode = 15 {gamemode="NO MUTATIONS"}
else if UberCont.opt_gamemode = 16 {gamemode="SPIKE TRAPS"}
else if UberCont.opt_gamemode = 17 {gamemode="DOUBLE SPEED"}
else if UberCont.opt_gamemode = 18 {gamemode="NO ELITE IDPD"}
else if UberCont.opt_gamemode = 19 {gamemode="DISC ROOM"}
else if UberCont.opt_gamemode = 20 {gamemode="AGORAPHOBIA"}
else {gamemode="UNKNOWN GAMEMODE!?#PLS REPORT @ERDEPPOL"}

return gamemode;
