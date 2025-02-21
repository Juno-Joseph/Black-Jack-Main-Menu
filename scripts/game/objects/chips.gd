extends Node3D

@onready var CHIP_BLACK = preload("res://scenes/chips/chip_black.tscn")
@onready var CHIP_BLUE = preload("res://scenes/chips/chip_blue.tscn")
@onready var CHIP_GREEN = preload("res://scenes/chips/chip_green.tscn")
@onready var CHIP_RED = preload("res://scenes/chips/chip_red.tscn")

var chip_models = [
	CHIP_BLACK,
	CHIP_BLUE, 
	CHIP_GREEN,
	CHIP_RED
	]

var current_y_offset = 0.1;
var offset_step = 0.2;

func _ready():
	add_chip(0)
	add_chip(1)
	add_chip(2)
	add_chip(3)

func add_chip(id):
	var chip = chip_models[id].instantiate();
	add_chip(chip)
