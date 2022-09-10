function scrGetCameraWidthHalf()
{
	return (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2);
}

function scrGetCameraWidthLeft()
{
	return (camera_get_view_x(view_camera[0]));
}

function scrGetCameraWidthRight()
{
	return (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]));
}