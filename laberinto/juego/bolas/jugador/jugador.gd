extends CharacterBody2D

# Constante con la velocidad del movimiento.
const VELOCIDAD = 200.0

# Procesa la lógica relativa a la física del objeto.
func _physics_process(delta: float) -> void:

	if Input.is_action_pressed("Abajo"):
		velocity.y += VELOCIDAD * delta
	elif Input.is_action_pressed("Arriba"):
		velocity.y -= VELOCIDAD * delta
	elif Input.is_action_pressed("Derecha"):
		velocity.x += VELOCIDAD * delta
	elif Input.is_action_pressed("Izquierda"):
		velocity.x -= VELOCIDAD * delta
	else:
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()
