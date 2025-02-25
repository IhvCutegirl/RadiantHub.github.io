local Thieving_Upgrades_Module = {}

function Thieving_Upgrades_Module:Thieving_Upgrade_Specific()
    local args = {
        [1] = "Standard Lockpick" -- chnage to whatever upgrade needed
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Bronze Lockpick" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Iron Lockpick" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()
    
    local args = {
        [1] = "Golden Lockpick" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Success II" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Success III" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Speed I" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Speed II" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Speed III" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Stall Respawn I" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Stall Respawn II" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Stall Respawn III" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Stall Respawn IV" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Stall Respawn V" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Quality I" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Quality II" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Quality III" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Extra Slot I" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Extra Slot II" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Extra Slot III" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Extra Slot IV" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Extra Slot V" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Restock Speed I" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()

    local args = {
        [1] = "Thieving Merchant Restock Speed II" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()
    
    local args = {
        [1] = "Thieving Merchant Restock Speed III" 
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Upgrades_Purchase"):InvokeServer(unpack(args))
    task.wait()    
end

return Thieving_Upgrades_Module
