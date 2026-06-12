extends CanvasLayer

@onready var label = $CollectionLabel
var total_items = 8  # Change this to match how many collectibles you placed

func _process(delta):
	label.text = "Items: " + str(Journal.get_count()) + " / " + str(total_items)
	
	# Win condition
	if Journal.get_count() >= 5:
		label.text += " — Amazing job, you make the world a better place!"
	
	if Journal.get_count() >= total_items:
		label.text = "🎉 The beach is now clean! 🎉"
