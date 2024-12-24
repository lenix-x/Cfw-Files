local inMenu = false

RegisterNetEvent("qb-scratching:nuiOpenCard")
AddEventHandler("qb-scratching:nuiOpenCard", function(key, price, amount, price_type, price_label)
  if inMenu then return end
  SetNuiFocus(true, true)
  SendNUIMessage({
    type = 'openScratch',
    key = key,
    price = price,
    amount = amount,
    price_type = price_type,
    price_label = price_label,
    win_message = "You Won!",
    lose_message = "You Lost :(",
    currency = "$",
    scratchAmount = Config.ScratchAmount,
    resourceName = GetCurrentResourceName(),
    debug = debugIsEnabled
  })
  inMenu = true
end)

RegisterNUICallback('nuiCloseCard', function(data)
	SetNuiFocus(false, false)
	SendNUIMessage({type = 'closeScratch'})
  TriggerEvent("qb-scratching:stopScratchingEmote")
  TriggerServerEvent('qb-scratching:stopScratching', data.price, data.amount, data.type)
  inMenu = false
end)