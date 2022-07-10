extends Camera2D


func _unhandled_input(event):
    if event is InputEventMouseButton:
        if event.button_index == BUTTON_WHEEL_UP and event.pressed:
            zoom *= 0.9
        if event.button_index == BUTTON_WHEEL_DOWN and event.pressed:
            zoom *= 1.1


