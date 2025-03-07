local Leveling_Upgrades_Module = {}

local Leveling_Upgrades = {"Valuable Pets","Very Valuable Pets","Legendary Pets","Ultra Pets","More XP","Even More XP","XP Farmer","Buckets of XP","XP Rebirth","XP Sensei","XP Jars","More XP Jars","Large XP Jars","Luckier XP Jars","Leveling Items","Leveling Better Items","Leveling More Items","Paychecks","Better Paycheck","Super Paycheck","Billionaire Vault","Mega Vault","Ultimate Vault","Colossal Vault","Fortune Vault","Friends Boost","Better Friends Boost","More Friends","More Friends 2","More Friends 3","More Friends 4","Worldwide Friends"}

function Leveling_Upgrades_Module:Leveling_Upgrades_Specific()
    for _, value in ipairs(Leveling_Upgrades) do
        local args = {
            [1] = value
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Leveling_Upgrades_Module
