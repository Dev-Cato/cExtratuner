 --╔══════════════════════════════════════════════════╗--
---║                    ©cato.dev                     ║---
 --╚══════════════════════════════════════════════════╝--

------------------------------------------< locals >------------------------------------------
RMenu.Add('menu', 'main', RageUI.CreateMenu("Tuner", " ", 0, 0))
RMenu.Add('menu', 'extras', RageUI.CreateSubMenu(RMenu:Get('menu', 'main'), "Extra Tuner", " ", 0, 0))
RMenu.Add('menu', 'livery', RageUI.CreateSubMenu(RMenu:Get('menu', 'main'), "Livery Tuner", " ", 0, 0))

local Menu = {
    check1 = false, check2 = false, check3 = false, check4 = false, check5 = false, check6 = false, 
    check7 = false, check8 = false, check9 = false, check10 = false, check11 = false, check12 = false,
    action = {
        '1', '2', '3', '4', '5', '6', '7', '8', '9', '10',
    },
    list = 1,
}

------------------------------------------< code >------------------------------------------

CreateThread(function()
    while true do
        for _, v in pairs(Config.TunerPos) do
            local distance = #(GetEntityCoords(PlayerPedId()) - vector3(v.x, v.y, v.z))

            if distance < 10.0 and IsPedInAnyVehicle(PlayerPedId(), false) then
                DrawMarker(21, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 1.5, 50, 50, 255, 50, false, true, nil, nil, nil, false)
                if distance < 2.0 then
                    ShowHelp(Translation['openInfo'], false)
                    if IsControlJustPressed(2, 51) then
                        RageUI.Visible(RMenu:Get('menu', 'main'), not RageUI.Visible(RMenu:Get('menu', 'main')))
                    end
                end
                sleep = 1
            end
        end

        RageUI.IsVisible(RMenu:Get("menu", 'main'), true, true, true, function()

            local vehicle = GetVehiclePedIsIn(PlayerPedId())

            RageUI.ButtonWithStyle(Translation['extras'], Translation['eDiscription'], {RightLabel = "→→→"}, true, function()
            end, RMenu:Get('menu', 'extras'))

            RageUI.ButtonWithStyle(Translation['livery'], Translation['lDiscription'], {RightLabel = "→→→"}, true, function()
            end, RMenu:Get('menu', 'livery'))

        end)

        RageUI.IsVisible(RMenu:Get("menu", 'extras'), true, true, true, function()

            local veh = GetVehiclePedIsIn(PlayerPedId())

            RageUI.Checkbox("Extra 1", nil, Menu.check1, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 1, false)
                else
                    SetVehicleExtra(veh, 1, true)
                end
                Menu.check1 = Checked;
            end)

            RageUI.Checkbox("Extra 2", nil, Menu.check2, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 2, false)
                else
                    SetVehicleExtra(veh, 2, true)
                end
                Menu.check2 = Checked;
            end)

            RageUI.Checkbox("Extra 3", nil, Menu.check3, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 3, false)
                else
                    SetVehicleExtra(veh, 3, true)
                end
                Menu.check3 = Checked;
            end)

            RageUI.Checkbox("Extra 4", nil, Menu.check4, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 4, false)
                else
                    SetVehicleExtra(veh, 4, true)
                end
                Menu.check4 = Checked;
            end)

            RageUI.Checkbox("Extra 5", nil, Menu.check5, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 5, false)
                else
                    SetVehicleExtra(veh, 5, true)
                end
                Menu.check5 = Checked;
            end)

            RageUI.Checkbox("Extra 6", nil, Menu.check6, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 6, false)
                else
                    SetVehicleExtra(veh, 6, true)
                end
                Menu.check6 = Checked;
            end)

            RageUI.Checkbox("Extra 7", nil, Menu.check7, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 7, false)
                else
                    SetVehicleExtra(veh, 7, true)
                end
                Menu.check7 = Checked;
            end)

            RageUI.Checkbox("Extra 8", nil, Menu.check8, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 8, false)
                else
                    SetVehicleExtra(veh, 8, true)
                end
                Menu.check8 = Checked;
            end)

            RageUI.Checkbox("Extra 9", nil, Menu.check9, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 9, false)
                else
                    SetVehicleExtra(veh, 9, true)
                end
                Menu.check9 = Checked;
            end)

            RageUI.Checkbox("Extra 10", nil, Menu.check10, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 10, false)
                else
                    SetVehicleExtra(veh, 10, true)
                end
                Menu.check10 = Checked;
            end)

            RageUI.Checkbox("Extra 11", nil, Menu.check11, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 11, false)
                else
                    SetVehicleExtra(veh, 11, true)
                end
                Menu.check11 = Checked;
            end)

            RageUI.Checkbox("Extra 12", nil, Menu.check12, {Style = RageUI.CheckboxStyle.Tick}, function(Hovered, Active, Selected, Checked)
                if Checked then
                    SetVehicleExtra(veh, 12, false)
                else
                    SetVehicleExtra(veh, 12, true)
                end
                Menu.check12 = Checked;
            end)

        end)

        RageUI.IsVisible(RMenu:Get("menu", 'livery'), true, true, true, function()
            local veh_ = GetVehiclePedIsIn(PlayerPedId())

            RageUI.List("Livery", Menu.action, Menu.list, nil, {}, true, function(Hovered, Active, Selected, Index)
                if Active then
                    if Index == 1 then
                        SetVehicleLivery(veh_, 0)
                    elseif Index == 2 then
                        SetVehicleLivery(veh_, 1)
                    elseif Index == 3 then
                        SetVehicleLivery(veh_, 2)
                    elseif Index == 4 then
                        SetVehicleLivery(veh_, 3)
                    elseif Index == 5 then
                        SetVehicleLivery(veh_, 4)
                    elseif Index == 6 then
                        SetVehicleLivery(veh_, 5)
                    elseif Index == 7 then
                        SetVehicleLivery(veh_, 6)
                    elseif Index == 8 then
                        SetVehicleLivery(veh_, 7)
                    elseif Index == 9 then
                        SetVehicleLivery(veh_, 8)
                    elseif Index == 10 then
                        SetVehicleLivery(veh_, 9)
                    end
                end
                Menu.list = Index;
            end)

        end)

        Wait(sleep)
    end
end)

-- function
function ShowHelp(text, bleep)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, bleep, -1)
end
