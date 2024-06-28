ESX = exports.es_extended:getSharedObject()
PlayerData = {}

Citizen.CreateThread(function()
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job2 == nil do
        Citizen.Wait(100)
    end
    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
    ESX.PlayerData.job2 = job2
end)

Citizen.CreateThread(function()
    Wait(250)
    for k, v in pairs(Config.fazioni) do
        if v.deposito1 then
            TriggerEvent('gridsystem:registerMarker', {
                name = 'deposito1' .. k,
                pos = vector3(v.deposito1[1], v.deposito1[2], v.deposito1[3]),
                size = vector3(0.8, 0.8, 0.8),
                scale = vector3(0.8, 0.8, 0.8),
                type = 9,
                control = 'E',
                rotate = 0.0,
                rotate2 = 0.0,
                shouldBob = false,
                shouldRotate = true,
                color = { r = 255, g = 255, b = 255 },
                trasparent = 255,
                permission = v.job,
                msg = 'deposito',
                msg2 = 'https://media.discordapp.net/attachments/1248354107174031472/1255969544225427487/kisspng-computer-icons-cardboard-box-e-commerce-5aef808a25a2e8.6317996715256454501542-removebg-preview.png?ex=667f104a&is=667dbeca&hm=c7d15d00133f5f938d1fa600041833c44b14cd4b30ce8e7b44de65e563ca21c9&=&format=webp&quality=lossless&width=821&height=475',
                action = function()
                    exports.ox_inventory:openInventory('stash', v.job .. "_stash1")
                end
            })
        end

        if v.deposito2 then
            TriggerEvent('gridsystem:registerMarker', {
                name = 'deposito2' .. k,
                pos = vector3(v.deposito2[1], v.deposito2[2], v.deposito2[3]),
                size = vector3(0.8, 0.8, 0.8),
                scale = vector3(0.8, 0.8, 0.8),
                type = 9,
                control = 'E',
                rotate = 0.0,
                rotate2 = 0.0,
                shouldBob = false,
                shouldRotate = true,
                color = { r = 255, g = 255, b = 255 },
                trasparent = 255,
                permission = v.job,
                msg = 'deposito',
                msg2 = 'https://media.discordapp.net/attachments/1248354107174031472/1255969544225427487/kisspng-computer-icons-cardboard-box-e-commerce-5aef808a25a2e8.6317996715256454501542-removebg-preview.png?ex=667f104a&is=667dbeca&hm=c7d15d00133f5f938d1fa600041833c44b14cd4b30ce8e7b44de65e563ca21c9&=&format=webp&quality=lossless&width=821&height=475',
                action = function()
                    exports.ox_inventory:openInventory('stash', v.job .. "_stash2")
                end
            })
        end

        if v.deposito3 then
            TriggerEvent('gridsystem:registerMarker', {
                name = 'deposito3' .. k,
                pos = vector3(v.deposito3[1], v.deposito3[2], v.deposito3[3]),
                size = vector3(0.8, 0.8, 0.8),
                scale = vector3(0.8, 0.8, 0.8),
                type = 9,
                control = 'E',
                rotate = 0.0,
                rotate2 = 0.0,
                shouldBob = false,
                shouldRotate = true,
                color = { r = 255, g = 255, b = 255 },
                trasparent = 255,
                permission = v.job,
                msg = 'deposito',
                msg2 = 'https://media.discordapp.net/attachments/1248354107174031472/1255969544225427487/kisspng-computer-icons-cardboard-box-e-commerce-5aef808a25a2e8.6317996715256454501542-removebg-preview.png?ex=667f104a&is=667dbeca&hm=c7d15d00133f5f938d1fa600041833c44b14cd4b30ce8e7b44de65e563ca21c9&=&format=webp&quality=lossless&width=821&height=475',
                action = function()
                    exports.ox_inventory:openInventory('stash', v.job .. "_stash3")
                end
            })
        end

        if v.camerino then
            TriggerEvent('gridsystem:registerMarker', {
                name = 'camerino' .. k,
                pos = vector3(v.camerino[1], v.camerino[2], v.camerino[3]),
                size = vector3(0.8, 0.8, 0.8),
                scale = vector3(0.8, 0.8, 0.8),
                type = 9,
                control = 'E',
                rotate = 0.0,
                rotate2 = 0.0,
                shouldBob = false,
                shouldRotate = true,
                color = { r = 255, g = 255, b = 255 },
                trasparent = 255,
                permission = v.job,
                msg = 'Camerino',
                msg2 = 'https://media.discordapp.net/attachments/1248354107174031472/1255969763608494172/kisspng-t-shirt-computer-icons-clothing-vector-graphics-mens-emaratibox-5d15d1f2dd57f5.2690803115617110909066.png?ex=667f107e&is=667dbefe&hm=0a8e9da005e936d4b2ff4f091998b4b531f84157db8b8ad836cc2e2adfa16d40&=&format=webp&quality=lossless&width=640&height=640',
                action = function()
                    exports['fivem-appearance']:openWardrobe()
                end
            })
        end

        if v.garage1 and v.garage1.pos then
            TriggerEvent('gridsystem:registerMarker', {
                name = 'garage1' .. k,
                pos = vector3(v.garage1.pos[1], v.garage1.pos[2], v.garage1.pos[3]),
                size = vector3(0.8, 0.8, 0.8),
                scale = vector3(0.8, 0.8, 0.8),
                type = 9,
                control = 'E',
                rotate = 0.0,
                rotate2 = 0.0,
                shouldBob = false,
                shouldRotate = true,
                color = { r = 255, g = 255, b = 255 },
                trasparent = 255,
                permission = v.job,
                msg = 'Garage',
                msg2 = 'https://media.discordapp.net/attachments/1248354107174031472/1255969979581333544/kisspng-car-garage-computer-icons-garage-5ada0702c67665.1498630015242380828129.png?ex=667f10b1&is=667dbf31&hm=c1b12cf391d59e6df5ab42a3db5920e892e24620fbbb510ef7b80b52a706c973&=&format=webp&quality=lossless&width=640&height=640',
                action = function()
                    ApriGarage(v.job)
                end
            })
        end

        if v.garage_deposito then
            TriggerEvent('gridsystem:registerMarker', {
                name = 'garage_deposito' .. k,
                pos = vector3(v.garage_deposito[1], v.garage_deposito[2], v.garage_deposito[3]),
                size = vector3(0.8, 0.8, 0.8),
                scale = vector3(0.8, 0.8, 0.8),
                type = 9,
                control = 'E',
                rotate = 0.0,
                rotate2 = 0.0,
                shouldBob = false,
                shouldRotate = true,
                color = { r = 255, g = 255, b = 255 },
                trasparent = 255,
                permission = v.job,
                msg = 'Garage',
                msg2 = 'https://media.discordapp.net/attachments/1248354107174031472/1255969979581333544/kisspng-car-garage-computer-icons-garage-5ada0702c67665.1498630015242380828129.png?ex=667f10b1&is=667dbf31&hm=c1b12cf391d59e6df5ab42a3db5920e892e24620fbbb510ef7b80b52a706c973&=&format=webp&quality=lossless&width=640&height=640',
                action = function()
                    if IsPedInAnyVehicle(PlayerPedId()) then
                        ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId()))
                        ESX.ShowNotification('Veicolo depositato con successo')
                    else
                        ESX.ShowNotification('Non sei in un veicolo', 'error')
                    end
                end
            })
        end

        if v.bossmenu then
            TriggerEvent('gridsystem:registerMarker', {
                name = 'bossmenu' .. k,
                pos = vector3(v.bossmenu[1], v.bossmenu[2], v.bossmenu[3]),
                size = vector3(0.8, 0.8, 0.8),
                scale = vector3(0.8, 0.8, 0.8),
                type = 9,
                control = 'E',
                rotate = 0.0,
                rotate2 = 0.0,
                shouldBob = false,
                shouldRotate = true,
                color = { r = 255, g = 255, b = 255 },
                trasparent = 255,
                permission = v.job,
                msg = 'Bossmenu',
                msg2 = 'https://media.discordapp.net/attachments/1248354107174031472/1255970118924636200/5a359002ce50d5.3263382315134597148451.png?ex=667f10d3&is=667dbf53&hm=d09c377a3ef85e082a8d71f37c2de5edc995136ef788eadc32cb6232bbb8b4df&=&format=webp&quality=lossless&width=947&height=676',
                action = function()
                    if ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'viceboss' then
                        print('inserisci al posto del print, l\'export del tuo bossmenu')
                    else
                        ESX.ShowNotification('Non puoi aprire il bossmenu', 'error')
                    end
                end
            })
        end
    end
