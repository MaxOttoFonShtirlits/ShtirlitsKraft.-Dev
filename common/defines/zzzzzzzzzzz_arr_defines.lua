--------------------------------------------------------------------------------------------------------------
-- SUPPLY FLOW REWORK - Better Mechanics: Supply & Logistics
--------------------------------------------------------------------------------------------------------------

-- ============================================================
-- SUPPLY AVAILABILITY
-- Supply EXISTS at home. The pain is in getting it forward.
-- ============================================================

NDefines.NSupply.VP_TO_SUPPLY_BASE = 0.45                        -- vanilla: 0.20 | more supply in important/populated areas
NDefines.NSupply.AVAILABLE_MANPOWER_STATE_SUPPLY = 0.5           -- vanilla: 0.18 | population contributes more to local supply
NDefines.NSupply.VP_TO_SUPPLY_BONUS_CONVERSION = 0.05            -- vanilla: 0.05 | unchanged
NDefines.NSupply.INFRA_TO_SUPPLY = 0.3                           -- vanilla: 0.30 | unchanged, infra reward stays vanilla

-- ============================================================
-- SUPPLY FLOW REACH - CAPITAL
-- Unchanged. Capital reach is fine vanilla.
-- ============================================================

NDefines.NSupply.CAPITAL_INITIAL_SUPPLY_FLOW = 5.0               -- vanilla: 5.0
NDefines.NSupply.CAPITAL_STARTING_PENALTY_PER_PROVINCE = 0.5     -- vanilla: 0.5
NDefines.NSupply.CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.45       -- vanilla: 1.2 | raised: compounds harder at depth, home front barely affected

-- ============================================================
-- SUPPLY FLOW REACH - NODES (SUPPLY HUBS)
-- This is where distance pain lives. Building forward hubs is critical.
-- NODE_ADDED_PENALTY compounds per province -- small raise = big effect deep in enemy territory.
-- ============================================================

NDefines.NSupply.NODE_INITIAL_SUPPLY_FLOW = 2.8                  -- vanilla: 2.8 | unchanged
NDefines.NSupply.NODE_STARTING_PENALTY_PER_PROVINCE = 0.45       -- vanilla: 0.50 | slight reach bonus to reward building hubs forward
NDefines.NSupply.NODE_ADDED_PENALTY_PER_PROVINCE = 0.85          -- vanilla: 0.70 | raised: deep pushes beyond hub range starve fast

-- ============================================================
-- SUPPLY FLOW REACH - NAVAL BASES
-- Unchanged, naval base defines are balanced as-is.
-- ============================================================

NDefines.NSupply.NAVAL_BASE_INITIAL_SUPPLY_FLOW = 3.3            -- vanilla: 3.3
NDefines.NSupply.NAVAL_BASE_STARTING_PENALTY_PER_PROVINCE = 0.84 -- vanilla: 0.84
NDefines.NSupply.NAVAL_BASE_ADDED_PENALTY_PER_PROVINCE = 1.1     -- vanilla: 1.1

-- ============================================================
-- SUPPLY FLOW MODIFIERS
-- River crossings matter. Terrain falloff steeper at range.
-- ============================================================

-- River crossing adds a logistics penalty -- raised to make major rivers (Rhine, Dnieper, Vistula) genuinely impactful
NDefines.NSupply.SUPPLY_FLOW_PENALTY_CROSSING_RIVERS = 0.32      -- vanilla: 0.20 | river crossings are a real logistics obstacle

-- Sigmoid falloff curve: controls how terrain penalty compounds with distance from a node
-- K = steepness of the curve, MIDPOINT = where it inflects, SCALAR = max penalty adjustment
-- Raising SCALAR + K makes the falloff steeper further out while leaving nearby provinces largely unaffected
NDefines.NSupply.SUPPLY_FLOW_DIST_LOGISTICS_FALLOFF_K = 1.6      -- vanilla: 1.3 | steeper curve: nearby fine, far away brutal
NDefines.NSupply.SUPPLY_FLOW_DIST_LOGISTICS_FALLOFF_MIDPOINT = 2.3 -- vanilla: 2.3 | unchanged, inflection point stays the same
NDefines.NSupply.SUPPLY_FLOW_DIST_LOGISTICS_FALLOFF_SCALAR = 1.1  -- vanilla: 0.9 | raised: max terrain penalty at range hits harder
NDefines.NSupply.SUPPLY_FLOW_DIST_LOGISTICS_FALLOFF_MIN_PENALTY_SCALE = 0.25 -- vanilla: 0.25 | unchanged, floor stays

-- Max infra reduces supply flow dropoff -- vanilla, rewards developed heartland naturally
NDefines.NSupply.SUPPLY_FLOW_DROP_REDUCTION_AT_MAX_INFRA = 0.30  -- vanilla: 0.30 | unchanged

-- ============================================================
-- RAILWAY FLOW & INTERDICTION
-- Damaged railways hurt more. Strategic bombing and rail interdiction are decisive.
-- ============================================================

