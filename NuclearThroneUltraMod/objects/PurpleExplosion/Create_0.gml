/// @description Even more dmg

// Inherit the parent event
event_inherited();
dmg = 16;
if myExplosionMask > 0
with myExplosionMask {
	dmg = other.dmg;
}
BackCont.shake += 2;//Additional shake
