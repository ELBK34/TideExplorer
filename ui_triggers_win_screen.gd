extends CanvasLayer

@onready var label = $CollectionLabel
var total_items = 8  
var game_won = false

func _process(delta):
	if game_won:
		return
	
	var count = Journal.get_count()
	label.text = "Items: " + str(count) + " / " + str(total_items)
	
	# Win condition
	if count >= 5 and count < total_items:
		label.text += " — Amazing job, you make the world a better place!"
	
	if count >= total_items:
		trigger_win()

func trigger_win():
	game_won = true
	# Get the win screen and show it
	var win_screen = get_node("/root/World/WinScreen")
	if win_screen:
		win_screen.show_win_screen(Journal.get_count(), total_items)
