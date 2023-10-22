ESX = exports['es_extended']:getSharedObject()

for k,v in pairs(Config.Boxes) do
    ESX.RegisterUsableItem('box-' .. k, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem('box-' .. k, 1)
        xPlayer.addInventoryItem(k, v)
    end)
end
