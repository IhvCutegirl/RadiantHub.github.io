local Ice_Fishing_Upgrades_Module = {}

local Ice_Fishing_Upgrades={"Frozen Rod Hunter I","Frozen Rod Hunter II","Frozen Rod Hunter III","Frozen Fisher I","Frozen Fisher II","Frozen Fisher III","Charged Ice Cast","Supercharged Ice Cast","God Tier Ice Cast","Ice Fishing Merchant","Ice Merchant Restocking I","Ice Merchant Restocking II","Ice Merchant Restocking III","Ice Fishing Merchant Surplus","Ice Fishing Merchant Stock Overload","Abyssal Bait","Frozen Treasure Chests I","Frozen Treasure Chests II","Frozen Treasure Chests III","Frozen Caster I","Frozen Caster II","Frozen Caster III","Abyssal Depths","Abyssal Exploration","Abyssal Discovery","Abyssal Treasure Chest","Abyssal Treasure Chest Finder I","Abyssal Treasure Chest Finder II","Dark Ice Fishing","Corrupted Bait Return","Corrupted Bait Sales","Corrupted Rod Sales","Corrupted Huge Bait","More Corrupted Huge Bait","More Corrupted Huge Bait II","More Corrupted Huge Bait III","Huge Corrupted Octopus Odds","Huge Corrupted Octopus Odds II","Huge Corrupted Octopus Odds III"}

function Ice_Fishing_Upgrades_Module:Ice_Fishing_Upgrades_Specific()
    for _, value in ipairs(Ice_Fishing_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Ice_Fishing_Upgrades_Module
