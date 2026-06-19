extends Node2D

# Carrega a cena do obstáculo
const OBSTACULO_CENA = preload("res://obstaculo.tscn")

# Timer iniciando em 0
var timer: float = 0.0

func _process(delta: float) -> void:
	timer += delta
	
	if timer >= 2.0:
		timer = 0.0
		gerar_obstaculo()

func gerar_obstaculo() -> void:
	# 1. Cria a cópia do obstáculo na memória
	var novo_obstaculo = OBSTACULO_CENA.instantiate()
	
	# 2. Configura as posições para a sua tela de 1152x648
	var posicao_x: float = 1250.0  # Nasce um pouco depois do limite direito (1152)
	var posicao_y: float = 545.0   # Altura do seu chão azul
	novo_obstaculo.position = Vector2(posicao_x, posicao_y)
	
	# 3. A LINHA MÁGICA QUE FALTAVA: Coloca o obstáculo na cena real do jogo!
	get_parent().add_child(novo_obstaculo)
