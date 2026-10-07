extends Control

@export var upgrade_name: String = ""
@export var initial_cost: float = 1
@export var cost_increment: float = 2.0
@export var max_purchases: int = 1
@export var money_multiplier: int = 1

var cost: float
var purchases: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready() -> void:
	%Name.text = upgrade_name
	cost = initial_cost
	%Cost.text = "$" + str(cost)


func _on_purchase_button_pressed() -> void:
	if PlayerStats.money < cost:
		return
	PlayerStats.money_multiplier += money_multiplier
	PlayerStats.money -= cost
	cost *= cost_increment
	%Cost.text = "$" + str(cost)
	print(name)
	match name:
		"Eyes":
			PlayerStats.eyes = true
		"Sunglasses":
			PlayerStats.sunglasses = true
		"Tophat":
			PlayerStats.tophat = true
		"Bowtie":
			PlayerStats.bowtie = true
		"Mouth":
			PlayerStats.mouth = true
		"GoldTooth":
			PlayerStats.gold_tooth = true
		"Hands":
			PlayerStats.hands = true
		"Feet":
			PlayerStats.feet = true
			
	purchases += 1
	if (purchases >= max_purchases):
		queue_free()
