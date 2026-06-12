extends CanvasLayer

@onready var title = $CenterContainer/VBoxContainer/Title
@onready var message = $CenterContainer/VBoxContainer/Message
@onready var items_list = $CenterContainer/VBoxContainer/ItemsList
@onready var restart_button = $CenterContainer/VBoxContainer/RestartButton
@onready var quit_button = $CenterContainer/VBoxContainer/QuitButton

var animation_time = 0.0

func _ready():
	restart_button.pressed.connect(_on_restart_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func show_win_screen(items_collected: int, total_items: int):
	visible = true
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
	# Update text
	items_list.text = "Items Found: " + str(items_collected) + "/" + str(total_items)
	
	# Start with everything invisible
	title.modulate.a = 0
	message.modulate.a = 0
	items_list.modulate.a = 0
	restart_button.modulate.a = 0
	quit_button.modulate.a = 0
	
	# Reset animation
	animation_time = 0.0

func _process(delta):
	if not visible:
		return
	
	animation_time += delta
	
	# Fade in title
	if animation_time > 0.2:
		title.modulate.a = min(1.0, title.modulate.a + delta * 3)
	
	# Fade in message
	if animation_time > 0.5:
		message.modulate.a = min(1.0, message.modulate.a + delta * 3)
	
	# Fade in items
	if animation_time > 0.8:
		items_list.modulate.a = min(1.0, items_list.modulate.a + delta * 3)
	
	# Fade in buttons
	if animation_time > 1.2:
		restart_button.modulate.a = min(1.0, restart_button.modulate.a + delta * 3)
		quit_button.modulate.a = min(1.0, quit_button.modulate.a + delta * 3)
	
	# Pulse the title
	title.scale = Vector2.ONE * (1.0 + sin(animation_time * 3) * 0.05)

func _on_restart_pressed():
	get_tree().reload_current_scene()

func _on_quit_pressed():
	get_tree().quit()
