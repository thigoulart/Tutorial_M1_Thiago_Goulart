extends Node2D

#botão para voltar para a fase
func _on_Button_pressed():
	get_tree().change_scene("res://Fase.tscn")
