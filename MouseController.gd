extends CanvasLayer

func _process(delta):
  var pos:Vector2 = $Sprite.get_global_mouse_position()
  var grid_pos = get_grid_position()
  var scale = $Sprite.scale.x;
  var tile_size = 16 * scale

  pos.x -= fmod(pos.x, tile_size)
  pos.x += fmod(grid_pos.x, tile_size) - (tile_size / 2)
  if pos.x + tile_size / 2 < $Sprite.get_global_mouse_position().x:
    print_debug("lesser")
    pos.x += tile_size

  pos.y -= fmod(pos.y, tile_size)
  pos.y += fmod(grid_pos.y, tile_size) - (tile_size / 2)
  if pos.y + tile_size / 2 < $Sprite.get_global_mouse_position().y:
    print_debug("lesser")
    pos.y += tile_size


  $Sprite.global_position = pos


func get_grid_position():
  var node = get_tree().get_root().get_node("Node2D/TileMap")
  if node != null:
    return node.get_global_transform_with_canvas().origin
  else:
    return Vector2()

func _on_ActionBar_tool_change(value):
  pass
  


func _on_Camera2D_scroll_zoom(value):
  $Sprite.scale /= value;
