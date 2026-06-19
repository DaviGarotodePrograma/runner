extends Node2D

@export var velocidade: int

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	$Fundo.position.x -= velocidade * delta * 0.2
	$Fundo2.position.x -= velocidade * delta * 0.2

	$MeioAzul.position.x -= velocidade * delta * 0.5
	$MeioAzul2.position.x -= velocidade * delta * 0.5
	$MeioPreto.position.x -= velocidade * delta * 0.5
	$MeioPreto2.position.x -= velocidade * delta * 0.5

	$Chao.position.x -= velocidade * delta
	$Chao2.position.x -= velocidade * delta

	if $Fundo.position.x <= -1152:
		$Fundo.position.x = 1152
	if $Fundo2.position.x <= -1152:
		$Fundo2.position.x = 1152

	if $Chao.position.x <= -1152:
		$Chao.position.x = 1152
	if $Chao2.position.x <= -1152:
		$Chao2.position.x = 1152

	if $MeioAzul.position.x <= -1152:
		$MeioAzul.position.x = 1152
	if $MeioAzul2.position.x <= -1152:
		$MeioAzul2.position.x = 1152

	if $MeioPreto.position.x <= -1152:
		$MeioPreto.position.x = 1152
	if $MeioPreto2.position.x <= -1152:
		$MeioPreto2.position.x = 1152
	# Atualiza os textos na tela buscando os dados direto do nó do Jogador
	$Status/Vida.text = "Vidas: " + str(int($Jogador.vidas))
	$Status/Pontos.text = "Pontos: " + str($Jogador.pontos)
