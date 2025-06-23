extends Node2D

func _on_bandera_gana() -> void:
	$Enemigo.queue_free()
	$Bandera.queue_free()
pass # Replace with function body.

func _on_bandera_pierde() -> void:
	$Personaje.queue_free()
	pass # Replace with function body.
