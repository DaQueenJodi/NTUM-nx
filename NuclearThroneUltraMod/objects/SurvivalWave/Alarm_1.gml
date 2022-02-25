/// @description End check enem death
if instance_number(enemy) <= instance_number(IDPDVan)
{
	instance_create(centerX,centerY,Portal);
}
else
{
	alarm[1] = 60;	
}
