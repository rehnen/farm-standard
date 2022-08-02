extends Control

enum Button {TOOL1, TOOL2, TOOL3, TOOL4}

signal tool_change(value)

func _on_Button_pressed():
    print_debug("first button pressed")
    emit_signal("tool_change", Button.TOOL1);
    
func _on_Button2_pressed():
    print_debug("second button pressed")
    emit_signal("tool_change", Button.TOOL2);

func _on_Button3_pressed():
    print_debug("third button pressed")
    emit_signal("tool_change", Button.TOOL3);

func _on_Button4_pressed():
    print_debug("fourth button pressed")
    emit_signal("tool_change", Button.TOOL4);

