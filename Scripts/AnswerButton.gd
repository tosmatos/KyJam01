class_name AnswerButton
extends Button

var answer: Answer
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
var audio_stream: AudioStream
var game_manager

signal on_pressed(id)

# Called when the node enters the scene tree for the first time.
func _ready():
	if (answer != null):
		if (answer.sfx != ""):
			audio_stream = load(answer.sfx)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_pressed():
	play_audio()
	
func play_audio():
	if (audio_stream != null):
		audio_stream_player.stream = audio_stream
		audio_stream_player.play()


func _on_pressed():
	print("helo")
	on_pressed.emit(answer.id)
	emit_signal("answer_selected", answer.next_dialog)
