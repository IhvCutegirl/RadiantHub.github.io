local Luckier_Upgrades_Module = {}

local Luckier_Upgrades = {"Even Luckier","Luck Event","Events More Often","Faster Rolls Event","More Coins Event","Egg 2","Egg 3","Egg 4","Egg 5","Egg 6","Egg 7","Egg 8","Egg 9","Egg 10","Diamond Egg","Pet Bounty","Second Bounty","Triple Bounty","Huge Bounty Boost","Better Bounties","Easier Catch","Pet Dig Coins","Pet Dig More Often","Pet Dig More Luck","Pet Dig Fruit","Pet Dig Items","Pet Equip 1","Pet Equip 2","Faster Pets","Even Faster Pets","Pets Luck","Pets Luck 2","Dupe Pets","Luckier Dupe Pets","Double Duped Pets","Luckier Double Duped Pets","Huge Pets","Shiny Pets","Easier Shiny Pets","Shiny Surge","Serial Advantage","Titanic Pets"}

function Luckier_Upgrades_Module:Luckier_Upgrades_Specific()
    for _, value in ipairs(Luckier_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Luckier_Upgrades_Module
