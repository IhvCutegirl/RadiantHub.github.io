local Fishing_Chests = {}

function Fishing_Chests:Use_All_Fishing_Chests()
    local args = {
        [1] = "9aa63acba0dd4e9e848a7ead750e0f27",
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbox: Open"):InvokeServer(unpack(args))
    task.wait()
    local args = {
        [1] = "e147b641df174e4c874157bc19333719",
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbox: Open"):InvokeServer(unpack(args))
    task.wait()
    local args = {
        [1] = "535f69fe7f2c454096b3a3b78608bb97",
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbox: Open"):InvokeServer(unpack(args))
    task.wait()
    local args = {
        [1] = "141936e910fc4f1c896a8a9bcbf84b67",
        [2] = 1
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbox: Open"):InvokeServer(unpack(args))
    task.wait()

end

return Fishing_Chests
