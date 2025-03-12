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
    "Black Market Merchant",
    "Black Market Quality I",
    "Black Market Quality II",
    "Black Market Quality III",
    "Black Market Extra Slot I",
    "Black Market Extra Slot II",
    "Black Market Extra Slot III",
    "Black Market Extra Slot IV",
    "Black Market Extra Slot V",
    "Black Market Restock Speed I",
    "Black Market Restock Speed II",
    "Black Market Restock Speed III",
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

function Thieving_Upgrades_Module:Thieving_Upgrades_Specific()
    for _, upgrade in ipairs(Thieving_Upgrades) do
        local args = {
            [1] = upgrade
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
    end
end

return Thieving_Upgrades_Module
