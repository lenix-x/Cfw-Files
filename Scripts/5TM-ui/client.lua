local QBCore = exports['qb-core']:GetCoreObject()

function Show(title, content)
    SendNUIMessage({
        action = "open",
        title = title,
        content = content
    })
end

function Close()
    
    SendNUIMessage({
        action = "close",
    })
end

exports("Show", Show)
exports("Close", Close)


RegisterCommand('open', function(source, args, rawCommand)
    if #args < 2 then
        Show(args[1])
        return
    end

    print(args[1])
    print("[76B Store] Opening UI with title: " .. args[1] .. ", content: " .. args[2])

    -- Assuming Show is a function defined elsewhere in your script
    Show(args[1], args[2])
end)


RegisterCommand('close', function(source, args, RawCommand)
    
    Close()
end)
