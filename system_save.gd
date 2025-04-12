extends Node

# "Entity"
# Position -> Vector2D
# life -> int or float
# score -> int

const savePath : String = "user://save_game.dat"
@export var data : Dictionary

func loadData(sendData : Dictionary) -> bool:
	data = sendData
	return true

func saveGame() -> bool:
	var file = FileAccess.open(savePath,FileAccess.WRITE)
	if file == null:
		return false
	file.store_var(data)
	file = null
	return true

func loadGame() -> bool:
	if FileAccess.file_exists(savePath):
		var file = FileAccess.open(savePath,FileAccess.READ)
		if file == null:
			return false
		data = file.get_var()
		file = null
	return true
