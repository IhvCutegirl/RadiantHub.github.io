local Weather_Upgrades_Module = {}

local Weather_Upgrades = {"Blizzard","Better Blizzard Odds","Even Better Blizzard Odds","Best Blizzard Odds","Blizzard Rolling Drops I","Blizzard Rolling Drops II","Blizzard Rolling Drops III","Blizzard Potion Crafting","Blizzard Potion Cheaper Crafting I","Blizzard Potion Cheaper Crafting II","Blizzard Potion Cheaper Crafting III","Blizzard Potion Accidents","More Blizzard Potion Accidents","Blizzard Shard Drops I","Blizzard Shard Drops II","Blizzard Shard Drops III","Lightning Storm","Better Lightning Storm Odds","Even Better Lightning Storm Odds","Best Lightning Storm Odds","Lightning Storm Rolling Drops I","Lightning Storm Rolling Drops II","Lightning Storm Rolling Drops III","Lightning Potion Crafting","Lightning Potion Cheaper Crafting I","Lightning Potion Cheaper Crafting II","Lightning Potion Cheaper Crafting III","Lightning Potion Accidents","More Lightning Potion Accidents","Lightning Shard Drops I","Lightning Shard Drops II","Lightning Shard Drops III"}

function Weather_Upgrades_Module:Weather_Upgrades_Specific()
    for _, value in ipairs(Weather_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Weather_Upgrades_Module
