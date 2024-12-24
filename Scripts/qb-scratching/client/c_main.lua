local cooldown = 0

RegisterNetEvent("qb-scratching:isActiveCooldown", function()
	TriggerServerEvent("qb-scratching:handler", cooldown > 0 and true or false, cooldown)
end)

RegisterNetEvent("qb-scratching:setCooldown", function()
  cooldown = Config.ScratchCooldownInSeconds
	CreateThread(function()
		while (cooldown ~= 0) do
			Wait(1000)
			cooldown = cooldown - 1
		end
	end)
end)

RegisterNetEvent("qb-scratching:startScratchingEmote", function()
	if IsPedInAnyVehicle(PlayerPedId(), false) then return end
	TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_PARKING_METER", 0, true)
end)

RegisterNetEvent("qb-scratching:stopScratchingEmote", function()
	if IsPedInAnyVehicle(PlayerPedId(), false) then return end
	ClearPedTasksImmediately(GetPlayerPed(-1))
end)

RegisterNUICallback('deposit', function(data)
	TriggerServerEvent('qb-scratching:deposit', data.key, data.price, data.amount, data.type)
end)