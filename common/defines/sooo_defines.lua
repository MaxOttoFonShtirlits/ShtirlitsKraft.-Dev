-- ===========================================================================
-- ULTIMATE PERFORMANCE DEFINES (MP Optimized, AI‑file compatible)
-- ===========================================================================

--------------------------------------------------------------------------------------------------------------
-- GRAPHICS & RENDERING (Better Zoom + Spot OM)
--------------------------------------------------------------------------------------------------------------
NDefines.NGraphics.TREE_FADE_NEAR = 180.0
NDefines.NGraphics.TREE_FADE_FAR = 220.0

NDefines.NGraphics.WEATHER_DISTANCE_CUTOFF = 0
NDefines.NGraphics.WEATHER_DISTANCE_FADE_LENGTH = 0
NDefines.NGraphics.WEATHER_ZOOM_IN_CUTOFF = 0
NDefines.NGraphics.WEATHER_ZOOM_IN_FADE_LENGTH = 0
NDefines.NGraphics.WEATHER_PLAYBACK_RATE = 0.0
NDefines.NGraphics.WEATHER_PLAYBACK_RATE_CUTOFF = 0

NDefines.NGraphics.DRAW_SHADOWS_CUTOFF = 0
NDefines.NGraphics.DRAW_SHADOWS_FADE_LENGTH = 0
NDefines.NGraphics.DRAW_REFRACTIONS_CUTOFF = 0
NDefines.NGraphics.DRAW_FOW_CUTOFF = 0
NDefines.NGraphics.DRAW_FOW_FADE_LENGTH = 0

NDefines.NGraphics.BLOOM_WIDTH = 0
NDefines.NGraphics.BLOOM_SCALE = 0
NDefines.NGraphics.BRIGHT_THRESHOLD = 0
NDefines.NGraphics.EMISSIVE_BLOOM_STRENGTH = 0

NDefines.NGraphics.MAP_BUILDINGS_SHRINK_DISTANCE = 100
NDefines.NGraphics.DRAW_MAP_OBJECTS_CUTOFF = 250
NDefines.NGraphics.DRAW_DETAILED_CUTOFF = 500

-- Map icons grouping (aggressive)
NDefines.NGraphics.MAP_ICONS_GROUP_CAM_DISTANCE = 50.0
NDefines.NGraphics.MAP_ICONS_STATE_GROUP_CAM_DISTANCE = 150.0
NDefines.NGraphics.MAP_ICONS_STRATEGIC_GROUP_CAM_DISTANCE = 260
NDefines.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE = 160
NDefines.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE_STRATEGIC = 0
NDefines.NGraphics.MAP_ICONS_GROUP_SPLIT_SELECTED_LIMIT = 10
NDefines.NGraphics.MAPICON_GROUP_PASSES = 4
NDefines.NGraphics.MAPICON_GROUP_STRATEGIC_SIZE = 500

-- Borders and splines
NDefines.NGraphics.GRADIENT_BORDERS_REFRESH_FREQ = 0.05
NDefines.NGraphics.RAID_ARROW_NAVAL_SUBDIVISIONS = 6
NDefines.NGraphics.RAID_ARROW_LAND_SUBDIVISIONS = 6
NDefines.NGraphics.RAID_ARROW_BALLISTIC_MAX_SEGMENTS = 40
NDefines.NGraphics.RAID_ARROW_AIR_MAX_SEGMENTS = 40

-- Movement arrows and order lines
NDefines.NGraphics.UNIT_ARROW_DISTANCE_CUTOFF = 700
NDefines.NGraphics.ORDER_MOVE_SMOOTHEN_PASSES = 1
NDefines.NGraphics.ORDER_MOVE_SMOOTHNESS = 0.92

-- Airplane paths
NDefines.NGraphics.AIRPLANES_CURVE_POINT_DENSITY = 0.5

