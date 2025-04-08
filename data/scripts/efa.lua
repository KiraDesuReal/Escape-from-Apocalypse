-- Special for Escape from Apocalypse

if EFA_VERSION == nil then
	EFA_VERSION = "0.91 BETA"
	EFA_BUILD = "250407"
	WIPE = 0

	LOG("ESCAPE FROM APOCALYPSE VERSION: "..EFA_VERSION.." | BUILD: "..EFA_BUILD)
end

if R4M1_exit == nil then
	R4M1_exit = 0
end

if R0M1_exit == nil then
	R0M1_exit = 0
end

-- Счетчик количества рейдов 
if COUNT_RAIDS == nil then
	COUNT_RAIDS = 0
end

-- Таймер ящика диких
if CHESTSCAVS_TIMER_HOUR_GLOBAL == nil then
	CHESTSCAVS_TIMER_HOUR_GLOBAL = 0
end

if CHESTSCAVS_TIMER_MINUTE_GLOBAL == nil then
	CHESTSCAVS_TIMER_MINUTE_GLOBAL = 0
end

if CHESTSCAVS_TIMER_SECOND_GLOBAL == nil then
	CHESTSCAVS_TIMER_SECOND_GLOBAL = 0
end

-- Активен ли ящик диких
if CHESTSCAVS_SEARCH_GLOBAL == nil then
	CHESTSCAVS_SEARCH_GLOBAL = 0
end

-- Таймер генератора
if GENERATOR_TIMER_HOUR_GLOBAL == nil then
	GENERATOR_TIMER_HOUR_GLOBAL = 0
end

if GENERATOR_TIMER_MINUTE_GLOBAL == nil then
	GENERATOR_TIMER_MINUTE_GLOBAL = 0
end

if GENERATOR_TIMER_SECOND_GLOBAL == nil then
	GENERATOR_TIMER_SECOND_GLOBAL = 0
end

-- Лвл генератора
if GENERATOR_LVL_GLOBAL == nil then
	GENERATOR_LVL_GLOBAL = 0
end

-- Включен/выключен генератор
if GENERATOR_ON_GLOBAL == nil then
	GENERATOR_ON_GLOBAL = 0
end

-- Гараж
if GARAGE_CRAFTING_TIME_HOUR_GLOBAL == nil then
	GARAGE_CRAFTING_TIME_HOUR_GLOBAL = 0
end

if GARAGE_CRAFTING_TIME_MINUTE_GLOBAL == nil then
	GARAGE_CRAFTING_TIME_MINUTE_GLOBAL = 0
end

if GARAGE_CRAFTING_TIME_SECOND_GLOBAL == nil then
	GARAGE_CRAFTING_TIME_SECOND_GLOBAL = 0
end

if GARAGE_CRAFT_GLOBAL == nil then
	GARAGE_CRAFT_GLOBAL = 0
end

if GARAGE_CRAFT_PAUSE_GLOBAL == nil then
	GARAGE_CRAFT_PAUSE_GLOBAL = 0
end

-- Белонг игрока
if PLAYER_BELONG_GLOBAL == nil then
	PLAYER_BELONG_GLOBAL = 0
end

-- Таймер машины диких
if SCAV_CAR_TIME_HOUR == nil then
	SCAV_CAR_TIME_HOUR = 0
end

if SCAV_CAR_TIME_MINUTE == nil then
	SCAV_CAR_TIME_MINUTE = 0
end

if SCAV_CAR_TIME_SECOND == nil then
	SCAV_CAR_TIME_SECOND = 0
end

-- Карма диких
if SCAV_CARMA_GLOBAL == nil then
	SCAV_CARMA_GLOBAL = "0.00"
end

-- Дебаг
if DEBUG == nil then
	DEBUG = 0
end

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

	local smallgun={hornet,"specter01","pkt01","kord01","maxim01","storm01","fagot01"}
	local biggun={"rapier01","vector01","vulcan01","kpvt01","elephant01","odin01","bumblebee01","omega01"}
	local giantgun={"cyclops01","octopus01","hammer01"}
	local sidegun={"hunterSideGun","marsSideGun","mrakSideGun"}
	local side_random = 0

	local player = GetVar("PlayerCar").AsString
	if player == "Molokovoz" then
		side_random = 0
		biggun[getn(biggun) + 1] = "rainmetal01"
	elseif player == "Ural" or player == "Belaz" or player == "Mirotvorec" or player == "Cruiser" then
		biggun={"rapier01","vector01","vulcan01","kpvt01","elephant01","odin01","bumblebee01","omega01","flag01","rainmetal01","hurricane01"}
		giantgun={"cyclops01","octopus01","rocketLauncher","big_swingfire01","hammer01"}
		side_random = random(4) 
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
					gun=biggun[random(getn(biggun))]
				elseif j==3 then
					gun=giantgun[exrandom(getn(giantgun))]
				elseif j==4 then
					if side_random == 1 then		
						gun=sidegun[exrandom(3)]
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
function ItemUse(ammo_used)
	HealItems()
	AddKeysQuestItem()
	UseAmmoItems(ammo_used)
end

