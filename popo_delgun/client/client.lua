ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    
local toggle = false
local vehicle = nil

function getEntity(player)
	local result, entity = GetEntityPlayerIsFreeAimingAt(player)
	return entity
end

Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(0)
		if toggle then
			if IsPlayerFreeAiming(PlayerId()) then
				local entity = getEntity(PlayerId())
				if IsPedShooting(GetPlayerPed(-1)) then
					SetEntityAsMissionEntity(entity, true, true)
					DeleteEntity(entity)
				end
			end
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(0, 83) then
			if toggle == true then
				toggle = false
				ESX.ShowNotification(_U('disabled'))
			else
				toggle = true
				ESX.ShowNotification(_U('enabled'))
			end
        end
    end
end)