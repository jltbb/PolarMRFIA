if movingIn = true and y <=75 {
	y += 5
}

if !movingIn{
	y -= 5
	if y < 0 - sprite_height/2 instance_destroy()
}