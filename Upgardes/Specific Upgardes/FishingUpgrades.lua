local Fishing_Upgrades_Module = {}

local Fishing_Upgrades={"Faster Casting I","Faster Casting II","Faster Casting III","Faster Catching I","Faster Catching II","Faster Catching III","More Fishing Tokens I","More Fishing Tokens II","More Fishing Tokens III","More Fishing Tokens IV","More Fishing Tokens V","Fishing Coins I","Fishing Coins II","Fishing Coins III","Fishing XP I","Fishing XP II","Fishing Merchant","Faster Fishing Restock","Cheaper Bait","Even Cheaper Bait","More Fishing Slots","Fishing Merchant Slot","Final Fishing Slot","Legendary Bait Sales","Sturdy Fishing Rod","Stone Fishing Rod","Iron Fishing Rod","Ice Fishing","Basic Treasure Chest","Rare Treasure Chest","Epic Treasure Chest","Legendary Treasure Chest","Exclusive Treasure Chest","Double Treasure Chests I","Double Treasure Chests II","Double Treasure Chests III","Better Treasure Chests I","Better Treasure Chests II","Better Treasure Chests III","More Treasure Chests I","More Treasure Chests II","More Treasure Chests III","Lucky Treasure Chests I","Lucky Treasure Chests II","Lucky Treasure Chests III"}

function Fishing_Upgrades_Module:Fishing_Upgrades_Specific()
    for _, value in ipairs(Fishing_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Fishing_Upgrades_Module
