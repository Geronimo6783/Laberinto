extends Node

# Función llamada cuando se carga por primera vez la escena.
func _ready() -> void:
	$Nivel.hide()
	$Panel.hide()

# Muestra el panel cuando la meta ha sido alcanzada por el jugador.
func _on_nivel_meta_alcanzada() -> void:
	$Nivel.hide()
	$Panel.show()

# Función que getiona el evento de que el botón de volver a jugar haya sido pulsado.
func _on_button_pressed() -> void:
	$Panel.hide()
	$Nivel.reiniciar()
	$Nivel.show()

# Función que gestiona que el botón de jugar ha sido pulsado.
func _on_menu_principal_jugar_pulsado() -> void:
	$Menu_Principal.hide()
	$Nivel.show()
