if instance_exists(Player)
{
if Player.ultra_got[6]=1{

if x!=xprevious||y!=yprevious
{
    if Player.bskin=2
    {
    draw_sprite(sprCrystalShieldCWalkBack,wave*0.4,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldCWalkFront,wave*0.4,x+max(0,random(time/60)-2),y-8)
    }
    else if Player.bskin=1
    {
    draw_sprite(sprCrystalShieldBWalkBack,wave*0.4,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldBWalkFront,wave*0.4,x+max(0,random(time/60)-2),y-8)
    }
    else
    {
    draw_sprite(sprCrystalShieldWalkBack,wave*0.4,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldWalkFront,wave*0.4,x+max(0,random(time/60)-2),y-8)
    }
}
else
{
wave=0;
    if Player.bskin=2
    {
    draw_sprite(sprCrystalShieldCIdleBack,wave*0.4,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldCIdleFront,wave*0.4,x+max(0,random(time/60)-2),y-8+max(0,random(time/90)-2))
    }
    else if Player.bskin=1
    {
    draw_sprite(sprCrystalShieldBIdleBack,wave*0.4,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldBIdleFront,wave*0.4,x+max(0,random(time/60)-2),y-8+max(0,random(time/90)-2))
    }
    else
    {
    draw_sprite(sprCrystalShieldIdleBack,wave*0.4,x+max(0,random(time/60)-2),y+4+max(0,random(time/90)-2))
    draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
    draw_sprite(sprCrystalShieldIdleFront,wave*0.4,x+max(0,random(time/60)-2),y-8+max(0,random(time/90)-2))
    }
}

}
else
draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
}
else
draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))

