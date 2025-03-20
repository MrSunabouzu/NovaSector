// GHOST HOTEL UPDATE
/obj/item/hilbertshotel
	var/static/list/hotel_maps = list("Generic", "Apartment", "Beach Condo", "Cabin", "Bridge", "Public Library")
	//standard - hilbert's hotel room
	//apartment - see /datum/map_template/ghost_cafe_rooms
	var/datum/map_template/ghost_cafe_rooms/apartment/ghost_cafe_rooms_apartment
	var/datum/map_template/ghost_cafe_rooms/beach_condo/ghost_cafe_rooms_beach_condo
	var/datum/map_template/ghost_cafe_rooms/cabin/ghost_cafe_rooms_cabin_woods
	var/datum/map_template/ghost_cafe_rooms/bridge/ghost_cafe_rooms_ship_bridge
	var/datum/map_template/ghost_cafe_rooms/library/ghost_cafe_rooms_public_library

// GHOST HOTEL UPDATE
/obj/item/hilbertshotel/prepare_rooms()
	. = ..()
	ghost_cafe_rooms_apartment = new()
	ghost_cafe_rooms_beach_condo = new()
	ghost_cafe_rooms_cabin_woods = new()
	ghost_cafe_rooms_ship_bridge = new()
	ghost_cafe_rooms_public_library = new()

// GHOST HOTEL UPDATE
/area/misc/hilbertshotel
	mood_bonus = 25
	mood_message = "I am taking a well deserved rest!"
	ambientsounds = null
