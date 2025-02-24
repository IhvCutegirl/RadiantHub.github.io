local Upgrade = {}

function Upgrade:Auto_Upgrade_All()
        local args = {
            [1] = "Thieving" -- chnage to whatever upgrade needed
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
        task.wait()
end

return Upgrade
