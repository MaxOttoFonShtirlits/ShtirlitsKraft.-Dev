-- ===========================================================================
-- COMPREHENSIVE AIR & AA REBALANCE
-- Based on Better Mechanics: Combat with historical fine-tuning
-- ===========================================================================

--------------------------------------------------------------------------------------------------------------
-- AIR COMBAT & CAS
--------------------------------------------------------------------------------------------------------------
-- Базовые характеристики авиакрыльев (увеличены для более динамичного air war)
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.03
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 200
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 950           -- убрали противоречие (было 2000, потом 950)
NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 300

-- Агилити и скорость: расширенный коридор преимущества
NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 5.0
NDefines.NAir.BIGGEST_SPEED_FACTOR_DIFF = 5.0
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.65

-- Опыт от тренировок
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.0075
NDefines.NAir.FIELD_EXPERIENCE_MAX_PER_DAY = 1.75

-- ПВО (стационарная/крыльевая): возвращаем значимость зениткам
NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_CHANCE = 0.06       -- было 0.03 (BM) и 0.1 (ваниль)
NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_FACTOR = 0.5        -- было 0.35 (BM) и 0.8 (ваниль)

-- Дивизионная ПВО против CAS: оставляем компромисс BM
NDefines.NAir.ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR = 0.31

-- Ночные штурмовки: исторично низкая эффективность
NDefines.NAir.CAS_NIGHT_ATTACK_FACTOR = 0.05            -- было 0.25 (BM)

-- CAS в наземном бою: умеренный нерф (через NMilitary, дублируем здесь для чистоты)
NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.04
NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.07
NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 2

--------------------------------------------------------------------------------------------------------------
-- STRATEGIC & LOGISTICS BOMBING
--------------------------------------------------------------------------------------------------------------
-- Стратегические бомбардировки: мощнее, но менее предсказуемы
NDefines.NAir.AIR_WING_BOMB_DAMAGE_FACTOR = 7.5
NDefines.NAir.BOMBING_TARGETING_RANDOM_FACTOR = 0.15

-- Логистические удары: усилены для синергии с ребалансом снабжения
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.35
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.055

-- Удары по кораблям и авиации на земле: снижены, чтобы не было "порт-вайпа"
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.1    -- было 0.2 (BM)
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 0.65
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 50

-- Защита промышленности от бомб: усилена
NDefines.NAir.AA_INDUSTRY_AIR_DAMAGE_FACTOR = -0.08      -- было -0.045 (BM), ваниль -0.12

-- Ночное обнаружение: сильнее снижено
NDefines.NAir.DETECT_CHANCE_FROM_NIGHT = -0.35

-- Военный счёт за стратегические бомбардировки
NDefines.NMilitary.WAR_SCORE_STRATEGIC_BOMBING_FACTOR = 0.1