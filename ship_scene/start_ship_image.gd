extends Sprite2D

var speed: float = 300.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO

	# Verifica as teclas pressionadas para mover para cima e para baixo
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1

	# Atualiza a posição da nave de acordo com a velocidade e o delta time
	position += velocity.normalized() * speed * delta
