local Breakables_Upgrades_Module = {}

local Breakables_Upgrades = 
{
    "Large Coin Piles",
    "More Breakables",
    "Even More Breakables",
    "Breakable Item Drops",
    "Better Breakable Item Drops",
    "More Breakable Item Drops",
    "Rarer Breakables",
    "Loot Chest", -- crystal chest section starts here
    "Lucky Loot I",
    "Lucky Loot II",
    "Lucky Loot III",
    "Lucky Loot IV",
    "Lucky Loot V",
    "???",
    "Loot Chest Coins",
    "Even More Chest Coins",
    "Loot Chest XP",
    "More Chest XP",
    "Faster Cooldown",
    "Turbo Cooldown",
    "Chest Instant Cooldown",
    "Insane Cooldown",
    "Lightspeed Cooldown",
    "Bulk Loot",
    "Treasure Keys",
    "More Treasure Keys",
    "Breakable Keys",
    "More Breakable Keys",
    "Duped Keys",
    "More Duped Keys",
    "Digging for Keys",
    "Metal Detector",-- crystal chest section ends here
    "Relics",
    "More Relics",
    "Break Faster",
    "Break Even Faster",
    "Chest Crusher",
    "Chest Destroyer",
    "Lightning",
    "More Lightning",
    "Dynamite",
    "TNT",
    "Bigger Blast",
    "TNT Supercharged",
    "More Often TNT",
    "Coin Crates",
    "More Coins From Breakables",
    "Even More Coins From Breakables",
    "Breaking Bonus",
    "More Bonuses",
    "Super Breaking Bonus",
    "Magnet",
    "Stronger Magnet",
    "Magnetic Pull",
    "Fruit Magnet",
    "Coin Bag Magnet",
    "Pet Radar",
    "Loot Bags",
    "Loot Presents",
    "Loot Big Presents",
    "More Loot Presents",
    "Gift Storm",
    "Present Surge",
    "Loaded Gifts",
    "Flying Gifts", -- flying gift section starts here
    "More Balloons",
    "Clear Skies",
    "Balloon Apocalypse",
    "Big Flying Gifts",
    "Legendary Flying Gifts",
    "Golden Skies",
    "Matryoshka Gifts",
    "Slingshot Skills",
    "Seeking Shots",
    "Aimbot Slingshot",
    "Triple Shot Slingshot",-- flying gifts section ends here
    "Coin Mini Chests",
    "Coin Chests",
    "More Chests",
    "Chest Wizard",
    "Chest Sorcerer",
    "Super Chest",
    "More Super Chests",
    "Coin Safes",
    "Coin Vaults",
    "Armor Piercing",
    "Breakable Quests",
    "Treasure Haul",
    "Treasure Overload",
    "Quest Lite",
    "Quest Reboot",
    "Double Quests",
    "Quest Turbo"
}

function Breakables_Upgrades_Module:Breakables_Upgrades_Specific()
    for _, Upgrade in ipairs(Breakables_Upgrades) do
        local args = {
            [1] = Upgrade
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Breakables_Upgrades_Module
