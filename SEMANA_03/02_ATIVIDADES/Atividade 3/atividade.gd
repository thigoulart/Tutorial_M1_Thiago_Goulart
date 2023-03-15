extends Node2D

#botão da lista pronta e a saída do texto
func _on_ListaPronta_pressed():
	$"ColorRect/Saída".text = "-Estudar UX \n-Estudar Programação \n-Comprar frutas \n-Ir treinar \n-Ligar para família \n-Jantar"
	
	
#botão para inserir o texto que o usuário inserir
func _on_InsiraItem_pressed():
	
	#saída do texto que o usuário irá inserir
	var textoUser = ($"ColorRect2/texto".text)
	$"ColorRect/Saída".text = $"ColorRect/Saída".text + String("-" + textoUser + "\n")
	
	
#botãao para inserir número
func _on_InsiraNum_pressed():
	inserirnumero()
	#conversão de texto para número com "float"
	
#botão para a saída do texto da mensagem especial e a mensagem
func _on_Mensagem_pressed():
	retornarmensagem()
	
	
#botão para apagar o texto que está na tela
func _on_Voltar_pressed():
	$"ColorRect/Saída".text = ""
	
	
#função para inseirir número
func inserirnumero ():
	var numUser = String(float($"ColorRect3/número".text))
	$"ColorRect/Saída".text = numUser


#função para retornar mensagem
func retornarmensagem ():
	$"ColorRect/Saída".text = "BOM DIA! \n\nQue você tenha um \nexecelnte dia!"
