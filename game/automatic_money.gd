extends Control

func _on_timer_timeout() -> void:
	$Timer.wait_time = PlayerStats.automatic_money_wait_secs
	PlayerStats.money += PlayerStats.automatic_money_amount
