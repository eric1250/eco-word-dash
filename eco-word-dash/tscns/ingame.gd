extends Node2D


var enemy_scene: PackedScene = preload('res://tscns/enemy.tscn')
var heart = 3

func _ready() -> void:
	$Timer.start() # Timer 노드의 이름을 확인해주세요.

func _process(delta: float) -> void:
	$Timer.wait_time = randf_range(0.5, 1)
	if heart == 0:
		get_tree().change_scene_to_file('res://tscns/result.tscn')
func _on_timer_timeout() -> void:
	spawn()
	
func spawn():
	var new_enemy_instance = enemy_scene.instantiate() 
	
	new_enemy_instance.position = Vector2(randf_range(110, 1100), -10)
	
	add_child(new_enemy_instance)
