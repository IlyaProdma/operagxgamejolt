/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
dist = point_distance(oShip.x, oShip.y, x, y); 
if(dist <= 200) grav = 5;
else grav = 0;
var towardPlanet;
towardPlanet = point_direction(oShip.x, oShip.y, x, y);
with (oShip) {
	motion_add(towardPlanet, 0.005);
};