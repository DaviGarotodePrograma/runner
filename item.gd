extends Node2D


var velocidade: float = 400.0 

func _process(delta: float) -> void:
	# Desloca o item para a esquerda
	position.x -= velocidade * delta
	

	if position.x < -100:
		queue_free()
func _on_body_entered(body: Node2D) -> void:
	if body.has_method("move_and_slide") or body.name == "Jogador":
		body.pontos += 1
		queue_free()
