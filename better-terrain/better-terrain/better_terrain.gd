extends Node

class_name BetterTerrain

enum TerrainType {
	MATCH_TILES = 0,
	MATCH_VERTICES = 1,
	CATEGORY = 2,
	DECORATION = 3
}

enum SymmetryType {
	NONE = 0,
	MIRROR = 1,
	FLIP = 2,
	REFLECT = 3,
	ROTATE_CLOCKWISE = 4,
	ROTATE_COUNTER_CLOCKWISE = 5,
	ROTATE_180 = 6,
	ROTATE_ALL = 7,
	ALL = 8
}

var better_terrain: Node
var tile_map_layer: TileMapLayer

func _init(_tile_map_layer: TileMapLayer) -> void:
	tile_map_layer = _tile_map_layer
	better_terrain = tile_map_layer.get_node("/root/BetterTerrain")

func get_terrain_categories() -> Array:
	return better_terrain.call("get_terrain_categories", tile_map_layer.tile_set)

func add_terrain(name: String, color: Color, type: TerrainType, categories := [], icon := {}) -> bool:
	return better_terrain.call("add_terrain", tile_map_layer.tile_set, name, color, type, categories, icon)

func remove_terrain(index: int) -> bool:
	return better_terrain.call("remove_terrain", tile_map_layer.tile_set, index)

func terrain_count() -> int:
	return better_terrain.call("terrain_count", tile_map_layer.tile_set)

func get_terrain(index: int) -> Dictionary:
	return better_terrain.call("get_terrain", tile_map_layer.tile_set, index)

func set_terrain(index: int, name: String, color: Color, type: TerrainType, categories := [], icon := {}) -> bool:
	return better_terrain.call("set_terrain", tile_map_layer.tile_set, index, name, color, type, categories, icon)

func swap_terrains(index1: int, index2: int) -> bool:
	return better_terrain.call("swap_terrains", tile_map_layer.tile_set, index1, index2)

func set_tile_terrain_type(tile_data: TileData, type: int) -> bool:
	return better_terrain.call("set_tile_terrain_type", tile_map_layer.tile_set, tile_data, type)

func get_tile_terrain_type(tile_data: TileData) -> int:
	return better_terrain.call("get_tile_terrain_type", tile_data)

func set_tile_symmetry_type(tile_data: TileData, type: SymmetryType) -> bool:
	return better_terrain.call("set_tile_symmetry_type", tile_map_layer.tile_set, tile_data, type)

func get_tile_symmetry_type(tile_data: TileData) -> SymmetryType:
	return better_terrain.call("get_tile_symmetry_type", tile_data)

func get_tiles_in_terrain(type: int) -> Array:
	return better_terrain.call("get_tiles_in_terrain", tile_map_layer.tile_set, type)

func get_tile_sources_in_terrain(type: int) -> Array:
	return better_terrain.call("get_tile_sources_in_terrain", tile_map_layer.tile_set, type)

func add_tile_peering_type(tile_data: TileData, peering: int, type: int) -> bool:
	return better_terrain.call("add_tile_peering_type", tile_map_layer.tile_set, tile_data, peering, type)

func remove_tile_peering_type(tile_data: TileData, peering: int, type: int) -> bool:
	return better_terrain.call("remove_tile_peering_type", tile_map_layer.tile_set, tile_data, peering, type)

func tile_peering_keys(tile_data: TileData) -> Array:
	return better_terrain.call("tile_peering_keys", tile_data)

func tile_peering_types(tile_data: TileData, peering: int) -> Array:
	return better_terrain.call("tile_peering_types", tile_data, peering)

func tile_peering_for_type(tile_data: TileData, type: int) -> Array:
	return better_terrain.call("tile_peering_for_type", tile_data, type)

func set_cell(coordinate: Vector2i, type: int) -> bool:
	return better_terrain.call("set_cell", tile_map_layer, coordinate, type)

func set_cells(coordinates: Array, type: int) -> bool:
	return better_terrain.call("set_cells", tile_map_layer, coordinates, type)

func replace_cell(coordinate: Vector2i, type: int) -> bool:
	return better_terrain.call("replace_cell", tile_map_layer, coordinate, type)

func replace_cells(coordinates: Array, type: int) -> bool:
	return better_terrain.call("replace_cells", tile_map_layer, coordinates, type)

func get_cell(coordinate: Vector2i) -> int:
	return better_terrain.call("get_cell", tile_map_layer, coordinate)

func update_terrain_cells(cells: Array, update_surrounding_cells := true) -> void:
	better_terrain.call("update_terrain_cells", tile_map_layer, cells, update_surrounding_cells)

func update_terrain_cell(cell: Vector2i, update_surrounding_cells := true) -> void:
	better_terrain.call("update_terrain_cell", tile_map_layer, cell, update_surrounding_cells)

func update_terrain_area(area: Rect2i, update_surrounding_cells := true) -> void:
	better_terrain.call("update_terrain_area", tile_map_layer, area, update_surrounding_cells)
