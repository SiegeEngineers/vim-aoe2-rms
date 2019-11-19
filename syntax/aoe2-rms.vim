if exists("b:current_syntax")
  finish
endif

syntax region rmsComment start="/\*" end="\*/"
syntax region rmsCommandAttributes start='{' end='}' contains=rmsAttribute

syntax match rmsDefine "\v#(define|const)"
syntax match rmsInclude "\v#include(_drs)?"

syntax keyword rmsControl
  \ if
  \ elseif
  \ else
  \ endif
  \ start_random
  \ percent_chance
  \ end_random

syntax match rmsSection "\v\<[A-Z_]+\>"

syntax keyword rmsCommand
  \ create_land
  \ create_player_lands
  \ create_terrain
  \ create_object
  \ create_connect_all_players_land
  \ create_connect_to_nonplayer_land
  \ create_connect_teams_land
  \ create_connect_same_land_zones
  \ create_connect_all_lands
  \ create_elevation

syntax keyword rmsAttribute
  \ land_percent
  \ land_position
  \ land_id
  \ terrain_type
  \ base_size
  \ left_border
  \ right_border
  \ top_border
  \ bottom_border
  \ border_fuzziness
  \ zone
  \ set_zone_by_team
  \ set_zone_randomly
  \ other_zone_avoidance_distance
  \ assign_to_player
  \ base_terrain
  \ percent_of_land
  \ number_of_clumps
  \ set_scale_by_groups
  \ set_scale_by_size
  \ spacing_to_other_terrain_types
  \ height_limits
  \ set_flat_terrain_only
  \ clumping_factor
  \ set_scaling_to_map_size
  \ number_of_groups
  \ number_of_objects
  \ group_variance
  \ group_placement_radius
  \ set_loose_grouping
  \ set_tight_grouping
  \ terrain_to_place_on
  \ set_gaia_object_only
  \ set_place_for_every_player
  \ place_on_specific_land_id
  \ min_distance_to_players
  \ max_distance_to_players
  \ replace_terrain
  \ terrain_cost
  \ terrain_size
  \ spacing
  \ assign_to
  \ place_on_forest_zone
  \ avoid_forest_zone
  \ find_closest
  \ actor_area
  \ avoid_actor_area
  \ actor_area_to_place_in
  \ actor_area_radius
  \ avoid_all_actor_areas
  \ force_placement
  \ base_layer
  \ layer_to_place_on
  \ containedin=rmsCommandAttributes contained

syntax keyword rmsTopLevelAttribute
  \ random_placement
  \ direct_placement
  \ circle_placement
  \ circle_radius
  \ grouped_by_team
  \ color_correction
  \ enable_waves
  \ guard_state
  \ terrain_state
  \ effect_amount
  \ effect_percent
  \ terrain_mask
  \ base_terrain
  \ min_number_of_cliffs
  \ max_number_of_cliffs
  \ min_length_of_cliff
  \ max_length_of_cliff
  \ cliff_curliness
  \ min_distance_cliffs
  \ min_terrain_distance

syntax match rmsConst "\v<[A-Z_][A-Z0-9_]*>"
syntax match rmsNumber "\v<-?[0-9]+>"

highlight default link rmsComment Comment
highlight default link rmsDefine Define
" Includes don't work!
highlight default link rmsInclude ErrorMsg
highlight default link rmsControl Conditional
highlight default link rmsSection Title
highlight default link rmsCommand Special
highlight default link rmsAttribute Normal
highlight default link rmsTopLevelAttribute Normal
highlight default link rmsConst Identifier
highlight default link rmsNumber Number

let b:current_syntax = "aoe2-rms"
