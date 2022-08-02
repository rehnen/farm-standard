extends TileMap

var button_pressed = false;
var current_tile = 0

func _unhandled_input(event):
    if event is InputEventMouseButton:
        if event.button_index == BUTTON_LEFT and event.pressed    :
            button_pressed = true
            _paint()

        if event.button_index == BUTTON_LEFT and !event.pressed    :
            button_pressed = false
            
    if event is InputEventMouseMotion and button_pressed:
        _paint()


func _paint():
    var mouse :Vector2 = get_global_mouse_position()
    var cell :Vector2 = self.world_to_map(mouse)
    self.set_cellv(cell, current_tile, true)

# listeners

func _on_tool_change(value):
    current_tile = value
