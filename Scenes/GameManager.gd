extends Node

var buttons_container: Container
var dialogue_panel: Label
var garfield
var dialog_tree: DialogTree

var current_dialog: Dialog

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buttons_container = $UI/ChoicesPanelContainer/HBoxContainer/ButtonsContainer
	dialogue_panel = $UI/DialoguePanelContainer/DialoguePanel
	garfield = $Garfield
	dialog_tree = garfield.character_dialogue
	
	load_next_dialogue(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func load_next_dialogue(id: int):
	current_dialog = dialog_tree.dialogues[0]
	dialogue_panel.text = current_dialog.text
	for answer in current_dialog.answers:
		var button = AnswerButton.new()
		button.answer = answer
		button.game_manager = self
		button.text = answer.text
		button.pressed.connect(test)
		buttons_container.add_child(button)
		
func test(id):
	print("hello")
