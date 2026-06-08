if (instance_exists(obj_playercharacter) && distance_to_object(obj_playercharacter) < tracking_distance)
{
	target_x = obj_playercharacter.x;
	target_y = obj_playercharacter.y;
}
else
{
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;
	