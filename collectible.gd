extends Area3D

@export var item_name: String = "Shell"
@export var description: String = "A beautiful spiral shell."

func _ready():
	body_entered.connect(_on_body_entered)

func _process(delta):
	# Make the collectible spin slowly
	rotate_y(1.0 * delta)

func _on_body_entered(body):
	if body.name == "Player":
		Journal.add_item(item_name, description)
		queue_free()  # Delete this collectible
