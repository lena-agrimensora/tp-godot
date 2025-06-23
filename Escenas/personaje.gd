extends CharacterBody2D

var movimiento = Vector2()
var velocidad = 300

func _physics_process(delta):
	var direction = InputManager.get_player_direccion()
	velocity = direction * velocidad
	move_and_slide()
	disparar_animacion(direction)
pass
	
func disparar_animacion(direccion: Vector2):
	if direccion == Vector2.ZERO:
		$AnimationPlayer.stop()
		return
	
	if abs(direccion.x) > abs(direccion.y):
		if direccion.x > 0:
			$AnimationPlayer.play("Derecha")
		else:
			$AnimationPlayer.play("Izquierda")
	else:
		if direccion.y > 0:
			$AnimationPlayer.play("Abajo")
		else:
			$AnimationPlayer.play("Arriba")
pass
