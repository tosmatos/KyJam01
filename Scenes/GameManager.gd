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
	
	current_dialog = dialog_tree.dialogues[0]
	
	load_next_dialogue(1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func load_next_dialogue(id: int):
	print("Loading dialogue ", id)
	current_dialog = dialog_tree.GetDialogById(id)
	dialogue_panel.text = current_dialog.text
	
	for node: Node in buttons_container.get_children():
		node.queue_free()
	
	for answer in current_dialog.answers:
		if !answer.used_up:
			var button = AnswerButton.new()
			button.answer = answer
			button.game_manager = self
			button.text = answer.text
			button.pressed.connect(load_next_dialogue.bind(button.answer.next_dialog))
			button.pressed.connect(use_button.bind(button.answer))
			buttons_container.add_child(button)

func use_button(answer: Answer):
	if answer.can_be_used_up:
		answer.used_up = true
