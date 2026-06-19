extends Node2D

const ITEM_CENA = preload("res://item.tscn")

var timer: float = 0.0

func _process(delta: float) -> void:
	timer += delta
	
	if timer >= 1.5:
		timer = 0.0 # Zerado
		gerar_item()

func gerar_item() -> void:
	var novo_item = ITEM_CENA.instantiate()
	
	var posicao_x: float = 1250.0
	var posicao_y: float = randi_range(330, 490)
	
	novo_item.position = Vector2(posicao_x, posicao_y)
	
	get_parent().add_child(novo_item)
