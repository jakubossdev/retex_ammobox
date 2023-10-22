ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx_ammo:useAmmoBox', function(ammoType, count)
    local xPlayer = ESX.GetPlayerData()

    for i = 1, #xPlayer.inventory, 1 do
        if xPlayer.inventory[i].name == 'box-' .. ammoType then
            TriggerServerEvent('esx_ammo:removeAmmoBox', xPlayer.inventory[i].name, xPlayer.inventory[i].count)
            TriggerServerEvent('esx_ammo:addAmmo', ammoType, count)
            break
        end
    end
end)
