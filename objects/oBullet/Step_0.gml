bulletSpeed = 10 + oShip.currentSpeed;
x += bulletSpeed;

if((x - oShip.x) > 1360) instance_destroy();