extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Wwise.register_game_obj(self, self.name)
	Wwise.load_bank("Test_soudbank")
	Wwise.add_default_listener(self)
	Wwise.post_event("Play_Click", self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
