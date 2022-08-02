extends Camera2D

signal scroll_zoom(value)

func _unhandled_input(event):
  if event is InputEventMouseButton:
    if event.button_index == BUTTON_WHEEL_UP and event.pressed:
      self.zoom *= 0.9
      emit_signal("scroll_zoom", 0.9)
    if event.button_index == BUTTON_WHEEL_DOWN and event.pressed:
      self.zoom *= 1.1
      emit_signal("scroll_zoom", 1.1)
