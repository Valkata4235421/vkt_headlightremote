local QBCore = exports['qb-core']:GetCoreObject()

local function SetHeadlightColor(colorId)
    local lang = Config.Notify.Languages[Config.Notify.currentLanguage]

    if not lang then
        QBCore.Functions.Notify(lang.invalidLangMessage, lang.errorType)
        return
    end

    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)

    if vehicle ~= 0 and GetPedInVehicleSeat(vehicle, -1) == ped then
        ToggleVehicleMod(vehicle, 22, true)

        local colorName
        for _, color in pairs(lang.headlightColors) do
            if color.id == colorId then
                colorName = color.name
                break
            end
        end

        if colorName then
            SetVehicleHeadlightsColour(vehicle, colorId)
            QBCore.Functions.Notify(string.format(lang.successMessage, colorName), lang.successType)
        else
            QBCore.Functions.Notify(lang.invalidColorMessage, lang.errorType)
        end
    else
        QBCore.Functions.Notify(lang.errorMessage, lang.errorType)
    end
end

RegisterNetEvent('vkt_headlightremote:client:useRemote', function()
    local lang = Config.Notify.Languages[Config.Notify.currentLanguage]

    if not lang then
        QBCore.Functions.Notify(lang.invalidLangMessage, lang.errorType)
        return
    end

    local qbMenuOptions = {
        {
            header = lang.menuHeader,
            isMenuHeader = true,
        }
    }

    local oxLibOptions = {
        {
            id = 'headlight_color_menu',
            title = lang.menuHeader,
            options = {}
        }
    }

    for _, color in pairs(lang.headlightColors) do
        local option = {
            header = color.name,
            txt = string.format(lang.chooseMessage, color.name),
            params = {
                event = 'vkt_headlightremote:client:setHeadlightColor',
                args = color.id
            }
        }
        
        table.insert(qbMenuOptions, option)

        table.insert(oxLibOptions[1].options, {
            title = color.name,
            description = string.format(lang.chooseMessage, color.name),
            event = 'vkt_headlightremote:client:setHeadlightColor',
            args = color.id
        })
    end

    if Config.Menu == 'qb-menu' then
        exports['qb-menu']:openMenu(qbMenuOptions)
    elseif Config.Menu == 'ox_lib' then
        lib.registerContext(oxLibOptions[1])
        lib.showContext('headlight_color_menu')
    else
        QBCore.Functions.Notify(lang.menuConfigMessage, lang.errorType)
    end
end)

RegisterNetEvent('vkt_headlightremote:client:setHeadlightColor', function(colorId)
    SetHeadlightColor(colorId)
end)