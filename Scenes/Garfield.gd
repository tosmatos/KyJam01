extends Dialog

var character_dialogue = DialogTree.new()

var intro_dialogue = Dialog.new()
var first_question = Dialog.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	intro_dialogue.id = 1
	intro_dialogue.text = "What's up buddy."
	intro_dialogue.answers.append(Answer.new("Hey you lousy cat.", 2))
	intro_dialogue.answers.append(Answer.new("Hey orange lasgna lover.", 2))
	
	first_question.id = 2
	first_question.text = "So what's your viewpoint on Lasagna?"
	first_question.answers.append(Answer.new("They're just glorified bolognese pasta!", 3))
	first_question.answers.append(Answer.new("Pretty good but doesn't even scratch the taste of a Hachis Parmentier.", 3))
	first_question.answers.append(Answer.new("My favorite dish!", 4))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
