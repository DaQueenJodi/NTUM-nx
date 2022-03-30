///ProjectileCanBeMoved();
// /@description
///@param
function ProjectileCanBeMoved(){
	return object_index!=Laser&&object_index!=MegaLaser&&object_index!=Lightning&&object_index!=Tentacle
	&& object_index != Wazer &&object_index!=LaserLightning&&object_index!=HorrorBeam
}