NDefines.NSupply.RAILWAY_FLOW_PENALTY_PER_DAMAGED = 7.5          -- vanilla: 5.0 | damaged rail segments cripple flow harder
NDefines.NSupply.RAILWAY_BASE_FLOW = 10.0                        -- vanilla: 10.0 | unchanged
NDefines.NSupply.RAILWAY_FLOW_PER_LEVEL = 5.0                    -- vanilla: 5.0  | unchanged

-- ============================================================
-- MOTORIZATION BONUS
-- Trucks extending hub range is a meaningful logistics investment
-- ============================================================

NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_BONUS = 2.8        -- vanilla: 2.2 | slightly buffed: fully motorizing a hub is a real strategic choice
--NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_TRUCK_COST = 60.0  -- vanilla: 60.0 | unchanged, cost stays the same

-- ============================================================
-- ARMY SUPPLY BUFFER GAIN
-- Armies build their supply buffer slower -- they stay leaner,
-- more vulnerable to sudden supply cuts, can't instantly top up
-- ============================================================

NDefines.NSupply.ARMY_SUPPLY_RATIO_SPEED_GAIN_PER_HOUR = 0.007   -- vanilla: 0.010 | slower buffer accumulation
NDefines.NSupply.ARMY_MAX_SUPPLY_RATIO_GAIN_PER_HOUR = 0.10      -- vanilla: 0.150 | lower ceiling on how fast buffer fills

-- ============================================================
-- SUPPLY DISRUPTION RECOVERY
-- Interdicted nodes recover slower but not permanently broken
-- ============================================================

NDefines.NSupply.SUPPLY_DISRUPTION_DAILY_RECOVERY = 0.90         -- vanilla: 1.5 | was 0.75, raised to stop permanent frontline collapse

-- ============================================================
-- RAILWAY CONVERSION COOLDOWNS
-- Captured railways take longer to flip and use
-- ============================================================

NDefines.NSupply.RAILWAY_CONVERSION_COOLDOWN = 12                -- vanilla: 10
NDefines.NSupply.RAILWAY_CONVERSION_COOLDOWN_CORE = 6            -- vanilla: 5
NDefines.NSupply.RAILWAY_CONVERSION_COOLDOWN_CIVILWAR = 1        -- vanilla: 0

-- ============================================================
-- REINFORCEMENT DISTANCE SYSTEM
-- SUPPLY_PATH_MAX_DISTANCE is the cap.
-- The DISTANCE_FACTOR defines are the actual pain -- they scale
-- reinforcement time with how far the unit is from its supply origin.
-- High railway factor = building rail infrastructure is mandatory.
-- High naval factor = island ops and amphibious overextension hurt.
-- ============================================================

NDefines.NSupply.SUPPLY_PATH_MAX_DISTANCE = 100                   -- vanilla: 15  | high cap intentional -- distance FACTORS do the punishing, not a hard cutoff
NDefines.NSupply.RAILWAY_DISTANCE_FACTOR_FOR_REINFORCEMENT_SPEED = 0.75  -- vanilla: 0.30 | heavy rail distance penalty, rewards building infrastructure
NDefines.NSupply.TRUCK_DISTANCE_FACTOR_FOR_REINFORCEMENT_SPEED = 0.015   -- vanilla: 0.01 | minor bump
NDefines.NSupply.NAVAL_DISTANCE_FACTOR_FOR_REINFORCEMENT_SPEED = 0.18    -- vanilla: 0.08 | island ops and D-Day style landings feel the logistics burden

-- ============================================================
-- REINFORCEMENT DELIVERY
-- Floors raised so AI divisions can stabilize on a solid front.
-- Distance factors above handle the overextension punishment.
-- ============================================================

NDefines.NCountry.REINFORCEMENT_DELIVERY_SPEED_MIN = 0.18        -- vanilla: 0.60 | was 0.075 (too brutal), raised to stop AI frontline collapse
NDefines.NCountry.REINFORCEMENT_EQUIPMENT_DELIVERY_SPEED = 0.10  -- vanilla: 0.30 | equipment trickles back rather than never arriving
NDefines.NCountry.REINFORCEMENT_MANPOWER_DELIVERY_SPEED = 5.5    -- vanilla: 10.0 | was 3.0, stops permanent understrength death spiral
NDefines.NCountry.REINFORCEMENT_MANPOWER_CHUNK = 0.07             -- vanilla: 0.10 | smaller chunks per tick = slower trickle

-- ============================================================
-- REINFORCEMENT REQUEST TIMING
-- Units request and receive reinforcement less frantically
-- ============================================================

NDefines.NMilitary.REINFORCEMENT_REQUEST_MAX_WAITING_DAYS = 35   -- vanilla: unknown
NDefines.NMilitary.REINFORCEMENT_REQUEST_DAYS_FREQUENCY = 20     -- vanilla: unknown

