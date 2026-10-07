extends Node

signal money_changed
signal eyes_changed
signal sunglasses_changed
signal tophat_changed
signal bowtie_changed
signal mouth_changed
signal gold_tooth_changed
signal hands_changed
signal feet_changed

var money_multiplier = 1

var automatic_money_wait_secs = 1
var automatic_money_amount = 0

@export var money: float = 0:
	set(new_value):
		money = new_value
		money_changed.emit()

@export var eyes: bool = false:
		set(new_value):
			eyes = new_value
			eyes_changed.emit()
			
@export var sunglasses: bool = false:
		set(new_value):
			sunglasses = new_value
			sunglasses_changed.emit()
			automatic_money_amount = 1
			
@export var tophat: bool = false:
		set(new_value):
			tophat = new_value
			tophat_changed.emit()
			automatic_money_amount = 5
			automatic_money_wait_secs = 0.5
			
@export var bowtie: bool = false:
		set(new_value):
			bowtie = new_value
			bowtie_changed.emit()
			automatic_money_amount = 7
			automatic_money_wait_secs = 0.3

@export var mouth: bool = false:
		set(new_value):
			mouth = new_value
			mouth_changed.emit()
			automatic_money_amount = 10
			automatic_money_wait_secs = 0.2
			
@export var gold_tooth: bool = false:
		set(new_value):
			gold_tooth = new_value
			gold_tooth_changed.emit()
			automatic_money_amount = 50
			automatic_money_wait_secs = 0.1
			
@export var hands: bool = false:
		set(new_value):
			hands = new_value
			hands_changed.emit()
			automatic_money_amount = 500
			automatic_money_wait_secs = 0.1
			
@export var feet: bool = false:
		set(new_value):
			feet = new_value
			feet_changed.emit()
			automatic_money_amount = 1000
			automatic_money_wait_secs = 0.1
