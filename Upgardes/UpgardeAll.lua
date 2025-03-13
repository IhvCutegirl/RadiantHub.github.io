local Upgrades_Module = {}

local Upgrades_Folder = game:GetService("ReplicatedStorage").__DIRECTORY.Upgrades
local Upgrades = {}

function Upgrades_Module:Auto_Upgrade_All()
    for _, descendant in ipairs(Upgrades_Folder:GetDescendants()) do
        if descendant:IsA("LuaSourceContainer") then
            table.insert(Upgrades, descendant.Name)
        end
    end
task.wait(1)
    for _, upgrade in ipairs(Upgrades) do
        local args = {
            [1] = upgrade
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Upgrades_Module
