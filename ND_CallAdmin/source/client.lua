NDCore = exports["ND_Core"]:GetCoreObject()

if config["/calladmin"].enabled then
    RegisterNetEvent("ND_CallAdmin:call")
    AddEventHandler("ND_CallAdmin:call", function(coords, Description)
        local character = NDCore.Functions.GetSelectedCharacter()
        if not character then
            return
        end
        for _, department in pairs(config["/calladmin"].callTo) do
				TriggerEvent("chat:addMessage", {
					color = { 255, 0, 0},
					multiline = true,
					args = {"^7[^3Staff Call^7]", "^2A Staff Member Will be With you Soon"}
            })
            if character.job == department then
                local location = GetStreetNameFromHashKey(GetStreetNameAtCoord(coords.x, coords.y, coords.z))
                TriggerEvent("chat:addMessage", {
                    color = {255, 0, 0},
                    args = {"^7^*[^3Staff Call^7]]: ^2Location: ^7" .. location .. " ^2| Information: ^7" .. Description}
                })
                local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
                SetBlipSprite(blip, 280)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName("STRING")
                SetBlipColour(blip, 1)
                AddTextComponentString("Active Staff Call: " .. location)
                EndTextCommandSetBlipName(blip)
                Citizen.Wait(60 * 1000)
                RemoveBlip(blip)
                break
            end
        end
    end)
end