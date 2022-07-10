extends TileMap

var button_pressed = false;
var current_tile = 0

func _unhandled_input(event):
    if event is InputEventMouseButton:
        if event.button_index == BUTTON_LEFT and event.pressed    :
            button_pressed = true
        if event.button_index == BUTTON_LEFT and !event.pressed    :
            button_pressed = false
            
    if event is InputEventMouseMotion and button_pressed:
        var tilemap:TileMap = self
        var mouse :Vector2 = get_global_mouse_position()
        var cell :Vector2 = tilemap.world_to_map(mouse)
        var abc :int = tilemap.get_cellv(cell)
        var new_abc :int = (abc + 1) % 3 # just an example plus 1 modules 3
        tilemap.set_cellv(cell, current_tile, true)


func _on_tool_change(value):
    current_tile = value
