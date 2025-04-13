extends Area2D
@export var image : Image

func loadData():
	var data : Dictionary = {
		"Position": position,
		"Image": image
	}
	SystemSave.loadData(data)
	SystemSave.saveGame()
	pass
