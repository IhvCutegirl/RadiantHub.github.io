local Fishing_Upgrades_Module = {}

local Fishing_Upgrades={"Catch Faster","Faster Casting","Catch Even Faster","Quicker Casts","Catch Super Fast","Super Casts","More Tokens","More Fishing Tokens II","More Fishing Tokens III","More Fishing Tokens IV","More Fishing Tokens V","Fishing Coins","More Fishing Coins","Fishing Coin Overload","Fishing XP I","Fishing XP II","Fishing Merchant","Faster Fishing Restock","Cheaper Bait","Even Cheaper Bait","More Fishing Slots","Fishing Merchant Slot","Final Fishing Slot","Legendary Bait Sales","Sturdy Fishing Rod","Stone Fishing Rod","Iron Fishing Rod","Ice Fishing","Basic Treasure Chest","Rare Treasure Chest","Epic Treasure Chest","Legendary Treasure Chest","Exclusive Treasure Chest","Double Fishing Chests","Luckier Doubles","Double Party","Better Treasure Chests","Great Treasure Chests","Treasure Party","More Treasure Chests","Treasure Flood","Treasure Storm","Lucky Chests","Luckier Chests","Super Chest Loot"}

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
