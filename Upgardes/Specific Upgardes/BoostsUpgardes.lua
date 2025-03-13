local Boosts_Upgrades_Module = {}

local Boosts_Upgrades_Folder = game:GetService("ReplicatedStorage").__DIRECTORY.Upgrades.Root["Faster Egg Open"]["Faster Egg Open 2"].Inventory.Fruit
local Boosts_Upgrades = {}

function Boosts_Upgrades_Module:Boosts_Upgrades_Specific()
    for _, descendant in ipairs(Boosts_Upgrades_Folder:GetDescendants()) do
        if descendant:IsA("LuaSourceContainer") then
            table.insert(Boosts_Upgrades, descendant.Name)
        end
    end

    for _, upgrade in ipairs(Boosts_Upgrades) do
        local args = {
            [1] = upgrade
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Boosts_Upgrades_Module
