// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function grav(objX, objY, shipX, shipY, distance, spd, isActive, gravityActive, activateDist){
	

	if(distance <= activateDist && gravityActive == 1)
	{
		isActive = true;
		with (oShip) 
		{
			spd = 2;
			move_towards_point(objX, objY, spd);
		} 
	}
	else
	{
		if(isActive)
			with (oShip) 
		{
			spd = 0;
			move_towards_point(objX, objY, spd);
		}
	}
}