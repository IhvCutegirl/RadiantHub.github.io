local Boat_Fishing_Upgrades_Module = {}

local Boat_Fishing_Upgrades = {"Boating Tokens I","Boating Tokens II","Boating Tokens III","Boating Tokens IV","Boating Tokens V","Deep Sea Chest I","Deep Sea Chest II","Deep Sea Chest III","Huge Pufferfish I","Huge Pufferfish II","Huge Pufferfish III","Fishermen Speed I","Fishermen Speed II","Fishermen Speed III","Fishermen Luck I","Fishermen Luck II","Fishermen Luck III","Kraken Tentacles I","Kraken Tentacles II","Kraken Tentacles III","Titanic Kraken Chance I","Titanic Kraken Chance II","Titanic Kraken Chance III"}

function Boat_Fishing_Upgrades_Module:Boat_Fishing_Upgrades_Specific()
    for _, value in ipairs(Boat_Fishing_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Boat_Fishing_Upgrades_Module
