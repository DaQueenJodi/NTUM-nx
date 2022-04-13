/// @description Increase the dmg

// Inherit the parent event
event_inherited();

dmg = 12;
if myExplosionMask > 0
with myExplosionMask {
	dmg = other.dmg;
}
BackCont.shake += 4;//On top of normal explo
depth --;