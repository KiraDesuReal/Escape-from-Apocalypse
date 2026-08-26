-- Special for Escape from Apocalypse
-- Author KiraDesu

if EFA_VERSION == nil then
	EFA_VERSION = "0.98 BETA"
	EFA_BUILD = "260218"
	WIPE = 1
	DEL_SAVES = 1

	LOG("ESCAPE FROM APOCALYPSE VERSION: "..EFA_VERSION.." | BUILD: "..EFA_BUILD)
end

if R4M1_exit == nil then R4M1_exit = 0 end
if R0M1_exit == nil then R0M1_exit = 0 end

if STARTGAME == nil then STARTGAME = 0 end
if LOAD_MAP == nil then LOAD_MAP = 0 end

-- Счетчик количества рейдов 
if COUNT_RAIDS == nil then COUNT_RAIDS = 0 end

-- Ящик диких
if CHESTSCAVS_TIMER_HOUR_GLOBAL == nil then CHESTSCAVS_TIMER_HOUR_GLOBAL = 0 end
if CHESTSCAVS_TIMER_MINUTE_GLOBAL == nil then CHESTSCAVS_TIMER_MINUTE_GLOBAL = 0 end
if CHESTSCAVS_TIMER_SECOND_GLOBAL == nil then CHESTSCAVS_TIMER_SECOND_GLOBAL = 0 end
if CHESTSCAVS_SEARCH_GLOBAL == nil then CHESTSCAVS_SEARCH_GLOBAL = 0 end

-- Генератор
if GENERATOR_TIMER_HOUR_GLOBAL == nil then GENERATOR_TIMER_HOUR_GLOBAL = 0 end
if GENERATOR_TIMER_MINUTE_GLOBAL == nil then GENERATOR_TIMER_MINUTE_GLOBAL = 0 end
if GENERATOR_TIMER_SECOND_GLOBAL == nil then GENERATOR_TIMER_SECOND_GLOBAL = 0 end
if GENERATOR_LVL_GLOBAL == nil then GENERATOR_LVL_GLOBAL = 0 end
if GENERATOR_ON_GLOBAL == nil then GENERATOR_ON_GLOBAL = 0 end

-- Гараж
if GARAGE_CRAFTING_TIME_HOUR_GLOBAL == nil then GARAGE_CRAFTING_TIME_HOUR_GLOBAL = 0 end
if GARAGE_CRAFTING_TIME_MINUTE_GLOBAL == nil then GARAGE_CRAFTING_TIME_MINUTE_GLOBAL = 0 end
if GARAGE_CRAFTING_TIME_SECOND_GLOBAL == nil then GARAGE_CRAFTING_TIME_SECOND_GLOBAL = 0 end
if GARAGE_CRAFT_GLOBAL == nil then GARAGE_CRAFT_GLOBAL = 0 end
if GARAGE_CRAFT_PAUSE_GLOBAL == nil then GARAGE_CRAFT_PAUSE_GLOBAL = 0 end

-- Белонг игрока
if PLAYER_BELONG_GLOBAL == nil then PLAYER_BELONG_GLOBAL = "BEAR" end

-- Таймер машины диких
if SCAV_CAR_TIME_HOUR == nil then SCAV_CAR_TIME_HOUR = 0 end
if SCAV_CAR_TIME_MINUTE == nil then SCAV_CAR_TIME_MINUTE = 0 end
if SCAV_CAR_TIME_SECOND == nil then SCAV_CAR_TIME_SECOND = 0 end

-- Карма диких
if SCAV_CARMA_GLOBAL == nil then SCAV_CARMA_GLOBAL = "0.00" end

-- Ветрогенератор
if WINDGENERATOR_TIME_HOUR_GLOBAL == nil then WINDGENERATOR_TIME_HOUR_GLOBAL = 0 end
if WINDGENERATOR_TIME_MINUTE_GLOBAL == nil then WINDGENERATOR_TIME_MINUTE_GLOBAL = 0 end
if WINDGENERATOR_TIME_SECOND_GLOBAL == nil then WINDGENERATOR_TIME_SECOND_GLOBAL = 0 end
if WINDGENERATOR_STATUS_GLOBAL == nil then WINDGENERATOR_STATUS_GLOBAL = 0 end

-- Дебаг
if DEBUG == nil then DEBUG = 0 end

-- Спавн дефолтных машин у босса Витали
if FIX_CRASH_VITALY_GLOBAL == nil then FIX_CRASH_VITALY_GLOBAL = 0 end

-- Отслеживание количества брони кабины при попаданиях
if UNDER_ATTACK_DURABILITY == nil then UNDER_ATTACK_DURABILITY = 0 end

-- Квестовые глобал переменные
if Q_TESTING_MISSION_DIESCAVS == nil then Q_TESTING_MISSION_DIESCAVS = 0 end

if Q_CLEARING_R1M1_DIESCAVS_LOC_1 == nil then Q_CLEARING_R1M1_DIESCAVS_LOC_1 = 0 end
if Q_CLEARING_R1M1_DIESCAVS_LOC_2 == nil then Q_CLEARING_R1M1_DIESCAVS_LOC_2 = 0 end
if Q_CLEARING_R1M1_DIESCAVS_LOC_3 == nil then Q_CLEARING_R1M1_DIESCAVS_LOC_3 = 0 end
if Q_CLEARING_R1M1_DIESCAVS_LOC_4 == nil then Q_CLEARING_R1M1_DIESCAVS_LOC_4 = 0 end
if Q_CLEARING_R1M1_DIESCAVS_LOC_5 == nil then Q_CLEARING_R1M1_DIESCAVS_LOC_5 = 0 end

if Q_KILL_SCAVS_DIE == nil then Q_KILL_SCAVS_DIE = 0 end

if Q_TEST_DRIVE1_KILLSCAVS == nil then Q_TEST_DRIVE1_KILLSCAVS = 0 end
if Q_TEST_DRIVE2_KILLSCAVS == nil then Q_TEST_DRIVE2_KILLSCAVS = 0 end
if Q_TEST_DRIVE2_KILLPMC == nil then Q_TEST_DRIVE2_KILLPMC = 0 end
if Q_TEST_DRIVE3_KILLSCAVS == nil then Q_TEST_DRIVE3_KILLSCAVS = 0 end
if Q_TEST_DRIVE3_KILLPMC == nil then Q_TEST_DRIVE3_KILLPMC = 0 end
if Q_TEST_DRIVE4_KILLSCAVS == nil then Q_TEST_DRIVE4_KILLSCAVS = 0 end
if Q_TEST_DRIVE4_KILLPMC == nil then Q_TEST_DRIVE4_KILLPMC = 0 end
if Q_TEST_DRIVE5_KILLSCAVS == nil then Q_TEST_DRIVE5_KILLSCAVS = 0 end
if Q_TEST_DRIVE5_KILLPMC == nil then Q_TEST_DRIVE5_KILLPMC = 0 end
if Q_TEST_DRIVE6_KILLSCAVS == nil then Q_TEST_DRIVE6_KILLSCAVS = 0 end
if Q_TEST_DRIVE6_KILLPMC == nil then Q_TEST_DRIVE6_KILLPMC = 0 end
if Q_TEST_DRIVE7_KILLSCAVS == nil then Q_TEST_DRIVE7_KILLSCAVS = 0 end
if Q_TEST_DRIVE7_KILLPMC == nil then Q_TEST_DRIVE7_KILLPMC = 0 end
if Q_TEST_DRIVE8_KILLSCAVS == nil then Q_TEST_DRIVE8_KILLSCAVS = 0 end
if Q_TEST_DRIVE8_KILLPMC == nil then Q_TEST_DRIVE8_KILLPMC = 0 end
if Q_TEST_DRIVE9_KILLSCAVS == nil then Q_TEST_DRIVE9_KILLSCAVS = 0 end
if Q_TEST_DRIVE9_KILLPMC == nil then Q_TEST_DRIVE9_KILLPMC = 0 end
if Q_TEST_DRIVE10_KILLSCAVS == nil then Q_TEST_DRIVE10_KILLSCAVS = 0 end
if Q_TEST_DRIVE10_KILLPMC == nil then Q_TEST_DRIVE10_KILLPMC = 0 end
if Q_TEST_DRIVE11_KILLSCAVS == nil then Q_TEST_DRIVE11_KILLSCAVS = 0 end
if Q_TEST_DRIVE11_KILLPMC == nil then Q_TEST_DRIVE11_KILLPMC = 0 end
if Q_TEST_DRIVE12_KILLSCAVS == nil then Q_TEST_DRIVE12_KILLSCAVS = 0 end
if Q_TEST_DRIVE12_KILLPMC == nil then Q_TEST_DRIVE12_KILLPMC = 0 end
if Q_TEST_DRIVE13_KILLSCAVS == nil then Q_TEST_DRIVE13_KILLSCAVS = 0 end
if Q_TEST_DRIVE13_KILLPMC == nil then Q_TEST_DRIVE13_KILLPMC = 0 end
if Q_TEST_DRIVE14_KILLSCAVS == nil then Q_TEST_DRIVE14_KILLSCAVS = 0 end
if Q_TEST_DRIVE14_KILLPMC == nil then Q_TEST_DRIVE14_KILLPMC = 0 end
if Q_TEST_DRIVE15_KILLSCAVS == nil then Q_TEST_DRIVE15_KILLSCAVS = 0 end
if Q_TEST_DRIVE15_KILLPMC == nil then Q_TEST_DRIVE15_KILLPMC = 0 end

if Q_TEST_DRIVE4_RAID_COUNT == nil then Q_TEST_DRIVE4_RAID_COUNT = 0 end
if Q_TEST_DRIVE5_RAID_COUNT == nil then Q_TEST_DRIVE5_RAID_COUNT = 0 end

if Q_NATURALIST1_KILLSCAVS == nil then Q_NATURALIST1_KILLSCAVS = 0 end
if Q_NATURALIST1_KILLPMC == nil then Q_NATURALIST1_KILLPMC = 0 end
if Q_NATURALIST2_KILLSCAVS == nil then Q_NATURALIST2_KILLSCAVS = 0 end
if Q_NATURALIST2_KILLPMC == nil then Q_NATURALIST2_KILLPMC = 0 end
if Q_NATURALIST3_KILLSCAVS == nil then Q_NATURALIST3_KILLSCAVS = 0 end
if Q_NATURALIST3_KILLPMC == nil then Q_NATURALIST3_KILLPMC = 0 end
if Q_NATURALIST4_KILLSCAVS == nil then Q_NATURALIST4_KILLSCAVS = 0 end
if Q_NATURALIST4_KILLPMC == nil then Q_NATURALIST4_KILLPMC = 0 end
if Q_NATURALIST5_KILLSCAVS == nil then Q_NATURALIST5_KILLSCAVS = 0 end
if Q_NATURALIST5_KILLPMC == nil then Q_NATURALIST5_KILLPMC = 0 end

if Q_NATURALIST5_RAID_COUNT == nil then Q_NATURALIST5_RAID_COUNT = 0 end

if Q_BELAZIST1_KILLSCAVS == nil then Q_BELAZIST1_KILLSCAVS = 0 end
if Q_BELAZIST1_KILLPMC == nil then Q_BELAZIST1_KILLPMC = 0 end
if Q_BELAZIST2_KILLSCAVS == nil then Q_BELAZIST2_KILLSCAVS = 0 end
if Q_BELAZIST2_KILLPMC == nil then Q_BELAZIST2_KILLPMC = 0 end
if Q_BELAZIST3_KILLSCAVS == nil then Q_BELAZIST3_KILLSCAVS = 0 end
if Q_BELAZIST3_KILLPMC == nil then Q_BELAZIST3_KILLPMC = 0 end
if Q_BELAZIST4_KILLSCAVS == nil then Q_BELAZIST4_KILLSCAVS = 0 end
if Q_BELAZIST4_KILLPMC == nil then Q_BELAZIST4_KILLPMC = 0 end
if Q_BELAZIST5_KILLSCAVS == nil then Q_BELAZIST5_KILLSCAVS = 0 end
if Q_BELAZIST5_KILLPMC == nil then Q_BELAZIST5_KILLPMC = 0 end
if Q_BELAZIST6_KILLSCAVS == nil then Q_BELAZIST6_KILLSCAVS = 0 end
if Q_BELAZIST6_KILLPMC == nil then Q_BELAZIST6_KILLPMC = 0 end
if Q_BELAZIST7_KILLSCAVS == nil then Q_BELAZIST7_KILLSCAVS = 0 end
if Q_BELAZIST7_KILLPMC == nil then Q_BELAZIST7_KILLPMC = 0 end
if Q_BELAZIST8_KILLSCAVS == nil then Q_BELAZIST8_KILLSCAVS = 0 end
if Q_BELAZIST8_KILLPMC == nil then Q_BELAZIST8_KILLPMC = 0 end

if Q_KILL_USEC_KILLS == nil then Q_KILL_USEC_KILLS = 0 end
if Q_KILL_PMC_KILLS == nil then Q_KILL_PMC_KILLS = 0 end

if Q_SECTARIAN2_1_KILLS == nil then Q_SECTARIAN2_1_KILLS = 0 end

if DAILY_UPDATED_GLOBAL == nil then DAILY_UPDATED_GLOBAL = "0" end

if Q_DAILY_KILL_PMC_KILLS == nil then Q_DAILY_KILL_PMC_KILLS = 0 end
if Q_DAILY_KILL_PMC_PROGRESS == nil then Q_DAILY_KILL_PMC_PROGRESS = 0 end
if Q_DAILY_KILL_PMC_STATUS == nil then Q_DAILY_KILL_PMC_STATUS = "0" end
if Q_DAILY_KILL_PMC_TRAIDER == nil then Q_DAILY_KILL_PMC_TRAIDER = "0" end

if Q_DAILY_KILL_SCAV_KILLS == nil then Q_DAILY_KILL_SCAV_KILLS = 0 end
if Q_DAILY_KILL_SCAV_PROGRESS == nil then Q_DAILY_KILL_SCAV_PROGRESS = 0 end
if Q_DAILY_KILL_SCAV_STATUS == nil then Q_DAILY_KILL_SCAV_STATUS = "0" end
if Q_DAILY_KILL_SCAV_TRAIDER == nil then Q_DAILY_KILL_SCAV_TRAIDER = "0" end

if Q_DAILY_EXTRACT_LOC == nil then Q_DAILY_EXTRACT_LOC = "0" end
if Q_DAILY_EXTRACT_COUNT == nil then Q_DAILY_EXTRACT_COUNT = 0 end
if Q_DAILY_EXTRACT_STATUS == nil then Q_DAILY_EXTRACT_STATUS = "0" end
if Q_DAILY_EXTRACT_PROGRESS == nil then Q_DAILY_EXTRACT_PROGRESS = 0 end
if Q_DAILY_EXTRACT_TRAIDER == nil then Q_DAILY_EXTRACT_TRAIDER = "0" end

-- Предметы
if ITEM_KEY_GATE_THETOWN_USED == nil then ITEM_KEY_GATE_THETOWN_USED = 0 end
if ITEM_KEY_GATE_BUNKER014_USED == nil then ITEM_KEY_GATE_BUNKER014_USED = 0 end

-- Рандомизируем пушки ботам 
function GiveGunsForVehicle(vehicle, side_random)
	local veh=vehicle
	local belong = veh:GetBelong()
	local hornet
	if belong == 1089 then
		hornet = "american_hornet01"
	else
		hornet = "hornet01"
	end
	local parts={"CABIN_","BASKET_","CHASSIS_"}
	local slots={"SMALL_","BIG_","GIANT_","SIDE_"}
	local guns={"GUN","GUN_0","GUN_1","GUN_2"}
	local smallgun={hornet,"specter01","pkt01","kord01","maxim01","storm01","fagot01"}
	local biggun={"rapier01","vector01","vulcan01","flag01","kpvt01","rainmetal01","elephant01","odin01","bumblebee01","omega01","hurricane01"}
	local giantgun={"cyclops01","octopus01","rocketLauncher","big_swingfire01"}
	local sidegun={"marsSideGun","hunterSideGun","mrakSideGun"}
	local side_rand = 1
	if side_random == 1 then
		side_rand = random(4)
	end
	local i,j,k=1,1,1
	while parts[i] do
		while slots[j] do
			while guns[k] do
				local gun=1
				local slot=parts[i]..slots[j]..guns[k]
				if j==1 then
					gun=smallgun[random(7)]
				elseif j==2 then
					gun=biggun[random(11)]
				elseif j==3 then
					gun=giantgun[exrandom(4)]
				elseif j==4 then
					if side_rand == 1 then		
						gun=sidegun[random(3)]
					else
						gun=""
					end
				end
				if veh:CanPartBeAttached(slot) then
					veh:SetNewPart(slot,gun)
				end
				k=k+1
			end
			k=1
			j=j+1
		end
		j=1
		i=i+1
	end
end

function GiveGunsForPMC(vehicle)
	local veh=vehicle
	local belong = veh:GetBelong()
	local hornet

	if belong == 1089 then
		hornet = "american_hornet01"
	else
		hornet = "hornet01"
	end

	local parts={"CABIN_","BASKET_","CHASSIS_"}
	local slots={"SMALL_","BIG_","GIANT_","SIDE_"}
	local guns={"GUN","GUN_0","GUN_1","GUN_2"}

	local smallgun={hornet,"specter01","pkt01","kord01","storm01"}
	local biggun={"rapier01","vector01","vulcan01","kpvt01","elephant01","odin01","bumblebee01","omega01"}
	local giantgun={"cyclops01","octopus01"}
	local sidegun={"hunterSideGun","mrakSideGun"}
	local side_random = 0

	local player = GetVar("PlayerCar").AsString
	if player == "Molokovoz" then
		side_random = 0
		table.insert(biggun, "rainmetal01")
	elseif player == "Ural" or player == "Belaz" or player == "Mirotvorec" or player == "Cruiser" then
		table.insert(biggun, "flag01")
		table.insert(biggun, "rainmetal01")
		if random(3) == 1 then table.insert(biggun, "hurricane01") end
		if random(3) == 1 then table.insert(giantgun, "rocketLauncher") end
		if random(3) == 1 then table.insert(giantgun, "big_swingfire01") end
		table.insert(giantgun, "hammer01")
		side_random = random(4) 
	end

	if random(3) == 1 then table.insert(smallgun, "maxim01") end
	if random(4) == 1 then table.insert(smallgun, "fagot01") end

	local i,j,k=1,1,1
	while parts[i] do
		while slots[j] do
			while guns[k] do
				local gun=1
				local slot=parts[i]..slots[j]..guns[k]
				if j==1 then
					gun=smallgun[random(getn(smallgun))]
				elseif j==2 then
					gun=biggun[random(getn(biggun))]
				elseif j==3 then
					gun=giantgun[exrandom(getn(giantgun))]
				elseif j==4 then
					if side_random == 1 then		
						gun=sidegun[random(2)]
					else
						gun=""
					end
				end
				if veh:CanPartBeAttached(slot) then
					if gun ~= "" then
						AddGunToSlotWithRandomAffix(slot, gun, veh, random(0,2))
					end
				end
				k=k+1
			end
			k=1
			j=j+1
		end
		j=1
		i=i+1
	end
