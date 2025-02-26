local Mining_Upgrades_Module = {}

local Mining_Upgrades={"Mining Merchant","Rare Merchant Slot","Epic Merchant Slot","Legendary Merchant Slot","Celestial Merchant Slot","Runic Merchant Slot","Rare Mining Chest Odds","Epic Mining Chest Odds","Legendary Mining Chest Odds","More Ore Points I","More Ore Points II","More Ore Points III","Mining Pet Speed I","Mining Pet Speed II","Mining Pet Speed III","Mining Pet Strength I","Mining Pet Strength II","Mining Pet Strength III","Huge Fossil Dragon Odds I","Huge Fossil Dragon Odds II","Huge Fossil Dragon Odds III","Stone Pickaxe","Bronze Pickaxe","Iron Pickaxe","Gold Pickaxe","Faster Mining I","Faster Mining II","Faster Mining III","Faster Mining IV","Faster Mining V","Stronger Mining I","Stronger Mining II","Stronger Mining III","Stronger Mining IV","Stronger Mining V","More Ore","Even More Ore","Way More Ore","More Mining Loot I","More Mining Loot II","More Mining Loot III","Forge Machine","Cheaper Enchanting I","Cheaper Enchanting II","Cheaper Enchanting III","Better Enchanting I","Better Enchanting II","Better Enchanting III","More Enchant Safes I","More Enchant Safes II","More Enchant Safes III","More Enchant Safes IV","More Enchant Safes V","Safe Upgrade I","Safe Upgrade II","Safe Upgrade III","Increased Max Ore I","Increased Max Ore II","Increased Max Ore III","Increased Max Ore IV","Magma Mining","Magma Scroll Drops I","Magma Scroll Drops II","Magma Scroll Drops III"}

function Mining_Upgrades_Module:Mining_Upgrades_Specific()
    for _, value in ipairs(Mining_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Mining_Upgrades_Module
