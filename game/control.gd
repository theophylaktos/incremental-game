extends Control

func _ready() -> void:
	for child in self.get_child_count():
		self.get_child(child).visible = false
	$Rock.visible = true
	PlayerStats.eyes_changed.connect(_on_eyes_changed)
	PlayerStats.sunglasses_changed.connect(_on_sunglasses_changed)
	PlayerStats.tophat_changed.connect(_on_tophat_changed)
	PlayerStats.bowtie_changed.connect(_on_bowtie_changed)

func _on_eyes_changed() -> void:
	$Eyes.visible = true

func _on_sunglasses_changed() -> void:
	$Sunglasses.visible = true

func _on_tophat_changed() -> void:
	$Tophat.visible = true
	
func _on_bowtie_changed() -> void:
	$Bowtie.visible = true
