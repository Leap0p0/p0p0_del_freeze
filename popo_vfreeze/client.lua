ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local function freeze_vehicle()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

    if vehicle ~= nil then
        if IsEntityPositionFrozen(vehicle) then
            FreezeEntityPosition(vehicle, false)
            ESX.ShowNotification("Le véhicle n'est plus freeze !")
        else
            FreezeEntityPosition(vehicle, true)
            ESX.ShowNotification("Le véhicule est freeze !")
        end
    else
        ESX.ShowNotification("Tu n'es pas dans un véhicule !")
    end
end

RegisterCommand("vfreeze", function()   
    freeze_vehicle()   
end, false)