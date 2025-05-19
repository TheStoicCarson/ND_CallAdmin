NDCore = exports["ND_Core"]:GetCoreObject()

if config["/calladmin"].enabled then
    RegisterCommand("calladmin", function(source, args, rawCommand)
        local player = source
        TriggerClientEvent("ND_CallAdmin:call", -1, GetEntityCoords(GetPlayerPed(player)), table.concat(args, " "))
    end, false)
end