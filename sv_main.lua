local netIds = {}

RegisterNetEvent('aj-patrols:server:spawnGuard', function(type, model, coords, route)
    local src = source
    Guard = CreatePed(type, model, coords.x, coords.y, coords.z, coords.w, true, false)
    while not DoesEntityExist(Guard) do Wait(0) end

    SetPedRandomComponentVariation(Guard, 0)
    SetPedRandomProps(Guard)
    GiveWeaponToPed(Guard, `WEAPON_MICROSMG`, -1, true, true)
    SetPedConfigFlag(ped, 132, true)

    netId = NetworkGetNetworkIdFromEntity(Guard)
    netIds[#netIds+1] = netId
    TriggerClientEvent('aj-patrols:server:catchGuard', src, netId, route)
end)

AddEventHandler('onResourceStop', function(res)
    if GetCurrentResourceName() ~= res then return end
    for k, v in pairs(netIds) do
        DeleteEntity(NetworkGetEntityFromNetworkId(v))
    end
end)