extends Node

var reachable_distance := 10

func used(tilemap, click_pos, pos):
	
	var pos_cellv = tilemap.local_to_map(pos)
	var cellv = tilemap.local_to_map(click_pos)
	
	if Utils.manhattan(cellv, pos_cellv) > reachable_distance:
		return
	
	_place_tile(tilemap, cellv)


func _place_tile(tilemap, cellv):
	tilemap.set_cells_terrain_connect(0, [cellv], 0, 0, false)