end

function GunsForEnemy(enemy, smallguns, bigguns, giantgun, sidegun)
	local veh=enemy
	local parts={"CABIN_","BASKET_","CHASSIS_"}
	local slots={"SMALL_","BIG_","GIANT_","SIDE_"}
	local guns={"GUN","GUN_0","GUN_1","GUN_2"}
	local i,j,k=1,1,1
	while parts[i] do
		while slots[j] do
			while guns[k] do
				local gun=1
				local slot=parts[i]..slots[j]..guns[k]
				if j==1 then
					gun=smallguns
				elseif j==2 then
					gun=bigguns
				elseif j==3 then
					gun=giantgun
				elseif j==4 then
					gun=sidegun
				end
	
				if veh:CanPartBeAttached(slot) then		
					veh:SetNewPart(slot,gun)
				end
				k=k+1
			end
			k=1
			j=j+1
		end
		j=1
		i=i+1
	end
end

-- Использование предметов 
function ItemUse(heal_used, ammo_used)
	HealItems(heal_used)
	AddKeysQuestItem()
	UseAmmoItems(ammo_used)
end

function HealItems(heal_used)
	local HealItems = {"scrap_metal_use", "machinery_use", "electronics_use"}
	local FuelItems = {"oil_use", "fuel_full_use"}
	local HealItemsToPlayer, FuelItemsToPlayer = {}, {}
	local heal, fuel = 0, 0

	for h = 1, 3 do
		if HasPlayerAmountOfItems(HealItems[h], 1) or HasPlayerAmountOfItems(HealItems[h].."_insured", 1) then
			heal = heal + 1
			HealItemsToPlayer[heal] = HealItems[h]
		end
	end

	for f = 1, 2 do
		if HasPlayerAmountOfItems(FuelItems[f], 1) or HasPlayerAmountOfItems(FuelItems[f].."_insured", 1) then
			fuel = fuel + 1
			FuelItemsToPlayer[fuel] = FuelItems[f]
		end
	end

	if HealItemsToPlayer[1] then
		UseRestoreItem(HealItemsToPlayer[1], heal_used)
	end

	if FuelItemsToPlayer[1] then
		UseRestoreItem(FuelItemsToPlayer[1], heal_used)
	end
end

function UseRestoreItem(item, heal_used)
	local vehP = GetPlayerVehicle()
	local PlfCoor = vehP:GetPosition()
	local healthcar = math.floor(GetPlayerHealth() + 0.5)
	local healthmax = GetPlayerMaxHealth()
	local fuelcar = math.floor(GetPlayerFuel() + 0.5)
	local fuelmax = GetPlayerMaxFuel()

	local cabin = vehP:GetCabin()
	local basket = vehP:GetBasket()

	local durabilityCabMax = cabin:GetPropertyById(20).AsInt
	local durabilityBasMax = basket:GetPropertyById(20).AsInt
	local durabilityCab = cabin:GetPropertyById(19).AsInt
	local durabilityBas = basket:GetPropertyById(19).AsInt

	local procent_item, procent_item_d, procent_fuel_item = 0, 0, 0
	
	local procent, procent_d_cab, procent_d_bas = 0, 0, 0 
	local hp_pr, d_pr_cab, d_pr_bas = 0, 0, 0

	local fm, fx = 0, 0

	if heal_used == nil then heal_used = 0 end

	if item == "scrap_metal_use" then
		procent_item = 10
		procent_item_d = 30
		fm = "fm_use_scrap_metal"
		fx = "ET_PS_USE_ARM"
	elseif item == "machinery_use" then
		procent_item = 25
		procent_item_d = 20
		fm = "fm_use_machinery"
		fx = "ET_PS_USE_LIFE"
	elseif item == "electronics_use" then
		procent_item = 40
		procent_item_d = 10
		fm = "fm_use_electronics"
		fx = "ET_PS_USE_LIFE"
	elseif item == "oil_use" then
		procent_fuel_item = 15
		fm = "fm_use_oil"
	elseif item == "fuel_full_use" then
		procent_fuel_item = 30
		fm = "fm_use_fuel_full"
	end

	if item == "scrap_metal_use" or item == "machinery_use" or item == "electronics_use" then
		procent = healthmax / 100 * procent_item
		hp_pr = healthmax - procent
		if vehP then 
			if hp_pr >= healthcar then
				procent_d_cab = durabilityCabMax / 100 * procent_item_d
				procent_d_bas = durabilityBasMax / 100 * procent_item_d

				d_pr_cab = durabilityCab + procent_d_cab
				d_pr_bas = durabilityBas + procent_d_bas

				if d_pr_cab >= durabilityCabMax then 
					d_pr_cab = durabilityCabMax 
				end

				if d_pr_bas >= durabilityBasMax then 
					d_pr_bas = durabilityBasMax 
				end

				if cabin then cabin:SetProperty("durability", d_pr_cab) end 
				if basket then basket:SetProperty("durability", d_pr_bas) end

				vehP:AddModifier("hp", "+ "..procent ) 
				CreateEffectTTLed(fx, PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted(fm, procent, healthcar + procent, procent_d_cab + procent_d_bas, d_pr_cab + d_pr_bas)
				if HasPlayerAmountOfItems(item, 1) then 
					RemoveItemsFromPlayerRepository(item, 1)
				elseif HasPlayerAmountOfItems(item.."_insured", 1) then
					DeleteTableInsuredItems(item)
					RemoveItemsFromPlayerRepository(item.."_insured", 1)
					if heal_used == 1 then SetVar("Use_"..item.."_Insured", GetVar("Use_"..item.."_Insured").AsInt+1) end
				end
			end
		end
	else
		procent = fuelmax / 100 * procent_fuel_item
		hp_pr = fuelmax / 100 * 5
		if vehP then 
			if hp_pr >= fuelcar then
				vehP:AddModifier("fuel", "+ "..procent ) 
				CreateEffectTTLed("ET_PS_USE_OIL", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted(fm, procent, fuelcar + procent)
				if HasPlayerAmountOfItems(item, 1) then 
					RemoveItemsFromPlayerRepository(item, 1)
				elseif HasPlayerAmountOfItems(item.."_insured", 1) then
					DeleteTableInsuredItems(item)
					RemoveItemsFromPlayerRepository(item.."_insured", 1)
					if heal_used == 1 then SetVar("Use_"..item.."_Insured", GetVar("Use_"..item.."_Insured").AsInt+1) end
				end
				if item == "fuel_full_use" then AddItemsToPlayerRepository("fuel_nil_use") end
			end
		end
	end
end

function AddKeysQuestItem()
	local keys = {"item_key_gate_thetown", "item_key_gate_bunker014"}
	local used = {10, 3}

	for i = 1, 2 do
		if IsHasPlayerAmountOfSpecItems(keys[i]) and not(IsQuestItemPresent("quest_"..keys[i])) then
			AddQuestItem("quest_"..keys[i])
			AddFadingMsgByStrIdFormatted("fm_item_to_quest_items", keys[i])
			RemoveSpecItemsFromSlot(keys[i])
			SetVar(keys[i].."_used", used[i])
			SoundFadingMsg()
		end
	end

	if HasPlayerAmountOfItems("item_chizuru", 1) then
		if GetPlayerMoney() > 0 then
			g_Player:AddMoney(- GetItemsAmount("item_chizuru"))
		else
			RemoveItemsFromPlayerRepository("item_chizuru", 1)
		end
	end
end

function UseAmmoItems(ammo_used)
	if ammo_used == nil then ammo_used = 0 end

	local small_slot = {"CABIN_SMALL_GUN", "CABIN_SMALL_GUN_1", "BASKET_SMALL_GUN_0"}
	for sml=1,3 do
		local small_gun = GetPlayerVehicle():GetPartByName(small_slot[sml])
		if small_gun then 
			local prot = small_gun:GetProperty("Prototype").AsString
			local poolshells = small_gun:GetShellsInPool()
			local currentshells = small_gun:GetShellsInCurrentCharge()
			local dur = small_gun:GetProperty("Durability").AsInt
			if poolshells == 0 and currentshells == 0 and dur ~= 0 then
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) or HasPlayerAmountOfItems("ammo_chest_machinegun_insured", 1) then
					if prot == "hornet01" or prot == "hornet01_insured" or  prot == "american_hornet01" or prot == "american_hornet01_insured" or  prot == "specter01" or prot == "specter01_insured" or prot == "pkt01" or prot == "pkt01_insured" or prot == "kord01" or prot == "kord01_insured" then
						if prot == "hornet01" or prot == "hornet01_insured" then small_gun:SetShellsInPool(350) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "hornet01") end
						if prot == "american_hornet01" or prot == "american_hornet01_insured" then small_gun:SetShellsInPool(420) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "american_hornet01") end
						if prot == "specter01" or prot == "specter01_insured" then small_gun:SetShellsInPool(350) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "specter01") end
						if prot == "pkt01" or prot == "pkt01_insured" then small_gun:SetShellsInPool(480) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "pkt01") end
						if prot == "kord01" or prot == "kord01_insured" then small_gun:SetShellsInPool(380) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "kord01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_machinegun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_machinegun")
							RemoveItemsFromPlayerRepository("ammo_chest_machinegun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun_Insured", GetVar("Use_AmmoChestMachineGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) or HasPlayerAmountOfItems("ammo_chest_shotgun_insured", 1) then
					if prot == "storm01" or prot == "storm01_insured" then
						if prot == "storm01" or prot == "storm01_insured" then small_gun:SetShellsInPool(30) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "storm01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_SHOTGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1200)
						if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_shotgun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestShotGun", GetVar("Use_AmmoChestShotGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_shotgun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_shotgun")
							RemoveItemsFromPlayerRepository("ammo_chest_shotgun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestShotGun_Insured", GetVar("Use_AmmoChestShotGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_lasergun", 1) or HasPlayerAmountOfItems("ammo_ballon_lasergun_insured", 1) then
					if prot == "maxim01" or prot == "maxim01_insured" then
						if prot == "maxim01" or prot == "maxim01_insured" then small_gun:SetShellsInPool(105) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "maxim01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if HasPlayerAmountOfItems("ammo_ballon_lasergun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_ballon_lasergun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonLaserGun", GetVar("Use_AmmoBallonLaserGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_ballon_lasergun_insured", 1) then
							DeleteTableInsuredItems("ammo_ballon_lasergun")
							RemoveItemsFromPlayerRepository("ammo_ballon_lasergun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonLaserGun_Insured", GetVar("Use_AmmoBallonLaserGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) or HasPlayerAmountOfItems("ammo_ballon_plasmagun_insured", 1) then
					if prot == "fagot01" or prot == "fagot01_insured" then
						if prot == "fagot01" or prot == "fagot01_insured" then small_gun:SetShellsInPool(15) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "fagot01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun", GetVar("Use_AmmoBallonPlasmaGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_ballon_plasmagun_insured", 1) then
							DeleteTableInsuredItems("ammo_ballon_plasmagun")
							RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun_Insured", GetVar("Use_AmmoBallonPlasmaGun_Insured").AsInt+1) end
						end
					end
				end
			end
		end
	end

	local big_slot = {"CABIN_BIG_GUN_1", "CABIN_BIG_GUN_2", "BASKET_BIG_GUN_0", "BASKET_BIG_GUN_1"}
	for big=1,4 do
		local big_gun = GetPlayerVehicle():GetPartByName(big_slot[big])
		if big_gun then 
			local prot = big_gun:GetProperty("Prototype").AsString
			local poolshells = big_gun:GetShellsInPool()
			local currentshells = big_gun:GetShellsInCurrentCharge()
			local dur = big_gun:GetProperty("Durability").AsInt
			if poolshells == 0 and currentshells == 0 and dur ~= 0 then
				if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) or HasPlayerAmountOfItems("ammo_chest_heavygun_insured", 1) then
					if prot == "rapier01" or prot == "rapier01_insured" or prot == "rainmetal01" or prot == "rainmetal01_insured" then
						if prot == "rapier01" or prot == "rapier01_insured" then big_gun:SetShellsInPool(55) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "rapier01") end
						if prot == "rainmetal01" or prot == "rainmetal01_insured" then big_gun:SetShellsInPool(320) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "rainmetal01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_HEAVYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 2500)
						if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_heavygun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun", GetVar("Use_AmmoChestHeavyGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_heavygun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_heavygun")
							RemoveItemsFromPlayerRepository("ammo_chest_heavygun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun_Insured", GetVar("Use_AmmoChestHeavyGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) or HasPlayerAmountOfItems("ammo_chest_machinegun_insured", 1) then
					if prot == "vector01" or prot == "vector01_insured" or prot == "vulcan01" or prot == "vulcan01_insured" or prot == "kpvt01" or prot == "kpvt01_insured" then
						if prot == "vector01" or prot == "vector01_insured" then big_gun:SetShellsInPool(405) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "vector01") end
						if prot == "vulcan01" or prot == "vulcan01_insured" then big_gun:SetShellsInPool(1050) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "vulcan01") end
						if prot == "kpvt01" or prot == "kpvt01_insured" then big_gun:SetShellsInPool(780) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "kpvt01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_machinegun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_machinegun")
							RemoveItemsFromPlayerRepository("ammo_chest_machinegun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun_Insured", GetVar("Use_AmmoChestMachineGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) or HasPlayerAmountOfItems("ammo_chest_shotgun_insured", 1) then
					if prot == "flag01" or prot == "flag01_insured" then
						if prot == "flag01" or prot == "flag01_insured" then big_gun:SetShellsInPool(36) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "flag01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_SHOTGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1200)
						if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_shotgun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestShotGun", GetVar("Use_AmmoChestShotGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_shotgun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_shotgun")
							RemoveItemsFromPlayerRepository("ammo_chest_shotgun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestShotGun_Insured", GetVar("Use_AmmoChestShotGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) or HasPlayerAmountOfItems("ammo_chest_artillerygun_insured", 1) then
					if prot == "bumblebee01" or prot == "bumblebee01_insured" or prot == "omega01" or prot == "omega01_insured" then
						if prot == "bumblebee01" or prot == "bumblebee01_insured" then big_gun:SetShellsInPool(118) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "bumblebee01") end
						if prot == "omega01" or prot == "omega01_insured" then big_gun:SetShellsInPool(54) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "omega01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_ARTILLERYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1055)
						if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_artillerygun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun", GetVar("Use_AmmoChestArtilleryGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_artillerygun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_artillerygun")
							RemoveItemsFromPlayerRepository("ammo_chest_artillerygun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun_Insured", GetVar("Use_AmmoChestArtilleryGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) or HasPlayerAmountOfItems("ammo_chest_rocketgun_insured", 1) then
					if prot == "hurricane01" or prot == "hurricane01_insured" then
						if prot == "hurricane01" or prot == "hurricane01_insured" then big_gun:SetShellsInPool(24) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "hurricane01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
						if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_rocketgun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_rocketgun")
							RemoveItemsFromPlayerRepository("ammo_chest_rocketgun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun_Insured", GetVar("Use_AmmoChestRocketGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_lasergun", 1) or HasPlayerAmountOfItems("ammo_ballon_lasergun_insured", 1) then
					if prot == "odin01" or prot == "odin01_insured" then
						if prot == "odin01" or prot == "odin01_insured" then big_gun:SetShellsInPool(120) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "odin01") end
						RemoveItemsFromPlayerRepository("ammo_ballon_lasergun", 1)
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if HasPlayerAmountOfItems("ammo_ballon_lasergun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_ballon_lasergun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonLaserGun", GetVar("Use_AmmoBallonLaserGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_ballon_lasergun_insured", 1) then
							DeleteTableInsuredItems("ammo_ballon_lasergun")
							RemoveItemsFromPlayerRepository("ammo_ballon_lasergun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonLaserGun_Insured", GetVar("Use_AmmoBallonLaserGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) or HasPlayerAmountOfItems("ammo_ballon_plasmagun_insured", 1) then
					if prot == "elephant01" or prot == "elephant01_insured" then
						if prot == "elephant01" or prot == "elephant01_insured" then big_gun:SetShellsInPool(19) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "elephant01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun", GetVar("Use_AmmoBallonPlasmaGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_ballon_plasmagun_insured", 1) then
							DeleteTableInsuredItems("ammo_ballon_plasmagun")
							RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun_Insured", GetVar("Use_AmmoBallonPlasmaGun_Insured").AsInt+1) end
						end
					end
				end
			end
		end
	end

	local giant_slot = {"CABIN_GIANT_GUN", "BASKET_GIANT_GUN", "BASKET_GIANT_GUN_0"}
	for gnt=1,3 do
		local giant_gun = GetPlayerVehicle():GetPartByName(giant_slot[gnt])
		if giant_gun then 
			local prot = giant_gun:GetProperty("Prototype").AsString
			local poolshells = giant_gun:GetShellsInPool()
			local currentshells = giant_gun:GetShellsInCurrentCharge()
			local dur = giant_gun:GetProperty("Durability").AsInt
			if poolshells == 0 and currentshells == 0 and dur ~= 0 then
				if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) or HasPlayerAmountOfItems("ammo_chest_heavygun_insured", 1) then
					if prot == "cyclops01" or prot == "cyclops01_insured" then
						if prot == "cyclops01" or prot == "cyclops01_insured" then giant_gun:SetShellsInPool(56) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "cyclops01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_HEAVYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 2500)
						if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_heavygun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun", GetVar("Use_AmmoChestHeavyGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_heavygun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_heavygun")
							RemoveItemsFromPlayerRepository("ammo_chest_heavygun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun_Insured", GetVar("Use_AmmoChestHeavyGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) or HasPlayerAmountOfItems("ammo_chest_machinegun_insured", 1) then
					if prot == "octopus01" or prot == "octopus01_insured" then
						if prot == "octopus01" or prot == "octopus01_insured" then giant_gun:SetShellsInPool(480) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "octopus01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_machinegun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_machinegun")
							RemoveItemsFromPlayerRepository("ammo_chest_machinegun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun_Insured", GetVar("Use_AmmoChestMachineGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) or HasPlayerAmountOfItems("ammo_chest_rocketgun_insured", 1) then
					if prot == "rocketLauncher" or prot == "rocketLauncher_insured" or prot == "big_swingfire01" or prot == "big_swingfire01_insured" then
						if prot == "rocketLauncher" or prot == "rocketLauncher_insured" then giant_gun:SetShellsInPool(24) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "rocketLauncher") end
						if prot == "big_swingfire01" or prot == "big_swingfire01_insured" then giant_gun:SetShellsInPool(24) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "big_swingfire01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
						if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_chest_rocketgun_insured", 1) then
							DeleteTableInsuredItems("ammo_chest_rocketgun")
							RemoveItemsFromPlayerRepository("ammo_chest_rocketgun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun_Insured", GetVar("Use_AmmoChestRocketGun_Insured").AsInt+1) end
						end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) or HasPlayerAmountOfItems("ammo_ballon_plasmagun_insured", 1) then
					if prot == "hammer01" or prot == "hammer01_insured" then
						if prot == "hammer01" or prot == "hammer01_insured" then giant_gun:SetShellsInPool(15) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "hammer01") end
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) then 
							RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun", GetVar("Use_AmmoBallonPlasmaGun").AsInt+1) end
						elseif HasPlayerAmountOfItems("ammo_ballon_plasmagun_insured", 1) then
							DeleteTableInsuredItems("ammo_ballon_plasmagun")
							RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun_insured", 1)
							if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun_Insured", GetVar("Use_AmmoBallonPlasmaGun_Insured").AsInt+1) end
						end
					end
				end
			end
		end
	end

	local basket_side_0 = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_0")
	local basket_side_l = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_L")
	local basket_side_r = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_R")
	if basket_side_0 then 
		local prot = basket_side_0:GetProperty("Prototype").AsString
		local poolshells_l = basket_side_l:GetShellsInPool()
		local currentshells_l = basket_side_l:GetShellsInCurrentCharge()
		local poolshells_r = basket_side_r:GetShellsInPool()
		local currentshells_r = basket_side_r:GetShellsInCurrentCharge()
		local dur_l = basket_side_l:GetProperty("Durability").AsInt
		local dur_r = basket_side_r:GetProperty("Durability").AsInt
		if poolshells_l == 0 and currentshells_l == 0 and dur_l ~= 0 or poolshells_r == 0 and currentshells_r == 0 and dur_r ~= 0 then
			if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) or HasPlayerAmountOfItems("ammo_chest_rocketgun_insured", 1) then
				if prot == "hailSideGun" or prot == "hailSideGun_insured" or prot == "hunterSideGun" or prot == "hunterSideGun_insured" or prot == "mrakSideGun" or prot == "mrakSideGun_insured" then
					if prot == "hailSideGun" or prot == "hailSideGun_insured" then basket_side_l:SetShellsInPool(18) basket_side_r:SetShellsInPool(18) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "hailSideGun") end
					if prot == "hunterSideGun" or prot == "hunterSideGun_insured" then basket_side_l:SetShellsInPool(8) basket_side_r:SetShellsInPool(8) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "hunterSideGun") end
					if prot == "mrakSideGun" or prot == "mrakSideGun_insured" then basket_side_l:SetShellsInPool(14) basket_side_r:SetShellsInPool(14) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "mrakSideGun") end
					CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
					if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then 
						RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
						if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
					elseif HasPlayerAmountOfItems("ammo_chest_rocketgun_insured", 1) then
						DeleteTableInsuredItems("ammo_chest_rocketgun")
						RemoveItemsFromPlayerRepository("ammo_chest_rocketgun_insured", 1)
						if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun_Insured", GetVar("Use_AmmoChestRocketGun_Insured").AsInt+1) end
					end
				end
			end
			if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) or HasPlayerAmountOfItems("ammo_chest_artillerygun_insured", 1) then
				if prot == "marsSideGun" or prot == "marsSideGun_insured" then
					if prot == "marsSideGun" or prot == "marsSideGun_insured" then basket_side_l:SetShellsInPool(6) basket_side_r:SetShellsInPool(6) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "marsSideGun") end
					CreateEffectTTLed("ET_S_USE_RELOAD_ARTILLERYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1055)
					if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) then 
						RemoveItemsFromPlayerRepository("ammo_chest_artillerygun", 1)
						if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun", GetVar("Use_AmmoChestArtilleryGun").AsInt+1) end
					elseif HasPlayerAmountOfItems("ammo_chest_artillerygun_insured", 1) then
						DeleteTableInsuredItems("ammo_chest_artillerygun")
						RemoveItemsFromPlayerRepository("ammo_chest_artillerygun_insured", 1)
						if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun_Insured", GetVar("Use_AmmoChestArtilleryGun_Insured").AsInt+1) end
					end
				end
			end
		end
	end

	local basket_special_weapon = GetPlayerVehicle():GetPartByName("BASKET_SPECIAL_WEAPON")	
	if basket_special_weapon then
		local prot = basket_special_weapon:GetProperty("Prototype").AsString
		local poolshells = basket_special_weapon:GetShellsInPool()
		local currentshells = basket_special_weapon:GetShellsInCurrentCharge()
		local dur = basket_special_weapon:GetProperty("Durability").AsInt
		if poolshells == 0 and currentshells == 0 and dur ~= 0 then
			if HasPlayerAmountOfItems("ammo_ballon_turbo", 1) or HasPlayerAmountOfItems("ammo_ballon_turbo_insured", 1) then
				if prot == "someTurboAccelerationPusher" or prot == "someTurboAccelerationPusher_insured" then
					if prot == "someTurboAccelerationPusher" or prot == "someTurboAccelerationPusher_insured" then basket_special_weapon:SetShellsInPool(29) AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", "someTurboAccelerationPusher") end
					CreateEffectTTLed("ET_S_USE_RELOAD_BALLON_TURBO", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1252)
					if HasPlayerAmountOfItems("ammo_ballon_turbo", 1) then 
						RemoveItemsFromPlayerRepository("ammo_ballon_turbo", 1)
						if ammo_used == 1 then SetVar("Use_AmmoBallonTurbo", GetVar("Use_AmmoBallonTurbo").AsInt+1) end
					elseif HasPlayerAmountOfItems("ammo_ballon_turbo_insured", 1) then
						DeleteTableInsuredItems("ammo_ballon_turbo")
						RemoveItemsFromPlayerRepository("ammo_ballon_turbo_insured", 1)
						if ammo_used == 1 then SetVar("Use_AmmoBallonTurbo_Insured", GetVar("Use_AmmoBallonTurbo_Insured").AsInt+1) end
					end
				end
			end
		end
	end
end

-- Дать патроны для конкретного оружия
function AddAmmoItemsForGuns(veh, count)
	local vehicle = veh

	local small_gun
	local big_gun
	local giant_gun
	local side_gun
	local special_gun

	if count == nil then count = 1 end

	if vehicle then
		local small_slot = {"CABIN_SMALL_GUN", "CABIN_SMALL_GUN_1", "BASKET_SMALL_GUN_0"}
		for sml=1,3 do
			if vehicle:GetPartByName(small_slot[sml]) then
				small_gun = vehicle:GetPartByName(small_slot[sml]):GetProperty("Prototype").AsString
				if small_gun == "hornet01" or small_gun == "hornet01_insured" or small_gun == "american_hornet01" or small_gun == "american_hornet01_insured" or small_gun == "specter01" or small_gun == "specter01_insured" or small_gun == "pkt01" or small_gun == "pkt01_insured" or small_gun == "kord01" or small_gun == "kord01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if small_gun == "storm01" or small_gun == "storm01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_shotgun", count)
				end
				if small_gun == "maxim01" or small_gun == "maxim01_insured" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_lasergun", count)
					end
				end
				if small_gun == "fagot01" or small_gun == "fagot01_insured" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_plasmagun", count)
					end
				end
			end
		end

		local big_slot = {"CABIN_BIG_GUN_1", "CABIN_BIG_GUN_2", "BASKET_BIG_GUN_0", "BASKET_BIG_GUN_1"}
		for big=1,4 do
			if vehicle:GetPartByName(big_slot[big]) then
				big_gun = vehicle:GetPartByName(big_slot[big]):GetProperty("Prototype").AsString
				if big_gun == "rapier01" or big_gun == "rapier01_insured" or big_gun == "rainmetal01" or big_gun == "rainmetal01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_heavygun", count)
				end
				if big_gun == "vector01" or big_gun == "vector01_insured" or big_gun == "vulcan01" or big_gun == "vulcan01_insured" or big_gun == "kpvt01" or big_gun == "kpvt01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if big_gun == "flag01" or big_gun == "flag01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_shotgun", count)
				end
				if big_gun == "bumblebee01" or big_gun == "bumblebee01_insured" or big_gun == "omega01" or big_gun == "omega01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_artillerygun", count)
				end
				if big_gun == "hurricane01" or big_gun == "hurricane01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
				end
				if big_gun == "odin01" or big_gun == "odin01_insured" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_lasergun", count)
					end
				end
				if big_gun == "elephant01" or big_gun == "elephant01_insured" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_plasmagun", count)
					end
				end
			end
		end

		local giant_slot = {"CABIN_GIANT_GUN", "BASKET_GIANT_GUN", "BASKET_GIANT_GUN_0"}
		for gnt=1,3 do
			if vehicle:GetPartByName(giant_slot[gnt]) then
				giant_gun = vehicle:GetPartByName(giant_slot[gnt]):GetProperty("Prototype").AsString
				if giant_gun == "cyclops01" or giant_gun == "cyclops01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_heavygun", count)
				end
				if giant_gun == "octopus01" or giant_gun == "octopus01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if giant_gun == "rocketLauncher" or giant_gun == "rocketLauncher_insured" or giant_gun == "big_swingfire01" or giant_gun == "big_swingfire01_insured" then
					vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
				end
				if giant_gun == "hammer01" or giant_gun == "hammer01_insured" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_plasmagun", count)
					end
				end
			end
		end

		if vehicle:GetPartByName("BASKET_SIDE_GUN_0") then
			side_gun = vehicle:GetPartByName("BASKET_SIDE_GUN_0"):GetProperty("Prototype").AsString
			if side_gun == "hailSideGun" or side_gun == "hailSideGun_insured" or side_gun == "hunterSideGun" or side_gun == "hunterSideGun_insured" or side_gun == "mrakSideGun" or side_gun == "mrakSideGun_insured" then
				vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
			end
			if side_gun == "marsSideGun" or side_gun == "marsSideGun_insured" then
				vehicle:AddItemsToRepository("ammo_chest_artillerygun", count)
			end
		end

		if vehicle:GetPartByName("BASKET_SPECIAL_WEAPON") then
			special_gun = vehicle:GetPartByName("BASKET_SPECIAL_WEAPON"):GetProperty("Prototype").AsString
			if special_gun == "someTurboAccelerationPusher" or special_gun == "someTurboAccelerationPusher_insured" then
				vehicle:AddItemsToRepository("ammo_ballon_turbo", count)
			end
		end
	end
