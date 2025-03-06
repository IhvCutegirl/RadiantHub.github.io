-- game check
if game.PlaceId == 18901165922 then 
    local Current_Version = "V 0.5"

    --calling the library
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    Fluent.Version = Current_Version

    --creating window
    local Window = Fluent:CreateWindow({
        Title = "Radiant Hub " .. Fluent.Version,
        SubTitle = "by IhvCutegirl",
        TabWidth = 160,
        Size = UDim2.fromOffset(830, 525),
        Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Darker",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
    })

    -- global variables
    --local Auto_Upgrade_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/DevLooterHub.github.io/refs/heads/main/Upgrades.lua?token=GHSAT0AAAAAAC6KVHR4BWWSJMKYWPFVCWCUZ5Z6ITQ"))()
    local Auto_Thieving_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Thieving.lua"))()
    local Auto_Mine_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Mining.lua"))()
    local Open_All_Portions_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Portions.lua"))()
    local Open_All_Fruits_Normal_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fruits/Fruits_Normal.lua"))()
    local Open_All_Fruits_Shiny_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fruits/Fruits_Shiny.lua"))()
    local Auto_Upgrade_Mining_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/MiningUpgrades.lua"))()
    local Auto_Upgrade_Fishing_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/FishingUpgrades.lua"))()
    local Auto_Upgrade_Ice_Fishing_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/IceFishingUpgrades.lua"))()
    local Use_All_Normal_Baits_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fishing/Baits.lua"))()
    local Open_All_Fishing_Chests_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fishing/FishingChests.lua"))()


    local Auto_Mine_Selected = {}
    local Auto_Thieving_Selected = {}
    --local Auto_Upgarde_Selected = {}
    local Is_Auto_Roll_Coins_Check = false
    local Is_Auto_Breakables_Check = true
    local Is_Auto_Collect_Coins_Check = false
    local Is_Auto_Collect_Fruits_Check = false
    local Is_Auto_Thieving_Check = false
    local Is_Auto_Fish_Check = false
    local Is_Auto_Corrupted_Fish_Check = false
    local Is_Auto_Frozen_Bait_Check = false
    local Is_Auto_Corrupted_Bait_Check = false
    local Is_Auto_Claim_Daily_Bonus_Check = false
    local Is_Auto_Claim_Play_Time_Bonus_Check = false
    local Is_Auto_Mine_Check = false
    local Is_Auto_Magma_Scroll_Check = false
    local Is_Auto_Ice_Fish_Check =  false
    local Is_Open_Bundle_O_Scrolls_Check = false
    local Is_Open_Bundle_O_Boosts_Check = false
    local Is_Open_All_Portions_Check = false
    local Is_Open_All_Fruits_Normal_Check = false
    local Is_Open_All_Fruits_Shiny_Check = false
    local Is_Open_All_Fishing_Chests_Check = false
    local Is_Open_Frozen_Fishing_Chests_Check = false
    local Is_Use_All_Normal_Baits_Check = false
    local Is_Auto_Upgrade_All_Check_Check = false
    local Is_Auto_Upgrade_Mining_Check = false
    local Is_Auto_Upgrade_Fishing_Check = false
    local Is_Auto_Upgrade_Ice_Fishing_Check = false

    local Players1 = game:GetService("Players")
    local ReplicatedStorage1 = game:GetService("ReplicatedStorage")
    local player1 = Players1.LocalPlayer
    local character1 = player1.Character or player1.CharacterAdded:Wait()
    local hrp1 = character1:WaitForChild("HumanoidRootPart")
    -- Get the orbs folder
    local OrbsFolder = workspace:WaitForChild("__THINGS"):WaitForChild("Orbs")


    local Tabs = {
        Main = Window:AddTab{
            Title = "Main",
            Icon = "house"
        },
        Auto_Event = Window:AddTab{
            Title = "Event",
            Icon = "calendar-check"
        },
        Auto_Upgrade = Window:AddTab{
            Title = "Auto Upgrade",
            Icon = "square-arrow-up"
        },
        Items = Window:AddTab{
            Title = "Items",
            Icon = "shopping-cart"
        },
        Miscellaneous = Window:AddTab{
            Title = "Miscellaneous",
            Icon = "package-plus"
        },
        Settings = Window:AddTab{
            Title = "Settings",
            Icon = "settings"
        }
    }
    Window:SelectTab(1)

    -- auto farm section
    local Auto_Farm_Section = Tabs.Main:AddSection("Auto Farm")

    Auto_Farm_Section:AddParagraph({
        Title = "Auto Farm Warning",
        Content = "Please Join The Official Discord For fixing Any Issue Or Suggesting Any New Feature :)"
    })
    local Auto_Roll_Coins = Auto_Farm_Section:AddToggle("MyToggle", 
    {
    Title = "Auto Roll Coins", 
    Description = "Auto rolls the yellow coin",
    Default = false
    })
    Auto_Roll_Coins:OnChanged(function(Auto_Roll_Coins_Check)
            Is_Auto_Roll_Coins_Check=Auto_Roll_Coins_Check
            if Is_Auto_Roll_Coins_Check then
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Roll Coins Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("AutoRoll_Enable"):FireServer()
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("HiddenRoll_Enable"):FireServer()
                while Is_Auto_Roll_Coins_Check do
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_Roll"):InvokeServer()
                    task.wait()
                end
            else
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Roll Coins Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("AutoRoll_Disable"):FireServer()
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("HiddenRoll_Disable"):FireServer()
            end
    end)

    local Auto_Breakables = Auto_Farm_Section:AddToggle("MyToggle", 
    {
    Title = "Auto Breakables", 
    Description = "Auto Breaks Breakables",
    Default = false
    })
    Auto_Breakables:OnChanged(function(Auto_Breakables_Check)
            Is_Auto_Breakables_Check=Auto_Breakables_Check
            if Is_Auto_Breakables_Check then
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Breakables Is Enabled",
                    Duration = 0.1 -- Set to nil to make the notification not disappear
                }
                while Is_Auto_Breakables_Check do
                    for _, object in pairs(workspace.__THINGS.Breakables:GetChildren()) do
                        if object:FindFirstChild("1") or object:FindFirstChild("Bottom") or object:FindFirstChild("2") then
                            local partNameAsNumber = tonumber(object.Name)
                            for _, object1 in ipairs(workspace.__THINGS.Pets:GetChildren()) do

                                local args = {
                                    [1] = {
                                        [object1.Name] = partNameAsNumber
                                    }
                                }

                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Breakables_JoinPetBulk"):FireServer(unpack(args))
                            end
                            while object.Parent == workspace.__THINGS.Breakables do
                            task.wait(2)
                            end
                        end
                    end
                    task.wait(1)
                end
            else
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Breakables Is Disabled",
                    Duration = 0.1 -- Set to nil to make the notification not disappear
                }
            end
    end)

    local Auto_Collect_Coins = Auto_Farm_Section:AddToggle("MyToggle", 
    {
    Title = "Auto Collect Coins", 
    Description = "Auto Collects Coins",
    Default = false
    })
    Auto_Collect_Coins:OnChanged(function(Auto_Collect_Coins_Check)
            Is_Auto_Collect_Coins_Check=Auto_Collect_Coins_Check
            if Is_Auto_Collect_Coins_Check then
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Collect Coins Is Enabled",
                    Duration = 0.5 -- Set to nil to make the notification not disappear
                }
                for Index, Orb in ipairs(OrbsFolder:GetChildren()) do
                    task.wait(0.1)
                    if Orb then
                    local Args = {
                        [1] = {
                        [1] = tonumber(Orb.Name)
                        }
                    }
                    ReplicatedStorage1.Network:FindFirstChild("Orbs: Collect"):FireServer(unpack(Args))
                    Orb:Destroy()
                    end
                end
                OrbsFolder.ChildAdded:Connect(function(Orb)
                task.wait()
                if Orb then
                    local Args = {
                        [1] = {
                        [1] = tonumber(Orb.Name)
                        }
                    }
                    ReplicatedStorage1.Network:FindFirstChild("Orbs: Collect"):FireServer(unpack(Args))
                    Orb:Destroy()
                end
                end)
            else
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Roll Coins Is Disabled",
                    Duration = 0.5 -- Set to nil to make the notification not disappear
                }
            end
    end)

    local Auto_Collect_Fruits = Auto_Farm_Section:AddToggle("MyToggle", 
    {
    Title = "Auto Collect Fruits", 
    Description = "Auto Collects Fruits",
    Default = false
    })
    Auto_Collect_Fruits:OnChanged(function(Auto_Collect_Fruits_Check)
            Is_Auto_Collect_Fruits_Check=Auto_Collect_Fruits_Check
            if Is_Auto_Collect_Fruits_Check then
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Collect Fruits Is Enabled",
                    Duration = 0.5 -- Set to nil to make the notification not disappear
                }
                while Is_Auto_Collect_Fruits_Check do
                    for _, object in pairs(workspace.__THINGS.Breakables:GetChildren()) do
                        if object:FindFirstChild("base") then
                            local partNameAsNumber = tonumber(object.Name)
                            local hitbox = workspace.__THINGS.Breakables[partNameAsNumber].base.Hitbox
                            firetouchinterest(hrp1, hitbox, 0)
                        end
                        task.wait()
                    end
                    task.wait(10)
                end
            else
                Fluent:Notify{
                    Title = "Looter Hub Notification",
                    Content = "Auto Collect Fruits Is Disabled",
                    Duration = 0.5 -- Set to nil to make the notification not disappear
                }
            end
    end)

    Auto_Farm_Section:AddParagraph({
        Title = "Use Only After Thieving Upgrade Has Been Unlocked!!!"
    })
    local Auto_Thieving_Select = Auto_Farm_Section:AddDropdown("MultiDropdown", {
        Title = "Select Which Stall To Thieve",
        Description = "Select which stall you want to thieve",
        Values = {"Wood", "Blue", "Black", "Marble", "Steam Punk", "Tech", "Royal", "Purple Castle"},
        Multi = true,
        Default = {},
    })
    Auto_Thieving_Select:OnChanged(function(Value)
        Auto_Thieving_Selected = {}
        for Value, State in next, Value do
            Auto_Thieving_Selected[#Auto_Thieving_Selected + 1] = Value
        end
    end)
    local Auto_Thieving = Auto_Farm_Section:AddToggle("MyToggle", 
    {
    Title = "Auto Thieving", 
    Description = "Auto Thievies for you",
    Default = false
    })
    Auto_Thieving:OnChanged(function(Auto_Thieving_Check)
        Is_Auto_Thieving_Check=Auto_Thieving_Check
        if Is_Auto_Thieving_Check then
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Thieving Is Enabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            while Is_Auto_Thieving_Check do
                Auto_Thieving_Calling:Auto_Thieving_Selected_Function(Auto_Thieving_Selected)
                task.wait()
            end
        else
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Thieving Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
        end
    end)

    local Mining = Tabs.Main:AddSection("Mining")
    Mining:AddParagraph({
        Title = "Use Only After Mining Upgrade Has Been Unlocked!!!"
    })
    Mining:AddButton{
        Title = "Equip Best Pickaxe",
        Description = "Click this to equip the best pickaxe you currently can",
        Default = false,
        Callback = function()
            local args = {
                [1] = "ec70eab4a81244ea8b056bc2e9db7e99"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_SetSelectedPickaxe"):InvokeServer(unpack(args)) --This is for wodden pickaxe
            local args = {
                [1] = "cdada0b6dc8c4312b09c013a3bb8172c"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_SetSelectedPickaxe"):InvokeServer(unpack(args)) --This is for stone pickaxe
            local args = {
                [1] = "0dd64e6525e9415cb561e6a6115d80f0"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_SetSelectedPickaxe"):InvokeServer(unpack(args)) --This is for bronze pickaxe
            local args = {
                [1] = "0ce325b681b74dceb62460dfca560456"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_SetSelectedPickaxe"):InvokeServer(unpack(args)) --This is for Iron pickaxe
            local args = {
                [1] = "d8e4d96778b345ac86ac91f26ca54752"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_SetSelectedPickaxe"):InvokeServer(unpack(args)) --This is for Golden Pickaxe
        end
    }
    local Auto_Mine_Select = Mining:AddDropdown("MultiDropdown", {
        Title = "Select Ores To Mine",
        Description = "Only select the ones you have unlocked",
        Values = {"Dirt Ore", "Stone Ore", "Copper Ore", "Iron Ore", "Gold Ore", "Emerald Ore", "Obsidian Ore", "Diamond Ore", "Lava Ore"},
        Multi = true,
        Default = {},
     })
    Auto_Mine_Select:OnChanged(function(Value)
        Auto_Mine_Selected = {}
        for Value, State in next, Value do
            Auto_Mine_Selected[#Auto_Mine_Selected + 1] = Value
        end
    end)

    local Auto_Magma_Scroll = Mining:AddToggle("MyToggle", 
    {
    Title = "Auto Use Magma Scroll",
    Description = "Auto consumes Magma scroll",
    Default = false
    })

    Auto_Magma_Scroll:OnChanged(function(Auto_Magma_Scroll_Check)
        Is_Auto_Magma_Scroll_Check=Auto_Magma_Scroll_Check
        if Is_Auto_Magma_Scroll_Check then
            while Is_Auto_Magma_Scroll_Check do
                local args = {
                    [1] = "748c6af73ccc4c509c0ac106621c087c", -- magma scroll
                    [2] = 1
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
                task.wait()
            end
        end
    end)

    local Auto_Mine = Mining:AddToggle("MyToggle", 
    {
    Title = "Auto Mine", 
    Description = "Auto Mines the selected ores",
    Default = false
    })

    Auto_Mine:OnChanged(function(Auto_Mine_Check)
        Is_Auto_Mine_Check=Auto_Mine_Check
        if Is_Auto_Mine_Check then
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Mine Is Enabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
        else
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Mine Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
        end
        while Is_Auto_Mine_Check do 
            Auto_Mine_Calling:Auto_Mine_Selected_Ores(Auto_Mine_Selected)
            task.wait()
        end
    end)

    local Fishing = Tabs.Main:AddSection("Fishing")

    Fishing:AddParagraph({
        Title = "Use Only After Fishing Upgrade Has Been Unlocked!!!",
    })
    local Auto_Fish = Fishing:AddToggle("MyToggle", 
    {
    Title = "Auto Fish", 
    Description = "Auto Fishes",
    Default = false
    })
    Auto_Fish:OnChanged(function(Auto_Fish_Check)
        Is_Auto_Fish_Check=Auto_Fish_Check
        if Is_Auto_Fish_Check then
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Fish Is Enabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            while Is_Auto_Fish_Check do
                local args = {
                    [1] = "Default"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args))-- Setting to fish
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer() --Successfully Catch Fish
            end
        else
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Fish Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
        end
    end)

    Fishing:AddParagraph({
        Title = "Use Only After Iron Rod Has Been Unlocked!!!",
    })

    local Auto_Ice_Bait = Fishing:AddToggle("MyToggle", 
    {
    Title = "Auto Use Frozen Bait", 
    Description = "Auto consumes Frozen bait",
    Default = false
    })

    Auto_Ice_Bait:OnChanged(function(Auto_Ice_Bait_Check)
        Is_Auto_Frozen_Bait_Check=Auto_Ice_Bait_Check
        if Is_Auto_Frozen_Bait_Check then
            while Is_Auto_Frozen_Bait_Check do
                local args = {
                    [1] = "36d511d010d546e6af243e3f577963af", --frozen bait
                    [2] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
                task.wait()
            end
        end
    end)

    local Auto_Ice_Fish = Fishing:AddToggle("MyToggle", 
    {
    Title = "Auto Ice Fish", 
    Description = "Auto fishes in the ice region",
    Default = false
    })
    Auto_Ice_Fish:OnChanged(function(Auto_Ice_Fish_Check)
        Is_Auto_Ice_Fish_Check=Auto_Ice_Fish_Check
        if Is_Auto_Ice_Fish_Check then
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Ice Fish Is Enabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            while Is_Auto_Ice_Fish_Check do
                local args = {
                    [1] = "Ice"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args))-- Setting to fish

                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer() --Successfully Catch Fish
                task.wait()
            end
        else
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Ice Fish Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
        end
    end)

    Fishing:AddParagraph({
        Title = "Use Only If You Have Coruptted Bait!!!",
    })

    local Auto_Corrupted_Bait = Fishing:AddToggle("MyToggle", 
    {
    Title = "Auto Use Corrupted Bait", 
    Description = "Auto consumes Corrupted bait",
    Default = false
    })

    Auto_Corrupted_Bait:OnChanged(function(Auto_Corrupted_Bait_Check)
        Is_Auto_Corrupted_Bait_Check=Auto_Corrupted_Bait_Check
        if Is_Auto_Corrupted_Bait_Check then
            while Is_Auto_Corrupted_Bait_Check do
                local args = {
                    [1] = "b1176127ce004d3ca7ad3d9ec17afca1", -- curupted bait
                    [2] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
                task.wait()
            end
        end
    end)

    local Auto_Corrupted_Fish = Fishing:AddToggle("MyToggle", 
    {
    Title = "Auto Corrupted Fish", 
    Description = "Auto fishes in the Corrupted region",
    Default = false
    })

    Auto_Corrupted_Fish:OnChanged(function(Auto_Corrupted_Fish_Check)
        Is_Auto_Corrupted_Fish_Check=Auto_Corrupted_Fish_Check
        if Is_Auto_Corrupted_Fish_Check then
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Corrupted Fish Is Enabled",
                Duration = 0.5 -- Set to nil to make the notification not disappear
            }
            while Is_Auto_Corrupted_Fish_Check do
                local args = {
                    [1] = "Corrupted"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args))

                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer()
                task.wait()
            end
        else
            Fluent:Notify{
                Title = "Looter Hub Notification",
                Content = "Auto Corrupted Fish Is Disabled",
                Duration = 0.5 -- Set to nil to make the notification not disappear
            }
        end
    end)

    --Upgrade Section
    local Auto_Upgrade_All = Tabs.Auto_Upgrade:AddSection("Auto Upgrade All")

    Auto_Upgrade_All:AddParagraph({
        Title = "Use This Or Upgarde Specific, Dont Use Both At The Same Time!!!",
    })

    local Auto_Upgrade_Specific = Tabs.Auto_Upgrade:AddSection("Auto Upgrade Specific")

    Auto_Upgrade_Specific:AddParagraph({
        Title = "Use This Or Upgarde All, Dont Use Both At The Same Time!!!",
    })

    local Auto_Upgrade_Mining = Auto_Upgrade_Specific:AddToggle("MyToggle", 
    {
    Title = "Auto Mining Upgrades", 
    Description = "Use it for only mining upgrades!!",
    Default = false
    })
    Auto_Upgrade_Mining:OnChanged(function(Auto_Upgrade_Mining_Check)
        Is_Auto_Upgrade_Mining_Check=Auto_Upgrade_Mining_Check
        while Is_Auto_Upgrade_Mining_Check do
            Auto_Upgrade_Mining_Calling:Mining_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Fishing = Auto_Upgrade_Specific:AddToggle("MyToggle", 
    {
    Title = "Auto Fishing Upgrades", 
    Description = "Use it for only fishing upgrades!!",
    Default = false
    })
    Auto_Upgrade_Fishing:OnChanged(function(Auto_Upgrade_Fishing_Check)
        Is_Auto_Upgrade_Fishing_Check=Auto_Upgrade_Fishing_Check
        while Is_Auto_Upgrade_Fishing_Check do
            Auto_Upgrade_Fishing_Calling:Fishing_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Ice_Fishing = Auto_Upgrade_Specific:AddToggle("MyToggle", 
    {
    Title = "Auto Ice Fishing Upgrades", 
    Description = "Use it for only Ice fishing upgrades!!",
    Default = false
    })
    Auto_Upgrade_Ice_Fishing:OnChanged(function(Auto_Upgrade_Ice_Fishing_Check)
        Is_Auto_Upgrade_Ice_Fishing_Check=Auto_Upgrade_Ice_Fishing_Check
        while Is_Auto_Upgrade_Ice_Fishing_Check do
            Auto_Upgrade_Ice_Fishing_Calling:Ice_Fishing_Upgrades_Specific()
            task.wait()
        end
    end)


    -- Items Section
    local Lootboxes = Tabs.Items:AddSection("Lootboxes")
    
    local Open_Bundle_O_Scrolls = Lootboxes:AddToggle("MyToggle", 
    {
    Title = "Open Bundle O Scrolls", 
    Description = "Use it only after u have a lot of it!!",
    Default = false
    })
    Open_Bundle_O_Scrolls:OnChanged(function(Open_Bundle_O_Scrolls_Check)
        Is_Open_Bundle_O_Scrolls_Check=Open_Bundle_O_Scrolls_Check
        while Is_Open_Bundle_O_Scrolls_Check do
            local args = {
                [1] = "ff483b1057df4f689a15b44db8b7cf2e",
                [2] = 1 -- opening bundle o scrolls
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbox: Open"):InvokeServer(unpack(args))
            task.wait()
        end
    end)

    local Open_Bundle_O_Boosts = Lootboxes:AddToggle("MyToggle", 
    {
    Title = "Open Bundle O Boosts", 
    Description = "Use it only after u have a lot of it!!",
    Default = false
    })
    Open_Bundle_O_Boosts:OnChanged(function(Open_Bundle_O_Boosts_Check)
        Is_Open_Bundle_O_Boosts_Check=Open_Bundle_O_Boosts_Check
        while Is_Open_Bundle_O_Boosts_Check do
            local args = {
                [1] = "0ebf129d7ee94991a93c6bb30ff593eb",
                [2] = 1 --opening bundle o boosts
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbox: Open"):InvokeServer(unpack(args))
            task.wait()
        end
    end)

    local Portions = Tabs.Items:AddSection("Portions")

    local Open_All_Portions = Portions:AddToggle("MyToggle", 
    {
    Title = "Use All Portions", 
    Description = "",
    Default = false
    })
    Open_All_Portions:OnChanged(function(Open_All_Portions_Check)
        Is_Open_All_Portions_Check=Open_All_Portions_Check
        while Is_Open_All_Portions_Check do
            Open_All_Portions_Calling:Portions_All()
            task.wait()
        end
    end)

    local Fruits = Tabs.Items:AddSection("Fruits")

    local Open_All_Fruits_Normal = Fruits:AddToggle("MyToggle", 
    {
    Title = "Use All Normal Fruits", 
    Description = "",
    Default = false
    })
    Open_All_Fruits_Normal:OnChanged(function(Open_All_Fruits_Normal_Check)
        Is_Open_All_Fruits_Normal_Check=Open_All_Fruits_Normal_Check
        while Is_Open_All_Fruits_Normal_Check do
            Open_All_Fruits_Normal_Calling:Use_Fruits_Normal()
            task.wait()
        end
    end)

    local Open_All_Fruits_Shiny = Fruits:AddToggle("MyToggle", 
    {
    Title = "Use All Shiny Fruits", 
    Description = "",
    Default = false
    })
    Open_All_Fruits_Shiny:OnChanged(function(Open_All_Fruits_Shiny_Check)
        Is_Open_All_Fruits_Shiny_Check=Open_All_Fruits_Shiny_Check
        while Is_Open_All_Fruits_Shiny_Check do
            Open_All_Fruits_Shiny_Calling:Use_Fruits_Shiny()
            task.wait()
        end
    end)

    local Fishing_Items = Tabs.Items:AddSection("Baits")

    local Open_All_Fishing_Chests = Fishing_Items:AddToggle("MyToggle", 
    {
    Title = "Open All Normal Fishing Chests", 
    Description = "",
    Default = false
    })
    Open_All_Fishing_Chests:OnChanged(function(Open_All_Fishing_Chests_Check)
        Is_Open_All_Fishing_Chests_Check=Open_All_Fishing_Chests_Check
        while Is_Open_All_Fishing_Chests_Check do
            Open_All_Fishing_Chests_Calling:Use_All_Fishing_Chests()
            task.wait()
        end
    end)

    local Open_Frozen_Fishing_Chests = Fishing_Items:AddToggle("MyToggle", 
    {
    Title = "Open Frozen Fishing Chests", 
    Description = "",
    Default = false
    })
    Open_Frozen_Fishing_Chests:OnChanged(function(Open_Frozen_Fishing_Chests_Check)
        Is_Open_Frozen_Fishing_Chests_Check=Open_Frozen_Fishing_Chests_Check
        while Is_Open_Frozen_Fishing_Chests_Check do
            local args = {
                [1] = "5588cf87e36f46919b11e4d901f33990",
                [2] = 1
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbox: Open"):InvokeServer(unpack(args))
            task.wait()
        end
    end)

    local Use_All_Normal_Baits = Fishing_Items:AddToggle("MyToggle", 
    {
    Title = "Use All Normal Baits", 
    Description = "",
    Default = false
    })
    Use_All_Normal_Baits:OnChanged(function(Use_All_Normal_Baits_Check)
        Is_Use_All_Normal_Baits_Check=Use_All_Normal_Baits_Check
        while Is_Use_All_Normal_Baits_Check do
            Use_All_Normal_Baits_Calling:Consume_Normal_Baits_All()
            task.wait()
        end
    end)


    --Hub loaded noti
    Fluent:Notify{
        Title = "Looter Hub Notification",
        Content = "Succesfully Loaded Looter Hub",
        SubContent = "Enjoy your time :)", -- Optional
        Duration = 3 -- Set to nil to make the notification not disappear
    }
end
