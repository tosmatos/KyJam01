class_name DialogTree
extends Node

var dialogues: Array[Dialog]

func GetDialogById(id: int) -> Dialog:
	for dialogue in dialogues:
		if (dialogue.id == id):
			return dialogue
	return null
