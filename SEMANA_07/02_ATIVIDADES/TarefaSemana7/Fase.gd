extends Node2D

func _ready():
	#música de fundo do jogo
	$somfundo.play(true)

#área do caçador caso a arara azul interaja com ele e mudar de cena
func _on_Caador_body_entered(body):
		if body.name == "Arara":
			get_tree().change_scene("res://Perdeu.tscn")

#área da chegada quando o jogador chegar na chegada e mudar de cena
func _on_Chegada_body_entered(body):
		if body.name == "Arara":
			get_tree().change_scene("res://Chegada.tscn")
