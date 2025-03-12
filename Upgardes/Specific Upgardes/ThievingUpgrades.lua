local Thieving_Upgrades_Module = {}

local Thieving_Upgrades = {
    "Standard Lockpick",
    "Bronze Lockpick",
    "Iron Lockpick",
    "Golden Lockpick",
    "Thieving Success I",
    "Thieving Success II",
    "Thieving Success III",
    "Thieving Speed I",
    "Thieving Speed II",
    "Thieving Speed III",
    "Stall Respawn I",
    "Stall Respawn II",
    "Stall Respawn III",
    "Stall Respawn IV",
    "Stall Respawn V",
    "Thieving Merchant",
    "Thieving Merchant Quality I",
    "Thieving Merchant Quality II",
    "Thieving Merchant Quality III",
    "Thieving Merchant Extra Slot I",
    "Thieving Merchant Extra Slot II",
    "Thieving Merchant Extra Slot III",
    "Thieving Merchant Extra Slot IV",
    "Thieving Merchant Extra Slot V",
    "Thieving Merchant Restock Speed I",
    "Thieving Merchant Restock Speed II",
    "Thieving Merchant Restock Speed III",
    "Titanic Vault",
    "Vault Luck I",
    "Vault Luck II",
    "Vault Luck III",
    "Vault Pet Thief I",
    "Vault Pet Thief II",
    "Vault Pet Thief III",
    "Vault Huge Thief I",
    "Vault Huge Thief II",
    "Vault Huge Thief III",
    "Vault Titanic Thief I",
    "Vault Titanic Thief II",
    "Vault Titanic Thief III",
    "Vault Cracking I",
    "Vault Cracking II",
    "Vault Cracking III",
    "Vault Key Drops I",
    "Vault Key Drops II",
    "Vault Key Drops III",
    "Vault Duration I",
    "Vault Duration II",
    "Vault Duration III",
    "Vault Duration IV",
    "Vault Duration V",
    "Hacker Codes",
    "More Hacker Code Drops I",
    "More Hacker Code Drops II",
    "Huge Hacker Cat Odds I",
    "Huge Hacker Cat Odds II",
    "Huge Hacker Cat Odds III",
    "Huge Hacker Cat Odds IV",
    "Huge Hacker Cat Odds V"
}

function Thieving_Upgrades_Module:Thieving_Upgrade_Specific()
    for _, upgrade in ipairs(Thieving_Upgrades) do
        local args = {
            [1] = upgrade
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Thieving_Upgrades_Module
