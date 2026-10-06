extends Node

signal money_changed
signal eyes_changed


@export var money: float = 0:
	set(new_value):
		money = new_value
		money_changed.emit()

@export var eyes: bool = false:
		set(new_value):
			eyes = new_value
			eyes_changed.emit()
