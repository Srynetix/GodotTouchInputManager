class_name InputEventMultiScreenTap
extends InputEventAction

var position   : Vector2
var fingers    : int
var rawGesture : RawGesture

func _init(_rawGesture : RawGesture) -> void:
	rawGesture = _rawGesture
	fingers = rawGesture.size()
	position = rawGesture.centroid("presses", "position")

func as_text() -> String:
	return "InputEventSingleScreenTap : position=" + str(position) + ", fingers=" + str(fingers)