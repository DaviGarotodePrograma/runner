extends Node2D

@export var velocidade: int

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	$ImagemObstaculo.position.x -= velocidade * delta*1
	$ImagemObstaculo.position.x -= velocidade * delta*1

	position.x -= velocidade * delta
	


	if position.x < -100:
		queue_free()
func _on_body_entered(body: Node2D) -> void:
	print("Algo encostou em mim: ", body.name)
	
	if "vidas" in body:
		body.vidas -= 1
		queue_free()
