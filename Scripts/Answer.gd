class_name Answer
extends Node

var text: String
var next_dialog: int
var time_taken: int
var sfx: String
	
func _init(text: String, next_dialog: int, time_taken: int = 0, sfx: String = "") -> void:
	self.text = text
	self.next_dialog = next_dialog
	self.time_taken = time_taken

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
