extends Control

func _ready():
	#música de grito caso o jogador perca
	$grito.play(true)

#botão para mudar para a fase (outra cena)
func _on_Button_pressed():
	get_tree().change_scene("res://Fase.tscn")
