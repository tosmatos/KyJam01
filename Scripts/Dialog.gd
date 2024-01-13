class_name Dialog
extends Node

var id: int
var text: String
var answers: Array[Answer]
	
class Answer:
	var text: String
	var next_dialog: int
	var time_taken: int
	
	func _init(text: String, next_dialog: int, time_taken: int) -> void:
		self.text = text
		self.next_dialog = next_dialog
		self.time_taken = time_taken

class DialogTree:
	var Dialogues: Array[Dialog]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
