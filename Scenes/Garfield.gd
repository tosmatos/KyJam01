extends Dialog

var character_dialogue = DialogTree.new()

var intro_dialogue = Dialog.new()
var first_question = Dialog.new()
var no_taste = Dialog.new()
var lasagna_bro = Dialog.new()
var fuck_off = Dialog.new()
var good_bye = Dialog.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	intro_dialogue.id = 1
	intro_dialogue.text = "What's up buddy."
	intro_dialogue.answers.append(Answer.new("Hey you lousy cat.", 2, 0))
	intro_dialogue.answers.append(Answer.new("Hey orange lasgna lover.", 2, 0))
	
	first_question.id = 2
	first_question.text = "So what's your viewpoint on Lasagna?"
	first_question.answers.append(Answer.new("They're just glorified bolognese pasta!", 3, 5))
	first_question.answers.append(Answer.new("Pretty good but doesn't even scratch the taste of a Hachis Parmentier.", 3, 5))
	first_question.answers.append(Answer.new("My favorite dish!", 4, 15))
	
	no_taste.id = 3
	no_taste.text = """Garfield spends 5 minutes lecturing you on the benefits of lasagna, and explains that you have
	no taste whatsoever.
	'And that's why you'll never get any bitches."""
	no_taste.answers.append(Answer.new("Well I'll keep that in mind, thanks I guess", 0, 5))
	
	lasagna_bro.id = 4
	lasagna_bro.text = """His eyes get filled with sparkles. 'You love lasagna too? Finally, someone gets it!'
	He spends 15 minutes talking about every little intricacy of the dish. You would have learned a lot if you
	had listened.
	'And that's why Lasagna rocks."""
	lasagna_bro.answers.append(Answer.new("Well thanks, that was super interesting! (lie)", 5, 5))
	lasagna_bro.answers.append(Answer.new("We should have this discussion again at a lasagna restaurant!", 6, 1))
	
	fuck_off.id = 5
	fuck_off.text = "Fuck off now. Don't let me catch you in these streets."
	fuck_off.answers.append(Answer.new("(Leave)", 0, 0))
	
	good_bye.id = 6
	good_bye.text = """You spend a minute exchanging phone numbers.
	'See you later buddy!'"""
	good_bye.answers.append(Answer.new("(Leave)", 0, 0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
