extends Area3D

@export var fAnchorControllerOverlap: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	overlapsHand = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body: Node3D):
	var parent: Node3D = body.get_parent_node_3d()
	if(parent.get_class() == 'XRController3D'):
		print('XR Controller entered anchor')
		overlapsHand = true
	else:
		print('Parent node not an XR Controller')
		return

func _on_body_exited(body: Node3D):
	var parent: Node3D = body.get_parent_node_3d()
	if(parent.get_class() == 'XRController3D'):
		print('XR Controller exited anchor')
		overlapsHand = true
	else:
		print('Parent node not an XR Controller')
		return
