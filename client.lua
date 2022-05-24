local QBCore = exports["qb-core"]:GetCoreObject()
RegisterNetEvent("z-vehicleextra:client:setExtra")
AddEventHandler(
    "z-vehicleextra:client:setExtra",
    function(value)
        local extra = tonumber(value)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local plate = GetVehicleNumberPlateText(closestVehicle)
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if
            closestVehicle ~= 0 and
                (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance")
         then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if enginehealth > 950 and bodydamage > 950 then
                -- if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if DoesExtraExist(veh, extra) then
                    -- print(IsVehicleExtraTurnedOn(veh, extra))
                    if IsVehicleExtraTurnedOn(veh, extra) then
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                        SetVehicleExtra(veh, extra, 1)
                        QBCore.Functions.Notify("Removed", "error", 5000)
                    else
                        SetVehicleExtra(veh, extra, 0)
                        TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                        QBCore.Functions.Notify("Added", "success", 5000)
                    end
                else
                    QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                end
            else
                QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            print('Local player is in a vehicle!')
        end
    end
)

RegisterCommand(
    "-extra12",
    function()
        local extra = tonumber(12)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if veh ~= 0 and (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance") then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if enginehealth > 950 and bodydamage > 950 then
                    if DoesExtraExist(veh, extra) then
                        -- print(IsVehicleExtraTurnedOn(veh, extra))
                        if IsVehicleExtraTurnedOn(veh, extra) then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            SetVehicleExtra(veh, extra, 1)
                            QBCore.Functions.Notify("(OFF) Rear E-Lights", "error", 5000)
                        else
                            SetVehicleExtra(veh, extra, 0)
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            QBCore.Functions.Notify("(ON) Rear E-Lights", "success", 5000)
                        end
                    else
                        QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                    end
                else
                    QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
                end
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            QBCore.Functions.Notify("You do not have access to the ELS Panel (This is not an emergency vehicle or you don't have access codes)", "error", 5000)
        end
    end
)
RegisterCommand(
    "-extra11",
    function()
        local extra = tonumber(11)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if veh ~= 0 and (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance") then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if enginehealth > 950 and bodydamage > 950 then
                    if DoesExtraExist(veh, extra) then
                        -- print(IsVehicleExtraTurnedOn(veh, extra))
                        if IsVehicleExtraTurnedOn(veh, extra) then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            SetVehicleExtra(veh, extra, 1)
                            QBCore.Functions.Notify("(OFF) Front E-Lights", "error", 5000)
                        else
                            SetVehicleExtra(veh, extra, 0)
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            QBCore.Functions.Notify("(ON) Front E-Lights", "success", 5000)
                        end
                    else
                        QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                    end
                else
                    QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
                end
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            QBCore.Functions.Notify("You do not have access to the ELS Panel (This is not an emergency vehicle or you don't have access codes)", "error", 5000)
        end
    end
)
RegisterCommand(
    "-extra10",
    function()
        local extra = tonumber(10)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if veh ~= 0 and (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance") then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if enginehealth > 950 and bodydamage > 950 then
                    if DoesExtraExist(veh, extra) then
                        -- print(IsVehicleExtraTurnedOn(veh, extra))
                        if IsVehicleExtraTurnedOn(veh, extra) then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            SetVehicleExtra(veh, extra, 1)
                            QBCore.Functions.Notify("(OFF) R-L Traffic Advisory", "error", 5000)
                        else
                            SetVehicleExtra(veh, extra, 0)
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            QBCore.Functions.Notify("(ON) R-L Traffic Advisory", "success", 5000)
                        end
                    else
                        QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                    end
                else
                    QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
                end
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            QBCore.Functions.Notify("You do not have access to the ELS Panel (This is not an emergency vehicle or you don't have access codes)", "error", 5000)
        end
    end
)
RegisterCommand(
    "-extra9",
    function()
        local extra = tonumber(9)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if veh ~= 0 and (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance") then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if enginehealth > 950 and bodydamage > 950 then
                    if DoesExtraExist(veh, extra) then
                        -- print(IsVehicleExtraTurnedOn(veh, extra))
                        if IsVehicleExtraTurnedOn(veh, extra) then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            SetVehicleExtra(veh, extra, 1)
                            QBCore.Functions.Notify("(OFF) L-R Traffic Advisory", "error", 5000)
                        else
                            SetVehicleExtra(veh, extra, 0)
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            QBCore.Functions.Notify("(ON) L-R Traffic Advisory", "success", 5000)
                        end
                    else
                        QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                    end
                else
                    QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
                end
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            QBCore.Functions.Notify("You do not have access to the ELS Panel (This is not an emergency vehicle or you don't have access codes)", "error", 5000)
        end
    end
)
RegisterCommand(
    "-extra8",
    function()
        local extra = tonumber(8)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if veh ~= 0 and (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance") then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if enginehealth > 950 and bodydamage > 950 then
                    if DoesExtraExist(veh, extra) then
                        -- print(IsVehicleExtraTurnedOn(veh, extra))
                        if IsVehicleExtraTurnedOn(veh, extra) then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            SetVehicleExtra(veh, extra, 1)
                            QBCore.Functions.Notify("(OFF) Take Downs", "error", 5000)
                        else
                            SetVehicleExtra(veh, extra, 0)
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            QBCore.Functions.Notify("(ON) Take Downs", "success", 5000)
                        end
                    else
                        QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                    end
                else
                    QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
                end
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            QBCore.Functions.Notify("You do not have access to the ELS Panel (This is not an emergency vehicle or you don't have access codes)", "error", 5000)
        end
    end
)
RegisterCommand(
    "-extra7",
    function()
        local extra = tonumber(7)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if veh ~= 0 and (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance") then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if enginehealth > 950 and bodydamage > 950 then
                    if DoesExtraExist(veh, extra) then
                        -- print(IsVehicleExtraTurnedOn(veh, extra))
                        if IsVehicleExtraTurnedOn(veh, extra) then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            SetVehicleExtra(veh, extra, 1)
                            QBCore.Functions.Notify("(OFF) Left Ally", "error", 5000)
                        else
                            SetVehicleExtra(veh, extra, 0)
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            QBCore.Functions.Notify("(ON) Left Ally", "success", 5000)
                        end
                    else
                        QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                    end
                else
                    QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
                end
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            QBCore.Functions.Notify("You do not have access to the ELS Panel (This is not an emergency vehicle or you don't have access codes)", "error", 5000)
        end
    end
)
RegisterCommand(
    "-extra6",
    function()
        local extra = tonumber(6)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(PlayerPedId(), true)
        local enginehealth = 0
        local bodydamage = 0
        local JobName = QBCore.Functions.GetPlayerData().job.name

        if veh ~= 0 and (JobName == "police" or JobName == "bcso" or JobName == "sast" or JobName == "ambulance") then
            enginehealth = GetVehicleEngineHealth(veh)
            bodydamage = GetVehicleBodyHealth(veh)
            if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                if enginehealth > 950 and bodydamage > 950 then
                    if DoesExtraExist(veh, extra) then
                        -- print(IsVehicleExtraTurnedOn(veh, extra))
                        if IsVehicleExtraTurnedOn(veh, extra) then
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            SetVehicleExtra(veh, extra, 1)
                            QBCore.Functions.Notify("(OFF) Right Ally", "error", 5000)
                        else
                            SetVehicleExtra(veh, extra, 0)
                            TriggerServerEvent("InteractSound_SV:PlayOnSource", "on", 0.80)
                            QBCore.Functions.Notify("(ON) Right Ally", "success", 5000)
                        end
                    else
                        QBCore.Functions.Notify("This is not present on this vehicle", "error", 5000)
                    end
                else
                    QBCore.Functions.Notify("Your Vehicle is too damaged", "error", 5000)
                end
            end
        elseif IsPedInAnyVehicle(PlayerPedId(), true) then
            QBCore.Functions.Notify("You do not have access to the ELS Panel (This is not an emergency vehicle or you don't have access codes)", "error", 5000)
        end
    end
)
RegisterKeyMapping("-extra12", "Rear E-Lights", "keyboard", "0") --- Rear Lights / Rear Lightbar
RegisterKeyMapping("-extra11", "Front E-Lights", "keyboard", "9") --- Front Lights / Front Lightbar
RegisterKeyMapping("-extra10", "R<L TA", "keyboard", "NUMPAD1") --- Right to Left Traffic Visor
RegisterKeyMapping("-extra9", "L>R TA", "keyboard", "NUMPAD2") --- Left to Right Traffic Visor
RegisterKeyMapping("-extra8", "Take Downs", "keyboard", "NUMPAD0") --- TakeDowns
RegisterKeyMapping("-extra7", "Left Ally", "keyboard", "7") --- Left Alley
RegisterKeyMapping("-extra6", "Right Ally", "keyboard", "8") --- Right Alley
