extends Area2D
@export var mob_scene: PackedScene
func _process(delta: float) -> void:
	self.position.y += delta*300

func _ready() -> void:
	$Timer.start()
	

func _on_timer_timeout() -> void:

	self.position.x = randf_range(0, 550)
	
