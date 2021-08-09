/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
with (other)
{
	instance_destroy();
}
if (!shieldActive)
{
	instance_create_layer(x, y, "Instances", oShield);
	shieldActive = true;
}