end)

---------- funzione garage -----------

function ApriGarage(job)
    for k, v in pairs(Config.fazioni) do
        if v.job == job and v.garage1 and v.garage1.vehicles then
            local elements = v.garage1.vehicles
            if #elements == 0 then
                table.insert(elements, {label = 'Veicoli non Disponibili', value = 'null'})
            end

            ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'garage_fazioni',
            { 
                title = 'Garage', 
                align = 'bottom-right', 
                elements = elements 
            }, function(data, menu)
                if data.current.value ~= 'null' and data.current.model then
                    menu.close()

                    -- Ensure v.garage1.spawn is accessed correctly here
                    if ESX.Game.IsSpawnPointClear(v.garage1.spawn, 3.5) then
                        ESX.Game.SpawnVehicle(data.current.model, v.garage1.spawn, v.garage1.heading, function(vehicle)
                            SetVehicleLivery(vehicle, v.livrea or 0)
                            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                            SetPedIntoVehicle(PlayerPedId(), vehicle, -1)

                            if job == v.job then
                                SetVehicleCustomPrimaryColour(vehicle, v.garage1.color.rgb1, v.garage1.color.rgb2, v.garage1.color.rgb3)
                            end
                        end)
                    else
                        ESX.ShowNotification('Il punto di spawn è occupato', 'error')
                    end
                end
            end, function(data, menu) 
                menu.close() 
            end)
        end
    end
end
