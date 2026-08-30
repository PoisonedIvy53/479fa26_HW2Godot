extends Area2D


@onready var timer: Timer = $Timer

@warning_ignore("unused_parameter")
func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
