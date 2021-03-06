extends KinematicBody
class_name Actor

const UP = Vector3.UP
var speed = 5.0
var attackRate = 5.0
var _dir = Vector3.ZERO
var velocity = Vector3.ZERO
var health
var max_health = 100
var detectionShape

func _ready():
	var collisionShape = CollisionShape.new()
	var cylinder = CylinderShape.new()
	cylinder.radius = 5
	collisionShape.set_shape(cylinder)
	$Detection.add_child(collisionShape)
	detectionShape = collisionShape.get_shape()


func _on_Detection_body_entered(_body):
	pass # Replace with function body.


func _on_Detection_body_exited(_body):
	pass # Replace with function body.
