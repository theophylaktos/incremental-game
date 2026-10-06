extends Control

func _ready() -> void:
	for child in self.get_child_count():
		self.get_child(child).visible = false
	$Rock.visible = true
	PlayerStats.eyes_changed.connect(_on_eyes_changed)
	
func _on_eyes_changed() -> void:
	$Eyes.visible = true
	print("etghrh")