end

-- Генерация лута в ящиках 
-- Закопанная бочка
function CreateBarrelLootBox(name, pos, rot, model)
	if model == nil then model = 1 end
	if rot == nil then rot = Quaternion(0, 0, 0, 1) end

	local use = {"scrap_metal_use", "machinery_use", "electronics_use", "oil_use", "fuel_full_use", "fuel_nil_use", "item_key_gate_thetown", "item_key_gate_basefelix", "item_key_gate_vaterland", "item_key_gate_bunker014", "item_green_fier"}
	local ammo = {"ammo_chest_artillerygun", "ammo_chest_heavygun", "ammo_chest_machinegun", "ammo_chest_rocketgun", "ammo_chest_shotgun", "ammo_ballon_lasergun", "ammo_ballon_plasmagun", "ammo_ballon_turbo"}
	local build = {"scrap_metal", "machinery", "doski", "details", "item_bolts", "item_datchik", "item_hose", "item_insulation", "item_kek", "item_military_tube", "item_nails", "item_nuts", "item_parts", "item_pena", "item_plex", "item_poheram", "item_scotch", "item_screws", "item_thermometer", "item_tube", "item_paracord"}
	local ex = {"potato", "scrap_metal", "firewood", "oil", "bottle", "fuel", "machinery", "tobacco", "book", "electronics", "doski", "details", "shkatulka"}
	local electro = {"electronics", "item_bp", "item_cable", "item_converter", "item_cooler", "item_cpu", "item_drill", "item_dvd", "item_electronics_components", "item_energo_lump", "item_engine", "item_gazan", "item_geiger", "item_gpu", "item_hdd", "item_helix", "item_iridiym", "item_kondesators", "item_lcd", "item_lump", "item_magnet", "item_military_cable", "item_phone", "item_plate", "item_ram", "item_rele", "item_svech", "item_tetris", "item_tplug", "item_ultra_lump", "item_usb", "item_virtex", "item_vpx", "item_wires", "item_controller", "item_gyrotachometer", "item_military_plate", "item_rfid"}
	local energo = {"item_accum", "item_battery_aa", "item_battery_d", "item_car_battery", "item_cyclon", "item_green_battery", "item_powerbank", "item_tank_battery"}				
	local flam = {"firewood", "oil", "fuel", "tobacco", "item_dry", "item_hunter_spich", "item_lighter", "item_prisadka", "item_propan", "item_spich", "item_survl", "item_termit", "item_trotile", "item_wd40_100", "item_wd40_400", "item_zibbo", "item_gunpowder"}			
	local food = {"item_sugar", "item_sausage"}		
	local household = {"item_alkani", "item_hlor", "item_paper", "item_salt", "item_soap", "item_tb", "item_toothpaste", "item_sugar"}		
	local info = {"item_diary", "item_diary_s", "item_disk", "item_disk_exmachina", "item_flashdrive", "item_manual", "item_rozvidka", "item_sas", "item_ssd"}
	local med = {"item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe", "item_afak", "item_ai2", "item_analgin", "item_carmed", "item_grizzly", "item_ifak", "item_med", "item_morfie", "item_salewa", "item_vazelin", "item_zvezda"}
	local other = {"book", "item_airfilter", "item_ananaga", "item_emre_kara", "item_filter", "item_fitanyashka", "item_paracord", "item_vitalik", "item_vodka", "item_waterfilter", "item_zapal", "item_monolit", "item_kaktus", "item_keqing", "item_carsen", "item_metallodetector", "item_stakanyash", "item_kubok_kikiki", "item_chizuru"}		
	local tools = {"item_awl", "item_buldex", "item_fullmaster", "item_handrill", "item_leatherman", "item_metalscissors", "item_nippers", "item_pipe_wrench", "item_pliers", "item_pliers_round", "item_ratchet_wrench", "item_roulet", "item_screw", "item_screw_flat", "item_screw_flat_long", "item_sewing_kit", "item_toolset", "item_wrench", "item_vitalik"}		
	local valuables = {"shkatulka", "item_bitcoin", "item_cat", "item_chain", "item_chain_gold", "item_chiken", "item_ex", "item_lion", "item_rolex", "item_skullring", "item_teapon", "item_silver_skull", "item_vaze", "item_duck"}			
	local gun = {"hornet01", "american_hornet01", "specter01", "pkt01", "kord01", "storm01", "fagot01", "maxim01", "vector01", "vulcan01", "kpvt01", "rapier01", "flag01", "rainmetal01", "elephant01", "odin01", "omega01", "bumblebee01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun", "someTurboAccelerationPusher"}				
	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}
	local gadget3 = {"cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}
	
	local typeI = {use, ammo, build, ex, electro, energo, flam, food, household, info, med, other, tools, valuables, gun, gadget1, gadget2, gadget3}

	local count = random(5)

	local mapName = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	if mapName == "r1m1" then
		table.insert(other, "item_pants40grn")
	elseif mapName == "r5m1" then
		table.insert(valuables, "item_woodclock")
		table.insert(household, "item_soda")
		count = random(7)
	end

	if EVENT == "NEW_YEAR" then 
		local new_items = {"item_christmas_ball_blue", "item_christmas_ball_red", "item_christmas_ball_white", "item_christmas_star"}
		for i = 1, 4 do
			table.insert(other, new_items[i])
		end
	end

	if model == 1 then
		CreateNewDummyObject("plastic_barrel", name, -1, -1, pos, Quaternion(0, 0, 0, 0), 1)
		local Barrel = getObj(name)
		local BarrelPos = Barrel:GetPosition()
		BarrelPos.y = BarrelPos.y - 1.850
		Barrel:SetPosition(BarrelPos)
	elseif model == 2 then
		CreateNewDummyObject("cache_box", name, -1, -1, pos, rot, 1)
		getObj(name):SetPropertyById(7, 0.5)
	end

	local Chest = CreateNewObject{prototypeName = "opacityChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 3
	ChestId:SetPosition(ChestPos)

	for l=1, count do
		local tr = random(18)
		local t = typeI[tr] 

		if tr == 15 then
			local item = t[random(getn(t))]
			AddGunRandomAmmoToChestObj(ChestId, item, "BarrelGunItem_"..random(10000))
			if random(10) == 1 then
				AddItemsToChestObj(ChestId, GetAmmoBoxForGun(item), "BarrelAmmoItem_"..random(10000))
			end
		elseif tr >= 16 then
			AddItemsToChestObj(ChestId, t[random(getn(t))], "BarrelGadgetItem_"..random(10000))
		else
			local item = GetRandomWeightedItem(t)
			AddItemsToChestObj(ChestId, item, "BarrelItem_"..random(10000))
		end
	end
end

-- Оружейный ящик (r1m1)
function CreateGunBox(name, pos)
	local gun1 = {"hornet01", "specter01", "pkt01", "storm01", "vector01", "vulcan01", "kpvt01", "rapier01", "bumblebee01"} 
	local gun2 = {"pkt01", "kord01", "maxim01", "fagot01", "someTurboAccelerationPusher", "omega01", "elephant01", "flag01", "odin01", "rainmetal01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun"}
	local gun_rand = {gun1[random(getn(gun1))], gun2[exrandom(getn(gun2))]}

	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}
	local gadget3 = {"cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}

	local protChest = "mainChest"
	if EVENT == "NEW_YEAR" then protChest = "christmasChest" end

	local Chest = CreateNewObject{prototypeName = protChest, objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(3)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	AddItemsToChestObj(ChestId, "item_opacity", "OpacityItem_"..name)

	if random(100) > 10 then
		if random(2) == 1 then
			local gun_item = gun_rand[random(getn(gun_rand))]	
			AddGunAfficsToChestObj(ChestId, gun_item, "GunItem_"..random(10000).."_"..name)

			if random(2) == 1 then
				local ammo_item = GetAmmoBoxForGun(gun_item)
				if ammo_item == "ammo_ballon_lasergun" or ammo_item == "ammo_ballon_plasmagun" then
					if random(3) == 1 then ammo_item = nil end
				elseif ammo_item == "ammo_ballon_turbo" then
					if random(2) == 1 then ammo_item = nil end
				end

				if ammo_item then
					AddItemsToChestObj(ChestId, ammo_item, "AmmoItem_"..random(10000).."_"..name)
				end
			end
		end
		for l=1, random(2) do
			local gadget_rand = {gadget1[random(getn(gadget1))], gadget2[random(getn(gadget2))], gadget3[random(getn(gadget3))]}
			AddItemsToChestObj(ChestId, gadget_rand[random(3)], "GadgetItem_"..random(10000).."_"..name)
		end
	end
end

-- Возвращает подходящий ящик с патронами для оружия
function GetAmmoBoxForGun(gun_item)
	if gun_item == "hornet01" or gun_item == "specter01" or gun_item == "pkt01" or gun_item == "kord01" or gun_item == "vector01" or gun_item == "vulcan01" or gun_item == "kpvt01" or gun_item == "octopus01" then
		ammo_item = "ammo_chest_machinegun"
	elseif gun_item == "storm01" or gun_item == "flag01" then
		ammo_item = "ammo_chest_shotgun"
	elseif gun_item == "rapier01" or gun_item == "rainmetal01" or gun_item == "cyclops01" then
		ammo_item = "ammo_chest_heavygun"
	elseif gun_item == "omega01" or gun_item == "bumblebee01" or gun_item == "marsSideGun" then
		ammo_item = "ammo_chest_artillerygun"
	elseif gun_item == "hurricane01" or gun_item == "rocketLauncher" or gun_item == "big_swingfire01" or gun_item == "mrakSideGun" or gun_item == "hailSideGun" or gun_item == "hunterSideGun" then
		ammo_item = "ammo_chest_rocketgun"
	elseif gun_item == "maxim01" or gun_item == "odin01" then
		ammo_item = "ammo_ballon_lasergun"
	elseif gun_item == "fagot01" or gun_item == "elephant01" or gun_item == "hammer01" then
		ammo_item = "ammo_ballon_plasmagun"
	elseif gun_item == "someTurboAccelerationPusher" then
		ammo_item = "ammo_ballon_turbo"
	end
	return ammo_item
end

-- Создать малый оружейный ящик
function CreateSmallGunBox(name, pos, rot)
	local gun_small_box1 = {"hornet01", "specter01", "pkt01", "storm01", "vector01", "vulcan01", "kpvt01", "rapier01", "bumblebee01", "kord01", "maxim01", "fagot01", "omega01", "elephant01", "flag01", "odin01", "rainmetal01"} 
	local use_small_box = {"scrap_metal_use", "machinery_use"}
	local other_small_box = {"item_naci", "item_rozvidka"}

	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}

	local Chest = CreateNewObject{prototypeName = "gunChest3", objName = name}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetRotation(rot)
	ChestId:SetPropertyById(7, 0.6)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 4
	ChestId:SetPosition(ChestPos)

	AddItemsToChestObj(ChestId, "item_opacity", "OpacityItem_"..name)

	if random(100) > 10 then
		if random(100) >= 25 then
			local gun_item = gun_small_box1[random(getn(gun_small_box1))]
			AddGunAfficsToChestObj(ChestId, gun_item, "GunItem_"..random(10000).."_"..name)

			if random(2) == 1 then
				local ammo_item = GetAmmoBoxForGun(gun_item)
				if ammo_item == "ammo_ballon_lasergun" or ammo_item == "ammo_ballon_plasmagun" then
					if random(3) == 1 then ammo_item = nil end
				elseif ammo_item == "ammo_ballon_turbo" then
					if random(2) == 1 then ammo_item = nil end
				end

				if ammo_item then
					AddItemsToChestObj(ChestId, ammo_item, "AmmoItem_"..random(10000).."_"..name)
				end
			end
		end
		if random(3) == 1 then
			for g=1,random(2) do
				local gadget_rand = {gadget1[random(getn(gadget1))], gadget2[random(getn(gadget2))]}
				AddItemsToChestObj(ChestId, gadget_rand[random(2)], "GadgetItem_"..random(10000).."_"..name)
			end
		end

		if random(3) == 1 then
			local item = GetRandomWeightedItem(use_small_box)
			AddItemsToChestObj(ChestId, item, "UseItem_"..random(10000).."_"..name)
		end

		if random(3) == 1 then
			local other_item = GetRandomWeightedItem(other_small_box)
			if other_item == "item_rozvidka" then
				if not(random(100) >= 95) then other_item = nil end
			end
			if other_item == "item_naci" then
				if not(random(100) >= 90) then other_item = nil end
			end

			if other_item then
				AddItemsToChestObj(ChestId, other_item, "OtherItem_"..random(10000).."_"..name)
			end
		end
	end
end

-- Создать большой черный оружейный ящик
function CreateBigGunBoxBlack(name, pos, rot)
	local gun = {"hornet01", "specter01", "pkt01", "storm01", "pkt01", "kord01", "vector01", "vulcan01", "kpvt01", "rapier01", "bumblebee01", "maxim01", "fagot01", "omega01", "elephant01", "flag01", "odin01", "rainmetal01", "someTurboAccelerationPusher", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun"}
	local use = {"scrap_metal_use", "machinery_use", "electronics_use"}
	local other = {"item_gunpowder", "item_green_fier"}

	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}
	local gadget3 = {"cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}

	local Chest = CreateNewObject{prototypeName = "gunChest2", objName = name}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetRotation(rot)
	ChestId:SetSkin(1)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 4
	ChestId:SetPosition(ChestPos)

	AddItemsToChestObj(ChestId, "item_opacity", "OpacityItem_"..name)

	if random(100) > 10 then
		if random(100) >= 10 then
			local gun_item = gun[random(getn(gun))]
			AddGunAfficsToChestObj(ChestId, gun_item, "GunItem_"..random(10000).."_"..name)

			if random(2) == 1 then
				local ammo_item = GetAmmoBoxForGun(gun_item)
				if ammo_item == "ammo_ballon_lasergun" or ammo_item == "ammo_ballon_plasmagun" then
					if random(2) == 1 then ammo_item = nil end
				elseif ammo_item == "ammo_ballon_turbo" then
					if random(2) == 1 then ammo_item = nil end
				end

				if ammo_item then
					AddItemsToChestObj(ChestId, ammo_item, "AmmoItem_"..random(10000).."_"..name)
				end
			end
		end
		if random(3) == 1 then
			for g=1,random(3) do
				local gadget_rand = {gadget1[random(getn(gadget1))], gadget2[random(getn(gadget2))], gadget3[random(getn(gadget3))]}
				AddItemsToChestObj(ChestId, gadget_rand[exrandom(3)], "GadgetItem_"..random(10000).."_"..name)
			end
		end

		if random(2) == 1 then
			local item = GetRandomWeightedItem(use)
			AddItemsToChestObj(ChestId, item, "UseItem_"..random(10000).."_"..name)
		end

		if random(6) == 1 then
			AddItemsToChestObj(ChestId, other[random(2)], "OtherItem_"..random(10000).."_"..name)
		end
	end
end

-- Создать большой зеленый оружейный ящик
function CreateBigGunBoxGreen(name, pos, rot)
	local gun = {"hornet01", "specter01", "pkt01", "storm01", "pkt01", "kord01", "vector01", "vulcan01", "kpvt01", "rapier01", "bumblebee01", "maxim01", "fagot01", "omega01", "elephant01", "flag01", "odin01", "rainmetal01", "someTurboAccelerationPusher", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun"}
	local use = {"machinery_use", "electronics_use", "scrap_metal_use"}
	local other = {"item_flashdrive", "item_iridiym", "item_controller", "item_rfid", "item_rozvidka"}

	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}
	local gadget3 = {"cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}

	local Chest = CreateNewObject{prototypeName = "gunChest2", objName = name}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetRotation(rot)
	ChestId:SetPropertyById(7, 1.3)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	AddItemsToChestObj(ChestId, "item_opacity", "OpacityItem_"..name)

	if random(100) > 10 then
		for g=1,random(2) do
			local gun_item = gun[random(getn(gun))]
			AddGunAfficsToChestObj(ChestId, gun_item, "GunItem_"..random(10000).."_"..name)

			if random(100) >= 10 then
				local ammo_item = GetAmmoBoxForGun(gun_item)
				if ammo_item then
					AddItemsToChestObj(ChestId, ammo_item, "AmmoItem_"..random(10000).."_"..name)
				end
			end
		end
		
		if random(2) == 1 then
			for g=1,random(3) do
				local gadget_rand = {gadget1[random(getn(gadget1))], gadget2[random(getn(gadget2))], gadget3[random(getn(gadget3))]}
				AddItemsToChestObj(ChestId, gadget_rand[random(3)], "GadgetItem_"..random(10000).."_"..name)
			end
		end

		if random(2) == 1 then
			for u=1,random(2) do
				local item = GetRandomWeightedItem(use)
				AddItemsToChestObj(ChestId, item, "UseItem_"..random(10000).."_"..name)
			end
		end

		if random(4) == 1 then
			local otherRand = other[random(5)]
			if otherRand == "flashdrive" then 
				if not(random(100) >= 90) then otherRand = nil end
			else
				if not(random(100) >= 95) then otherRand = nil end
			end
			if otherRand then
				AddItemsToChestObj(ChestId, otherRand, "OtherItem_"..random(10000).."_"..name)
			end
		end
	end
end

-- Создать плоский оружейный ящик
function CreateFlatGunBox(name, pos, rot)
	local gun = {"hornet01", "specter01", "pkt01", "storm01", "pkt01", "kord01", "vector01", "vulcan01", "kpvt01", "rapier01", "bumblebee01", "maxim01", "fagot01", "omega01", "elephant01", "flag01", "odin01", "rainmetal01", "someTurboAccelerationPusher"}
	local use = {"machinery_use", "electronics_use", "scrap_metal_use"}
	local other = {"item_gunpowder", "item_military_plate", "item_military_cable", "item_military_tube"}
	local med = {"item_analgin", "item_salewa", "item_grizzly", "item_carmed", "item_ifak", "item_afak", "item_zvezda", "item_vazelin", "item_morfie"}

	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}
	local gadget3 = {"cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}

	local Chest = CreateNewObject{prototypeName = "gunChest1", objName = name}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetRotation(rot)
	ChestId:SetSkin(1)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 4
	ChestId:SetPosition(ChestPos)

	AddItemsToChestObj(ChestId, "item_opacity", "OpacityItem_"..name)

	if random(100) > 10 then
		if random(100) >= 10 then
			local gun_item = gun[random(getn(gun))]
			AddGunAfficsToChestObj(ChestId, gun_item, "GunItem_"..random(10000).."_"..name)

			if random(100) >= 80 then
				local ammo_item = GetAmmoBoxForGun(gun_item)
				if ammo_item then
					AddItemsToChestObj(ChestId, ammo_item, "AmmoItem_"..random(10000).."_"..name)
				end
			end
		end
		
		if random(3) == 1 then
			local gadget_rand = {gadget1[random(getn(gadget1))], gadget2[random(getn(gadget2))], gadget3[random(getn(gadget3))]}
			AddItemsToChestObj(ChestId, gadget_rand[random(3)], "GadgetItem_"..random(10000).."_"..name)
		end

		if random(3) == 1 then
			local item = GetRandomWeightedItem(use)
			AddItemsToChestObj(ChestId, item, "UseItem_"..random(10000).."_"..name)
		end

		if random(6) == 1 then
			local item = GetRandomWeightedItem(other)
			AddItemsToChestObj(ChestId, item, "OtherItem_"..random(10000).."_"..name)
		end

		if random(5) == 1 then
			local item = GetRandomWeightedItem(med)
			AddItemsToChestObj(ChestId, item, "MedItem_"..random(10000).."_"..name)
		end
	end
end

-- Создать ящик медобеспечения
function CreateMedWoodBox(name, pos, rot)
	local other = {"item_morfie", "item_salewa", "item_ai2", "item_gazan", "item_grizzly", "item_carmed", "item_ifak", "item_ledx", "item_afak"}
	local household = {"item_alkani", "item_hlor", "item_paper", "item_stakanyash", "item_salt", "item_soap", "item_tb", "item_toothpaste", "item_sugar"}
	local med = {"item_gazan", "item_morfie", "item_salewa", "item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe", "item_afak", "item_ai2", "item_analgin", "item_carmed", "item_grizzly", "item_ifak", "item_med", "item_vazelin", "item_zvezda"}
	local use = {"scrap_metal_use", "machinery_use", "electronics_use"}

	local Chest = CreateNewObject{prototypeName = "woodChest", objName = name}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetRotation(rot)
	ChestId:SetSkin(2)
	ChestId:SetPropertyById(7, 1.8)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 3
	ChestId:SetPosition(ChestPos)

	AddItemsToChestObj(ChestId, "item_opacity", "OpacityItem_"..name)

	if random(100) > 10 then
		if random(100) >= 10 then
			for i = 1, random(3) do
				local weights = {}
				for m = 1, getn(med) do
					if m > 3 then
						table.insert(weights, GetItemWeight(med[m]))
					else
						table.insert(weights, GetItemWeight(med[m]) + random(0, 5))
					end
				end
				local item = weighted_random(med, weights)
				AddItemsToChestObj(ChestId, item, "MedItem_"..random(10000).."_"..name)
			end
		end

		if random(4) == 1 then
			local item = GetRandomWeightedItem(other)
			AddItemsToChestObj(ChestId, item, "OtherItem_"..random(10000).."_"..name)
		end

		if random(4) == 1 then
			for i = 1, random(2) do
				local item = GetRandomWeightedItem(household)
				AddItemsToChestObj(ChestId, item, "HouseholdItem_"..random(10000).."_"..name)
			end
		end

		if random(6) == 1 then
			local item = GetRandomWeightedItem(use)
			AddItemsToChestObj(ChestId, item, "UseItem_"..random(10000).."_"..name)
		end
	end
end

-- Создать медсумку
function CreateMedBag(name, pos, rot, podkrutka)
	if podkrutka == nil then podkrutka = 0 end

	local other = {"item_morfie", "item_salewa"}
	local otherRand = {20, 20}
	local med = {"item_gazan", "item_salewa", "item_morfie", "item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe", "item_afak", "item_ai2", "item_analgin", "item_carmed", "item_grizzly", "item_ifak", "item_med", "item_vazelin", "item_zvezda"}

	local Chest = CreateNewObject{prototypeName = "medicalbagChest", objName = name}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetRotation(rot)
	ChestId:SetSkin(1)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 3
	ChestId:SetPosition(ChestPos)

	AddItemsToChestObj(ChestId, "item_opacity", "OpacityItem_"..name)

	if random(100) > 10 then
		if random(100) >= 5 then
			for i = 1, random(4) do
				local weights = {}
				for m = 1, getn(med) do
					if m > 3 then
						table.insert(weights, GetItemWeight(med[m]))
					else
						table.insert(weights, GetItemWeight(med[m]) + random(0, 5))
					end
				end
				local item = weighted_random(med, weights)
				AddItemsToChestObj(ChestId, item, "MedItem_"..random(10000).."_"..name)
			end
		end

		if random(5) == 1 then
			local r = random(getn(other))
			local item = other[r]
			if random(100) >= otherRand[r] + podkrutka then item = nil end

			if item then
				AddItemsToChestObj(ChestId, item, "OtherItem_"..random(10000).."_"..name)
			end
		end
	end
end

-- Добавить предмет в ящик
function AddItemsToChestObj(chest, item, name)
	local Obj = CreateNewObject{prototypeName = item, objName = name, belong = 1100}
	local ItemId = GetEntityByID(Obj)
	if chest and ItemId then
		chest:AddChild(ItemId)
	end
end

-- Добавить оружие с аффиксом в ящик
function AddGunAfficsToChestObj(chest, gun_item, name)
	local Gun = CreateNewObject{prototypeName = gun_item, objName = name, belong = 1100}
	local GunId = GetEntityByID(Gun)
	local afflist = {}
	if gun_item == "maxim01" or gun_item == "fagot01" or gun_item == "odin01" or gun_item == "elephant01" or gun_item == "hammer01" or gun_item == "bumblebee01" or gun_item == "omega01" or gun_item == "big_swingfire01" or gun_item == "hurricane01" or gun_item == "mrakSideGun" or gun_item == "hailSideGun" or gun_item == "marsSideGun" or gun_item == "zeusSideGun" or gun_item == "hunterSideGun" then
		local damageAffixes = {"weak_gun", "deadly_gun", "destructive_gun", "slow_gun", "assault_gun", "rapid_firing_gun", "without_cooling_gun", "with_nitro_cooling_gun", "with_truncated_barrel_gun", "with_enlarged_barrel_gun", "with_long_barrel_gun"}
		if random(2) == 1 then
			table.insert(afflist, damageAffixes[random(getn(damageAffixes))])
		end
	else
		afflist = CreateRandomAffixesForGun(random(0,2))
	end
	if afflist ~= nil then
		for i=1,getn(afflist) do
			GunId:ApplyAffixByName(afflist[i])
		end
	end
	if chest and GunId then
		chest:AddChild(GunId)
	end
end

-- Добавить оружие со случайным боезапасом
function AddGunRandomAmmoToChestObj(chest, item, name)
	AddItemsToChestObj(chest, item, name)
	if item ~= "hunterSideGun" and item ~= "mrakSideGun" and item ~= "hailSideGun" and item ~= "zeusSideGun" then
		local shell = getObj(name):GetShellsInPool()
		getObj(name):SetShellsInPool(random(0, shell))
	end
end

function GetItemWeight(item)
	if item == "potato" then r = 90 end
	if item == "scrap_metal" then r = 60 end
	if item == "firewood" then r = 80 end
	if item == "oil" then r = 60 end
	if item == "bottle" then r = 70 end
	if item == "fuel" then r = 50 end
	if item == "machinery" then r = 40 end
	if item == "tobacco" then r = 85 end
	if item == "book" then r = 70 end
	if item == "electronics" then r = 35 end

	if item == "doski" then r = 75 end
	if item == "details" then r = 65 end
	if item == "shkatulka" then r = 50 end

	if item == "scrap_metal_use" then r = 40 end
	if item == "machinery_use" then r = 25 end
	if item == "electronics_use" then r = 15 end
	if item == "oil_use" then r = 40 end
	if item == "fuel_full_use" then r = 30 end
	if item == "fuel_nil_use" then r = 60 end

	if item == "item_key_gate_thetown" then r = 20 end
	if item == "item_key_gate_basefelix" then r = 30 end
	if item == "item_key_gate_vaterland" then r = 30 end
	if item == "item_key_gate_bunker014" then r = 15 end

	if item == "ammo_chest_artillerygun" then r = 20 end
	if item == "ammo_chest_heavygun" then r = 40 end
	if item == "ammo_chest_machinegun" then r = 50 end
	if item == "ammo_chest_rocketgun" then r = 20 end
	if item == "ammo_chest_shotgun" then r = 45 end
	if item == "ammo_ballon_lasergun" then r = 10 end
	if item == "ammo_ballon_plasmagun" then r = 10 end
	if item == "ammo_ballon_turbo" then r = 15 end

	if item == "item_bolts" then r = 70 end
	if item == "item_datchik" then r = 30 end
	if item == "item_hose" then r = 30 end
	if item == "item_insulation" then r = 70 end
	if item == "item_kek" then r = 35 end
	if item == "item_military_tube" then r = 20 end
	if item == "item_nails" then r = 75 end
	if item == "item_nuts" then r = 70 end
	if item == "item_parts" then r = 60 end
	if item == "item_pena" then r = 40 end
	if item == "item_plex" then r = 65 end
	if item == "item_poheram" then r = 80 end
	if item == "item_scotch" then r = 80 end
	if item == "item_screws" then r = 75 end
	if item == "item_thermometer" then r = 30 end
	if item == "item_tube" then r = 50 end

	if item == "item_bp" then r = 25 end
	if item == "item_cable" then r = 45 end
	if item == "item_converter" then r = 5 end
	if item == "item_cooler" then r = 60 end
	if item == "item_cpu" then r = 55 end
	if item == "item_drill" then r = 30 end
	if item == "item_dvd" then r = 70 end
	if item == "item_electronics_components" then r = 60 end
	if item == "item_energo_lump" then r = 70 end
	if item == "item_engine" then r = 25 end
	if item == "item_gazan" then r = 20 end
	if item == "item_geiger" then r = 70 end
	if item == "item_gpu" then r = 3 end
	if item == "item_hdd" then r = 60 end
	if item == "item_helix" then r = 70 end
	if item == "item_iridiym" then r = 15 end
	if item == "item_kondesators" then r = 80 end
	if item == "item_lcd" then r = 60 end
	if item == "item_lump" then r = 70 end
	if item == "item_magnet" then r = 70 end
	if item == "item_military_cable" then r = 25 end
	if item == "item_phone" then r = 60 end
	if item == "item_plate" then r = 45 end
	if item == "item_ram" then r = 45 end
	if item == "item_rele" then r = 50 end
	if item == "item_svech" then r = 35 end
	if item == "item_tetris" then r = 10 end
	if item == "item_tplug" then r = 60 end
	if item == "item_ultra_lump" then r = 50 end
	if item == "item_usb" then r = 80 end
	if item == "item_virtex" then r = 5 end
	if item == "item_vpx" then r = 8 end
	if item == "item_wires" then r = 75 end
	if item == "item_controller" then r = 10 end
	if item == "item_gyrotachometer" then r = 20 end
	if item == "item_military_plate" then r = 20 end
	if item == "item_rfid" then r = 10 end

	if item == "item_accum" then r = 70 end
	if item == "item_battery_aa" then r = 90 end
	if item == "item_battery_d" then r = 90 end
	if item == "item_car_battery" then r = 20 end
	if item == "item_cyclon" then r = 20 end
	if item == "item_green_battery" then r = 25 end
	if item == "item_powerbank" then r = 60 end
	if item == "item_tank_battery" then r = 3 end

	if item == "item_dry" then r = 50 end
	if item == "item_hunter_spich" then r = 60 end
	if item == "item_lighter" then r = 70 end
	if item == "item_prisadka" then r = 20 end
	if item == "item_propan" then r = 20 end
	if item == "item_spich" then r = 80 end
	if item == "item_survl" then r = 50 end
	if item == "item_termit" then r = 30 end
	if item == "item_trotile" then r = 50 end
	if item == "item_wd40_100" then r = 60 end
	if item == "item_wd40_400" then r = 60 end
	if item == "item_zibbo" then r = 90 end
	if item == "item_gunpowder" then r = 40 end

	if item == "item_sugar" then r = 35 end
	if item == "item_sausage" then r = 15 end

	if item == "item_alkani" then r = 100 end
	if item == "item_hlor" then r = 100 end
	if item == "item_paper" then r = 100 end
	if item == "item_salt" then r = 100 end
	if item == "item_soap" then r = 100 end
	if item == "item_soda" then r = 100 end
	if item == "item_tb" then r = 100 end
	if item == "item_toothpaste" then r = 100 end

	if item == "item_diary" then r = 50 end
	if item == "item_diary_s" then r = 50 end
	if item == "item_disk" then r = 70 end
	if item == "item_disk_exmachina" then r = 30 end
	if item == "item_flashdrive" then r = 10 end
	if item == "item_manual" then r = 20 end
	if item == "item_rozvidka" then r = 3 end
	if item == "item_sas" then r = 20 end
	if item == "item_ssd" then r = 30 end

	if item == "item_aquapeps" then r = 30 end
	if item == "item_c6h8o6" then r = 60 end
	if item == "item_h2o2" then r = 50 end
	if item == "item_ledx" then r = 1 end
	if item == "item_medical_tools" then r = 70 end
	if item == "item_naci" then r = 50 end
	if item == "item_oftalmaskop" then r = 4 end
	if item == "item_suringe" then r = 50 end
	if item == "item_afak" then r = 60 end
	if item == "item_ai2" then r = 70 end
	if item == "item_analgin" then r = 70 end
	if item == "item_carmed" then r = 50 end
	if item == "item_grizzly" then r = 30 end
	if item == "item_ifak" then r = 60 end
	if item == "item_med" then r = 70 end
	if item == "item_morfie" then r = 20 end
	if item == "item_salewa" then r = 25 end
	if item == "item_vazelin" then r = 50 end
	if item == "item_zvezda" then r = 50 end

	if item == "item_airfilter" then r = 6 end
	if item == "item_ananaga" then r = 3 end
	if item == "item_emre_kara" then r = 40 end
	if item == "item_filter" then r = 70 end
	if item == "item_fitanyashka" then r = 30 end
	if item == "item_jeton_bear" then r = 100 end
	if item == "item_jeton_usec" then r = 100 end
	if item == "item_pants40grn" then r = 50 end
	if item == "item_paracord" then r = 30 end
	if item == "item_pavlikrpg" then r = 1 end
	if item == "item_vitalik" then r = 10 end
	if item == "item_vodka" then r = 70 end
	if item == "item_waterfilter" then r = 25 end
	if item == "item_zapal" then r = 70 end
	if item == "item_monolit" then r = 40 end
	if item == "item_kaktus" then r = 40 end
	if item == "item_keqing" then r = 30 end
	if item == "item_carsen" then r = 50 end
	if item == "item_metallodetector" then r = 35 end
	if item == "item_stakanyash" then r = 60 end
	if item == "item_kubok_kikiki" then r = 35 end
	if item == "item_knife_sectarian" then r = 100 end
	if item == "item_christmas_ball_blue" then r = 50 end
	if item == "item_christmas_ball_red" then r = 30 end
	if item == "item_christmas_ball_white" then r = 60 end
	if item == "item_christmas_star" then r = 35 end
	if item == "item_chizuru" then r = 30 end

	if item == "item_awl" then r = 50 end
	if item == "item_buldex" then r = 25 end
	if item == "item_fullmaster" then r = 35 end
	if item == "item_handrill" then r = 30 end
	if item == "item_leatherman" then r = 55 end
	if item == "item_metalscissors" then r = 50 end
	if item == "item_nippers" then r = 70 end
	if item == "item_pipe_wrench" then r = 25 end
	if item == "item_pliers" then r = 70 end
	if item == "item_pliers_round" then r = 70 end
	if item == "item_ratchet_wrench" then r = 25 end
	if item == "item_roulet" then r = 60 end
	if item == "item_screw" then r = 65 end
	if item == "item_screw_flat" then r = 60 end
	if item == "item_screw_flat_long" then r = 50 end
	if item == "item_sewing_kit" then r = 40 end
	if item == "item_toolset" then r = 30 end
	if item == "item_wrench" then r = 70 end

	if item == "item_bitcoin" then r = 2 end
	if item == "item_cat" then r = 20 end
	if item == "item_chain" then r = 40 end
	if item == "item_chain_gold" then r = 25 end
	if item == "item_chiken" then r = 20 end
	if item == "item_ex" then r = 45 end
	if item == "item_lion" then r = 5 end
	if item == "item_rolex" then r = 20 end
	if item == "item_skullring" then r = 15 end
	if item == "item_teapon" then r = 30 end
	if item == "item_woodclock" then r = 20 end
	if item == "item_silver_skull" then r = 50 end
	if item == "item_vaze" then r = 25 end
	if item == "item_duck" then r = 60 end

	if item == "item_green_fier" then r = 35 end
	return r
end

function GetRandomWeightedItem(item)
    local weights = {}
	for i = 1, getn(item) do
		table.insert(weights, GetItemWeight(item[i]))
	end
	return weighted_random(item, weights)
end

function weighted_random(items, weights)
    local total_weight = 0
    for i = 1, table.getn(weights) do
        total_weight = total_weight + weights[i]
    end

    local random_value = math.random() * total_weight

    local cumulative_weight = 0
    for i = 1, table.getn(weights) do
        cumulative_weight = cumulative_weight + weights[i]
        if random_value <= cumulative_weight then
            return items[i]
        end
    end
end

function shuffle (arr)
	for i = 1, getn(arr) - 1 do
		local j = math.random(i, getn(arr))
		arr[i], arr[j] = arr[j], arr[i]
	end
end

function shuffled_range_take (n, a, b)
	local numbers = {}
	for i = a, b do
		numbers[i] = i
	end

	shuffle(numbers)

	local cropped_numbers = {}

	for i = 1, n do
		cropped_numbers[i] = numbers[i]
	end 

	return cropped_numbers
end

-- Создать постер
function CreatePoster(name, pos, rot)
	local posters = {"poster_keqing", "poster_exception", "poster_buyanov", "poster_pavlik"}
	local poster = posters[random(getn(posters))]

	local model = CreateNewSgNodeObject(poster, "Model"..name, -1, -1, pos, rot)
	local ModelPos = model:GetPosition()
	ModelPos.y = ModelPos.y + 2.25
	model:SetPosition(ModelPos)

	local Chest = CreateNewObject{prototypeName = "opacityChest", objName = "Chest"..name}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(ModelPos)

	AddItemsToChestObj(ChestId, "item_"..poster, "PosterItem_"..random(10000))
end

-- Все предметы
function AllItems()
	local Items = {"potato", "scrap_metal", "firewood", "oil", "bottle", "fuel", "machinery", "tobacco", "book", "electronics",
					"doski", "details", "shkatulka",
					"scrap_metal_use", "scrap_metal_use_insured", "machinery_use", "machinery_use_insured", "electronics_use", "electronics_use_insured", "oil_use", "oil_use_insured", "fuel_full_use", "fuel_full_use_insured", "fuel_nil_use", "fuel_nil_use_insured",
					"item_key_gate_thetown", "item_key_gate_basefelix", "item_key_gate_vaterland", "item_key_gate_bunker014",
					"item_green_fier",
					"ammo_chest_artillerygun", "ammo_chest_artillerygunForSale", "ammo_chest_artillerygun_insured", "ammo_chest_heavygun", "ammo_chest_heavygunForSale", "ammo_chest_heavygun_insured", "ammo_chest_machinegun", "ammo_chest_machinegunForSale", "ammo_chest_machinegun_insured", "ammo_chest_rocketgun", "ammo_chest_rocketgunForSale", "ammo_chest_rocketgun_insured", "ammo_chest_shotgun", "ammo_chest_shotgunForSale", "ammo_chest_shotgun_insured", "ammo_ballon_lasergun", "ammo_ballon_lasergun_insured", "ammo_ballon_plasmagun", "ammo_ballon_plasmagun_insured", "ammo_ballon_turbo", "ammo_ballon_turbo_insured",
					"item_bolts", "item_datchik", "item_hose", "item_insulation", "item_kek", "item_military_tube", "item_nails", "item_nuts", "item_parts", "item_pena", "item_plex", "item_poheram", "item_scotch", "item_screws", "item_thermometer", "item_tube",
					"item_bp", "item_cable", "item_converter", "item_cooler", "item_cpu", "item_drill", "item_dvd", "item_electronics_components", "item_energo_lump", "item_engine", "item_gazan", "item_geiger", "item_gpu", "item_hdd", "item_helix", "item_iridiym", "item_kondesators", "item_lcd", "item_lump", "item_magnet", "item_military_cable", "item_phone", "item_plate", "item_ram", "item_rele", "item_svech", "item_tetris", "item_tplug", "item_ultra_lump", "item_usb", "item_virtex", "item_vpx", "item_wires", "item_controller", "item_gyrotachometer", "item_military_plate", "item_rfid",
					"item_accum", "item_battery_aa", "item_battery_d", "item_car_battery", "item_cyclon", "item_green_battery", "item_powerbank", "item_tank_battery",
					"item_dry", "item_hunter_spich", "item_lighter", "item_prisadka", "item_propan", "item_spich", "item_survl", "item_termit", "item_trotile", "item_wd40_100", "item_wd40_400", "item_zibbo", "item_gunpowder",
					"item_sugar", "item_sausage",
					"item_alkani", "item_hlor", "item_paper", "item_salt", "item_soap", "item_soda", "item_tb", "item_toothpaste",
					"item_diary", "item_diary_s", "item_disk", "item_disk_exmachina", "item_flashdrive", "item_manual", "item_rozvidka", "item_sas", "item_ssd",
					"item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe", "item_afak", "item_ai2", "item_analgin", "item_carmed", "item_grizzly", "item_ifak", "item_med", "item_morfie", "item_salewa", "item_vazelin", "item_zvezda",
					"item_airfilter", "item_ananaga", "item_emre_kara", "item_filter", "item_fitanyashka", "item_jeton_bear", "item_jeton_usec", "item_pants40grn", "item_paracord", "item_pavlikrpg", "item_vitalik", "item_vodka", "item_waterfilter", "item_zapal", "item_monolit", "item_kaktus", "item_keqing", "item_carsen", "item_metallodetector", "item_stakanyash", "item_kubok_kikiki", "item_knife_sectarian", "item_christmas_ball_blue", "item_christmas_ball_red", "item_christmas_ball_white", "item_christmas_star", "item_water_canister", "item_chizuru", "item_poster_keqing", "item_poster_exception", "item_poster_buyanov", "item_poster_pavlik",
					"item_awl", "item_buldex", "item_fullmaster", "item_handrill", "item_leatherman", "item_metalscissors", "item_nippers", "item_pipe_wrench", "item_pliers", "item_pliers_round", "item_ratchet_wrench", "item_roulet", "item_screw", "item_screw_flat", "item_screw_flat_long", "item_sewing_kit", "item_toolset", "item_wrench",
					"item_bitcoin", "item_cat", "item_chain", "item_chain_gold", "item_chiken", "item_ex", "item_lion", "item_rolex", "item_skullring", "item_teapon", "item_woodclock", "item_vitaly", "item_silver_skull", "item_vaze", "item_duck",
					"item_quest_search_data",
					"item_ms2000",
					"hornet01", "hornet01_insured", "american_hornet01", "american_hornet01_insured", "specter01", "specter01_insured", "pkt01", "pkt01_insured", "kord01", "kord01_insured", "storm01", "storm01_insured", "fagot01", "fagot01_insured", "maxim01", "maxim01_insured", "vector01", "vector01_insured", "vulcan01", "vulcan01_insured", "kpvt01", "kpvt01_insured", "rapier01", "rapier01_insured", "flag01", "flag01_insured", "rainmetal01", "rainmetal01_insured", "elephant01", "elephant01_insured", "odin01", "odin01_insured", "omega01", "omega01_insured", "bumblebee01", "bumblebee01_insured", "hammer01", "hammer01_insured", "hunterSideGun", "hunterSideGun_insured", "mrakSideGun", "mrakSideGun_insured", "big_swingfire01", "big_swingfire01_insured", "cyclops01", "cyclops01_insured", "octopus01", "octopus01_insured", "hailSideGun", "hailSideGun_insured", "hurricane01", "hurricane01_insured", "rocketLauncher", "rocketLauncher_insured", "zeusSideGun", "zeusSideGun_insured", "marsSideGun", "marsSideGun_insured",
					"someTurboAccelerationPusher", "someTurboAccelerationPusher_insured", "engineOilPusher", "nailsPusher", "Smoke", "minePusher", "minePusher_1", "minePusher_2",
					"cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns", "cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "additional_fuel_tank2", "additional_torque2", "additional_durability2", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}
	return Items
end

function AllItemsForScav()
	local Items = {"potato", "scrap_metal", "firewood", "oil", "bottle", "fuel", "machinery", "tobacco", "book", "electronics",
					"doski", "details", "shkatulka",
					"scrap_metal_use", "machinery_use", "electronics_use", "oil_use", "fuel_full_use", "fuel_nil_use",
					"item_key_gate_thetown", "item_key_gate_basefelix", "item_key_gate_vaterland", "item_key_gate_bunker014",
					"item_green_fier",
					"ammo_chest_artillerygun", "ammo_chest_heavygun", "ammo_chest_machinegun", "ammo_chest_rocketgun", "ammo_chest_shotgun", "ammo_ballon_lasergun", "ammo_ballon_plasmagun", "ammo_ballon_turbo",
					"item_bolts", "item_datchik", "item_hose", "item_insulation", "item_kek", "item_military_tube", "item_nails", "item_nuts", "item_parts", "item_pena", "item_plex", "item_poheram", "item_scotch", "item_screws", "item_thermometer", "item_tube",
					"item_bp", "item_cable", "item_converter", "item_cooler", "item_cpu", "item_drill", "item_dvd", "item_electronics_components", "item_energo_lump", "item_engine", "item_gazan", "item_geiger", "item_gpu", "item_hdd", "item_helix", "item_iridiym", "item_kondesators", "item_lcd", "item_lump", "item_magnet", "item_military_cable", "item_phone", "item_plate", "item_ram", "item_rele", "item_svech", "item_tetris", "item_tplug", "item_ultra_lump", "item_usb", "item_virtex", "item_vpx", "item_wires", "item_controller", "item_gyrotachometer", "item_military_plate", "item_rfid",
					"item_accum", "item_battery_aa", "item_battery_d", "item_car_battery", "item_cyclon", "item_green_battery", "item_powerbank", "item_tank_battery",
					"item_dry", "item_hunter_spich", "item_lighter", "item_prisadka", "item_propan", "item_spich", "item_survl", "item_termit", "item_trotile", "item_wd40_100", "item_wd40_400", "item_zibbo", "item_gunpowder",
					"item_sugar", "item_sausage",
					"item_alkani", "item_hlor", "item_paper", "item_salt", "item_soap", "item_soda", "item_tb", "item_toothpaste",
					"item_diary", "item_diary_s", "item_disk", "item_disk_exmachina", "item_flashdrive", "item_manual", "item_rozvidka", "item_sas", "item_ssd",
					"item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe", "item_afak", "item_ai2", "item_analgin", "item_carmed", "item_grizzly", "item_ifak", "item_med", "item_morfie", "item_salewa", "item_vazelin", "item_zvezda",
					"item_airfilter", "item_ananaga", "item_emre_kara", "item_filter", "item_fitanyashka", "item_pants40grn", "item_paracord", "item_vitalik", "item_vodka", "item_waterfilter", "item_zapal", "item_monolit", "item_kaktus", "item_keqing", "item_carsen", "item_metallodetector", "item_stakanyash", "item_kubok_kikiki", "item_chizuru",
					"item_awl", "item_buldex", "item_fullmaster", "item_handrill", "item_leatherman", "item_metalscissors", "item_nippers", "item_pipe_wrench", "item_pliers", "item_pliers_round", "item_ratchet_wrench", "item_roulet", "item_screw", "item_screw_flat", "item_screw_flat_long", "item_sewing_kit", "item_toolset", "item_wrench",
					"item_bitcoin", "item_cat", "item_chain", "item_chain_gold", "item_chiken", "item_ex", "item_lion", "item_rolex", "item_skullring", "item_teapon", "item_woodclock", "item_silver_skull", "item_vaze", "item_duck",
					"hornet01", "american_hornet01", "specter01", "pkt01", "kord01", "storm01", "fagot01", "maxim01", "vector01", "vulcan01", "kpvt01", "rapier01", "flag01", "rainmetal01", "elephant01", "odin01", "omega01", "bumblebee01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun",
					"someTurboAccelerationPusher",
					"cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns", "cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "additional_fuel_tank2", "additional_torque2", "additional_durability2", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}

	if EVENT == "NEW_YEAR" then 
		local new_items = {"item_christmas_ball_blue", "item_christmas_ball_red", "item_christmas_ball_white", "item_christmas_star"}
		for i = 1, 4 do
			table.insert(Items, new_items[i])
		end
	end

	return Items
end

-- Рандомная конфигурация машины игрока
function AddPlayerRandomConfigurationVehicle()
	local modellist = {"BugForSale", "MolokovozForSale", "UralForSale", "BelazForSale", "CruiserForSale", "MirotvorecForSale"}
	local model = modellist[random(getn(modellist))]
	
	local cab
	local cargo

	if model == "BugForSale" then
		cab = {"bugCab01", "bugCab02", "bugCab03"}
		cargo = {"bugCargo01_4x5", "bugCargo02_4x6", "bugCargo03_5x7"}
	elseif model == "MolokovozForSale" then
		cab = {"molokovozCab01", "molokovozCab02" ,"molokovozCab03"}
		cargo = {"molokovozCargo01_5x8", "molokovozCargo02_6x9", "molokovozCargo03_6x8"}
	elseif model == "UralForSale" then
		cab = {"uralCab01", "uralCab02", "uralCab03", "uralCab04", "uralCab05"}
		cargo = {"uralCargo01_6x9", "uralCargo02_7x9", "uralCargo03_9x10", "uralCargo04_7x10", "uralCargo05_8x9"}
	elseif model == "BelazForSale" then
		cab = {"belazCab01", "belazCab02", "belazCab03", "belazCab04", "belazCab05"}
		cargo = {"belazCargo01_6x12", "belazCargo02_8x11", "belazCargo03_11x12", "belazCargo04_6x10", "belazCargo05_9x10"}
	elseif model == "CruiserForSale" then
		cab = {"cruiserCab01", "cruiserCab02"}
		cargo = {"cruiserCargo01_8x11", "cruiserCargo02_8x12"}
	elseif model == "MirotvorecForSale" then
		cab = {"mirotvorecCab01", "mirotvorecCab02", "mirotvorecCab03", "mirotvorecCab04", "mirotvorecCab05"}
		cargo = {"mirotvorecCargo01_7x9", "mirotvorecCargo02_7x10", "mirotvorecCargo03_8x10", "mirotvorecCargo04_7x10", "mirotvorecCargo05_9x11"}
	end
	
	AddPlayerVehicle(model)

	local veh = GetPlayerVehicle()
	if veh then
		veh:SetNewPart("CABIN", cab[random(getn(cab))])
		veh:SetNewPart("BASKET", cargo[random(getn(cargo))])
		veh:SetRandomSkin()
		giveguns()
	end
end

-- Сокращенная функция вывода сообщения в консоль
function con(msg)
	println(msg)
end

-- Безопасная смена скина у объекта
function SafeSetSkinObj(name, num)
	if num == nil then num = 0 end

	local obj = GetEntityByName(name)
	if obj then 
		obj:SetSkin(num)
	else
		LOG("Object "..name.." not found!")
	end
end

-- Добавить машину в город
function AddVehicleToTown(Item, Count)
	local Workshop = GetEntityByName("Town_r0m0_Workshop")
	local Vehicles = Workshop:GetRepositoryByTypename("Vehicles")

	if Count == nil then Count = 1 end

	if Workshop and Vehicles then
		Vehicles:AddItems(Item, Count)
	end
end

-- Добавить машину в город если не выполнен конкретный квест
function AddVehicleToTownIfNotCompleteQuest(Item, Quest, Count)
	local Workshop = GetEntityByName("Town_r0m0_Workshop")
	local Vehicles = Workshop:GetRepositoryByTypename("Vehicles")

	if Count == nil then Count = 1 end

	if Workshop and Vehicles then
		if Quest and not(IsQuestComplete(Quest)) then
			Vehicles:AddItems(Item, Count)
		end
	end
end

-- Добавить кабину или кузов в город
function AddCabinsOrBasketsToTown(Item, Count)
	local Workshop = GetEntityByName("Town_r0m0_Workshop")
	local CabAndBasket = Workshop:GetRepositoryByTypename("CabinsAndBaskets")

	if Count == nil then Count = 1 end

	if Workshop and CabAndBasket then
		CabAndBasket:AddItems(Item, Count)
	end
end

-- Добавить кабину или кузов в город если не выполнен конкретный квест
function AddCabinsOrBasketsToTownIfNotCompleteQuest(Item, Quest, Count)
	local Workshop = GetEntityByName("Town_r0m0_Workshop")
	local CabAndBasket = Workshop:GetRepositoryByTypename("CabinsAndBaskets")

	if Count == nil then Count = 1 end

	if Workshop and CabAndBasket then
		if Quest and not(IsQuestComplete(Quest)) then
			CabAndBasket:AddItems(Item, Count)
		end
	end
end

-- Добавить предмет в город
function AddItemToTown(Item, Count)
	local Shop = GetEntityByName("Town_r0m0_Shop")
	local GunAndGadget = Shop:GetRepositoryByTypename("GunsAndGadgets")

	if Count == nil then Count = 1 end

	if Shop and GunAndGadget then
		GunAndGadget:AddItems(Item, Count)
	end
end

-- Выдать игроку случайный предмет из списка, либо выдать деньги
function AddPlayerRandomItemOrMoney(items, countItems, money)
	if countItems == nil then countItems = 1 end
	
	if random(2) == 1 then
		if items then
			for i = 1, countItems do
				local itemList = items[random(getn(items))]
				AddItemsToPlayerRepository(itemList, 1)
				AddFadingMsgByStrIdFormatted("fm_player_add_thing", itemList)
			end
		end
	else
		if money then
			AddPlayerMoney(money)
		end
	end
end

-- Выдать игроку случайный предмет из списка
function AddPlayerRandomItem(items, countItems)
	if countItems == nil then countItems = 1 end

	if items then
		for i = 1, countItems do
			local itemList = items[random(getn(items))]
			AddItemsToPlayerRepository(itemList, 1)
			AddFadingMsgByStrIdFormatted("fm_player_add_thing", itemList)
		end
	end
end

-- Добавить предметы в кузов машины если там есть место
function AddItemsToRepositoryIfCanPlace(car, prototypeName, amount)
	if amount == nil then amount = 1 end

	local veh = car
	if veh then
		if veh:CanPlaceItemsToRepository(prototypeName, amount) ~=nil then
			veh:AddItemsToRepository(prototypeName, amount)
			return 1
		end
	end
end

function AddItemsToRepositoryIfCanPlaceCycle(car, prototypeName, amount)
	for i = 1, 100 do
		local add = AddItemsToRepositoryIfCanPlace(car, prototypeName, amount)
		if add == 1 then
			break
		end
	end
end

-- Возвращает айтем с определенным шансом
function RandomItem(item, procent)
	if procent == nil then 
		procent = 10000 
	else
		procent = procent * 100
	end

	if procent >= random(0, 10000) then 
		return item
	end
end

-- Отслеживание попаданий по цели
function ObjUnderAttack(ObjTarget, ObjAttack, TriggerName)
	local target = getObj(ObjTarget)
	local car = getObj(ObjAttack)
	local belongTarget = 0
	if car then
		local belong = car:GetBelong()
		if belong > 0 then
			SetVar(ObjTarget.."_UnderAttack", belong)
			if target then
				belongTarget = target:GetBelong()
				if UNDER_ATTACK_DURABILITY == 1 then ObjUnderAttackDurability(ObjTarget, ObjAttack) end
			end

			if belong == 1100 then
				if target then
					if not(target:IsAlive()) then
						if belongTarget == 1089 then TActivate("KillsPMC_USEC") end
						if TriggerName then TActivate(TriggerName) end
					end
				else
					if belongTarget == 1089 then TActivate("KillsPMC_USEC") end
					if TriggerName then TActivate(TriggerName) end
				end
			end
		end
	end
end

function ObjUnderAttackDurability(ObjTarget, ObjAttack)
	local target = getObj(ObjTarget)
	local car = getObj(ObjAttack)
	if car then
		if target then
			local cab = target:GetCabin()
			if cab then
				local cabDurability = cab:GetPropertyById(19).AsInt
				if cabDurability == 0 then
					target:AddModifier("hp", "- 100000")
				end
			end
		end
	end
end

function PlayerUnderAttackDurability()
	local carPlayer = GetPlayerVehicle()
	if carPlayer then
		local cabDurability = carPlayer:GetCabin():GetPropertyById(19).AsInt
		if cabDurability == 0 then
			carPlayer:AddModifier("hp", "- 100000")
		end
	end
end

function UnderAttackDurability(num)
	if num == nil then num = 1 end

	if num == 0 then
		UNDER_ATTACK_DURABILITY = 0
		println("OFF")
	else
		UNDER_ATTACK_DURABILITY = 1
		println("ON")
	end
end

-- Включение дебаг отладки
function Debug(num)
	if num == nil then num = 1 end

	if num == 0 then
		DEBUG = 0
		println("Debug: OFF")
	else
		DEBUG = 1
		println("Debug: ON")
	end
end

-- Проверка, есть ли в кузове игрока место под установленные гаджеты
function IfCanPlaceForGadgets()
	local plf = GetPlayerVehicle()
	local cab_prot = plf:GetCabin():GetProperty("Prototype").AsString

	local cabin = {"bugCab01", "bugCab02", "bugCab03", "molokovozCab01", "molokovozCab02", "molokovozCab03", "uralCab01", "uralCab02", "uralCab03", "uralCab04", "uralCab05", "belazCab01", "belazCab02", "belazCab03", "belazCab04", "belazCab05", "mirotvorecCab01", "mirotvorecCab02", "mirotvorecCab03", "mirotvorecCab04", "mirotvorecCab05", "cruiserCab01", "cruiserCab02"}
	local common_slots = {0, 2, 0, 0, 0, 2, 1, 1, 2, 1, 3, 3, 3, 3, 4, 4, 2, 1, 2, 1, 3, 3, 4}
	local weapon_slots = {1, 0, 1, 1, 2, 1, 2, 2, 2, 2, 3, 1, 1, 2, 3, 3, 2, 3, 3, 3, 4, 2, 3}

	if plf then
		for i=1, getn(cabin) do
			if cab_prot == cabin[i] then
				if plf:CanPlaceItemsToRepository("cooling_system_guns", weapon_slots[i]) ~=nil and plf:CanPlaceItemsToRepository("additional_fuel_tank", common_slots[i]) ~=nil then 
					return 1 
				end
			end
		end
	end
end

-- Добавить список предметов в кузов игрока
function AddListItemsToPlayer(item, amount)
	for i = 1, getn(item) do
		AddItemsToPlayerRepository(item[i], amount[i])
		AddFadingMsgByStrIdFormatted("fm_player_add_thing_count", item[i], amount[i])
	end
end

-- Разместить предмет на стеллаже 
function ShelfAddItemToSlot() 
	local slot = GetVar("ShelfSelectSlot").AsInt
	local item = GetVar("ShelfSelectItem_Slot_"..slot).AsString
	local pos = CVector(0, 0, 0)
	local rot = Quaternion(0.0000, 0.7071, 0.0000, 0.7071)
	local model = "cargo"
	local y, z = 0, 0
	local scale = 0.35

	if item == "potato" then model = "potatoe" y = 0.13 end
	if item == "scrap_metal" or item == "scrap_metal_use" then model = "lom" y = 0.03 end
	if item == "firewood" then model = "koroldrov_r0m0" y = -0.3 scale = 0.3 end
	if item == "oil" or item == "oil_use" then model = "back_exp" y = 0.22 scale = 0.32 end
	if item == "bottle" then model = "bottles" y = -0.06 end
	if item == "fuel" or item == "fuel_full_use" or item == "fuel_nil_use" then model = "kanistr_r0m0" y = 0.03 end
	if item == "machinery" or item == "machinery_use" then model = "rabochee_oborudovanie" y = -0.24 rot = Quaternion(0, 0, 0, 1) end
	if item == "tobacco" then model = "tobacco" y = -0.2 end
	if item == "book" then model = "books" y = -0.09 end
	if item == "electronics" or item == "electronics_use" then model = "mikro" y = -0.29 end
	if item == "doski" then model = "doski_r0m0" scale = 0.28 end
	if item == "details" then model = "detail" scale = 0.15 rot = Quaternion(0, 0, -0.707, 0.707) y = -0.15 end
	if strsub(item, 1, 8) == "item_key" then model = "key_1" scale = 0.5 rot = Quaternion(-0.7071, 0.0000, 0.0000, 0.7071) y = -0.27 end
	if item == "item_disk" then model = "disk" scale = 0.05 rot = Quaternion(-0.495, -0.505, -0.505, 0.495) y = -0.29 end
	if item == "item_disk_exmachina" then model = "disk_exmachina" scale = 0.05 rot = Quaternion(-0.495, -0.505, -0.505, 0.495) y = -0.29 end
	if item == "item_emre_kara" then model = "dragon01gun" y = -0.11 rot = Quaternion(0.0401, -0.7060, 0.0401, 0.7060) end
	if item == "item_fitanyashka" then model = "fitanyashka" scale = 0.3 rot = Quaternion(0.1515, 0.6907, -0.1515, 0.6907) y = -0.32 end
	if item == "item_monolit" then model = "monolit" scale = 0.3 y = -0.28 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_kaktus" then model = "kaktus" y = -0.28 end
	if item == "someTurboAccelerationPusher" then model = "Turboakselerator" y = -0.17 end
	if item == "item_phone" then model = "phone" y = -0.27 scale = 0.3 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_tb" then model = "tb" y = -0.05 scale = 0.3 rot = Quaternion(0.000, -0.970, 0.000, -0.242) end
	if item == "item_stakanyash" then model = "stakanyash" y = -0.29 end
	if item == "item_ananaga" then model = "ananaga" y = -0.29 scale = 0.15 rot = Quaternion(0, -1, 0, 0) end
	if item == "item_vodka" then model = "vodka" y = -0.29 scale = 0.15 rot = Quaternion(0, -1, 0, 0) end
	if item == "item_bitcoin" then model = "bitcoin" y = -0.28 scale = 0.15 rot = Quaternion(-0.495, -0.505, -0.505, 0.495) end
	if item == "item_ex" then model = "ex" y = -0.27 scale = 0.15 rot = Quaternion(-0.495, -0.505, -0.505, 0.495) end
	if item == "ammo_chest_artillerygun" then model = "ammo_chest_artillerygun" y = -0.29 end
	if item == "ammo_chest_rocketgun" then model = "ammo_chest_rocketgun" y = -0.29 end
	if item == "ammo_chest_machinegun" then model = "ammo_chest_machinegun" y = -0.29 end
	if item == "ammo_chest_heavygun" then model = "ammo_chest_heavygun" y = -0.29 end
	if item == "ammo_chest_shotgun" then model = "ammo_chest_shotgun" y = -0.29 end
	if item == "ammo_ballon_lasergun" then model = "ammo_ballon_lasergun" y = -0.29 end
	if item == "ammo_ballon_plasmagun" then model = "ammo_ballon_plasmagun" y = -0.29 end
	if item == "ammo_ballon_turbo" then model = "ammo_ballon_turbo" y = -0.29 scale = 0.3 end
	if item == "item_kubok_kikiki" then model = "kubok_cs_kikiki" y = -0.27 scale = 0.21 end
	if item == "item_metallodetector" then model = "metallodetector" y = 0.26 z = 0.08 scale = 0.3 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_knife_sectarian" then model = "knife_sectarian" y = 0.21 rot = Quaternion(-0.495, -0.505, -0.505, 0.495) end
	if item == "item_christmas_ball_blue" then model = "christmas_ball_blue" y = -0.07 end
	if item == "item_christmas_ball_red" then model = "christmas_ball_red" y = -0.07 end
	if item == "item_christmas_ball_white" then model = "christmas_ball_white" y = -0.07 end
	if item == "item_christmas_star" then model = "christmas_star" y = 0.14 end
	if item == "item_duck" then model = "duck" y = -0.195 scale = 0.5 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_keqing" then model = "keqing_box" y = 0.15 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_chizuru" then model = "chizuru_box" y = 0.25 scale = 0.27 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_poster_keqing" then model = "poster_keqing" y = 0.05 z = 0.75 scale = 0.5 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_poster_exception" then model = "poster_exception" y = 0.05 z = 0.75 scale = 0.5 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_poster_buyanov" then model = "poster_buyanov" y = 0.05 z = 0.75 scale = 0.5 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end
	if item == "item_poster_pavlik" then model = "poster_pavlik" y = 0.05 z = 0.75 scale = 0.5 rot = Quaternion(0.0000, -0.7071, 0.0000, 0.7071) end

	if slot == 1 then pos = CVector(949.643 + z, 255.650 + y, 982.831) end
	if slot == 2 then pos = CVector(949.643 + z, 255.650 + y, 981.115) end
	if slot == 3 then pos = CVector(949.643 + z, 255.650 + y, 978.954) end
	if slot == 4 then pos = CVector(949.643 + z, 255.650 + y, 977.204) end

	if slot == 5 then pos = CVector(949.643 + z, 257.355 + y, 982.831) end
	if slot == 6 then pos = CVector(949.643 + z, 257.355 + y, 981.115) end
	if slot == 7 then pos = CVector(949.643 + z, 257.355 + y, 978.954) end
	if slot == 8 then pos = CVector(949.643 + z, 257.355 + y, 977.204) end

	if slot == 9 then pos = CVector(949.643 + z, 259.081 + y, 982.831) end
	if slot == 10 then pos = CVector(949.643 + z, 259.081 + y, 981.115) end
	if slot == 11 then pos = CVector(949.643 + z, 259.081 + y, 978.954) end
	if slot == 12 then pos = CVector(949.643 + z, 259.081 + y, 977.204) end

	CreateNewSgNodeObject(model, "shelf_item_"..item.."_slot_"..slot, -1, -1, pos, rot, scale)
end

function ShelfRemoveItemToSlot()
	local slot = GetVar("ShelfSelectSlot").AsInt
	local item = GetVar("ShelfSelectItem_Slot_"..slot).AsString

	local i = GetEntityByName("shelf_item_"..item.."_slot_"..slot)
	if i then i:Remove() end
end

-- Установить новую кабину с сохранением брони
function UpdateCab(obj)
	local veh = getObj(obj)
	if veh then
		local cabin = veh:GetCabin()
		local skin = veh:GetSkin()
		if cabin then 
			veh:SetNewPart("CABIN", cabin:GetProperty("Prototype").AsString) 
			SetCabDurability(obj, math.floor(cabin:GetPropertyById(19).AsFloat + 0.5))
		end
		veh:SetSkin(skin)
	end
end

function SetCabDurability(obj, durability)
	local veh = getObj(obj)
	if veh then
		local cabin = veh:GetCabin()
		if cabin then 
			cabin:SetProperty("durability", durability) 
		end
	end
end

-- Застраховать предмет
function InsureItem(item)
	if IfCanGunInSlot(item) ~= 0 then
		local pl = GetPlayerVehicle()
		if pl then
			pl:SetNewPart(GetSlotIfCanGun(item), item.."_insured")
		end
		AddFadingMsgByStrIdFormatted("fm_insure_item", item)
	elseif HasPlayerAmountOfItems(item, 1) then
		RemoveItemsFromPlayerRepository(item)
		AddItemsToPlayerRepository(item.."_insured")
		AddFadingMsgByStrIdFormatted("fm_insure_item", item)
	end
end

-- Проверка, установлено ли конкретное вооружение
function IfCanGunInSlot(gun, param)
	if param == nil then param = 0 end
	local plf = GetPlayerVehicle()
	local parts={"CABIN_","BASKET_","CHASSIS_"}
	local slots={"SMALL_","BIG_","GIANT_","SIDE_","SPECIAL_"}
	local guns={"GUN","GUN_0","GUN_1","GUN_2","WEAPON"}
	local i,j,k=1,1,1
	local l = 0
	while parts[i] do
		while slots[j] do
			while guns[k] do
				local slot = parts[i]..slots[j]..guns[k]
				if plf:CanPartBeAttached(slot) then
					local plfSlot = plf:GetPartByName(slot)
					if plfSlot then 
						local slotGun = plfSlot:GetProperty("Prototype").AsString 
						if slotGun == gun then 
							if param == 0 then
								l = l + 1 
							else
								if slot == "BASKET_SIDE_GUN_0" then
									local basket_side_l = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_L")
									local basket_side_r = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_R")
									local durGun_l = basket_side_l:GetProperty("Durability").AsInt
									local durGun_r = basket_side_r:GetProperty("Durability").AsInt
									local poolshells_l = basket_side_l:GetShellsInPool()
									local poolshells_r = basket_side_r:GetShellsInPool()
									local currentshells_l = basket_side_l:GetShellsInCurrentCharge()
									local currentshells_r = basket_side_r:GetShellsInCurrentCharge()
									if durGun_l ~= 0 and poolshells_l ~= 0 and currentshells_l ~= 0 and durGun_r ~= 0 and poolshells_r ~= 0 and currentshells_r ~= 0 then
										l = l + 1
									end
								else
									local durGun = plfSlot:GetProperty("Durability").AsInt
									local poolshells = plfSlot:GetShellsInPool()
									local currentshells = plfSlot:GetShellsInCurrentCharge()
									if durGun ~= 0 and poolshells ~= 0 and currentshells ~= 0 then
										l = l + 1
									end
								end 
							end
						end
					end
				end
				k=k+1
			end
			k=1
			j=j+1
		end
		j=1
		i=i+1
	end

	return l
end

-- Возвращает слот в которое установлено оружие
function GetSlotIfCanGun(gun)
	local plf = GetPlayerVehicle()
	local parts={"CABIN_","BASKET_","CHASSIS_"}
	local slots={"SMALL_","BIG_","GIANT_","SIDE_","SPECIAL_"}
	local guns={"GUN","GUN_0","GUN_1","GUN_2","WEAPON"}
	local i,j,k=1,1,1
	while parts[i] do
		while slots[j] do
			while guns[k] do
				local slot = parts[i]..slots[j]..guns[k]
				if plf:CanPartBeAttached(slot) then
					local plfSlot = plf:GetPartByName(slot)
					if plfSlot then 
						local slotGun = plfSlot:GetProperty("Prototype").AsString 
						if slotGun == gun then return slot end
					end
				end
				k=k+1
			end
			k=1
			j=j+1
		end
		j=1
		i=i+1
	end
end

-- Включить/выключить спавн дефолтных машин у босса Витали
function FixCrashVitaly(num)
	if num == nil then num = 1 end

	if num == 1 then
		FIX_CRASH_VITALY_GLOBAL = 1
		println("Enable")
	else
		FIX_CRASH_VITALY_GLOBAL = 0
		println("Disable")
	end
end

-- Выполнить подзадачу, если var переменная равна определенному значению
function CompleteSubtaskIfVarEqualValue(quest, var, num)
	if 0 > GetVar(var).AsInt then SetVar(var, 0) end

	SetVar(var, GetVar(var).AsInt + 1)

	if GetVar(var).AsInt >= num then
		CompleteSubtask(quest)
		TActivate("SoundSubtaskComplete") 
	end
end

-- Функция кладёт в кузов оружие со случайным аффиксом
function AddGunWithRandomAffix(GunPrototype, ObjName)
	if ObjName == nil then ObjName = GetPlayerVehicle() end

	local id = CreateNewObject{prototypeName = GunPrototype, objName = "GunWithAffix_"..random(10000), belong = 1100}
    local gun = GetEntityByID( id )

	local ListOfAffixes = {}

	if GunPrototype == "maxim01" or GunPrototype == "fagot01" or GunPrototype == "odin01" or GunPrototype == "elephant01" or GunPrototype == "hammer01" or GunPrototype == "bumblebee01" or GunPrototype == "omega01" or GunPrototype == "big_swingfire01" or GunPrototype == "hurricane01" or GunPrototype == "mrakSideGun" or GunPrototype == "hailSideGun" or GunPrototype == "marsSideGun" or GunPrototype == "zeusSideGun" or GunPrototype == "hunterSideGun" then
		local damageAffixes = { "weak_gun", "deadly_gun", "destructive_gun", "slow_gun", "assault_gun", "rapid_firing_gun", "without_cooling_gun", "with_nitro_cooling_gun", "with_truncated_barrel_gun", "with_enlarged_barrel_gun", "with_long_barrel_gun"}
		table.insert(ListOfAffixes, damageAffixes[random(getn(damageAffixes))])
	else
		ListOfAffixes = GenerateRandomAffixList(random(1,3))
	end

    if ListOfAffixes~=nil then
	    if type(ListOfAffixes)=="table" then
			local l=getn(ListOfAffixes)
			for i=1,l do
				if ListOfAffixes[i] then
					gun:ApplyAffixByName( ListOfAffixes[i] )
				end
			end
		elseif type(ListOfAffixes)=="string" then
			gun:ApplyAffixByName( ListOfAffixes )
		end
    end
    ObjName:AddObjectToRepository(gun)
    return gun
end

-- Установить оружие со случайным аффиксом в конкретный слот
function AddGunToSlotWithRandomAffix(Slot, GunPrototype, ObjName, CountAffix)
	if ObjName == nil then ObjName = GetPlayerVehicle() end
	if CountAffix == nil then CountAffix = random(1,3) end

	local id = CreateNewObject{prototypeName = GunPrototype, objName = "GunToSlotWithAffix_"..random(10000), belong = 1100}
    local gun = GetEntityByID( id )

	local ListOfAffixes = {}

	if GunPrototype == "maxim01" or GunPrototype == "fagot01" or GunPrototype == "odin01" or GunPrototype == "elephant01" or GunPrototype == "hammer01" or GunPrototype == "bumblebee01" or GunPrototype == "omega01" or GunPrototype == "big_swingfire01" or GunPrototype == "hurricane01" or GunPrototype == "mrakSideGun" or GunPrototype == "hailSideGun" or GunPrototype == "marsSideGun" or GunPrototype == "zeusSideGun" or GunPrototype == "hunterSideGun" then
		if ObjName ~= GetPlayerVehicle() then
			if random(1,2) == 1 then
				local damageAffixes = { "weak_gun", "deadly_gun", "destructive_gun", "slow_gun", "assault_gun", "rapid_firing_gun", "without_cooling_gun", "with_nitro_cooling_gun", "with_truncated_barrel_gun", "with_enlarged_barrel_gun", "with_long_barrel_gun"}
				table.insert(ListOfAffixes, damageAffixes[random(getn(damageAffixes))])
			end
		end
	else
		ListOfAffixes = GenerateRandomAffixList(CountAffix)
	end

    if ListOfAffixes ~= nil then
		for i=1,getn(ListOfAffixes) do
			if ListOfAffixes[i] ~= 0 then
				gun:ApplyAffixByName(ListOfAffixes[i])
			end
		end
	end

    ObjName:SetPartByName(Slot, gun)
end

-- Возвращает 1 с определенным шансом в зависимости от кармы дикого
function RandomFromScavCarma()
	local c = GetVar("ScavCarma").AsString
	local carma
	if strsub(c, 1, 1) == "-" then
		carma = tonumber(strsub(c, 2, 5))
	else
		carma = tonumber(strsub(c, 1, 4))
	end
	local rand = random(100)
	local l = 0
	if not(carma == 0) then
		local procent
		procent = carma * 100
		procent = math.floor(procent / 10)
		if strsub(c, 1, 1) == "-" then
			local pr = 35 - procent
			if 5 >= pr then
				if 5 >= rand then
					l = 1
				end
			else
				if pr >= rand then
					l = 1
				end
			end
		else
			local pr = 35 + procent
			if pr >= 75 then
				if 75 >= rand then
					l = 1
				end
			else
				if pr >= rand then
					l = 1
				end
			end
		end
	else
		if 35 >= rand then
			l = 1
		end
	end
	return l
end

-- Возвращает карму дикого
function GetScavCarma()
	local c = GetVar("ScavCarma").AsFloat
	local carma
	if strsub(c, 1, 1) == "-" then
		carma = tonumber(strsub(c, 1, 5))
	else
		carma = tonumber(strsub(c, 1, 4))
	end

	return carma
end

-- Изменяет карму дикого
function AddScavCarma(s, count)
	if strsub(s, 1, 1) == "-" then
		SetVar("ScavCarma", GetScavCarma() - count) 
	else
		SetVar("ScavCarma", GetScavCarma() + count) 
	end
end

-- Возвращает имя профиля игрока (Автор скрипта: E Jet)
function GetProfileName()
	local ProfileName
	local LOGs = io.open("exmachina.log", "r+")
	for logLine in LOGs:lines() do
		local ProfileFND = string.find(logLine, 'Profile ')
		if ProfileFND then
			local ProfileFNDot = string.find(logLine, 'Profile "')
			local ProfileFNDdo = string.find(logLine, '" set')
			ProfileName = string.sub(logLine, ProfileFNDot+9, ProfileFNDdo-1)
			ProfileName = tostring(ProfileName)
		end
	end
	LOGs:close()
	return ProfileName
end

-- Функция удаляет объект из таблицы
function DeleteTableInsuredItems(obj)
	local var = INSURED_ITEMS_GLOBAL
	local gvar = {}
	local l, del = 0, 0
	if type(var)=="table" then
		local count = getn(var)
		if count > 0 then
			for i = 1, count do
				if obj then
					if var[i] ~= obj or del == 1 then
						l = l + 1
						gvar[l] = var[i]
					else
						del = 1
					end
				end
			end
		end
	end
	if getn(gvar) > 0 then
		INSURED_ITEMS_GLOBAL = gvar
	end
end

-- Обновление ежедневных заданий
function UpdateDailyQuests()
	local day = strsub(os.date(), 4, 5)
	if not(GetVar("DailyUpdated").AsString == day) then
		local quests = {"q_daily_kill_pmc", "q_daily_kill_scav", "q_daily_extract"}
		local traiders = {"PRAPOR", "TERAPIST", "MECHANIK"}

		for f = 1, 3 do
			if GetVar(quests[f].."_Status").AsString == "TAKEN" or GetVar(quests[f].."_Status").AsString == "COMPLETE" then 
				if getObj("SoundQuestFail"):IsActivated() == 0 then TActivate("SoundQuestFail") end 
				AddImportantFadingMsgByStrIdFormatted("fm_fail_quest", quests[f])
				local questItem = quests[f].."_"..GetVar(quests[f]).AsString
				if IsQuestItemPresent(questItem) then RemoveQuestItem(questItem) end
				if IsQuestItemPresent(questItem.."_complete") then RemoveQuestItem(questItem.."_complete") end
			end 
			SetVar(quests[f].."_Status", "0")
		end

		local killPMC = math.floor(GetPlayerMoney() / 100 * 0.0020)
		if killPMC > 10 then killPMC = 10 end
		if 3 > killPMC then killPMC = 3 end

		local killScav = math.floor(GetPlayerMoney() / 100 * 0.002)
		if killScav > 20 then killScav = 20 end
		if 3 > killScav then killScav = 3 end

		local extractCount = math.floor(GetPlayerMoney() / 100 * 0.001)
		if extractCount > 5 then extractCount = 5 end
		if 2 > extractCount then extractCount = 2 end

		SetVar("q_daily_kill_pmc_Kills", random(math.floor(killPMC / 1.5), killPMC))
		SetVar("q_daily_kill_pmc_Progress", 0)
		SetVar("q_daily_kill_scav_Kills", random(math.floor(killScav / 1.5), killScav))
		SetVar("q_daily_kill_scav_Progress", 0)
		SetVar("q_daily_extract_Loc", "r1m1")
		SetVar("q_daily_extract_Count", random(math.floor(extractCount / 1.5), extractCount))
		SetVar("q_daily_extract_Progress", 0)

		for q = 1, 3 do
			SetVar(quests[q], traiders[random(3)])
			SetVar(quests[q].."_Status", "CAN_BE_GIVEN")
		end
		SetVar("DailyUpdated", day)
	end
end

-- Выдать награду за выполнения дейлика
function RewardForDailyQuests()
	local LifeItems = {"scrap_metal_use", "machinery_use", "electronics_use"}
	local FuelItems = {"oil_use", "fuel_full_use"}
	local AmmoItems = {"ammo_chest_artillerygun", "ammo_chest_heavygun", "ammo_chest_machinegun", "ammo_chest_rocketgun", "ammo_chest_shotgun", "ammo_ballon_lasergun", "ammo_ballon_plasmagun", "ammo_ballon_turbo"}
	local Guns = {"hornet01", "american_hornet01", "specter01", "pkt01", "kord01", "storm01", "fagot01", "maxim01", "vector01", "vulcan01", "kpvt01", "rapier01", "flag01", "rainmetal01", "elephant01", "odin01", "omega01", "bumblebee01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun", "someTurboAccelerationPusher"}
	local Gadgets = {"cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns", "cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "additional_fuel_tank2", "additional_torque2", "additional_durability2", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}
	local OtherItems = {"potato", "firewood", "bottle", "tobacco", "book",
						"doski", "details", "shkatulka",
						"item_key_gate_thetown", "item_key_gate_vaterland",
						"item_bolts", "item_datchik", "item_hose", "item_insulation", "item_kek", "item_military_tube", "item_nails", "item_nuts", "item_parts", "item_pena", "item_plex", "item_poheram", "item_scotch", "item_screws", "item_thermometer", "item_tube",
						"item_bp", "item_cable", "item_converter", "item_cooler", "item_cpu", "item_drill", "item_dvd", "item_electronics_components", "item_energo_lump", "item_engine", "item_gazan", "item_geiger", "item_gpu", "item_hdd", "item_helix", "item_iridiym", "item_kondesators", "item_lcd", "item_lump", "item_magnet", "item_military_cable", "item_phone", "item_plate", "item_ram", "item_rele", "item_svech", "item_tetris", "item_tplug", "item_ultra_lump", "item_usb", "item_virtex", "item_vpx", "item_wires", "item_controller", "item_gyrotachometer", "item_military_plate", "item_rfid",
						"item_accum", "item_battery_aa", "item_battery_d", "item_car_battery", "item_cyclon", "item_green_battery", "item_powerbank", "item_tank_battery",
						"item_dry", "item_hunter_spich", "item_lighter", "item_prisadka", "item_propan", "item_spich", "item_survl", "item_termit", "item_trotile", "item_wd40_100", "item_wd40_400", "item_zibbo", "item_gunpowder",
						"item_sugar", "item_sausage",
						"item_alkani", "item_hlor", "item_paper", "item_salt", "item_soap", "item_soda", "item_tb", "item_toothpaste",
						"item_diary", "item_diary_s", "item_disk", "item_disk_exmachina", "item_flashdrive", "item_manual", "item_rozvidka", "item_sas", "item_ssd",
						"item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe", "item_afak", "item_ai2", "item_analgin", "item_carmed", "item_grizzly", "item_ifak", "item_med", "item_morfie", "item_salewa", "item_vazelin", "item_zvezda",
						"item_airfilter", "item_ananaga", "item_emre_kara", "item_filter", "item_fitanyashka", "item_pants40grn", "item_paracord", "item_vitalik", "item_vodka", "item_waterfilter", "item_zapal", "item_monolit", "item_kaktus", "item_keqing", "item_carsen", "item_metallodetector", "item_stakanyash", "item_kubok_kikiki", "item_chizuru",
						"item_awl", "item_buldex", "item_fullmaster", "item_handrill", "item_leatherman", "item_metalscissors", "item_nippers", "item_pipe_wrench", "item_pliers", "item_pliers_round", "item_ratchet_wrench", "item_roulet", "item_screw", "item_screw_flat", "item_screw_flat_long", "item_sewing_kit", "item_toolset", "item_wrench",
						"item_bitcoin", "item_cat", "item_chain", "item_chain_gold", "item_chiken", "item_ex", "item_lion", "item_rolex", "item_skullring", "item_teapon", "item_woodclock", "item_silver_skull", "item_vaze", "item_duck"}

	if EVENT == "NEW_YEAR" then 
		local new_items = {"item_christmas_ball_blue", "item_christmas_ball_red", "item_christmas_ball_white", "item_christmas_star"}
		for i = 1, 4 do
			table.insert(OtherItems, new_items[i])
		end
	end

	local count = random(1, 3)
	if GetPlayerMoney() >= 700000 then
		count = random(5, 8)
	elseif GetPlayerMoney() >= 500000 then
		count = random(4, 7)
	elseif GetPlayerMoney() >= 400000 then
		count = random(3, 5)
	elseif GetPlayerMoney() >= 300000 then
		count = random(2, 4)
	elseif GetPlayerMoney() >= 200000 then
		count = random(2, 3)
	elseif 100000 > GetPlayerMoney() then
		count = random(1, 2)
	end

	local ChestId = getObj("PlayerInventory_Lvl_1")
	for i = 1, count do
		local AddItems = {LifeItems[random(3)], FuelItems[random(2)], AmmoItems[random(getn(AmmoItems))], Guns[random(getn(Guns))], Gadgets[random(getn(Gadgets))], OtherItems[random(getn(OtherItems))]}
		local Items = AddItems[random(getn(AddItems))]
		local Item = CreateNewObject{prototypeName = Items, objName = "ItemDaily_"..random(100000), belong = 1100}
		local ItemId = GetEntityByID(Item)

		if ChestId and ItemId then
			ChestId:AddChild(ItemId)
		end
		AddFadingMsgByStrIdFormatted("fm_player_add_thing", Items)
	end		
	
	AddFadingMsgByStrIdFormatted("fm_daily_quest_loot")
end

-- Функция заменяет запчасть машины на новую со случайным аффиксом
function AddRandomAffixToPart(part)
	local playerVeh = GetPlayerVehicle()
	if playerVeh then
		local skin = playerVeh:GetSkin()
		if part == "CABIN" then
			local prot = playerVeh:GetCabin():GetProperty("Prototype").AsString

			local cab_affix_list1 = {"useless_cabin", "rusty_cabin"}
			local cab_affix_list2 = {"excellent_cabin", "advanced_cabin"}
			local cab_affix_list = {cab_affix_list1[random(2)], cab_affix_list2[random(2)]}
			local cab_affix = cab_affix_list[random(2)]

			if GetVar("AffixToPart_Garant").AsInt == 2 then
				cab_affix = cab_affix_list2[random(2)]
				SetVar("AffixToPart_Garant", 0)
			end

			if cab_affix == "useless_cabin" or cab_affix == "rusty_cabin" then
				SetVar("AffixToPart_Garant", GetVar("AffixToPart_Garant").AsInt + 1)
			else
				SetVar("AffixToPart_Garant", 0)
			end

			local id = CreateNewObject{prototypeName = prot, objName = cab_affix.."_affix_"..random(10000), belong = 1100}
			local cab = GetEntityByID( id )
		
			cab:ApplyAffixByName(cab_affix)

			playerVeh:SetPartByName("CABIN", cab)
			playerVeh:SetSkin(skin)
		elseif part == "BASKET" then
			local prot = playerVeh:GetBasket():GetProperty("Prototype").AsString

			local bas_affix_list1 = {"useless_basket", "rusty_basket"}
			local bas_affix_list2 = {"excellent_basket", "advanced_basket"}
			local bas_affix_list = {bas_affix_list1[random(2)], bas_affix_list2[random(2)]}
			local bas_affix = bas_affix_list[random(2)]

			if GetVar("AffixToPart_Garant").AsInt == 2 then
				bas_affix = bas_affix_list2[random(2)]
				SetVar("AffixToPart_Garant", 0)
			end

			if bas_affix == "useless_basket" or bas_affix == "rusty_basket" then
				SetVar("AffixToPart_Garant", GetVar("AffixToPart_Garant").AsInt + 1)
			else
				SetVar("AffixToPart_Garant", 0)
			end

			local id = CreateNewObject{prototypeName = prot, objName = bas_affix.."_affix_"..random(10000), belong = 1100}
			local bas = GetEntityByID( id )
		
			bas:ApplyAffixByName(bas_affix)

			local itemsInRepository = {}
			local AllItems = AllItems()
			local l = 0

			for i = 1, getn(AllItems) do
				if HasPlayerAmountOfItems(AllItems[i], 1) then
					for count = 1, GetItemsAmount(AllItems[i]) do
						l = l + 1
						RemoveItemsFromPlayerRepository(AllItems[i], 1)
						itemsInRepository[l] = AllItems[i]
					end
				end
			end

			playerVeh:SetPartByName("BASKET", bas)
			playerVeh:SetSkin(skin)

			if getn(itemsInRepository) > 0 then
				for i2 = 1, getn(itemsInRepository) do
					AddItemsToPlayerRepository(itemsInRepository[i2], 1)
				end
			end
		end
	end
end

-- Функция заменяет конкретную запчасть машины с конкретным аффиксом
function AddAffixToPart(obj, part, affix, prototype, saveDurability)
	local playerVeh = getObj(obj)
	if playerVeh then
		local skin = playerVeh:GetSkin()
		if part == "CABIN" then
		 	if prototype == nil then prototype = playerVeh:GetCabin():GetProperty("Prototype").AsString end
			local durabilityCab = math.floor(playerVeh:GetCabin():GetProperty("Durability").AsFloat + 0.5)

			local id = CreateNewObject{prototypeName = prototype, objName = affix.."_affix_"..random(10000), belong = 1100}
			local cab = GetEntityByID( id )

			cab:ApplyAffixByName(affix)

			if saveDurability == 1 then
				local durabilityNewCab = cab:GetPropertyById(20).AsFloat
				if durabilityCab > durabilityNewCab then durabilityCab = durabilityNewCab end
				cab:SetProperty("Durability", durabilityCab)
			end

			playerVeh:SetPartByName("CABIN", cab)
			playerVeh:SetSkin(skin)
		elseif part == "BASKET" then
			local basket = playerVeh:GetBasket()
			if basket then
				if prototype == nil then prototype = basket:GetProperty("Prototype").AsString end
				local durabilityBas =  math.floor(basket:GetProperty("Durability").AsFloat + 0.5)

				local id = CreateNewObject{prototypeName = prototype, objName = affix.."_affix_"..random(10000), belong = 1100}
				local bas = GetEntityByID( id )
				
				bas:ApplyAffixByName(affix)

				if saveDurability == 1 then
					local durabilityNewBas = bas:GetPropertyById(20).AsFloat
					if durabilityBas > durabilityNewBas then durabilityBas = durabilityNewBas end
					bas:SetProperty("Durability", durabilityBas)
				end

				local itemsInRepository = {}
				local AllItems = AllItems()
				local l = 0

				for i = 1, getn(AllItems) do
					if HasPlayerAmountOfItems(AllItems[i], 1) then
						for count = 1, GetItemsAmount(AllItems[i]) do
							l = l + 1
							RemoveItemsFromPlayerRepository(AllItems[i], 1)
							itemsInRepository[l] = AllItems[i]
						end
					end
				end

				playerVeh:SetPartByName("BASKET", bas)
				playerVeh:SetSkin(skin)

				if getn(itemsInRepository) > 0 then
					for i2 = 1, getn(itemsInRepository) do
						AddItemsToPlayerRepository(itemsInRepository[i2], 1)
					end
				end
			end
		end
	end
end

-- Возвращает имя прототипа запчасти объекта
function GetPartPrototypeByName(part, obj)
	if obj == nil then obj = GetPlayerVehicle() end
	if obj then
		if part == "CABIN" then
			local prot = obj:GetCabin():GetProperty("Prototype").AsString
			return prot
		elseif part == "BASKET" then
			local prot = obj:GetBasket():GetProperty("Prototype").AsString
			return prot
		end
	end
end

-- Возвращает имя аффикса у части машины
function GetAffixPartByName(part, obj)
	if obj == nil then 
		obj = GetPlayerVehicle() 
	else 
		obj = getObj(obj) 
	end
	if obj then
		if part == "CABIN" then
			local name = obj:GetCabin():GetName()
			if name then
				if strsub(name, 1, 7) == "useless" then return "useless_cabin" end
				if strsub(name, 1, 5) == "rusty" then return "rusty_cabin" end
				if strsub(name, 1, 9) == "excellent" then return "excellent_cabin" end
				if strsub(name, 1, 8) == "advanced" then return "advanced_cabin" end
			end
		elseif part == "BASKET" then
			local basket = obj:GetBasket()
			if basket then
				local name = basket:GetName()
				if name then
					if strsub(name, 1, 7) == "useless" then return "useless_basket" end
					if strsub(name, 1, 5) == "rusty" then return "rusty_basket" end
					if strsub(name, 1, 9) == "excellent" then return "excellent_basket" end
					if strsub(name, 1, 8) == "advanced" then return "advanced_basket" end
				end
			end
		end
	end
end

-- Создает UserInfo.txt
function CreateUserInfoFile()
	--con("CreateUserInfoFile")
	local f = io.open("UserInfo.txt", "w")
	if f then
		f:write("Этот файл создан для возможности сохранять значения переменных после перезапуска игры.\nВсе ваши достижения будут сохранятся здесь и, при необходимости, переносится в последующие версии EFA.\nНе удаляйте и не изменяйте значения переменных без острой необходимости, так как это может привести к ошибкам!", "\n\n")
		f:write("This file is designed to be able to save variable values after restarting the game.\nAll your achievements will be saved here and, if necessary, transferred to subsequent versions of EFA.\nDo not delete or change variable values unless absolutely necessary, as this may lead to errors!", "\n\n")
		f:write("ESCAPE FROM APOCALYPSE VERSION: "..EFA_VERSION.." | BUILD: "..EFA_BUILD, "\n\n")
		f:write("LastDate: "..os.date(), "\n")
		f:write("LaunchDate: "..os.date(), "\n\n")
		f:write("NewGame: 0", "\n")
		f:write("Season: SUMMER", "\n")
		f:write("UserTimeYear: 0", "\n")
		f:write("QuestItemChristmasBall: 0", "\n")
		f:write("QuestItemDiskExMachina: 0", "\n")
		f:write("QuestItem1Year: 0", "\n")
		f:close()
	end
end

function UpdateUserInfoFile()
	if FileExists("UserInfo.txt") ~= nil then 
		--con("UpdateUserInfoFile")
		EditUserInfo("ESCAPE", "ESCAPE FROM APOCALYPSE VERSION: "..EFA_VERSION.." | BUILD: "..EFA_BUILD)
		EditUserInfo("Last", "LastDate: "..ReadValueUserInfo("Launch"))
		EditUserInfo("Launch", "LaunchDate: "..os.date())
		if IsUserInfoLineExists("NewGame") == nil then EditUserInfo("NewGame", "NewGame: 0") end
		if IsUserInfoLineExists("Season") == nil then EditUserInfo("Season", "Season: SUMMER") end
		if IsUserInfoLineExists("UserTimeYear") == nil then EditUserInfo("UserTimeYear", "UserTimeYear: 0") end
		if IsUserInfoLineExists("QuestItemChristmasBall") == nil then EditUserInfo("QuestItemChristmasBall", "QuestItemChristmasBall: 0") end
		if IsUserInfoLineExists("QuestItemDiskExMachina") == nil then EditUserInfo("QuestItemDiskExMachina", "QuestItemDiskExMachina: 0") end
		if IsUserInfoLineExists("QuestItem1Year") == nil then EditUserInfo("QuestItem1Year", "QuestItem1Year: 0") end
	else
		CreateUserInfoFile()
	end
end

function ReadUserInfo(l, s)
	if s == nil then s = 0 end
	local f = io.open("UserInfo.txt", "r+")
	if f then
		for logLine in f:lines() do
			local find = string.find(logLine, l)
			if find then
				local line = tostring(string.sub(logLine, find+s))
				return line
			end
		end	
		f:close()
	end
end

function EditUserInfo(l, s)
    local file = io.open("UserInfo.txt", "r+")
    local fileContent = {}
	local str, len = 0, 0
	if file then
		for line in file:lines() do
			str = str + 1
			table.insert (fileContent, line)
			if ReadUserInfo(l) ~= nil then
				local find = string.find(line, l)
				if find then len = str end
			end
		end
		file:close()
	end
	
	if ReadUserInfo(l) ~= nil then
		--con("OLD: "..fileContent[len])
		fileContent[len] = s
		--con("NEW: "..fileContent[len])
		local file = io.open("UserInfo.txt", "w")
		if file then
			for index, value in ipairs(fileContent) do
				file:write(value..'\n')
			end
			file:close()
		end
	else
		--con("ADD: "..s)
		local file = io.open("UserInfo.txt", "a")
		if file then
			file:write(s.."\n")
			file:close()
		end
	end
end

function FileExists(path)
	local f = io.open(path, "r")
	if f ~= nil then
		f:close() 
		return 1
	else 
		return nil
	end
end

function ReadValueUserInfo(l)
	local line = ReadUserInfo(l)
	if line ~= nil then
		local sum = string.find(line, ":")
		if sum then
			local value = ReadUserInfo(l, sum + 1)
			if value then 
				return value
			end
		end
	end
end

function IsUserInfoLineExists(l)
	if ReadValueUserInfo(l) == "" or ReadUserInfo(l) == nil then
		return nil
	else
		return 1
	end
end

-- Возвращает 1 если в спец. слоте есть предмет. Если его нет в слоте, но есть в кузове, вернет 2.
function IsHasPlayerAmountOfSpecItems(item)
	local pl = GetPlayerVehicle()
	if pl then
		local specSlot = pl:GetPartByName("BASKET_SPECIAL_ITEMS")
		local prot
		if specSlot then
			prot = specSlot:GetProperty("Prototype").AsString
			if prot == item then
				return 1
			end
		end
		if HasPlayerAmountOfItems(item, 1) and prot ~= item then
			return 2
		end
	end
end

-- Удаляет спец. предмет из спец. слота. Если его нет в слоте, но есть в кузове, удалит из кузова.
function RemoveSpecItemsFromSlot(item)
	local pl = GetPlayerVehicle()
	if pl then
		local specSlot = pl:GetPartByName("BASKET_SPECIAL_ITEMS")
		local prot
		if specSlot then
			prot = specSlot:GetProperty("Prototype").AsString
			if prot == item then
				specSlot:Remove()
			end
		end
		if HasPlayerAmountOfItems(item, 1) and prot ~= item then
			RemoveItemsFromPlayerRepository(item, 1)
		end
	end
end

-- Возвращает бинды из keybindings.lua в профиле игрока
function GetKeyBind(name)
	local Key
	local path = "data/profiles/"..GetProfileName().."/keybindings.lua"
	local exsits = FileExists(path)
	if exsits then
		local file = io.open(path, "r+")
		for logLine in file:lines() do
			local find = string.find(logLine, name)
			if find then
				local s1 = string.find(logLine, 'KEY_')
				if s1 then
					s1 = tostring(string.sub(logLine, s1))
					local s2 = string.find(s1, '"')
					if s2 then
						Key = tostring(string.sub(s1, 1, s2-1))
					end
				end
			end
		end
		file:close()
		return Key
	end
end

-- Активация триггеров при загрузке сохранения
function IfLoadSave()
	local mapName = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	if mapName == "r0m0" then
		LOAD_MAP = 1
	end
end

-- Создание дикого
function CreateScavVehicle(name, pos, path)
	local enemylist = {"Sml1CarScav", "Sml2CarScav", "Sml3CarScav", "Sml4CarScav", "Scout1CarScav", "Scout2CarScav", "Scout3CarScav", "Fighter1CarScav", "Fighter2CarScav", "Hunter2CarScav"}
	local smallgunlist = {"hornet01","specter01","storm01","pkt01","kord01"}
	local biggunlist = {"vector01","vulcan01","rapier01"}

	local rotarr={
		Quaternion(-0.029, 0.679, -0.021, 0.734),
		Quaternion(0.001, 0.626, 0.002, 0.780),
		Quaternion(-0.001, 0.558, -0.001, 0.830),
		Quaternion(-0.029, -0.025, 0.005, 0.999),
		Quaternion(-0.001, -0.346, 0.001, 0.938),
		Quaternion(-0.001, -0.724, -0.000, 0.690),
		Quaternion(-0.025, -0.992, -0.005, 0.125),
		Quaternion(0.002, -0.914, -0.001, 0.405),
		Quaternion(-0.003, -1.000, -0.006, -0.015)}

	local model = enemylist[random(getn(enemylist))]
	TeamCreate(name, 1082, pos, {model}, nil, 1)

	local sv = GetEntityByName (name.."_vehicle_0")
	if sv then
		sv:SetNewPart("CABIN_SMALL_GUN", smallgunlist[exrandom(getn(smallgunlist))])
		if model == "Fighter2CarScav" or model == "Hunter2CarScav" then
			if 30 >= random(100) then
				sv:SetNewPart("CABIN_BIG_GUN_1", biggunlist[exrandom(getn(biggunlist))])
			end
		end
		AddAmmoItemsForGuns(sv, random(0,1))
		sv:SetRotation(rotarr[random(getn(rotarr))])
	end
	if path then
		local sv_p = GetEntityByName (name)
		local count_path = getn(path)
		if sv_p then
			sv_p:StackOpen()
			for d=1, count_path do
				sv_p:SetDestination(path[random(count_path)])
			end
			sv_p:StackLoop()
			sv_p:StackClose()
		end
	end

	SetVar(name.."_vehicle_0_UnderAttack", 0)

	if GetVar("PlayerBelong").AsString == "SCAV" and not(1.5 >= GetTolerance(1100, 1082)) then
		SetVar(name.."_NPC", "Scav_"..random(10).."_NPC")
		SetVar("DlgMoney_"..name.."_vehicle_0", RandomFromScavCarma())
		SetVar("DlgMoneyAngry_"..name.."_vehicle_0", random(2))
		SetVar("DlgUseItems_"..name.."_vehicle_0", RandomFromScavCarma())
		SetVar("DlgUseItems_15000_"..name.."_vehicle_0", RandomFromScavCarma())
		SetVar("DlgUseItems_20000_"..name.."_vehicle_0", random(2))
		SetVar("DlgUseItemsAngry_"..name.."_vehicle_0", random(2))
		SetVar("DlgFollow_"..name.."_vehicle_0", RandomFromScavCarma())
		local sv_a = GetEntityByName (name.."_vehicle_0")
		if sv_a then
			for i = 1, 5 do
				local ammoItems = {"ammo_chest_artillerygun", "ammo_chest_heavygun", "ammo_chest_machinegun", "ammo_chest_rocketgun", "ammo_chest_shotgun"}
				if sv_a:HasAmountOfItemsInRepository(ammoItems[i], 1) then
					SetVar("DlgAmmo_"..name.."_vehicle_0", 1)
					break
				else
					SetVar("DlgAmmo_"..name.."_vehicle_0", 0)
				end
			end
		end
	end
	
	if GetVar("PlayerBelong").AsString == "SCAV" and not(1.5 >= GetTolerance(1100, 1082)) then
		local tr = getObj("ScavCarDist")
		if tr and tr:IsActivated() == 0 then TActivate("ScavCarDist") end
	end
end











