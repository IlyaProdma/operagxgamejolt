/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(place_meeting(x, y, oBorder))
{
	while(!place_meeting(x, y + sign(vsp)*35, oBorder))
	{
		y = y + sign(vsp)*35;
	}
	while(!place_meeting(x, y - sign(vsp)*27, oBorder))
	{
		y = y - sign(vsp)*27;
	}
}