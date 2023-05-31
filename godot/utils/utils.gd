extends Node


func manhattan(v1: Vector2i, v2: Vector2i):
	return abs(v1.x - v2.x) + abs(v1.y - v2.y)
