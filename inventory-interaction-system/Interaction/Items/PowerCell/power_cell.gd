extends "res://inventory-interaction-system/Interaction/Items/CollectibleItem.gd"

func on_collect():
	Inventory.update_power_cells.emit()
	
static func use_item():
	Inventory.player.get_node("Head/Camcorder").try_to_recharge()
