extends KinematicBody2D

func _physics_process(delta):
	var movimento = Vector2.ZERO
	#movimentação para cima e para baixo do personagem
	movimento.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	movimento.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	move_and_slide(movimento*200)

