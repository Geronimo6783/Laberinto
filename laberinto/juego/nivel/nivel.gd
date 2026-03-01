extends Node2D

# Señal de que la meta ha sido alcanzada por el jugador.
signal meta_alcanzada

# Emite la señal cuando el jugador llega a la meta.
func _on_meta_body_entered(body: Node2D) -> void:
	if(body == $Jugador):
		meta_alcanzada.emit()

# Permite reiniciar el nivel.
func reiniciar() -> void:
	$Jugador.position = Vector2(357, 464)
