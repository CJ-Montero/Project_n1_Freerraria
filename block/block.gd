extends Area2D
@export var speed : int = 400
@export var life : int = 3
@export var type : int

func loadData():
	var data : Dictionary = {
		"Position": position,
		"Life": life,
		"Type": type
	}
	SystemSave.loadData(data)
	SystemSave.saveGame()
	pass
