extends Node


var current_experience = 0


func _ready():
	GameEvents.experience_vial_collected.connect(on_experience_vai_collected)


func increment_experience(number: float):
	current_experience += number


func on_experience_vai_collected(number: float):
	increment_experience(number)
	print(current_experience)