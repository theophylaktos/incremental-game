extends Control

var coinAmounts: Array[int] = [100, 25, 10, 5, 2, 1]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%CoinButton.pressed.connect(_on_button_pressed)
	PlayerStats.money_changed.connect(_on_money_changed)
	
	%Money.text = "Money: " + str(PlayerStats.money)
	
func _on_button_pressed() -> void:
	PlayerStats.money += (0.01) * coinAmounts[randi_range(0, coinAmounts.size() - 1)] * PlayerStats.money_multiplier;

func _on_money_changed() -> void:
	%Money.text = "Money: " + str(PlayerStats.money)
