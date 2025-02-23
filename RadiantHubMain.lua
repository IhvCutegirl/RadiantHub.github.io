-- game check
if game.PlaceId == 18901165922 then 
    local Current_Version = "V 0.3"

    --calling the library
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    Fluent.Version = Current_Version

    --creating window
    local Window = Fluent:CreateWindow({
        Title = "Looter Hub " .. Fluent.Version,
        SubTitle = "by IhvCutegirl",
        TabWidth = 160,
        Size = UDim2.fromOffset(830, 525),
        Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
    })

    -- global variables
    --local Auto_Upgrade_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/DevLooterHub.github.io/refs/heads/main/Upgrades.lua?token=GHSAT0AAAAAAC6KVHR4BWWSJMKYWPFVCWCUZ5Z6ITQ"))()
    --local Auto_Thieving_Calling = loadstring(game:HttpGet("https://raw.githubusercontent.com/IhvCutegirl/DevLooterHub.github.io/refs/heads/main/Thieving.lua?token=GHSAT0AAAAAAC6KVHR4DYC4JDPP2VEMDDSUZ52B2TQ"))()
    local Auto_Mine_Selected = {}
    local Auto_Thieving_Selected = {}
    --local Auto_Upgarde_Selected = {}
    local Is_Auto_Roll_Coins_Check = false
    --local Is_Auto_Thieving_Check = false
    local Is_Auto_Fish_Check = false
    local Is_Auto_Claim_Daily_Bonus_Check = false
    local Is_Auto_Claim_Play_Time_Bonus_Check = false
    local Is_Auto_Mine_Check = false
    local Is_Auto_Ice_Fish_Check =  false
    local Is_Open_Bundle_O_Scrolls_Check = false
    local Is_Open_Bundle_O_Boosts_Check = false

    local Tabs = {
        Main = Window:AddTab{
            Title = "Main",
            Icon = "refresh-ccw-dot"
        },
        Auto_Event = Window:AddTab{
            Title = "Event",
            Icon = "calendar-check"
        },
        Auto_Upgrade = Window:AddTab{
            Title = "Auto Upgrade",
            Icon = "arrow-big-up-dash"
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
        print("Mutlidropdown changed:", table.concat(Auto_Thieving_Selected, ", "))
    end)

    --Hub loaded noti
    Fluent:Notify{
        Title = "Looter Hub Notification",
        Content = "Succesfully Loaded Looter Hub",
        SubContent = "Enjoy your time :)", -- Optional
        Duration = 3 -- Set to nil to make the notification not disappear
    }
end
