//THIS IS VERY WORK IN PROGRESS, GOTTA ALL HAPPEN WHILE PAUSED, INCLUDING CAMERA PAN

if x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.4 and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.6 and y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.4 and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.6
{


with BanditBoss
{
snd_play(sndBigBanditIntro)
depth = -99
}
with InvertedBanditBoss
{
snd_play(sndBigBanditIntro)
depth = -99
}
with BigVulture
{
snd_play(sndBigVultureChargeTell)
depth = -99
}
with LilHunter
{
snd_play_2d(sndLilHunterAppear)
depth = -99
}
with InvertedLilHunter
{
snd_play_2d(sndLilHunterAppear)
depth = -99
}
with ScrapBoss
{
snd_play(sndBigDogIntro)
depth = -99
}
with InvertedScrapBoss
{
snd_play(sndBigDogIntro)
depth = -99
}
with HotDrake
{
snd_play(sndFlareExplode)
depth = -99
}
with InvertedHotDrake
{
snd_play(sndFlareExplode)
depth = -99
}

with AssassinBoss
{
snd_play(sndAssassinPretend)
depth = -99
}

with InvertedAssassinBoss
{
snd_play(sndAssassinPretend)
depth = -99
}

with BallMom
{
	depth = -99;	
}
with HyperCrystal
{
	depth = -99;	
}
with Technomancer
{
	depth = -99;	
}
}
urgent += 1

