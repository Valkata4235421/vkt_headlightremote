local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem(Config.Item.remoteItem, function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end
    
    if not Player.Functions.GetItemByName(item.name) then return end

    TriggerClientEvent('vkt_headlightremote:client:useRemote', source)
end)
