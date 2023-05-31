extends Node

@export var tilemap : TileMap
@export var current_item : Node


func clicked(click_pos, pos, button_index):
	if button_index == MOUSE_BUTTON_LEFT:
		current_item.used(tilemap, click_pos, pos)