-- ============================================================
-- AI BEHAVIOUR
-- ============================================================

-- AI deploys at 65% equipment instead of waiting for 80% -- stops "AI never deploys new divisions" issue
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.65        -- was 0.80

-- AI unit strength thresholds for attack decisions -- unchanged, well tuned
NDefines.NAI.STR_UNIT_WEAK = 0.25
NDefines.NAI.STR_UNIT_NORMAL = 0.5

NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.4    -- was 0.5 | aggressive push with less strength
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED  = 0.50   -- was 0.6 | aligns with STR_UNIT_NORMAL so no dead zone
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW  = 0.65   -- was 0.75 | careful still cautious but not frozen

-- ORG: same logic, MED floor aligns with ORG_UNIT_NORMAL
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.25        -- was 0.3
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED  = 0.35        -- was 0.40
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW  = 0.55        -- was 0.60

--------------------------------------------------------------------------------------------------------------
-- CONVOY LOGISTICS REALISM
-- Convoys are a scarce strategic resource. Overseas commitments have real costs.
-- Distance punishes. Getting raided hurts and takes time to recover from.
-- Sea lane control is vital but does not make logistics free.
--------------------------------------------------------------------------------------------------------------

-- How many convoys each supply point shipped by sea consumes.
-- Overseas armies are genuinely hungry — Pacific, North Africa, any distant theatre bleeds convoys.
NDefines.NSupply.SUPPLY_CONVOY_FACTOR = 0.65                        -- vanilla: 0.25

-- How much distance inflates convoy cost for resource trades and sea supply.
-- Short hops barely affected. Long routes (UK→Far East, US→USSR) become dramatically expensive.
NDefines.NSupply.CONVOY_RANGE_FACTOR = 2.5                          -- vanilla: 1

-- How much distance inflates convoy cost for lend lease routes.
-- The Murmansk run should be painful. US→China should be ruinous.
NDefines.NSupply.CONVOY_LENDLEASE_RANGE_FACTOR = 2.2                -- vanilla: 1

-- How much distance inflates convoy cost for international market purchases.
-- Buying equipment from a distant seller is expensive. Encourages regional trade.
NDefines.NSupply.CONVOY_INTERNATIONAL_MARKET_RANGE_FACTOR = 2.0     -- vanilla: 1

-- How much fewer convoys you need when shipping through sea zones you control.
-- Sea control is rewarded but does not make logistics free.
NDefines.NSupply.CONVOY_CONTROLLED_ROUTE_COST_REDUCTION_FACTOR = 0.05  -- vanilla: 0.25

-- Cost in convoys for underway fleet replenishment, multiplied by max daily fuel consumption.
-- Large fleets operating far from base are a serious logistical commitment.
NDefines.NNavy.UNDERWAY_REPLENISHMENT_CONVOY_COST_PER_FUEL = 0.55   -- vanilla: 0.28

-- Convoys needed per unit of fuel being lend-leased.
NDefines.NSupply.FUEL_LEASE_CONVOY_RATIO = 0.001                    -- vanilla: 0.0005

--------------------------------------------------------------------------------------------------------------
-- CONVOY RAID RECOVERY
-- Being raided craters efficiency fast and takes months to fully recover from.
-- Sustained submarine campaigns can strangle a nation's overseas trade network.
--------------------------------------------------------------------------------------------------------------

-- How much efficiency drops when losing convoys.
-- Getting raided is genuinely scary — routes collapse quickly under pressure.
NDefines.NNavy.CONVOY_EFFICIENCY_LOSS_MODIFIER = 2.0                -- vanilla: 1.25

-- Days without convoy losses required before efficiency starts recovering.
-- Two weeks of clean sailing before routes begin to normalize.
NDefines.NNavy.CONVOY_EFFICIENCY_REGAIN_AFTER_DAYS = 14             -- vanilla: 7

-- How much efficiency regains per day once recovery begins.
-- ~35 clean days needed to go from minimum back to full efficiency.
-- Months of sustained raiding pressure can permanently strangle a trade network.
NDefines.NNavy.CONVOY_EFFICIENCY_REGAIN_BASE_SPEED = 0.02           -- vanilla: 0.04

--------------------------------------------------------------------------------------------------------------
-- NAVAL SUPPLY NODE FLOW
-- Naval bases are a hard bottleneck. Even with unlimited convoys, overseas supply is capped.
-- Upgrading ports matters but does not solve everything.
--------------------------------------------------------------------------------------------------------------

-- Max base supply flow output/input of a naval node via convoy route.
NDefines.NSupply.NAVAL_BASE_FLOW = 3.5                              -- vanilla: 5.0

-- Additional flow per naval base level.
-- A level 5 port gives 13.5 flow (vs vanilla 20). Meaningful but not a solve-all.
NDefines.NSupply.NAVAL_FLOW_PER_LEVEL = 2.0                         -- vanilla: 3.0