function HealItems()
	local HealItems = {"scrap_metal_use", "machinery_use", "electronics_use"}
	local FuelItems = {"oil_use", "fuel_full_use"}
	local HealItemsToPlayer, FuelItemsToPlayer = {}, {}
	local heal, fuel = 0, 0

	for h = 1, 3 do
		if HasPlayerAmountOfItems(HealItems[h], 1) then
			heal = heal + 1
			HealItemsToPlayer[heal] = HealItems[h]
		end
	end

	for f = 1, 2 do
		if HasPlayerAmountOfItems(FuelItems[f], 1) then
			fuel = fuel + 1
			FuelItemsToPlayer[fuel] = FuelItems[f]
		end
	end

	if HealItemsToPlayer[1] then
		UseRestoreItem(HealItemsToPlayer[1])
	end

	if FuelItemsToPlayer[1] then
		UseRestoreItem(FuelItemsToPlayer[1])
	end
end

function UseRestoreItem(item)
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
				AddFadingMsgByStrIdFormatted(fm, procent, healthcar + procent, procent_d_cab, d_pr_cab, procent_d_bas, d_pr_bas)
				RemoveItemsFromPlayerRepository(item, 1)
			end
		end
	else
		procent = fuelmax / 100 * procent_fuel_item
		hp_pr = fuelmax / 100 * 25
		if vehP then 
			if hp_pr >= fuelcar then
				vehP:AddModifier("fuel", "+ "..procent ) 
				CreateEffectTTLed("ET_PS_USE_OIL", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted(fm, procent, fuelcar + procent)
				RemoveItemsFromPlayerRepository(item, 1)
			end
		end
	end
end

function AddKeysQuestItem()
	if HasPlayerAmountOfItems("item_key_gate_thetown", 1) and not(IsQuestItemPresent("quest_item_key_gate_thetown")) then
		AddQuestItem("quest_item_key_gate_thetown")
		AddFadingMsgByStrIdFormatted("fm_item_to_quest_items", "item_key_gate_thetown")
		RemoveItemsFromPlayerRepository("item_key_gate_thetown", 1)
		SetVar("item_key_gate_thetown_used", 10)
		SoundFadingMsg()
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
			if poolshells == 0 and currentshells == 0 then
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then
					if prot == "hornet01" or prot == "american_hornet01" or prot == "specter01" or prot == "pkt01" or prot == "kord01"  then
						if prot == "hornet01" then small_gun:SetShellsInPool(350) end
						if prot == "american_hornet01" then small_gun:SetShellsInPool(420) end
						if prot == "specter01" then small_gun:SetShellsInPool(350) end
						if prot == "pkt01" then small_gun:SetShellsInPool(480) end
						if prot == "kord01" then small_gun:SetShellsInPool(275) end
						RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) then
					if prot == "storm01" then
						if prot == "storm01" then small_gun:SetShellsInPool(26) end
						RemoveItemsFromPlayerRepository("ammo_chest_shotgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_SHOTGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1200)
						if ammo_used == 1 then SetVar("Use_AmmoChestShotGun", GetVar("Use_AmmoChestShotGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_lasergun", 1) then
					if prot == "maxim01" then
						if prot == "maxim01" then small_gun:SetShellsInPool(105) end
						RemoveItemsFromPlayerRepository("ammo_ballon_lasergun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if ammo_used == 1 then SetVar("Use_AmmoBallonLaserGun", GetVar("Use_AmmoBallonLaserGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) then
					if prot == "fagot01" then
						if prot == "fagot01" then small_gun:SetShellsInPool(15) end
						RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun", GetVar("Use_AmmoBallonPlasmaGun").AsInt+1) end
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
			if poolshells == 0 and currentshells == 0 then
				if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) then
					if prot == "rapier01" or prot == "rainmetal01" then
						if prot == "rapier01" then big_gun:SetShellsInPool(45) end
						if prot == "rainmetal01" then big_gun:SetShellsInPool(320) end
						RemoveItemsFromPlayerRepository("ammo_chest_heavygun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_HEAVYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 2500)
						if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun", GetVar("Use_AmmoChestHeavyGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then
					if prot == "vector01" or prot == "vulcan01" or prot == "kpvt01" then
						if prot == "vector01" then big_gun:SetShellsInPool(405) end
						if prot == "vulcan01" then big_gun:SetShellsInPool(1050) end
						if prot == "kpvt01" then big_gun:SetShellsInPool(780) end
						RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) then
					if prot == "flag01" then
						if prot == "flag01" then big_gun:SetShellsInPool(22) end
						RemoveItemsFromPlayerRepository("ammo_chest_shotgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_SHOTGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1200)
						if ammo_used == 1 then SetVar("Use_AmmoChestShotGun", GetVar("Use_AmmoChestShotGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) then
					if prot == "bumblebee01" or prot == "omega01" then
						if prot == "bumblebee01" then big_gun:SetShellsInPool(70) end
						if prot == "omega01" then big_gun:SetShellsInPool(54) end
						RemoveItemsFromPlayerRepository("ammo_chest_artillerygun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_ARTILLERYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1055)
						if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun", GetVar("Use_AmmoChestArtilleryGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then
					if prot == "hurricane01" then
						if prot == "hurricane01" then big_gun:SetShellsInPool(24) end
						RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
						if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_lasergun", 1) then
					if prot == "odin01" then
						if prot == "odin01" then big_gun:SetShellsInPool(80) end
						RemoveItemsFromPlayerRepository("ammo_ballon_lasergun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if ammo_used == 1 then SetVar("Use_AmmoBallonLaserGun", GetVar("Use_AmmoBallonLaserGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) then
					if prot == "elephant01" then
						if prot == "elephant01" then big_gun:SetShellsInPool(19) end
						RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun", GetVar("Use_AmmoBallonPlasmaGun").AsInt+1) end
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
			if poolshells == 0 and currentshells == 0 then
				if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) then
					if prot == "cyclops01" then
						if prot == "cyclops01" then giant_gun:SetShellsInPool(29) end
						RemoveItemsFromPlayerRepository("ammo_chest_heavygun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_HEAVYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 2500)
						if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun", GetVar("Use_AmmoChestHeavyGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then
					if prot == "octopus01" then
						if prot == "octopus01" then giant_gun:SetShellsInPool(480) end
						RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then
					if prot == "rocketLauncher" or prot == "big_swingfire01" then
						if prot == "rocketLauncher" then giant_gun:SetShellsInPool(24) end
						if prot == "big_swingfire01" then giant_gun:SetShellsInPool(24) end
						RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
						if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_ballon_plasmagun", 1) then
					if prot == "hammer01" then
						if prot == "hammer01" then giant_gun:SetShellsInPool(15) end
						RemoveItemsFromPlayerRepository("ammo_ballon_plasmagun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_BALLON", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1920)
						if ammo_used == 1 then SetVar("Use_AmmoBallonPlasmaGun", GetVar("Use_AmmoBallonPlasmaGun").AsInt+1) end
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
		if poolshells_l == 0 and currentshells_l == 0 or poolshells_r == 0 and currentshells_r == 0 then
			if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then
				if prot == "hailSideGun" or prot == "hunterSideGun" or prot == "mrakSideGun" then
					if prot == "hailSideGun" then basket_side_l:SetShellsInPool(18) basket_side_r:SetShellsInPool(18) end
					if prot == "hunterSideGun" then basket_side_l:SetShellsInPool(8) basket_side_r:SetShellsInPool(8) end
					if prot == "mrakSideGun" then basket_side_l:SetShellsInPool(14) basket_side_r:SetShellsInPool(14) end
					RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
					AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
					CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
					if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
				end
			end
			if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) then
				if prot == "marsSideGun" then
					if prot == "marsSideGun" then basket_side_l:SetShellsInPool(6) basket_side_r:SetShellsInPool(6) end
					RemoveItemsFromPlayerRepository("ammo_chest_artillerygun", 1)
					AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
					CreateEffectTTLed("ET_S_USE_RELOAD_ARTILLERYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1055)
					if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun", GetVar("Use_AmmoChestArtilleryGun").AsInt+1) end
				end
			end
		end
	end

	local basket_special_weapon = GetPlayerVehicle():GetPartByName("BASKET_SPECIAL_WEAPON")	
	if basket_special_weapon then
		local prot = basket_special_weapon:GetProperty("Prototype").AsString
		local poolshells = basket_special_weapon:GetShellsInPool()
		local currentshells = basket_special_weapon:GetShellsInCurrentCharge()
		if poolshells == 0 and currentshells == 0 then
			if HasPlayerAmountOfItems("ammo_ballon_turbo", 1) then
				if prot == "someTurboAccelerationPusher" then
					if prot == "someTurboAccelerationPusher" then basket_special_weapon:SetShellsInPool(29) end
					RemoveItemsFromPlayerRepository("ammo_ballon_turbo", 1)
					AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
					CreateEffectTTLed("ET_S_USE_RELOAD_BALLON_TURBO", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1252)
					if ammo_used == 1 then SetVar("Use_AmmoBallonTurbo", GetVar("Use_AmmoBallonTurbo").AsInt+1) end
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
				if small_gun == "hornet01" or small_gun == "american_hornet01" or small_gun == "specter01" or small_gun == "pkt01" or small_gun == "kord01" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if small_gun == "storm01" then
					vehicle:AddItemsToRepository("ammo_chest_shotgun", count)
				end
				if small_gun == "maxim01" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_lasergun", count)
					end
				end
				if small_gun == "fagot01" then
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
				if big_gun == "rapier01" or big_gun == "rainmetal01" then
					vehicle:AddItemsToRepository("ammo_chest_heavygun", count)
				end
				if big_gun == "vector01" or big_gun == "vulcan01" or big_gun == "kpvt01" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if big_gun == "flag01" then
					vehicle:AddItemsToRepository("ammo_chest_shotgun", count)
				end
				if big_gun == "bumblebee01" or big_gun == "omega01" then
					vehicle:AddItemsToRepository("ammo_chest_artillerygun", count)
				end
				if big_gun == "hurricane01" then
					vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
				end
				if big_gun == "odin01" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_lasergun", count)
					end
				end
				if big_gun == "elephant01" then
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
				if giant_gun == "cyclops01" then
					vehicle:AddItemsToRepository("ammo_chest_heavygun", count)
				end
				if giant_gun == "octopus01" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if giant_gun == "rocketLauncher" or giant_gun == "big_swingfire01" then
					vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
				end
				if giant_gun == "hammer01" then
					if random(2) == 1 then
						vehicle:AddItemsToRepository("ammo_ballon_plasmagun", count)
					end
				end
			end
		end

		if vehicle:GetPartByName("BASKET_SIDE_GUN_0") then
			side_gun = vehicle:GetPartByName("BASKET_SIDE_GUN_0"):GetProperty("Prototype").AsString
			if side_gun == "hailSideGun" or side_gun == "hunterSideGun" or side_gun == "mrakSideGun" then
				vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
			end
			if side_gun == "marsSideGun" then
				vehicle:AddItemsToRepository("ammo_chest_artillerygun", count)
			end
		end

		if vehicle:GetPartByName("BASKET_SPECIAL_WEAPON") then
			special_gun = vehicle:GetPartByName("BASKET_SPECIAL_WEAPON"):GetProperty("Prototype").AsString
			if special_gun == "someTurboAccelerationPusher" then
				vehicle:AddItemsToRepository("ammo_ballon_turbo", count)
			end
		end
	end
end

-- Генерация лута в ящиках 
function CreateBarrelLootBox(name, pos)

	local ex1 = {"potato", "scrap_metal", "firewood", "oil", "bottle", "fuel", "tobacco", "doski", "details"}
	local ex2 = {"book", "shkatulka", "machinery", "electronics"}

	local use1 = {"scrap_metal_use", "machinery_use", "oil_use", "fuel_nil_use"}
	local use2 = {"fuel_full_use", "machinery_use", "electronics_use", "item_key_gate_basefelix", "item_key_gate_thetown"}

	local ammo1 = {"ammo_chest_heavygun", "ammo_chest_machinegun", "ammo_chest_shotgun"}
	local ammo2 = {"ammo_chest_heavygun", "ammo_chest_rocketgun", "ammo_chest_artillerygun", "ammo_ballon_lasergun", "ammo_ballon_plasmagun", "ammo_ballon_turbo"}

	local building1 = {"item_bolts", "item_hose", "item_insulation", "item_nails", "item_nuts", "item_parts", "item_plex", "item_poheram", "item_scotch", "item_screws", "item_tube"}
	local building2 = {"item_kek", "item_military_tube", "item_pena", "item_thermometer", "item_datchik"}

	local electronics1 = {"item_cable", "item_cooler", "item_cpu", "item_dvd", "item_electronics_components", "item_energo_lump", "item_gazan", "item_geiger", "item_helix", "item_kondesators", "item_lump", "item_magnet", "item_phone", "item_plate", "item_ram", "item_rele", "item_svech", "item_tplug", "item_ultra_lump", "item_usb", "item_wires"}
	local electronics2 = {"item_hdd", "item_drill", "item_lcd", "item_military_cable", "item_bp", "item_ssd", "item_sas", "item_engine", "item_iridiym", "item_tetris", "item_vpx", "item_virtex", "item_converter", "item_gpu"}

	local energy1 = {"item_accum", "item_battery_aa", "item_battery_d", "item_powerbank"}
	local energy2 = {"item_powerbank", "item_green_battery", "item_cyclon", "item_car_battery", "item_tank_battery"}

	local flammable1 = {"item_hunter_spich", "item_lighter", "item_spich", "item_survl", "item_wd40_100", "item_wd40_400", "item_zibbo", "item_gunpowder"}
	local flammable2 = {"item_trotile", "item_dry", "item_gunpowder", "item_propan", "item_prisadka", "item_termit"}

	local household1 = {"item_paper", "item_stakanyash", "item_salt", "item_soap", "item_tb", "item_toothpaste"}
	local household2 = {"item_soap", "item_salt", "item_alkani", "item_hlor"}

	local info1 = {"item_disk", "item_manual", "item_diary_s", "item_hdd", "item_flashdrive", "item_diary", "item_disk_exmachina", "item_ssd", "item_sas", "item_rozvidka"}

	local medical1 = {"item_h2o2", "item_medical_tools", "item_naci", "item_suringe"}
	local medical2 = {"item_medical_tools", "item_naci", "item_h2o2", "item_suringe", "item_c6h8o6",  "item_aquapeps", "item_oftalmaskop", "item_ledx"}

	local other1 = {"item_zapal", "item_stakanyash", "item_carsen", "item_vodka", "item_monolit", "item_kaktus", "item_filter", "item_emre_kara", "item_waterfilter", "item_keqing", "item_metallodetector", "item_fitanyashka", "item_paracord", "item_vitalik", "item_airfilter", "item_ananaga"}

	local tools1 = {"item_metalscissors", "item_nippers", "item_pliers", "item_pliers_round", "item_roulet", "item_screw", "item_screw_flat", "item_screw_flat_long", "item_wrench"}
	local tools2 = {"item_screw_flat_long", "item_leatherman", "item_toolset", "item_fullmaster", "item_awl", "item_sewing_kit", "item_handrill", "item_buldex", "item_pipe_wrench", "item_ratchet_wrench", "item_vitalik"}
	
	local valuables1 = {"item_chain", "item_carsen", "item_monolit", "book", "item_kaktus", "shkatulka", "item_ex", "item_teapon", "item_emre_kara", "item_keqing", "item_metallodetector", "item_cat", "item_rolex", "item_chain_gold", "item_fitanyashka", "item_chiken", "item_skullring", "item_vitalik", "item_ananaga", "item_lion", "item_bitcoin"}

	local gun1 = {"hornet01", "specter01", "pkt01", "storm01", "vector01", "vulcan01", "kpvt01", "rapier01", "bumblebee01"} 
	local gun2 = {"pkt01", "kord01", "maxim01", "fagot01", "someTurboAccelerationPusher", "omega01", "elephant01", "flag01", "odin01", "rainmetal01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun", "marsSideGun"}
	
	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}
	local gadget3 = {"cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}

	local exlusive = {}
	local loc
	local mapName = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	if mapName == "r1m1" then loc = "r1m1" end

	if loc == "r1m1" then
		exlusive = {"potato", "firewood", "item_pants40grn"}
	end

	CreateNewDummyObject("plastic_barrel", name, -1, -1, pos, Quaternion(0, 0, 0, 0),1)

	local Barrel = GetEntityByName(name)
	local BarrelPos = Barrel:GetPosition()
	BarrelPos.y = BarrelPos.y - 1.850
	Barrel:SetPosition(BarrelPos)

	local Chest = CreateNewObject{prototypeName = "opacityChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)

	local count = random(5)
	for l=1,count do
		local ex_rand = {ex1[random(getn(ex1))], ex1[random(getn(ex1))], ex2[exrandom(getn(ex2))]}
		local use_rand = {use1[random(getn(use1))], use1[random(getn(use1))], use2[exrandom(getn(use2))]}
		local ammo_rand = {ammo1[random(getn(ammo1))], ammo1[random(getn(ammo1))], ammo2[exrandom(getn(ammo2))]}
		local building_rand = {building1[random(getn(building1))], building1[random(getn(building1))], building2[exrandom(getn(building2))]}
		local electronics_rand = {electronics1[random(getn(electronics1))], electronics1[random(getn(electronics1))], electronics2[exrandom(getn(electronics2))]}
		local energy_rand = {energy1[random(getn(energy1))], energy1[random(getn(energy1))], energy2[exrandom(getn(energy2))]}
		local flammable_rand = {flammable1[random(getn(flammable1))], flammable1[random(getn(flammable1))], flammable2[exrandom(getn(flammable2))]}
		local household_rand = {household1[random(getn(household1))], household1[random(getn(household1))], household2[exrandom(getn(household2))]}
		local medical_rand = {medical1[random(getn(medical1))], medical2[exrandom(getn(medical2))], medical2[exrandom(getn(medical2))]}
		local tools_rand = {tools1[random(getn(tools1))], tools1[random(getn(tools1))], tools2[exrandom(getn(tools2))]}
		local gun_rand = {gun1[random(getn(gun1))], gun1[random(getn(gun1))], gun2[exrandom(getn(gun2))]}
		local gadget_rand = {gadget1[random(getn(gadget1))], gadget2[random(getn(gadget2))], gadget3[random(getn(gadget3))]}

		local items = {ex_rand[exrandom(getn(ex_rand))], use_rand[exrandom(getn(use_rand))], ammo_rand[exrandom(getn(ammo_rand))], building_rand[exrandom(getn(building_rand))], electronics_rand[exrandom(getn(electronics_rand))], energy_rand[exrandom(getn(energy_rand))], flammable_rand[exrandom(getn(flammable_rand))], household_rand[exrandom(getn(household_rand))], info1[exrandom(getn(info1))], medical_rand[exrandom(getn(medical_rand))], other1[exrandom(getn(other1))], tools_rand[exrandom(getn(tools_rand))], valuables1[exrandom(getn(valuables1))], gun_rand[exrandom(getn(gun_rand))], gadget_rand[exrandom(getn(gadget_rand))]}
		
		if getn(exlusive) > 0 then
			local items_get = getn(items)
			items[items_get + 1] = exlusive[random(getn(exlusive))]
		end

		local Item = CreateNewObject{prototypeName = items[random(getn(items))], objName = "BarrelItem_"..l, belong = 1100}
		local ItemId = GetEntityByID(Item)

		if ChestId and ItemId then
			ChestId:AddChild(ItemId)
		end
	end
end

function CreateGunBox(name, pos)

	local gun1 = {"hornet01", "specter01", "pkt01", "storm01", "vector01", "vulcan01", "kpvt01", "rapier01", "bumblebee01"} 
	local gun2 = {"pkt01", "kord01", "maxim01", "fagot01", "someTurboAccelerationPusher", "omega01", "elephant01", "flag01", "odin01", "rainmetal01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun", "marsSideGun"}
	local gun_rand = {gun1[random(getn(gun1))], gun2[exrandom(getn(gun2))]}

	local gadget1 = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns"}
	local gadget2 = {"cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "additional_fuel_tank2", "additional_torque2", "additional_durability2"}
	local gadget3 = {"cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}

	local Chest = CreateNewObject{prototypeName = "mainChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(3)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	local OpacityItem = CreateNewObject{prototypeName = "item_opacity", objName = "OpacityGunItem_1", belong = 1100}
	local OpacityItemId = GetEntityByID(OpacityItem)

	if ChestId and OpacityItemId then
		ChestId:AddChild(OpacityItemId)
	end

	local notloot = random(100)
	local count = random(2)
	local affics = random(0,2)
	local gun_r = random(2)
	local ammo_r = random(2)
	local ammo_item
	if notloot > 10 then
		if gun_r == 1 then
			local gun_item = gun_rand[random(getn(gun_rand))]
			local Gun = CreateNewObject{prototypeName = gun_item, objName = "GunItem_1", belong = 1100}
			local GunId = GetEntityByID(Gun)

			local afflist = {}
			afflist = CreateRandomAffixesForGun(affics)

			if afflist ~= nil then
				for i=1,getn(afflist) do
					GunId:ApplyAffixByName(afflist[i])
				end
			end
		
			if ChestId and GunId then
				ChestId:AddChild(GunId)
			end

			if ammo_r == 1 then
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
					if random(3) == 1 then
						ammo_item = "ammo_ballon_lasergun"
					end
				elseif gun_item == "fagot01" or gun_item == "elephant01" or gun_item == "hammer01" then
					if random(3) == 1 then
						ammo_item = "ammo_ballon_plasmagun"
					end
				elseif gun_item == "someTurboAccelerationPusher" then
					if random(2) == 1 then
						ammo_item = "ammo_ballon_turbo"
					end
				end
				if ammo_item then
					local Ammo = CreateNewObject{prototypeName = ammo_item, objName = "AmmoItem_1", belong = 1100}
					local AmmoId = GetEntityByID(Ammo)
					if ChestId and AmmoId then
						ChestId:AddChild(AmmoId)
					end
				end
			end
		end

		for l=1,count do
			local gadget_rand = {gadget1[random(getn(gadget1))], gadget2[random(getn(gadget2))], gadget3[random(getn(gadget3))]}
			local Gadgets = CreateNewObject{prototypeName = gadget_rand[random(getn(gadget_rand))], objName = "GadgetItem_"..l, belong = 1100}
			local GadgetsId = GetEntityByID(Gadgets)
			if ChestId and GadgetsId then
				ChestId:AddChild(GadgetsId)
			end
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

-- Все предметы
function AllItems()
	local Items = {"potato", "scrap_metal", "firewood", "oil", "bottle", "fuel", "machinery", "tobacco", "book", "electronics",
					"doski", "details", "shkatulka",
					"scrap_metal_use", "machinery_use", "electronics_use", "oil_use", "fuel_full_use", "fuel_nil_use",
					"item_key_gate_thetown", "item_key_gate_basefelix",
					"ammo_chest_artillerygun", "ammo_chest_artillerygunForSale", "ammo_chest_heavygun", "ammo_chest_heavygunForSale", "ammo_chest_machinegun", "ammo_chest_machinegunForSale", "ammo_chest_rocketgun", "ammo_chest_rocketgunForSale", "ammo_chest_shotgun", "ammo_chest_shotgunForSale", "ammo_ballon_lasergun", "ammo_ballon_plasmagun", "ammo_ballon_turbo",
					"item_bolts", "item_datchik", "item_hose", "item_insulation", "item_kek", "item_military_tube", "item_nails", "item_nuts", "item_parts", "item_pena", "item_plex", "item_poheram", "item_scotch", "item_screws", "item_thermometer", "item_tube",
					"item_bp", "item_cable", "item_converter", "item_cooler", "item_cpu", "item_drill", "item_dvd", "item_electronics_components", "item_energo_lump", "item_engine", "item_gazan", "item_geiger", "item_gpu", "item_hdd", "item_helix", "item_iridiym", "item_kondesators", "item_lcd", "item_lump", "item_magnet", "item_military_cable", "item_phone", "item_plate", "item_ram", "item_rele", "item_svech", "item_tetris", "item_tplug", "item_ultra_lump", "item_usb", "item_virtex", "item_vpx", "item_wires",
					"item_accum", "item_battery_aa", "item_battery_d", "item_car_battery", "item_cyclon", "item_green_battery", "item_powerbank", "item_tank_battery",
					"item_dry", "item_hunter_spich", "item_lighter", "item_prisadka", "item_propan", "item_spich", "item_survl", "item_termit", "item_trotile", "item_wd40_100", "item_wd40_400", "item_zibbo", "item_gunpowder",
					"item_alkani", "item_hlor", "item_paper", "item_salt", "item_soap", "item_soda", "item_tb", "item_toothpaste",
					"item_diary", "item_diary_s", "item_disk", "item_disk_exmachina", "item_flashdrive", "item_manual", "item_rozvidka", "item_sas", "item_ssd",
					"item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe",
					"item_airfilter", "item_ananaga", "item_emre_kara", "item_filter", "item_fitanyashka", "item_jeton_bear", "item_jeton_usec", "item_pants40grn", "item_paracord", "item_pavlikrpg", "item_vitalik", "item_vodka", "item_waterfilter", "item_zapal", "item_monolit", "item_kaktus", "item_keqing", "item_carsen", "item_metallodetector", "item_stakanyash",
					"item_awl", "item_buldex", "item_fullmaster", "item_handrill", "item_leatherman", "item_metalscissors", "item_nippers", "item_pipe_wrench", "item_pliers", "item_pliers_round", "item_ratchet_wrench", "item_roulet", "item_screw", "item_screw_flat", "item_screw_flat_long", "item_sewing_kit", "item_toolset", "item_wrench",
					"item_bitcoin", "item_cat", "item_chain", "item_chain_gold", "item_chiken", "item_ex", "item_lion", "item_rolex", "item_skullring", "item_teapon", "item_woodclock", "item_vitaly",
					"item_quest_search_data",
					"item_ms2000",
					"hornet01", "american_hornet01", "specter01", "pkt01", "kord01", "storm01", "fagot01", "maxim01", "vector01", "vulcan01", "kpvt01", "rapier01", "flag01", "rainmetal01", "elephant01", "odin01", "omega01", "bumblebee01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun", "marsSideGun",
					"someTurboAccelerationPusher", "engineOilPusher", "nailsPusher", "Smoke", "minePusher", "minePusher_1", "minePusher_2",
					"cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns", "cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "additional_fuel_tank2", "additional_torque2", "additional_durability2", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}
	return Items
end

function AllItemsForScav()
	local Items = {"potato", "scrap_metal", "firewood", "oil", "bottle", "fuel", "machinery", "tobacco", "book", "electronics",
					"doski", "details", "shkatulka",
					"scrap_metal_use", "machinery_use", "electronics_use", "oil_use", "fuel_full_use", "fuel_nil_use",
					"item_key_gate_thetown", "item_key_gate_basefelix",
					"ammo_chest_artillerygun", "ammo_chest_heavygun", "ammo_chest_machinegun", "ammo_chest_rocketgun", "ammo_chest_shotgun", "ammo_ballon_lasergun", "ammo_ballon_plasmagun", "ammo_ballon_turbo",
					"item_bolts", "item_datchik", "item_hose", "item_insulation", "item_kek", "item_military_tube", "item_nails", "item_nuts", "item_parts", "item_pena", "item_plex", "item_poheram", "item_scotch", "item_screws", "item_thermometer", "item_tube",
					"item_bp", "item_cable", "item_converter", "item_cooler", "item_cpu", "item_drill", "item_dvd", "item_electronics_components", "item_energo_lump", "item_engine", "item_gazan", "item_geiger", "item_gpu", "item_hdd", "item_helix", "item_iridiym", "item_kondesators", "item_lcd", "item_lump", "item_magnet", "item_military_cable", "item_phone", "item_plate", "item_ram", "item_rele", "item_svech", "item_tetris", "item_tplug", "item_ultra_lump", "item_usb", "item_virtex", "item_vpx", "item_wires",
					"item_accum", "item_battery_aa", "item_battery_d", "item_car_battery", "item_cyclon", "item_green_battery", "item_powerbank", "item_tank_battery",
					"item_dry", "item_hunter_spich", "item_lighter", "item_prisadka", "item_propan", "item_spich", "item_survl", "item_termit", "item_trotile", "item_wd40_100", "item_wd40_400", "item_zibbo", "item_gunpowder",
					"item_alkani", "item_hlor", "item_paper", "item_salt", "item_soap", "item_soda", "item_tb", "item_toothpaste",
					"item_diary", "item_diary_s", "item_disk", "item_disk_exmachina", "item_flashdrive", "item_manual", "item_rozvidka", "item_sas", "item_ssd",
					"item_aquapeps", "item_c6h8o6", "item_h2o2", "item_ledx", "item_medical_tools", "item_naci", "item_oftalmaskop", "item_suringe",
					"item_airfilter", "item_ananaga", "item_emre_kara", "item_filter", "item_fitanyashka", "item_pants40grn", "item_paracord", "item_pavlikrpg", "item_vitalik", "item_vodka", "item_waterfilter", "item_zapal", "item_monolit", "item_kaktus", "item_keqing", "item_carsen", "item_metallodetector", "item_stakanyash",
					"item_awl", "item_buldex", "item_fullmaster", "item_handrill", "item_leatherman", "item_metalscissors", "item_nippers", "item_pipe_wrench", "item_pliers", "item_pliers_round", "item_ratchet_wrench", "item_roulet", "item_screw", "item_screw_flat", "item_screw_flat_long", "item_sewing_kit", "item_toolset", "item_wrench",
					"item_bitcoin", "item_cat", "item_chain", "item_chain_gold", "item_chiken", "item_ex", "item_lion", "item_rolex", "item_skullring", "item_teapon", "item_woodclock",
					"hornet01", "american_hornet01", "specter01", "pkt01", "kord01", "storm01", "fagot01", "maxim01", "vector01", "vulcan01", "kpvt01", "rapier01", "flag01", "rainmetal01", "elephant01", "odin01", "omega01", "bumblebee01", "hammer01", "hunterSideGun", "mrakSideGun", "big_swingfire01", "cyclops01", "octopus01", "hailSideGun", "hurricane01", "rocketLauncher", "zeusSideGun", "marsSideGun",
					"someTurboAccelerationPusher",
					"cooling_system_guns", "cooling_system_energy", "cooling_system_explosion", "firing_rate_guns", "firing_rate_energy", "grouping_angle_guns", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "firing_range_guns", "cooling_system_guns2", "cooling_system_energy2", "cooling_system_explosion2", "firing_rate_guns2", "firing_rate_energy2", "grouping_angle_guns2", "add_damage_guns2", "add_damage_energy2", "add_damage_explosion2", "cooling_system_guns_and_firing_rate_guns", "cooling_system_energy_and_firing_rate_energy", "cooling_system_explosion_and_firing_rate_explosion", "firing_rate_guns_and_add_damage_guns", "firing_rate_energy_and_add_damage_energy", "firing_rate_explosion_and_add_damage_explosion", "add_damage_guns_and_grouping_angle_guns", "add_damage_energy_and_firing_rate_energy", "add_damage_explosion_firing_rate_explosion", "additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "additional_fuel_tank2", "additional_torque2", "additional_durability2", "add_speed_and_torque", "add_stability_and_speed", "add_torque_and_stability", "additional_fuel_tank2_add_damage_guns"}
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
	local itemList = items
	if countItems == nil then countItems = 1 end
	
	if random(2) == 1 then
		if itemList then
			for i = 1, countItems do
				AddItemsToPlayerRepository(itemList[random(getn(itemList))], 1)
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
	local itemList = items
	if countItems == nil then countItems = 1 end

	if itemList then
		for i = 1, countItems do
			AddItemsToPlayerRepository(itemList[random(getn(itemList))], 1)
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
		end
	end
end

-- Генерация случайного имени для дикого
function GenerateRandomScavName()
	local firstName = {"Иван", "Дмитрий", "Дима", "Димка", "Айвен", "Айваныч", "Бен", "Виталий", "Виталик", "Виталя", "Вася", "Пися", "Максим", "Ашот", "Федя", "Фердинанд", "Саня", "Санька", "Илья", "Илюха", "Леха", "Петька", "Савелий", "Валерий", "Киса", "Кот", "Дед", "Мошенник", "Папич", "Павел", "Павлик", "Витёк", "Вантуз", "Даня", "Данила", "Димон", "Кирюха", "Боря", "Борис", "Кабан", "Макс", "Карсен", "Алик", "Пашка", "Вован", "Анатолий", "Стёпа", "Мыш", "Муж", "Аксель", "Феликс", "Вор", "Дик", "Миха", "Михаил", "Ростислав", "Колян", "Коля", "Ёбырь", "Игрок", "Пётр", "Петруха", "Дод", "Петрович", "Алекс", "Алексей", "Сергей", "Серёга", "Серго", "Гном", "Друид", "Бандит", "Бродяга", "Кочевник", "Работяга", "Америго", "Сэм", "Конни", "Блайд", "Дронн", "Серый", "Талик", "Гит", "Святослав", "Мистер", "Кот", "Санёк", "Тим", "Мишаня", "Фёдор", "Васян", "Никита", "Никитка", "Монолит", "Станислав", "Стас", "Стасян", "Стакан"}
	local secondName = {"Слабый", "Сильный", "Мощный", "Меткий", "Скорострел", "Железный", "Бронированный", "Неудачник", "Наркоман", "Белазист", "Натурал", "РПГ", "Гусак", "Дикарь", "Сметана", "Базированный", "Программист", "Айтишник", "Опасный", "Страшный", "Крепкий", "Улучшенный", "Апгрейднутый", "Моряк", "Ебанько", "Герой", "Новичок", "Бывалый", "Профи", "Мастер", "Водила", "Ананага", "Бобёр", "Вертухай", "Заднеприводный", "Мрачный", "Киберпсих", "Киберспортсмен", "Торговец", "Бармен", "Оракул", "Наркоторговец", "Ненаркоторговец", "Наркоман", "Кепка", "Кепарик", "Рыхлый", "Казах", "Самурай", "Япончик", "Пончик", "Сладкий", "Ботан", "Сфено", "Затвор", "Помощник", "Кусок", "Спрут", "Рейнметалл", "Фагот", "Скоростной", "Яйцо", "Упитыш", "Крепыш", "Клоун", "Бебра", "Яебу", "Правильный", "ЧСВ", "Полторашка", "Бигмак", "Микрофон", "Вибрирующий", "Разрядник", "Няшка", "Меченый", "Пух", "Мозголюб", "Левый", "Правый", "Фермер", "Мокрый", "Влажный", "Наглый", "Глушитель", "Чарли", "Капец", "Пиздюк", "Гондурас", "Овощебаза", "Сиська", "Компатчер", "Шиза", "Обезьяна", "Дристомёт", "Иваныч", "Иванов", "Барыга", "Одноглазый", "Ебучий", "Везунчик", "Крипто", "Мякиш", "Махинист", "Го", "Дроссель", "Идёт", "Замузик", "Крутой", "Любитель", "Поедатель", "Предатель", "Белаз", "Скаут", "Боец", "Таракан", "Клоп", "Муравей", "Медведь", "Охотник", "Урал", "Сагитта", "Филимон", "Отверствие", "Скорб", "Казино", "Генератор", "Терминатор", "Странник", "Младший", "Старший", "Бензобак", "Грузин", "Дырявый", "Снайпер", "Крип", "Крипто", "Грустный", "Шляпа", "Заводской", "Паштет", "Арахис", "Умник", "Дотер", "Буянов", "Мудрый", "Долбоящер"}
	local Name = ""..firstName[random(getn(firstName))].." "..secondName[random(getn(secondName))]..""

	return Name
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
	if car then
		local belong = car:GetBelong()
		if belong > 0 then
			SetVar(ObjTarget.."_UnderAttack", belong)
			if not(target) and belong == 1100 then
				if TriggerName then TActivate(TriggerName) end
			end
			return belong
		end
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













