local Mining_Upgrades_Module = {}

local Mining_Upgrades={"Mining Merchant","Rare Mining Slot","Epic Mining Slot","Legendary Mining Slot","Celestial Mining Slot","Runic Mining Slot","Rare Lower Tier Ore","Epic Lower Tier Ore","Legendary Lower Tier Ore","More Ore Points I","More Ore Points II","More Ore Points III","Mining Pet Speed I","Mining Pet Speed II","Mining Pet Speed III","Mining Pet Strength I","Mining Pet Strength II","Mining Pet Strength III","Huge Fossil Dragon Odds I","Huge Fossil Dragon Odds II","Huge Fossil Dragon Odds III","Stone Pickaxe","Bronze Pickaxe","Iron Pickaxe","Gold Pickaxe","Faster Mining I","Faster Mining II","Faster Mining III","Faster Mining IV","Faster Mining V","Stronger Mining I","Stronger Mining II","Stronger Mining III","Stronger Mining IV","Stronger Mining V","More Ore I","More Ore II","More Ore III","More Mining Loot I","More Mining Loot II","More Mining Loot III","Forge Machine","Cheaper Enchanting I","Cheaper Enchanting II","Cheaper Enchanting III","Better Enchanting I","Better Enchanting II","Better Enchanting III","More Enchant Safes I","More Safes Vaults II","More Safes Vaults III","More Safes Vaults IV","More Safes Vaults V","Safe Upgrade I","Safe Upgrade II","Safe Upgrade III","Increased Max Ore I","Increased Max Ore II","Increased Max Ore III","Increased Max Ore IV","Magma Mining","Magma Scroll Drops I","Magma Scroll Drops II","Magma Scroll Drops III"}

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
