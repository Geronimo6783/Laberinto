extends Control

# Señal que indica que el botón de jugar ha sido pulsado.
signal jugar_pulsado

# Función que emite la señal de que el botón de jugar ha sido pulsado.
func _on_jugar_pressed() -> void:
	jugar_pulsado.emit()
