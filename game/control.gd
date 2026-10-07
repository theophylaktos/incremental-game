extends Control

func _ready() -> void:
	for child in self.get_child_count():
		self.get_child(child).visible = false
	$Rock.visible = true
	PlayerStats.eyes_changed.connect(_on_eyes_changed)
	PlayerStats.sunglasses_changed.connect(_on_sunglasses_changed)
	PlayerStats.tophat_changed.connect(_on_tophat_changed)
	PlayerStats.bowtie_changed.connect(_on_bowtie_changed)
	PlayerStats.mouth_changed.connect(_on_mouth_changed)
	PlayerStats.gold_tooth_changed.connect(_on_gold_tooth_changed)
	PlayerStats.hands_changed.connect(_on_hands_changed)
	PlayerStats.feet_changed.connect(_on_feet_changed)
func _on_eyes_changed() -> void:
	$Eyes.visible = true

func _on_sunglasses_changed() -> void:
	$Sunglasses.visible = true

func _on_tophat_changed() -> void:
	$Tophat.visible = true
	
func _on_bowtie_changed() -> void:
	$Bowtie.visible = true
	
func _on_mouth_changed() -> void:
	$Mouth.visible = true
	
func _on_gold_tooth_changed() -> void:
	$GoldTooth.visible = true
	
func _on_hands_changed() -> void:
	$Hands.visible = true
	
func _on_feet_changed() -> void:
	$Feet.visible = true