-- Naval and map icons cutoffs
NDefines.NGraphics.NAVAL_COMBAT_DISTANCE_CUTOFF = 900
NDefines.NGraphics.NAVAL_MISSION_ICONS_DISTANCE_CUTOFF = 1000
NDefines.NGraphics.NAVAL_MINES_DISTANCE_CUTOFF = 600
NDefines.NGraphics.AIRBASE_ICON_DISTANCE_CUTOFF = 700
NDefines.NGraphics.NAVALBASE_ICON_DISTANCE_CUTOFF = 700
NDefines.NGraphics.FACILITY_DISTANCE_CUTOFF = 700
NDefines.NGraphics.RADAR_ICON_DISTANCE_CUTOFF = 800
NDefines.NGraphics.RESISTANCE_MAP_ICON_DISTANCE_CUTOFF = 900
NDefines.NGraphics.DECISION_MAP_ICON_DISTANCE_CUTOFF = 750
NDefines.NGraphics.RAILWAY_ICON_CUTOFF = 700
NDefines.NGraphics.SUPPLY_ICON_CUTOFF = 700
NDefines.NGraphics.CRYPTOLOGY_MAP_ICON_DISTANCE_CUTOFF = 750

-- Victory points text
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_TEXT_CUTOFF = {250, 500, 750}
NDefines.NGraphics.VICTORY_POINTS_DISTANCE_CUTOFF = {250, 500, 750}

--------------------------------------------------------------------------------------------------------------
-- AIR ANIMATIONS (disabled for CPU)
--------------------------------------------------------------------------------------------------------------
NDefines_Graphics.NAirGfx.MAX_MISSILE_BOMBING_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_BOMBING_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_PATROL_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_DOGFIGHTS_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_TRANSPORT_SCENARIOS = 0
NDefines_Graphics.NAirGfx.AIRPLANES_SMOOTH_INTERPOLATION_MOVE = 0.02
NDefines_Graphics.NAirGfx.AIRPLANES_SMOOTH_INTERPOLATION_TURN = 0.02
NDefines_Graphics.NAirGfx.AIRPLANES_ANIMATION_GLOBAL_SPEED_PER_GAMESPEED = {0.3, 0.3, 0.3, 0.3, 0.3, 0.3}
NDefines_Graphics.NMapMode.RADAR_ROTATION_SPEED = 0.0
NDefines_Graphics.NMapMode.AIR_RANGE_INDICATOR_ROTATION_SPEED = 0.0000

--------------------------------------------------------------------------------------------------------------
-- GAME SPEED & LAG CONTROL
--------------------------------------------------------------------------------------------------------------
NDefines.NGame.GAME_SPEED_SECONDS = { 0.35, 0.15, 0.1, 0.035, 0.0 }
NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 225
NDefines.NGame.LAG_DAYS_FOR_PAUSE = 250
NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 3
NDefines.NGame.MESSAGE_TIMEOUT_DAYS = 10
NDefines.NGame.DECISION_ALERT_TIMEOUT_DAYS = 14
NDefines.NGame.MISSION_REMOVE_FROM_INTERFACE_DEFAULT = 3
NDefines.NGame.GARRISON_LOG_MAX_MONTHS = 0

--------------------------------------------------------------------------------------------------------------
-- AI OPTIMIZATION (only internal frequencies — not conflicting with AI file)
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.AI_UPDATE_ROLES_FREQUENCY_HOURS = 96
NDefines.NAI.FRONTS_UPDATE_TIME = 72
NDefines.NAI.FRONTS_UPDATE_TIME_FORTIFIED = 120
NDefines.NAI.AI_UPDATE_ROUNDS = 2

--------------------------------------------------------------------------------------------------------------
-- DIPLOMACY & COUNTRY (quick response, no artificial delays)
--------------------------------------------------------------------------------------------------------------
NDefines.NDiplomacy.DIPLOMACY_HOURS_BETWEEN_REQUESTS = 12
NDefines.NDiplomacy.GUARANTEE_COST = 12
NDefines.NDiplomacy.TRUCE_PERIOD_AFTER_KICKING_FROM_FACTION = 0
NDefines.NDiplomacy.NUM_DAYS_TO_ENABLE_KICKING_NEW_MEMBERS_OF_FACTION = 0
NDefines.NDiplomacy.NUM_DAYS_TO_ENABLE_REINVITE_KICKED_NATIONS = 0
NDefines.NDiplomacy.FRONT_IS_DANGEROUS = 0
NDefines.NDiplomacy.LICENSE_ACCEPTANCE_SAME_FACTION = 30

NDefines.NCountry.EVENT_PROCESS_OFFSET = 30
NDefines.NCountry.INTERPOLATED_FRONT_STEPS_SHORT = 1



