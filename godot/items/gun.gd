extends Node

signal shoot(dir)

func used(tilemap, click_pos : Vector2, pos):
	
	var pos_cellv = tilemap.local_to_map(pos)
	var cellv = tilemap.local_to_map(click_pos)
	
	emit_signal("shoot", click_pos.direction_to(pos))
