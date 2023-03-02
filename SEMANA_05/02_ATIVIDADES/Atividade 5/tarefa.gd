extends Node2D

var teste = false
var valor = 0
var numero = 0 #o Godot não permite váriaveis com acentuação
var lista = [] #declarei a variável "lista" com var na frente
var nome = '' #adicionei variável "nome" 

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)
	nome = $LineEdit.text.split(" ")[1]  #inverti a váriavel e o LineEdit e adicionei "split" para adicionar um número e um nome
	print(nome)
	print(numero)
	
func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	
	for i in range(10):
		numero += i #coloquei letra minúscula no começo da variável
		lista.append(numero) #coloquei letra minúscula no começo da variável
		$Label.text = str(numero) #adicionei um string para transformar o número em um texto
	
func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	print(lista)
	var i = 0 #declarei a variável "i" e tirei-á do loop
	var cont = 0 #declarei variável "cont" e tirei-á do loop
	
	while(i < len(lista)):
	#adicionei váriavel i para rodar até dar o tamanho da lista
		if(lista[i]%2 == 1):
			cont += 1
		if cont == 1: #mudei para "==1" para só aparecer uma vez "baldo"
				nome = nome + " baldo"
				cont += 1
		$Label2.text = nome
		i += 1
