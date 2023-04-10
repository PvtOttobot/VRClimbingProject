extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var interface: OpenXRInterface = XRServer.find_interface("OpenXR")
	if interface and interface.is_initialized():
		get_viewport().use_xr = true
		print('Otto: Use XR set to true')
	else:
		print('Otto: ERROR USE XR IS NOT SET TO TRUE')
