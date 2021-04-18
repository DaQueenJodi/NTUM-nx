//shadow works
if UberCont.opt_shadow=0
exit;

if !(surface_exists(shad) ){
shad = surface_create(view_wview,view_hview)
surface_set_target(shad)
draw_clear_alpha(c_black,0)
surface_reset_target()}

surface_set_target(shad);

draw_clear_alpha(c_black,0)
with Wall
{
//if place_meeting(x,y+16,Floor)
if !place_meeting(x,y+16,Top) and !place_meeting(x,y+16,TopSmall)
draw_sprite_ext(outspr,outindex,x-view_xview,y+2+16-view_yview,1,-1,0,c_black,1)
}
with Bones
draw_sprite_ext(sprite_index,image_index,x-view_xview,y-view_yview+8,image_xscale,-1,0,c_black,1)
with Crown
draw_sprite(shd16,0,x-view_xview,y-view_yview+3)
with CrownPickup
draw_sprite(shd16,0,x-view_xview,y-view_yview+3)
with ScrapBossMissile
draw_sprite(shd16,0,x-view_xview,y-view_yview+3)
with ScrapBoss
draw_sprite(shd96,0,x-view_xview,y-view_yview)
with InvertedScrapBoss
draw_sprite(shd96,0,x-view_xview,y-view_yview)
with IDPDVan
draw_sprite(shd96,0,x-view_xview,y-view_yview-8)
with BecomeScrapBoss
draw_sprite(shd96,0,x-view_xview,y-view_yview)
with BecomeInvertedScrapBoss
draw_sprite(shd96,0,x-view_xview,y-view_yview)
with Maggot
draw_sprite(shd16,0,x-view_xview,y-view_yview)
with DoomGrenade
draw_sprite(shd8,0,x-view_xview,y-view_yview)
with GyroBurst
draw_sprite(shd16,0,x-view_xview,y-view_yview+24)
with RadMaggot
draw_sprite(shd16,0,x-view_xview,y-view_yview)
with FireBat
draw_sprite(shd16,0,x-view_xview,y-view_yview+10)
with InvertedFireBat
draw_sprite(shd16,0,x-view_xview,y-view_yview+10)
with MaggotInverted
draw_sprite(shd16,0,x-view_xview,y-view_yview)
with Scorpion
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with InvertedScorpion
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with Crab
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with SnowTank
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with Salamander
draw_sprite(shd48,0,x-view_xview,y-view_yview-6)
with InvertedSalamander
draw_sprite(shd48,0,x-view_xview,y-view_yview-6)
with BigFish
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with InvertedSnowTank
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with GoldSnowTank
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with SnowTankExplo
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with GoldScorpion
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with LaserCrystal
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with LightningCrystal
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with BanditBoss
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with MaggotSpawn
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with LavaBallEnemy
draw_sprite(shd32,0,x-view_xview,y-view_yview+4)
with InvertedLavaBallEnemy
draw_sprite(shd32,0,x-view_xview,y-view_yview+4)
with BigMachine
draw_sprite(shd96,0,x-view_xview,y-view_yview+27)
with BigMachineLaser
draw_sprite(shd16,0,x-view_xview,y-view_yview);
with InvertedBigMachine
draw_sprite(shd96,0,x-view_xview,y-view_yview+27)
with InvertedBigMachineLaser
draw_sprite(shd16,0,x-view_xview,y-view_yview);

with ChesireCat
{
if visible
draw_sprite(shd32,0,x-view_xview,y-view_yview+10)}

with InvertedChesireCat
{
if visible
draw_sprite(shd32,0,x-view_xview,y-view_yview+10)}

with Jock
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with FireBaller
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with SuperFireBaller
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with InvertedFireBaller
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with InvertedSuperFireBaller
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with Car
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with CarVenus
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with CarVenusFixed
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with CarThrow
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with BigMaggot
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with BigMaggotInverted
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with CrownPed
draw_sprite(shd64B,0,x-view_xview,y-view_yview+8)
with BigSkull
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with Ratking
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with RatkingRage
draw_sprite(shd48,0,x-view_xview,y-view_yview)
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with InvertedRatking
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with InvertedRatkingRage
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with CardGuy
draw_sprite(shd16,0,x-view_xview,y-view_yview+12)
with CardGuy2
draw_sprite(shd16,0,x-view_xview,y-view_yview+12)
with InvertedCardGuy
draw_sprite(shd16,0,x-view_xview,y-view_yview+12)
with InvertedCardGuy2
draw_sprite(shd16,0,x-view_xview,y-view_yview+12)
with TeaPot
draw_sprite(shd24,0,x-view_xview,y-view_yview+12)
with InvertedTeaPot
draw_sprite(shd24,0,x-view_xview,y-view_yview+12)
with HotDrake
{
if visible
draw_sprite(shd32,0,x+8-view_xview,y+90-view_yview)
}
with InvertedHotDrake
{
if visible
draw_sprite(shd32,0,x+8-view_xview,y+90-view_yview)
}
with Player
{
if visible = 1
{
if race=18
draw_sprite(shd24,0,x-view_xview,y-view_yview+16)
else
draw_sprite(shd24,0,x-view_xview,y-view_yview)
}
}
with YungCuzDupe
draw_sprite(shd24,0,x-view_xview,y-view_yview)

with CampChar
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with prop
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with chestprop
draw_sprite(shd24,0,x-view_xview,y-view_yview-1)
with Mimic
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with BigWeaponChest
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with Rat
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with FastRat
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedRat
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedFastRat
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Spider
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedSpider
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Bandit
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Thief
draw_sprite_ext(shd24,0,x-view_xview,y-view_yview,1,1,0,c_white,alpha);
with BoneFish
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with DiscGuy
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedDiscGuy
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with BanditInverted
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Turtle
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Ally
draw_sprite(shd24,0,x-view_xview,y-view_yview-1)
with Grunt
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Inspector
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with EliteGrunt
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with EliteInspector
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with SegwayPopo
draw_sprite(shd24,0,x-view_xview,y-view_yview+6)
with Shielder
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with EliteShielder
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Molefish
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Molesarge
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Gator
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedGator
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with SnowBot
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with SnowBotCar
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with InvertedSnowBot
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedSnowBotCar
draw_sprite(shd32,0,x-view_xview,y-view_yview)
with Raven
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedRaven
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Freak
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedFreak
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with ExploFreak
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedExploFreak
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Necromancer
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedNecromancer
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with RhinoFreak
draw_sprite(shd48,0,x-view_xview,y-view_yview)
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedRhinoFreak
draw_sprite(shd48,0,x-view_xview,y-view_yview)
with RavenFly
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedRavenFly
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with LilHunter
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with LilHunterFly
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedLilHunter
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedLilHunterFly
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with MeleeBandit
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedMeleeBandit
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Sniper
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedSniper
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Exploder
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedExploder
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with SuperFrog
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedSuperFrog
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with Wolf
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with InvertedWolf
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with ProtoStatue
draw_sprite(shd64B,0,x-view_xview,y-view_yview)
with Sheep
draw_sprite(shd24,0,x-view_xview,y-view_yview)
with ExplosiveSheep
draw_sprite(shd24,0,x-view_xview,y-view_yview)

with CrystalShield
{
if image_speed = 0
draw_sprite(shd64,0,x-view_xview,y-view_yview+2)
}

surface_reset_target()
