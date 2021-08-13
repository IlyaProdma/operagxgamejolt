if(boostBar > 0)
{
	currentSpeed = constSpeed + boost;
	vsp += boost/2.5;
	sprite_index = sShipBoost;
}
else
{
	currentSpeed = constSpeed;
}