-- Основные параметры десантирования
NDefines.NMilitary.PARADROP_PENALTY = -0.6               -- Штраф к атаке/защите после выброски (усилен)
NDefines.NMilitary.PARADROP_HOURS = 48                   -- Длительность основного штрафа (увеличена до 2 дней)
NDefines.NMilitary.PARACHUTE_COMPLETE_ORG = 0.15          -- Начальная организация после приземления (снижена)
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_DURATION = 150 -- Длительность штрафа к восстановлению организации (увеличена)
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_MULT = -0.75   -- Сила штрафа к восстановлению организации (усилена)
NDefines.NAI.TRANSPORTS_PER_PARATROOPER = 50              -- Требуемое количество транспортников на 1 батальон (увеличено)
NDefines.NCountry.PARADROP_AIR_SUPERIORITY_RATIO = 0.75  -- Требуемое превосходство в воздухе (увеличено до 75%)

-- Параметры провала и срыва выброски
NDefines.NMilitary.PARACHUTE_FAILED_EQUIPMENT_DIV = 50.0   -- Потеря снаряжения при полном провале
NDefines.NMilitary.PARACHUTE_FAILED_MANPOWER_DIV = 100.0  -- Потеря живой силы при полном провале
NDefines.NMilitary.PARACHUTE_FAILED_STR_DIV = 10.0        -- Потеря прочности при полном провале
NDefines.NMilitary.PARACHUTE_DISRUPTED_EQUIPMENT_DIV = 3.0 -- Потеря снаряжения при срыве (увеличена)
NDefines.NMilitary.PARACHUTE_DISRUPTED_MANPOWER_DIV = 3.0 -- Потеря живой силы при срыве (увеличена)
NDefines.NMilitary.PARACHUTE_DISRUPTED_STR_DIV = 3.0      -- Потеря прочности при срыве (увеличена)
NDefines.NMilitary.PARACHUTE_PENALTY_RANDOMNESS = 0.3     -- Элемент случайности для потерь
NDefines.NMilitary.PARACHUTE_DISRUPTED_AA_PENALTY = 2.5   -- Множитель урона от ПВО (увеличен)