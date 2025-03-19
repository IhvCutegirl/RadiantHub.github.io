-- game check
if game.PlaceId == 18901165922 then 
    local Current_Version = "V 0.9"

    --calling the library
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
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
    --Modules
    --local Auto_Upgrade_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/DevLooterHub.github.io/refs/heads/main/Upgrades.lua?token=GHSAT0AAAAAAC6KVHR4BWWSJMKYWPFVCWCUZ5Z6ITQ"))()
    local Auto_Thieving_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Thieving.lua"))()
    local Auto_Mine_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Mining.lua"))()
    local Open_All_Portions_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Portions.lua"))()
    local Open_All_Fruits_Normal_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fruits/Fruits_Normal.lua"))()
    local Open_All_Fruits_Shiny_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fruits/Fruits_Shiny.lua"))()
    local Auto_Upgrade_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/UpgardeAll.lua"))()
    local Auto_Upgrade_Mining_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/MiningUpgrades.lua"))()
    local Auto_Upgrade_Fishing_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/FishingUpgrades.lua"))()
    local Auto_Upgrade_Ice_Fishing_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/IceFishingUpgrades.lua"))()
    local Use_All_Normal_Baits_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fishing/Baits.lua"))()
    local Open_All_Fishing_Chests_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Items/Fishing/FishingChests.lua"))()
    local Auto_Boating_Fish_Upgrades_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/Boat_Upgrades.lua"))()
    local Auto_Upgrade_Boat_Fishing_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/BoatFishingUpgrades.lua"))()
    local Auto_Upgrade_Leveling_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/Leveling_Upgrades.lua"))()
    local Auto_Upgrade_Luckier_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/LuckierUpgardes.lua"))()
    local Auto_Upgrade_Weather_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/WeatherUpgrades.lua"))()
    local Auto_Upgrade_Trading_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/TradingUpgrades.lua"))()
    local Auto_Upgrade_Thieving_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/ThievingUpgrades.lua"))()
    local Auto_Upgrade_Breakables_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/BreakablesUpgrades.lua"))()
    local Auto_Upgrade_Boosts_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/RadiantHub.github.io/refs/heads/main/Upgardes/Specific%20Upgardes/BoostsUpgardes.lua"))()

    --Function Checkers
    local Auto_Mine_Selected = {}
    local Auto_Thieving_Selected = {}
    local Auto_Merchants_Selected = {}
    local Merchant_Item_Selected = {}
    --local ids = {}
    --local amounts = {}
    --local Auto_Upgarde_Selected = {}
    local Is_Auto_Roll_Egg_Check = false
    local Is_Auto_Breakables_Check = false
    local Is_Auto_Collect_Coins_Check = false
    local Is_Auto_Collect_Fruits_Check = false
    local Is_Auto_Collect_Flying_Gifts_Check = false
    local Is_Auto_Collect_Hidden_Gifts_Check = false
    local Is_Auto_Thieving_Check = false
    local Is_Auto_Fish_Check = false
    local Is_Auto_Boating_Fish_Check = false
    local Is_Auto_Boating_Fish_Upgrades_Check = false
    local Is_Auto_Kraken_Fish_Check = false
    local Is_Auto_Corrupted_Fish_Check = false
    local Is_Auto_Frozen_Bait_Check = false
    local Is_Auto_Corrupted_Bait_Check = false
    local Is_Auto_Claim_Daily_Bonus_Check = false
    local Is_Auto_Bonus_Collect_Check = false
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
    local Is_Auto_Upgrade_Check = false
    local Is_Auto_Upgrade_Mining_Check = false
    local Is_Auto_Upgrade_Fishing_Check = false
    local Is_Auto_Upgrade_Ice_Fishing_Check = false
    local Is_Auto_Upgrade_Boat_Fishing_Check = false
    local Is_Auto_Upgrade_Leveling_Check = false
    local Is_Auto_Upgrade_Luckier_Check = false
    local Is_Auto_Upgrade_Weather_Check = false
    local Is_Auto_Upgrade_Trading_Check = false
    local Is_Auto_Upgrade_Thieving_Check = false
    local Is_Auto_Upgrade_Breakables_Check = false
    local Is_Auto_Upgrade_Boosts_Check = false
    local Is_Auto_Portions_Vendng_Machine_Check = false
    local Is_Auto_Merchant_Check = false

    --event
    local Clover_Areas = {"Patch_1","Patch_2","Patch_3","Patch_4","Patch_5","Patch_6","Patch_7","Patch_8"}
    local Clover_Collector = {"Patch_1_Farmer","Patch_2_Farmer","Patch_3_Farmer","Patch_4_Farmer","Patch_5_Farmer","Patch_6_Farmer","Patch_7_Farmer","Patch_8_Farmer"}
    local Clover_Area_Speeds = {"Patch_1_Speed1","Patch_1_Speed2","Patch_1_Speed3","Patch_2_Speed1","Patch_2_Speed2","Patch_2_Speed3","Patch_3_Speed1","Patch_3_Speed2","Patch_3_Speed3","Patch_4_Speed1","Patch_4_Speed2","Patch_4_Speed3","Patch_5_Speed1","Patch_5_Speed2","Patch_5_Speed3","Patch_6_Speed1","Patch_6_Speed2","Patch_6_Speed3","Patch_7_Speed1","Patch_7_Speed2","Patch_7_Speed3","Patch_8_Speed1","Patch_8_Speed2","Patch_8_Speed3"}
    local Clover_Area_Quality = {"Patch_1_Quality1","Patch_1_Quality2","Patch_1_Quality3","Patch_2_Quality1","Patch_2_Quality2","Patch_2_Quality3","Patch_3_Quality1","Patch_3_Quality2","Patch_3_Quality3","Patch_4_Quality1","Patch_4_Quality2","Patch_4_Quality3","Patch_5_Quality1","Patch_5_Quality2","Patch_5_Quality3","Patch_6_Quality1","Patch_6_Quality2","Patch_6_Quality3","Patch_7_Quality1","Patch_7_Quality2","Patch_7_Quality3","Patch_8_Quality1","Patch_8_Quality2","Patch_8_Quality3"}
    local Is_Auto_Clover_Pot_Check = false
    local Auto_Clover_Pot_Notification = 0
    local Is_Clover_Area_Quality_Check = false
    local Auto_Clover_Area_Quality_Notification = 0
    local Is_Clover_Area_Speed_Check = false
    local Auto_Clover_Area_Speed_Notification = 0
    local Is_Auto_Clover_Farmer_Check = false
    local Auto_Clover_Farmer_Notification = 0
    local Is_Auto_Clover_Area_Check = false
    local Auto_Clover_Area_Notification = 0
    local Is_Auto_Clover_Collect_Check = false
    local Auto_Clover_Collect_Notification = 0
    local runningTask1 = true
    local runningTask2 = true
    local runningTask3 = true
    local runningTask4 = true
    local num1 = 5
    local num2 = 10
    local num3 = 15
    local Is_Auto_Clover_Storage_Collect_Check = false
    local Auto_Clover_Storage_Collect_Notification = 0
    local Is_Auto_Clover_Merchant_Check = false
    local Auto_Clover_Merchant_Notification = 0
    local Is_Auto_Clover_Upgrade_Check = false
    local Auto_Clover_Upgrade_Notification = 0
    local Clover_Upgrades_Folder = game:GetService("ReplicatedStorage").__DIRECTORY.Upgrades.Root["St Patrick\226\128\153s Event"]
    local Clover_Upgrades = {}
    local Clover_Upgrades_Counter = 0

    --Function disconnectors
    local Orbs_Collector

    --Get Services
    local Players = game:GetService("Players")
    local Replicated_Storage = game:GetService("ReplicatedStorage")
    local Player_Character = Players.LocalPlayer.Character
    local Humanoid_Root_Part = Player_Character:WaitForChild("HumanoidRootPart")
    local Character_Humanoid = Player_Character:WaitForChild("Humanoid")

    -- Get folders
    local OrbsFolder = workspace:WaitForChild("__THINGS"):WaitForChild("Orbs")
    local Flying_Gifts = workspace.__THINGS:WaitForChild("FlyingGifts")
    local Hidden_Gifts = workspace.__THINGS:WaitForChild("HiddenGifts")
    
    -- Notifications controlers
    local Auto_Roll_Egg_Notification = 0
    local Auto_Breakables_Notification = 0
    local Auto_Collect_Coins_Notification = 0
    local Auto_Collect_Fruits_Notification = 0
    local Auto_Collect_Flying_Gifts_Notification = 0
    local Auto_Collect_Hidden_Gifts_Notification = 0
    local Auto_Mine_Notification = 0
    local Auto_Magma_Scroll_Notification = 0
    local Auto_Fish_Notification = 0
    local Auto_Boating_Fish_Notification = 0
    local Auto_Boating_Fish_Upgrades_Notification = 0
    local Auto_Kraken_Fish_Notification = 0
    local Auto_Ice_Bait_Notification = 0
    local Auto_Corrupted_Bait_Notification = 0
    local Auto_Thieving_Notification = 0
    local Auto_Ice_Fish_Notification = 0
    local Auto_Corrupted_Fish_Notification = 0
    local Auto_Upgrade_Notification = 0
    local Auto_Portions_Vendng_Machine_Notification = 0
    local Auto_Merchant_Notification = 0
    local Auto_Bonus_Collect_Notification = 0



    local Tabs = {
        Main = Window:AddTab{
            Title = "| Info",
            Icon = "info"
        },
        Auto_Farm = Window:AddTab{
            Title = "| Auto Farm",
            Icon = "recycle"
        },
        --[[ Stats = Window:AddTab{
            Title = "Stats",
            Icon = "info"
        }, --]]
        Auto_Event = Window:AddTab{
            Title = "| Event",
            Icon = "calendar-check"
        },
        Auto_Upgrade = Window:AddTab{
            Title = "| Auto Upgrade",
            Icon = "arrow-big-up"
        },
        Items = Window:AddTab{
            Title = "| Items",
            Icon = "shopping-bag"
        },
        Shop = Window:AddTab{
            Title = "| Shops",
            Icon = "shopping-cart"
        },
        Miscellaneous = Window:AddTab{
            Title = "| Miscellaneous",
            Icon = "package-plus"
        },
        Settings = Window:AddTab{
            Title = "| Settings",
            Icon = "settings"
        }
    }
    Window:SelectTab(1)

    Tabs.Main:AddParagraph({
        Title = "Welcome To Radiant Hub",
        Content = "Please Join The Official Discord For fixing Any Issue Or Suggesting Any New Feature :)"
    })

    Tabs.Main:AddButton{
        Title = "Join Discord",
        Description = "Use this to copy link to join the Oficial Discord",
        Default = false,
        Callback = function()
            setclipboard("https://discord.gg/fqstNbDk") -- Copy the link to the clipboard
        end
    }

    local Credits_Section = Tabs.Main:AddSection("| Credits :")
    Credits_Section:AddParagraph({
        Title = "IhvCutegirl",
        Content = "The Owner Of The Script"
    })


    -- auto farm section
    local Auto_Farm_Section = Tabs.Auto_Farm:AddSection("| Auto Farm")

    Auto_Farm_Section:AddParagraph({
        Title = "Auto Farm Warning",
        Content = "Make sure to use the auto farm features only after you have unlocked the respective upgrades"
    })
    local Auto_Roll_Egg = Auto_Farm_Section:AddToggle("Auto_Roll_Egg", 
    {
    Title = "Auto Roll Egg", 
    Description = "Auto rolls the egg",
    Default = false
    })
    Auto_Roll_Egg:OnChanged(function(Auto_Roll_Egg_Check)
            Is_Auto_Roll_Egg_Check=Auto_Roll_Egg_Check
            if Is_Auto_Roll_Egg_Check then
                if Auto_Roll_Egg_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Roll Egg Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
                end
                if Auto_Roll_Egg_Notification == 1 then
                    Auto_Roll_Egg_Notification = Auto_Roll_Egg_Notification + 1
                end
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("AutoRoll_Enable"):FireServer()
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("HiddenRoll_Enable"):FireServer()
                while Is_Auto_Roll_Egg_Check do
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_Roll"):InvokeServer()
                    task.wait()
                end
            else
                if Auto_Roll_Egg_Notification > 0 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Roll Egg Is Disabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Roll_Egg_Notification == 0 then
                    Auto_Roll_Egg_Notification = Auto_Roll_Egg_Notification + 1
                end
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("AutoRoll_Disable"):FireServer()
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("HiddenRoll_Disable"):FireServer()
            end
    end)

    local Auto_Breakables = Auto_Farm_Section:AddToggle("Auto_Breakables", 
    {
    Title = "Auto Breakables", 
    Description = "Auto Breaks Breakables",
    Default = false
    })
    Auto_Breakables:OnChanged(function(Auto_Breakables_Check)
            Is_Auto_Breakables_Check=Auto_Breakables_Check
            if Is_Auto_Breakables_Check then
                if Auto_Breakables_Notification > 1 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Breakables Is Enabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Breakables_Notification == 1 then
                    Auto_Breakables_Notification = Auto_Breakables_Notification + 1
                end
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
                        task.wait()
                    end
                    task.wait(1)
                end
            else
                if Auto_Breakables_Notification > 0 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Breakables Is Disabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Breakables_Notification == 0 then
                    Auto_Breakables_Notification = Auto_Breakables_Notification + 1
                end
            end
    end)

    local Auto_Collect_Coins = Auto_Farm_Section:AddToggle("Auto_Collect_Coins", 
    {
    Title = "Auto Collect Coins", 
    Description = "Auto Collects Coins",
    Default = false
    })
    Auto_Collect_Coins:OnChanged(function(Auto_Collect_Coins_Check)
            Is_Auto_Collect_Coins_Check=Auto_Collect_Coins_Check
            if Is_Auto_Collect_Coins_Check then
                if Auto_Collect_Coins_Notification > 1 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Collect Coins Is Enabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Collect_Coins_Notification == 1 then
                    Auto_Collect_Coins_Notification = Auto_Collect_Coins_Notification + 1
                end
                for Index, Orb in ipairs(OrbsFolder:GetChildren()) do
                    task.wait()
                    if Orb then
                    local Args = {
                        [1] = {
                        [1] = tonumber(Orb.Name)
                        }
                    }
                    Replicated_Storage.Network:FindFirstChild("Orbs: Collect"):FireServer(unpack(Args))
                    Orb:Destroy()
                    end
                end
                Orbs_Collector = OrbsFolder.ChildAdded:Connect(function(Orb)
                task.wait()
                if not Is_Auto_Collect_Coins_Check then
                return  -- Exit early if the flag is false
                end
                if Orb then
                    local Args = {
                        [1] = {
                        [1] = tonumber(Orb.Name)
                        }
                    }
                    Replicated_Storage.Network:FindFirstChild("Orbs: Collect"):FireServer(unpack(Args))
                    Orb:Destroy()
                end
                end)
            else
                if Orbs_Collector then
                    Orbs_Collector:Disconnect()  -- Stop listening for new orbs
                end
                if Auto_Collect_Coins_Notification > 0 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Roll Coins Is Disabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Collect_Coins_Notification == 0 then
                    Auto_Collect_Coins_Notification = Auto_Collect_Coins_Notification + 1
                end
            end
    end)

    local Auto_Collect_Fruits = Auto_Farm_Section:AddToggle("Auto_Collect_Fruits", 
    {
    Title = "Auto Collect Fruits", 
    Description = "Auto Collects Fruits",
    Default = false
    })
    Auto_Collect_Fruits:OnChanged(function(Auto_Collect_Fruits_Check)
        Is_Auto_Collect_Fruits_Check=Auto_Collect_Fruits_Check
        if Is_Auto_Collect_Fruits_Check then
            if Auto_Collect_Fruits_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Collect Fruits Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Collect_Fruits_Notification == 1 then
                Auto_Collect_Fruits_Notification = Auto_Collect_Fruits_Notification + 1
            end
            while Is_Auto_Collect_Fruits_Check do
                for _, object in ipairs(workspace.__THINGS.Breakables:GetChildren()) do
                    local basePart = object:FindFirstChild("base")
                    if basePart then
                        local hitbox = basePart:FindFirstChild("Hitbox")
                        if hitbox and hitbox:IsA("BasePart") then
                            firetouchinterest(Humanoid_Root_Part, hitbox, 0)
                            firetouchinterest(Humanoid_Root_Part, hitbox, 1)
                        end
                    end
                    task.wait(0.1)
                end
            end
        else
            if Auto_Collect_Fruits_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Collect Fruits Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Collect_Fruits_Notification == 0 then
                Auto_Collect_Fruits_Notification = Auto_Collect_Fruits_Notification + 1
            end
        end
    end)

    local Auto_Collect_Flying_Gifts = Auto_Farm_Section:AddToggle("Auto_Collect_Flying_Gifts", 
    {
    Title = "Auto Collect Flying Gifts", 
    Description = "Auto Collects Flying Gifts",
    Default = false
    })
    Auto_Collect_Flying_Gifts:OnChanged(function(Auto_Collect_Flying_Gifts_Check)
            Is_Auto_Collect_Flying_Gifts_Check=Auto_Collect_Flying_Gifts_Check
            if Is_Auto_Collect_Flying_Gifts_Check then
                if Auto_Collect_Flying_Gifts_Notification > 1 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Collect Flying Gifts Is Enabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Collect_Flying_Gifts_Notification == 1 then
                    Auto_Collect_Flying_Gifts_Notification = Auto_Collect_Flying_Gifts_Notification + 1
                end
                while Is_Auto_Collect_Flying_Gifts_Check do
                    if Flying_Gifts:GetChildren() ~= 0 then
                        local model = Flying_Gifts:FindFirstChild("Model")
                        if model then
                        local Balloon_ID = workspace.__THINGS.FlyingGifts.Model.Balloon:GetAttribute("FlyingGiftUID")
                        local args = {
                            [1] = Balloon_ID
                        }

                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FlyingGifts_Claim"):FireServer(unpack(args))
                        workspace.__THINGS.FlyingGifts.Model:Destroy()
                        end
                    end
                    task.wait(0.1)
                end
            else
                if Auto_Collect_Flying_Gifts_Notification > 0 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Collect Flying Gifts Is Disabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Collect_Flying_Gifts_Notification == 0 then
                    Auto_Collect_Flying_Gifts_Notification = Auto_Collect_Flying_Gifts_Notification + 1
                end
            end
    end)

    local Auto_Collect_Hidden_Gifts = Auto_Farm_Section:AddToggle("Auto_Collect_Hidden_Gifts", 
    {
    Title = "Auto Collect Hidden Gifts", 
    Description = "Auto Collects Hidden Gifts",
    Default = false
    })
    Auto_Collect_Hidden_Gifts:OnChanged(function(Auto_Collect_Hidden_Gifts_Check)
            Is_Auto_Collect_Hidden_Gifts_Check=Auto_Collect_Hidden_Gifts_Check
            if Is_Auto_Collect_Hidden_Gifts_Check then
                if Auto_Collect_Hidden_Gifts_Notification > 1 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Collect Hidden Gifts Is Enabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Collect_Hidden_Gifts_Notification == 1 then
                    Auto_Collect_Hidden_Gifts_Notification = Auto_Collect_Hidden_Gifts_Notification + 1
                end
                while Is_Auto_Collect_Hidden_Gifts_Check do
                    if Hidden_Gifts:GetChildren() ~= 0 then
                        local Hidden_Gifts_Tp_Checker = 0
                        local Pos_Before_Hidden_Gifts_Collection = Humanoid_Root_Part.CFrame
                        for _, child in ipairs(Hidden_Gifts:GetChildren()) do
                            local Hidden_Gift_Model = child:FindFirstChild("Model")
                            if Hidden_Gift_Model then
                                Character_Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                Humanoid_Root_Part.CFrame = Hidden_Gift_Model.CFrame
                                Hidden_Gifts_Tp_Checker = Hidden_Gifts_Tp_Checker + 1
                                task.wait(0.5)
                            end
                        end
                        if Hidden_Gifts_Tp_Checker > 0 then
                            Character_Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            Humanoid_Root_Part.CFrame = Pos_Before_Hidden_Gifts_Collection
                            Hidden_Gifts_Tp_Checker = 0
                        end
                    end
                    task.wait()
                end
            else
                if Auto_Collect_Hidden_Gifts_Notification > 0 then
                    Fluent:Notify{
                        Title = "Radiant Hub Notification",
                        Content = "Auto Collect Hidden Gifts Is Disabled",
                        Duration = 1 -- Set to nil to make the notification not disappear
                    }
                end
                if Auto_Collect_Hidden_Gifts_Notification == 0 then
                    Auto_Collect_Hidden_Gifts_Notification = Auto_Collect_Hidden_Gifts_Notification + 1
                end
            end
    end)

    Auto_Farm_Section:AddParagraph({
        Title = "►─═ 🆃🅷🅸🅴🆅🅸🅽🅶 ═─◄",
    })

    Auto_Farm_Section:AddParagraph({
        Title = "Use Only After Thieving Upgrade Has Been Unlocked!!!"
    })
    local Auto_Thieving_Select = Auto_Farm_Section:AddDropdown("Auto_Thieving_Select", {
        Title = "Select Which Stall To Thieve",
        Description = "Select which stall you want to thieve",
        Values = {"Wood", "Blue", "Black", "Marble", "Steam Punk", "Tech", "Royal", "Purple Castle","Hacker Stall"},
        Multi = true,
        Default = {},
    })
    Auto_Thieving_Select:OnChanged(function(Value)
        Auto_Thieving_Selected = {}
        for Value, State in next, Value do
            Auto_Thieving_Selected[#Auto_Thieving_Selected + 1] = Value
        end
    end)

    local Auto_Thieving = Auto_Farm_Section:AddToggle("Auto_Thieving", 
    {
    Title = "Auto Thieving", 
    Description = "Auto Thievies for you",
    Default = false
    })
    Auto_Thieving:OnChanged(function(Auto_Thieving_Check)
        Is_Auto_Thieving_Check=Auto_Thieving_Check
        if Is_Auto_Thieving_Check then
            if Auto_Thieving_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Thieving Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Thieving_Notification == 1 then
                Auto_Thieving_Notification = Auto_Thieving_Notification + 1
            end
            while Is_Auto_Thieving_Check do
                Auto_Thieving_Calling:Auto_Thieving_Selected_Function(Auto_Thieving_Selected)
                task.wait()
            end
        else
            if Auto_Thieving_Notification > 0 then
            Fluent:Notify{
                Title = "Radiant Hub Notification",
                Content = "Auto Thieving Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }    
            end
            if Auto_Thieving_Notification == 0 then
                Auto_Thieving_Notification = Auto_Thieving_Notification + 1
            end
        end
    end)

    Auto_Farm_Section:AddParagraph({
        Title = "►─══─◄",
    })

    local Mining = Tabs.Auto_Farm:AddSection("| Mining")
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
    local Auto_Mine_Select = Mining:AddDropdown("Auto_Mine_Select", {
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

    local Auto_Magma_Scroll = Mining:AddToggle("Auto_Magma_Scroll", 
    {
    Title = "Auto Use Magma Scroll",
    Description = "Auto consumes Magma scroll",
    Default = false
    })

    Auto_Magma_Scroll:OnChanged(function(Auto_Magma_Scroll_Check)
        Is_Auto_Magma_Scroll_Check=Auto_Magma_Scroll_Check
        if Is_Auto_Magma_Scroll_Check then
            if Auto_Magma_Scroll_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Magma Scroll Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Magma_Scroll_Notification == 1 then
                Auto_Magma_Scroll_Notification = Auto_Magma_Scroll_Notification + 1
            end
            while Is_Auto_Magma_Scroll_Check do
                local args = {
                    [1] = "748c6af73ccc4c509c0ac106621c087c", -- magma scroll
                    [2] = 1
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
                task.wait()
            end
        else
            if Auto_Magma_Scroll_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Magma Scroll Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Magma_Scroll_Notification == 0 then
                Auto_Magma_Scroll_Notification = Auto_Magma_Scroll_Notification + 1
            end
        end
    end)

    local Auto_Mine = Mining:AddToggle("Auto_Mine", 
    {
    Title = "Auto Mine", 
    Description = "Auto Mines the selected ores",
    Default = false
    })

    Auto_Mine:OnChanged(function(Auto_Mine_Check)
        Is_Auto_Mine_Check=Auto_Mine_Check
        if Is_Auto_Mine_Check then
            if Auto_Mine_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Mine Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Mine_Notification == 1 then
                Auto_Mine_Notification = Auto_Mine_Notification + 1
            end
            while Is_Auto_Mine_Check do 
                Auto_Mine_Calling:Auto_Mine_Selected_Ores(Auto_Mine_Selected)
                task.wait()
            end
        else
            if Auto_Mine_Notification > 0 then
            Fluent:Notify{
                Title = "Radiant Hub Notification",
                Content = "Auto Mine Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            end
            if Auto_Mine_Notification == 0 then
                Auto_Mine_Notification = Auto_Mine_Notification + 1
            end
        end
    end)

    local Fishing = Tabs.Auto_Farm:AddSection("| Fishing")

    Fishing:AddParagraph({
        Title = "Use Only After Fishing Upgrade Has Been Unlocked!!!",
    })
    local Auto_Fish = Fishing:AddToggle("Auto_Fish", 
    {
    Title = "Auto Fish", 
    Description = "Auto Fishes",
    Default = false
    })
    Auto_Fish:OnChanged(function(Auto_Fish_Check)
        Is_Auto_Fish_Check=Auto_Fish_Check
        if Is_Auto_Fish_Check then
                if Auto_Fish_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Fish Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Fish_Notification == 1 then
                Auto_Fish_Notification = Auto_Fish_Notification + 1
            end
            while Is_Auto_Fish_Check do
                local args = {
                    [1] = "Default"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args))-- Setting to fish
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer() --Successfully Catch Fish
                task.wait()
            end
        else
            if Auto_Fish_Notification > 0 then
            Fluent:Notify{
                Title = "Radiant Hub Notification",
                Content = "Auto Fish Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            
            end
            if Auto_Fish_Notification == 0 then
                Auto_Fish_Notification = Auto_Fish_Notification + 1
            end
        end
    end)

    Fishing:AddParagraph({
        Title = "►─═ 🅱🅾🅰🆃🆂 ═─◄",
    })

    local Auto_Boating_Fish = Fishing:AddToggle("Auto_Boating_Fish", 
    {
    Title = "Auto Boat Fish", 
    Description = "Auto Fishes in the boat region",
    Default = false
    })
    Auto_Boating_Fish:OnChanged(function(Auto_Boating_Fish_Check)
        Is_Auto_Boating_Fish_Check=Auto_Boating_Fish_Check
        if Is_Auto_Boating_Fish_Check then
            if Auto_Boating_Fish_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Boat Fish Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Boating_Fish_Notification == 1 then
                Auto_Boating_Fish_Notification = Auto_Boating_Fish_Notification + 1
            end
            while Is_Auto_Boating_Fish_Check do
                local args = {
                    [1] = "Boating"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args)) -- Setting to fish
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer() --Successfully Catch Fish
                task.wait()
            end
        else
            if Auto_Boating_Fish_Notification > 0 then
            Fluent:Notify{
                Title = "Radiant Hub Notification",
                Content = "Auto Boat Fish Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            
            end
            if Auto_Boating_Fish_Notification == 0 then
                Auto_Boating_Fish_Notification = Auto_Boating_Fish_Notification + 1
            end
        end
    end)

    local Auto_Kraken_Fish = Fishing:AddToggle("Auto_Kraken_Fish", 
    {
    Title = "Auto Kraken Fish", 
    Description = "YOU NEED TO USE KRAKEN TENTACLE BEFORE USING THIS",
    Default = false
    })

    Auto_Kraken_Fish:OnChanged(function(Auto_Kraken_Fish_Check)
        Is_Auto_Kraken_Fish_Check=Auto_Kraken_Fish_Check
        if Is_Auto_Kraken_Fish_Check then
            if Auto_Kraken_Fish_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Kraken Fish Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Kraken_Fish_Notification == 1 then
                Auto_Kraken_Fish_Notification = Auto_Kraken_Fish_Notification + 1
            end
            while Is_Auto_Kraken_Fish_Check do
                local args = {
                    [1] = "Kraken"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args))
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer()
                task.wait()
            end
        else
            if Auto_Kraken_Fish_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Kraken Fish Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Kraken_Fish_Notification == 0 then
                Auto_Kraken_Fish_Notification = Auto_Kraken_Fish_Notification + 1
            end
        end
    end)

    local Auto_Boating_Fish_Upgrades = Fishing:AddToggle("Auto_Boating_Fish_Upgrades", 
    {
    Title = "Auto Boat Upgrades", 
    Description = "Auto upgardes the boat stuff",
    Default = false
    })
    Auto_Boating_Fish_Upgrades:OnChanged(function(Auto_Boating_Fish_Upgrades_Check)
        Is_Auto_Boating_Fish_Upgrades_Check=Auto_Boating_Fish_Upgrades_Check
        if Is_Auto_Boating_Fish_Upgrades_Check then
            if Auto_Boating_Fish_Upgrades_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Boat Upgrades Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Boating_Fish_Upgrades_Notification == 1 then
                Auto_Boating_Fish_Upgrades_Notification = Auto_Boating_Fish_Upgrades_Notification + 1
            end
            while Is_Auto_Boating_Fish_Upgrades_Check do
                Auto_Boating_Fish_Upgrades_Calling:Boat_Upgrades_Specific()
                task.wait()
            end
        else
            if Auto_Boating_Fish_Upgrades_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Boat Upgrades Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Boating_Fish_Upgrades_Notification == 0 then
                Auto_Boating_Fish_Upgrades_Notification = Auto_Boating_Fish_Upgrades_Notification + 1
            end
        end
    end)

    Fishing:AddParagraph({
        Title = "►─══─◄",
    })

    Fishing:AddParagraph({
        Title = "►─═ 🅸🅲🅴 🅵🅸🆂🅷🅸🅽🅶 ═─◄",
    })

    Fishing:AddParagraph({
        Title = "Use Only After Iron Rod Has Been Unlocked!!!",
    })

    local Auto_Ice_Bait = Fishing:AddToggle("Auto_Ice_Bait", 
    {
    Title = "Auto Use Frozen Bait", 
    Description = "Auto consumes Frozen bait",
    Default = false
    })

    Auto_Ice_Bait:OnChanged(function(Auto_Ice_Bait_Check)
        Is_Auto_Frozen_Bait_Check=Auto_Ice_Bait_Check
        if Is_Auto_Frozen_Bait_Check then
            if Auto_Ice_Bait_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Frozen Bait Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Ice_Bait_Notification == 1 then
                Auto_Ice_Bait_Notification = Auto_Ice_Bait_Notification + 1
            end
            while Is_Auto_Frozen_Bait_Check do
                local args = {
                    [1] = "36d511d010d546e6af243e3f577963af", --frozen bait
                    [2] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
                task.wait()
            end
        else
            if Auto_Ice_Bait_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Frozen Bait Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Ice_Bait_Notification == 0 then
                Auto_Ice_Bait_Notification = Auto_Ice_Bait_Notification + 1
            end
        end
    end)

    local Auto_Ice_Fish = Fishing:AddToggle("Auto_Ice_Fish", 
    {
    Title = "Auto Ice Fish", 
    Description = "Auto fishes in the ice region",
    Default = false
    })
    Auto_Ice_Fish:OnChanged(function(Auto_Ice_Fish_Check)
        Is_Auto_Ice_Fish_Check=Auto_Ice_Fish_Check
        if Is_Auto_Ice_Fish_Check then
            if Auto_Ice_Fish_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Ice Fish Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Ice_Fish_Notification == 1 then
                Auto_Ice_Fish_Notification = Auto_Ice_Fish_Notification + 1
            end
            while Is_Auto_Ice_Fish_Check do
                local args = {
                    [1] = "Ice"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args))-- Setting to fish
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer() --Successfully Catch Fish
                task.wait()
            end
        else
            if Auto_Ice_Fish_Notification > 0 then
            Fluent:Notify{
                Title = "Radiant Hub Notification",
                Content = "Auto Ice Fish Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            
            end
            if Auto_Ice_Fish_Notification == 0 then
                Auto_Ice_Fish_Notification = Auto_Ice_Fish_Notification + 1
            end
        end
    end)

    Fishing:AddParagraph({
        Title = "►─══─◄",
    })

    Fishing:AddParagraph({
        Title = "►─═ 🅲🅾🆁🆁🆄🅿🆃🅴🅳 🅵🅸🆂🅷🅸🅽🅶 ═─◄",
    })

    Fishing:AddParagraph({
        Title = "Use Only If You Have Coruptted Bait!!!",
    })

    local Auto_Corrupted_Bait = Fishing:AddToggle("Auto_Corrupted_Bait", 
    {
    Title = "Auto Use Corrupted Bait", 
    Description = "Auto consumes Corrupted bait",
    Default = false
    })

    Auto_Corrupted_Bait:OnChanged(function(Auto_Corrupted_Bait_Check)
        Is_Auto_Corrupted_Bait_Check=Auto_Corrupted_Bait_Check
        if Is_Auto_Corrupted_Bait_Check then
            if Auto_Corrupted_Bait_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Corrupted Bait Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Corrupted_Bait_Notification == 1 then
                Auto_Corrupted_Bait_Notification = Auto_Corrupted_Bait_Notification + 1
            end
            while Is_Auto_Corrupted_Bait_Check do
                local args = {
                    [1] = "b1176127ce004d3ca7ad3d9ec17afca1", -- curupted bait
                    [2] = 1
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
                task.wait()
            end
        else
            if Auto_Corrupted_Bait_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Corrupted Bait Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Corrupted_Bait_Notification == 0 then
                Auto_Corrupted_Bait_Notification = Auto_Corrupted_Bait_Notification + 1
            end
        end
    end)

    local Auto_Corrupted_Fish = Fishing:AddToggle("Auto_Corrupted_Fish", 
    {
    Title = "Auto Corrupted Fish", 
    Description = "Auto fishes in the Corrupted region",
    Default = false
    })

    Auto_Corrupted_Fish:OnChanged(function(Auto_Corrupted_Fish_Check)
        Is_Auto_Corrupted_Fish_Check=Auto_Corrupted_Fish_Check
        if Is_Auto_Corrupted_Fish_Check then
            if Auto_Corrupted_Fish_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Corrupted Fish Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Corrupted_Fish_Notification == 1 then
                Auto_Corrupted_Fish_Notification = Auto_Corrupted_Fish_Notification + 1
            end
            while Is_Auto_Corrupted_Fish_Check do
                local args = {
                    [1] = "Corrupted"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Fish"):InvokeServer(unpack(args))
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_Success"):FireServer()
                task.wait()
            end
        else
            if Auto_Corrupted_Fish_Notification > 0 then
            Fluent:Notify{
                Title = "Radiant Hub Notification",
                Content = "Auto Corrupted Fish Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            end
            if Auto_Corrupted_Fish_Notification == 0 then
                Auto_Corrupted_Fish_Notification = Auto_Corrupted_Fish_Notification + 1
            end
        end
    end)

    Fishing:AddParagraph({
        Title = "►─══─◄",
    })

    --Event Section
    local Auto_Event_Section = Tabs.Auto_Event:AddSection("| Clover Event")

    local Auto_Clover_Pot = Auto_Event_Section:AddToggle("Auto_Clover_Pot", 
    {
    Title = "Auto Open Clover Pot", 
    Description = "Use it for opening clover pot at max!!",
    Default = false
    })
    Auto_Clover_Pot:OnChanged(function(Auto_Clover_Pot_Check)
        Is_Auto_Clover_Pot_Check=Auto_Clover_Pot_Check
        if Is_Auto_Clover_Pot_Check then
            if Auto_Clover_Pot_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Clover Pot Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Pot_Notification == 1 then
                Auto_Clover_Pot_Notification = Auto_Clover_Pot_Notification + 1
            end
            while Is_Auto_Clover_Pot_Check do
                local Pot_Text = workspace.__THINGS.Tycoons.TycoonBlueprintClover.Interactable.EggBillboard.Main.BillboardGui.Five.Text
                if Pot_Text == "100 / 100" or Pot_Text == "200 / 200" or Pot_Text == "500 / 500" or Pot_Text == "1,000 / 1,000" or Pot_Text == "2,000 / 2,000" or Pot_Text == "10,000 / 10,000" then
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Clovers_HatchEgg"):InvokeServer()
                    task.wait()
                end
                task.wait()
            end
        else
            if Auto_Clover_Pot_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Clover Pot Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Pot_Notification == 0 then
                Auto_Clover_Pot_Notification = Auto_Clover_Pot_Notification + 1
            end
        end
    end)

    local Auto_Clover_Collect = Auto_Event_Section:AddToggle("Auto_Clover_Collect", 
    {
    Title = "Auto Collect Clovers", 
    Description = "Use it for Collecting Clovers!!",
    Default = false
    })
    Auto_Clover_Collect:OnChanged(function(Auto_Clover_Collect_Check)
        Is_Auto_Clover_Collect_Check=Auto_Clover_Collect_Check
        if Is_Auto_Clover_Collect_Check then
            if Auto_Clover_Collect_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Collect Clovers Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Collect_Notification == 1 then
                Auto_Clover_Collect_Notification = Auto_Clover_Collect_Notification + 1
            end
            runningTask1 = true
            runningTask2 = true
            runningTask3 = true
            runningTask4 = true
                task.spawn(function()
                    while runningTask1 do
                        local Clover_Hitbox = workspace.__THINGS.Clovers.model.Part
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox, 0)
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox, 1)
                        task.wait()
                    end
                end)
                task.spawn(function()
                    while runningTask2 and num1 < 9 do
                        local Clover_Hitbox1 = workspace.__THINGS.Clovers:GetChildren()[num1].Part
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox1, 0)
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox1, 1)
                        num1 = num1 + 1
                        task.wait()
                    end
                    num1 = 5
                end)
                task.spawn(function()
                    while runningTask3 and num2 < 14 do
                        local Clover_Hitbox2 = workspace.__THINGS.Clovers:GetChildren()[num2].Part
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox2, 0)
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox2, 1)
                        num2 = num2 + 1
                        task.wait()
                    end
                    num2 = 10
                end)
                task.spawn(function()
                    while runningTask4 and num3 < 19 do
                        local Clover_Hitbox3 = workspace.__THINGS.Clovers:GetChildren()[num3].Part
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox3, 0)
                        firetouchinterest(Humanoid_Root_Part, Clover_Hitbox3, 1)
                        num3 = num3 + 1
                        task.wait()
                    end
                    num3 = 15
                end)
        else
            if Auto_Clover_Collect_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Collect Clovers Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Collect_Notification == 0 then
                Auto_Clover_Collect_Notification = Auto_Clover_Collect_Notification + 1
            end
            runningTask1 = false
            runningTask2 = false
            runningTask3 = false
            runningTask4 = false
        end
    end)

    local Auto_Clover_Storage_Collect = Auto_Event_Section:AddToggle("Auto_Clover_Storage_Collect", 
    {
    Title = "Auto Clover Storage Collect", 
    Description = "Use it for Collecting Clover Storages!!",
    Default = false
    })
    Auto_Clover_Storage_Collect:OnChanged(function(Auto_Clover_Storage_Collect_Check)
        Is_Auto_Clover_Storage_Collect_Check=Auto_Clover_Storage_Collect_Check
        if Is_Auto_Clover_Storage_Collect_Check then
            if Auto_Clover_Storage_Collect_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Clover Storage Collect Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Storage_Collect_Notification == 1 then
                Auto_Clover_Storage_Collect_Notification = Auto_Clover_Storage_Collect_Notification + 1
            end
        while Is_Auto_Clover_Storage_Collect_Check do
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Clovers_HopperClaim"):InvokeServer()
            task.wait(60)
        end
        else
            if Auto_Clover_Storage_Collect_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Clover Storage Collect Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Storage_Collect_Notification == 0 then
                Auto_Clover_Storage_Collect_Notification = Auto_Clover_Storage_Collect_Notification + 1
            end
        end
    end)

    local Auto_Clover_Area = Auto_Event_Section:AddToggle("Auto_Clover_Area", 
    {
    Title = "Auto Unlock Clover Areas", 
    Description = "Use it for Unlocking Clover_Areas!!",
    Default = false
    })
    Auto_Clover_Area:OnChanged(function(Auto_Clover_Area_Check)
        Is_Auto_Clover_Area_Check=Auto_Clover_Area_Check
        if Is_Auto_Clover_Area_Check then
            if Auto_Clover_Area_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Areas Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Area_Notification == 1 then
                Auto_Clover_Area_Notification = Auto_Clover_Area_Notification + 1
            end
            while Is_Auto_Clover_Area_Check do
                for _, Clover_Area in ipairs(Clover_Areas) do
                    local args = {
                        [1] = Clover_Area,
                        [2] = "Clover"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Tycoons: Purchase"):InvokeServer(unpack(args))
                    task.wait()
                end
            end
        else
            if Auto_Clover_Area_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Areas Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Area_Notification == 0 then
                Auto_Clover_Area_Notification = Auto_Clover_Area_Notification + 1
            end
        end
    end)

    local Auto_Clover_Farmer = Auto_Event_Section:AddToggle("Auto_Clover_Farmer", 
    {
    Title = "Auto Unlock Clover Farmers", 
    Description = "Use it for Unlocking Clover Farmers!!",
    Default = false
    })
    Auto_Clover_Farmer:OnChanged(function(Auto_Clover_Farmer_Check)
        Is_Auto_Clover_Farmer_Check=Auto_Clover_Farmer_Check
        if Is_Auto_Clover_Farmer_Check then
            if Auto_Clover_Farmer_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Farmers Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Farmer_Notification == 1 then
                Auto_Clover_Farmer_Notification = Auto_Clover_Farmer_Notification + 1
            end
            while Is_Auto_Clover_Farmer_Check do
                for _, Clover_Farmer in ipairs(Clover_Collector) do
                    local args = {
                        [1] = Clover_Farmer,
                        [2] = "Clover"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Tycoons: Purchase"):InvokeServer(unpack(args))
                    task.wait()
                end
            end
        else
            if Auto_Clover_Farmer_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Farmers Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Farmer_Notification == 0 then
                Auto_Clover_Farmer_Notification = Auto_Clover_Farmer_Notification + 1
            end
        end
    end)

    local Auto_Clover_Area_Speed = Auto_Event_Section:AddToggle("Auto_Clover_Area_Speed", 
    {
    Title = "Auto Unlock Clover Area Speeds", 
    Description = "Use it for Unlocking Clover Area Speeds!!",
    Default = false
    })
    Auto_Clover_Area_Speed:OnChanged(function(Auto_Clover_Area_Speed_Check)
        Is_Clover_Area_Speed_Check=Auto_Clover_Area_Speed_Check
        if Is_Clover_Area_Speed_Check then
            if Auto_Clover_Area_Speed_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Area Speeds Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Area_Speed_Notification == 1 then
                Auto_Clover_Area_Speed_Notification = Auto_Clover_Area_Speed_Notification + 1
            end
            while Is_Clover_Area_Speed_Check do
                for _, Clover_Area_Speed in ipairs(Clover_Area_Speeds) do
                    local args = {
                        [1] = Clover_Area_Speed,
                        [2] = "Clover"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Tycoons: Purchase"):InvokeServer(unpack(args))
                    task.wait()
                end
            end
        else
            if Auto_Clover_Area_Speed_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Area Speeds Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Area_Speed_Notification == 0 then
                Auto_Clover_Area_Speed_Notification = Auto_Clover_Area_Speed_Notification + 1
            end
        end
    end)

    local Auto_Clover_Area_Quality = Auto_Event_Section:AddToggle("Auto_Clover_Area_Quality", 
    {
    Title = "Auto Unlock Clover Area Qualitys", 
    Description = "Use it for Unlocking Clover Area Qualitys!!",
    Default = false
    })
    Auto_Clover_Area_Quality:OnChanged(function(Auto_Clover_Area_Speed_Check)
        Is_Clover_Area_Quality_Check=Auto_Clover_Area_Speed_Check
        if Is_Clover_Area_Quality_Check then
            if Auto_Clover_Area_Quality_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Area Qualitys Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Area_Quality_Notification == 1 then
                Auto_Clover_Area_Quality_Notification = Auto_Clover_Area_Quality_Notification + 1
            end
            while Is_Clover_Area_Quality_Check do
                for _, Clover_Area_Qualitys in ipairs(Clover_Area_Quality) do
                        local args = {
                        [1] = Clover_Area_Qualitys,
                        [2] = "Clover"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Tycoons: Purchase"):InvokeServer(unpack(args))
                    task.wait()
                end
            end
        else
            if Auto_Clover_Area_Quality_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Area Qualitys Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Area_Quality_Notification == 0 then
                Auto_Clover_Area_Quality_Notification = Auto_Clover_Area_Quality_Notification + 1
            end
        end
    end)

    local Auto_Clover_Merchant = Auto_Event_Section:AddToggle("Auto_Clover_Merchant", 
    {
    Title = "Auto Buy Clover Merchant", 
    Description = "Auto buy from clover merchant!!",
    Default = false
    })
    Auto_Clover_Merchant:OnChanged(function(Auto_Clover_Merchant_Check)
        Is_Auto_Clover_Merchant_Check=Auto_Clover_Merchant_Check
        if Is_Auto_Clover_Merchant_Check then
            if Auto_Clover_Merchant_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Buy Clover Merchant Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Merchant_Notification == 1 then
                Auto_Clover_Merchant_Notification = Auto_Clover_Merchant_Notification + 1
            end
            while Is_Auto_Clover_Merchant_Check do
                for Clover_Slot = 1, 6 do
                        local args = {
                            [1] = "CloverMerchant",
                            [2] = Clover_Slot -- 1 to 8
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
                    task.wait()
                end
            end
        else
            if Auto_Clover_Merchant_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Buy Clover Merchant Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Merchant_Notification == 0 then
                Auto_Clover_Merchant_Notification = Auto_Clover_Merchant_Notification + 1
            end
        end
    end)

    local Auto_Clover_Upgrade = Auto_Event_Section:AddToggle("Auto_Clover_Upgrade", 
    {
    Title = "Auto Unlock Clover Upgrades", 
    Description = "Use it for Unlocking Clover Upgrades!!",
    Default = false
    })
    Auto_Clover_Upgrade:OnChanged(function(Auto_Clover_Upgrade_Check)
        Is_Auto_Clover_Upgrade_Check=Auto_Clover_Upgrade_Check
        if Is_Auto_Clover_Upgrade_Check then
            if Auto_Clover_Upgrade_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Upgrades Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Upgrade_Notification == 1 then
                Auto_Clover_Upgrade_Notification = Auto_Clover_Upgrade_Notification + 1
            end
            if Clover_Upgrades_Counter == 0 then
                Clover_Upgrades_Counter = Clover_Upgrades_Counter + 1
                if Clover_Upgrades_Counter == 1 then
                    for _, descendant in ipairs(Clover_Upgrades_Folder:GetDescendants()) do
                        if descendant:IsA("LuaSourceContainer") then
                            table.insert(Clover_Upgrades, descendant.Name)
                        end
                    end
                end
            end
            while Is_Auto_Clover_Upgrade_Check do
                for _, Clover_Upgrade in ipairs(Clover_Upgrades) do
                    local args = {
                        [1] = Clover_Upgrade
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
                    task.wait()
                end
            end
        else
            if Auto_Clover_Upgrade_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Unlock Clover Upgrades Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Clover_Upgrade_Notification == 0 then
                Auto_Clover_Upgrade_Notification = Auto_Clover_Upgrade_Notification + 1
            end
        end
    end)

    --Stats Section
    --[[local Boat_Fishing_Loot_Stats = Tabs.Stats:AddSection("| Boat Fishing Loot")

    while true do
        local myTable = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_GetFishermanContents"):InvokeServer()
        local stack = { myTable }
        while #stack > 0 do
        local t = table.remove(stack)  -- Remove the last element from the stack.
    
        if type(t) == "table" then
        -- If this table has both "id" and "_am", add them to our lists.
            if t.id ~= nil and t._am ~= nil then
                table.insert(ids, t.id)
                table.insert(amounts, t._am)
            end

        -- Loop through all values in this table.
            for _, value in pairs(t) do
                if type(value) == "table" then
                    table.insert(stack, value)
                end
            end
        end
    end
    for i = 1, #ids do
    local itemData = { id = ids[i], amount = amounts[i] }
        for key, value in pairs(itemData) do
            Boat_Fishing_Loot_Stats:AddParagraph({
        Title = "Stats",
        Content = "  " .. key .. ": " .. tostring(value)
    })
        end
    end
    task.wait(2)
    end --]]

    --Upgrade Section
    local Auto_Upgrade_All = Tabs.Auto_Upgrade:AddSection("| Auto Upgrade All")

    Auto_Upgrade_All:AddParagraph({
        Title = "Use This Or Upgarde Specific, Dont Use Both At The Same Time!!!",
    })

    local Auto_Upgrade = Auto_Upgrade_All:AddToggle("Auto_Upgrade", 
    {
    Title = "Auto Upgrade All", 
    Description = "Use it for upgrading all upgrades at once!!",
    Default = false
    })
    Auto_Upgrade:OnChanged(function(Auto_Upgrade_Check)
        Is_Auto_Upgrade_Check=Auto_Upgrade_Check
        if Is_Auto_Upgrade_Check then
            if Auto_Upgrade_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Upgrade All Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Upgrade_Notification == 1 then
                Auto_Upgrade_Notification = Auto_Upgrade_Notification + 1
            end
            while Is_Auto_Upgrade_Check do
                Auto_Upgrade_Calling:Auto_Upgrade_All()
                task.wait()
            end
        else
            if Auto_Upgrade_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Upgrade All Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Upgrade_Notification == 0 then
                Auto_Upgrade_Notification = Auto_Upgrade_Notification + 1
            end
        end
    end)

    local Auto_Upgrade_Specific = Tabs.Auto_Upgrade:AddSection("| Auto Upgrade Specific")

    Auto_Upgrade_Specific:AddParagraph({
        Title = "Use This Or Upgarde All, Dont Use Both At The Same Time!!!",
    })

    local Auto_Upgrade_Mining = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Mining", 
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

    local Auto_Upgrade_Fishing = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Fishing", 
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

    local Auto_Upgrade_Ice_Fishing = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Ice_Fishing", 
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

    local Auto_Upgrade_Boat_Fishing = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Boat_Fishing", 
    {
    Title = "Auto Boat Fishing Upgrades", 
    Description = "Use it for only Boat fishing upgrades!!",
    Default = false
    })
    Auto_Upgrade_Boat_Fishing:OnChanged(function(Auto_Upgrade_Boat_Fishing_Check)
        Is_Auto_Upgrade_Boat_Fishing_Check=Auto_Upgrade_Boat_Fishing_Check
        while Is_Auto_Upgrade_Boat_Fishing_Check do
            Auto_Upgrade_Boat_Fishing_Calling:Boat_Fishing_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Leveling = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Leveling", 
    {
    Title = "Auto Leveling Upgrades", 
    Description = "Use it for only Leveling section upgrades!!",
    Default = false
    })
    Auto_Upgrade_Leveling:OnChanged(function(Auto_Upgrade_Leveling_Check)
        Is_Auto_Upgrade_Leveling_Check=Auto_Upgrade_Leveling_Check
        while Is_Auto_Upgrade_Leveling_Check do
            Auto_Upgrade_Leveling_Calling:Leveling_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Trading = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Trading", 
    {
    Title = "Auto Trading Upgrades", 
    Description = "Use it for only Trading upgrades!!",
    Default = false
    })
    Auto_Upgrade_Trading:OnChanged(function(Auto_Upgrade_Trading_Check)
        Is_Auto_Upgrade_Trading_Check=Auto_Upgrade_Trading_Check
        while Is_Auto_Upgrade_Trading_Check do
            Auto_Upgrade_Trading_Calling:Trading_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Weather = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Weather", 
    {
    Title = "Auto Weather Upgrades", 
    Description = "Use it for only Weather upgrades!!",
    Default = false
    })
    Auto_Upgrade_Weather:OnChanged(function(Auto_Upgrade_Weather_Check)
        Is_Auto_Upgrade_Weather_Check=Auto_Upgrade_Weather_Check
        while Is_Auto_Upgrade_Weather_Check do
            Auto_Upgrade_Weather_Calling:Weather_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Luckier = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Luckier", 
    {
    Title = "Auto Luckier Upgrades", 
    Description = "Use it for only Luckier section upgrades!!",
    Default = false
    })
    Auto_Upgrade_Luckier:OnChanged(function(Auto_Upgrade_Luckier_Check)
        Is_Auto_Upgrade_Luckier_Check=Auto_Upgrade_Luckier_Check
        while Is_Auto_Upgrade_Luckier_Check do
            Auto_Upgrade_Luckier_Calling:Luckier_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Thieving = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Thieving", 
    {
    Title = "Auto Thieving Upgrades", 
    Description = "Use it for only Thieving section upgrades!!",
    Default = false
    })
    Auto_Upgrade_Thieving:OnChanged(function(Auto_Upgrade_Thieving_Check)
        Is_Auto_Upgrade_Thieving_Check=Auto_Upgrade_Thieving_Check
        while Is_Auto_Upgrade_Thieving_Check do
            Auto_Upgrade_Thieving_Calling:Thieving_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Breakables = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Breakables", 
    {
    Title = "Auto Breakables Upgrades", 
    Description = "Use it for only Breakables section upgrades!!",
    Default = false
    })
    Auto_Upgrade_Breakables:OnChanged(function(Auto_Upgrade_Breakables_Check)
        Is_Auto_Upgrade_Breakables_Check=Auto_Upgrade_Breakables_Check
        while Is_Auto_Upgrade_Breakables_Check do
            Auto_Upgrade_Breakables_Calling:Breakables_Upgrades_Specific()
            task.wait()
        end
    end)

    local Auto_Upgrade_Boosts = Auto_Upgrade_Specific:AddToggle("Auto_Upgrade_Boosts", 
    {
    Title = "Auto Boosts Upgrades", 
    Description = "Use it for only Boosts section upgrades!!",
    Default = false
    })
    Auto_Upgrade_Boosts:OnChanged(function(Auto_Upgrade_Boosts_Check)
        Is_Auto_Upgrade_Boosts_Check=Auto_Upgrade_Boosts_Check
        while Is_Auto_Upgrade_Boosts_Check do
            Auto_Upgrade_Boosts_Calling:Boosts_Upgrades_Specific()
            task.wait()
        end
    end)


    -- Items Section
    local Lootboxes = Tabs.Items:AddSection("| Lootboxes")

    Lootboxes:AddParagraph({
        Title = "Broken, fixin' it soon",
    })

    local Open_Bundle_O_Scrolls = Lootboxes:AddToggle("Open_Bundle_O_Scrolls", 
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

    local Open_Bundle_O_Boosts = Lootboxes:AddToggle("Open_Bundle_O_Boosts", 
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

    local Portions = Tabs.Items:AddSection("| Portions")

    Portions:AddParagraph({
        Title = "Broken, fixin' it soon",
    })

    local Open_All_Portions = Portions:AddToggle("Open_All_Portions", 
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

    local Fruits = Tabs.Items:AddSection("| Fruits")

    Fruits:AddParagraph({
        Title = "Broken, fixin' it soon",
    })

    local Open_All_Fruits_Normal = Fruits:AddToggle("Open_All_Fruits_Normal", 
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

    local Open_All_Fruits_Shiny = Fruits:AddToggle("Open_All_Fruits_Shiny", 
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

    local Fishing_Items = Tabs.Items:AddSection("| Baits")

    Fishing_Items:AddParagraph({
        Title = "Broken, fixin' it soon",
    })

    local Open_All_Fishing_Chests = Fishing_Items:AddToggle("Open_All_Fishing_Chests", 
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

    local Open_Frozen_Fishing_Chests = Fishing_Items:AddToggle("Open_Frozen_Fishing_Chests", 
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

    local Use_All_Normal_Baits = Fishing_Items:AddToggle("Use_All_Normal_Baits", 
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

    --shop section
    local Merchant = Tabs.Shop:AddSection("| Merchants")

    local Auto_Merchants_Select = Merchant:AddDropdown("Auto_Merchants_Select", {
        Title = "Select Merchants",
        Description = "Select the merchants you want to auto buy from",
        Values = {"StandardMerchant","MiningMerchant","FishingMerchant","IceFishingMerchant","BlackMarketMerchant"},
        Multi = true,
        Default = {},
    })
    Auto_Merchants_Select:OnChanged(function(Value)
        Auto_Merchants_Selected = {}
        for Value, State in next, Value do
            Auto_Merchants_Selected[#Auto_Merchants_Selected + 1] = Value
        end
    end)

    local Merchant_Item = Merchant:AddDropdown("Merchant_Item", {
        Title = "Select Slots",
        Description = "Only the slots u want to buy from",
        Values = {1, 2, 3, 4, 5, 6, 7, 8},
        Multi = true,
        Default = {},
     })
    Merchant_Item:OnChanged(function(Value)
        Merchant_Item_Selected = {}
        for Value, State in next, Value do
            Merchant_Item_Selected[#Merchant_Item_Selected + 1] = Value
        end
    end)

    local Auto_Merchant = Merchant:AddToggle("Auto_Merchant", 
    {
    Title = "Auto Merchant", 
    Description = "Auto buys from the selected merchants",
    Default = false
    })

    Auto_Merchant:OnChanged(function(Auto_Merchant_Check)
        Is_Auto_Merchant_Check=Auto_Merchant_Check
        if Is_Auto_Merchant_Check then
            if Auto_Merchant_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Merchant Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Merchant_Notification == 1 then
                Auto_Merchant_Notification = Auto_Merchant_Notification + 1
            end
            while Is_Auto_Merchant_Check do 
                for _, Current_Merchant in ipairs(Auto_Merchants_Selected) do
                    for _, Slot in ipairs(Merchant_Item_Selected) do
                        local args = {
                            [1] = Current_Merchant,
                            [2] = Slot -- 1 to 8
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
                        task.wait()
                    end
                end
                task.wait()
            end
        else
            if Auto_Merchant_Notification > 0 then
            Fluent:Notify{
                Title = "Radiant Hub Notification",
                Content = "Auto Merchant Is Disabled",
                Duration = 1 -- Set to nil to make the notification not disappear
            }
            end
            if Auto_Merchant_Notification == 0 then
                Auto_Merchant_Notification = Auto_Merchant_Notification + 1
            end
        end
    end)

    local Vending_Machines = Tabs.Shop:AddSection("| Vending Machines")

    local Auto_Portions_Vendng_Machine = Vending_Machines:AddToggle("Auto_Portions_Vendng_Machine", 
    {
    Title = "Auto Buy from Portions Vending Machine", 
    Description = "",
    Default = false
    })
    Auto_Portions_Vendng_Machine:OnChanged(function(Auto_Portions_Vendng_Machine_Check)
        Is_Auto_Portions_Vendng_Machine_Check=Auto_Portions_Vendng_Machine_Check
        if Is_Auto_Portions_Vendng_Machine_Check then
            if Auto_Portions_Vendng_Machine_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Buy from Portions Vending Machine Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Portions_Vendng_Machine_Notification == 1 then
                Auto_Portions_Vendng_Machine_Notification = Auto_Portions_Vendng_Machine_Notification + 1
            end
            while Is_Auto_Portions_Vendng_Machine_Check do
                local args = {
                    [1] = "PotionVendingMachine"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("VendingMachines_Purchase"):InvokeServer(unpack(args))
                task.wait(0.1)
            end
        else 
            if Auto_Portions_Vendng_Machine_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Buy from Portions Vending Machine Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Portions_Vendng_Machine_Notification == 0 then
                Auto_Portions_Vendng_Machine_Notification = Auto_Portions_Vendng_Machine_Notification + 1
            end
        end
    end)

    -- misc section
    local Miscellaneous_Player = Tabs.Miscellaneous:AddSection("| Player")

    local Auto_Bonus_Collect = Miscellaneous_Player:AddToggle("Auto_Bonus_Collect", 
    {
    Title = "Auto Bonus Roll Collect", 
    Description = "Auto collects the bonus roll",
    Default = false
    })
    Auto_Bonus_Collect:OnChanged(function(Auto_Bonus_Collect_Check)
        Is_Auto_Bonus_Collect_Check=Auto_Bonus_Collect_Check
        if Is_Auto_Bonus_Collect_Check then
            if Auto_Bonus_Collect_Notification > 1 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Bonus Roll Collect Is Enabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Bonus_Collect_Notification == 1 then
                Auto_Bonus_Collect_Notification = Auto_Bonus_Collect_Notification + 1
            end
            while Is_Auto_Bonus_Collect_Check do
                local Auto_Bonus_Collect_Timer = workspace.MAP.INTERACT.Machines.RetentionDice.Billboard.BillboardGui.Timer.Text
                if Auto_Bonus_Collect_Timer == "CLAIM NOW!" then
                    Auto_Roll_Egg:SetValue(false)
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Retention Dice: Claim"):FireServer()
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Bonus Rolls: Claim"):InvokeServer()
                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Bonus Rolls: Reject"):FireServer()
                    Auto_Roll_Egg:SetValue(true)
                end
                task.wait(0.1)
            end
        else 
            if Auto_Bonus_Collect_Notification > 0 then
                Fluent:Notify{
                    Title = "Radiant Hub Notification",
                    Content = "Auto Bonus Roll Collect Is Disabled",
                    Duration = 1 -- Set to nil to make the notification not disappear
                }
            end
            if Auto_Bonus_Collect_Notification == 0 then
                Auto_Bonus_Collect_Notification = Auto_Bonus_Collect_Notification + 1
            end
        end
    end)

    --Settings section
    --Saving config
    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)

    InterfaceManager:SetFolder("RadiantHub")
    SaveManager:SetFolder("RadiantHub/PetsGO!")

    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)

    SaveManager:LoadAutoloadConfig()

    --Hub loaded noti
    Fluent:Notify{
        Title = "Radiant Hub Notification",
        Content = "Succesfully Loaded Radiant Hub",
        SubContent = "Enjoy your time :)", -- Optional
        Duration = 3 -- Set to nil to make the notification not disappear
    }
end
