extends Control

@export var upgrade_name: String = ""
@export var initial_cost: float = 1
@export var cost_increment: float = 2.0
@export var max_purchases: int = 1

var cost: float = initial_cost
var purchases: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready() -> void:
	%Name.text = upgrade_name
	%Cost.text = "$" + str(cost)


func _on_purchase_button_pressed() -> void:
	if PlayerStats.money < cost:
		return
	
	PlayerStats.money -= cost
	cost *= cost_increment
	%Cost.text = "$" + str(cost)
	
	purchases += 1
	if (purchases >= max_purchases):
		queue_free()
